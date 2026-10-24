import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep137
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

private def s6Step139CompleteMoves : List (Wire × Wire) := [(927,199)]

private def s6Step139EarlyControlLog : HmrEarlyControlLog := ⟨[927, 807, 850, 879, 813],[875],[882],[891, 903, 791, 825, 810, 924],[893]⟩

private def s6Step139FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [862]],[[850], [807], [822], [869]],[[], [], [], []]⟩,[768],[867],[879],[813],[875, 882, 891, 903, 791, 825, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[875, 882, 891, 903, 791, 825, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[879, 813, 875, 882]⟩

private def s6Step139CompleteLog : HmrEarlyStepLog := ⟨s6Step139FrontLog,s6Step139CompleteMoves,s6Step139EarlyControlLog⟩

private def s6Step139ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455],795⟩

private def s6Step139ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869],776⟩

private def s6Step139ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198],777⟩

private def s6Step139ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822],775⟩

private def s6Step139FrontOut : WindowBank := ⟨s6Step139ExitFOut,s6Step139ExitGOut,s6Step139ExitFvOut,s6Step139ExitGvOut⟩

private def s6Step139CompleteOut : WindowBank := s6Step139FrontOut.repacked s6Step139CompleteMoves

private def s6Step139EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923)),Finset.filter_subset _ _⟩

private def s6Step139EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step139EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step139EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step139EarlyControlPositiveArena,[875],s6Step139EarlyControlEqualityArena,[882],⟨⟨768,false⟩,[⟨⟨875,false⟩,882⟩]⟩⟩

private def s6Step139EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step139EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step139EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923)),Finset.filter_subset _ _⟩

private def s6Step139EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step139EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923)),Finset.filter_subset _ _⟩

private def s6Step139EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step139EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,927⟩,⟨⟨772,false⟩,807⟩,⟨⟨771,false⟩,850⟩,⟨⟨770,false⟩,879⟩,⟨⟨769,false⟩,813⟩]⟩

private def s6Step139EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step139EarlyControlZeroArena,s6Step139EarlyControlZeroPlan,s6Step139EarlyControlClassPlan,s6Step139EarlyControlFlagArena,s6Step139EarlyControlFittedArena,s6Step139EarlyControlHistoryArena,s6Step139EarlyControlSigmaArena,s6Step139EarlyControlOutputArena,s6Step139EarlyControlLog⟩

private def s6Step139CounterWork : List Wire := [879, 813, 875, 882]

private theorem s6Step139Counter_bounded : s6Step139CounterWork.toFinset⊆arenaWires := by norm_num [s6Step139CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step139HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step139CounterDuring : Arena := ⟨s6Step139HeadFvAfter.live∪s6Step139CounterWork.toFinset,Finset.union_subset s6Step139HeadFvAfter.bounded s6Step139Counter_bounded⟩

private def s6Step139EntryFFresh : List Wire := []

private def s6Step139EntryFvFresh : List Wire := []

private def s6Step139EntryGFresh : List Wire := []

private def s6Step139EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step139EntryGvFresh : List Wire := [862]

private def s6Step139ExitFExtra : List Wire := [807]

private def s6Step139ExitGExtra : List Wire := [199, 850]

private def s6Step139ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,199),(200,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step139ExitGvAfter : Arena := s6Step139ExitFAfter

private def s6Step139Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step139Add0Work : List Wire := [875, 882, 891, 903, 791, 825, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step139Add0_bounded : s6Step139Add0Work.toFinset⊆arenaWires := by
  have h : s6Step139Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step139Add0During : Arena := ⟨s6Step139Add0Arena.live∪s6Step139Add0Work.toFinset,Finset.union_subset s6Step139Add0Arena.bounded s6Step139Add0_bounded⟩

private def s6Step139Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step139Add1Work : List Wire := [875, 882, 891, 903, 791, 825, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step139Add1_bounded : s6Step139Add1Work.toFinset⊆arenaWires := by
  have h : s6Step139Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step139Add1During : Arena := ⟨s6Step139Add1Arena.live∪s6Step139Add1Work.toFinset,Finset.union_subset s6Step139Add1Arena.bounded s6Step139Add1_bounded⟩

private def s6Step139F4FlagArena : Arena := ⟨s6Step139HeadFvAfter.live∪{879},Finset.union_subset s6Step139HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step139F4Plan : HmrHybridF4Plan := ⟨s6Step139F4FlagArena,[879],s6Step139Add0Arena,[813],s6Step139Add0During,s6Step139Add0Work,s6Step139Add1During,s6Step139Add1Work⟩

private def s6Step139HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 807],795⟩

private def s6Step139HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869],776⟩

private def s6Step139HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 850],777⟩

private def s6Step139HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822],775⟩

private def s6Step139FrontHead : WindowBank := ⟨s6Step139HeadFOut,s6Step139HeadGOut,s6Step139HeadFvOut,s6Step139HeadGvOut⟩

private def s6Step139EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455],795⟩

private def s6Step139EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843],776⟩

private def s6Step139EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199],777⟩

private def s6Step139EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862],775⟩

private def s6Step139FrontPair : WindowBank := ⟨s6Step139EntryFOut,s6Step139EntryGOut,s6Step139EntryFvOut,s6Step139EntryGvOut⟩

private def s6Step139FrontSigmaArena : Arena := ⟨s6Step139EntryGvAfter.live∪{768},Finset.union_subset s6Step139EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step139HeadFFresh : List Wire := [807]

private def s6Step139HeadFvFresh : List Wire := [869]

private def s6Step139HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(851,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step139HeadGFresh : List Wire := [850]

private def s6Step139HeadGvFresh : List Wire := [822]

private def s6Step139FrontPlan : HmrSourceFront := ⟨s6Step139EntryGvAfter,s6Step139FrontPair,(growRow 795 s6Step139EntryFFresh ++ (growRow 777 s6Step139EntryGFresh ++ (growRow 776 s6Step139EntryFvFresh ++ (growRow 775 s6Step139EntryGvFresh ++ [])))),s6Step139FrontSigmaArena,[768],s6Step139HeadGBefore,[867],
  s6Step139HeadFvAfter,s6Step139FrontHead,(growRow 777 s6Step139HeadGFresh ++ (growRow 795 s6Step139HeadFFresh ++ (growRow 775 s6Step139HeadGvFresh ++ (growRow 776 s6Step139HeadFvFresh ++ [])))),s6Step139F4Plan,s6Step139CounterDuring,s6Step139CounterWork,s6Step139ExitGvAfter,s6Step139FrontOut,(shrinkRow 777 s6Step139ExitGExtra ++ (shrinkRow 795 s6Step139ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))⟩

private def s6Step139CompletePlan : HmrEarlyStepPlan := ⟨s6Step139FrontPlan,s6Step139EarlyControlArena,s6Step139EarlyControlPlan,s6Step139CompleteMoves⟩

private theorem s6Step139Complete_apart : List.Disjoint (s6Step139CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [768, 867, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836] := by
  have nd : ((s6Step139CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[768, 867, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step139Complete_owned : (s6Step139CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step139EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step139EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923)) rfl
  decide +kernel

private def s6Step139CompleteRelocationMove0Borrowed : Arena := ⟨s6Step139ExitGvAfter.live∪{199},Finset.union_subset s6Step139ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step139CompleteRelocation_move0_owned : 927∈s6Step139ExitGvAfter.live := by norm_num [s6Step139ExitGvAfter,s6Step139ExitFAfter,arenaWires]

private theorem s6Step139CompleteRelocation_move0_reserve : s6Step139ExitGvAfter.reserve {199}=some s6Step139CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step139ExitGvAfter,s6Step139ExitFAfter,arenaWires]
  · rfl

private theorem s6Step139CompleteRelocation_move0_retire : s6Step139CompleteRelocationMove0Borrowed.retireSet {927}=s6Step139EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step139CompleteRelocationMove0Borrowed s6Step139EarlyControlArena {927}
  change s6Step139EarlyControlArena.live=(s6Step139ExitGvAfter.live∪{199})\{927}
  apply hmrArena_update_of_filter_check s6Step139ExitGvAfter s6Step139EarlyControlArena (fun q => ([(0,199),(200,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923)) [199] [927] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step139CompleteRelocation_checked : s6Step139ExitGvAfter.checkRepack [(927,199)]=some s6Step139EarlyControlArena := by
  have tail1 : s6Step139EarlyControlArena.checkRepack []=some s6Step139EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step139ExitGvAfter s6Step139CompleteRelocationMove0Borrowed s6Step139EarlyControlArena s6Step139EarlyControlArena 927 199 []
    s6Step139CompleteRelocation_move0_owned s6Step139CompleteRelocation_move0_reserve s6Step139CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step139Complete_repack : s6Step139ExitGvAfter.checkRepack s6Step139CompleteMoves=some s6Step139EarlyControlArena := by
  simpa only [s6Step139CompleteMoves] using s6Step139CompleteRelocation_checked

private theorem s6Step139EarlyControl_branchOwned : ([867] : List Wire).toFinset⊆s6Step139EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step139EarlyControlSigmaArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923)) rfl
  decide +kernel

private theorem s6Step139EarlyControl_branch : compileHmrBranchRetirement s6Step139EarlyControlSigmaArena 867=some s6Step139EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step139EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step139EarlyControlSigmaArena s6Step139EarlyControlOutputArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923)) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [867] rfl rfl
    decide +kernel

private theorem s6Step139EarlyControl_classEqualityBorrow : s6Step139EarlyControlPositiveArena.checkBorrow (([768, 875] : List Wire).length-1) s6Step139EarlyControlLog.classWork=some s6Step139EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step139EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step139EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step139EarlyControlEqualityArena,s6Step139EarlyControlPositiveArena,s6Step139EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step139EarlyControl_classEqualityOwned : ([768, 875] : List Wire).toFinset⊆s6Step139EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step139EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step139EarlyControl_classEquality : compileHmrEqualityLog s6Step139EarlyControlPositiveArena [768, 875] 0 s6Step139EarlyControlLog.classWork=some (s6Step139EarlyControlEqualityArena,s6Step139EarlyControlLog.classWork,s6Step139EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step139EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step139EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step139EarlyControl_classOwned : ([769, 813, 768] : List Wire).toFinset⊆s6Step139EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step139EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step139EarlyControl_positiveBorrow : s6Step139EarlyControlZeroArena.checkBorrow (1) s6Step139EarlyControlLog.positiveWork=some s6Step139EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step139EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step139EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step139EarlyControlPositiveArena,s6Step139EarlyControlZeroArena,s6Step139EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step139EarlyControl_class : compileHmrSourceClassLog s6Step139EarlyControlZeroArena false 769 s6Step139EarlyControlZeroPlan.top 0 768 s6Step139EarlyControlLog.positiveWork s6Step139EarlyControlLog.classWork=some s6Step139EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step139EarlyControlClassPlan s6Step139EarlyControlZeroArena false 769 s6Step139EarlyControlZeroPlan.top 0 768
  constructor
  · decide +kernel
  · exact s6Step139EarlyControl_classOwned
  · exact s6Step139EarlyControl_positiveBorrow
  · exact s6Step139EarlyControl_classEquality

private theorem s6Step139EarlyControl_entryRecordOwned : ([867, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836] : List Wire).toFinset⊆s6Step139EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step139EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923)) rfl
  decide +kernel

private theorem s6Step139EarlyControl_entrySigmaOwned : ([768, 254] : List Wire).toFinset⊆s6Step139EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step139EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923)) rfl
  decide +kernel

private theorem s6Step139EarlyControl_fitBorrow : s6Step139EarlyControlFlagArena.checkBorrow ((40-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836] : List Wire).length)) s6Step139EarlyControlLog.recordFresh=some s6Step139EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step139EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step139EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step139EarlyControlFittedArena,s6Step139EarlyControlFlagArena,s6Step139EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step139EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836] : List Wire).toFinset⊆s6Step139EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step139EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step139EarlyControl_fit : compileHmrRecordGrowLog s6Step139EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836] 40 s6Step139EarlyControlLog.recordFresh=some s6Step139EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step139EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step139EarlyControl_fitBorrow

private theorem s6Step139EarlyControl_flagsBorrow : s6Step139EarlyControlEqualityArena.checkBorrow (6) s6Step139EarlyControlLog.flagWork=some s6Step139EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step139EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step139EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step139EarlyControlFlagArena,s6Step139EarlyControlEqualityArena,s6Step139EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step139EarlyControl_flagsOwned : ([882, 253, 252, 251] : List Wire).toFinset⊆s6Step139EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step139EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step139EarlyControl_flags : compileHmrFlagsLog s6Step139EarlyControlClassPlan.equalityArena s6Step139EarlyControlClassPlan.equality.top 253 252 251 s6Step139EarlyControlLog.flagWork=some s6Step139EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step139EarlyControl_flagsOwned⟩
  · exact s6Step139EarlyControl_flagsBorrow

private theorem s6Step139EarlyControl_historyBorrow : s6Step139EarlyControlArena.checkBorrow ((40-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836] : List Wire).length)) s6Step139EarlyControlLog.recordFresh=some s6Step139EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step139EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step139EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923)) rfl
      decide +kernel
    · ext q
      simp [s6Step139EarlyControlHistoryArena,s6Step139EarlyControlArena,s6Step139EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step139EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836] : List Wire).toFinset⊆s6Step139EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step139EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923)) rfl
  decide +kernel

private theorem s6Step139EarlyControl_history : compileHmrRecordGrowLog s6Step139EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836] 40 s6Step139EarlyControlLog.recordFresh=some s6Step139EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step139EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step139EarlyControl_historyBorrow

private theorem s6Step139EarlyControl_sigmaOwned : ([254, 768] : List Wire).toFinset⊆s6Step139EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step139EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923)) rfl
  decide +kernel

private theorem s6Step139EarlyControl_sigmaReleaseOwned : ([768] : List Wire).toFinset⊆s6Step139EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step139EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923)) rfl
  decide +kernel

private theorem s6Step139EarlyControl_sigmaRelease : s6Step139EarlyControlHistoryArena.release {768} (fun _ => false)=some s6Step139EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step139EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step139EarlyControlSigmaArena,s6Step139EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step139EarlyControl_sigma : compileHmrSigmaDropLog s6Step139EarlyControlHistoryArena false 0 0 254 768 []=some s6Step139EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step139EarlyControl_sigmaOwned⟩
  · exact s6Step139EarlyControl_sigmaRelease

private theorem s6Step139EarlyControl_zeroBorrow : s6Step139EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step139EarlyControlLog.zeroWork=some s6Step139EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step139EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step139EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923)) rfl
      decide +kernel
    · ext q
      simp [s6Step139EarlyControlZeroArena,s6Step139EarlyControlArena,s6Step139EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step139EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step139EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step139EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923)) rfl
  decide +kernel

private theorem s6Step139EarlyControl_zero : compileHmrEqualityLog s6Step139EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step139EarlyControlLog.zeroWork=some (s6Step139EarlyControlZeroArena,s6Step139EarlyControlLog.zeroWork,s6Step139EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step139EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step139EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step139EarlyControl_logged : s6Step139EarlyControlPlan.Logged s6Step139EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836] 769 768 254 253 252 251 867 40 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step139EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step139EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step139EarlyControl_zero
  · exact s6Step139EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step139EarlyControl_flags
  · exact s6Step139EarlyControl_fit
  · exact s6Step139EarlyControl_history
  · exact s6Step139EarlyControl_sigma
  · exact s6Step139EarlyControl_branch

private theorem s6Step139EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step139EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836] 769 768 254 253 252 251 867 40 s6Step139EarlyControlLog=some s6Step139EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step139EarlyControlPlan s6Step139EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836] 769 768 254 253 252 251 867 40 s6Step139EarlyControl_logged

private def s6Step139EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(851,862),(863,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step139EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455],795⟩

private def s6Step139EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843],776⟩

private def s6Step139EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199],777⟩

private def s6Step139EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833],775⟩

private def s6Step139FrontBank : WindowBank := ⟨s6Step139EntryFRow,s6Step139EntryGRow,s6Step139EntryFvRow,s6Step139EntryGvRow⟩

private def s6Step139Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 807, 795]

private def s6Step139Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 850, 777]

private def s6Step139Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 776]

private def s6Step139Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 775]

private theorem s6Step139Counter_apart : Disjoint s6Step139HeadFvAfter.live s6Step139CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step139HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step139Counter_borrowed : s6Step139HeadFvAfter.checkBorrow 4 s6Step139CounterWork=some s6Step139CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step139HeadFvAfter s6Step139CounterDuring s6Step139CounterWork.toFinset s6Step139Counter_bounded s6Step139Counter_apart rfl

private theorem s6Step139Counter_owned : (768::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step139HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step139HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step139Counter_checked : compileHmrCounterStepLog s6Step139HeadFvAfter true 768 [774, 773, 772, 771, 770, 769] s6Step139CounterWork=some s6Step139CounterDuring := by
  have owned : ∀q∈768::[774, 773, 772, 771, 770, 769],q∈s6Step139HeadFvAfter.live := fun q hq => s6Step139Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step139Counter_borrowed

private def s6Step139EntryFAfter : Arena := s6Step139EntryFBefore

private theorem s6Step139EntryBank_incomingDistinct : ([s6Step139EntryFRow,s6Step139EntryGRow,s6Step139EntryFvRow,s6Step139EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step139EntryF_Incoming : rowsOwned s6Step139EntryFBefore [s6Step139EntryFRow,s6Step139EntryGRow,s6Step139EntryFvRow,s6Step139EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step139EntryFRow,s6Step139EntryGRow,s6Step139EntryFvRow,s6Step139EntryGvRow] 0 s6Step139EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step139EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(851,862),(863,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step139EntryBank_outgoingOwned : rowsOwned s6Step139EntryGvAfter [s6Step139EntryFOut,s6Step139EntryGOut,s6Step139EntryFvOut,s6Step139EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step139EntryGvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step139EntryF_Outgoing : rowsOwned s6Step139EntryGvAfter [s6Step139EntryFOut,s6Step139EntryGOut,s6Step139EntryFvOut,s6Step139EntryGvOut] :=
  hmrRows_owned_drop s6Step139EntryGvAfter [s6Step139EntryFOut,s6Step139EntryGOut,s6Step139EntryFvOut,s6Step139EntryGvOut] 0 s6Step139EntryBank_outgoingOwned

private theorem s6Step139EntryF_distinct : (s6Step139EntryFRow.sign::s6Step139EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step139EntryF_owned : (s6Step139EntryFRow.sign::s6Step139EntryFRow.payload).toFinset⊆s6Step139EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step139EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(851,862),(863,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step139EntryF_reserved : s6Step139EntryFBefore.reserve s6Step139EntryFFresh.toFinset=some s6Step139EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step139EntryFFresh,arenaWires]
  · norm_num [s6Step139EntryFBefore,s6Step139EntryFFresh,arenaWires]
  · simp only [s6Step139EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step139EntryF_checked : planRowResizeLog s6Step139EntryFBefore s6Step139EntryFRow 200 s6Step139EntryFFresh=
    some (s6Step139EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455],795⟩,growRow 795 s6Step139EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step139EntryFBefore s6Step139EntryFAfter s6Step139EntryFRow 200 s6Step139EntryFFresh
    s6Step139EntryF_distinct s6Step139EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step139EntryF_reserved
  have rowEq : WindowRow.mk (s6Step139EntryFRow.payload++s6Step139EntryFFresh) s6Step139EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step139EntryFvAfter : Arena := s6Step139EntryFBefore

private def s6Step139EntryFvBefore : Arena := s6Step139EntryFBefore

private theorem s6Step139EntryFv_Incoming : rowsOwned s6Step139EntryFvBefore [s6Step139EntryFvRow,s6Step139EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step139EntryFRow,s6Step139EntryGRow,s6Step139EntryFvRow,s6Step139EntryGvRow] 2 s6Step139EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step139EntryFvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(851,862),(863,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step139EntryFv_Outgoing : rowsOwned s6Step139EntryGvAfter [s6Step139EntryFvOut,s6Step139EntryGvOut] :=
  hmrRows_owned_drop s6Step139EntryGvAfter [s6Step139EntryFOut,s6Step139EntryGOut,s6Step139EntryFvOut,s6Step139EntryGvOut] 2 s6Step139EntryBank_outgoingOwned

private theorem s6Step139EntryFv_distinct : (s6Step139EntryFvRow.sign::s6Step139EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step139EntryFv_owned : (s6Step139EntryFvRow.sign::s6Step139EntryFvRow.payload).toFinset⊆s6Step139EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step139EntryFvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(851,862),(863,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step139EntryFv_reserved : s6Step139EntryFvBefore.reserve s6Step139EntryFvFresh.toFinset=some s6Step139EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step139EntryFvFresh,arenaWires]
  · norm_num [s6Step139EntryFvBefore,s6Step139EntryFBefore,s6Step139EntryFvFresh,arenaWires]
  · simp only [s6Step139EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step139EntryFv_checked : planRowResizeLog s6Step139EntryFvBefore s6Step139EntryFvRow 83 s6Step139EntryFvFresh=
    some (s6Step139EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843],776⟩,growRow 776 s6Step139EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step139EntryFvBefore s6Step139EntryFvAfter s6Step139EntryFvRow 83 s6Step139EntryFvFresh
    s6Step139EntryFv_distinct s6Step139EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step139EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step139EntryFvRow.payload++s6Step139EntryFvFresh) s6Step139EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step139EntryGAfter : Arena := s6Step139EntryFBefore

private def s6Step139EntryGBefore : Arena := s6Step139EntryFBefore

private theorem s6Step139EntryG_Incoming : rowsOwned s6Step139EntryGBefore [s6Step139EntryGRow,s6Step139EntryFvRow,s6Step139EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step139EntryFRow,s6Step139EntryGRow,s6Step139EntryFvRow,s6Step139EntryGvRow] 1 s6Step139EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step139EntryGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(851,862),(863,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step139EntryG_Outgoing : rowsOwned s6Step139EntryGvAfter [s6Step139EntryGOut,s6Step139EntryFvOut,s6Step139EntryGvOut] :=
  hmrRows_owned_drop s6Step139EntryGvAfter [s6Step139EntryFOut,s6Step139EntryGOut,s6Step139EntryFvOut,s6Step139EntryGvOut] 1 s6Step139EntryBank_outgoingOwned

private theorem s6Step139EntryG_distinct : (s6Step139EntryGRow.sign::s6Step139EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step139EntryG_owned : (s6Step139EntryGRow.sign::s6Step139EntryGRow.payload).toFinset⊆s6Step139EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step139EntryGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(851,862),(863,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step139EntryG_reserved : s6Step139EntryGBefore.reserve s6Step139EntryGFresh.toFinset=some s6Step139EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step139EntryGFresh,arenaWires]
  · norm_num [s6Step139EntryGBefore,s6Step139EntryFBefore,s6Step139EntryGFresh,arenaWires]
  · simp only [s6Step139EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step139EntryG_checked : planRowResizeLog s6Step139EntryGBefore s6Step139EntryGRow 200 s6Step139EntryGFresh=
    some (s6Step139EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199],777⟩,growRow 777 s6Step139EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step139EntryGBefore s6Step139EntryGAfter s6Step139EntryGRow 200 s6Step139EntryGFresh
    s6Step139EntryG_distinct s6Step139EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step139EntryG_reserved
  have rowEq : WindowRow.mk (s6Step139EntryGRow.payload++s6Step139EntryGFresh) s6Step139EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step139EntryGvBefore : Arena := s6Step139EntryFBefore

private theorem s6Step139EntryGv_Incoming : rowsOwned s6Step139EntryGvBefore [s6Step139EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step139EntryFRow,s6Step139EntryGRow,s6Step139EntryFvRow,s6Step139EntryGvRow] 3 s6Step139EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step139EntryGvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(851,862),(863,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step139EntryGv_Outgoing : rowsOwned s6Step139EntryGvAfter [s6Step139EntryGvOut] :=
  hmrRows_owned_drop s6Step139EntryGvAfter [s6Step139EntryFOut,s6Step139EntryGOut,s6Step139EntryFvOut,s6Step139EntryGvOut] 3 s6Step139EntryBank_outgoingOwned

private theorem s6Step139EntryGv_distinct : (s6Step139EntryGvRow.sign::s6Step139EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step139EntryGv_owned : (s6Step139EntryGvRow.sign::s6Step139EntryGvRow.payload).toFinset⊆s6Step139EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step139EntryGvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(851,862),(863,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step139EntryGv_reserved : s6Step139EntryGvBefore.reserve s6Step139EntryGvFresh.toFinset=some s6Step139EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step139EntryGvFresh,arenaWires]
  · norm_num [s6Step139EntryGvBefore,s6Step139EntryFBefore,s6Step139EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step139EntryGvBefore s6Step139EntryGvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(851,862),(863,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step139EntryGvFresh rfl rfl
    · norm_num [s6Step139EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step139EntryGv_checked : planRowResizeLog s6Step139EntryGvBefore s6Step139EntryGvRow 83 s6Step139EntryGvFresh=
    some (s6Step139EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862],775⟩,growRow 775 s6Step139EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step139EntryGvBefore s6Step139EntryGvAfter s6Step139EntryGvRow 83 s6Step139EntryGvFresh
    s6Step139EntryGv_distinct s6Step139EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step139EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step139EntryGvRow.payload++s6Step139EntryGvFresh) s6Step139EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step139EntryBank_rows : planWindowRowsLog s6Step139EntryFBefore [(s6Step139EntryFRow,200),(s6Step139EntryGRow,200),(s6Step139EntryFvRow,83),(s6Step139EntryGvRow,83)] [s6Step139EntryFFresh,s6Step139EntryGFresh,s6Step139EntryFvFresh,s6Step139EntryGvFresh]=
    some (s6Step139EntryGvAfter,[s6Step139EntryFOut,s6Step139EntryGOut,s6Step139EntryFvOut,s6Step139EntryGvOut],(growRow 795 s6Step139EntryFFresh ++ (growRow 777 s6Step139EntryGFresh ++ (growRow 776 s6Step139EntryFvFresh ++ (growRow 775 s6Step139EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step139EntryGvAfter [] []=some (s6Step139EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step139EntryGvBefore s6Step139EntryGvAfter s6Step139EntryGvAfter
    s6Step139EntryGvRow s6Step139EntryGvOut 83 s6Step139EntryGvFresh [] [] []
    (growRow 775 s6Step139EntryGvFresh) ([]) s6Step139EntryGv_Incoming s6Step139EntryGv_checked h4 s6Step139EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step139EntryFvBefore s6Step139EntryFvAfter s6Step139EntryGvAfter
    s6Step139EntryFvRow s6Step139EntryFvOut 83 s6Step139EntryFvFresh [(s6Step139EntryGvRow,83)] [s6Step139EntryGvFresh] [s6Step139EntryGvOut]
    (growRow 776 s6Step139EntryFvFresh) ((growRow 775 s6Step139EntryGvFresh ++ [])) s6Step139EntryFv_Incoming s6Step139EntryFv_checked h3 s6Step139EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step139EntryGBefore s6Step139EntryGAfter s6Step139EntryGvAfter
    s6Step139EntryGRow s6Step139EntryGOut 200 s6Step139EntryGFresh [(s6Step139EntryFvRow,83),(s6Step139EntryGvRow,83)] [s6Step139EntryFvFresh,s6Step139EntryGvFresh] [s6Step139EntryFvOut,s6Step139EntryGvOut]
    (growRow 777 s6Step139EntryGFresh) ((growRow 776 s6Step139EntryFvFresh ++ (growRow 775 s6Step139EntryGvFresh ++ []))) s6Step139EntryG_Incoming s6Step139EntryG_checked h2 s6Step139EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step139EntryFBefore s6Step139EntryFAfter s6Step139EntryGvAfter
    s6Step139EntryFRow s6Step139EntryFOut 200 s6Step139EntryFFresh [(s6Step139EntryGRow,200),(s6Step139EntryFvRow,83),(s6Step139EntryGvRow,83)] [s6Step139EntryGFresh,s6Step139EntryFvFresh,s6Step139EntryGvFresh] [s6Step139EntryGOut,s6Step139EntryFvOut,s6Step139EntryGvOut]
    (growRow 795 s6Step139EntryFFresh) ((growRow 777 s6Step139EntryGFresh ++ (growRow 776 s6Step139EntryFvFresh ++ (growRow 775 s6Step139EntryGvFresh ++ [])))) s6Step139EntryF_Incoming s6Step139EntryF_checked h1 s6Step139EntryF_Outgoing
  exact h0

private theorem s6Step139EntryBank_checked : compileHmrBankResizeLog .entry s6Step139EntryFBefore ⟨s6Step139EntryFRow,s6Step139EntryGRow,s6Step139EntryFvRow,s6Step139EntryGvRow⟩ ⟨200,200,83,83⟩ [s6Step139EntryFFresh,s6Step139EntryGFresh,s6Step139EntryFvFresh,s6Step139EntryGvFresh]=
    some (s6Step139EntryGvAfter,⟨s6Step139EntryFOut,s6Step139EntryGOut,s6Step139EntryFvOut,s6Step139EntryGvOut⟩,(growRow 795 s6Step139EntryFFresh ++ (growRow 777 s6Step139EntryGFresh ++ (growRow 776 s6Step139EntryFvFresh ++ (growRow 775 s6Step139EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step139EntryBank_rows]
  rfl

private def s6Step139ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,199),(200,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step139ExitFBefore : Arena := s6Step139ExitGAfter

private def s6Step139ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 807],795⟩

private def s6Step139ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869],776⟩

private def s6Step139ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 850],777⟩

private def s6Step139ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822],775⟩

private theorem s6Step139ExitBank_incomingDistinct : ([s6Step139ExitGRow,s6Step139ExitFRow,s6Step139ExitFvRow,s6Step139ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step139ExitF_Incoming : rowsOwned s6Step139ExitFBefore [s6Step139ExitFRow,s6Step139ExitFvRow,s6Step139ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step139ExitGRow,s6Step139ExitFRow,s6Step139ExitFvRow,s6Step139ExitGvRow] 1 s6Step139ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step139ExitFBefore (fun q => ([(0,199),(200,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step139ExitBank_outgoingOwned : rowsOwned s6Step139ExitGvAfter [s6Step139ExitGOut,s6Step139ExitFOut,s6Step139ExitFvOut,s6Step139ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step139ExitGvAfter (fun q => ([(0,199),(200,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step139ExitF_Outgoing : rowsOwned s6Step139ExitGvAfter [s6Step139ExitFOut,s6Step139ExitFvOut,s6Step139ExitGvOut] :=
  hmrRows_owned_drop s6Step139ExitGvAfter [s6Step139ExitGOut,s6Step139ExitFOut,s6Step139ExitFvOut,s6Step139ExitGvOut] 1 s6Step139ExitBank_outgoingOwned

private theorem s6Step139ExitF_distinct : (s6Step139ExitFRow.sign::s6Step139ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step139ExitF_owned : (s6Step139ExitFRow.sign::s6Step139ExitFRow.payload).toFinset⊆s6Step139ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step139ExitFBefore (fun q => ([(0,199),(200,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step139ExitF_retired : s6Step139ExitFBefore.retireSet s6Step139ExitFExtra.toFinset=s6Step139ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step139ExitFBefore s6Step139ExitFAfter s6Step139ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step139ExitFBefore s6Step139ExitFAfter (fun q => ([(0,199),(200,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,199),(200,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step139ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step139ExitF_checked : planRowResizeLog s6Step139ExitFBefore s6Step139ExitFRow 200 []=
    some (s6Step139ExitFAfter,s6Step139ExitFOut,shrinkRow 795 s6Step139ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step139ExitFBefore s6Step139ExitFRow 200 s6Step139ExitF_distinct s6Step139ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step139ExitFRow.payload.take 200) s6Step139ExitFRow.sign=s6Step139ExitFOut := by decide +kernel
  have hi : s6Step139ExitFRow.payload.drop 200=s6Step139ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step139ExitF_retired] at result
  exact result

private def s6Step139ExitFvAfter : Arena := s6Step139ExitFAfter

private def s6Step139ExitFvBefore : Arena := s6Step139ExitFAfter

private theorem s6Step139ExitFv_Incoming : rowsOwned s6Step139ExitFvBefore [s6Step139ExitFvRow,s6Step139ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step139ExitGRow,s6Step139ExitFRow,s6Step139ExitFvRow,s6Step139ExitGvRow] 2 s6Step139ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step139ExitFvBefore (fun q => ([(0,199),(200,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step139ExitFv_Outgoing : rowsOwned s6Step139ExitGvAfter [s6Step139ExitFvOut,s6Step139ExitGvOut] :=
  hmrRows_owned_drop s6Step139ExitGvAfter [s6Step139ExitGOut,s6Step139ExitFOut,s6Step139ExitFvOut,s6Step139ExitGvOut] 2 s6Step139ExitBank_outgoingOwned

private theorem s6Step139ExitFv_distinct : (s6Step139ExitFvRow.sign::s6Step139ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step139ExitFv_owned : (s6Step139ExitFvRow.sign::s6Step139ExitFvRow.payload).toFinset⊆s6Step139ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step139ExitFvBefore (fun q => ([(0,199),(200,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step139ExitFv_reserved : s6Step139ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step139ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step139ExitFv_checked : planRowResizeLog s6Step139ExitFvBefore s6Step139ExitFvRow 84 []=
    some (s6Step139ExitFvAfter,s6Step139ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step139ExitFvBefore s6Step139ExitFvAfter s6Step139ExitFvRow 84 []
    s6Step139ExitFv_distinct s6Step139ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step139ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step139ExitFvRow.payload++[]) s6Step139ExitFvRow.sign=s6Step139ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step139ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step139ExitG_Incoming : rowsOwned s6Step139ExitGBefore [s6Step139ExitGRow,s6Step139ExitFRow,s6Step139ExitFvRow,s6Step139ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step139ExitGRow,s6Step139ExitFRow,s6Step139ExitFvRow,s6Step139ExitGvRow] 0 s6Step139ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step139ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step139ExitG_Outgoing : rowsOwned s6Step139ExitGvAfter [s6Step139ExitGOut,s6Step139ExitFOut,s6Step139ExitFvOut,s6Step139ExitGvOut] :=
  hmrRows_owned_drop s6Step139ExitGvAfter [s6Step139ExitGOut,s6Step139ExitFOut,s6Step139ExitFvOut,s6Step139ExitGvOut] 0 s6Step139ExitBank_outgoingOwned

private theorem s6Step139ExitG_distinct : (s6Step139ExitGRow.sign::s6Step139ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step139ExitG_owned : (s6Step139ExitGRow.sign::s6Step139ExitGRow.payload).toFinset⊆s6Step139ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step139ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step139ExitG_retired : s6Step139ExitGBefore.retireSet s6Step139ExitGExtra.toFinset=s6Step139ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step139ExitGBefore s6Step139ExitGAfter s6Step139ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step139ExitGBefore s6Step139ExitGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,199),(200,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step139ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step139ExitG_checked : planRowResizeLog s6Step139ExitGBefore s6Step139ExitGRow 199 []=
    some (s6Step139ExitGAfter,s6Step139ExitGOut,shrinkRow 777 s6Step139ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step139ExitGBefore s6Step139ExitGRow 199 s6Step139ExitG_distinct s6Step139ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step139ExitGRow.payload.take 199) s6Step139ExitGRow.sign=s6Step139ExitGOut := by decide +kernel
  have hi : s6Step139ExitGRow.payload.drop 199=s6Step139ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step139ExitG_retired] at result
  exact result

private def s6Step139ExitGvBefore : Arena := s6Step139ExitFAfter

private theorem s6Step139ExitGv_Incoming : rowsOwned s6Step139ExitGvBefore [s6Step139ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step139ExitGRow,s6Step139ExitFRow,s6Step139ExitFvRow,s6Step139ExitGvRow] 3 s6Step139ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step139ExitGvBefore (fun q => ([(0,199),(200,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step139ExitGv_Outgoing : rowsOwned s6Step139ExitGvAfter [s6Step139ExitGvOut] :=
  hmrRows_owned_drop s6Step139ExitGvAfter [s6Step139ExitGOut,s6Step139ExitFOut,s6Step139ExitFvOut,s6Step139ExitGvOut] 3 s6Step139ExitBank_outgoingOwned

private theorem s6Step139ExitGv_distinct : (s6Step139ExitGvRow.sign::s6Step139ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step139ExitGv_owned : (s6Step139ExitGvRow.sign::s6Step139ExitGvRow.payload).toFinset⊆s6Step139ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step139ExitGvBefore (fun q => ([(0,199),(200,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step139ExitGv_reserved : s6Step139ExitGvBefore.reserve (∅ : Finset Wire)=some s6Step139ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step139ExitGv_checked : planRowResizeLog s6Step139ExitGvBefore s6Step139ExitGvRow 84 []=
    some (s6Step139ExitGvAfter,s6Step139ExitGvOut,growRow 775 []) := by
  have result := planRowResizeLog_of_growth s6Step139ExitGvBefore s6Step139ExitGvAfter s6Step139ExitGvRow 84 []
    s6Step139ExitGv_distinct s6Step139ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step139ExitGv_reserved
  have rowEq : WindowRow.mk (s6Step139ExitGvRow.payload++[]) s6Step139ExitGvRow.sign=s6Step139ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step139ExitBank_rows : planWindowRowsLog s6Step139ExitGBefore [(s6Step139ExitGRow,199),(s6Step139ExitFRow,200),(s6Step139ExitFvRow,84),(s6Step139ExitGvRow,84)] [[],[],[],[]]=
    some (s6Step139ExitGvAfter,[s6Step139ExitGOut,s6Step139ExitFOut,s6Step139ExitFvOut,s6Step139ExitGvOut],(shrinkRow 777 s6Step139ExitGExtra ++ (shrinkRow 795 s6Step139ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  have h4 : planWindowRowsLog s6Step139ExitGvAfter [] []=some (s6Step139ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step139ExitGvBefore s6Step139ExitGvAfter s6Step139ExitGvAfter
    s6Step139ExitGvRow s6Step139ExitGvOut 84 [] [] [] []
    (growRow 775 []) ([]) s6Step139ExitGv_Incoming s6Step139ExitGv_checked h4 s6Step139ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step139ExitFvBefore s6Step139ExitFvAfter s6Step139ExitGvAfter
    s6Step139ExitFvRow s6Step139ExitFvOut 84 [] [(s6Step139ExitGvRow,84)] [[]] [s6Step139ExitGvOut]
    (growRow 776 []) ((growRow 775 [] ++ [])) s6Step139ExitFv_Incoming s6Step139ExitFv_checked h3 s6Step139ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step139ExitFBefore s6Step139ExitFAfter s6Step139ExitGvAfter
    s6Step139ExitFRow s6Step139ExitFOut 200 [] [(s6Step139ExitFvRow,84),(s6Step139ExitGvRow,84)] [[],[]] [s6Step139ExitFvOut,s6Step139ExitGvOut]
    (shrinkRow 795 s6Step139ExitFExtra) ((growRow 776 [] ++ (growRow 775 [] ++ []))) s6Step139ExitF_Incoming s6Step139ExitF_checked h2 s6Step139ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step139ExitGBefore s6Step139ExitGAfter s6Step139ExitGvAfter
    s6Step139ExitGRow s6Step139ExitGOut 199 [] [(s6Step139ExitFRow,200),(s6Step139ExitFvRow,84),(s6Step139ExitGvRow,84)] [[],[],[]] [s6Step139ExitFOut,s6Step139ExitFvOut,s6Step139ExitGvOut]
    (shrinkRow 777 s6Step139ExitGExtra) ((shrinkRow 795 s6Step139ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ [])))) s6Step139ExitG_Incoming s6Step139ExitG_checked h1 s6Step139ExitG_Outgoing
  exact h0

private theorem s6Step139ExitBank_checked : compileHmrBankResizeLog .exit s6Step139ExitGBefore ⟨s6Step139ExitFRow,s6Step139ExitGRow,s6Step139ExitFvRow,s6Step139ExitGvRow⟩ ⟨200,199,84,84⟩ [[],[],[],[]]=
    some (s6Step139ExitGvAfter,⟨s6Step139ExitFOut,s6Step139ExitGOut,s6Step139ExitFvOut,s6Step139ExitGvOut⟩,(shrinkRow 777 s6Step139ExitGExtra ++ (shrinkRow 795 s6Step139ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step139ExitBank_rows]
  rfl

private theorem s6Step139Add0_apart : Disjoint s6Step139Add0Arena.live s6Step139Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step139Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step139Add0_card : s6Step139Add0Arena.live.card=879 := by
  decide +kernel

private theorem s6Step139Add0_borrowed : s6Step139Add0Arena.checkBorrow (hmrHybridCount s6Step139Add0Arena s6Step139Add0B.length) s6Step139Add0Work=some s6Step139Add0During := by
  have len : s6Step139Add0Work.length=hmrHybridCount s6Step139Add0Arena s6Step139Add0B.length := by
    rw [hmrHybridCount,s6Step139Add0_card]
    decide +kernel
  have nd : s6Step139Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step139Add0Arena s6Step139Add0During s6Step139Add0Work.toFinset s6Step139Add0_bounded s6Step139Add0_apart rfl

private theorem s6Step139Add0_distinct : (879::867::813::(s6Step139Add0A++s6Step139Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step139Add0_owned : (879::867::813::(s6Step139Add0A++s6Step139Add0B)).toFinset⊆s6Step139Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step139Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step139Add0_checked : compileHmrHybridCinLog s6Step139Add0Arena 867 879 813 s6Step139Add0A s6Step139Add0B s6Step139Add0Work=some s6Step139Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step139Add0Arena s6Step139Add0During 867 879 813 s6Step139Add0A s6Step139Add0B s6Step139Add0Work
    (by decide +kernel) (by decide +kernel) s6Step139Add0_distinct
    (fun q hq => s6Step139Add0_owned (List.mem_toFinset.mpr hq)) s6Step139Add0_borrowed

private theorem s6Step139Add1_apart : Disjoint s6Step139Add1Arena.live s6Step139Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step139Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step139Add1_card : s6Step139Add1Arena.live.card=879 := by
  decide +kernel

private theorem s6Step139Add1_borrowed : s6Step139Add1Arena.checkBorrow (hmrHybridCount s6Step139Add1Arena s6Step139Add1B.length) s6Step139Add1Work=some s6Step139Add1During := by
  have len : s6Step139Add1Work.length=hmrHybridCount s6Step139Add1Arena s6Step139Add1B.length := by
    rw [hmrHybridCount,s6Step139Add1_card]
    decide +kernel
  have nd : s6Step139Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step139Add1Arena s6Step139Add1During s6Step139Add1Work.toFinset s6Step139Add1_bounded s6Step139Add1_apart rfl

private theorem s6Step139Add1_distinct : (879::867::813::(s6Step139Add1A++s6Step139Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step139Add1_owned : (879::867::813::(s6Step139Add1A++s6Step139Add1B)).toFinset⊆s6Step139Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step139Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step139Add1_checked : compileHmrHybridCinLog s6Step139Add1Arena 867 879 813 s6Step139Add1A s6Step139Add1B s6Step139Add1Work=some s6Step139Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step139Add1Arena s6Step139Add1During 867 879 813 s6Step139Add1A s6Step139Add1B s6Step139Add1Work
    (by decide +kernel) (by decide +kernel) s6Step139Add1_distinct
    (fun q hq => s6Step139Add1_owned (List.mem_toFinset.mpr hq)) s6Step139Add1_borrowed

private theorem s6Step139F4_apart : Disjoint (s6Step139Add0A++s6Step139Add0B).toFinset (s6Step139Add1A++s6Step139Add1B).toFinset := by
  have nd : ((s6Step139Add0A++s6Step139Add0B)++(s6Step139Add1A++s6Step139Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step139F4_carry : s6Step139F4FlagArena.checkBorrow 1 [813]=some s6Step139Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step139F4FlagArena,s6Step139HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step139F4FlagArena,s6Step139HeadFvAfter,s6Step139Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step139F4_distinct : (768::867::879::813::((s6Step139Add0A++s6Step139Add1A)++(s6Step139Add0B++s6Step139Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step139F4_flag : s6Step139HeadFvAfter.checkBorrow 1 [879]=some s6Step139F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step139HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step139F4_owned : (768::867::((s6Step139Add0A++s6Step139Add1A)++(s6Step139Add0B++s6Step139Add1B))).toFinset⊆s6Step139HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step139HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step139F4_checked : compileHmrHybridF4Log s6Step139HeadFvAfter 768 867 s6Step139Add0A s6Step139Add0B s6Step139Add1A s6Step139Add1B [879] [813] s6Step139Add0Work s6Step139Add1Work=some s6Step139F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step139HeadFvAfter s6Step139F4FlagArena s6Step139Add0Arena s6Step139Add0During s6Step139Add1During 768 867
    s6Step139Add0A s6Step139Add0B s6Step139Add1A s6Step139Add1B [879] [813] s6Step139Add0Work s6Step139Add1Work
    (fun q hq => s6Step139F4_owned (List.mem_toFinset.mpr hq)) s6Step139F4_flag s6Step139F4_carry
    s6Step139F4_distinct s6Step139F4_apart s6Step139Add0_checked s6Step139Add1_checked

private theorem s6Step139Front_branch : s6Step139FrontSigmaArena.checkBorrow 1 [867]=some s6Step139HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step139FrontSigmaArena,s6Step139EntryGvAfter,arenaWires]
  · change s6Step139HeadGBefore.live=(s6Step139EntryGvAfter.live∪{768})∪{867}
    apply hmrArena_union_pair_of_filter_check s6Step139EntryGvAfter s6Step139HeadGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(851,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 768 867 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step139Front_entry : HmrFrontEntryValid s6Step139EntryFBefore s6Step139FrontBank 200 83 ⟨200,199,84,84⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step139FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step139EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step139EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(851,862),(863,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step139FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step139Front_sigma : s6Step139EntryGvAfter.checkBorrow 1 [768]=some s6Step139FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step139EntryGvAfter,arenaWires]
  · rfl

private def s6Step139HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(850,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step139HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(850,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step139HeadFBefore : Arena := s6Step139HeadGAfter

private def s6Step139HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455],795⟩

private def s6Step139HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843],776⟩

private def s6Step139HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199],777⟩

private def s6Step139HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862],775⟩

private theorem s6Step139HeadBank_incomingDistinct : ([s6Step139HeadGRow,s6Step139HeadFRow,s6Step139HeadGvRow,s6Step139HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step139HeadF_Incoming : rowsOwned s6Step139HeadFBefore [s6Step139HeadFRow,s6Step139HeadGvRow,s6Step139HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step139HeadGRow,s6Step139HeadFRow,s6Step139HeadGvRow,s6Step139HeadFvRow] 1 s6Step139HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step139HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(850,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step139HeadBank_outgoingOwned : rowsOwned s6Step139HeadFvAfter [s6Step139HeadGOut,s6Step139HeadFOut,s6Step139HeadGvOut,s6Step139HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step139HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step139HeadF_Outgoing : rowsOwned s6Step139HeadFvAfter [s6Step139HeadFOut,s6Step139HeadGvOut,s6Step139HeadFvOut] :=
  hmrRows_owned_drop s6Step139HeadFvAfter [s6Step139HeadGOut,s6Step139HeadFOut,s6Step139HeadGvOut,s6Step139HeadFvOut] 1 s6Step139HeadBank_outgoingOwned

private theorem s6Step139HeadF_distinct : (s6Step139HeadFRow.sign::s6Step139HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step139HeadF_owned : (s6Step139HeadFRow.sign::s6Step139HeadFRow.payload).toFinset⊆s6Step139HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step139HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(850,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step139HeadF_reserved : s6Step139HeadFBefore.reserve s6Step139HeadFFresh.toFinset=some s6Step139HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step139HeadFFresh,arenaWires]
  · norm_num [s6Step139HeadFBefore,s6Step139HeadGAfter,s6Step139HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step139HeadFBefore s6Step139HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(850,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(850,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step139HeadFFresh rfl rfl
    · norm_num [s6Step139HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step139HeadF_checked : planRowResizeLog s6Step139HeadFBefore s6Step139HeadFRow 201 s6Step139HeadFFresh=
    some (s6Step139HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 807],795⟩,growRow 795 s6Step139HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step139HeadFBefore s6Step139HeadFAfter s6Step139HeadFRow 201 s6Step139HeadFFresh
    s6Step139HeadF_distinct s6Step139HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step139HeadF_reserved
  have rowEq : WindowRow.mk (s6Step139HeadFRow.payload++s6Step139HeadFFresh) s6Step139HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 807],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step139HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step139HeadFvBefore : Arena := s6Step139HeadGvAfter

private theorem s6Step139HeadFv_Incoming : rowsOwned s6Step139HeadFvBefore [s6Step139HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step139HeadGRow,s6Step139HeadFRow,s6Step139HeadGvRow,s6Step139HeadFvRow] 3 s6Step139HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step139HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step139HeadFv_Outgoing : rowsOwned s6Step139HeadFvAfter [s6Step139HeadFvOut] :=
  hmrRows_owned_drop s6Step139HeadFvAfter [s6Step139HeadGOut,s6Step139HeadFOut,s6Step139HeadGvOut,s6Step139HeadFvOut] 3 s6Step139HeadBank_outgoingOwned

private theorem s6Step139HeadFv_distinct : (s6Step139HeadFvRow.sign::s6Step139HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step139HeadFv_owned : (s6Step139HeadFvRow.sign::s6Step139HeadFvRow.payload).toFinset⊆s6Step139HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step139HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step139HeadFv_reserved : s6Step139HeadFvBefore.reserve s6Step139HeadFvFresh.toFinset=some s6Step139HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step139HeadFvFresh,arenaWires]
  · norm_num [s6Step139HeadFvBefore,s6Step139HeadGvAfter,s6Step139HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step139HeadFvBefore s6Step139HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step139HeadFvFresh rfl rfl
    · norm_num [s6Step139HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step139HeadFv_checked : planRowResizeLog s6Step139HeadFvBefore s6Step139HeadFvRow 84 s6Step139HeadFvFresh=
    some (s6Step139HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869],776⟩,growRow 776 s6Step139HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step139HeadFvBefore s6Step139HeadFvAfter s6Step139HeadFvRow 84 s6Step139HeadFvFresh
    s6Step139HeadFv_distinct s6Step139HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step139HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step139HeadFvRow.payload++s6Step139HeadFvFresh) s6Step139HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step139HeadG_Incoming : rowsOwned s6Step139HeadGBefore [s6Step139HeadGRow,s6Step139HeadFRow,s6Step139HeadGvRow,s6Step139HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step139HeadGRow,s6Step139HeadFRow,s6Step139HeadGvRow,s6Step139HeadFvRow] 0 s6Step139HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step139HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(851,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step139HeadG_Outgoing : rowsOwned s6Step139HeadFvAfter [s6Step139HeadGOut,s6Step139HeadFOut,s6Step139HeadGvOut,s6Step139HeadFvOut] :=
  hmrRows_owned_drop s6Step139HeadFvAfter [s6Step139HeadGOut,s6Step139HeadFOut,s6Step139HeadGvOut,s6Step139HeadFvOut] 0 s6Step139HeadBank_outgoingOwned

private theorem s6Step139HeadG_distinct : (s6Step139HeadGRow.sign::s6Step139HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step139HeadG_owned : (s6Step139HeadGRow.sign::s6Step139HeadGRow.payload).toFinset⊆s6Step139HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step139HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(851,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step139HeadG_reserved : s6Step139HeadGBefore.reserve s6Step139HeadGFresh.toFinset=some s6Step139HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step139HeadGFresh,arenaWires]
  · norm_num [s6Step139HeadGBefore,s6Step139HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step139HeadGBefore s6Step139HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(851,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(850,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step139HeadGFresh rfl rfl
    · norm_num [s6Step139HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step139HeadG_checked : planRowResizeLog s6Step139HeadGBefore s6Step139HeadGRow 201 s6Step139HeadGFresh=
    some (s6Step139HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 850],777⟩,growRow 777 s6Step139HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step139HeadGBefore s6Step139HeadGAfter s6Step139HeadGRow 201 s6Step139HeadGFresh
    s6Step139HeadG_distinct s6Step139HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step139HeadG_reserved
  have rowEq : WindowRow.mk (s6Step139HeadGRow.payload++s6Step139HeadGFresh) s6Step139HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 850],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step139HeadGvBefore : Arena := s6Step139HeadFAfter

private theorem s6Step139HeadGv_Incoming : rowsOwned s6Step139HeadGvBefore [s6Step139HeadGvRow,s6Step139HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step139HeadGRow,s6Step139HeadFRow,s6Step139HeadGvRow,s6Step139HeadFvRow] 2 s6Step139HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step139HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(850,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step139HeadGv_Outgoing : rowsOwned s6Step139HeadFvAfter [s6Step139HeadGvOut,s6Step139HeadFvOut] :=
  hmrRows_owned_drop s6Step139HeadFvAfter [s6Step139HeadGOut,s6Step139HeadFOut,s6Step139HeadGvOut,s6Step139HeadFvOut] 2 s6Step139HeadBank_outgoingOwned

private theorem s6Step139HeadGv_distinct : (s6Step139HeadGvRow.sign::s6Step139HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step139HeadGv_owned : (s6Step139HeadGvRow.sign::s6Step139HeadGvRow.payload).toFinset⊆s6Step139HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step139HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(850,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step139HeadGv_reserved : s6Step139HeadGvBefore.reserve s6Step139HeadGvFresh.toFinset=some s6Step139HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step139HeadGvFresh,arenaWires]
  · norm_num [s6Step139HeadGvBefore,s6Step139HeadFAfter,s6Step139HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step139HeadGvBefore s6Step139HeadGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(850,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step139HeadGvFresh rfl rfl
    · norm_num [s6Step139HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step139HeadGv_checked : planRowResizeLog s6Step139HeadGvBefore s6Step139HeadGvRow 84 s6Step139HeadGvFresh=
    some (s6Step139HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822],775⟩,growRow 775 s6Step139HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step139HeadGvBefore s6Step139HeadGvAfter s6Step139HeadGvRow 84 s6Step139HeadGvFresh
    s6Step139HeadGv_distinct s6Step139HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step139HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step139HeadGvRow.payload++s6Step139HeadGvFresh) s6Step139HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step139HeadBank_rows : planWindowRowsLog s6Step139HeadGBefore [(s6Step139HeadGRow,201),(s6Step139HeadFRow,201),(s6Step139HeadGvRow,84),(s6Step139HeadFvRow,84)] [s6Step139HeadGFresh,s6Step139HeadFFresh,s6Step139HeadGvFresh,s6Step139HeadFvFresh]=
    some (s6Step139HeadFvAfter,[s6Step139HeadGOut,s6Step139HeadFOut,s6Step139HeadGvOut,s6Step139HeadFvOut],(growRow 777 s6Step139HeadGFresh ++ (growRow 795 s6Step139HeadFFresh ++ (growRow 775 s6Step139HeadGvFresh ++ (growRow 776 s6Step139HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step139HeadFvAfter [] []=some (s6Step139HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step139HeadFvBefore s6Step139HeadFvAfter s6Step139HeadFvAfter
    s6Step139HeadFvRow s6Step139HeadFvOut 84 s6Step139HeadFvFresh [] [] []
    (growRow 776 s6Step139HeadFvFresh) ([]) s6Step139HeadFv_Incoming s6Step139HeadFv_checked h4 s6Step139HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step139HeadGvBefore s6Step139HeadGvAfter s6Step139HeadFvAfter
    s6Step139HeadGvRow s6Step139HeadGvOut 84 s6Step139HeadGvFresh [(s6Step139HeadFvRow,84)] [s6Step139HeadFvFresh] [s6Step139HeadFvOut]
    (growRow 775 s6Step139HeadGvFresh) ((growRow 776 s6Step139HeadFvFresh ++ [])) s6Step139HeadGv_Incoming s6Step139HeadGv_checked h3 s6Step139HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step139HeadFBefore s6Step139HeadFAfter s6Step139HeadFvAfter
    s6Step139HeadFRow s6Step139HeadFOut 201 s6Step139HeadFFresh [(s6Step139HeadGvRow,84),(s6Step139HeadFvRow,84)] [s6Step139HeadGvFresh,s6Step139HeadFvFresh] [s6Step139HeadGvOut,s6Step139HeadFvOut]
    (growRow 795 s6Step139HeadFFresh) ((growRow 775 s6Step139HeadGvFresh ++ (growRow 776 s6Step139HeadFvFresh ++ []))) s6Step139HeadF_Incoming s6Step139HeadF_checked h2 s6Step139HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step139HeadGBefore s6Step139HeadGAfter s6Step139HeadFvAfter
    s6Step139HeadGRow s6Step139HeadGOut 201 s6Step139HeadGFresh [(s6Step139HeadFRow,201),(s6Step139HeadGvRow,84),(s6Step139HeadFvRow,84)] [s6Step139HeadFFresh,s6Step139HeadGvFresh,s6Step139HeadFvFresh] [s6Step139HeadFOut,s6Step139HeadGvOut,s6Step139HeadFvOut]
    (growRow 777 s6Step139HeadGFresh) ((growRow 795 s6Step139HeadFFresh ++ (growRow 775 s6Step139HeadGvFresh ++ (growRow 776 s6Step139HeadFvFresh ++ [])))) s6Step139HeadG_Incoming s6Step139HeadG_checked h1 s6Step139HeadG_Outgoing
  exact h0

private theorem s6Step139HeadBank_checked : compileHmrBankResizeLog .headroom s6Step139HeadGBefore ⟨s6Step139HeadFRow,s6Step139HeadGRow,s6Step139HeadFvRow,s6Step139HeadGvRow⟩ ⟨201,201,84,84⟩ [s6Step139HeadGFresh,s6Step139HeadFFresh,s6Step139HeadGvFresh,s6Step139HeadFvFresh]=
    some (s6Step139HeadFvAfter,⟨s6Step139HeadFOut,s6Step139HeadGOut,s6Step139HeadFvOut,s6Step139HeadGvOut⟩,(growRow 777 s6Step139HeadGFresh ++ (growRow 795 s6Step139HeadFFresh ++ (growRow 775 s6Step139HeadGvFresh ++ (growRow 776 s6Step139HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step139HeadBank_rows]
  rfl

private theorem s6Step139Front_checked : compileHmrSourceFrontLog s6Step139EntryFBefore s6Step139FrontBank 200 83 ⟨200,199,84,84⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step139FrontLog=some s6Step139FrontPlan := by
  have pairEq : s6Step139FrontPair=⟨s6Step139HeadFRow,s6Step139HeadGRow,s6Step139HeadFvRow,s6Step139HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step139FrontHead=⟨s6Step139ExitFRow,s6Step139ExitGRow,s6Step139ExitFvRow,s6Step139ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step139Add0A=s6Step139FrontHead.f.wires := by decide +kernel
  have gEq : s6Step139Add0B=s6Step139FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step139Add1A=s6Step139FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step139Add1B=s6Step139FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step139EntryFBefore s6Step139FrontBank 200 83 ⟨200,199,84,84⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step139FrontLog s6Step139FrontPlan
  · exact s6Step139Front_entry
  · exact s6Step139EntryBank_checked
  · exact s6Step139Front_sigma
  · rfl
  · exact s6Step139Front_branch
  · rfl
  · simpa only [s6Step139FrontPlan,pairEq] using s6Step139HeadBank_checked
  · simpa only [s6Step139FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step139F4_checked
  · exact s6Step139Counter_checked
  · rfl
  · simpa only [s6Step139FrontPlan,headEq] using s6Step139ExitBank_checked

private theorem s6Step139Complete_explicit_checked : compileHmrEarlyStepLog s6Step139EntryFBefore s6Step139FrontBank 200 83 ⟨200,199,84,84⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836] 40 s6Step139CompleteLog=some s6Step139CompletePlan := by
  let Q := s6Step139EarlyControlPlan
  have hq := s6Step139EarlyControl_plan_checked
  have fv1 : s6Step139CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step139CompleteOut.fv.payload[2]?.getD s6Step139CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step139CompleteOut.fv.payload[3]?.getD s6Step139CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step139CompleteOut.fv.payload[4]?.getD s6Step139CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step139EntryFBefore s6Step139EarlyControlArena s6Step139FrontBank 200 83 ⟨200,199,84,84⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836] 40 s6Step139CompleteLog s6Step139FrontPlan Q
    s6Step139Front_checked s6Step139Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step139Complete_owned s6Step139Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step139EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836] 769 768 s6Step139CompleteOut.fv.second (s6Step139CompleteOut.fv.payload[2]?.getD s6Step139CompleteOut.fv.sign) (s6Step139CompleteOut.fv.payload[3]?.getD s6Step139CompleteOut.fv.sign) (s6Step139CompleteOut.fv.payload[4]?.getD s6Step139CompleteOut.fv.sign) 867 40 s6Step139EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep139Arena : Arena := s6Step139EntryFBefore
def s6PrivateStep139Bank : WindowBank := s6Step139FrontBank
def s6PrivateStep139Spec : HmrSourceWalkStepLog := ⟨200,83,⟨200,199,84,84⟩,40,.early s6Step139CompleteLog⟩
def s6PrivateStep139Plan : HmrSourceStepPlan := .early s6Step139CompletePlan
theorem s6PrivateStep139_source : s6PrivateStep139Spec=s6ObservedLogs128[11] := rfl
theorem s6PrivateStep139_checked : compileHmrSourceStepLog s6PrivateStep139Arena s6PrivateStep139Bank
    s6PrivateStep139Spec.fgWidth s6PrivateStep139Spec.vWidth s6PrivateStep139Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836]
    6 498 139 s6PrivateStep139Spec.need none s6PrivateStep139Spec.log=some s6PrivateStep139Plan := by
  change compileHmrSourceStepLog s6Step139EntryFBefore s6Step139FrontBank 200 83 ⟨200,199,84,84⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836] 6 498 139 40 none (.early s6Step139CompleteLog)=some (.early s6Step139CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 139<498)]
  rw [s6Step139Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
