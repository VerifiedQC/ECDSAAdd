import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep101
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

private def s6Step103CompleteMoves : List (Wire × Wire) := [(823,217),(864,473)]

private def s6Step103EarlyControlLog : HmrEarlyControlLog := ⟨[864, 823, 890, 803, 813],[879],[865],[796, 891, 903, 885, 791, 844],[]⟩

private def s6Step103FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[803], [890], [784], [876]],[[], [], [], []]⟩,[845],[907],[813],[879],[865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[813, 879, 865, 796]⟩

private def s6Step103CompleteLog : HmrEarlyStepLog := ⟨s6Step103FrontLog,s6Step103CompleteMoves,s6Step103EarlyControlLog⟩

private def s6Step103ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472],795⟩

private def s6Step103ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 876],776⟩

private def s6Step103ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216],777⟩

private def s6Step103ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784],775⟩

private def s6Step103FrontOut : WindowBank := ⟨s6Step103ExitFOut,s6Step103ExitGOut,s6Step103ExitFvOut,s6Step103ExitGvOut⟩

private def s6Step103CompleteOut : WindowBank := s6Step103FrontOut.repacked s6Step103CompleteMoves

private def s6Step103EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step103EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step103EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step103EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step103EarlyControlPositiveArena,[879],s6Step103EarlyControlEqualityArena,[865],⟨⟨845,false⟩,[⟨⟨879,false⟩,865⟩]⟩⟩

private def s6Step103EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step103EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step103EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step103EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step103EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step103EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step103EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,864⟩,⟨⟨772,false⟩,823⟩,⟨⟨771,false⟩,890⟩,⟨⟨770,false⟩,803⟩,⟨⟨769,false⟩,813⟩]⟩

private def s6Step103EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step103EarlyControlZeroArena,s6Step103EarlyControlZeroPlan,s6Step103EarlyControlClassPlan,s6Step103EarlyControlFlagArena,s6Step103EarlyControlFittedArena,s6Step103EarlyControlHistoryArena,s6Step103EarlyControlSigmaArena,s6Step103EarlyControlOutputArena,s6Step103EarlyControlLog⟩

private def s6Step103CounterWork : List Wire := [813, 879, 865, 796]

private theorem s6Step103Counter_bounded : s6Step103CounterWork.toFinset⊆arenaWires := by norm_num [s6Step103CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step103HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step103CounterDuring : Arena := ⟨s6Step103HeadFvAfter.live∪s6Step103CounterWork.toFinset,Finset.union_subset s6Step103HeadFvAfter.bounded s6Step103Counter_bounded⟩

private def s6Step103EntryFFresh : List Wire := []

private def s6Step103EntryFvFresh : List Wire := []

private def s6Step103EntryGFresh : List Wire := []

private def s6Step103EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step103EntryGvAfter : Arena := s6Step103EntryFBefore

private def s6Step103EntryGvFresh : List Wire := []

private def s6Step103ExitFExtra : List Wire := [473, 890]

private def s6Step103ExitGExtra : List Wire := [217, 803]

private def s6Step103ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,217),(218,473),(474,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step103ExitGvAfter : Arena := s6Step103ExitFAfter

private def s6Step103Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step103Add0Work : List Wire := [865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step103Add0_bounded : s6Step103Add0Work.toFinset⊆arenaWires := by
  have h : s6Step103Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step103Add0During : Arena := ⟨s6Step103Add0Arena.live∪s6Step103Add0Work.toFinset,Finset.union_subset s6Step103Add0Arena.bounded s6Step103Add0_bounded⟩

private def s6Step103Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step103Add1Work : List Wire := [865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step103Add1_bounded : s6Step103Add1Work.toFinset⊆arenaWires := by
  have h : s6Step103Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step103Add1During : Arena := ⟨s6Step103Add1Arena.live∪s6Step103Add1Work.toFinset,Finset.union_subset s6Step103Add1Arena.bounded s6Step103Add1_bounded⟩

private def s6Step103F4FlagArena : Arena := ⟨s6Step103HeadFvAfter.live∪{813},Finset.union_subset s6Step103HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step103F4Plan : HmrHybridF4Plan := ⟨s6Step103F4FlagArena,[813],s6Step103Add0Arena,[879],s6Step103Add0During,s6Step103Add0Work,s6Step103Add1During,s6Step103Add1Work⟩

private def s6Step103HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 890],795⟩

private def s6Step103HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 876],776⟩

private def s6Step103HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 803],777⟩

private def s6Step103HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784],775⟩

private def s6Step103FrontHead : WindowBank := ⟨s6Step103HeadFOut,s6Step103HeadGOut,s6Step103HeadFvOut,s6Step103HeadGvOut⟩

private def s6Step103EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473],795⟩

private def s6Step103EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857],776⟩

private def s6Step103EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],777⟩

private def s6Step103EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856],775⟩

private def s6Step103FrontPair : WindowBank := ⟨s6Step103EntryFOut,s6Step103EntryGOut,s6Step103EntryFvOut,s6Step103EntryGvOut⟩

private def s6Step103FrontSigmaArena : Arena := ⟨s6Step103EntryGvAfter.live∪{845},Finset.union_subset s6Step103EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step103HeadFFresh : List Wire := [890]

private def s6Step103HeadFvFresh : List Wire := [876]

private def s6Step103HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step103HeadGFresh : List Wire := [803]

private def s6Step103HeadGvFresh : List Wire := [784]

private def s6Step103FrontPlan : HmrSourceFront := ⟨s6Step103EntryGvAfter,s6Step103FrontPair,(growRow 795 s6Step103EntryFFresh ++ (growRow 777 s6Step103EntryGFresh ++ (growRow 776 s6Step103EntryFvFresh ++ (growRow 775 s6Step103EntryGvFresh ++ [])))),s6Step103FrontSigmaArena,[845],s6Step103HeadGBefore,[907],
  s6Step103HeadFvAfter,s6Step103FrontHead,(growRow 777 s6Step103HeadGFresh ++ (growRow 795 s6Step103HeadFFresh ++ (growRow 775 s6Step103HeadGvFresh ++ (growRow 776 s6Step103HeadFvFresh ++ [])))),s6Step103F4Plan,s6Step103CounterDuring,s6Step103CounterWork,s6Step103ExitGvAfter,s6Step103FrontOut,(shrinkRow 777 s6Step103ExitGExtra ++ (shrinkRow 795 s6Step103ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))⟩

private def s6Step103CompletePlan : HmrEarlyStepPlan := ⟨s6Step103FrontPlan,s6Step103EarlyControlArena,s6Step103EarlyControlPlan,s6Step103CompleteMoves⟩

private theorem s6Step103Complete_apart : List.Disjoint (s6Step103CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [845, 907, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] := by
  have nd : ((s6Step103CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[845, 907, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step103Complete_owned : (s6Step103CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step103EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step103EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step103CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,473),(474,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step103CompleteRelocationMove0Borrowed : Arena := ⟨s6Step103ExitGvAfter.live∪{217},Finset.union_subset s6Step103ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step103CompleteRelocationMove1Borrowed : Arena := ⟨s6Step103CompleteRelocationMove0After.live∪{473},Finset.union_subset s6Step103CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step103CompleteRelocation_move0_owned : 823∈s6Step103ExitGvAfter.live := by norm_num [s6Step103ExitGvAfter,s6Step103ExitFAfter,arenaWires]

private theorem s6Step103CompleteRelocation_move0_reserve : s6Step103ExitGvAfter.reserve {217}=some s6Step103CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step103ExitGvAfter,s6Step103ExitFAfter,arenaWires]
  · rfl

private theorem s6Step103CompleteRelocation_move0_retire : s6Step103CompleteRelocationMove0Borrowed.retireSet {823}=s6Step103CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step103CompleteRelocationMove0Borrowed s6Step103CompleteRelocationMove0After {823}
  change s6Step103CompleteRelocationMove0After.live=(s6Step103ExitGvAfter.live∪{217})\{823}
  apply hmrArena_update_of_filter_check s6Step103ExitGvAfter s6Step103CompleteRelocationMove0After (fun q => ([(0,217),(218,473),(474,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,473),(474,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [217] [823] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step103CompleteRelocation_move1_owned : 864∈s6Step103CompleteRelocationMove0After.live := by norm_num [s6Step103CompleteRelocationMove0After,arenaWires]

private theorem s6Step103CompleteRelocation_move1_reserve : s6Step103CompleteRelocationMove0After.reserve {473}=some s6Step103CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step103CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step103CompleteRelocation_move1_retire : s6Step103CompleteRelocationMove1Borrowed.retireSet {864}=s6Step103EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step103CompleteRelocationMove1Borrowed s6Step103EarlyControlArena {864}
  change s6Step103EarlyControlArena.live=(s6Step103CompleteRelocationMove0After.live∪{473})\{864}
  apply hmrArena_update_of_filter_check s6Step103CompleteRelocationMove0After s6Step103EarlyControlArena (fun q => ([(0,473),(474,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [473] [864] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step103CompleteRelocation_checked : s6Step103ExitGvAfter.checkRepack [(823,217),(864,473)]=some s6Step103EarlyControlArena := by
  have tail2 : s6Step103EarlyControlArena.checkRepack []=some s6Step103EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step103CompleteRelocationMove0After s6Step103CompleteRelocationMove1Borrowed s6Step103EarlyControlArena s6Step103EarlyControlArena 864 473 []
    s6Step103CompleteRelocation_move1_owned s6Step103CompleteRelocation_move1_reserve s6Step103CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step103ExitGvAfter s6Step103CompleteRelocationMove0Borrowed s6Step103CompleteRelocationMove0After s6Step103EarlyControlArena 823 217 [(864,473)]
    s6Step103CompleteRelocation_move0_owned s6Step103CompleteRelocation_move0_reserve s6Step103CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step103Complete_repack : s6Step103ExitGvAfter.checkRepack s6Step103CompleteMoves=some s6Step103EarlyControlArena := by
  simpa only [s6Step103CompleteMoves] using s6Step103CompleteRelocation_checked

private theorem s6Step103EarlyControl_branchOwned : ([907] : List Wire).toFinset⊆s6Step103EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step103EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step103EarlyControl_branch : compileHmrBranchRetirement s6Step103EarlyControlSigmaArena 907=some s6Step103EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step103EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step103EarlyControlSigmaArena s6Step103EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [907] rfl rfl
    decide +kernel

private theorem s6Step103EarlyControl_classEqualityBorrow : s6Step103EarlyControlPositiveArena.checkBorrow (([845, 879] : List Wire).length-1) s6Step103EarlyControlLog.classWork=some s6Step103EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step103EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step103EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step103EarlyControlEqualityArena,s6Step103EarlyControlPositiveArena,s6Step103EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step103EarlyControl_classEqualityOwned : ([845, 879] : List Wire).toFinset⊆s6Step103EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step103EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step103EarlyControl_classEquality : compileHmrEqualityLog s6Step103EarlyControlPositiveArena [845, 879] 0 s6Step103EarlyControlLog.classWork=some (s6Step103EarlyControlEqualityArena,s6Step103EarlyControlLog.classWork,s6Step103EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step103EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step103EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step103EarlyControl_classOwned : ([769, 813, 845] : List Wire).toFinset⊆s6Step103EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step103EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step103EarlyControl_positiveBorrow : s6Step103EarlyControlZeroArena.checkBorrow (1) s6Step103EarlyControlLog.positiveWork=some s6Step103EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step103EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step103EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step103EarlyControlZeroArena s6Step103EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step103EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step103EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step103EarlyControl_class : compileHmrSourceClassLog s6Step103EarlyControlZeroArena false 769 s6Step103EarlyControlZeroPlan.top 0 845 s6Step103EarlyControlLog.positiveWork s6Step103EarlyControlLog.classWork=some s6Step103EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step103EarlyControlClassPlan s6Step103EarlyControlZeroArena false 769 s6Step103EarlyControlZeroPlan.top 0 845
  constructor
  · decide +kernel
  · exact s6Step103EarlyControl_classOwned
  · exact s6Step103EarlyControl_positiveBorrow
  · exact s6Step103EarlyControl_classEquality

private theorem s6Step103EarlyControl_entryRecordOwned : ([907, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).toFinset⊆s6Step103EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step103EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step103EarlyControl_entrySigmaOwned : ([845, 254] : List Wire).toFinset⊆s6Step103EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step103EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step103EarlyControl_fitBorrow : s6Step103EarlyControlFlagArena.checkBorrow ((35-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).length)) s6Step103EarlyControlLog.recordFresh=some s6Step103EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step103EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step103EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step103EarlyControlFittedArena,s6Step103EarlyControlFlagArena,s6Step103EarlyControlLog,arenaWires]

private theorem s6Step103EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).toFinset⊆s6Step103EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step103EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step103EarlyControl_fit : compileHmrRecordGrowLog s6Step103EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step103EarlyControlLog.recordFresh=some s6Step103EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step103EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step103EarlyControl_fitBorrow

private theorem s6Step103EarlyControl_flagsBorrow : s6Step103EarlyControlEqualityArena.checkBorrow (6) s6Step103EarlyControlLog.flagWork=some s6Step103EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step103EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step103EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step103EarlyControlFlagArena,s6Step103EarlyControlEqualityArena,s6Step103EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step103EarlyControl_flagsOwned : ([865, 253, 252, 251] : List Wire).toFinset⊆s6Step103EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step103EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step103EarlyControl_flags : compileHmrFlagsLog s6Step103EarlyControlClassPlan.equalityArena s6Step103EarlyControlClassPlan.equality.top 253 252 251 s6Step103EarlyControlLog.flagWork=some s6Step103EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step103EarlyControl_flagsOwned⟩
  · exact s6Step103EarlyControl_flagsBorrow

private theorem s6Step103EarlyControl_historyBorrow : s6Step103EarlyControlArena.checkBorrow ((35-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).length)) s6Step103EarlyControlLog.recordFresh=some s6Step103EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step103EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step103EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step103EarlyControlArena s6Step103EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step103EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step103EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step103EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).toFinset⊆s6Step103EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step103EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step103EarlyControl_history : compileHmrRecordGrowLog s6Step103EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step103EarlyControlLog.recordFresh=some s6Step103EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step103EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step103EarlyControl_historyBorrow

private theorem s6Step103EarlyControl_sigmaOwned : ([254, 845] : List Wire).toFinset⊆s6Step103EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step103EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step103EarlyControl_sigmaReleaseOwned : ([845] : List Wire).toFinset⊆s6Step103EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step103EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step103EarlyControl_sigmaRelease : s6Step103EarlyControlHistoryArena.release {845} (fun _ => false)=some s6Step103EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step103EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step103EarlyControlHistoryArena s6Step103EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [845] rfl rfl
    decide +kernel

private theorem s6Step103EarlyControl_sigma : compileHmrSigmaDropLog s6Step103EarlyControlHistoryArena false 0 0 254 845 []=some s6Step103EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step103EarlyControl_sigmaOwned⟩
  · exact s6Step103EarlyControl_sigmaRelease

private theorem s6Step103EarlyControl_zeroBorrow : s6Step103EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step103EarlyControlLog.zeroWork=some s6Step103EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step103EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step103EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step103EarlyControlArena s6Step103EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step103EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step103EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step103EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step103EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step103EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step103EarlyControl_zero : compileHmrEqualityLog s6Step103EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step103EarlyControlLog.zeroWork=some (s6Step103EarlyControlZeroArena,s6Step103EarlyControlLog.zeroWork,s6Step103EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step103EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step103EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step103EarlyControl_logged : s6Step103EarlyControlPlan.Logged s6Step103EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 845 254 253 252 251 907 35 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step103EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step103EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step103EarlyControl_zero
  · exact s6Step103EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step103EarlyControl_flags
  · exact s6Step103EarlyControl_fit
  · exact s6Step103EarlyControl_history
  · exact s6Step103EarlyControl_sigma
  · exact s6Step103EarlyControl_branch

private theorem s6Step103EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step103EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 845 254 253 252 251 907 35 s6Step103EarlyControlLog=some s6Step103EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step103EarlyControlPlan s6Step103EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 845 254 253 252 251 907 35 s6Step103EarlyControl_logged

private def s6Step103EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473],795⟩

private def s6Step103EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857],776⟩

private def s6Step103EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],777⟩

private def s6Step103EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856],775⟩

private def s6Step103FrontBank : WindowBank := ⟨s6Step103EntryFRow,s6Step103EntryGRow,s6Step103EntryFvRow,s6Step103EntryGvRow⟩

private def s6Step103Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 890, 795]

private def s6Step103Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 803, 777]

private def s6Step103Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 876, 776]

private def s6Step103Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 775]

private theorem s6Step103Counter_apart : Disjoint s6Step103HeadFvAfter.live s6Step103CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step103HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step103Counter_borrowed : s6Step103HeadFvAfter.checkBorrow 4 s6Step103CounterWork=some s6Step103CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step103HeadFvAfter s6Step103CounterDuring s6Step103CounterWork.toFinset s6Step103Counter_bounded s6Step103Counter_apart rfl

private theorem s6Step103Counter_owned : (845::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step103HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step103HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step103Counter_checked : compileHmrCounterStepLog s6Step103HeadFvAfter true 845 [774, 773, 772, 771, 770, 769] s6Step103CounterWork=some s6Step103CounterDuring := by
  have owned : ∀q∈845::[774, 773, 772, 771, 770, 769],q∈s6Step103HeadFvAfter.live := fun q hq => s6Step103Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step103Counter_borrowed

private def s6Step103EntryFAfter : Arena := s6Step103EntryFBefore

private theorem s6Step103EntryBank_incomingDistinct : ([s6Step103EntryFRow,s6Step103EntryGRow,s6Step103EntryFvRow,s6Step103EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step103EntryF_Incoming : rowsOwned s6Step103EntryFBefore [s6Step103EntryFRow,s6Step103EntryGRow,s6Step103EntryFvRow,s6Step103EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step103EntryFRow,s6Step103EntryGRow,s6Step103EntryFvRow,s6Step103EntryGvRow] 0 s6Step103EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step103EntryFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step103EntryBank_outgoingOwned : rowsOwned s6Step103EntryGvAfter [s6Step103EntryFOut,s6Step103EntryGOut,s6Step103EntryFvOut,s6Step103EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step103EntryGvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step103EntryF_Outgoing : rowsOwned s6Step103EntryGvAfter [s6Step103EntryFOut,s6Step103EntryGOut,s6Step103EntryFvOut,s6Step103EntryGvOut] :=
  hmrRows_owned_drop s6Step103EntryGvAfter [s6Step103EntryFOut,s6Step103EntryGOut,s6Step103EntryFvOut,s6Step103EntryGvOut] 0 s6Step103EntryBank_outgoingOwned

private theorem s6Step103EntryF_distinct : (s6Step103EntryFRow.sign::s6Step103EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step103EntryF_owned : (s6Step103EntryFRow.sign::s6Step103EntryFRow.payload).toFinset⊆s6Step103EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step103EntryFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step103EntryF_reserved : s6Step103EntryFBefore.reserve s6Step103EntryFFresh.toFinset=some s6Step103EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step103EntryFFresh,arenaWires]
  · norm_num [s6Step103EntryFBefore,s6Step103EntryFFresh,arenaWires]
  · simp only [s6Step103EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step103EntryF_checked : planRowResizeLog s6Step103EntryFBefore s6Step103EntryFRow 218 s6Step103EntryFFresh=
    some (s6Step103EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473],795⟩,growRow 795 s6Step103EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step103EntryFBefore s6Step103EntryFAfter s6Step103EntryFRow 218 s6Step103EntryFFresh
    s6Step103EntryF_distinct s6Step103EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step103EntryF_reserved
  have rowEq : WindowRow.mk (s6Step103EntryFRow.payload++s6Step103EntryFFresh) s6Step103EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step103EntryFvAfter : Arena := s6Step103EntryFBefore

private def s6Step103EntryFvBefore : Arena := s6Step103EntryFBefore

private theorem s6Step103EntryFv_Incoming : rowsOwned s6Step103EntryFvBefore [s6Step103EntryFvRow,s6Step103EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step103EntryFRow,s6Step103EntryGRow,s6Step103EntryFvRow,s6Step103EntryGvRow] 2 s6Step103EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step103EntryFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step103EntryFv_Outgoing : rowsOwned s6Step103EntryGvAfter [s6Step103EntryFvOut,s6Step103EntryGvOut] :=
  hmrRows_owned_drop s6Step103EntryGvAfter [s6Step103EntryFOut,s6Step103EntryGOut,s6Step103EntryFvOut,s6Step103EntryGvOut] 2 s6Step103EntryBank_outgoingOwned

private theorem s6Step103EntryFv_distinct : (s6Step103EntryFvRow.sign::s6Step103EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step103EntryFv_owned : (s6Step103EntryFvRow.sign::s6Step103EntryFvRow.payload).toFinset⊆s6Step103EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step103EntryFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step103EntryFv_reserved : s6Step103EntryFvBefore.reserve s6Step103EntryFvFresh.toFinset=some s6Step103EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step103EntryFvFresh,arenaWires]
  · norm_num [s6Step103EntryFvBefore,s6Step103EntryFBefore,s6Step103EntryFvFresh,arenaWires]
  · simp only [s6Step103EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step103EntryFv_checked : planRowResizeLog s6Step103EntryFvBefore s6Step103EntryFvRow 65 s6Step103EntryFvFresh=
    some (s6Step103EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857],776⟩,growRow 776 s6Step103EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step103EntryFvBefore s6Step103EntryFvAfter s6Step103EntryFvRow 65 s6Step103EntryFvFresh
    s6Step103EntryFv_distinct s6Step103EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step103EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step103EntryFvRow.payload++s6Step103EntryFvFresh) s6Step103EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step103EntryGAfter : Arena := s6Step103EntryFBefore

private def s6Step103EntryGBefore : Arena := s6Step103EntryFBefore

private theorem s6Step103EntryG_Incoming : rowsOwned s6Step103EntryGBefore [s6Step103EntryGRow,s6Step103EntryFvRow,s6Step103EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step103EntryFRow,s6Step103EntryGRow,s6Step103EntryFvRow,s6Step103EntryGvRow] 1 s6Step103EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step103EntryGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step103EntryG_Outgoing : rowsOwned s6Step103EntryGvAfter [s6Step103EntryGOut,s6Step103EntryFvOut,s6Step103EntryGvOut] :=
  hmrRows_owned_drop s6Step103EntryGvAfter [s6Step103EntryFOut,s6Step103EntryGOut,s6Step103EntryFvOut,s6Step103EntryGvOut] 1 s6Step103EntryBank_outgoingOwned

private theorem s6Step103EntryG_distinct : (s6Step103EntryGRow.sign::s6Step103EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step103EntryG_owned : (s6Step103EntryGRow.sign::s6Step103EntryGRow.payload).toFinset⊆s6Step103EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step103EntryGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step103EntryG_reserved : s6Step103EntryGBefore.reserve s6Step103EntryGFresh.toFinset=some s6Step103EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step103EntryGFresh,arenaWires]
  · norm_num [s6Step103EntryGBefore,s6Step103EntryFBefore,s6Step103EntryGFresh,arenaWires]
  · simp only [s6Step103EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step103EntryG_checked : planRowResizeLog s6Step103EntryGBefore s6Step103EntryGRow 218 s6Step103EntryGFresh=
    some (s6Step103EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],777⟩,growRow 777 s6Step103EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step103EntryGBefore s6Step103EntryGAfter s6Step103EntryGRow 218 s6Step103EntryGFresh
    s6Step103EntryG_distinct s6Step103EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step103EntryG_reserved
  have rowEq : WindowRow.mk (s6Step103EntryGRow.payload++s6Step103EntryGFresh) s6Step103EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step103EntryGvBefore : Arena := s6Step103EntryFBefore

private theorem s6Step103EntryGv_Incoming : rowsOwned s6Step103EntryGvBefore [s6Step103EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step103EntryFRow,s6Step103EntryGRow,s6Step103EntryFvRow,s6Step103EntryGvRow] 3 s6Step103EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step103EntryGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step103EntryGv_Outgoing : rowsOwned s6Step103EntryGvAfter [s6Step103EntryGvOut] :=
  hmrRows_owned_drop s6Step103EntryGvAfter [s6Step103EntryFOut,s6Step103EntryGOut,s6Step103EntryFvOut,s6Step103EntryGvOut] 3 s6Step103EntryBank_outgoingOwned

private theorem s6Step103EntryGv_distinct : (s6Step103EntryGvRow.sign::s6Step103EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step103EntryGv_owned : (s6Step103EntryGvRow.sign::s6Step103EntryGvRow.payload).toFinset⊆s6Step103EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step103EntryGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step103EntryGv_reserved : s6Step103EntryGvBefore.reserve s6Step103EntryGvFresh.toFinset=some s6Step103EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step103EntryGvFresh,arenaWires]
  · norm_num [s6Step103EntryGvBefore,s6Step103EntryFBefore,s6Step103EntryGvFresh,arenaWires]
  · simp only [s6Step103EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step103EntryGv_checked : planRowResizeLog s6Step103EntryGvBefore s6Step103EntryGvRow 65 s6Step103EntryGvFresh=
    some (s6Step103EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856],775⟩,growRow 775 s6Step103EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step103EntryGvBefore s6Step103EntryGvAfter s6Step103EntryGvRow 65 s6Step103EntryGvFresh
    s6Step103EntryGv_distinct s6Step103EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step103EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step103EntryGvRow.payload++s6Step103EntryGvFresh) s6Step103EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step103EntryBank_rows : planWindowRowsLog s6Step103EntryFBefore [(s6Step103EntryFRow,218),(s6Step103EntryGRow,218),(s6Step103EntryFvRow,65),(s6Step103EntryGvRow,65)] [s6Step103EntryFFresh,s6Step103EntryGFresh,s6Step103EntryFvFresh,s6Step103EntryGvFresh]=
    some (s6Step103EntryGvAfter,[s6Step103EntryFOut,s6Step103EntryGOut,s6Step103EntryFvOut,s6Step103EntryGvOut],(growRow 795 s6Step103EntryFFresh ++ (growRow 777 s6Step103EntryGFresh ++ (growRow 776 s6Step103EntryFvFresh ++ (growRow 775 s6Step103EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step103EntryGvAfter [] []=some (s6Step103EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step103EntryGvBefore s6Step103EntryGvAfter s6Step103EntryGvAfter
    s6Step103EntryGvRow s6Step103EntryGvOut 65 s6Step103EntryGvFresh [] [] []
    (growRow 775 s6Step103EntryGvFresh) ([]) s6Step103EntryGv_Incoming s6Step103EntryGv_checked h4 s6Step103EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step103EntryFvBefore s6Step103EntryFvAfter s6Step103EntryGvAfter
    s6Step103EntryFvRow s6Step103EntryFvOut 65 s6Step103EntryFvFresh [(s6Step103EntryGvRow,65)] [s6Step103EntryGvFresh] [s6Step103EntryGvOut]
    (growRow 776 s6Step103EntryFvFresh) ((growRow 775 s6Step103EntryGvFresh ++ [])) s6Step103EntryFv_Incoming s6Step103EntryFv_checked h3 s6Step103EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step103EntryGBefore s6Step103EntryGAfter s6Step103EntryGvAfter
    s6Step103EntryGRow s6Step103EntryGOut 218 s6Step103EntryGFresh [(s6Step103EntryFvRow,65),(s6Step103EntryGvRow,65)] [s6Step103EntryFvFresh,s6Step103EntryGvFresh] [s6Step103EntryFvOut,s6Step103EntryGvOut]
    (growRow 777 s6Step103EntryGFresh) ((growRow 776 s6Step103EntryFvFresh ++ (growRow 775 s6Step103EntryGvFresh ++ []))) s6Step103EntryG_Incoming s6Step103EntryG_checked h2 s6Step103EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step103EntryFBefore s6Step103EntryFAfter s6Step103EntryGvAfter
    s6Step103EntryFRow s6Step103EntryFOut 218 s6Step103EntryFFresh [(s6Step103EntryGRow,218),(s6Step103EntryFvRow,65),(s6Step103EntryGvRow,65)] [s6Step103EntryGFresh,s6Step103EntryFvFresh,s6Step103EntryGvFresh] [s6Step103EntryGOut,s6Step103EntryFvOut,s6Step103EntryGvOut]
    (growRow 795 s6Step103EntryFFresh) ((growRow 777 s6Step103EntryGFresh ++ (growRow 776 s6Step103EntryFvFresh ++ (growRow 775 s6Step103EntryGvFresh ++ [])))) s6Step103EntryF_Incoming s6Step103EntryF_checked h1 s6Step103EntryF_Outgoing
  exact h0

private theorem s6Step103EntryBank_checked : compileHmrBankResizeLog .entry s6Step103EntryFBefore ⟨s6Step103EntryFRow,s6Step103EntryGRow,s6Step103EntryFvRow,s6Step103EntryGvRow⟩ ⟨218,218,65,65⟩ [s6Step103EntryFFresh,s6Step103EntryGFresh,s6Step103EntryFvFresh,s6Step103EntryGvFresh]=
    some (s6Step103EntryGvAfter,⟨s6Step103EntryFOut,s6Step103EntryGOut,s6Step103EntryFvOut,s6Step103EntryGvOut⟩,(growRow 795 s6Step103EntryFFresh ++ (growRow 777 s6Step103EntryGFresh ++ (growRow 776 s6Step103EntryFvFresh ++ (growRow 775 s6Step103EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step103EntryBank_rows]
  rfl

private def s6Step103ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,217),(218,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step103ExitFBefore : Arena := s6Step103ExitGAfter

private def s6Step103ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 890],795⟩

private def s6Step103ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 876],776⟩

private def s6Step103ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 803],777⟩

private def s6Step103ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784],775⟩

private theorem s6Step103ExitBank_incomingDistinct : ([s6Step103ExitGRow,s6Step103ExitFRow,s6Step103ExitFvRow,s6Step103ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step103ExitF_Incoming : rowsOwned s6Step103ExitFBefore [s6Step103ExitFRow,s6Step103ExitFvRow,s6Step103ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step103ExitGRow,s6Step103ExitFRow,s6Step103ExitFvRow,s6Step103ExitGvRow] 1 s6Step103ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step103ExitFBefore (fun q => ([(0,217),(218,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step103ExitBank_outgoingOwned : rowsOwned s6Step103ExitGvAfter [s6Step103ExitGOut,s6Step103ExitFOut,s6Step103ExitFvOut,s6Step103ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step103ExitGvAfter (fun q => ([(0,217),(218,473),(474,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step103ExitF_Outgoing : rowsOwned s6Step103ExitGvAfter [s6Step103ExitFOut,s6Step103ExitFvOut,s6Step103ExitGvOut] :=
  hmrRows_owned_drop s6Step103ExitGvAfter [s6Step103ExitGOut,s6Step103ExitFOut,s6Step103ExitFvOut,s6Step103ExitGvOut] 1 s6Step103ExitBank_outgoingOwned

private theorem s6Step103ExitF_distinct : (s6Step103ExitFRow.sign::s6Step103ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step103ExitF_owned : (s6Step103ExitFRow.sign::s6Step103ExitFRow.payload).toFinset⊆s6Step103ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step103ExitFBefore (fun q => ([(0,217),(218,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step103ExitF_retired : s6Step103ExitFBefore.retireSet s6Step103ExitFExtra.toFinset=s6Step103ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step103ExitFBefore s6Step103ExitFAfter s6Step103ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step103ExitFBefore s6Step103ExitFAfter (fun q => ([(0,217),(218,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,217),(218,473),(474,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step103ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step103ExitF_checked : planRowResizeLog s6Step103ExitFBefore s6Step103ExitFRow 217 []=
    some (s6Step103ExitFAfter,s6Step103ExitFOut,shrinkRow 795 s6Step103ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step103ExitFBefore s6Step103ExitFRow 217 s6Step103ExitF_distinct s6Step103ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step103ExitFRow.payload.take 217) s6Step103ExitFRow.sign=s6Step103ExitFOut := by decide +kernel
  have hi : s6Step103ExitFRow.payload.drop 217=s6Step103ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step103ExitF_retired] at result
  exact result

private def s6Step103ExitFvAfter : Arena := s6Step103ExitFAfter

private def s6Step103ExitFvBefore : Arena := s6Step103ExitFAfter

private theorem s6Step103ExitFv_Incoming : rowsOwned s6Step103ExitFvBefore [s6Step103ExitFvRow,s6Step103ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step103ExitGRow,s6Step103ExitFRow,s6Step103ExitFvRow,s6Step103ExitGvRow] 2 s6Step103ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step103ExitFvBefore (fun q => ([(0,217),(218,473),(474,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step103ExitFv_Outgoing : rowsOwned s6Step103ExitGvAfter [s6Step103ExitFvOut,s6Step103ExitGvOut] :=
  hmrRows_owned_drop s6Step103ExitGvAfter [s6Step103ExitGOut,s6Step103ExitFOut,s6Step103ExitFvOut,s6Step103ExitGvOut] 2 s6Step103ExitBank_outgoingOwned

private theorem s6Step103ExitFv_distinct : (s6Step103ExitFvRow.sign::s6Step103ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step103ExitFv_owned : (s6Step103ExitFvRow.sign::s6Step103ExitFvRow.payload).toFinset⊆s6Step103ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step103ExitFvBefore (fun q => ([(0,217),(218,473),(474,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step103ExitFv_reserved : s6Step103ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step103ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step103ExitFv_checked : planRowResizeLog s6Step103ExitFvBefore s6Step103ExitFvRow 66 []=
    some (s6Step103ExitFvAfter,s6Step103ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step103ExitFvBefore s6Step103ExitFvAfter s6Step103ExitFvRow 66 []
    s6Step103ExitFv_distinct s6Step103ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step103ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step103ExitFvRow.payload++[]) s6Step103ExitFvRow.sign=s6Step103ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step103ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step103ExitG_Incoming : rowsOwned s6Step103ExitGBefore [s6Step103ExitGRow,s6Step103ExitFRow,s6Step103ExitFvRow,s6Step103ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step103ExitGRow,s6Step103ExitFRow,s6Step103ExitFvRow,s6Step103ExitGvRow] 0 s6Step103ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step103ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step103ExitG_Outgoing : rowsOwned s6Step103ExitGvAfter [s6Step103ExitGOut,s6Step103ExitFOut,s6Step103ExitFvOut,s6Step103ExitGvOut] :=
  hmrRows_owned_drop s6Step103ExitGvAfter [s6Step103ExitGOut,s6Step103ExitFOut,s6Step103ExitFvOut,s6Step103ExitGvOut] 0 s6Step103ExitBank_outgoingOwned

private theorem s6Step103ExitG_distinct : (s6Step103ExitGRow.sign::s6Step103ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step103ExitG_owned : (s6Step103ExitGRow.sign::s6Step103ExitGRow.payload).toFinset⊆s6Step103ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step103ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step103ExitG_retired : s6Step103ExitGBefore.retireSet s6Step103ExitGExtra.toFinset=s6Step103ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step103ExitGBefore s6Step103ExitGAfter s6Step103ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step103ExitGBefore s6Step103ExitGAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,217),(218,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step103ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step103ExitG_checked : planRowResizeLog s6Step103ExitGBefore s6Step103ExitGRow 217 []=
    some (s6Step103ExitGAfter,s6Step103ExitGOut,shrinkRow 777 s6Step103ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step103ExitGBefore s6Step103ExitGRow 217 s6Step103ExitG_distinct s6Step103ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step103ExitGRow.payload.take 217) s6Step103ExitGRow.sign=s6Step103ExitGOut := by decide +kernel
  have hi : s6Step103ExitGRow.payload.drop 217=s6Step103ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step103ExitG_retired] at result
  exact result

private def s6Step103ExitGvBefore : Arena := s6Step103ExitFAfter

private theorem s6Step103ExitGv_Incoming : rowsOwned s6Step103ExitGvBefore [s6Step103ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step103ExitGRow,s6Step103ExitFRow,s6Step103ExitFvRow,s6Step103ExitGvRow] 3 s6Step103ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step103ExitGvBefore (fun q => ([(0,217),(218,473),(474,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step103ExitGv_Outgoing : rowsOwned s6Step103ExitGvAfter [s6Step103ExitGvOut] :=
  hmrRows_owned_drop s6Step103ExitGvAfter [s6Step103ExitGOut,s6Step103ExitFOut,s6Step103ExitFvOut,s6Step103ExitGvOut] 3 s6Step103ExitBank_outgoingOwned

private theorem s6Step103ExitGv_distinct : (s6Step103ExitGvRow.sign::s6Step103ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step103ExitGv_owned : (s6Step103ExitGvRow.sign::s6Step103ExitGvRow.payload).toFinset⊆s6Step103ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step103ExitGvBefore (fun q => ([(0,217),(218,473),(474,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step103ExitGv_reserved : s6Step103ExitGvBefore.reserve (∅ : Finset Wire)=some s6Step103ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step103ExitGv_checked : planRowResizeLog s6Step103ExitGvBefore s6Step103ExitGvRow 66 []=
    some (s6Step103ExitGvAfter,s6Step103ExitGvOut,growRow 775 []) := by
  have result := planRowResizeLog_of_growth s6Step103ExitGvBefore s6Step103ExitGvAfter s6Step103ExitGvRow 66 []
    s6Step103ExitGv_distinct s6Step103ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step103ExitGv_reserved
  have rowEq : WindowRow.mk (s6Step103ExitGvRow.payload++[]) s6Step103ExitGvRow.sign=s6Step103ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step103ExitBank_rows : planWindowRowsLog s6Step103ExitGBefore [(s6Step103ExitGRow,217),(s6Step103ExitFRow,217),(s6Step103ExitFvRow,66),(s6Step103ExitGvRow,66)] [[],[],[],[]]=
    some (s6Step103ExitGvAfter,[s6Step103ExitGOut,s6Step103ExitFOut,s6Step103ExitFvOut,s6Step103ExitGvOut],(shrinkRow 777 s6Step103ExitGExtra ++ (shrinkRow 795 s6Step103ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  have h4 : planWindowRowsLog s6Step103ExitGvAfter [] []=some (s6Step103ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step103ExitGvBefore s6Step103ExitGvAfter s6Step103ExitGvAfter
    s6Step103ExitGvRow s6Step103ExitGvOut 66 [] [] [] []
    (growRow 775 []) ([]) s6Step103ExitGv_Incoming s6Step103ExitGv_checked h4 s6Step103ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step103ExitFvBefore s6Step103ExitFvAfter s6Step103ExitGvAfter
    s6Step103ExitFvRow s6Step103ExitFvOut 66 [] [(s6Step103ExitGvRow,66)] [[]] [s6Step103ExitGvOut]
    (growRow 776 []) ((growRow 775 [] ++ [])) s6Step103ExitFv_Incoming s6Step103ExitFv_checked h3 s6Step103ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step103ExitFBefore s6Step103ExitFAfter s6Step103ExitGvAfter
    s6Step103ExitFRow s6Step103ExitFOut 217 [] [(s6Step103ExitFvRow,66),(s6Step103ExitGvRow,66)] [[],[]] [s6Step103ExitFvOut,s6Step103ExitGvOut]
    (shrinkRow 795 s6Step103ExitFExtra) ((growRow 776 [] ++ (growRow 775 [] ++ []))) s6Step103ExitF_Incoming s6Step103ExitF_checked h2 s6Step103ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step103ExitGBefore s6Step103ExitGAfter s6Step103ExitGvAfter
    s6Step103ExitGRow s6Step103ExitGOut 217 [] [(s6Step103ExitFRow,217),(s6Step103ExitFvRow,66),(s6Step103ExitGvRow,66)] [[],[],[]] [s6Step103ExitFOut,s6Step103ExitFvOut,s6Step103ExitGvOut]
    (shrinkRow 777 s6Step103ExitGExtra) ((shrinkRow 795 s6Step103ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ [])))) s6Step103ExitG_Incoming s6Step103ExitG_checked h1 s6Step103ExitG_Outgoing
  exact h0

private theorem s6Step103ExitBank_checked : compileHmrBankResizeLog .exit s6Step103ExitGBefore ⟨s6Step103ExitFRow,s6Step103ExitGRow,s6Step103ExitFvRow,s6Step103ExitGvRow⟩ ⟨217,217,66,66⟩ [[],[],[],[]]=
    some (s6Step103ExitGvAfter,⟨s6Step103ExitFOut,s6Step103ExitGOut,s6Step103ExitFvOut,s6Step103ExitGvOut⟩,(shrinkRow 777 s6Step103ExitGExtra ++ (shrinkRow 795 s6Step103ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step103ExitBank_rows]
  rfl

private theorem s6Step103Add0_apart : Disjoint s6Step103Add0Arena.live s6Step103Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step103Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step103Add0_card : s6Step103Add0Arena.live.card=875 := by
  decide +kernel

private theorem s6Step103Add0_borrowed : s6Step103Add0Arena.checkBorrow (hmrHybridCount s6Step103Add0Arena s6Step103Add0B.length) s6Step103Add0Work=some s6Step103Add0During := by
  have len : s6Step103Add0Work.length=hmrHybridCount s6Step103Add0Arena s6Step103Add0B.length := by
    rw [hmrHybridCount,s6Step103Add0_card]
    decide +kernel
  have nd : s6Step103Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step103Add0Arena s6Step103Add0During s6Step103Add0Work.toFinset s6Step103Add0_bounded s6Step103Add0_apart rfl

private theorem s6Step103Add0_distinct : (813::907::879::(s6Step103Add0A++s6Step103Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step103Add0_owned : (813::907::879::(s6Step103Add0A++s6Step103Add0B)).toFinset⊆s6Step103Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step103Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step103Add0_checked : compileHmrHybridCinLog s6Step103Add0Arena 907 813 879 s6Step103Add0A s6Step103Add0B s6Step103Add0Work=some s6Step103Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step103Add0Arena s6Step103Add0During 907 813 879 s6Step103Add0A s6Step103Add0B s6Step103Add0Work
    (by decide +kernel) (by decide +kernel) s6Step103Add0_distinct
    (fun q hq => s6Step103Add0_owned (List.mem_toFinset.mpr hq)) s6Step103Add0_borrowed

private theorem s6Step103Add1_apart : Disjoint s6Step103Add1Arena.live s6Step103Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step103Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step103Add1_card : s6Step103Add1Arena.live.card=875 := by
  decide +kernel

private theorem s6Step103Add1_borrowed : s6Step103Add1Arena.checkBorrow (hmrHybridCount s6Step103Add1Arena s6Step103Add1B.length) s6Step103Add1Work=some s6Step103Add1During := by
  have len : s6Step103Add1Work.length=hmrHybridCount s6Step103Add1Arena s6Step103Add1B.length := by
    rw [hmrHybridCount,s6Step103Add1_card]
    decide +kernel
  have nd : s6Step103Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step103Add1Arena s6Step103Add1During s6Step103Add1Work.toFinset s6Step103Add1_bounded s6Step103Add1_apart rfl

private theorem s6Step103Add1_distinct : (813::907::879::(s6Step103Add1A++s6Step103Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step103Add1_owned : (813::907::879::(s6Step103Add1A++s6Step103Add1B)).toFinset⊆s6Step103Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step103Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step103Add1_checked : compileHmrHybridCinLog s6Step103Add1Arena 907 813 879 s6Step103Add1A s6Step103Add1B s6Step103Add1Work=some s6Step103Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step103Add1Arena s6Step103Add1During 907 813 879 s6Step103Add1A s6Step103Add1B s6Step103Add1Work
    (by decide +kernel) (by decide +kernel) s6Step103Add1_distinct
    (fun q hq => s6Step103Add1_owned (List.mem_toFinset.mpr hq)) s6Step103Add1_borrowed

private theorem s6Step103F4_apart : Disjoint (s6Step103Add0A++s6Step103Add0B).toFinset (s6Step103Add1A++s6Step103Add1B).toFinset := by
  have nd : ((s6Step103Add0A++s6Step103Add0B)++(s6Step103Add1A++s6Step103Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step103F4_carry : s6Step103F4FlagArena.checkBorrow 1 [879]=some s6Step103Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step103F4FlagArena,s6Step103HeadFvAfter,arenaWires]
  · change s6Step103Add0Arena.live=(s6Step103HeadFvAfter.live∪{813})∪{879}
    apply hmrArena_union_pair_of_filter_check s6Step103HeadFvAfter s6Step103Add0Arena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) 813 879 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step103F4_distinct : (845::907::813::879::((s6Step103Add0A++s6Step103Add1A)++(s6Step103Add0B++s6Step103Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step103F4_flag : s6Step103HeadFvAfter.checkBorrow 1 [813]=some s6Step103F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step103HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step103F4_owned : (845::907::((s6Step103Add0A++s6Step103Add1A)++(s6Step103Add0B++s6Step103Add1B))).toFinset⊆s6Step103HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step103HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step103F4_checked : compileHmrHybridF4Log s6Step103HeadFvAfter 845 907 s6Step103Add0A s6Step103Add0B s6Step103Add1A s6Step103Add1B [813] [879] s6Step103Add0Work s6Step103Add1Work=some s6Step103F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step103HeadFvAfter s6Step103F4FlagArena s6Step103Add0Arena s6Step103Add0During s6Step103Add1During 845 907
    s6Step103Add0A s6Step103Add0B s6Step103Add1A s6Step103Add1B [813] [879] s6Step103Add0Work s6Step103Add1Work
    (fun q hq => s6Step103F4_owned (List.mem_toFinset.mpr hq)) s6Step103F4_flag s6Step103F4_carry
    s6Step103F4_distinct s6Step103F4_apart s6Step103Add0_checked s6Step103Add1_checked

private theorem s6Step103Front_branch : s6Step103FrontSigmaArena.checkBorrow 1 [907]=some s6Step103HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step103FrontSigmaArena,s6Step103EntryGvAfter,s6Step103EntryFBefore,arenaWires]
  · change s6Step103HeadGBefore.live=(s6Step103EntryGvAfter.live∪{845})∪{907}
    apply hmrArena_union_pair_of_filter_check s6Step103EntryGvAfter s6Step103HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 845 907 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step103Front_entry : HmrFrontEntryValid s6Step103EntryFBefore s6Step103FrontBank 218 65 ⟨217,217,66,66⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step103FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step103EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step103EntryFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step103FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step103Front_sigma : s6Step103EntryGvAfter.checkBorrow 1 [845]=some s6Step103FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step103EntryGvAfter,s6Step103EntryFBefore,arenaWires]
  · rfl

private def s6Step103HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step103HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step103HeadFBefore : Arena := s6Step103HeadGAfter

private def s6Step103HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473],795⟩

private def s6Step103HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857],776⟩

private def s6Step103HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],777⟩

private def s6Step103HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856],775⟩

private theorem s6Step103HeadBank_incomingDistinct : ([s6Step103HeadGRow,s6Step103HeadFRow,s6Step103HeadGvRow,s6Step103HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step103HeadF_Incoming : rowsOwned s6Step103HeadFBefore [s6Step103HeadFRow,s6Step103HeadGvRow,s6Step103HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step103HeadGRow,s6Step103HeadFRow,s6Step103HeadGvRow,s6Step103HeadFvRow] 1 s6Step103HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step103HeadFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step103HeadBank_outgoingOwned : rowsOwned s6Step103HeadFvAfter [s6Step103HeadGOut,s6Step103HeadFOut,s6Step103HeadGvOut,s6Step103HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step103HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step103HeadF_Outgoing : rowsOwned s6Step103HeadFvAfter [s6Step103HeadFOut,s6Step103HeadGvOut,s6Step103HeadFvOut] :=
  hmrRows_owned_drop s6Step103HeadFvAfter [s6Step103HeadGOut,s6Step103HeadFOut,s6Step103HeadGvOut,s6Step103HeadFvOut] 1 s6Step103HeadBank_outgoingOwned

private theorem s6Step103HeadF_distinct : (s6Step103HeadFRow.sign::s6Step103HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step103HeadF_owned : (s6Step103HeadFRow.sign::s6Step103HeadFRow.payload).toFinset⊆s6Step103HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step103HeadFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step103HeadF_reserved : s6Step103HeadFBefore.reserve s6Step103HeadFFresh.toFinset=some s6Step103HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step103HeadFFresh,arenaWires]
  · norm_num [s6Step103HeadFBefore,s6Step103HeadGAfter,s6Step103HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step103HeadFBefore s6Step103HeadFAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step103HeadFFresh rfl rfl
    · norm_num [s6Step103HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step103HeadF_checked : planRowResizeLog s6Step103HeadFBefore s6Step103HeadFRow 219 s6Step103HeadFFresh=
    some (s6Step103HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 890],795⟩,growRow 795 s6Step103HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step103HeadFBefore s6Step103HeadFAfter s6Step103HeadFRow 219 s6Step103HeadFFresh
    s6Step103HeadF_distinct s6Step103HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step103HeadF_reserved
  have rowEq : WindowRow.mk (s6Step103HeadFRow.payload++s6Step103HeadFFresh) s6Step103HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 890],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step103HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step103HeadFvBefore : Arena := s6Step103HeadGvAfter

private theorem s6Step103HeadFv_Incoming : rowsOwned s6Step103HeadFvBefore [s6Step103HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step103HeadGRow,s6Step103HeadFRow,s6Step103HeadGvRow,s6Step103HeadFvRow] 3 s6Step103HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step103HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step103HeadFv_Outgoing : rowsOwned s6Step103HeadFvAfter [s6Step103HeadFvOut] :=
  hmrRows_owned_drop s6Step103HeadFvAfter [s6Step103HeadGOut,s6Step103HeadFOut,s6Step103HeadGvOut,s6Step103HeadFvOut] 3 s6Step103HeadBank_outgoingOwned

private theorem s6Step103HeadFv_distinct : (s6Step103HeadFvRow.sign::s6Step103HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step103HeadFv_owned : (s6Step103HeadFvRow.sign::s6Step103HeadFvRow.payload).toFinset⊆s6Step103HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step103HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step103HeadFv_reserved : s6Step103HeadFvBefore.reserve s6Step103HeadFvFresh.toFinset=some s6Step103HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step103HeadFvFresh,arenaWires]
  · norm_num [s6Step103HeadFvBefore,s6Step103HeadGvAfter,s6Step103HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step103HeadFvBefore s6Step103HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step103HeadFvFresh rfl rfl
    · norm_num [s6Step103HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step103HeadFv_checked : planRowResizeLog s6Step103HeadFvBefore s6Step103HeadFvRow 66 s6Step103HeadFvFresh=
    some (s6Step103HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 876],776⟩,growRow 776 s6Step103HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step103HeadFvBefore s6Step103HeadFvAfter s6Step103HeadFvRow 66 s6Step103HeadFvFresh
    s6Step103HeadFv_distinct s6Step103HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step103HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step103HeadFvRow.payload++s6Step103HeadFvFresh) s6Step103HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 876],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step103HeadG_Incoming : rowsOwned s6Step103HeadGBefore [s6Step103HeadGRow,s6Step103HeadFRow,s6Step103HeadGvRow,s6Step103HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step103HeadGRow,s6Step103HeadFRow,s6Step103HeadGvRow,s6Step103HeadFvRow] 0 s6Step103HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step103HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step103HeadG_Outgoing : rowsOwned s6Step103HeadFvAfter [s6Step103HeadGOut,s6Step103HeadFOut,s6Step103HeadGvOut,s6Step103HeadFvOut] :=
  hmrRows_owned_drop s6Step103HeadFvAfter [s6Step103HeadGOut,s6Step103HeadFOut,s6Step103HeadGvOut,s6Step103HeadFvOut] 0 s6Step103HeadBank_outgoingOwned

private theorem s6Step103HeadG_distinct : (s6Step103HeadGRow.sign::s6Step103HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step103HeadG_owned : (s6Step103HeadGRow.sign::s6Step103HeadGRow.payload).toFinset⊆s6Step103HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step103HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step103HeadG_reserved : s6Step103HeadGBefore.reserve s6Step103HeadGFresh.toFinset=some s6Step103HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step103HeadGFresh,arenaWires]
  · norm_num [s6Step103HeadGBefore,s6Step103HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step103HeadGBefore s6Step103HeadGAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step103HeadGFresh rfl rfl
    · norm_num [s6Step103HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step103HeadG_checked : planRowResizeLog s6Step103HeadGBefore s6Step103HeadGRow 219 s6Step103HeadGFresh=
    some (s6Step103HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 803],777⟩,growRow 777 s6Step103HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step103HeadGBefore s6Step103HeadGAfter s6Step103HeadGRow 219 s6Step103HeadGFresh
    s6Step103HeadG_distinct s6Step103HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step103HeadG_reserved
  have rowEq : WindowRow.mk (s6Step103HeadGRow.payload++s6Step103HeadGFresh) s6Step103HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 803],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step103HeadGvBefore : Arena := s6Step103HeadFAfter

private theorem s6Step103HeadGv_Incoming : rowsOwned s6Step103HeadGvBefore [s6Step103HeadGvRow,s6Step103HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step103HeadGRow,s6Step103HeadFRow,s6Step103HeadGvRow,s6Step103HeadFvRow] 2 s6Step103HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step103HeadGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step103HeadGv_Outgoing : rowsOwned s6Step103HeadFvAfter [s6Step103HeadGvOut,s6Step103HeadFvOut] :=
  hmrRows_owned_drop s6Step103HeadFvAfter [s6Step103HeadGOut,s6Step103HeadFOut,s6Step103HeadGvOut,s6Step103HeadFvOut] 2 s6Step103HeadBank_outgoingOwned

private theorem s6Step103HeadGv_distinct : (s6Step103HeadGvRow.sign::s6Step103HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step103HeadGv_owned : (s6Step103HeadGvRow.sign::s6Step103HeadGvRow.payload).toFinset⊆s6Step103HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step103HeadGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step103HeadGv_reserved : s6Step103HeadGvBefore.reserve s6Step103HeadGvFresh.toFinset=some s6Step103HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step103HeadGvFresh,arenaWires]
  · norm_num [s6Step103HeadGvBefore,s6Step103HeadFAfter,s6Step103HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step103HeadGvBefore s6Step103HeadGvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step103HeadGvFresh rfl rfl
    · norm_num [s6Step103HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step103HeadGv_checked : planRowResizeLog s6Step103HeadGvBefore s6Step103HeadGvRow 66 s6Step103HeadGvFresh=
    some (s6Step103HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784],775⟩,growRow 775 s6Step103HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step103HeadGvBefore s6Step103HeadGvAfter s6Step103HeadGvRow 66 s6Step103HeadGvFresh
    s6Step103HeadGv_distinct s6Step103HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step103HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step103HeadGvRow.payload++s6Step103HeadGvFresh) s6Step103HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step103HeadBank_rows : planWindowRowsLog s6Step103HeadGBefore [(s6Step103HeadGRow,219),(s6Step103HeadFRow,219),(s6Step103HeadGvRow,66),(s6Step103HeadFvRow,66)] [s6Step103HeadGFresh,s6Step103HeadFFresh,s6Step103HeadGvFresh,s6Step103HeadFvFresh]=
    some (s6Step103HeadFvAfter,[s6Step103HeadGOut,s6Step103HeadFOut,s6Step103HeadGvOut,s6Step103HeadFvOut],(growRow 777 s6Step103HeadGFresh ++ (growRow 795 s6Step103HeadFFresh ++ (growRow 775 s6Step103HeadGvFresh ++ (growRow 776 s6Step103HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step103HeadFvAfter [] []=some (s6Step103HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step103HeadFvBefore s6Step103HeadFvAfter s6Step103HeadFvAfter
    s6Step103HeadFvRow s6Step103HeadFvOut 66 s6Step103HeadFvFresh [] [] []
    (growRow 776 s6Step103HeadFvFresh) ([]) s6Step103HeadFv_Incoming s6Step103HeadFv_checked h4 s6Step103HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step103HeadGvBefore s6Step103HeadGvAfter s6Step103HeadFvAfter
    s6Step103HeadGvRow s6Step103HeadGvOut 66 s6Step103HeadGvFresh [(s6Step103HeadFvRow,66)] [s6Step103HeadFvFresh] [s6Step103HeadFvOut]
    (growRow 775 s6Step103HeadGvFresh) ((growRow 776 s6Step103HeadFvFresh ++ [])) s6Step103HeadGv_Incoming s6Step103HeadGv_checked h3 s6Step103HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step103HeadFBefore s6Step103HeadFAfter s6Step103HeadFvAfter
    s6Step103HeadFRow s6Step103HeadFOut 219 s6Step103HeadFFresh [(s6Step103HeadGvRow,66),(s6Step103HeadFvRow,66)] [s6Step103HeadGvFresh,s6Step103HeadFvFresh] [s6Step103HeadGvOut,s6Step103HeadFvOut]
    (growRow 795 s6Step103HeadFFresh) ((growRow 775 s6Step103HeadGvFresh ++ (growRow 776 s6Step103HeadFvFresh ++ []))) s6Step103HeadF_Incoming s6Step103HeadF_checked h2 s6Step103HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step103HeadGBefore s6Step103HeadGAfter s6Step103HeadFvAfter
    s6Step103HeadGRow s6Step103HeadGOut 219 s6Step103HeadGFresh [(s6Step103HeadFRow,219),(s6Step103HeadGvRow,66),(s6Step103HeadFvRow,66)] [s6Step103HeadFFresh,s6Step103HeadGvFresh,s6Step103HeadFvFresh] [s6Step103HeadFOut,s6Step103HeadGvOut,s6Step103HeadFvOut]
    (growRow 777 s6Step103HeadGFresh) ((growRow 795 s6Step103HeadFFresh ++ (growRow 775 s6Step103HeadGvFresh ++ (growRow 776 s6Step103HeadFvFresh ++ [])))) s6Step103HeadG_Incoming s6Step103HeadG_checked h1 s6Step103HeadG_Outgoing
  exact h0

private theorem s6Step103HeadBank_checked : compileHmrBankResizeLog .headroom s6Step103HeadGBefore ⟨s6Step103HeadFRow,s6Step103HeadGRow,s6Step103HeadFvRow,s6Step103HeadGvRow⟩ ⟨219,219,66,66⟩ [s6Step103HeadGFresh,s6Step103HeadFFresh,s6Step103HeadGvFresh,s6Step103HeadFvFresh]=
    some (s6Step103HeadFvAfter,⟨s6Step103HeadFOut,s6Step103HeadGOut,s6Step103HeadFvOut,s6Step103HeadGvOut⟩,(growRow 777 s6Step103HeadGFresh ++ (growRow 795 s6Step103HeadFFresh ++ (growRow 775 s6Step103HeadGvFresh ++ (growRow 776 s6Step103HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step103HeadBank_rows]
  rfl

private theorem s6Step103Front_checked : compileHmrSourceFrontLog s6Step103EntryFBefore s6Step103FrontBank 218 65 ⟨217,217,66,66⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step103FrontLog=some s6Step103FrontPlan := by
  have pairEq : s6Step103FrontPair=⟨s6Step103HeadFRow,s6Step103HeadGRow,s6Step103HeadFvRow,s6Step103HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step103FrontHead=⟨s6Step103ExitFRow,s6Step103ExitGRow,s6Step103ExitFvRow,s6Step103ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step103Add0A=s6Step103FrontHead.f.wires := by decide +kernel
  have gEq : s6Step103Add0B=s6Step103FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step103Add1A=s6Step103FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step103Add1B=s6Step103FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step103EntryFBefore s6Step103FrontBank 218 65 ⟨217,217,66,66⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step103FrontLog s6Step103FrontPlan
  · exact s6Step103Front_entry
  · exact s6Step103EntryBank_checked
  · exact s6Step103Front_sigma
  · rfl
  · exact s6Step103Front_branch
  · rfl
  · simpa only [s6Step103FrontPlan,pairEq] using s6Step103HeadBank_checked
  · simpa only [s6Step103FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step103F4_checked
  · exact s6Step103Counter_checked
  · rfl
  · simpa only [s6Step103FrontPlan,headEq] using s6Step103ExitBank_checked

private theorem s6Step103Complete_explicit_checked : compileHmrEarlyStepLog s6Step103EntryFBefore s6Step103FrontBank 218 65 ⟨217,217,66,66⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step103CompleteLog=some s6Step103CompletePlan := by
  let Q := s6Step103EarlyControlPlan
  have hq := s6Step103EarlyControl_plan_checked
  have fv1 : s6Step103CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step103CompleteOut.fv.payload[2]?.getD s6Step103CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step103CompleteOut.fv.payload[3]?.getD s6Step103CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step103CompleteOut.fv.payload[4]?.getD s6Step103CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step103EntryFBefore s6Step103EarlyControlArena s6Step103FrontBank 218 65 ⟨217,217,66,66⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step103CompleteLog s6Step103FrontPlan Q
    s6Step103Front_checked s6Step103Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step103Complete_owned s6Step103Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step103EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 845 s6Step103CompleteOut.fv.second (s6Step103CompleteOut.fv.payload[2]?.getD s6Step103CompleteOut.fv.sign) (s6Step103CompleteOut.fv.payload[3]?.getD s6Step103CompleteOut.fv.sign) (s6Step103CompleteOut.fv.payload[4]?.getD s6Step103CompleteOut.fv.sign) 907 35 s6Step103EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep103Arena : Arena := s6Step103EntryFBefore
def s6PrivateStep103Bank : WindowBank := s6Step103FrontBank
def s6PrivateStep103Spec : HmrSourceWalkStepLog := ⟨218,65,⟨217,217,66,66⟩,35,.early s6Step103CompleteLog⟩
def s6PrivateStep103Plan : HmrSourceStepPlan := .early s6Step103CompletePlan
theorem s6PrivateStep103_source : s6PrivateStep103Spec=s6ObservedLogs96[7] := rfl
theorem s6PrivateStep103_checked : compileHmrSourceStepLog s6PrivateStep103Arena s6PrivateStep103Bank
    s6PrivateStep103Spec.fgWidth s6PrivateStep103Spec.vWidth s6PrivateStep103Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840]
    6 498 103 s6PrivateStep103Spec.need none s6PrivateStep103Spec.log=some s6PrivateStep103Plan := by
  change compileHmrSourceStepLog s6Step103EntryFBefore s6Step103FrontBank 218 65 ⟨217,217,66,66⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 6 498 103 35 none (.early s6Step103CompleteLog)=some (.early s6Step103CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 103<498)]
  rw [s6Step103Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
