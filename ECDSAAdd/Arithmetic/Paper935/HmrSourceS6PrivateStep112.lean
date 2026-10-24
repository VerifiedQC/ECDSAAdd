import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep110
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

private def s6Step112CompleteMoves : List (Wire × Wire) := [(886,211)]

private def s6Step112EarlyControlLog : HmrEarlyControlLog := ⟨[886, 803, 892, 880, 907],[868],[882],[864, 813, 879, 865, 796, 891],[]⟩

private def s6Step112FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[880], [892], [803], [789]],[[], [], [], []]⟩,[793],[823],[907],[868],[882, 864, 813, 879, 865, 796, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[882, 864, 813, 879, 865, 796, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[907, 868, 882, 864]⟩

private def s6Step112CompleteLog : HmrEarlyStepLog := ⟨s6Step112FrontLog,s6Step112CompleteMoves,s6Step112EarlyControlLog⟩

private def s6Step112ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467],795⟩

private def s6Step112ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789],776⟩

private def s6Step112ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210],777⟩

private def s6Step112ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805],775⟩

private def s6Step112FrontOut : WindowBank := ⟨s6Step112ExitFOut,s6Step112ExitGOut,s6Step112ExitFvOut,s6Step112ExitGvOut⟩

private def s6Step112CompleteOut : WindowBank := s6Step112FrontOut.repacked s6Step112CompleteMoves

private def s6Step112EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step112EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step112EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step112EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step112EarlyControlPositiveArena,[868],s6Step112EarlyControlEqualityArena,[882],⟨⟨793,false⟩,[⟨⟨868,false⟩,882⟩]⟩⟩

private def s6Step112EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step112EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step112EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step112EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step112EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step112EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step112EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,886⟩,⟨⟨772,false⟩,803⟩,⟨⟨771,false⟩,892⟩,⟨⟨770,false⟩,880⟩,⟨⟨769,false⟩,907⟩]⟩

private def s6Step112EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step112EarlyControlZeroArena,s6Step112EarlyControlZeroPlan,s6Step112EarlyControlClassPlan,s6Step112EarlyControlFlagArena,s6Step112EarlyControlFittedArena,s6Step112EarlyControlHistoryArena,s6Step112EarlyControlSigmaArena,s6Step112EarlyControlOutputArena,s6Step112EarlyControlLog⟩

private def s6Step112CounterWork : List Wire := [907, 868, 882, 864]

private theorem s6Step112Counter_bounded : s6Step112CounterWork.toFinset⊆arenaWires := by norm_num [s6Step112CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step112HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step112CounterDuring : Arena := ⟨s6Step112HeadFvAfter.live∪s6Step112CounterWork.toFinset,Finset.union_subset s6Step112HeadFvAfter.bounded s6Step112Counter_bounded⟩

private def s6Step112EntryFFresh : List Wire := []

private def s6Step112EntryFvFresh : List Wire := []

private def s6Step112EntryGFresh : List Wire := []

private def s6Step112EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step112EntryGvAfter : Arena := s6Step112EntryFBefore

private def s6Step112EntryGvFresh : List Wire := []

private def s6Step112ExitFExtra : List Wire := [892]

private def s6Step112ExitGExtra : List Wire := [211, 880]

private def s6Step112ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,211),(212,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step112ExitGvExtra : List Wire := [803]

private def s6Step112Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step112Add0Work : List Wire := [882, 864, 813, 879, 865, 796, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step112Add0_bounded : s6Step112Add0Work.toFinset⊆arenaWires := by
  have h : s6Step112Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step112Add0During : Arena := ⟨s6Step112Add0Arena.live∪s6Step112Add0Work.toFinset,Finset.union_subset s6Step112Add0Arena.bounded s6Step112Add0_bounded⟩

private def s6Step112Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step112Add1Work : List Wire := [882, 864, 813, 879, 865, 796, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step112Add1_bounded : s6Step112Add1Work.toFinset⊆arenaWires := by
  have h : s6Step112Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step112Add1During : Arena := ⟨s6Step112Add1Arena.live∪s6Step112Add1Work.toFinset,Finset.union_subset s6Step112Add1Arena.bounded s6Step112Add1_bounded⟩

private def s6Step112F4FlagArena : Arena := ⟨s6Step112HeadFvAfter.live∪{907},Finset.union_subset s6Step112HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step112F4Plan : HmrHybridF4Plan := ⟨s6Step112F4FlagArena,[907],s6Step112Add0Arena,[868],s6Step112Add0During,s6Step112Add0Work,s6Step112Add1During,s6Step112Add1Work⟩

private def s6Step112HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 892],795⟩

private def s6Step112HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789],776⟩

private def s6Step112HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 880],777⟩

private def s6Step112HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 803],775⟩

private def s6Step112FrontHead : WindowBank := ⟨s6Step112HeadFOut,s6Step112HeadGOut,s6Step112HeadFvOut,s6Step112HeadGvOut⟩

private def s6Step112EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467],795⟩

private def s6Step112EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818],776⟩

private def s6Step112EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211],777⟩

private def s6Step112EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805],775⟩

private def s6Step112FrontPair : WindowBank := ⟨s6Step112EntryFOut,s6Step112EntryGOut,s6Step112EntryFvOut,s6Step112EntryGvOut⟩

private def s6Step112FrontSigmaArena : Arena := ⟨s6Step112EntryGvAfter.live∪{793},Finset.union_subset s6Step112EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step112HeadFFresh : List Wire := [892]

private def s6Step112HeadFvFresh : List Wire := [789]

private def s6Step112HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step112HeadGFresh : List Wire := [880]

private def s6Step112HeadGvFresh : List Wire := [803]

private def s6Step112FrontPlan : HmrSourceFront := ⟨s6Step112EntryGvAfter,s6Step112FrontPair,(growRow 795 s6Step112EntryFFresh ++ (growRow 777 s6Step112EntryGFresh ++ (growRow 776 s6Step112EntryFvFresh ++ (growRow 775 s6Step112EntryGvFresh ++ [])))),s6Step112FrontSigmaArena,[793],s6Step112HeadGBefore,[823],
  s6Step112HeadFvAfter,s6Step112FrontHead,(growRow 777 s6Step112HeadGFresh ++ (growRow 795 s6Step112HeadFFresh ++ (growRow 775 s6Step112HeadGvFresh ++ (growRow 776 s6Step112HeadFvFresh ++ [])))),s6Step112F4Plan,s6Step112CounterDuring,s6Step112CounterWork,s6Step112ExitGvAfter,s6Step112FrontOut,(shrinkRow 777 s6Step112ExitGExtra ++ (shrinkRow 795 s6Step112ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step112ExitGvExtra ++ []))))⟩

private def s6Step112CompletePlan : HmrEarlyStepPlan := ⟨s6Step112FrontPlan,s6Step112EarlyControlArena,s6Step112EarlyControlPlan,s6Step112CompleteMoves⟩

private theorem s6Step112Complete_apart : List.Disjoint (s6Step112CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [793, 823, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] := by
  have nd : ((s6Step112CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[793, 823, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step112Complete_owned : (s6Step112CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step112EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step112EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step112CompleteRelocationMove0Borrowed : Arena := ⟨s6Step112ExitGvAfter.live∪{211},Finset.union_subset s6Step112ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step112CompleteRelocation_move0_owned : 886∈s6Step112ExitGvAfter.live := by norm_num [s6Step112ExitGvAfter,arenaWires]

private theorem s6Step112CompleteRelocation_move0_reserve : s6Step112ExitGvAfter.reserve {211}=some s6Step112CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step112ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step112CompleteRelocation_move0_retire : s6Step112CompleteRelocationMove0Borrowed.retireSet {886}=s6Step112EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step112CompleteRelocationMove0Borrowed s6Step112EarlyControlArena {886}
  change s6Step112EarlyControlArena.live=(s6Step112ExitGvAfter.live∪{211})\{886}
  apply hmrArena_update_of_filter_check s6Step112ExitGvAfter s6Step112EarlyControlArena (fun q => ([(0,211),(212,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [211] [886] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step112CompleteRelocation_checked : s6Step112ExitGvAfter.checkRepack [(886,211)]=some s6Step112EarlyControlArena := by
  have tail1 : s6Step112EarlyControlArena.checkRepack []=some s6Step112EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step112ExitGvAfter s6Step112CompleteRelocationMove0Borrowed s6Step112EarlyControlArena s6Step112EarlyControlArena 886 211 []
    s6Step112CompleteRelocation_move0_owned s6Step112CompleteRelocation_move0_reserve s6Step112CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step112Complete_repack : s6Step112ExitGvAfter.checkRepack s6Step112CompleteMoves=some s6Step112EarlyControlArena := by
  simpa only [s6Step112CompleteMoves] using s6Step112CompleteRelocation_checked

private theorem s6Step112EarlyControl_branchOwned : ([823] : List Wire).toFinset⊆s6Step112EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step112EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step112EarlyControl_branch : compileHmrBranchRetirement s6Step112EarlyControlSigmaArena 823=some s6Step112EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step112EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step112EarlyControlSigmaArena s6Step112EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [823] rfl rfl
    decide +kernel

private theorem s6Step112EarlyControl_classEqualityBorrow : s6Step112EarlyControlPositiveArena.checkBorrow (([793, 868] : List Wire).length-1) s6Step112EarlyControlLog.classWork=some s6Step112EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step112EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step112EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step112EarlyControlEqualityArena,s6Step112EarlyControlPositiveArena,s6Step112EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step112EarlyControl_classEqualityOwned : ([793, 868] : List Wire).toFinset⊆s6Step112EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step112EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step112EarlyControl_classEquality : compileHmrEqualityLog s6Step112EarlyControlPositiveArena [793, 868] 0 s6Step112EarlyControlLog.classWork=some (s6Step112EarlyControlEqualityArena,s6Step112EarlyControlLog.classWork,s6Step112EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step112EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step112EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step112EarlyControl_classOwned : ([769, 907, 793] : List Wire).toFinset⊆s6Step112EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step112EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step112EarlyControl_positiveBorrow : s6Step112EarlyControlZeroArena.checkBorrow (1) s6Step112EarlyControlLog.positiveWork=some s6Step112EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step112EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step112EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step112EarlyControlZeroArena s6Step112EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step112EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step112EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step112EarlyControl_class : compileHmrSourceClassLog s6Step112EarlyControlZeroArena false 769 s6Step112EarlyControlZeroPlan.top 0 793 s6Step112EarlyControlLog.positiveWork s6Step112EarlyControlLog.classWork=some s6Step112EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step112EarlyControlClassPlan s6Step112EarlyControlZeroArena false 769 s6Step112EarlyControlZeroPlan.top 0 793
  constructor
  · decide +kernel
  · exact s6Step112EarlyControl_classOwned
  · exact s6Step112EarlyControl_positiveBorrow
  · exact s6Step112EarlyControl_classEquality

private theorem s6Step112EarlyControl_entryRecordOwned : ([823, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step112EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step112EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step112EarlyControl_entrySigmaOwned : ([793, 254] : List Wire).toFinset⊆s6Step112EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step112EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step112EarlyControl_fitBorrow : s6Step112EarlyControlFlagArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step112EarlyControlLog.recordFresh=some s6Step112EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step112EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step112EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step112EarlyControlFittedArena,s6Step112EarlyControlFlagArena,s6Step112EarlyControlLog,arenaWires]

private theorem s6Step112EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step112EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step112EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step112EarlyControl_fit : compileHmrRecordGrowLog s6Step112EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step112EarlyControlLog.recordFresh=some s6Step112EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step112EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step112EarlyControl_fitBorrow

private theorem s6Step112EarlyControl_flagsBorrow : s6Step112EarlyControlEqualityArena.checkBorrow (6) s6Step112EarlyControlLog.flagWork=some s6Step112EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step112EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step112EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step112EarlyControlFlagArena,s6Step112EarlyControlEqualityArena,s6Step112EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step112EarlyControl_flagsOwned : ([882, 253, 252, 251] : List Wire).toFinset⊆s6Step112EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step112EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step112EarlyControl_flags : compileHmrFlagsLog s6Step112EarlyControlClassPlan.equalityArena s6Step112EarlyControlClassPlan.equality.top 253 252 251 s6Step112EarlyControlLog.flagWork=some s6Step112EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step112EarlyControl_flagsOwned⟩
  · exact s6Step112EarlyControl_flagsBorrow

private theorem s6Step112EarlyControl_historyBorrow : s6Step112EarlyControlArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step112EarlyControlLog.recordFresh=some s6Step112EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step112EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step112EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step112EarlyControlArena s6Step112EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step112EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step112EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step112EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step112EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step112EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step112EarlyControl_history : compileHmrRecordGrowLog s6Step112EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step112EarlyControlLog.recordFresh=some s6Step112EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step112EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step112EarlyControl_historyBorrow

private theorem s6Step112EarlyControl_sigmaOwned : ([254, 793] : List Wire).toFinset⊆s6Step112EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step112EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step112EarlyControl_sigmaReleaseOwned : ([793] : List Wire).toFinset⊆s6Step112EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step112EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step112EarlyControl_sigmaRelease : s6Step112EarlyControlHistoryArena.release {793} (fun _ => false)=some s6Step112EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step112EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step112EarlyControlHistoryArena s6Step112EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [793] rfl rfl
    decide +kernel

private theorem s6Step112EarlyControl_sigma : compileHmrSigmaDropLog s6Step112EarlyControlHistoryArena false 0 0 254 793 []=some s6Step112EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step112EarlyControl_sigmaOwned⟩
  · exact s6Step112EarlyControl_sigmaRelease

private theorem s6Step112EarlyControl_zeroBorrow : s6Step112EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step112EarlyControlLog.zeroWork=some s6Step112EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step112EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step112EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step112EarlyControlArena s6Step112EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step112EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step112EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step112EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step112EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step112EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step112EarlyControl_zero : compileHmrEqualityLog s6Step112EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step112EarlyControlLog.zeroWork=some (s6Step112EarlyControlZeroArena,s6Step112EarlyControlLog.zeroWork,s6Step112EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step112EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step112EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step112EarlyControl_logged : s6Step112EarlyControlPlan.Logged s6Step112EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 793 254 253 252 251 823 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step112EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step112EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step112EarlyControl_zero
  · exact s6Step112EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step112EarlyControl_flags
  · exact s6Step112EarlyControl_fit
  · exact s6Step112EarlyControl_history
  · exact s6Step112EarlyControl_sigma
  · exact s6Step112EarlyControl_branch

private theorem s6Step112EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step112EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 793 254 253 252 251 823 37 s6Step112EarlyControlLog=some s6Step112EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step112EarlyControlPlan s6Step112EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 793 254 253 252 251 823 37 s6Step112EarlyControl_logged

private def s6Step112EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467],795⟩

private def s6Step112EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818],776⟩

private def s6Step112EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211],777⟩

private def s6Step112EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805],775⟩

private def s6Step112FrontBank : WindowBank := ⟨s6Step112EntryFRow,s6Step112EntryGRow,s6Step112EntryFvRow,s6Step112EntryGvRow⟩

private def s6Step112Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 892, 795]

private def s6Step112Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 880, 777]

private def s6Step112Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 776]

private def s6Step112Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 803, 775]

private theorem s6Step112Counter_apart : Disjoint s6Step112HeadFvAfter.live s6Step112CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step112HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step112Counter_borrowed : s6Step112HeadFvAfter.checkBorrow 4 s6Step112CounterWork=some s6Step112CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step112HeadFvAfter s6Step112CounterDuring s6Step112CounterWork.toFinset s6Step112Counter_bounded s6Step112Counter_apart rfl

private theorem s6Step112Counter_owned : (793::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step112HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step112HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step112Counter_checked : compileHmrCounterStepLog s6Step112HeadFvAfter true 793 [774, 773, 772, 771, 770, 769] s6Step112CounterWork=some s6Step112CounterDuring := by
  have owned : ∀q∈793::[774, 773, 772, 771, 770, 769],q∈s6Step112HeadFvAfter.live := fun q hq => s6Step112Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step112Counter_borrowed

private def s6Step112EntryFAfter : Arena := s6Step112EntryFBefore

private theorem s6Step112EntryBank_incomingDistinct : ([s6Step112EntryFRow,s6Step112EntryGRow,s6Step112EntryFvRow,s6Step112EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step112EntryF_Incoming : rowsOwned s6Step112EntryFBefore [s6Step112EntryFRow,s6Step112EntryGRow,s6Step112EntryFvRow,s6Step112EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step112EntryFRow,s6Step112EntryGRow,s6Step112EntryFvRow,s6Step112EntryGvRow] 0 s6Step112EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step112EntryFBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step112EntryBank_outgoingOwned : rowsOwned s6Step112EntryGvAfter [s6Step112EntryFOut,s6Step112EntryGOut,s6Step112EntryFvOut,s6Step112EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step112EntryGvAfter (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step112EntryF_Outgoing : rowsOwned s6Step112EntryGvAfter [s6Step112EntryFOut,s6Step112EntryGOut,s6Step112EntryFvOut,s6Step112EntryGvOut] :=
  hmrRows_owned_drop s6Step112EntryGvAfter [s6Step112EntryFOut,s6Step112EntryGOut,s6Step112EntryFvOut,s6Step112EntryGvOut] 0 s6Step112EntryBank_outgoingOwned

private theorem s6Step112EntryF_distinct : (s6Step112EntryFRow.sign::s6Step112EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step112EntryF_owned : (s6Step112EntryFRow.sign::s6Step112EntryFRow.payload).toFinset⊆s6Step112EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step112EntryFBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step112EntryF_reserved : s6Step112EntryFBefore.reserve s6Step112EntryFFresh.toFinset=some s6Step112EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step112EntryFFresh,arenaWires]
  · norm_num [s6Step112EntryFBefore,s6Step112EntryFFresh,arenaWires]
  · simp only [s6Step112EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step112EntryF_checked : planRowResizeLog s6Step112EntryFBefore s6Step112EntryFRow 212 s6Step112EntryFFresh=
    some (s6Step112EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467],795⟩,growRow 795 s6Step112EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step112EntryFBefore s6Step112EntryFAfter s6Step112EntryFRow 212 s6Step112EntryFFresh
    s6Step112EntryF_distinct s6Step112EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step112EntryF_reserved
  have rowEq : WindowRow.mk (s6Step112EntryFRow.payload++s6Step112EntryFFresh) s6Step112EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step112EntryFvAfter : Arena := s6Step112EntryFBefore

private def s6Step112EntryFvBefore : Arena := s6Step112EntryFBefore

private theorem s6Step112EntryFv_Incoming : rowsOwned s6Step112EntryFvBefore [s6Step112EntryFvRow,s6Step112EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step112EntryFRow,s6Step112EntryGRow,s6Step112EntryFvRow,s6Step112EntryGvRow] 2 s6Step112EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step112EntryFvBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step112EntryFv_Outgoing : rowsOwned s6Step112EntryGvAfter [s6Step112EntryFvOut,s6Step112EntryGvOut] :=
  hmrRows_owned_drop s6Step112EntryGvAfter [s6Step112EntryFOut,s6Step112EntryGOut,s6Step112EntryFvOut,s6Step112EntryGvOut] 2 s6Step112EntryBank_outgoingOwned

private theorem s6Step112EntryFv_distinct : (s6Step112EntryFvRow.sign::s6Step112EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step112EntryFv_owned : (s6Step112EntryFvRow.sign::s6Step112EntryFvRow.payload).toFinset⊆s6Step112EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step112EntryFvBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step112EntryFv_reserved : s6Step112EntryFvBefore.reserve s6Step112EntryFvFresh.toFinset=some s6Step112EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step112EntryFvFresh,arenaWires]
  · norm_num [s6Step112EntryFvBefore,s6Step112EntryFBefore,s6Step112EntryFvFresh,arenaWires]
  · simp only [s6Step112EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step112EntryFv_checked : planRowResizeLog s6Step112EntryFvBefore s6Step112EntryFvRow 69 s6Step112EntryFvFresh=
    some (s6Step112EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818],776⟩,growRow 776 s6Step112EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step112EntryFvBefore s6Step112EntryFvAfter s6Step112EntryFvRow 69 s6Step112EntryFvFresh
    s6Step112EntryFv_distinct s6Step112EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step112EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step112EntryFvRow.payload++s6Step112EntryFvFresh) s6Step112EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step112EntryGAfter : Arena := s6Step112EntryFBefore

private def s6Step112EntryGBefore : Arena := s6Step112EntryFBefore

private theorem s6Step112EntryG_Incoming : rowsOwned s6Step112EntryGBefore [s6Step112EntryGRow,s6Step112EntryFvRow,s6Step112EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step112EntryFRow,s6Step112EntryGRow,s6Step112EntryFvRow,s6Step112EntryGvRow] 1 s6Step112EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step112EntryGBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step112EntryG_Outgoing : rowsOwned s6Step112EntryGvAfter [s6Step112EntryGOut,s6Step112EntryFvOut,s6Step112EntryGvOut] :=
  hmrRows_owned_drop s6Step112EntryGvAfter [s6Step112EntryFOut,s6Step112EntryGOut,s6Step112EntryFvOut,s6Step112EntryGvOut] 1 s6Step112EntryBank_outgoingOwned

private theorem s6Step112EntryG_distinct : (s6Step112EntryGRow.sign::s6Step112EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step112EntryG_owned : (s6Step112EntryGRow.sign::s6Step112EntryGRow.payload).toFinset⊆s6Step112EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step112EntryGBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step112EntryG_reserved : s6Step112EntryGBefore.reserve s6Step112EntryGFresh.toFinset=some s6Step112EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step112EntryGFresh,arenaWires]
  · norm_num [s6Step112EntryGBefore,s6Step112EntryFBefore,s6Step112EntryGFresh,arenaWires]
  · simp only [s6Step112EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step112EntryG_checked : planRowResizeLog s6Step112EntryGBefore s6Step112EntryGRow 212 s6Step112EntryGFresh=
    some (s6Step112EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211],777⟩,growRow 777 s6Step112EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step112EntryGBefore s6Step112EntryGAfter s6Step112EntryGRow 212 s6Step112EntryGFresh
    s6Step112EntryG_distinct s6Step112EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step112EntryG_reserved
  have rowEq : WindowRow.mk (s6Step112EntryGRow.payload++s6Step112EntryGFresh) s6Step112EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step112EntryGvBefore : Arena := s6Step112EntryFBefore

private theorem s6Step112EntryGv_Incoming : rowsOwned s6Step112EntryGvBefore [s6Step112EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step112EntryFRow,s6Step112EntryGRow,s6Step112EntryFvRow,s6Step112EntryGvRow] 3 s6Step112EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step112EntryGvBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step112EntryGv_Outgoing : rowsOwned s6Step112EntryGvAfter [s6Step112EntryGvOut] :=
  hmrRows_owned_drop s6Step112EntryGvAfter [s6Step112EntryFOut,s6Step112EntryGOut,s6Step112EntryFvOut,s6Step112EntryGvOut] 3 s6Step112EntryBank_outgoingOwned

private theorem s6Step112EntryGv_distinct : (s6Step112EntryGvRow.sign::s6Step112EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step112EntryGv_owned : (s6Step112EntryGvRow.sign::s6Step112EntryGvRow.payload).toFinset⊆s6Step112EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step112EntryGvBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step112EntryGv_reserved : s6Step112EntryGvBefore.reserve s6Step112EntryGvFresh.toFinset=some s6Step112EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step112EntryGvFresh,arenaWires]
  · norm_num [s6Step112EntryGvBefore,s6Step112EntryFBefore,s6Step112EntryGvFresh,arenaWires]
  · simp only [s6Step112EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step112EntryGv_checked : planRowResizeLog s6Step112EntryGvBefore s6Step112EntryGvRow 69 s6Step112EntryGvFresh=
    some (s6Step112EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805],775⟩,growRow 775 s6Step112EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step112EntryGvBefore s6Step112EntryGvAfter s6Step112EntryGvRow 69 s6Step112EntryGvFresh
    s6Step112EntryGv_distinct s6Step112EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step112EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step112EntryGvRow.payload++s6Step112EntryGvFresh) s6Step112EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step112EntryBank_rows : planWindowRowsLog s6Step112EntryFBefore [(s6Step112EntryFRow,212),(s6Step112EntryGRow,212),(s6Step112EntryFvRow,69),(s6Step112EntryGvRow,69)] [s6Step112EntryFFresh,s6Step112EntryGFresh,s6Step112EntryFvFresh,s6Step112EntryGvFresh]=
    some (s6Step112EntryGvAfter,[s6Step112EntryFOut,s6Step112EntryGOut,s6Step112EntryFvOut,s6Step112EntryGvOut],(growRow 795 s6Step112EntryFFresh ++ (growRow 777 s6Step112EntryGFresh ++ (growRow 776 s6Step112EntryFvFresh ++ (growRow 775 s6Step112EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step112EntryGvAfter [] []=some (s6Step112EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step112EntryGvBefore s6Step112EntryGvAfter s6Step112EntryGvAfter
    s6Step112EntryGvRow s6Step112EntryGvOut 69 s6Step112EntryGvFresh [] [] []
    (growRow 775 s6Step112EntryGvFresh) ([]) s6Step112EntryGv_Incoming s6Step112EntryGv_checked h4 s6Step112EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step112EntryFvBefore s6Step112EntryFvAfter s6Step112EntryGvAfter
    s6Step112EntryFvRow s6Step112EntryFvOut 69 s6Step112EntryFvFresh [(s6Step112EntryGvRow,69)] [s6Step112EntryGvFresh] [s6Step112EntryGvOut]
    (growRow 776 s6Step112EntryFvFresh) ((growRow 775 s6Step112EntryGvFresh ++ [])) s6Step112EntryFv_Incoming s6Step112EntryFv_checked h3 s6Step112EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step112EntryGBefore s6Step112EntryGAfter s6Step112EntryGvAfter
    s6Step112EntryGRow s6Step112EntryGOut 212 s6Step112EntryGFresh [(s6Step112EntryFvRow,69),(s6Step112EntryGvRow,69)] [s6Step112EntryFvFresh,s6Step112EntryGvFresh] [s6Step112EntryFvOut,s6Step112EntryGvOut]
    (growRow 777 s6Step112EntryGFresh) ((growRow 776 s6Step112EntryFvFresh ++ (growRow 775 s6Step112EntryGvFresh ++ []))) s6Step112EntryG_Incoming s6Step112EntryG_checked h2 s6Step112EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step112EntryFBefore s6Step112EntryFAfter s6Step112EntryGvAfter
    s6Step112EntryFRow s6Step112EntryFOut 212 s6Step112EntryFFresh [(s6Step112EntryGRow,212),(s6Step112EntryFvRow,69),(s6Step112EntryGvRow,69)] [s6Step112EntryGFresh,s6Step112EntryFvFresh,s6Step112EntryGvFresh] [s6Step112EntryGOut,s6Step112EntryFvOut,s6Step112EntryGvOut]
    (growRow 795 s6Step112EntryFFresh) ((growRow 777 s6Step112EntryGFresh ++ (growRow 776 s6Step112EntryFvFresh ++ (growRow 775 s6Step112EntryGvFresh ++ [])))) s6Step112EntryF_Incoming s6Step112EntryF_checked h1 s6Step112EntryF_Outgoing
  exact h0

private theorem s6Step112EntryBank_checked : compileHmrBankResizeLog .entry s6Step112EntryFBefore ⟨s6Step112EntryFRow,s6Step112EntryGRow,s6Step112EntryFvRow,s6Step112EntryGvRow⟩ ⟨212,212,69,69⟩ [s6Step112EntryFFresh,s6Step112EntryGFresh,s6Step112EntryFvFresh,s6Step112EntryGvFresh]=
    some (s6Step112EntryGvAfter,⟨s6Step112EntryFOut,s6Step112EntryGOut,s6Step112EntryFvOut,s6Step112EntryGvOut⟩,(growRow 795 s6Step112EntryFFresh ++ (growRow 777 s6Step112EntryGFresh ++ (growRow 776 s6Step112EntryFvFresh ++ (growRow 775 s6Step112EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step112EntryBank_rows]
  rfl

private def s6Step112ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,211),(212,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step112ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,211),(212,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step112ExitFBefore : Arena := s6Step112ExitGAfter

private def s6Step112ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 892],795⟩

private def s6Step112ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789],776⟩

private def s6Step112ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 880],777⟩

private def s6Step112ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 803],775⟩

private theorem s6Step112ExitBank_incomingDistinct : ([s6Step112ExitGRow,s6Step112ExitFRow,s6Step112ExitFvRow,s6Step112ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step112ExitF_Incoming : rowsOwned s6Step112ExitFBefore [s6Step112ExitFRow,s6Step112ExitFvRow,s6Step112ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step112ExitGRow,s6Step112ExitFRow,s6Step112ExitFvRow,s6Step112ExitGvRow] 1 s6Step112ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step112ExitFBefore (fun q => ([(0,211),(212,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step112ExitBank_outgoingOwned : rowsOwned s6Step112ExitGvAfter [s6Step112ExitGOut,s6Step112ExitFOut,s6Step112ExitFvOut,s6Step112ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step112ExitGvAfter (fun q => ([(0,211),(212,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step112ExitF_Outgoing : rowsOwned s6Step112ExitGvAfter [s6Step112ExitFOut,s6Step112ExitFvOut,s6Step112ExitGvOut] :=
  hmrRows_owned_drop s6Step112ExitGvAfter [s6Step112ExitGOut,s6Step112ExitFOut,s6Step112ExitFvOut,s6Step112ExitGvOut] 1 s6Step112ExitBank_outgoingOwned

private theorem s6Step112ExitF_distinct : (s6Step112ExitFRow.sign::s6Step112ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step112ExitF_owned : (s6Step112ExitFRow.sign::s6Step112ExitFRow.payload).toFinset⊆s6Step112ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step112ExitFBefore (fun q => ([(0,211),(212,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step112ExitF_retired : s6Step112ExitFBefore.retireSet s6Step112ExitFExtra.toFinset=s6Step112ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step112ExitFBefore s6Step112ExitFAfter s6Step112ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step112ExitFBefore s6Step112ExitFAfter (fun q => ([(0,211),(212,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,211),(212,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step112ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step112ExitF_checked : planRowResizeLog s6Step112ExitFBefore s6Step112ExitFRow 212 []=
    some (s6Step112ExitFAfter,s6Step112ExitFOut,shrinkRow 795 s6Step112ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step112ExitFBefore s6Step112ExitFRow 212 s6Step112ExitF_distinct s6Step112ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step112ExitFRow.payload.take 212) s6Step112ExitFRow.sign=s6Step112ExitFOut := by decide +kernel
  have hi : s6Step112ExitFRow.payload.drop 212=s6Step112ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step112ExitF_retired] at result
  exact result

private def s6Step112ExitFvAfter : Arena := s6Step112ExitFAfter

private def s6Step112ExitFvBefore : Arena := s6Step112ExitFAfter

private theorem s6Step112ExitFv_Incoming : rowsOwned s6Step112ExitFvBefore [s6Step112ExitFvRow,s6Step112ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step112ExitGRow,s6Step112ExitFRow,s6Step112ExitFvRow,s6Step112ExitGvRow] 2 s6Step112ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step112ExitFvBefore (fun q => ([(0,211),(212,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step112ExitFv_Outgoing : rowsOwned s6Step112ExitGvAfter [s6Step112ExitFvOut,s6Step112ExitGvOut] :=
  hmrRows_owned_drop s6Step112ExitGvAfter [s6Step112ExitGOut,s6Step112ExitFOut,s6Step112ExitFvOut,s6Step112ExitGvOut] 2 s6Step112ExitBank_outgoingOwned

private theorem s6Step112ExitFv_distinct : (s6Step112ExitFvRow.sign::s6Step112ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step112ExitFv_owned : (s6Step112ExitFvRow.sign::s6Step112ExitFvRow.payload).toFinset⊆s6Step112ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step112ExitFvBefore (fun q => ([(0,211),(212,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step112ExitFv_reserved : s6Step112ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step112ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step112ExitFv_checked : planRowResizeLog s6Step112ExitFvBefore s6Step112ExitFvRow 70 []=
    some (s6Step112ExitFvAfter,s6Step112ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step112ExitFvBefore s6Step112ExitFvAfter s6Step112ExitFvRow 70 []
    s6Step112ExitFv_distinct s6Step112ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step112ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step112ExitFvRow.payload++[]) s6Step112ExitFvRow.sign=s6Step112ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step112ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step112ExitG_Incoming : rowsOwned s6Step112ExitGBefore [s6Step112ExitGRow,s6Step112ExitFRow,s6Step112ExitFvRow,s6Step112ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step112ExitGRow,s6Step112ExitFRow,s6Step112ExitFvRow,s6Step112ExitGvRow] 0 s6Step112ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step112ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step112ExitG_Outgoing : rowsOwned s6Step112ExitGvAfter [s6Step112ExitGOut,s6Step112ExitFOut,s6Step112ExitFvOut,s6Step112ExitGvOut] :=
  hmrRows_owned_drop s6Step112ExitGvAfter [s6Step112ExitGOut,s6Step112ExitFOut,s6Step112ExitFvOut,s6Step112ExitGvOut] 0 s6Step112ExitBank_outgoingOwned

private theorem s6Step112ExitG_distinct : (s6Step112ExitGRow.sign::s6Step112ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step112ExitG_owned : (s6Step112ExitGRow.sign::s6Step112ExitGRow.payload).toFinset⊆s6Step112ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step112ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step112ExitG_retired : s6Step112ExitGBefore.retireSet s6Step112ExitGExtra.toFinset=s6Step112ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step112ExitGBefore s6Step112ExitGAfter s6Step112ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step112ExitGBefore s6Step112ExitGAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,211),(212,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step112ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step112ExitG_checked : planRowResizeLog s6Step112ExitGBefore s6Step112ExitGRow 211 []=
    some (s6Step112ExitGAfter,s6Step112ExitGOut,shrinkRow 777 s6Step112ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step112ExitGBefore s6Step112ExitGRow 211 s6Step112ExitG_distinct s6Step112ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step112ExitGRow.payload.take 211) s6Step112ExitGRow.sign=s6Step112ExitGOut := by decide +kernel
  have hi : s6Step112ExitGRow.payload.drop 211=s6Step112ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step112ExitG_retired] at result
  exact result

private def s6Step112ExitGvBefore : Arena := s6Step112ExitFAfter

private theorem s6Step112ExitGv_Incoming : rowsOwned s6Step112ExitGvBefore [s6Step112ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step112ExitGRow,s6Step112ExitFRow,s6Step112ExitFvRow,s6Step112ExitGvRow] 3 s6Step112ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step112ExitGvBefore (fun q => ([(0,211),(212,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step112ExitGv_Outgoing : rowsOwned s6Step112ExitGvAfter [s6Step112ExitGvOut] :=
  hmrRows_owned_drop s6Step112ExitGvAfter [s6Step112ExitGOut,s6Step112ExitFOut,s6Step112ExitFvOut,s6Step112ExitGvOut] 3 s6Step112ExitBank_outgoingOwned

private theorem s6Step112ExitGv_distinct : (s6Step112ExitGvRow.sign::s6Step112ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step112ExitGv_owned : (s6Step112ExitGvRow.sign::s6Step112ExitGvRow.payload).toFinset⊆s6Step112ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step112ExitGvBefore (fun q => ([(0,211),(212,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step112ExitGv_retired : s6Step112ExitGvBefore.retireSet s6Step112ExitGvExtra.toFinset=s6Step112ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step112ExitGvBefore s6Step112ExitGvAfter s6Step112ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step112ExitGvBefore s6Step112ExitGvAfter (fun q => ([(0,211),(212,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,211),(212,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step112ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step112ExitGv_checked : planRowResizeLog s6Step112ExitGvBefore s6Step112ExitGvRow 69 []=
    some (s6Step112ExitGvAfter,s6Step112ExitGvOut,shrinkRow 775 s6Step112ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step112ExitGvBefore s6Step112ExitGvRow 69 s6Step112ExitGv_distinct s6Step112ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step112ExitGvRow.payload.take 69) s6Step112ExitGvRow.sign=s6Step112ExitGvOut := by decide +kernel
  have hi : s6Step112ExitGvRow.payload.drop 69=s6Step112ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step112ExitGv_retired] at result
  exact result

private theorem s6Step112ExitBank_rows : planWindowRowsLog s6Step112ExitGBefore [(s6Step112ExitGRow,211),(s6Step112ExitFRow,212),(s6Step112ExitFvRow,70),(s6Step112ExitGvRow,69)] [[],[],[],[]]=
    some (s6Step112ExitGvAfter,[s6Step112ExitGOut,s6Step112ExitFOut,s6Step112ExitFvOut,s6Step112ExitGvOut],(shrinkRow 777 s6Step112ExitGExtra ++ (shrinkRow 795 s6Step112ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step112ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step112ExitGvAfter [] []=some (s6Step112ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step112ExitGvBefore s6Step112ExitGvAfter s6Step112ExitGvAfter
    s6Step112ExitGvRow s6Step112ExitGvOut 69 [] [] [] []
    (shrinkRow 775 s6Step112ExitGvExtra) ([]) s6Step112ExitGv_Incoming s6Step112ExitGv_checked h4 s6Step112ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step112ExitFvBefore s6Step112ExitFvAfter s6Step112ExitGvAfter
    s6Step112ExitFvRow s6Step112ExitFvOut 70 [] [(s6Step112ExitGvRow,69)] [[]] [s6Step112ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step112ExitGvExtra ++ [])) s6Step112ExitFv_Incoming s6Step112ExitFv_checked h3 s6Step112ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step112ExitFBefore s6Step112ExitFAfter s6Step112ExitGvAfter
    s6Step112ExitFRow s6Step112ExitFOut 212 [] [(s6Step112ExitFvRow,70),(s6Step112ExitGvRow,69)] [[],[]] [s6Step112ExitFvOut,s6Step112ExitGvOut]
    (shrinkRow 795 s6Step112ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step112ExitGvExtra ++ []))) s6Step112ExitF_Incoming s6Step112ExitF_checked h2 s6Step112ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step112ExitGBefore s6Step112ExitGAfter s6Step112ExitGvAfter
    s6Step112ExitGRow s6Step112ExitGOut 211 [] [(s6Step112ExitFRow,212),(s6Step112ExitFvRow,70),(s6Step112ExitGvRow,69)] [[],[],[]] [s6Step112ExitFOut,s6Step112ExitFvOut,s6Step112ExitGvOut]
    (shrinkRow 777 s6Step112ExitGExtra) ((shrinkRow 795 s6Step112ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step112ExitGvExtra ++ [])))) s6Step112ExitG_Incoming s6Step112ExitG_checked h1 s6Step112ExitG_Outgoing
  exact h0

private theorem s6Step112ExitBank_checked : compileHmrBankResizeLog .exit s6Step112ExitGBefore ⟨s6Step112ExitFRow,s6Step112ExitGRow,s6Step112ExitFvRow,s6Step112ExitGvRow⟩ ⟨212,211,70,69⟩ [[],[],[],[]]=
    some (s6Step112ExitGvAfter,⟨s6Step112ExitFOut,s6Step112ExitGOut,s6Step112ExitFvOut,s6Step112ExitGvOut⟩,(shrinkRow 777 s6Step112ExitGExtra ++ (shrinkRow 795 s6Step112ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step112ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step112ExitBank_rows]
  rfl

private theorem s6Step112Add0_apart : Disjoint s6Step112Add0Arena.live s6Step112Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step112Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step112Add0_card : s6Step112Add0Arena.live.card=873 := by
  decide +kernel

private theorem s6Step112Add0_borrowed : s6Step112Add0Arena.checkBorrow (hmrHybridCount s6Step112Add0Arena s6Step112Add0B.length) s6Step112Add0Work=some s6Step112Add0During := by
  have len : s6Step112Add0Work.length=hmrHybridCount s6Step112Add0Arena s6Step112Add0B.length := by
    rw [hmrHybridCount,s6Step112Add0_card]
    decide +kernel
  have nd : s6Step112Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step112Add0Arena s6Step112Add0During s6Step112Add0Work.toFinset s6Step112Add0_bounded s6Step112Add0_apart rfl

private theorem s6Step112Add0_distinct : (907::823::868::(s6Step112Add0A++s6Step112Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step112Add0_owned : (907::823::868::(s6Step112Add0A++s6Step112Add0B)).toFinset⊆s6Step112Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step112Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step112Add0_checked : compileHmrHybridCinLog s6Step112Add0Arena 823 907 868 s6Step112Add0A s6Step112Add0B s6Step112Add0Work=some s6Step112Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step112Add0Arena s6Step112Add0During 823 907 868 s6Step112Add0A s6Step112Add0B s6Step112Add0Work
    (by decide +kernel) (by decide +kernel) s6Step112Add0_distinct
    (fun q hq => s6Step112Add0_owned (List.mem_toFinset.mpr hq)) s6Step112Add0_borrowed

private theorem s6Step112Add1_apart : Disjoint s6Step112Add1Arena.live s6Step112Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step112Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step112Add1_card : s6Step112Add1Arena.live.card=873 := by
  decide +kernel

private theorem s6Step112Add1_borrowed : s6Step112Add1Arena.checkBorrow (hmrHybridCount s6Step112Add1Arena s6Step112Add1B.length) s6Step112Add1Work=some s6Step112Add1During := by
  have len : s6Step112Add1Work.length=hmrHybridCount s6Step112Add1Arena s6Step112Add1B.length := by
    rw [hmrHybridCount,s6Step112Add1_card]
    decide +kernel
  have nd : s6Step112Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step112Add1Arena s6Step112Add1During s6Step112Add1Work.toFinset s6Step112Add1_bounded s6Step112Add1_apart rfl

private theorem s6Step112Add1_distinct : (907::823::868::(s6Step112Add1A++s6Step112Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step112Add1_owned : (907::823::868::(s6Step112Add1A++s6Step112Add1B)).toFinset⊆s6Step112Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step112Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step112Add1_checked : compileHmrHybridCinLog s6Step112Add1Arena 823 907 868 s6Step112Add1A s6Step112Add1B s6Step112Add1Work=some s6Step112Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step112Add1Arena s6Step112Add1During 823 907 868 s6Step112Add1A s6Step112Add1B s6Step112Add1Work
    (by decide +kernel) (by decide +kernel) s6Step112Add1_distinct
    (fun q hq => s6Step112Add1_owned (List.mem_toFinset.mpr hq)) s6Step112Add1_borrowed

private theorem s6Step112F4_apart : Disjoint (s6Step112Add0A++s6Step112Add0B).toFinset (s6Step112Add1A++s6Step112Add1B).toFinset := by
  have nd : ((s6Step112Add0A++s6Step112Add0B)++(s6Step112Add1A++s6Step112Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step112F4_carry : s6Step112F4FlagArena.checkBorrow 1 [868]=some s6Step112Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step112F4FlagArena,s6Step112HeadFvAfter,arenaWires]
  · change s6Step112Add0Arena.live=(s6Step112HeadFvAfter.live∪{907})∪{868}
    apply hmrArena_union_pair_of_filter_check s6Step112HeadFvAfter s6Step112Add0Arena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) 907 868 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step112F4_distinct : (793::823::907::868::((s6Step112Add0A++s6Step112Add1A)++(s6Step112Add0B++s6Step112Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step112F4_flag : s6Step112HeadFvAfter.checkBorrow 1 [907]=some s6Step112F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step112HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step112F4_owned : (793::823::((s6Step112Add0A++s6Step112Add1A)++(s6Step112Add0B++s6Step112Add1B))).toFinset⊆s6Step112HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step112HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step112F4_checked : compileHmrHybridF4Log s6Step112HeadFvAfter 793 823 s6Step112Add0A s6Step112Add0B s6Step112Add1A s6Step112Add1B [907] [868] s6Step112Add0Work s6Step112Add1Work=some s6Step112F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step112HeadFvAfter s6Step112F4FlagArena s6Step112Add0Arena s6Step112Add0During s6Step112Add1During 793 823
    s6Step112Add0A s6Step112Add0B s6Step112Add1A s6Step112Add1B [907] [868] s6Step112Add0Work s6Step112Add1Work
    (fun q hq => s6Step112F4_owned (List.mem_toFinset.mpr hq)) s6Step112F4_flag s6Step112F4_carry
    s6Step112F4_distinct s6Step112F4_apart s6Step112Add0_checked s6Step112Add1_checked

private theorem s6Step112Front_branch : s6Step112FrontSigmaArena.checkBorrow 1 [823]=some s6Step112HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step112FrontSigmaArena,s6Step112EntryGvAfter,s6Step112EntryFBefore,arenaWires]
  · change s6Step112HeadGBefore.live=(s6Step112EntryGvAfter.live∪{793})∪{823}
    apply hmrArena_union_pair_of_filter_check s6Step112EntryGvAfter s6Step112HeadGBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) 793 823 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step112Front_entry : HmrFrontEntryValid s6Step112EntryFBefore s6Step112FrontBank 212 69 ⟨212,211,70,69⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step112FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step112EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step112EntryFBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step112FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step112Front_sigma : s6Step112EntryGvAfter.checkBorrow 1 [793]=some s6Step112FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step112EntryGvAfter,s6Step112EntryFBefore,arenaWires]
  · rfl

private def s6Step112HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step112HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step112HeadFBefore : Arena := s6Step112HeadGAfter

private def s6Step112HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467],795⟩

private def s6Step112HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818],776⟩

private def s6Step112HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211],777⟩

private def s6Step112HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805],775⟩

private theorem s6Step112HeadBank_incomingDistinct : ([s6Step112HeadGRow,s6Step112HeadFRow,s6Step112HeadGvRow,s6Step112HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step112HeadF_Incoming : rowsOwned s6Step112HeadFBefore [s6Step112HeadFRow,s6Step112HeadGvRow,s6Step112HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step112HeadGRow,s6Step112HeadFRow,s6Step112HeadGvRow,s6Step112HeadFvRow] 1 s6Step112HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step112HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step112HeadBank_outgoingOwned : rowsOwned s6Step112HeadFvAfter [s6Step112HeadGOut,s6Step112HeadFOut,s6Step112HeadGvOut,s6Step112HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step112HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step112HeadF_Outgoing : rowsOwned s6Step112HeadFvAfter [s6Step112HeadFOut,s6Step112HeadGvOut,s6Step112HeadFvOut] :=
  hmrRows_owned_drop s6Step112HeadFvAfter [s6Step112HeadGOut,s6Step112HeadFOut,s6Step112HeadGvOut,s6Step112HeadFvOut] 1 s6Step112HeadBank_outgoingOwned

private theorem s6Step112HeadF_distinct : (s6Step112HeadFRow.sign::s6Step112HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step112HeadF_owned : (s6Step112HeadFRow.sign::s6Step112HeadFRow.payload).toFinset⊆s6Step112HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step112HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step112HeadF_reserved : s6Step112HeadFBefore.reserve s6Step112HeadFFresh.toFinset=some s6Step112HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step112HeadFFresh,arenaWires]
  · norm_num [s6Step112HeadFBefore,s6Step112HeadGAfter,s6Step112HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step112HeadFBefore s6Step112HeadFAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step112HeadFFresh rfl rfl
    · norm_num [s6Step112HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step112HeadF_checked : planRowResizeLog s6Step112HeadFBefore s6Step112HeadFRow 213 s6Step112HeadFFresh=
    some (s6Step112HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 892],795⟩,growRow 795 s6Step112HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step112HeadFBefore s6Step112HeadFAfter s6Step112HeadFRow 213 s6Step112HeadFFresh
    s6Step112HeadF_distinct s6Step112HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step112HeadF_reserved
  have rowEq : WindowRow.mk (s6Step112HeadFRow.payload++s6Step112HeadFFresh) s6Step112HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 892],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step112HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step112HeadFvBefore : Arena := s6Step112HeadGvAfter

private theorem s6Step112HeadFv_Incoming : rowsOwned s6Step112HeadFvBefore [s6Step112HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step112HeadGRow,s6Step112HeadFRow,s6Step112HeadGvRow,s6Step112HeadFvRow] 3 s6Step112HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step112HeadFvBefore (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step112HeadFv_Outgoing : rowsOwned s6Step112HeadFvAfter [s6Step112HeadFvOut] :=
  hmrRows_owned_drop s6Step112HeadFvAfter [s6Step112HeadGOut,s6Step112HeadFOut,s6Step112HeadGvOut,s6Step112HeadFvOut] 3 s6Step112HeadBank_outgoingOwned

private theorem s6Step112HeadFv_distinct : (s6Step112HeadFvRow.sign::s6Step112HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step112HeadFv_owned : (s6Step112HeadFvRow.sign::s6Step112HeadFvRow.payload).toFinset⊆s6Step112HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step112HeadFvBefore (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step112HeadFv_reserved : s6Step112HeadFvBefore.reserve s6Step112HeadFvFresh.toFinset=some s6Step112HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step112HeadFvFresh,arenaWires]
  · norm_num [s6Step112HeadFvBefore,s6Step112HeadGvAfter,s6Step112HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step112HeadFvBefore s6Step112HeadFvAfter (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step112HeadFvFresh rfl rfl
    · norm_num [s6Step112HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step112HeadFv_checked : planRowResizeLog s6Step112HeadFvBefore s6Step112HeadFvRow 70 s6Step112HeadFvFresh=
    some (s6Step112HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789],776⟩,growRow 776 s6Step112HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step112HeadFvBefore s6Step112HeadFvAfter s6Step112HeadFvRow 70 s6Step112HeadFvFresh
    s6Step112HeadFv_distinct s6Step112HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step112HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step112HeadFvRow.payload++s6Step112HeadFvFresh) s6Step112HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step112HeadG_Incoming : rowsOwned s6Step112HeadGBefore [s6Step112HeadGRow,s6Step112HeadFRow,s6Step112HeadGvRow,s6Step112HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step112HeadGRow,s6Step112HeadFRow,s6Step112HeadGvRow,s6Step112HeadFvRow] 0 s6Step112HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step112HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step112HeadG_Outgoing : rowsOwned s6Step112HeadFvAfter [s6Step112HeadGOut,s6Step112HeadFOut,s6Step112HeadGvOut,s6Step112HeadFvOut] :=
  hmrRows_owned_drop s6Step112HeadFvAfter [s6Step112HeadGOut,s6Step112HeadFOut,s6Step112HeadGvOut,s6Step112HeadFvOut] 0 s6Step112HeadBank_outgoingOwned

private theorem s6Step112HeadG_distinct : (s6Step112HeadGRow.sign::s6Step112HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step112HeadG_owned : (s6Step112HeadGRow.sign::s6Step112HeadGRow.payload).toFinset⊆s6Step112HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step112HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step112HeadG_reserved : s6Step112HeadGBefore.reserve s6Step112HeadGFresh.toFinset=some s6Step112HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step112HeadGFresh,arenaWires]
  · norm_num [s6Step112HeadGBefore,s6Step112HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step112HeadGAfter,s6Step112HeadGBefore,s6Step112HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step112HeadG_checked : planRowResizeLog s6Step112HeadGBefore s6Step112HeadGRow 213 s6Step112HeadGFresh=
    some (s6Step112HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 880],777⟩,growRow 777 s6Step112HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step112HeadGBefore s6Step112HeadGAfter s6Step112HeadGRow 213 s6Step112HeadGFresh
    s6Step112HeadG_distinct s6Step112HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step112HeadG_reserved
  have rowEq : WindowRow.mk (s6Step112HeadGRow.payload++s6Step112HeadGFresh) s6Step112HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 880],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step112HeadGvBefore : Arena := s6Step112HeadFAfter

private theorem s6Step112HeadGv_Incoming : rowsOwned s6Step112HeadGvBefore [s6Step112HeadGvRow,s6Step112HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step112HeadGRow,s6Step112HeadFRow,s6Step112HeadGvRow,s6Step112HeadFvRow] 2 s6Step112HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step112HeadGvBefore (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step112HeadGv_Outgoing : rowsOwned s6Step112HeadFvAfter [s6Step112HeadGvOut,s6Step112HeadFvOut] :=
  hmrRows_owned_drop s6Step112HeadFvAfter [s6Step112HeadGOut,s6Step112HeadFOut,s6Step112HeadGvOut,s6Step112HeadFvOut] 2 s6Step112HeadBank_outgoingOwned

private theorem s6Step112HeadGv_distinct : (s6Step112HeadGvRow.sign::s6Step112HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step112HeadGv_owned : (s6Step112HeadGvRow.sign::s6Step112HeadGvRow.payload).toFinset⊆s6Step112HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step112HeadGvBefore (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step112HeadGv_reserved : s6Step112HeadGvBefore.reserve s6Step112HeadGvFresh.toFinset=some s6Step112HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step112HeadGvFresh,arenaWires]
  · norm_num [s6Step112HeadGvBefore,s6Step112HeadFAfter,s6Step112HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step112HeadGvBefore s6Step112HeadGvAfter (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step112HeadGvFresh rfl rfl
    · norm_num [s6Step112HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step112HeadGv_checked : planRowResizeLog s6Step112HeadGvBefore s6Step112HeadGvRow 70 s6Step112HeadGvFresh=
    some (s6Step112HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 803],775⟩,growRow 775 s6Step112HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step112HeadGvBefore s6Step112HeadGvAfter s6Step112HeadGvRow 70 s6Step112HeadGvFresh
    s6Step112HeadGv_distinct s6Step112HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step112HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step112HeadGvRow.payload++s6Step112HeadGvFresh) s6Step112HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 803],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step112HeadBank_rows : planWindowRowsLog s6Step112HeadGBefore [(s6Step112HeadGRow,213),(s6Step112HeadFRow,213),(s6Step112HeadGvRow,70),(s6Step112HeadFvRow,70)] [s6Step112HeadGFresh,s6Step112HeadFFresh,s6Step112HeadGvFresh,s6Step112HeadFvFresh]=
    some (s6Step112HeadFvAfter,[s6Step112HeadGOut,s6Step112HeadFOut,s6Step112HeadGvOut,s6Step112HeadFvOut],(growRow 777 s6Step112HeadGFresh ++ (growRow 795 s6Step112HeadFFresh ++ (growRow 775 s6Step112HeadGvFresh ++ (growRow 776 s6Step112HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step112HeadFvAfter [] []=some (s6Step112HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step112HeadFvBefore s6Step112HeadFvAfter s6Step112HeadFvAfter
    s6Step112HeadFvRow s6Step112HeadFvOut 70 s6Step112HeadFvFresh [] [] []
    (growRow 776 s6Step112HeadFvFresh) ([]) s6Step112HeadFv_Incoming s6Step112HeadFv_checked h4 s6Step112HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step112HeadGvBefore s6Step112HeadGvAfter s6Step112HeadFvAfter
    s6Step112HeadGvRow s6Step112HeadGvOut 70 s6Step112HeadGvFresh [(s6Step112HeadFvRow,70)] [s6Step112HeadFvFresh] [s6Step112HeadFvOut]
    (growRow 775 s6Step112HeadGvFresh) ((growRow 776 s6Step112HeadFvFresh ++ [])) s6Step112HeadGv_Incoming s6Step112HeadGv_checked h3 s6Step112HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step112HeadFBefore s6Step112HeadFAfter s6Step112HeadFvAfter
    s6Step112HeadFRow s6Step112HeadFOut 213 s6Step112HeadFFresh [(s6Step112HeadGvRow,70),(s6Step112HeadFvRow,70)] [s6Step112HeadGvFresh,s6Step112HeadFvFresh] [s6Step112HeadGvOut,s6Step112HeadFvOut]
    (growRow 795 s6Step112HeadFFresh) ((growRow 775 s6Step112HeadGvFresh ++ (growRow 776 s6Step112HeadFvFresh ++ []))) s6Step112HeadF_Incoming s6Step112HeadF_checked h2 s6Step112HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step112HeadGBefore s6Step112HeadGAfter s6Step112HeadFvAfter
    s6Step112HeadGRow s6Step112HeadGOut 213 s6Step112HeadGFresh [(s6Step112HeadFRow,213),(s6Step112HeadGvRow,70),(s6Step112HeadFvRow,70)] [s6Step112HeadFFresh,s6Step112HeadGvFresh,s6Step112HeadFvFresh] [s6Step112HeadFOut,s6Step112HeadGvOut,s6Step112HeadFvOut]
    (growRow 777 s6Step112HeadGFresh) ((growRow 795 s6Step112HeadFFresh ++ (growRow 775 s6Step112HeadGvFresh ++ (growRow 776 s6Step112HeadFvFresh ++ [])))) s6Step112HeadG_Incoming s6Step112HeadG_checked h1 s6Step112HeadG_Outgoing
  exact h0

private theorem s6Step112HeadBank_checked : compileHmrBankResizeLog .headroom s6Step112HeadGBefore ⟨s6Step112HeadFRow,s6Step112HeadGRow,s6Step112HeadFvRow,s6Step112HeadGvRow⟩ ⟨213,213,70,70⟩ [s6Step112HeadGFresh,s6Step112HeadFFresh,s6Step112HeadGvFresh,s6Step112HeadFvFresh]=
    some (s6Step112HeadFvAfter,⟨s6Step112HeadFOut,s6Step112HeadGOut,s6Step112HeadFvOut,s6Step112HeadGvOut⟩,(growRow 777 s6Step112HeadGFresh ++ (growRow 795 s6Step112HeadFFresh ++ (growRow 775 s6Step112HeadGvFresh ++ (growRow 776 s6Step112HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step112HeadBank_rows]
  rfl

private theorem s6Step112Front_checked : compileHmrSourceFrontLog s6Step112EntryFBefore s6Step112FrontBank 212 69 ⟨212,211,70,69⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step112FrontLog=some s6Step112FrontPlan := by
  have pairEq : s6Step112FrontPair=⟨s6Step112HeadFRow,s6Step112HeadGRow,s6Step112HeadFvRow,s6Step112HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step112FrontHead=⟨s6Step112ExitFRow,s6Step112ExitGRow,s6Step112ExitFvRow,s6Step112ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step112Add0A=s6Step112FrontHead.f.wires := by decide +kernel
  have gEq : s6Step112Add0B=s6Step112FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step112Add1A=s6Step112FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step112Add1B=s6Step112FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step112EntryFBefore s6Step112FrontBank 212 69 ⟨212,211,70,69⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step112FrontLog s6Step112FrontPlan
  · exact s6Step112Front_entry
  · exact s6Step112EntryBank_checked
  · exact s6Step112Front_sigma
  · rfl
  · exact s6Step112Front_branch
  · rfl
  · simpa only [s6Step112FrontPlan,pairEq] using s6Step112HeadBank_checked
  · simpa only [s6Step112FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step112F4_checked
  · exact s6Step112Counter_checked
  · rfl
  · simpa only [s6Step112FrontPlan,headEq] using s6Step112ExitBank_checked

private theorem s6Step112Complete_explicit_checked : compileHmrEarlyStepLog s6Step112EntryFBefore s6Step112FrontBank 212 69 ⟨212,211,70,69⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step112CompleteLog=some s6Step112CompletePlan := by
  let Q := s6Step112EarlyControlPlan
  have hq := s6Step112EarlyControl_plan_checked
  have fv1 : s6Step112CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step112CompleteOut.fv.payload[2]?.getD s6Step112CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step112CompleteOut.fv.payload[3]?.getD s6Step112CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step112CompleteOut.fv.payload[4]?.getD s6Step112CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step112EntryFBefore s6Step112EarlyControlArena s6Step112FrontBank 212 69 ⟨212,211,70,69⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step112CompleteLog s6Step112FrontPlan Q
    s6Step112Front_checked s6Step112Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step112Complete_owned s6Step112Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step112EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 793 s6Step112CompleteOut.fv.second (s6Step112CompleteOut.fv.payload[2]?.getD s6Step112CompleteOut.fv.sign) (s6Step112CompleteOut.fv.payload[3]?.getD s6Step112CompleteOut.fv.sign) (s6Step112CompleteOut.fv.payload[4]?.getD s6Step112CompleteOut.fv.sign) 823 37 s6Step112EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep112Arena : Arena := s6Step112EntryFBefore
def s6PrivateStep112Bank : WindowBank := s6Step112FrontBank
def s6PrivateStep112Spec : HmrSourceWalkStepLog := ⟨212,69,⟨212,211,70,69⟩,37,.early s6Step112CompleteLog⟩
def s6PrivateStep112Plan : HmrSourceStepPlan := .early s6Step112CompletePlan
theorem s6PrivateStep112_source : s6PrivateStep112Spec=s6ObservedLogs112[0] := rfl
theorem s6PrivateStep112_checked : compileHmrSourceStepLog s6PrivateStep112Arena s6PrivateStep112Bank
    s6PrivateStep112Spec.fgWidth s6PrivateStep112Spec.vWidth s6PrivateStep112Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]
    6 498 112 s6PrivateStep112Spec.need none s6PrivateStep112Spec.log=some s6PrivateStep112Plan := by
  change compileHmrSourceStepLog s6Step112EntryFBefore s6Step112FrontBank 212 69 ⟨212,211,70,69⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 6 498 112 37 none (.early s6Step112CompleteLog)=some (.early s6Step112CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 112<498)]
  rw [s6Step112Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
