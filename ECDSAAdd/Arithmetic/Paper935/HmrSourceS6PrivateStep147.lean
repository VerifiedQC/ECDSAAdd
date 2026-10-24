import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep145
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

private def s6Step147CompleteMoves : List (Wire × Wire) := [(858,451)]

private def s6Step147EarlyControlLog : HmrEarlyControlLog := ⟨[858, 877, 768, 879, 908],[887],[807],[875, 882, 891, 903, 791, 825],[]⟩

private def s6Step147FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [887], [], [794, 877]],[[807], [908], [768], [879]],[[], [], [], []]⟩,[855],[802],[875],[882],[891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[875, 882, 891, 903]⟩

private def s6Step147CompleteLog : HmrEarlyStepLog := ⟨s6Step147FrontLog,s6Step147CompleteMoves,s6Step147EarlyControlLog⟩

private def s6Step147ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450],795⟩

private def s6Step147ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867],776⟩

private def s6Step147ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194],777⟩

private def s6Step147ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794],775⟩

private def s6Step147FrontOut : WindowBank := ⟨s6Step147ExitFOut,s6Step147ExitGOut,s6Step147ExitFvOut,s6Step147ExitGvOut⟩

private def s6Step147CompleteOut : WindowBank := s6Step147FrontOut.repacked s6Step147CompleteMoves

private def s6Step147EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step147EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step147EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step147EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step147EarlyControlPositiveArena,[887],s6Step147EarlyControlEqualityArena,[807],⟨⟨855,false⟩,[⟨⟨887,false⟩,807⟩]⟩⟩

private def s6Step147EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step147EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step147EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step147EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step147EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step147EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step147EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,858⟩,⟨⟨772,false⟩,877⟩,⟨⟨771,false⟩,768⟩,⟨⟨770,false⟩,879⟩,⟨⟨769,false⟩,908⟩]⟩

private def s6Step147EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step147EarlyControlZeroArena,s6Step147EarlyControlZeroPlan,s6Step147EarlyControlClassPlan,s6Step147EarlyControlFlagArena,s6Step147EarlyControlFittedArena,s6Step147EarlyControlHistoryArena,s6Step147EarlyControlSigmaArena,s6Step147EarlyControlOutputArena,s6Step147EarlyControlLog⟩

private def s6Step147CounterWork : List Wire := [875, 882, 891, 903]

private theorem s6Step147Counter_bounded : s6Step147CounterWork.toFinset⊆arenaWires := by norm_num [s6Step147CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step147HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step147CounterDuring : Arena := ⟨s6Step147HeadFvAfter.live∪s6Step147CounterWork.toFinset,Finset.union_subset s6Step147HeadFvAfter.bounded s6Step147Counter_bounded⟩

private def s6Step147EntryFFresh : List Wire := []

private def s6Step147EntryFvFresh : List Wire := []

private def s6Step147EntryGFresh : List Wire := [887]

private def s6Step147EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step147EntryGvFresh : List Wire := [794, 877]

private def s6Step147ExitFExtra : List Wire := [451, 908]

private def s6Step147ExitFvExtra : List Wire := [879]

private def s6Step147ExitGExtra : List Wire := [887, 807]

private def s6Step147ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,451),(452,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step147ExitGvExtra : List Wire := [877, 768]

private def s6Step147Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step147Add0Work : List Wire := [891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step147Add0_bounded : s6Step147Add0Work.toFinset⊆arenaWires := by
  have h : s6Step147Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step147Add0During : Arena := ⟨s6Step147Add0Arena.live∪s6Step147Add0Work.toFinset,Finset.union_subset s6Step147Add0Arena.bounded s6Step147Add0_bounded⟩

private def s6Step147Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step147Add1Work : List Wire := [891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step147Add1_bounded : s6Step147Add1Work.toFinset⊆arenaWires := by
  have h : s6Step147Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step147Add1During : Arena := ⟨s6Step147Add1Arena.live∪s6Step147Add1Work.toFinset,Finset.union_subset s6Step147Add1Arena.bounded s6Step147Add1_bounded⟩

private def s6Step147F4FlagArena : Arena := ⟨s6Step147HeadFvAfter.live∪{875},Finset.union_subset s6Step147HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step147F4Plan : HmrHybridF4Plan := ⟨s6Step147F4FlagArena,[875],s6Step147Add0Arena,[882],s6Step147Add0During,s6Step147Add0Work,s6Step147Add1During,s6Step147Add1Work⟩

private def s6Step147HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 908],795⟩

private def s6Step147HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 879],776⟩

private def s6Step147HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 887, 807],777⟩

private def s6Step147HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 877, 768],775⟩

private def s6Step147FrontHead : WindowBank := ⟨s6Step147HeadFOut,s6Step147HeadGOut,s6Step147HeadFvOut,s6Step147HeadGvOut⟩

private def s6Step147EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451],795⟩

private def s6Step147EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867],776⟩

private def s6Step147EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 887],777⟩

private def s6Step147EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 877],775⟩

private def s6Step147FrontPair : WindowBank := ⟨s6Step147EntryFOut,s6Step147EntryGOut,s6Step147EntryFvOut,s6Step147EntryGvOut⟩

private def s6Step147FrontSigmaArena : Arena := ⟨s6Step147EntryGvAfter.live∪{855},Finset.union_subset s6Step147EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step147HeadFFresh : List Wire := [908]

private def s6Step147HeadFvFresh : List Wire := [879]

private def s6Step147HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step147HeadGFresh : List Wire := [807]

private def s6Step147HeadGvFresh : List Wire := [768]

private def s6Step147FrontPlan : HmrSourceFront := ⟨s6Step147EntryGvAfter,s6Step147FrontPair,(growRow 795 s6Step147EntryFFresh ++ (growRow 777 s6Step147EntryGFresh ++ (growRow 776 s6Step147EntryFvFresh ++ (growRow 775 s6Step147EntryGvFresh ++ [])))),s6Step147FrontSigmaArena,[855],s6Step147HeadGBefore,[802],
  s6Step147HeadFvAfter,s6Step147FrontHead,(growRow 777 s6Step147HeadGFresh ++ (growRow 795 s6Step147HeadFFresh ++ (growRow 775 s6Step147HeadGvFresh ++ (growRow 776 s6Step147HeadFvFresh ++ [])))),s6Step147F4Plan,s6Step147CounterDuring,s6Step147CounterWork,s6Step147ExitGvAfter,s6Step147FrontOut,(shrinkRow 777 s6Step147ExitGExtra ++ (shrinkRow 795 s6Step147ExitFExtra ++ (shrinkRow 776 s6Step147ExitFvExtra ++ (shrinkRow 775 s6Step147ExitGvExtra ++ []))))⟩

private def s6Step147CompletePlan : HmrEarlyStepPlan := ⟨s6Step147FrontPlan,s6Step147EarlyControlArena,s6Step147EarlyControlPlan,s6Step147CompleteMoves⟩

private theorem s6Step147Complete_apart : List.Disjoint (s6Step147CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [855, 802, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step147CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[855, 802, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step147Complete_owned : (s6Step147CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step147EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step147EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step147CompleteRelocationMove0Borrowed : Arena := ⟨s6Step147ExitGvAfter.live∪{451},Finset.union_subset s6Step147ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step147CompleteRelocation_move0_owned : 858∈s6Step147ExitGvAfter.live := by norm_num [s6Step147ExitGvAfter,arenaWires]

private theorem s6Step147CompleteRelocation_move0_reserve : s6Step147ExitGvAfter.reserve {451}=some s6Step147CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step147ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step147CompleteRelocation_move0_retire : s6Step147CompleteRelocationMove0Borrowed.retireSet {858}=s6Step147EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step147CompleteRelocationMove0Borrowed s6Step147EarlyControlArena {858}
  change s6Step147EarlyControlArena.live=(s6Step147ExitGvAfter.live∪{451})\{858}
  apply hmrArena_update_of_filter_check s6Step147ExitGvAfter s6Step147EarlyControlArena (fun q => ([(0,451),(452,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [451] [858] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step147CompleteRelocation_checked : s6Step147ExitGvAfter.checkRepack [(858,451)]=some s6Step147EarlyControlArena := by
  have tail1 : s6Step147EarlyControlArena.checkRepack []=some s6Step147EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step147ExitGvAfter s6Step147CompleteRelocationMove0Borrowed s6Step147EarlyControlArena s6Step147EarlyControlArena 858 451 []
    s6Step147CompleteRelocation_move0_owned s6Step147CompleteRelocation_move0_reserve s6Step147CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step147Complete_repack : s6Step147ExitGvAfter.checkRepack s6Step147CompleteMoves=some s6Step147EarlyControlArena := by
  simpa only [s6Step147CompleteMoves] using s6Step147CompleteRelocation_checked

private theorem s6Step147EarlyControl_branchOwned : ([802] : List Wire).toFinset⊆s6Step147EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step147EarlyControlSigmaArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step147EarlyControl_branch : compileHmrBranchRetirement s6Step147EarlyControlSigmaArena 802=some s6Step147EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step147EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step147EarlyControlSigmaArena s6Step147EarlyControlOutputArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [802] rfl rfl
    decide +kernel

private theorem s6Step147EarlyControl_classEqualityBorrow : s6Step147EarlyControlPositiveArena.checkBorrow (([855, 887] : List Wire).length-1) s6Step147EarlyControlLog.classWork=some s6Step147EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step147EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step147EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step147EarlyControlEqualityArena,s6Step147EarlyControlPositiveArena,s6Step147EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step147EarlyControl_classEqualityOwned : ([855, 887] : List Wire).toFinset⊆s6Step147EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step147EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step147EarlyControl_classEquality : compileHmrEqualityLog s6Step147EarlyControlPositiveArena [855, 887] 0 s6Step147EarlyControlLog.classWork=some (s6Step147EarlyControlEqualityArena,s6Step147EarlyControlLog.classWork,s6Step147EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step147EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step147EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step147EarlyControl_classOwned : ([769, 908, 855] : List Wire).toFinset⊆s6Step147EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step147EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step147EarlyControl_positiveBorrow : s6Step147EarlyControlZeroArena.checkBorrow (1) s6Step147EarlyControlLog.positiveWork=some s6Step147EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step147EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step147EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step147EarlyControlZeroArena s6Step147EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step147EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step147EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step147EarlyControl_class : compileHmrSourceClassLog s6Step147EarlyControlZeroArena false 769 s6Step147EarlyControlZeroPlan.top 0 855 s6Step147EarlyControlLog.positiveWork s6Step147EarlyControlLog.classWork=some s6Step147EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step147EarlyControlClassPlan s6Step147EarlyControlZeroArena false 769 s6Step147EarlyControlZeroPlan.top 0 855
  constructor
  · decide +kernel
  · exact s6Step147EarlyControl_classOwned
  · exact s6Step147EarlyControl_positiveBorrow
  · exact s6Step147EarlyControl_classEquality

private theorem s6Step147EarlyControl_entryRecordOwned : ([802, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step147EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step147EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step147EarlyControl_entrySigmaOwned : ([855, 254] : List Wire).toFinset⊆s6Step147EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step147EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step147EarlyControl_fitBorrow : s6Step147EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step147EarlyControlLog.recordFresh=some s6Step147EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step147EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step147EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step147EarlyControlFittedArena,s6Step147EarlyControlFlagArena,s6Step147EarlyControlLog,arenaWires]

private theorem s6Step147EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step147EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step147EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step147EarlyControl_fit : compileHmrRecordGrowLog s6Step147EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step147EarlyControlLog.recordFresh=some s6Step147EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step147EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step147EarlyControl_fitBorrow

private theorem s6Step147EarlyControl_flagsBorrow : s6Step147EarlyControlEqualityArena.checkBorrow (6) s6Step147EarlyControlLog.flagWork=some s6Step147EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step147EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step147EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step147EarlyControlFlagArena,s6Step147EarlyControlEqualityArena,s6Step147EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step147EarlyControl_flagsOwned : ([807, 253, 252, 251] : List Wire).toFinset⊆s6Step147EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step147EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step147EarlyControl_flags : compileHmrFlagsLog s6Step147EarlyControlClassPlan.equalityArena s6Step147EarlyControlClassPlan.equality.top 253 252 251 s6Step147EarlyControlLog.flagWork=some s6Step147EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step147EarlyControl_flagsOwned⟩
  · exact s6Step147EarlyControl_flagsBorrow

private theorem s6Step147EarlyControl_historyBorrow : s6Step147EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step147EarlyControlLog.recordFresh=some s6Step147EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step147EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step147EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step147EarlyControlArena s6Step147EarlyControlHistoryArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step147EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step147EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step147EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step147EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step147EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step147EarlyControl_history : compileHmrRecordGrowLog s6Step147EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step147EarlyControlLog.recordFresh=some s6Step147EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step147EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step147EarlyControl_historyBorrow

private theorem s6Step147EarlyControl_sigmaOwned : ([254, 855] : List Wire).toFinset⊆s6Step147EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step147EarlyControlHistoryArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step147EarlyControl_sigmaReleaseOwned : ([855] : List Wire).toFinset⊆s6Step147EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step147EarlyControlHistoryArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step147EarlyControl_sigmaRelease : s6Step147EarlyControlHistoryArena.release {855} (fun _ => false)=some s6Step147EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step147EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step147EarlyControlHistoryArena s6Step147EarlyControlSigmaArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [855] rfl rfl
    decide +kernel

private theorem s6Step147EarlyControl_sigma : compileHmrSigmaDropLog s6Step147EarlyControlHistoryArena false 0 0 254 855 []=some s6Step147EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step147EarlyControl_sigmaOwned⟩
  · exact s6Step147EarlyControl_sigmaRelease

private theorem s6Step147EarlyControl_zeroBorrow : s6Step147EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step147EarlyControlLog.zeroWork=some s6Step147EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step147EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step147EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step147EarlyControlArena s6Step147EarlyControlZeroArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step147EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step147EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step147EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step147EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step147EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step147EarlyControl_zero : compileHmrEqualityLog s6Step147EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step147EarlyControlLog.zeroWork=some (s6Step147EarlyControlZeroArena,s6Step147EarlyControlLog.zeroWork,s6Step147EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step147EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step147EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step147EarlyControl_logged : s6Step147EarlyControlPlan.Logged s6Step147EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 855 254 253 252 251 802 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step147EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step147EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step147EarlyControl_zero
  · exact s6Step147EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step147EarlyControl_flags
  · exact s6Step147EarlyControl_fit
  · exact s6Step147EarlyControl_history
  · exact s6Step147EarlyControl_sigma
  · exact s6Step147EarlyControl_branch

private theorem s6Step147EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step147EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 855 254 253 252 251 802 42 s6Step147EarlyControlLog=some s6Step147EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step147EarlyControlPlan s6Step147EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 855 254 253 252 251 802 42 s6Step147EarlyControl_logged

private def s6Step147EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step147EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451],795⟩

private def s6Step147EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867],776⟩

private def s6Step147EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194],777⟩

private def s6Step147EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927],775⟩

private def s6Step147FrontBank : WindowBank := ⟨s6Step147EntryFRow,s6Step147EntryGRow,s6Step147EntryFvRow,s6Step147EntryGvRow⟩

private def s6Step147Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 908, 795]

private def s6Step147Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 887, 807, 777]

private def s6Step147Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 879, 776]

private def s6Step147Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 877, 768, 775]

private theorem s6Step147Counter_apart : Disjoint s6Step147HeadFvAfter.live s6Step147CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step147HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step147Counter_borrowed : s6Step147HeadFvAfter.checkBorrow 4 s6Step147CounterWork=some s6Step147CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step147HeadFvAfter s6Step147CounterDuring s6Step147CounterWork.toFinset s6Step147Counter_bounded s6Step147Counter_apart rfl

private theorem s6Step147Counter_owned : (855::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step147HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step147HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step147Counter_checked : compileHmrCounterStepLog s6Step147HeadFvAfter true 855 [774, 773, 772, 771, 770, 769] s6Step147CounterWork=some s6Step147CounterDuring := by
  have owned : ∀q∈855::[774, 773, 772, 771, 770, 769],q∈s6Step147HeadFvAfter.live := fun q hq => s6Step147Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step147Counter_borrowed

private def s6Step147EntryFAfter : Arena := s6Step147EntryFBefore

private theorem s6Step147EntryBank_incomingDistinct : ([s6Step147EntryFRow,s6Step147EntryGRow,s6Step147EntryFvRow,s6Step147EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step147EntryF_Incoming : rowsOwned s6Step147EntryFBefore [s6Step147EntryFRow,s6Step147EntryGRow,s6Step147EntryFvRow,s6Step147EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step147EntryFRow,s6Step147EntryGRow,s6Step147EntryFvRow,s6Step147EntryGvRow] 0 s6Step147EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step147EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step147EntryBank_outgoingOwned : rowsOwned s6Step147EntryGvAfter [s6Step147EntryFOut,s6Step147EntryGOut,s6Step147EntryFvOut,s6Step147EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step147EntryGvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step147EntryF_Outgoing : rowsOwned s6Step147EntryGvAfter [s6Step147EntryFOut,s6Step147EntryGOut,s6Step147EntryFvOut,s6Step147EntryGvOut] :=
  hmrRows_owned_drop s6Step147EntryGvAfter [s6Step147EntryFOut,s6Step147EntryGOut,s6Step147EntryFvOut,s6Step147EntryGvOut] 0 s6Step147EntryBank_outgoingOwned

private theorem s6Step147EntryF_distinct : (s6Step147EntryFRow.sign::s6Step147EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step147EntryF_owned : (s6Step147EntryFRow.sign::s6Step147EntryFRow.payload).toFinset⊆s6Step147EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step147EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step147EntryF_reserved : s6Step147EntryFBefore.reserve s6Step147EntryFFresh.toFinset=some s6Step147EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step147EntryFFresh,arenaWires]
  · norm_num [s6Step147EntryFBefore,s6Step147EntryFFresh,arenaWires]
  · simp only [s6Step147EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step147EntryF_checked : planRowResizeLog s6Step147EntryFBefore s6Step147EntryFRow 196 s6Step147EntryFFresh=
    some (s6Step147EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451],795⟩,growRow 795 s6Step147EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step147EntryFBefore s6Step147EntryFAfter s6Step147EntryFRow 196 s6Step147EntryFFresh
    s6Step147EntryF_distinct s6Step147EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step147EntryF_reserved
  have rowEq : WindowRow.mk (s6Step147EntryFRow.payload++s6Step147EntryFFresh) s6Step147EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step147EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step147EntryFvAfter : Arena := s6Step147EntryGAfter

private def s6Step147EntryFvBefore : Arena := s6Step147EntryGAfter

private theorem s6Step147EntryFv_Incoming : rowsOwned s6Step147EntryFvBefore [s6Step147EntryFvRow,s6Step147EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step147EntryFRow,s6Step147EntryGRow,s6Step147EntryFvRow,s6Step147EntryGvRow] 2 s6Step147EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step147EntryFvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step147EntryFv_Outgoing : rowsOwned s6Step147EntryGvAfter [s6Step147EntryFvOut,s6Step147EntryGvOut] :=
  hmrRows_owned_drop s6Step147EntryGvAfter [s6Step147EntryFOut,s6Step147EntryGOut,s6Step147EntryFvOut,s6Step147EntryGvOut] 2 s6Step147EntryBank_outgoingOwned

private theorem s6Step147EntryFv_distinct : (s6Step147EntryFvRow.sign::s6Step147EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step147EntryFv_owned : (s6Step147EntryFvRow.sign::s6Step147EntryFvRow.payload).toFinset⊆s6Step147EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step147EntryFvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step147EntryFv_reserved : s6Step147EntryFvBefore.reserve s6Step147EntryFvFresh.toFinset=some s6Step147EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step147EntryFvFresh,arenaWires]
  · norm_num [s6Step147EntryFvBefore,s6Step147EntryGAfter,s6Step147EntryFvFresh,arenaWires]
  · simp only [s6Step147EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step147EntryFv_checked : planRowResizeLog s6Step147EntryFvBefore s6Step147EntryFvRow 88 s6Step147EntryFvFresh=
    some (s6Step147EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867],776⟩,growRow 776 s6Step147EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step147EntryFvBefore s6Step147EntryFvAfter s6Step147EntryFvRow 88 s6Step147EntryFvFresh
    s6Step147EntryFv_distinct s6Step147EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step147EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step147EntryFvRow.payload++s6Step147EntryFvFresh) s6Step147EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step147EntryGBefore : Arena := s6Step147EntryFBefore

private theorem s6Step147EntryG_Incoming : rowsOwned s6Step147EntryGBefore [s6Step147EntryGRow,s6Step147EntryFvRow,s6Step147EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step147EntryFRow,s6Step147EntryGRow,s6Step147EntryFvRow,s6Step147EntryGvRow] 1 s6Step147EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step147EntryGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step147EntryG_Outgoing : rowsOwned s6Step147EntryGvAfter [s6Step147EntryGOut,s6Step147EntryFvOut,s6Step147EntryGvOut] :=
  hmrRows_owned_drop s6Step147EntryGvAfter [s6Step147EntryFOut,s6Step147EntryGOut,s6Step147EntryFvOut,s6Step147EntryGvOut] 1 s6Step147EntryBank_outgoingOwned

private theorem s6Step147EntryG_distinct : (s6Step147EntryGRow.sign::s6Step147EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step147EntryG_owned : (s6Step147EntryGRow.sign::s6Step147EntryGRow.payload).toFinset⊆s6Step147EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step147EntryGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step147EntryG_reserved : s6Step147EntryGBefore.reserve s6Step147EntryGFresh.toFinset=some s6Step147EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step147EntryGFresh,arenaWires]
  · norm_num [s6Step147EntryGBefore,s6Step147EntryFBefore,s6Step147EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step147EntryGBefore s6Step147EntryGAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step147EntryGFresh rfl rfl
    · norm_num [s6Step147EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step147EntryG_checked : planRowResizeLog s6Step147EntryGBefore s6Step147EntryGRow 196 s6Step147EntryGFresh=
    some (s6Step147EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 887],777⟩,growRow 777 s6Step147EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step147EntryGBefore s6Step147EntryGAfter s6Step147EntryGRow 196 s6Step147EntryGFresh
    s6Step147EntryG_distinct s6Step147EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step147EntryG_reserved
  have rowEq : WindowRow.mk (s6Step147EntryGRow.payload++s6Step147EntryGFresh) s6Step147EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 887],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step147EntryGvBefore : Arena := s6Step147EntryGAfter

private theorem s6Step147EntryGv_Incoming : rowsOwned s6Step147EntryGvBefore [s6Step147EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step147EntryFRow,s6Step147EntryGRow,s6Step147EntryFvRow,s6Step147EntryGvRow] 3 s6Step147EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step147EntryGvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step147EntryGv_Outgoing : rowsOwned s6Step147EntryGvAfter [s6Step147EntryGvOut] :=
  hmrRows_owned_drop s6Step147EntryGvAfter [s6Step147EntryFOut,s6Step147EntryGOut,s6Step147EntryFvOut,s6Step147EntryGvOut] 3 s6Step147EntryBank_outgoingOwned

private theorem s6Step147EntryGv_distinct : (s6Step147EntryGvRow.sign::s6Step147EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step147EntryGv_owned : (s6Step147EntryGvRow.sign::s6Step147EntryGvRow.payload).toFinset⊆s6Step147EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step147EntryGvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step147EntryGv_reserved : s6Step147EntryGvBefore.reserve s6Step147EntryGvFresh.toFinset=some s6Step147EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step147EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step147EntryGvBefore,s6Step147EntryGAfter,s6Step147EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step147EntryGvBefore s6Step147EntryGvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step147EntryGvFresh rfl rfl
    · norm_num [s6Step147EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step147EntryGv_checked : planRowResizeLog s6Step147EntryGvBefore s6Step147EntryGvRow 88 s6Step147EntryGvFresh=
    some (s6Step147EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 877],775⟩,growRow 775 s6Step147EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step147EntryGvBefore s6Step147EntryGvAfter s6Step147EntryGvRow 88 s6Step147EntryGvFresh
    s6Step147EntryGv_distinct s6Step147EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step147EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step147EntryGvRow.payload++s6Step147EntryGvFresh) s6Step147EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 877],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step147EntryBank_rows : planWindowRowsLog s6Step147EntryFBefore [(s6Step147EntryFRow,196),(s6Step147EntryGRow,196),(s6Step147EntryFvRow,88),(s6Step147EntryGvRow,88)] [s6Step147EntryFFresh,s6Step147EntryGFresh,s6Step147EntryFvFresh,s6Step147EntryGvFresh]=
    some (s6Step147EntryGvAfter,[s6Step147EntryFOut,s6Step147EntryGOut,s6Step147EntryFvOut,s6Step147EntryGvOut],(growRow 795 s6Step147EntryFFresh ++ (growRow 777 s6Step147EntryGFresh ++ (growRow 776 s6Step147EntryFvFresh ++ (growRow 775 s6Step147EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step147EntryGvAfter [] []=some (s6Step147EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step147EntryGvBefore s6Step147EntryGvAfter s6Step147EntryGvAfter
    s6Step147EntryGvRow s6Step147EntryGvOut 88 s6Step147EntryGvFresh [] [] []
    (growRow 775 s6Step147EntryGvFresh) ([]) s6Step147EntryGv_Incoming s6Step147EntryGv_checked h4 s6Step147EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step147EntryFvBefore s6Step147EntryFvAfter s6Step147EntryGvAfter
    s6Step147EntryFvRow s6Step147EntryFvOut 88 s6Step147EntryFvFresh [(s6Step147EntryGvRow,88)] [s6Step147EntryGvFresh] [s6Step147EntryGvOut]
    (growRow 776 s6Step147EntryFvFresh) ((growRow 775 s6Step147EntryGvFresh ++ [])) s6Step147EntryFv_Incoming s6Step147EntryFv_checked h3 s6Step147EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step147EntryGBefore s6Step147EntryGAfter s6Step147EntryGvAfter
    s6Step147EntryGRow s6Step147EntryGOut 196 s6Step147EntryGFresh [(s6Step147EntryFvRow,88),(s6Step147EntryGvRow,88)] [s6Step147EntryFvFresh,s6Step147EntryGvFresh] [s6Step147EntryFvOut,s6Step147EntryGvOut]
    (growRow 777 s6Step147EntryGFresh) ((growRow 776 s6Step147EntryFvFresh ++ (growRow 775 s6Step147EntryGvFresh ++ []))) s6Step147EntryG_Incoming s6Step147EntryG_checked h2 s6Step147EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step147EntryFBefore s6Step147EntryFAfter s6Step147EntryGvAfter
    s6Step147EntryFRow s6Step147EntryFOut 196 s6Step147EntryFFresh [(s6Step147EntryGRow,196),(s6Step147EntryFvRow,88),(s6Step147EntryGvRow,88)] [s6Step147EntryGFresh,s6Step147EntryFvFresh,s6Step147EntryGvFresh] [s6Step147EntryGOut,s6Step147EntryFvOut,s6Step147EntryGvOut]
    (growRow 795 s6Step147EntryFFresh) ((growRow 777 s6Step147EntryGFresh ++ (growRow 776 s6Step147EntryFvFresh ++ (growRow 775 s6Step147EntryGvFresh ++ [])))) s6Step147EntryF_Incoming s6Step147EntryF_checked h1 s6Step147EntryF_Outgoing
  exact h0

private theorem s6Step147EntryBank_checked : compileHmrBankResizeLog .entry s6Step147EntryFBefore ⟨s6Step147EntryFRow,s6Step147EntryGRow,s6Step147EntryFvRow,s6Step147EntryGvRow⟩ ⟨196,196,88,88⟩ [s6Step147EntryFFresh,s6Step147EntryGFresh,s6Step147EntryFvFresh,s6Step147EntryGvFresh]=
    some (s6Step147EntryGvAfter,⟨s6Step147EntryFOut,s6Step147EntryGOut,s6Step147EntryFvOut,s6Step147EntryGvOut⟩,(growRow 795 s6Step147EntryFFresh ++ (growRow 777 s6Step147EntryGFresh ++ (growRow 776 s6Step147EntryFvFresh ++ (growRow 775 s6Step147EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step147EntryBank_rows]
  rfl

private def s6Step147ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,451),(452,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step147ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step147ExitFBefore : Arena := s6Step147ExitGAfter

private def s6Step147ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 908],795⟩

private def s6Step147ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 879],776⟩

private def s6Step147ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 887, 807],777⟩

private def s6Step147ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 877, 768],775⟩

private theorem s6Step147ExitBank_incomingDistinct : ([s6Step147ExitGRow,s6Step147ExitFRow,s6Step147ExitFvRow,s6Step147ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step147ExitF_Incoming : rowsOwned s6Step147ExitFBefore [s6Step147ExitFRow,s6Step147ExitFvRow,s6Step147ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step147ExitGRow,s6Step147ExitFRow,s6Step147ExitFvRow,s6Step147ExitGvRow] 1 s6Step147ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step147ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step147ExitBank_outgoingOwned : rowsOwned s6Step147ExitGvAfter [s6Step147ExitGOut,s6Step147ExitFOut,s6Step147ExitFvOut,s6Step147ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step147ExitGvAfter (fun q => ([(0,451),(452,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step147ExitF_Outgoing : rowsOwned s6Step147ExitGvAfter [s6Step147ExitFOut,s6Step147ExitFvOut,s6Step147ExitGvOut] :=
  hmrRows_owned_drop s6Step147ExitGvAfter [s6Step147ExitGOut,s6Step147ExitFOut,s6Step147ExitFvOut,s6Step147ExitGvOut] 1 s6Step147ExitBank_outgoingOwned

private theorem s6Step147ExitF_distinct : (s6Step147ExitFRow.sign::s6Step147ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step147ExitF_owned : (s6Step147ExitFRow.sign::s6Step147ExitFRow.payload).toFinset⊆s6Step147ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step147ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step147ExitF_retired : s6Step147ExitFBefore.retireSet s6Step147ExitFExtra.toFinset=s6Step147ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step147ExitFBefore s6Step147ExitFAfter s6Step147ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step147ExitFBefore s6Step147ExitFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,451),(452,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step147ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step147ExitF_checked : planRowResizeLog s6Step147ExitFBefore s6Step147ExitFRow 195 []=
    some (s6Step147ExitFAfter,s6Step147ExitFOut,shrinkRow 795 s6Step147ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step147ExitFBefore s6Step147ExitFRow 195 s6Step147ExitF_distinct s6Step147ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step147ExitFRow.payload.take 195) s6Step147ExitFRow.sign=s6Step147ExitFOut := by decide +kernel
  have hi : s6Step147ExitFRow.payload.drop 195=s6Step147ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step147ExitF_retired] at result
  exact result

private def s6Step147ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,451),(452,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step147ExitFvBefore : Arena := s6Step147ExitFAfter

private theorem s6Step147ExitFv_Incoming : rowsOwned s6Step147ExitFvBefore [s6Step147ExitFvRow,s6Step147ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step147ExitGRow,s6Step147ExitFRow,s6Step147ExitFvRow,s6Step147ExitGvRow] 2 s6Step147ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step147ExitFvBefore (fun q => ([(0,451),(452,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step147ExitFv_Outgoing : rowsOwned s6Step147ExitGvAfter [s6Step147ExitFvOut,s6Step147ExitGvOut] :=
  hmrRows_owned_drop s6Step147ExitGvAfter [s6Step147ExitGOut,s6Step147ExitFOut,s6Step147ExitFvOut,s6Step147ExitGvOut] 2 s6Step147ExitBank_outgoingOwned

private theorem s6Step147ExitFv_distinct : (s6Step147ExitFvRow.sign::s6Step147ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step147ExitFv_owned : (s6Step147ExitFvRow.sign::s6Step147ExitFvRow.payload).toFinset⊆s6Step147ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step147ExitFvBefore (fun q => ([(0,451),(452,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step147ExitFv_retired : s6Step147ExitFvBefore.retireSet s6Step147ExitFvExtra.toFinset=s6Step147ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step147ExitFvBefore s6Step147ExitFvAfter s6Step147ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step147ExitFvBefore s6Step147ExitFvAfter (fun q => ([(0,451),(452,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,451),(452,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step147ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step147ExitFv_checked : planRowResizeLog s6Step147ExitFvBefore s6Step147ExitFvRow 88 []=
    some (s6Step147ExitFvAfter,s6Step147ExitFvOut,shrinkRow 776 s6Step147ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step147ExitFvBefore s6Step147ExitFvRow 88 s6Step147ExitFv_distinct s6Step147ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step147ExitFvRow.payload.take 88) s6Step147ExitFvRow.sign=s6Step147ExitFvOut := by decide +kernel
  have hi : s6Step147ExitFvRow.payload.drop 88=s6Step147ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step147ExitFv_retired] at result
  exact result

private def s6Step147ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step147ExitG_Incoming : rowsOwned s6Step147ExitGBefore [s6Step147ExitGRow,s6Step147ExitFRow,s6Step147ExitFvRow,s6Step147ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step147ExitGRow,s6Step147ExitFRow,s6Step147ExitFvRow,s6Step147ExitGvRow] 0 s6Step147ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step147ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step147ExitG_Outgoing : rowsOwned s6Step147ExitGvAfter [s6Step147ExitGOut,s6Step147ExitFOut,s6Step147ExitFvOut,s6Step147ExitGvOut] :=
  hmrRows_owned_drop s6Step147ExitGvAfter [s6Step147ExitGOut,s6Step147ExitFOut,s6Step147ExitFvOut,s6Step147ExitGvOut] 0 s6Step147ExitBank_outgoingOwned

private theorem s6Step147ExitG_distinct : (s6Step147ExitGRow.sign::s6Step147ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step147ExitG_owned : (s6Step147ExitGRow.sign::s6Step147ExitGRow.payload).toFinset⊆s6Step147ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step147ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step147ExitG_retired : s6Step147ExitGBefore.retireSet s6Step147ExitGExtra.toFinset=s6Step147ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step147ExitGBefore s6Step147ExitGAfter s6Step147ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step147ExitGBefore s6Step147ExitGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step147ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step147ExitG_checked : planRowResizeLog s6Step147ExitGBefore s6Step147ExitGRow 195 []=
    some (s6Step147ExitGAfter,s6Step147ExitGOut,shrinkRow 777 s6Step147ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step147ExitGBefore s6Step147ExitGRow 195 s6Step147ExitG_distinct s6Step147ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step147ExitGRow.payload.take 195) s6Step147ExitGRow.sign=s6Step147ExitGOut := by decide +kernel
  have hi : s6Step147ExitGRow.payload.drop 195=s6Step147ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step147ExitG_retired] at result
  exact result

private def s6Step147ExitGvBefore : Arena := s6Step147ExitFvAfter

private theorem s6Step147ExitGv_Incoming : rowsOwned s6Step147ExitGvBefore [s6Step147ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step147ExitGRow,s6Step147ExitFRow,s6Step147ExitFvRow,s6Step147ExitGvRow] 3 s6Step147ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step147ExitGvBefore (fun q => ([(0,451),(452,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step147ExitGv_Outgoing : rowsOwned s6Step147ExitGvAfter [s6Step147ExitGvOut] :=
  hmrRows_owned_drop s6Step147ExitGvAfter [s6Step147ExitGOut,s6Step147ExitFOut,s6Step147ExitFvOut,s6Step147ExitGvOut] 3 s6Step147ExitBank_outgoingOwned

private theorem s6Step147ExitGv_distinct : (s6Step147ExitGvRow.sign::s6Step147ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step147ExitGv_owned : (s6Step147ExitGvRow.sign::s6Step147ExitGvRow.payload).toFinset⊆s6Step147ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step147ExitGvBefore (fun q => ([(0,451),(452,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step147ExitGv_retired : s6Step147ExitGvBefore.retireSet s6Step147ExitGvExtra.toFinset=s6Step147ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step147ExitGvBefore s6Step147ExitGvAfter s6Step147ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step147ExitGvBefore s6Step147ExitGvAfter (fun q => ([(0,451),(452,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,451),(452,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step147ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step147ExitGv_checked : planRowResizeLog s6Step147ExitGvBefore s6Step147ExitGvRow 87 []=
    some (s6Step147ExitGvAfter,s6Step147ExitGvOut,shrinkRow 775 s6Step147ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step147ExitGvBefore s6Step147ExitGvRow 87 s6Step147ExitGv_distinct s6Step147ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step147ExitGvRow.payload.take 87) s6Step147ExitGvRow.sign=s6Step147ExitGvOut := by decide +kernel
  have hi : s6Step147ExitGvRow.payload.drop 87=s6Step147ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step147ExitGv_retired] at result
  exact result

private theorem s6Step147ExitBank_rows : planWindowRowsLog s6Step147ExitGBefore [(s6Step147ExitGRow,195),(s6Step147ExitFRow,195),(s6Step147ExitFvRow,88),(s6Step147ExitGvRow,87)] [[],[],[],[]]=
    some (s6Step147ExitGvAfter,[s6Step147ExitGOut,s6Step147ExitFOut,s6Step147ExitFvOut,s6Step147ExitGvOut],(shrinkRow 777 s6Step147ExitGExtra ++ (shrinkRow 795 s6Step147ExitFExtra ++ (shrinkRow 776 s6Step147ExitFvExtra ++ (shrinkRow 775 s6Step147ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step147ExitGvAfter [] []=some (s6Step147ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step147ExitGvBefore s6Step147ExitGvAfter s6Step147ExitGvAfter
    s6Step147ExitGvRow s6Step147ExitGvOut 87 [] [] [] []
    (shrinkRow 775 s6Step147ExitGvExtra) ([]) s6Step147ExitGv_Incoming s6Step147ExitGv_checked h4 s6Step147ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step147ExitFvBefore s6Step147ExitFvAfter s6Step147ExitGvAfter
    s6Step147ExitFvRow s6Step147ExitFvOut 88 [] [(s6Step147ExitGvRow,87)] [[]] [s6Step147ExitGvOut]
    (shrinkRow 776 s6Step147ExitFvExtra) ((shrinkRow 775 s6Step147ExitGvExtra ++ [])) s6Step147ExitFv_Incoming s6Step147ExitFv_checked h3 s6Step147ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step147ExitFBefore s6Step147ExitFAfter s6Step147ExitGvAfter
    s6Step147ExitFRow s6Step147ExitFOut 195 [] [(s6Step147ExitFvRow,88),(s6Step147ExitGvRow,87)] [[],[]] [s6Step147ExitFvOut,s6Step147ExitGvOut]
    (shrinkRow 795 s6Step147ExitFExtra) ((shrinkRow 776 s6Step147ExitFvExtra ++ (shrinkRow 775 s6Step147ExitGvExtra ++ []))) s6Step147ExitF_Incoming s6Step147ExitF_checked h2 s6Step147ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step147ExitGBefore s6Step147ExitGAfter s6Step147ExitGvAfter
    s6Step147ExitGRow s6Step147ExitGOut 195 [] [(s6Step147ExitFRow,195),(s6Step147ExitFvRow,88),(s6Step147ExitGvRow,87)] [[],[],[]] [s6Step147ExitFOut,s6Step147ExitFvOut,s6Step147ExitGvOut]
    (shrinkRow 777 s6Step147ExitGExtra) ((shrinkRow 795 s6Step147ExitFExtra ++ (shrinkRow 776 s6Step147ExitFvExtra ++ (shrinkRow 775 s6Step147ExitGvExtra ++ [])))) s6Step147ExitG_Incoming s6Step147ExitG_checked h1 s6Step147ExitG_Outgoing
  exact h0

private theorem s6Step147ExitBank_checked : compileHmrBankResizeLog .exit s6Step147ExitGBefore ⟨s6Step147ExitFRow,s6Step147ExitGRow,s6Step147ExitFvRow,s6Step147ExitGvRow⟩ ⟨195,195,88,87⟩ [[],[],[],[]]=
    some (s6Step147ExitGvAfter,⟨s6Step147ExitFOut,s6Step147ExitGOut,s6Step147ExitFvOut,s6Step147ExitGvOut⟩,(shrinkRow 777 s6Step147ExitGExtra ++ (shrinkRow 795 s6Step147ExitFExtra ++ (shrinkRow 776 s6Step147ExitFvExtra ++ (shrinkRow 775 s6Step147ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step147ExitBank_rows]
  rfl

private theorem s6Step147Add0_apart : Disjoint s6Step147Add0Arena.live s6Step147Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step147Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step147Add0_card : s6Step147Add0Arena.live.card=884 := by
  decide +kernel

private theorem s6Step147Add0_borrowed : s6Step147Add0Arena.checkBorrow (hmrHybridCount s6Step147Add0Arena s6Step147Add0B.length) s6Step147Add0Work=some s6Step147Add0During := by
  have len : s6Step147Add0Work.length=hmrHybridCount s6Step147Add0Arena s6Step147Add0B.length := by
    rw [hmrHybridCount,s6Step147Add0_card]
    decide +kernel
  have nd : s6Step147Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step147Add0Arena s6Step147Add0During s6Step147Add0Work.toFinset s6Step147Add0_bounded s6Step147Add0_apart rfl

private theorem s6Step147Add0_distinct : (875::802::882::(s6Step147Add0A++s6Step147Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step147Add0_owned : (875::802::882::(s6Step147Add0A++s6Step147Add0B)).toFinset⊆s6Step147Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step147Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step147Add0_checked : compileHmrHybridCinLog s6Step147Add0Arena 802 875 882 s6Step147Add0A s6Step147Add0B s6Step147Add0Work=some s6Step147Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step147Add0Arena s6Step147Add0During 802 875 882 s6Step147Add0A s6Step147Add0B s6Step147Add0Work
    (by decide +kernel) (by decide +kernel) s6Step147Add0_distinct
    (fun q hq => s6Step147Add0_owned (List.mem_toFinset.mpr hq)) s6Step147Add0_borrowed

private theorem s6Step147Add1_apart : Disjoint s6Step147Add1Arena.live s6Step147Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step147Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step147Add1_card : s6Step147Add1Arena.live.card=884 := by
  decide +kernel

private theorem s6Step147Add1_borrowed : s6Step147Add1Arena.checkBorrow (hmrHybridCount s6Step147Add1Arena s6Step147Add1B.length) s6Step147Add1Work=some s6Step147Add1During := by
  have len : s6Step147Add1Work.length=hmrHybridCount s6Step147Add1Arena s6Step147Add1B.length := by
    rw [hmrHybridCount,s6Step147Add1_card]
    decide +kernel
  have nd : s6Step147Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step147Add1Arena s6Step147Add1During s6Step147Add1Work.toFinset s6Step147Add1_bounded s6Step147Add1_apart rfl

private theorem s6Step147Add1_distinct : (875::802::882::(s6Step147Add1A++s6Step147Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step147Add1_owned : (875::802::882::(s6Step147Add1A++s6Step147Add1B)).toFinset⊆s6Step147Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step147Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step147Add1_checked : compileHmrHybridCinLog s6Step147Add1Arena 802 875 882 s6Step147Add1A s6Step147Add1B s6Step147Add1Work=some s6Step147Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step147Add1Arena s6Step147Add1During 802 875 882 s6Step147Add1A s6Step147Add1B s6Step147Add1Work
    (by decide +kernel) (by decide +kernel) s6Step147Add1_distinct
    (fun q hq => s6Step147Add1_owned (List.mem_toFinset.mpr hq)) s6Step147Add1_borrowed

private theorem s6Step147F4_apart : Disjoint (s6Step147Add0A++s6Step147Add0B).toFinset (s6Step147Add1A++s6Step147Add1B).toFinset := by
  have nd : ((s6Step147Add0A++s6Step147Add0B)++(s6Step147Add1A++s6Step147Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step147F4_carry : s6Step147F4FlagArena.checkBorrow 1 [882]=some s6Step147Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step147F4FlagArena,s6Step147HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step147F4FlagArena,s6Step147HeadFvAfter,s6Step147Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step147F4_distinct : (855::802::875::882::((s6Step147Add0A++s6Step147Add1A)++(s6Step147Add0B++s6Step147Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step147F4_flag : s6Step147HeadFvAfter.checkBorrow 1 [875]=some s6Step147F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step147HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step147F4_owned : (855::802::((s6Step147Add0A++s6Step147Add1A)++(s6Step147Add0B++s6Step147Add1B))).toFinset⊆s6Step147HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step147HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step147F4_checked : compileHmrHybridF4Log s6Step147HeadFvAfter 855 802 s6Step147Add0A s6Step147Add0B s6Step147Add1A s6Step147Add1B [875] [882] s6Step147Add0Work s6Step147Add1Work=some s6Step147F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step147HeadFvAfter s6Step147F4FlagArena s6Step147Add0Arena s6Step147Add0During s6Step147Add1During 855 802
    s6Step147Add0A s6Step147Add0B s6Step147Add1A s6Step147Add1B [875] [882] s6Step147Add0Work s6Step147Add1Work
    (fun q hq => s6Step147F4_owned (List.mem_toFinset.mpr hq)) s6Step147F4_flag s6Step147F4_carry
    s6Step147F4_distinct s6Step147F4_apart s6Step147Add0_checked s6Step147Add1_checked

private theorem s6Step147Front_branch : s6Step147FrontSigmaArena.checkBorrow 1 [802]=some s6Step147HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step147FrontSigmaArena,s6Step147EntryGvAfter,arenaWires]
  · change s6Step147HeadGBefore.live=(s6Step147EntryGvAfter.live∪{855})∪{802}
    apply hmrArena_union_pair_of_filter_check s6Step147EntryGvAfter s6Step147HeadGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 855 802 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step147Front_entry : HmrFrontEntryValid s6Step147EntryFBefore s6Step147FrontBank 196 88 ⟨195,195,88,87⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step147FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step147EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step147EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step147FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step147Front_sigma : s6Step147EntryGvAfter.checkBorrow 1 [855]=some s6Step147FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step147EntryGvAfter,arenaWires]
  · rfl

private def s6Step147HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step147HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step147HeadFBefore : Arena := s6Step147HeadGAfter

private def s6Step147HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451],795⟩

private def s6Step147HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867],776⟩

private def s6Step147HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 887],777⟩

private def s6Step147HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 877],775⟩

private theorem s6Step147HeadBank_incomingDistinct : ([s6Step147HeadGRow,s6Step147HeadFRow,s6Step147HeadGvRow,s6Step147HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step147HeadF_Incoming : rowsOwned s6Step147HeadFBefore [s6Step147HeadFRow,s6Step147HeadGvRow,s6Step147HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step147HeadGRow,s6Step147HeadFRow,s6Step147HeadGvRow,s6Step147HeadFvRow] 1 s6Step147HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step147HeadFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step147HeadBank_outgoingOwned : rowsOwned s6Step147HeadFvAfter [s6Step147HeadGOut,s6Step147HeadFOut,s6Step147HeadGvOut,s6Step147HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step147HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step147HeadF_Outgoing : rowsOwned s6Step147HeadFvAfter [s6Step147HeadFOut,s6Step147HeadGvOut,s6Step147HeadFvOut] :=
  hmrRows_owned_drop s6Step147HeadFvAfter [s6Step147HeadGOut,s6Step147HeadFOut,s6Step147HeadGvOut,s6Step147HeadFvOut] 1 s6Step147HeadBank_outgoingOwned

private theorem s6Step147HeadF_distinct : (s6Step147HeadFRow.sign::s6Step147HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step147HeadF_owned : (s6Step147HeadFRow.sign::s6Step147HeadFRow.payload).toFinset⊆s6Step147HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step147HeadFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step147HeadF_reserved : s6Step147HeadFBefore.reserve s6Step147HeadFFresh.toFinset=some s6Step147HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step147HeadFFresh,arenaWires]
  · norm_num [s6Step147HeadFBefore,s6Step147HeadGAfter,s6Step147HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step147HeadFBefore s6Step147HeadFAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step147HeadFFresh rfl rfl
    · norm_num [s6Step147HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step147HeadF_checked : planRowResizeLog s6Step147HeadFBefore s6Step147HeadFRow 197 s6Step147HeadFFresh=
    some (s6Step147HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 908],795⟩,growRow 795 s6Step147HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step147HeadFBefore s6Step147HeadFAfter s6Step147HeadFRow 197 s6Step147HeadFFresh
    s6Step147HeadF_distinct s6Step147HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step147HeadF_reserved
  have rowEq : WindowRow.mk (s6Step147HeadFRow.payload++s6Step147HeadFFresh) s6Step147HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 908],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step147HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step147HeadFvBefore : Arena := s6Step147HeadGvAfter

private theorem s6Step147HeadFv_Incoming : rowsOwned s6Step147HeadFvBefore [s6Step147HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step147HeadGRow,s6Step147HeadFRow,s6Step147HeadGvRow,s6Step147HeadFvRow] 3 s6Step147HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step147HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step147HeadFv_Outgoing : rowsOwned s6Step147HeadFvAfter [s6Step147HeadFvOut] :=
  hmrRows_owned_drop s6Step147HeadFvAfter [s6Step147HeadGOut,s6Step147HeadFOut,s6Step147HeadGvOut,s6Step147HeadFvOut] 3 s6Step147HeadBank_outgoingOwned

private theorem s6Step147HeadFv_distinct : (s6Step147HeadFvRow.sign::s6Step147HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step147HeadFv_owned : (s6Step147HeadFvRow.sign::s6Step147HeadFvRow.payload).toFinset⊆s6Step147HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step147HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step147HeadFv_reserved : s6Step147HeadFvBefore.reserve s6Step147HeadFvFresh.toFinset=some s6Step147HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step147HeadFvFresh,arenaWires]
  · norm_num [s6Step147HeadFvBefore,s6Step147HeadGvAfter,s6Step147HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step147HeadFvBefore s6Step147HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step147HeadFvFresh rfl rfl
    · norm_num [s6Step147HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step147HeadFv_checked : planRowResizeLog s6Step147HeadFvBefore s6Step147HeadFvRow 89 s6Step147HeadFvFresh=
    some (s6Step147HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 879],776⟩,growRow 776 s6Step147HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step147HeadFvBefore s6Step147HeadFvAfter s6Step147HeadFvRow 89 s6Step147HeadFvFresh
    s6Step147HeadFv_distinct s6Step147HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step147HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step147HeadFvRow.payload++s6Step147HeadFvFresh) s6Step147HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 879],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step147HeadG_Incoming : rowsOwned s6Step147HeadGBefore [s6Step147HeadGRow,s6Step147HeadFRow,s6Step147HeadGvRow,s6Step147HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step147HeadGRow,s6Step147HeadFRow,s6Step147HeadGvRow,s6Step147HeadFvRow] 0 s6Step147HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step147HeadGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step147HeadG_Outgoing : rowsOwned s6Step147HeadFvAfter [s6Step147HeadGOut,s6Step147HeadFOut,s6Step147HeadGvOut,s6Step147HeadFvOut] :=
  hmrRows_owned_drop s6Step147HeadFvAfter [s6Step147HeadGOut,s6Step147HeadFOut,s6Step147HeadGvOut,s6Step147HeadFvOut] 0 s6Step147HeadBank_outgoingOwned

private theorem s6Step147HeadG_distinct : (s6Step147HeadGRow.sign::s6Step147HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step147HeadG_owned : (s6Step147HeadGRow.sign::s6Step147HeadGRow.payload).toFinset⊆s6Step147HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step147HeadGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step147HeadG_reserved : s6Step147HeadGBefore.reserve s6Step147HeadGFresh.toFinset=some s6Step147HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step147HeadGFresh,arenaWires]
  · norm_num [s6Step147HeadGBefore,s6Step147HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step147HeadGBefore s6Step147HeadGAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step147HeadGFresh rfl rfl
    · norm_num [s6Step147HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step147HeadG_checked : planRowResizeLog s6Step147HeadGBefore s6Step147HeadGRow 197 s6Step147HeadGFresh=
    some (s6Step147HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 887, 807],777⟩,growRow 777 s6Step147HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step147HeadGBefore s6Step147HeadGAfter s6Step147HeadGRow 197 s6Step147HeadGFresh
    s6Step147HeadG_distinct s6Step147HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step147HeadG_reserved
  have rowEq : WindowRow.mk (s6Step147HeadGRow.payload++s6Step147HeadGFresh) s6Step147HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 887, 807],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step147HeadGvBefore : Arena := s6Step147HeadFAfter

private theorem s6Step147HeadGv_Incoming : rowsOwned s6Step147HeadGvBefore [s6Step147HeadGvRow,s6Step147HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step147HeadGRow,s6Step147HeadFRow,s6Step147HeadGvRow,s6Step147HeadFvRow] 2 s6Step147HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step147HeadGvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step147HeadGv_Outgoing : rowsOwned s6Step147HeadFvAfter [s6Step147HeadGvOut,s6Step147HeadFvOut] :=
  hmrRows_owned_drop s6Step147HeadFvAfter [s6Step147HeadGOut,s6Step147HeadFOut,s6Step147HeadGvOut,s6Step147HeadFvOut] 2 s6Step147HeadBank_outgoingOwned

private theorem s6Step147HeadGv_distinct : (s6Step147HeadGvRow.sign::s6Step147HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step147HeadGv_owned : (s6Step147HeadGvRow.sign::s6Step147HeadGvRow.payload).toFinset⊆s6Step147HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step147HeadGvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step147HeadGv_reserved : s6Step147HeadGvBefore.reserve s6Step147HeadGvFresh.toFinset=some s6Step147HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step147HeadGvFresh,arenaWires]
  · norm_num [s6Step147HeadGvBefore,s6Step147HeadFAfter,s6Step147HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step147HeadGvBefore s6Step147HeadGvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step147HeadGvFresh rfl rfl
    · norm_num [s6Step147HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step147HeadGv_checked : planRowResizeLog s6Step147HeadGvBefore s6Step147HeadGvRow 89 s6Step147HeadGvFresh=
    some (s6Step147HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 877, 768],775⟩,growRow 775 s6Step147HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step147HeadGvBefore s6Step147HeadGvAfter s6Step147HeadGvRow 89 s6Step147HeadGvFresh
    s6Step147HeadGv_distinct s6Step147HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step147HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step147HeadGvRow.payload++s6Step147HeadGvFresh) s6Step147HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 877, 768],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step147HeadBank_rows : planWindowRowsLog s6Step147HeadGBefore [(s6Step147HeadGRow,197),(s6Step147HeadFRow,197),(s6Step147HeadGvRow,89),(s6Step147HeadFvRow,89)] [s6Step147HeadGFresh,s6Step147HeadFFresh,s6Step147HeadGvFresh,s6Step147HeadFvFresh]=
    some (s6Step147HeadFvAfter,[s6Step147HeadGOut,s6Step147HeadFOut,s6Step147HeadGvOut,s6Step147HeadFvOut],(growRow 777 s6Step147HeadGFresh ++ (growRow 795 s6Step147HeadFFresh ++ (growRow 775 s6Step147HeadGvFresh ++ (growRow 776 s6Step147HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step147HeadFvAfter [] []=some (s6Step147HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step147HeadFvBefore s6Step147HeadFvAfter s6Step147HeadFvAfter
    s6Step147HeadFvRow s6Step147HeadFvOut 89 s6Step147HeadFvFresh [] [] []
    (growRow 776 s6Step147HeadFvFresh) ([]) s6Step147HeadFv_Incoming s6Step147HeadFv_checked h4 s6Step147HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step147HeadGvBefore s6Step147HeadGvAfter s6Step147HeadFvAfter
    s6Step147HeadGvRow s6Step147HeadGvOut 89 s6Step147HeadGvFresh [(s6Step147HeadFvRow,89)] [s6Step147HeadFvFresh] [s6Step147HeadFvOut]
    (growRow 775 s6Step147HeadGvFresh) ((growRow 776 s6Step147HeadFvFresh ++ [])) s6Step147HeadGv_Incoming s6Step147HeadGv_checked h3 s6Step147HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step147HeadFBefore s6Step147HeadFAfter s6Step147HeadFvAfter
    s6Step147HeadFRow s6Step147HeadFOut 197 s6Step147HeadFFresh [(s6Step147HeadGvRow,89),(s6Step147HeadFvRow,89)] [s6Step147HeadGvFresh,s6Step147HeadFvFresh] [s6Step147HeadGvOut,s6Step147HeadFvOut]
    (growRow 795 s6Step147HeadFFresh) ((growRow 775 s6Step147HeadGvFresh ++ (growRow 776 s6Step147HeadFvFresh ++ []))) s6Step147HeadF_Incoming s6Step147HeadF_checked h2 s6Step147HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step147HeadGBefore s6Step147HeadGAfter s6Step147HeadFvAfter
    s6Step147HeadGRow s6Step147HeadGOut 197 s6Step147HeadGFresh [(s6Step147HeadFRow,197),(s6Step147HeadGvRow,89),(s6Step147HeadFvRow,89)] [s6Step147HeadFFresh,s6Step147HeadGvFresh,s6Step147HeadFvFresh] [s6Step147HeadFOut,s6Step147HeadGvOut,s6Step147HeadFvOut]
    (growRow 777 s6Step147HeadGFresh) ((growRow 795 s6Step147HeadFFresh ++ (growRow 775 s6Step147HeadGvFresh ++ (growRow 776 s6Step147HeadFvFresh ++ [])))) s6Step147HeadG_Incoming s6Step147HeadG_checked h1 s6Step147HeadG_Outgoing
  exact h0

private theorem s6Step147HeadBank_checked : compileHmrBankResizeLog .headroom s6Step147HeadGBefore ⟨s6Step147HeadFRow,s6Step147HeadGRow,s6Step147HeadFvRow,s6Step147HeadGvRow⟩ ⟨197,197,89,89⟩ [s6Step147HeadGFresh,s6Step147HeadFFresh,s6Step147HeadGvFresh,s6Step147HeadFvFresh]=
    some (s6Step147HeadFvAfter,⟨s6Step147HeadFOut,s6Step147HeadGOut,s6Step147HeadFvOut,s6Step147HeadGvOut⟩,(growRow 777 s6Step147HeadGFresh ++ (growRow 795 s6Step147HeadFFresh ++ (growRow 775 s6Step147HeadGvFresh ++ (growRow 776 s6Step147HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step147HeadBank_rows]
  rfl

private theorem s6Step147Front_checked : compileHmrSourceFrontLog s6Step147EntryFBefore s6Step147FrontBank 196 88 ⟨195,195,88,87⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step147FrontLog=some s6Step147FrontPlan := by
  have pairEq : s6Step147FrontPair=⟨s6Step147HeadFRow,s6Step147HeadGRow,s6Step147HeadFvRow,s6Step147HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step147FrontHead=⟨s6Step147ExitFRow,s6Step147ExitGRow,s6Step147ExitFvRow,s6Step147ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step147Add0A=s6Step147FrontHead.f.wires := by decide +kernel
  have gEq : s6Step147Add0B=s6Step147FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step147Add1A=s6Step147FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step147Add1B=s6Step147FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step147EntryFBefore s6Step147FrontBank 196 88 ⟨195,195,88,87⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step147FrontLog s6Step147FrontPlan
  · exact s6Step147Front_entry
  · exact s6Step147EntryBank_checked
  · exact s6Step147Front_sigma
  · rfl
  · exact s6Step147Front_branch
  · rfl
  · simpa only [s6Step147FrontPlan,pairEq] using s6Step147HeadBank_checked
  · simpa only [s6Step147FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step147F4_checked
  · exact s6Step147Counter_checked
  · rfl
  · simpa only [s6Step147FrontPlan,headEq] using s6Step147ExitBank_checked

private theorem s6Step147Complete_explicit_checked : compileHmrEarlyStepLog s6Step147EntryFBefore s6Step147FrontBank 196 88 ⟨195,195,88,87⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step147CompleteLog=some s6Step147CompletePlan := by
  let Q := s6Step147EarlyControlPlan
  have hq := s6Step147EarlyControl_plan_checked
  have fv1 : s6Step147CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step147CompleteOut.fv.payload[2]?.getD s6Step147CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step147CompleteOut.fv.payload[3]?.getD s6Step147CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step147CompleteOut.fv.payload[4]?.getD s6Step147CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step147EntryFBefore s6Step147EarlyControlArena s6Step147FrontBank 196 88 ⟨195,195,88,87⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step147CompleteLog s6Step147FrontPlan Q
    s6Step147Front_checked s6Step147Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step147Complete_owned s6Step147Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step147EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 855 s6Step147CompleteOut.fv.second (s6Step147CompleteOut.fv.payload[2]?.getD s6Step147CompleteOut.fv.sign) (s6Step147CompleteOut.fv.payload[3]?.getD s6Step147CompleteOut.fv.sign) (s6Step147CompleteOut.fv.payload[4]?.getD s6Step147CompleteOut.fv.sign) 802 42 s6Step147EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep147Arena : Arena := s6Step147EntryFBefore
def s6PrivateStep147Bank : WindowBank := s6Step147FrontBank
def s6PrivateStep147Spec : HmrSourceWalkStepLog := ⟨196,88,⟨195,195,88,87⟩,42,.early s6Step147CompleteLog⟩
def s6PrivateStep147Plan : HmrSourceStepPlan := .early s6Step147CompletePlan
theorem s6PrivateStep147_source : s6PrivateStep147Spec=s6ObservedLogs144[3] := rfl
theorem s6PrivateStep147_checked : compileHmrSourceStepLog s6PrivateStep147Arena s6PrivateStep147Bank
    s6PrivateStep147Spec.fgWidth s6PrivateStep147Spec.vWidth s6PrivateStep147Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 147 s6PrivateStep147Spec.need none s6PrivateStep147Spec.log=some s6PrivateStep147Plan := by
  change compileHmrSourceStepLog s6Step147EntryFBefore s6Step147FrontBank 196 88 ⟨195,195,88,87⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 147 42 none (.early s6Step147CompleteLog)=some (.early s6Step147CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 147<498)]
  rw [s6Step147Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
