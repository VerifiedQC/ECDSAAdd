import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep151
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

private def s6Step153CompleteMoves : List (Wire × Wire) := [(922,192)]

private def s6Step153EarlyControlLog : HmrEarlyControlLog := ⟨[922, 768, 779, 908, 879],[887],[881],[891, 903, 791, 825, 810, 894],[]⟩

private def s6Step153FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [859, 768, 779]],[[881], [887], [908], [879]],[[], [], [], []]⟩,[874],[875],[891],[903],[791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825]⟩

private def s6Step153CompleteLog : HmrEarlyStepLog := ⟨s6Step153FrontLog,s6Step153CompleteMoves,s6Step153EarlyControlLog⟩

private def s6Step153ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448],795⟩

private def s6Step153ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882],776⟩

private def s6Step153ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191],777⟩

private def s6Step153ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859],775⟩

private def s6Step153FrontOut : WindowBank := ⟨s6Step153ExitFOut,s6Step153ExitGOut,s6Step153ExitFvOut,s6Step153ExitGvOut⟩

private def s6Step153CompleteOut : WindowBank := s6Step153FrontOut.repacked s6Step153CompleteMoves

private def s6Step153EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step153EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step153EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step153EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step153EarlyControlPositiveArena,[887],s6Step153EarlyControlEqualityArena,[881],⟨⟨874,false⟩,[⟨⟨887,false⟩,881⟩]⟩⟩

private def s6Step153EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step153EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step153EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step153EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step153EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(875,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step153EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step153EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,922⟩,⟨⟨772,false⟩,768⟩,⟨⟨771,false⟩,779⟩,⟨⟨770,false⟩,908⟩,⟨⟨769,false⟩,879⟩]⟩

private def s6Step153EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step153EarlyControlZeroArena,s6Step153EarlyControlZeroPlan,s6Step153EarlyControlClassPlan,s6Step153EarlyControlFlagArena,s6Step153EarlyControlFittedArena,s6Step153EarlyControlHistoryArena,s6Step153EarlyControlSigmaArena,s6Step153EarlyControlOutputArena,s6Step153EarlyControlLog⟩

private def s6Step153CounterWork : List Wire := [891, 903, 791, 825]

private theorem s6Step153Counter_bounded : s6Step153CounterWork.toFinset⊆arenaWires := by norm_num [s6Step153CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step153HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step153CounterDuring : Arena := ⟨s6Step153HeadFvAfter.live∪s6Step153CounterWork.toFinset,Finset.union_subset s6Step153HeadFvAfter.bounded s6Step153Counter_bounded⟩

private def s6Step153EntryFFresh : List Wire := []

private def s6Step153EntryFvFresh : List Wire := []

private def s6Step153EntryGFresh : List Wire := []

private def s6Step153EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step153EntryGvFresh : List Wire := [859, 768, 779]

private def s6Step153ExitFExtra : List Wire := [887]

private def s6Step153ExitFvExtra : List Wire := [879]

private def s6Step153ExitGExtra : List Wire := [192, 881]

private def s6Step153ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,192),(193,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step153ExitGvExtra : List Wire := [768, 779, 908]

private def s6Step153Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step153Add0Work : List Wire := [791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step153Add0_bounded : s6Step153Add0Work.toFinset⊆arenaWires := by
  have h : s6Step153Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step153Add0During : Arena := ⟨s6Step153Add0Arena.live∪s6Step153Add0Work.toFinset,Finset.union_subset s6Step153Add0Arena.bounded s6Step153Add0_bounded⟩

private def s6Step153Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step153Add1Work : List Wire := [791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step153Add1_bounded : s6Step153Add1Work.toFinset⊆arenaWires := by
  have h : s6Step153Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step153Add1During : Arena := ⟨s6Step153Add1Arena.live∪s6Step153Add1Work.toFinset,Finset.union_subset s6Step153Add1Arena.bounded s6Step153Add1_bounded⟩

private def s6Step153F4FlagArena : Arena := ⟨s6Step153HeadFvAfter.live∪{891},Finset.union_subset s6Step153HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step153F4Plan : HmrHybridF4Plan := ⟨s6Step153F4FlagArena,[891],s6Step153Add0Arena,[903],s6Step153Add0During,s6Step153Add0Work,s6Step153Add1During,s6Step153Add1Work⟩

private def s6Step153HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 887],795⟩

private def s6Step153HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 879],776⟩

private def s6Step153HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 881],777⟩

private def s6Step153HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 768, 779, 908],775⟩

private def s6Step153FrontHead : WindowBank := ⟨s6Step153HeadFOut,s6Step153HeadGOut,s6Step153HeadFvOut,s6Step153HeadGvOut⟩

private def s6Step153EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448],795⟩

private def s6Step153EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882],776⟩

private def s6Step153EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192],777⟩

private def s6Step153EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 768, 779],775⟩

private def s6Step153FrontPair : WindowBank := ⟨s6Step153EntryFOut,s6Step153EntryGOut,s6Step153EntryFvOut,s6Step153EntryGvOut⟩

private def s6Step153FrontSigmaArena : Arena := ⟨s6Step153EntryGvAfter.live∪{874},Finset.union_subset s6Step153EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step153HeadFFresh : List Wire := [887]

private def s6Step153HeadFvFresh : List Wire := [879]

private def s6Step153HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step153HeadGFresh : List Wire := [881]

private def s6Step153HeadGvFresh : List Wire := [908]

private def s6Step153FrontPlan : HmrSourceFront := ⟨s6Step153EntryGvAfter,s6Step153FrontPair,(growRow 795 s6Step153EntryFFresh ++ (growRow 777 s6Step153EntryGFresh ++ (growRow 776 s6Step153EntryFvFresh ++ (growRow 775 s6Step153EntryGvFresh ++ [])))),s6Step153FrontSigmaArena,[874],s6Step153HeadGBefore,[875],
  s6Step153HeadFvAfter,s6Step153FrontHead,(growRow 777 s6Step153HeadGFresh ++ (growRow 795 s6Step153HeadFFresh ++ (growRow 775 s6Step153HeadGvFresh ++ (growRow 776 s6Step153HeadFvFresh ++ [])))),s6Step153F4Plan,s6Step153CounterDuring,s6Step153CounterWork,s6Step153ExitGvAfter,s6Step153FrontOut,(shrinkRow 777 s6Step153ExitGExtra ++ (shrinkRow 795 s6Step153ExitFExtra ++ (shrinkRow 776 s6Step153ExitFvExtra ++ (shrinkRow 775 s6Step153ExitGvExtra ++ []))))⟩

private def s6Step153CompletePlan : HmrEarlyStepPlan := ⟨s6Step153FrontPlan,s6Step153EarlyControlArena,s6Step153EarlyControlPlan,s6Step153CompleteMoves⟩

private theorem s6Step153Complete_apart : List.Disjoint (s6Step153CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [874, 875, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step153CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[874, 875, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step153Complete_owned : (s6Step153CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step153EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step153EarlyControlArena (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step153CompleteRelocationMove0Borrowed : Arena := ⟨s6Step153ExitGvAfter.live∪{192},Finset.union_subset s6Step153ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step153CompleteRelocation_move0_owned : 922∈s6Step153ExitGvAfter.live := by norm_num [s6Step153ExitGvAfter,arenaWires]

private theorem s6Step153CompleteRelocation_move0_reserve : s6Step153ExitGvAfter.reserve {192}=some s6Step153CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step153ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step153CompleteRelocation_move0_retire : s6Step153CompleteRelocationMove0Borrowed.retireSet {922}=s6Step153EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step153CompleteRelocationMove0Borrowed s6Step153EarlyControlArena {922}
  change s6Step153EarlyControlArena.live=(s6Step153ExitGvAfter.live∪{192})\{922}
  apply hmrArena_update_of_filter_check s6Step153ExitGvAfter s6Step153EarlyControlArena (fun q => ([(0,192),(193,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [192] [922] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step153CompleteRelocation_checked : s6Step153ExitGvAfter.checkRepack [(922,192)]=some s6Step153EarlyControlArena := by
  have tail1 : s6Step153EarlyControlArena.checkRepack []=some s6Step153EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step153ExitGvAfter s6Step153CompleteRelocationMove0Borrowed s6Step153EarlyControlArena s6Step153EarlyControlArena 922 192 []
    s6Step153CompleteRelocation_move0_owned s6Step153CompleteRelocation_move0_reserve s6Step153CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step153Complete_repack : s6Step153ExitGvAfter.checkRepack s6Step153CompleteMoves=some s6Step153EarlyControlArena := by
  simpa only [s6Step153CompleteMoves] using s6Step153CompleteRelocation_checked

private theorem s6Step153EarlyControl_branchOwned : ([875] : List Wire).toFinset⊆s6Step153EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step153EarlyControlSigmaArena (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(875,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step153EarlyControl_branch : compileHmrBranchRetirement s6Step153EarlyControlSigmaArena 875=some s6Step153EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step153EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step153EarlyControlSigmaArena s6Step153EarlyControlOutputArena (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(875,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [875] rfl rfl
    decide +kernel

private theorem s6Step153EarlyControl_classEqualityBorrow : s6Step153EarlyControlPositiveArena.checkBorrow (([874, 887] : List Wire).length-1) s6Step153EarlyControlLog.classWork=some s6Step153EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step153EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step153EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step153EarlyControlEqualityArena,s6Step153EarlyControlPositiveArena,s6Step153EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step153EarlyControl_classEqualityOwned : ([874, 887] : List Wire).toFinset⊆s6Step153EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step153EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step153EarlyControl_classEquality : compileHmrEqualityLog s6Step153EarlyControlPositiveArena [874, 887] 0 s6Step153EarlyControlLog.classWork=some (s6Step153EarlyControlEqualityArena,s6Step153EarlyControlLog.classWork,s6Step153EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step153EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step153EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step153EarlyControl_classOwned : ([769, 879, 874] : List Wire).toFinset⊆s6Step153EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step153EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step153EarlyControl_positiveBorrow : s6Step153EarlyControlZeroArena.checkBorrow (1) s6Step153EarlyControlLog.positiveWork=some s6Step153EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step153EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step153EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step153EarlyControlPositiveArena,s6Step153EarlyControlZeroArena,s6Step153EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step153EarlyControl_class : compileHmrSourceClassLog s6Step153EarlyControlZeroArena false 769 s6Step153EarlyControlZeroPlan.top 0 874 s6Step153EarlyControlLog.positiveWork s6Step153EarlyControlLog.classWork=some s6Step153EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step153EarlyControlClassPlan s6Step153EarlyControlZeroArena false 769 s6Step153EarlyControlZeroPlan.top 0 874
  constructor
  · decide +kernel
  · exact s6Step153EarlyControl_classOwned
  · exact s6Step153EarlyControl_positiveBorrow
  · exact s6Step153EarlyControl_classEquality

private theorem s6Step153EarlyControl_entryRecordOwned : ([875, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step153EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step153EarlyControlArena (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step153EarlyControl_entrySigmaOwned : ([874, 254] : List Wire).toFinset⊆s6Step153EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step153EarlyControlArena (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step153EarlyControl_fitBorrow : s6Step153EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step153EarlyControlLog.recordFresh=some s6Step153EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step153EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step153EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step153EarlyControlFittedArena,s6Step153EarlyControlFlagArena,s6Step153EarlyControlLog,arenaWires]

private theorem s6Step153EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step153EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step153EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step153EarlyControl_fit : compileHmrRecordGrowLog s6Step153EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step153EarlyControlLog.recordFresh=some s6Step153EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step153EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step153EarlyControl_fitBorrow

private theorem s6Step153EarlyControl_flagsBorrow : s6Step153EarlyControlEqualityArena.checkBorrow (6) s6Step153EarlyControlLog.flagWork=some s6Step153EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step153EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step153EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step153EarlyControlFlagArena,s6Step153EarlyControlEqualityArena,s6Step153EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step153EarlyControl_flagsOwned : ([881, 253, 252, 251] : List Wire).toFinset⊆s6Step153EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step153EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step153EarlyControl_flags : compileHmrFlagsLog s6Step153EarlyControlClassPlan.equalityArena s6Step153EarlyControlClassPlan.equality.top 253 252 251 s6Step153EarlyControlLog.flagWork=some s6Step153EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step153EarlyControl_flagsOwned⟩
  · exact s6Step153EarlyControl_flagsBorrow

private theorem s6Step153EarlyControl_historyBorrow : s6Step153EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step153EarlyControlLog.recordFresh=some s6Step153EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step153EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step153EarlyControlArena (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step153EarlyControlArena s6Step153EarlyControlHistoryArena (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step153EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step153EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step153EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step153EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step153EarlyControlArena (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step153EarlyControl_history : compileHmrRecordGrowLog s6Step153EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step153EarlyControlLog.recordFresh=some s6Step153EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step153EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step153EarlyControl_historyBorrow

private theorem s6Step153EarlyControl_sigmaOwned : ([254, 874] : List Wire).toFinset⊆s6Step153EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step153EarlyControlHistoryArena (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step153EarlyControl_sigmaReleaseOwned : ([874] : List Wire).toFinset⊆s6Step153EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step153EarlyControlHistoryArena (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step153EarlyControl_sigmaRelease : s6Step153EarlyControlHistoryArena.release {874} (fun _ => false)=some s6Step153EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step153EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step153EarlyControlHistoryArena s6Step153EarlyControlSigmaArena (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(875,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [874] rfl rfl
    decide +kernel

private theorem s6Step153EarlyControl_sigma : compileHmrSigmaDropLog s6Step153EarlyControlHistoryArena false 0 0 254 874 []=some s6Step153EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step153EarlyControl_sigmaOwned⟩
  · exact s6Step153EarlyControl_sigmaRelease

private theorem s6Step153EarlyControl_zeroBorrow : s6Step153EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step153EarlyControlLog.zeroWork=some s6Step153EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step153EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step153EarlyControlArena (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step153EarlyControlArena s6Step153EarlyControlZeroArena (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step153EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step153EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step153EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step153EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step153EarlyControlArena (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step153EarlyControl_zero : compileHmrEqualityLog s6Step153EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step153EarlyControlLog.zeroWork=some (s6Step153EarlyControlZeroArena,s6Step153EarlyControlLog.zeroWork,s6Step153EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step153EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step153EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step153EarlyControl_logged : s6Step153EarlyControlPlan.Logged s6Step153EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 874 254 253 252 251 875 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step153EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step153EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step153EarlyControl_zero
  · exact s6Step153EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step153EarlyControl_flags
  · exact s6Step153EarlyControl_fit
  · exact s6Step153EarlyControl_history
  · exact s6Step153EarlyControl_sigma
  · exact s6Step153EarlyControl_branch

private theorem s6Step153EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step153EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 874 254 253 252 251 875 42 s6Step153EarlyControlLog=some s6Step153EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step153EarlyControlPlan s6Step153EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 874 254 253 252 251 875 42 s6Step153EarlyControl_logged

private def s6Step153EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step153EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448],795⟩

private def s6Step153EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882],776⟩

private def s6Step153EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192],777⟩

private def s6Step153EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855],775⟩

private def s6Step153FrontBank : WindowBank := ⟨s6Step153EntryFRow,s6Step153EntryGRow,s6Step153EntryFvRow,s6Step153EntryGvRow⟩

private def s6Step153Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 887, 795]

private def s6Step153Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 881, 777]

private def s6Step153Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 879, 776]

private def s6Step153Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 768, 779, 908, 775]

private theorem s6Step153Counter_apart : Disjoint s6Step153HeadFvAfter.live s6Step153CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step153HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step153Counter_borrowed : s6Step153HeadFvAfter.checkBorrow 4 s6Step153CounterWork=some s6Step153CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step153HeadFvAfter s6Step153CounterDuring s6Step153CounterWork.toFinset s6Step153Counter_bounded s6Step153Counter_apart rfl

private theorem s6Step153Counter_owned : (874::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step153HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step153HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step153Counter_checked : compileHmrCounterStepLog s6Step153HeadFvAfter true 874 [774, 773, 772, 771, 770, 769] s6Step153CounterWork=some s6Step153CounterDuring := by
  have owned : ∀q∈874::[774, 773, 772, 771, 770, 769],q∈s6Step153HeadFvAfter.live := fun q hq => s6Step153Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step153Counter_borrowed

private def s6Step153EntryFAfter : Arena := s6Step153EntryFBefore

private theorem s6Step153EntryBank_incomingDistinct : ([s6Step153EntryFRow,s6Step153EntryGRow,s6Step153EntryFvRow,s6Step153EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step153EntryF_Incoming : rowsOwned s6Step153EntryFBefore [s6Step153EntryFRow,s6Step153EntryGRow,s6Step153EntryFvRow,s6Step153EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step153EntryFRow,s6Step153EntryGRow,s6Step153EntryFvRow,s6Step153EntryGvRow] 0 s6Step153EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step153EntryFBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step153EntryBank_outgoingOwned : rowsOwned s6Step153EntryGvAfter [s6Step153EntryFOut,s6Step153EntryGOut,s6Step153EntryFvOut,s6Step153EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step153EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step153EntryF_Outgoing : rowsOwned s6Step153EntryGvAfter [s6Step153EntryFOut,s6Step153EntryGOut,s6Step153EntryFvOut,s6Step153EntryGvOut] :=
  hmrRows_owned_drop s6Step153EntryGvAfter [s6Step153EntryFOut,s6Step153EntryGOut,s6Step153EntryFvOut,s6Step153EntryGvOut] 0 s6Step153EntryBank_outgoingOwned

private theorem s6Step153EntryF_distinct : (s6Step153EntryFRow.sign::s6Step153EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step153EntryF_owned : (s6Step153EntryFRow.sign::s6Step153EntryFRow.payload).toFinset⊆s6Step153EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step153EntryFBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step153EntryF_reserved : s6Step153EntryFBefore.reserve s6Step153EntryFFresh.toFinset=some s6Step153EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step153EntryFFresh,arenaWires]
  · norm_num [s6Step153EntryFBefore,s6Step153EntryFFresh,arenaWires]
  · simp only [s6Step153EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step153EntryF_checked : planRowResizeLog s6Step153EntryFBefore s6Step153EntryFRow 193 s6Step153EntryFFresh=
    some (s6Step153EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448],795⟩,growRow 795 s6Step153EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step153EntryFBefore s6Step153EntryFAfter s6Step153EntryFRow 193 s6Step153EntryFFresh
    s6Step153EntryF_distinct s6Step153EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step153EntryF_reserved
  have rowEq : WindowRow.mk (s6Step153EntryFRow.payload++s6Step153EntryFFresh) s6Step153EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step153EntryFvAfter : Arena := s6Step153EntryFBefore

private def s6Step153EntryFvBefore : Arena := s6Step153EntryFBefore

private theorem s6Step153EntryFv_Incoming : rowsOwned s6Step153EntryFvBefore [s6Step153EntryFvRow,s6Step153EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step153EntryFRow,s6Step153EntryGRow,s6Step153EntryFvRow,s6Step153EntryGvRow] 2 s6Step153EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step153EntryFvBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step153EntryFv_Outgoing : rowsOwned s6Step153EntryGvAfter [s6Step153EntryFvOut,s6Step153EntryGvOut] :=
  hmrRows_owned_drop s6Step153EntryGvAfter [s6Step153EntryFOut,s6Step153EntryGOut,s6Step153EntryFvOut,s6Step153EntryGvOut] 2 s6Step153EntryBank_outgoingOwned

private theorem s6Step153EntryFv_distinct : (s6Step153EntryFvRow.sign::s6Step153EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step153EntryFv_owned : (s6Step153EntryFvRow.sign::s6Step153EntryFvRow.payload).toFinset⊆s6Step153EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step153EntryFvBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step153EntryFv_reserved : s6Step153EntryFvBefore.reserve s6Step153EntryFvFresh.toFinset=some s6Step153EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step153EntryFvFresh,arenaWires]
  · norm_num [s6Step153EntryFvBefore,s6Step153EntryFBefore,s6Step153EntryFvFresh,arenaWires]
  · simp only [s6Step153EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step153EntryFv_checked : planRowResizeLog s6Step153EntryFvBefore s6Step153EntryFvRow 92 s6Step153EntryFvFresh=
    some (s6Step153EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882],776⟩,growRow 776 s6Step153EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step153EntryFvBefore s6Step153EntryFvAfter s6Step153EntryFvRow 92 s6Step153EntryFvFresh
    s6Step153EntryFv_distinct s6Step153EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step153EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step153EntryFvRow.payload++s6Step153EntryFvFresh) s6Step153EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step153EntryGAfter : Arena := s6Step153EntryFBefore

private def s6Step153EntryGBefore : Arena := s6Step153EntryFBefore

private theorem s6Step153EntryG_Incoming : rowsOwned s6Step153EntryGBefore [s6Step153EntryGRow,s6Step153EntryFvRow,s6Step153EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step153EntryFRow,s6Step153EntryGRow,s6Step153EntryFvRow,s6Step153EntryGvRow] 1 s6Step153EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step153EntryGBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step153EntryG_Outgoing : rowsOwned s6Step153EntryGvAfter [s6Step153EntryGOut,s6Step153EntryFvOut,s6Step153EntryGvOut] :=
  hmrRows_owned_drop s6Step153EntryGvAfter [s6Step153EntryFOut,s6Step153EntryGOut,s6Step153EntryFvOut,s6Step153EntryGvOut] 1 s6Step153EntryBank_outgoingOwned

private theorem s6Step153EntryG_distinct : (s6Step153EntryGRow.sign::s6Step153EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step153EntryG_owned : (s6Step153EntryGRow.sign::s6Step153EntryGRow.payload).toFinset⊆s6Step153EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step153EntryGBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step153EntryG_reserved : s6Step153EntryGBefore.reserve s6Step153EntryGFresh.toFinset=some s6Step153EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step153EntryGFresh,arenaWires]
  · norm_num [s6Step153EntryGBefore,s6Step153EntryFBefore,s6Step153EntryGFresh,arenaWires]
  · simp only [s6Step153EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step153EntryG_checked : planRowResizeLog s6Step153EntryGBefore s6Step153EntryGRow 193 s6Step153EntryGFresh=
    some (s6Step153EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192],777⟩,growRow 777 s6Step153EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step153EntryGBefore s6Step153EntryGAfter s6Step153EntryGRow 193 s6Step153EntryGFresh
    s6Step153EntryG_distinct s6Step153EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step153EntryG_reserved
  have rowEq : WindowRow.mk (s6Step153EntryGRow.payload++s6Step153EntryGFresh) s6Step153EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step153EntryGvBefore : Arena := s6Step153EntryFBefore

private theorem s6Step153EntryGv_Incoming : rowsOwned s6Step153EntryGvBefore [s6Step153EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step153EntryFRow,s6Step153EntryGRow,s6Step153EntryFvRow,s6Step153EntryGvRow] 3 s6Step153EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step153EntryGvBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step153EntryGv_Outgoing : rowsOwned s6Step153EntryGvAfter [s6Step153EntryGvOut] :=
  hmrRows_owned_drop s6Step153EntryGvAfter [s6Step153EntryFOut,s6Step153EntryGOut,s6Step153EntryFvOut,s6Step153EntryGvOut] 3 s6Step153EntryBank_outgoingOwned

private theorem s6Step153EntryGv_distinct : (s6Step153EntryGvRow.sign::s6Step153EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step153EntryGv_owned : (s6Step153EntryGvRow.sign::s6Step153EntryGvRow.payload).toFinset⊆s6Step153EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step153EntryGvBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step153EntryGv_reserved : s6Step153EntryGvBefore.reserve s6Step153EntryGvFresh.toFinset=some s6Step153EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step153EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step153EntryGvBefore,s6Step153EntryFBefore,s6Step153EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step153EntryGvBefore s6Step153EntryGvAfter (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step153EntryGvFresh rfl rfl
    · norm_num [s6Step153EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step153EntryGv_checked : planRowResizeLog s6Step153EntryGvBefore s6Step153EntryGvRow 92 s6Step153EntryGvFresh=
    some (s6Step153EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 768, 779],775⟩,growRow 775 s6Step153EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step153EntryGvBefore s6Step153EntryGvAfter s6Step153EntryGvRow 92 s6Step153EntryGvFresh
    s6Step153EntryGv_distinct s6Step153EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step153EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step153EntryGvRow.payload++s6Step153EntryGvFresh) s6Step153EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 768, 779],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step153EntryBank_rows : planWindowRowsLog s6Step153EntryFBefore [(s6Step153EntryFRow,193),(s6Step153EntryGRow,193),(s6Step153EntryFvRow,92),(s6Step153EntryGvRow,92)] [s6Step153EntryFFresh,s6Step153EntryGFresh,s6Step153EntryFvFresh,s6Step153EntryGvFresh]=
    some (s6Step153EntryGvAfter,[s6Step153EntryFOut,s6Step153EntryGOut,s6Step153EntryFvOut,s6Step153EntryGvOut],(growRow 795 s6Step153EntryFFresh ++ (growRow 777 s6Step153EntryGFresh ++ (growRow 776 s6Step153EntryFvFresh ++ (growRow 775 s6Step153EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step153EntryGvAfter [] []=some (s6Step153EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step153EntryGvBefore s6Step153EntryGvAfter s6Step153EntryGvAfter
    s6Step153EntryGvRow s6Step153EntryGvOut 92 s6Step153EntryGvFresh [] [] []
    (growRow 775 s6Step153EntryGvFresh) ([]) s6Step153EntryGv_Incoming s6Step153EntryGv_checked h4 s6Step153EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step153EntryFvBefore s6Step153EntryFvAfter s6Step153EntryGvAfter
    s6Step153EntryFvRow s6Step153EntryFvOut 92 s6Step153EntryFvFresh [(s6Step153EntryGvRow,92)] [s6Step153EntryGvFresh] [s6Step153EntryGvOut]
    (growRow 776 s6Step153EntryFvFresh) ((growRow 775 s6Step153EntryGvFresh ++ [])) s6Step153EntryFv_Incoming s6Step153EntryFv_checked h3 s6Step153EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step153EntryGBefore s6Step153EntryGAfter s6Step153EntryGvAfter
    s6Step153EntryGRow s6Step153EntryGOut 193 s6Step153EntryGFresh [(s6Step153EntryFvRow,92),(s6Step153EntryGvRow,92)] [s6Step153EntryFvFresh,s6Step153EntryGvFresh] [s6Step153EntryFvOut,s6Step153EntryGvOut]
    (growRow 777 s6Step153EntryGFresh) ((growRow 776 s6Step153EntryFvFresh ++ (growRow 775 s6Step153EntryGvFresh ++ []))) s6Step153EntryG_Incoming s6Step153EntryG_checked h2 s6Step153EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step153EntryFBefore s6Step153EntryFAfter s6Step153EntryGvAfter
    s6Step153EntryFRow s6Step153EntryFOut 193 s6Step153EntryFFresh [(s6Step153EntryGRow,193),(s6Step153EntryFvRow,92),(s6Step153EntryGvRow,92)] [s6Step153EntryGFresh,s6Step153EntryFvFresh,s6Step153EntryGvFresh] [s6Step153EntryGOut,s6Step153EntryFvOut,s6Step153EntryGvOut]
    (growRow 795 s6Step153EntryFFresh) ((growRow 777 s6Step153EntryGFresh ++ (growRow 776 s6Step153EntryFvFresh ++ (growRow 775 s6Step153EntryGvFresh ++ [])))) s6Step153EntryF_Incoming s6Step153EntryF_checked h1 s6Step153EntryF_Outgoing
  exact h0

private theorem s6Step153EntryBank_checked : compileHmrBankResizeLog .entry s6Step153EntryFBefore ⟨s6Step153EntryFRow,s6Step153EntryGRow,s6Step153EntryFvRow,s6Step153EntryGvRow⟩ ⟨193,193,92,92⟩ [s6Step153EntryFFresh,s6Step153EntryGFresh,s6Step153EntryFvFresh,s6Step153EntryGvFresh]=
    some (s6Step153EntryGvAfter,⟨s6Step153EntryFOut,s6Step153EntryGOut,s6Step153EntryFvOut,s6Step153EntryGvOut⟩,(growRow 795 s6Step153EntryFFresh ++ (growRow 777 s6Step153EntryGFresh ++ (growRow 776 s6Step153EntryFvFresh ++ (growRow 775 s6Step153EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step153EntryBank_rows]
  rfl

private def s6Step153ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,192),(193,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step153ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<192) ∨ (193≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step153ExitFBefore : Arena := s6Step153ExitGAfter

private def s6Step153ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 887],795⟩

private def s6Step153ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 879],776⟩

private def s6Step153ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 881],777⟩

private def s6Step153ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 768, 779, 908],775⟩

private theorem s6Step153ExitBank_incomingDistinct : ([s6Step153ExitGRow,s6Step153ExitFRow,s6Step153ExitFvRow,s6Step153ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step153ExitF_Incoming : rowsOwned s6Step153ExitFBefore [s6Step153ExitFRow,s6Step153ExitFvRow,s6Step153ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step153ExitGRow,s6Step153ExitFRow,s6Step153ExitFvRow,s6Step153ExitGvRow] 1 s6Step153ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step153ExitFBefore (fun q => (0≤q ∧ q<192) ∨ (193≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step153ExitBank_outgoingOwned : rowsOwned s6Step153ExitGvAfter [s6Step153ExitGOut,s6Step153ExitFOut,s6Step153ExitFvOut,s6Step153ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step153ExitGvAfter (fun q => ([(0,192),(193,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step153ExitF_Outgoing : rowsOwned s6Step153ExitGvAfter [s6Step153ExitFOut,s6Step153ExitFvOut,s6Step153ExitGvOut] :=
  hmrRows_owned_drop s6Step153ExitGvAfter [s6Step153ExitGOut,s6Step153ExitFOut,s6Step153ExitFvOut,s6Step153ExitGvOut] 1 s6Step153ExitBank_outgoingOwned

private theorem s6Step153ExitF_distinct : (s6Step153ExitFRow.sign::s6Step153ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step153ExitF_owned : (s6Step153ExitFRow.sign::s6Step153ExitFRow.payload).toFinset⊆s6Step153ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step153ExitFBefore (fun q => (0≤q ∧ q<192) ∨ (193≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step153ExitF_retired : s6Step153ExitFBefore.retireSet s6Step153ExitFExtra.toFinset=s6Step153ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step153ExitFBefore s6Step153ExitFAfter s6Step153ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step153ExitFBefore s6Step153ExitFAfter (fun q => (0≤q ∧ q<192) ∨ (193≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,192),(193,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step153ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step153ExitF_checked : planRowResizeLog s6Step153ExitFBefore s6Step153ExitFRow 193 []=
    some (s6Step153ExitFAfter,s6Step153ExitFOut,shrinkRow 795 s6Step153ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step153ExitFBefore s6Step153ExitFRow 193 s6Step153ExitF_distinct s6Step153ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step153ExitFRow.payload.take 193) s6Step153ExitFRow.sign=s6Step153ExitFOut := by decide +kernel
  have hi : s6Step153ExitFRow.payload.drop 193=s6Step153ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step153ExitF_retired] at result
  exact result

private def s6Step153ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,192),(193,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step153ExitFvBefore : Arena := s6Step153ExitFAfter

private theorem s6Step153ExitFv_Incoming : rowsOwned s6Step153ExitFvBefore [s6Step153ExitFvRow,s6Step153ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step153ExitGRow,s6Step153ExitFRow,s6Step153ExitFvRow,s6Step153ExitGvRow] 2 s6Step153ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step153ExitFvBefore (fun q => ([(0,192),(193,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step153ExitFv_Outgoing : rowsOwned s6Step153ExitGvAfter [s6Step153ExitFvOut,s6Step153ExitGvOut] :=
  hmrRows_owned_drop s6Step153ExitGvAfter [s6Step153ExitGOut,s6Step153ExitFOut,s6Step153ExitFvOut,s6Step153ExitGvOut] 2 s6Step153ExitBank_outgoingOwned

private theorem s6Step153ExitFv_distinct : (s6Step153ExitFvRow.sign::s6Step153ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step153ExitFv_owned : (s6Step153ExitFvRow.sign::s6Step153ExitFvRow.payload).toFinset⊆s6Step153ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step153ExitFvBefore (fun q => ([(0,192),(193,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step153ExitFv_retired : s6Step153ExitFvBefore.retireSet s6Step153ExitFvExtra.toFinset=s6Step153ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step153ExitFvBefore s6Step153ExitFvAfter s6Step153ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step153ExitFvBefore s6Step153ExitFvAfter (fun q => ([(0,192),(193,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,192),(193,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step153ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step153ExitFv_checked : planRowResizeLog s6Step153ExitFvBefore s6Step153ExitFvRow 92 []=
    some (s6Step153ExitFvAfter,s6Step153ExitFvOut,shrinkRow 776 s6Step153ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step153ExitFvBefore s6Step153ExitFvRow 92 s6Step153ExitFv_distinct s6Step153ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step153ExitFvRow.payload.take 92) s6Step153ExitFvRow.sign=s6Step153ExitFvOut := by decide +kernel
  have hi : s6Step153ExitFvRow.payload.drop 92=s6Step153ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step153ExitFv_retired] at result
  exact result

private def s6Step153ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step153ExitG_Incoming : rowsOwned s6Step153ExitGBefore [s6Step153ExitGRow,s6Step153ExitFRow,s6Step153ExitFvRow,s6Step153ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step153ExitGRow,s6Step153ExitFRow,s6Step153ExitFvRow,s6Step153ExitGvRow] 0 s6Step153ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step153ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step153ExitG_Outgoing : rowsOwned s6Step153ExitGvAfter [s6Step153ExitGOut,s6Step153ExitFOut,s6Step153ExitFvOut,s6Step153ExitGvOut] :=
  hmrRows_owned_drop s6Step153ExitGvAfter [s6Step153ExitGOut,s6Step153ExitFOut,s6Step153ExitFvOut,s6Step153ExitGvOut] 0 s6Step153ExitBank_outgoingOwned

private theorem s6Step153ExitG_distinct : (s6Step153ExitGRow.sign::s6Step153ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step153ExitG_owned : (s6Step153ExitGRow.sign::s6Step153ExitGRow.payload).toFinset⊆s6Step153ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step153ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step153ExitG_retired : s6Step153ExitGBefore.retireSet s6Step153ExitGExtra.toFinset=s6Step153ExitGAfter := by
  unfold Arena.retireSet s6Step153ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step153ExitGBefore,s6Step153ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step153ExitG_checked : planRowResizeLog s6Step153ExitGBefore s6Step153ExitGRow 192 []=
    some (s6Step153ExitGAfter,s6Step153ExitGOut,shrinkRow 777 s6Step153ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step153ExitGBefore s6Step153ExitGRow 192 s6Step153ExitG_distinct s6Step153ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step153ExitGRow.payload.take 192) s6Step153ExitGRow.sign=s6Step153ExitGOut := by decide +kernel
  have hi : s6Step153ExitGRow.payload.drop 192=s6Step153ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step153ExitG_retired] at result
  exact result

private def s6Step153ExitGvBefore : Arena := s6Step153ExitFvAfter

private theorem s6Step153ExitGv_Incoming : rowsOwned s6Step153ExitGvBefore [s6Step153ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step153ExitGRow,s6Step153ExitFRow,s6Step153ExitFvRow,s6Step153ExitGvRow] 3 s6Step153ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step153ExitGvBefore (fun q => ([(0,192),(193,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step153ExitGv_Outgoing : rowsOwned s6Step153ExitGvAfter [s6Step153ExitGvOut] :=
  hmrRows_owned_drop s6Step153ExitGvAfter [s6Step153ExitGOut,s6Step153ExitFOut,s6Step153ExitFvOut,s6Step153ExitGvOut] 3 s6Step153ExitBank_outgoingOwned

private theorem s6Step153ExitGv_distinct : (s6Step153ExitGvRow.sign::s6Step153ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step153ExitGv_owned : (s6Step153ExitGvRow.sign::s6Step153ExitGvRow.payload).toFinset⊆s6Step153ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step153ExitGvBefore (fun q => ([(0,192),(193,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step153ExitGv_retired : s6Step153ExitGvBefore.retireSet s6Step153ExitGvExtra.toFinset=s6Step153ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step153ExitGvBefore s6Step153ExitGvAfter s6Step153ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step153ExitGvBefore s6Step153ExitGvAfter (fun q => ([(0,192),(193,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,192),(193,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step153ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step153ExitGv_checked : planRowResizeLog s6Step153ExitGvBefore s6Step153ExitGvRow 90 []=
    some (s6Step153ExitGvAfter,s6Step153ExitGvOut,shrinkRow 775 s6Step153ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step153ExitGvBefore s6Step153ExitGvRow 90 s6Step153ExitGv_distinct s6Step153ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step153ExitGvRow.payload.take 90) s6Step153ExitGvRow.sign=s6Step153ExitGvOut := by decide +kernel
  have hi : s6Step153ExitGvRow.payload.drop 90=s6Step153ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step153ExitGv_retired] at result
  exact result

private theorem s6Step153ExitBank_rows : planWindowRowsLog s6Step153ExitGBefore [(s6Step153ExitGRow,192),(s6Step153ExitFRow,193),(s6Step153ExitFvRow,92),(s6Step153ExitGvRow,90)] [[],[],[],[]]=
    some (s6Step153ExitGvAfter,[s6Step153ExitGOut,s6Step153ExitFOut,s6Step153ExitFvOut,s6Step153ExitGvOut],(shrinkRow 777 s6Step153ExitGExtra ++ (shrinkRow 795 s6Step153ExitFExtra ++ (shrinkRow 776 s6Step153ExitFvExtra ++ (shrinkRow 775 s6Step153ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step153ExitGvAfter [] []=some (s6Step153ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step153ExitGvBefore s6Step153ExitGvAfter s6Step153ExitGvAfter
    s6Step153ExitGvRow s6Step153ExitGvOut 90 [] [] [] []
    (shrinkRow 775 s6Step153ExitGvExtra) ([]) s6Step153ExitGv_Incoming s6Step153ExitGv_checked h4 s6Step153ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step153ExitFvBefore s6Step153ExitFvAfter s6Step153ExitGvAfter
    s6Step153ExitFvRow s6Step153ExitFvOut 92 [] [(s6Step153ExitGvRow,90)] [[]] [s6Step153ExitGvOut]
    (shrinkRow 776 s6Step153ExitFvExtra) ((shrinkRow 775 s6Step153ExitGvExtra ++ [])) s6Step153ExitFv_Incoming s6Step153ExitFv_checked h3 s6Step153ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step153ExitFBefore s6Step153ExitFAfter s6Step153ExitGvAfter
    s6Step153ExitFRow s6Step153ExitFOut 193 [] [(s6Step153ExitFvRow,92),(s6Step153ExitGvRow,90)] [[],[]] [s6Step153ExitFvOut,s6Step153ExitGvOut]
    (shrinkRow 795 s6Step153ExitFExtra) ((shrinkRow 776 s6Step153ExitFvExtra ++ (shrinkRow 775 s6Step153ExitGvExtra ++ []))) s6Step153ExitF_Incoming s6Step153ExitF_checked h2 s6Step153ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step153ExitGBefore s6Step153ExitGAfter s6Step153ExitGvAfter
    s6Step153ExitGRow s6Step153ExitGOut 192 [] [(s6Step153ExitFRow,193),(s6Step153ExitFvRow,92),(s6Step153ExitGvRow,90)] [[],[],[]] [s6Step153ExitFOut,s6Step153ExitFvOut,s6Step153ExitGvOut]
    (shrinkRow 777 s6Step153ExitGExtra) ((shrinkRow 795 s6Step153ExitFExtra ++ (shrinkRow 776 s6Step153ExitFvExtra ++ (shrinkRow 775 s6Step153ExitGvExtra ++ [])))) s6Step153ExitG_Incoming s6Step153ExitG_checked h1 s6Step153ExitG_Outgoing
  exact h0

private theorem s6Step153ExitBank_checked : compileHmrBankResizeLog .exit s6Step153ExitGBefore ⟨s6Step153ExitFRow,s6Step153ExitGRow,s6Step153ExitFvRow,s6Step153ExitGvRow⟩ ⟨193,192,92,90⟩ [[],[],[],[]]=
    some (s6Step153ExitGvAfter,⟨s6Step153ExitFOut,s6Step153ExitGOut,s6Step153ExitFvOut,s6Step153ExitGvOut⟩,(shrinkRow 777 s6Step153ExitGExtra ++ (shrinkRow 795 s6Step153ExitFExtra ++ (shrinkRow 776 s6Step153ExitFvExtra ++ (shrinkRow 775 s6Step153ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step153ExitBank_rows]
  rfl

private theorem s6Step153Add0_apart : Disjoint s6Step153Add0Arena.live s6Step153Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step153Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step153Add0_card : s6Step153Add0Arena.live.card=886 := by
  decide +kernel

private theorem s6Step153Add0_borrowed : s6Step153Add0Arena.checkBorrow (hmrHybridCount s6Step153Add0Arena s6Step153Add0B.length) s6Step153Add0Work=some s6Step153Add0During := by
  have len : s6Step153Add0Work.length=hmrHybridCount s6Step153Add0Arena s6Step153Add0B.length := by
    rw [hmrHybridCount,s6Step153Add0_card]
    decide +kernel
  have nd : s6Step153Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step153Add0Arena s6Step153Add0During s6Step153Add0Work.toFinset s6Step153Add0_bounded s6Step153Add0_apart rfl

private theorem s6Step153Add0_distinct : (891::875::903::(s6Step153Add0A++s6Step153Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step153Add0_owned : (891::875::903::(s6Step153Add0A++s6Step153Add0B)).toFinset⊆s6Step153Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step153Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step153Add0_checked : compileHmrHybridCinLog s6Step153Add0Arena 875 891 903 s6Step153Add0A s6Step153Add0B s6Step153Add0Work=some s6Step153Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step153Add0Arena s6Step153Add0During 875 891 903 s6Step153Add0A s6Step153Add0B s6Step153Add0Work
    (by decide +kernel) (by decide +kernel) s6Step153Add0_distinct
    (fun q hq => s6Step153Add0_owned (List.mem_toFinset.mpr hq)) s6Step153Add0_borrowed

private theorem s6Step153Add1_apart : Disjoint s6Step153Add1Arena.live s6Step153Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step153Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step153Add1_card : s6Step153Add1Arena.live.card=886 := by
  decide +kernel

private theorem s6Step153Add1_borrowed : s6Step153Add1Arena.checkBorrow (hmrHybridCount s6Step153Add1Arena s6Step153Add1B.length) s6Step153Add1Work=some s6Step153Add1During := by
  have len : s6Step153Add1Work.length=hmrHybridCount s6Step153Add1Arena s6Step153Add1B.length := by
    rw [hmrHybridCount,s6Step153Add1_card]
    decide +kernel
  have nd : s6Step153Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step153Add1Arena s6Step153Add1During s6Step153Add1Work.toFinset s6Step153Add1_bounded s6Step153Add1_apart rfl

private theorem s6Step153Add1_distinct : (891::875::903::(s6Step153Add1A++s6Step153Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step153Add1_owned : (891::875::903::(s6Step153Add1A++s6Step153Add1B)).toFinset⊆s6Step153Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step153Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step153Add1_checked : compileHmrHybridCinLog s6Step153Add1Arena 875 891 903 s6Step153Add1A s6Step153Add1B s6Step153Add1Work=some s6Step153Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step153Add1Arena s6Step153Add1During 875 891 903 s6Step153Add1A s6Step153Add1B s6Step153Add1Work
    (by decide +kernel) (by decide +kernel) s6Step153Add1_distinct
    (fun q hq => s6Step153Add1_owned (List.mem_toFinset.mpr hq)) s6Step153Add1_borrowed

private theorem s6Step153F4_apart : Disjoint (s6Step153Add0A++s6Step153Add0B).toFinset (s6Step153Add1A++s6Step153Add1B).toFinset := by
  have nd : ((s6Step153Add0A++s6Step153Add0B)++(s6Step153Add1A++s6Step153Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step153F4_carry : s6Step153F4FlagArena.checkBorrow 1 [903]=some s6Step153Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step153F4FlagArena,s6Step153HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step153F4FlagArena,s6Step153HeadFvAfter,s6Step153Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step153F4_distinct : (874::875::891::903::((s6Step153Add0A++s6Step153Add1A)++(s6Step153Add0B++s6Step153Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step153F4_flag : s6Step153HeadFvAfter.checkBorrow 1 [891]=some s6Step153F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step153HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step153F4_owned : (874::875::((s6Step153Add0A++s6Step153Add1A)++(s6Step153Add0B++s6Step153Add1B))).toFinset⊆s6Step153HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step153HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step153F4_checked : compileHmrHybridF4Log s6Step153HeadFvAfter 874 875 s6Step153Add0A s6Step153Add0B s6Step153Add1A s6Step153Add1B [891] [903] s6Step153Add0Work s6Step153Add1Work=some s6Step153F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step153HeadFvAfter s6Step153F4FlagArena s6Step153Add0Arena s6Step153Add0During s6Step153Add1During 874 875
    s6Step153Add0A s6Step153Add0B s6Step153Add1A s6Step153Add1B [891] [903] s6Step153Add0Work s6Step153Add1Work
    (fun q hq => s6Step153F4_owned (List.mem_toFinset.mpr hq)) s6Step153F4_flag s6Step153F4_carry
    s6Step153F4_distinct s6Step153F4_apart s6Step153Add0_checked s6Step153Add1_checked

private theorem s6Step153Front_branch : s6Step153FrontSigmaArena.checkBorrow 1 [875]=some s6Step153HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step153FrontSigmaArena,s6Step153EntryGvAfter,arenaWires]
  · change s6Step153HeadGBefore.live=(s6Step153EntryGvAfter.live∪{874})∪{875}
    apply hmrArena_union_pair_of_filter_check s6Step153EntryGvAfter s6Step153HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 874 875 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step153Front_entry : HmrFrontEntryValid s6Step153EntryFBefore s6Step153FrontBank 193 92 ⟨193,192,92,90⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step153FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step153EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step153EntryFBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step153FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step153Front_sigma : s6Step153EntryGvAfter.checkBorrow 1 [874]=some s6Step153FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step153EntryGvAfter,arenaWires]
  · rfl

private def s6Step153HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step153HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step153HeadFBefore : Arena := s6Step153HeadGAfter

private def s6Step153HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448],795⟩

private def s6Step153HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882],776⟩

private def s6Step153HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192],777⟩

private def s6Step153HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 768, 779],775⟩

private theorem s6Step153HeadBank_incomingDistinct : ([s6Step153HeadGRow,s6Step153HeadFRow,s6Step153HeadGvRow,s6Step153HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step153HeadF_Incoming : rowsOwned s6Step153HeadFBefore [s6Step153HeadFRow,s6Step153HeadGvRow,s6Step153HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step153HeadGRow,s6Step153HeadFRow,s6Step153HeadGvRow,s6Step153HeadFvRow] 1 s6Step153HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step153HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step153HeadBank_outgoingOwned : rowsOwned s6Step153HeadFvAfter [s6Step153HeadGOut,s6Step153HeadFOut,s6Step153HeadGvOut,s6Step153HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step153HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step153HeadF_Outgoing : rowsOwned s6Step153HeadFvAfter [s6Step153HeadFOut,s6Step153HeadGvOut,s6Step153HeadFvOut] :=
  hmrRows_owned_drop s6Step153HeadFvAfter [s6Step153HeadGOut,s6Step153HeadFOut,s6Step153HeadGvOut,s6Step153HeadFvOut] 1 s6Step153HeadBank_outgoingOwned

private theorem s6Step153HeadF_distinct : (s6Step153HeadFRow.sign::s6Step153HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step153HeadF_owned : (s6Step153HeadFRow.sign::s6Step153HeadFRow.payload).toFinset⊆s6Step153HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step153HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step153HeadF_reserved : s6Step153HeadFBefore.reserve s6Step153HeadFFresh.toFinset=some s6Step153HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step153HeadFFresh,arenaWires]
  · norm_num [s6Step153HeadFBefore,s6Step153HeadGAfter,s6Step153HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step153HeadFAfter,s6Step153HeadFBefore,s6Step153HeadGAfter,s6Step153HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step153HeadF_checked : planRowResizeLog s6Step153HeadFBefore s6Step153HeadFRow 194 s6Step153HeadFFresh=
    some (s6Step153HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 887],795⟩,growRow 795 s6Step153HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step153HeadFBefore s6Step153HeadFAfter s6Step153HeadFRow 194 s6Step153HeadFFresh
    s6Step153HeadF_distinct s6Step153HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step153HeadF_reserved
  have rowEq : WindowRow.mk (s6Step153HeadFRow.payload++s6Step153HeadFFresh) s6Step153HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 887],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step153HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step153HeadFvBefore : Arena := s6Step153HeadGvAfter

private theorem s6Step153HeadFv_Incoming : rowsOwned s6Step153HeadFvBefore [s6Step153HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step153HeadGRow,s6Step153HeadFRow,s6Step153HeadGvRow,s6Step153HeadFvRow] 3 s6Step153HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step153HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step153HeadFv_Outgoing : rowsOwned s6Step153HeadFvAfter [s6Step153HeadFvOut] :=
  hmrRows_owned_drop s6Step153HeadFvAfter [s6Step153HeadGOut,s6Step153HeadFOut,s6Step153HeadGvOut,s6Step153HeadFvOut] 3 s6Step153HeadBank_outgoingOwned

private theorem s6Step153HeadFv_distinct : (s6Step153HeadFvRow.sign::s6Step153HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step153HeadFv_owned : (s6Step153HeadFvRow.sign::s6Step153HeadFvRow.payload).toFinset⊆s6Step153HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step153HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step153HeadFv_reserved : s6Step153HeadFvBefore.reserve s6Step153HeadFvFresh.toFinset=some s6Step153HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step153HeadFvFresh,arenaWires]
  · norm_num [s6Step153HeadFvBefore,s6Step153HeadGvAfter,s6Step153HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step153HeadFvAfter,s6Step153HeadFvBefore,s6Step153HeadGvAfter,s6Step153HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step153HeadFv_checked : planRowResizeLog s6Step153HeadFvBefore s6Step153HeadFvRow 93 s6Step153HeadFvFresh=
    some (s6Step153HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 879],776⟩,growRow 776 s6Step153HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step153HeadFvBefore s6Step153HeadFvAfter s6Step153HeadFvRow 93 s6Step153HeadFvFresh
    s6Step153HeadFv_distinct s6Step153HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step153HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step153HeadFvRow.payload++s6Step153HeadFvFresh) s6Step153HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 879],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step153HeadG_Incoming : rowsOwned s6Step153HeadGBefore [s6Step153HeadGRow,s6Step153HeadFRow,s6Step153HeadGvRow,s6Step153HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step153HeadGRow,s6Step153HeadFRow,s6Step153HeadGvRow,s6Step153HeadFvRow] 0 s6Step153HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step153HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step153HeadG_Outgoing : rowsOwned s6Step153HeadFvAfter [s6Step153HeadGOut,s6Step153HeadFOut,s6Step153HeadGvOut,s6Step153HeadFvOut] :=
  hmrRows_owned_drop s6Step153HeadFvAfter [s6Step153HeadGOut,s6Step153HeadFOut,s6Step153HeadGvOut,s6Step153HeadFvOut] 0 s6Step153HeadBank_outgoingOwned

private theorem s6Step153HeadG_distinct : (s6Step153HeadGRow.sign::s6Step153HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step153HeadG_owned : (s6Step153HeadGRow.sign::s6Step153HeadGRow.payload).toFinset⊆s6Step153HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step153HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step153HeadG_reserved : s6Step153HeadGBefore.reserve s6Step153HeadGFresh.toFinset=some s6Step153HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step153HeadGFresh,arenaWires]
  · norm_num [s6Step153HeadGBefore,s6Step153HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step153HeadGBefore s6Step153HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step153HeadGFresh rfl rfl
    · norm_num [s6Step153HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step153HeadG_checked : planRowResizeLog s6Step153HeadGBefore s6Step153HeadGRow 194 s6Step153HeadGFresh=
    some (s6Step153HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 881],777⟩,growRow 777 s6Step153HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step153HeadGBefore s6Step153HeadGAfter s6Step153HeadGRow 194 s6Step153HeadGFresh
    s6Step153HeadG_distinct s6Step153HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step153HeadG_reserved
  have rowEq : WindowRow.mk (s6Step153HeadGRow.payload++s6Step153HeadGFresh) s6Step153HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 881],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step153HeadGvBefore : Arena := s6Step153HeadFAfter

private theorem s6Step153HeadGv_Incoming : rowsOwned s6Step153HeadGvBefore [s6Step153HeadGvRow,s6Step153HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step153HeadGRow,s6Step153HeadFRow,s6Step153HeadGvRow,s6Step153HeadFvRow] 2 s6Step153HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step153HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step153HeadGv_Outgoing : rowsOwned s6Step153HeadFvAfter [s6Step153HeadGvOut,s6Step153HeadFvOut] :=
  hmrRows_owned_drop s6Step153HeadFvAfter [s6Step153HeadGOut,s6Step153HeadFOut,s6Step153HeadGvOut,s6Step153HeadFvOut] 2 s6Step153HeadBank_outgoingOwned

private theorem s6Step153HeadGv_distinct : (s6Step153HeadGvRow.sign::s6Step153HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step153HeadGv_owned : (s6Step153HeadGvRow.sign::s6Step153HeadGvRow.payload).toFinset⊆s6Step153HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step153HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step153HeadGv_reserved : s6Step153HeadGvBefore.reserve s6Step153HeadGvFresh.toFinset=some s6Step153HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step153HeadGvFresh,arenaWires]
  · norm_num [s6Step153HeadGvBefore,s6Step153HeadFAfter,s6Step153HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step153HeadGvAfter,s6Step153HeadGvBefore,s6Step153HeadFAfter,s6Step153HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step153HeadGv_checked : planRowResizeLog s6Step153HeadGvBefore s6Step153HeadGvRow 93 s6Step153HeadGvFresh=
    some (s6Step153HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 768, 779, 908],775⟩,growRow 775 s6Step153HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step153HeadGvBefore s6Step153HeadGvAfter s6Step153HeadGvRow 93 s6Step153HeadGvFresh
    s6Step153HeadGv_distinct s6Step153HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step153HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step153HeadGvRow.payload++s6Step153HeadGvFresh) s6Step153HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 768, 779, 908],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step153HeadBank_rows : planWindowRowsLog s6Step153HeadGBefore [(s6Step153HeadGRow,194),(s6Step153HeadFRow,194),(s6Step153HeadGvRow,93),(s6Step153HeadFvRow,93)] [s6Step153HeadGFresh,s6Step153HeadFFresh,s6Step153HeadGvFresh,s6Step153HeadFvFresh]=
    some (s6Step153HeadFvAfter,[s6Step153HeadGOut,s6Step153HeadFOut,s6Step153HeadGvOut,s6Step153HeadFvOut],(growRow 777 s6Step153HeadGFresh ++ (growRow 795 s6Step153HeadFFresh ++ (growRow 775 s6Step153HeadGvFresh ++ (growRow 776 s6Step153HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step153HeadFvAfter [] []=some (s6Step153HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step153HeadFvBefore s6Step153HeadFvAfter s6Step153HeadFvAfter
    s6Step153HeadFvRow s6Step153HeadFvOut 93 s6Step153HeadFvFresh [] [] []
    (growRow 776 s6Step153HeadFvFresh) ([]) s6Step153HeadFv_Incoming s6Step153HeadFv_checked h4 s6Step153HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step153HeadGvBefore s6Step153HeadGvAfter s6Step153HeadFvAfter
    s6Step153HeadGvRow s6Step153HeadGvOut 93 s6Step153HeadGvFresh [(s6Step153HeadFvRow,93)] [s6Step153HeadFvFresh] [s6Step153HeadFvOut]
    (growRow 775 s6Step153HeadGvFresh) ((growRow 776 s6Step153HeadFvFresh ++ [])) s6Step153HeadGv_Incoming s6Step153HeadGv_checked h3 s6Step153HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step153HeadFBefore s6Step153HeadFAfter s6Step153HeadFvAfter
    s6Step153HeadFRow s6Step153HeadFOut 194 s6Step153HeadFFresh [(s6Step153HeadGvRow,93),(s6Step153HeadFvRow,93)] [s6Step153HeadGvFresh,s6Step153HeadFvFresh] [s6Step153HeadGvOut,s6Step153HeadFvOut]
    (growRow 795 s6Step153HeadFFresh) ((growRow 775 s6Step153HeadGvFresh ++ (growRow 776 s6Step153HeadFvFresh ++ []))) s6Step153HeadF_Incoming s6Step153HeadF_checked h2 s6Step153HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step153HeadGBefore s6Step153HeadGAfter s6Step153HeadFvAfter
    s6Step153HeadGRow s6Step153HeadGOut 194 s6Step153HeadGFresh [(s6Step153HeadFRow,194),(s6Step153HeadGvRow,93),(s6Step153HeadFvRow,93)] [s6Step153HeadFFresh,s6Step153HeadGvFresh,s6Step153HeadFvFresh] [s6Step153HeadFOut,s6Step153HeadGvOut,s6Step153HeadFvOut]
    (growRow 777 s6Step153HeadGFresh) ((growRow 795 s6Step153HeadFFresh ++ (growRow 775 s6Step153HeadGvFresh ++ (growRow 776 s6Step153HeadFvFresh ++ [])))) s6Step153HeadG_Incoming s6Step153HeadG_checked h1 s6Step153HeadG_Outgoing
  exact h0

private theorem s6Step153HeadBank_checked : compileHmrBankResizeLog .headroom s6Step153HeadGBefore ⟨s6Step153HeadFRow,s6Step153HeadGRow,s6Step153HeadFvRow,s6Step153HeadGvRow⟩ ⟨194,194,93,93⟩ [s6Step153HeadGFresh,s6Step153HeadFFresh,s6Step153HeadGvFresh,s6Step153HeadFvFresh]=
    some (s6Step153HeadFvAfter,⟨s6Step153HeadFOut,s6Step153HeadGOut,s6Step153HeadFvOut,s6Step153HeadGvOut⟩,(growRow 777 s6Step153HeadGFresh ++ (growRow 795 s6Step153HeadFFresh ++ (growRow 775 s6Step153HeadGvFresh ++ (growRow 776 s6Step153HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step153HeadBank_rows]
  rfl

private theorem s6Step153Front_checked : compileHmrSourceFrontLog s6Step153EntryFBefore s6Step153FrontBank 193 92 ⟨193,192,92,90⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step153FrontLog=some s6Step153FrontPlan := by
  have pairEq : s6Step153FrontPair=⟨s6Step153HeadFRow,s6Step153HeadGRow,s6Step153HeadFvRow,s6Step153HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step153FrontHead=⟨s6Step153ExitFRow,s6Step153ExitGRow,s6Step153ExitFvRow,s6Step153ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step153Add0A=s6Step153FrontHead.f.wires := by decide +kernel
  have gEq : s6Step153Add0B=s6Step153FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step153Add1A=s6Step153FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step153Add1B=s6Step153FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step153EntryFBefore s6Step153FrontBank 193 92 ⟨193,192,92,90⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step153FrontLog s6Step153FrontPlan
  · exact s6Step153Front_entry
  · exact s6Step153EntryBank_checked
  · exact s6Step153Front_sigma
  · rfl
  · exact s6Step153Front_branch
  · rfl
  · simpa only [s6Step153FrontPlan,pairEq] using s6Step153HeadBank_checked
  · simpa only [s6Step153FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step153F4_checked
  · exact s6Step153Counter_checked
  · rfl
  · simpa only [s6Step153FrontPlan,headEq] using s6Step153ExitBank_checked

private theorem s6Step153Complete_explicit_checked : compileHmrEarlyStepLog s6Step153EntryFBefore s6Step153FrontBank 193 92 ⟨193,192,92,90⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step153CompleteLog=some s6Step153CompletePlan := by
  let Q := s6Step153EarlyControlPlan
  have hq := s6Step153EarlyControl_plan_checked
  have fv1 : s6Step153CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step153CompleteOut.fv.payload[2]?.getD s6Step153CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step153CompleteOut.fv.payload[3]?.getD s6Step153CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step153CompleteOut.fv.payload[4]?.getD s6Step153CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step153EntryFBefore s6Step153EarlyControlArena s6Step153FrontBank 193 92 ⟨193,192,92,90⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step153CompleteLog s6Step153FrontPlan Q
    s6Step153Front_checked s6Step153Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step153Complete_owned s6Step153Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step153EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 874 s6Step153CompleteOut.fv.second (s6Step153CompleteOut.fv.payload[2]?.getD s6Step153CompleteOut.fv.sign) (s6Step153CompleteOut.fv.payload[3]?.getD s6Step153CompleteOut.fv.sign) (s6Step153CompleteOut.fv.payload[4]?.getD s6Step153CompleteOut.fv.sign) 875 42 s6Step153EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep153Arena : Arena := s6Step153EntryFBefore
def s6PrivateStep153Bank : WindowBank := s6Step153FrontBank
def s6PrivateStep153Spec : HmrSourceWalkStepLog := ⟨193,92,⟨193,192,92,90⟩,42,.early s6Step153CompleteLog⟩
def s6PrivateStep153Plan : HmrSourceStepPlan := .early s6Step153CompletePlan
theorem s6PrivateStep153_source : s6PrivateStep153Spec=s6ObservedLogs144[9] := rfl
theorem s6PrivateStep153_checked : compileHmrSourceStepLog s6PrivateStep153Arena s6PrivateStep153Bank
    s6PrivateStep153Spec.fgWidth s6PrivateStep153Spec.vWidth s6PrivateStep153Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 153 s6PrivateStep153Spec.need none s6PrivateStep153Spec.log=some s6PrivateStep153Plan := by
  change compileHmrSourceStepLog s6Step153EntryFBefore s6Step153FrontBank 193 92 ⟨193,192,92,90⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 153 42 none (.early s6Step153CompleteLog)=some (.early s6Step153CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 153<498)]
  rw [s6Step153Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
