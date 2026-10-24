import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep99
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

private def s6Step101CompleteMoves : List (Wire × Wire) := [(845,474)]

private def s6Step101EarlyControlLog : HmrEarlyControlLog := ⟨[845, 876, 784, 803, 890],[813],[879],[865, 796, 891, 903, 885, 791],[]⟩

private def s6Step101FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [803], [], []],[[890], [784], [876], [857]],[[], [], [], []]⟩,[907],[856],[813],[879],[865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[813, 879, 865, 796]⟩

private def s6Step101CompleteLog : HmrEarlyStepLog := ⟨s6Step101FrontLog,s6Step101CompleteMoves,s6Step101EarlyControlLog⟩

private def s6Step101ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473],795⟩

private def s6Step101ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857],776⟩

private def s6Step101ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],777⟩

private def s6Step101ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873],775⟩

private def s6Step101FrontOut : WindowBank := ⟨s6Step101ExitFOut,s6Step101ExitGOut,s6Step101ExitFvOut,s6Step101ExitGvOut⟩

private def s6Step101CompleteOut : WindowBank := s6Step101FrontOut.repacked s6Step101CompleteMoves

private def s6Step101EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step101EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step101EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step101EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step101EarlyControlPositiveArena,[813],s6Step101EarlyControlEqualityArena,[879],⟨⟨907,false⟩,[⟨⟨813,false⟩,879⟩]⟩⟩

private def s6Step101EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step101EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step101EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step101EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,856),(857,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step101EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step101EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step101EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,845⟩,⟨⟨772,false⟩,876⟩,⟨⟨771,false⟩,784⟩,⟨⟨770,false⟩,803⟩,⟨⟨769,false⟩,890⟩]⟩

private def s6Step101EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step101EarlyControlZeroArena,s6Step101EarlyControlZeroPlan,s6Step101EarlyControlClassPlan,s6Step101EarlyControlFlagArena,s6Step101EarlyControlFittedArena,s6Step101EarlyControlHistoryArena,s6Step101EarlyControlSigmaArena,s6Step101EarlyControlOutputArena,s6Step101EarlyControlLog⟩

private def s6Step101CounterWork : List Wire := [813, 879, 865, 796]

private theorem s6Step101Counter_bounded : s6Step101CounterWork.toFinset⊆arenaWires := by norm_num [s6Step101CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step101HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step101CounterDuring : Arena := ⟨s6Step101HeadFvAfter.live∪s6Step101CounterWork.toFinset,Finset.union_subset s6Step101HeadFvAfter.bounded s6Step101Counter_bounded⟩

private def s6Step101EntryFFresh : List Wire := []

private def s6Step101EntryFvFresh : List Wire := []

private def s6Step101EntryGFresh : List Wire := [803]

private def s6Step101EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step101EntryGvAfter : Arena := s6Step101EntryGAfter

private def s6Step101EntryGvFresh : List Wire := []

private def s6Step101ExitFExtra : List Wire := [474, 784]

private def s6Step101ExitGExtra : List Wire := [803, 890]

private def s6Step101ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,474),(475,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step101ExitGvExtra : List Wire := [876]

private def s6Step101Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step101Add0Work : List Wire := [865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step101Add0_bounded : s6Step101Add0Work.toFinset⊆arenaWires := by
  have h : s6Step101Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step101Add0During : Arena := ⟨s6Step101Add0Arena.live∪s6Step101Add0Work.toFinset,Finset.union_subset s6Step101Add0Arena.bounded s6Step101Add0_bounded⟩

private def s6Step101Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step101Add1Work : List Wire := [865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step101Add1_bounded : s6Step101Add1Work.toFinset⊆arenaWires := by
  have h : s6Step101Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step101Add1During : Arena := ⟨s6Step101Add1Arena.live∪s6Step101Add1Work.toFinset,Finset.union_subset s6Step101Add1Arena.bounded s6Step101Add1_bounded⟩

private def s6Step101F4FlagArena : Arena := ⟨s6Step101HeadFvAfter.live∪{813},Finset.union_subset s6Step101HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step101F4Plan : HmrHybridF4Plan := ⟨s6Step101F4FlagArena,[813],s6Step101Add0Arena,[879],s6Step101Add0During,s6Step101Add0Work,s6Step101Add1During,s6Step101Add1Work⟩

private def s6Step101HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 784],795⟩

private def s6Step101HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857],776⟩

private def s6Step101HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 803, 890],777⟩

private def s6Step101HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 876],775⟩

private def s6Step101FrontHead : WindowBank := ⟨s6Step101HeadFOut,s6Step101HeadGOut,s6Step101HeadFvOut,s6Step101HeadGvOut⟩

private def s6Step101EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474],795⟩

private def s6Step101EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922],776⟩

private def s6Step101EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 803],777⟩

private def s6Step101EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873],775⟩

private def s6Step101FrontPair : WindowBank := ⟨s6Step101EntryFOut,s6Step101EntryGOut,s6Step101EntryFvOut,s6Step101EntryGvOut⟩

private def s6Step101FrontSigmaArena : Arena := ⟨s6Step101EntryGvAfter.live∪{907},Finset.union_subset s6Step101EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step101HeadFFresh : List Wire := [784]

private def s6Step101HeadFvFresh : List Wire := [857]

private def s6Step101HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step101HeadGFresh : List Wire := [890]

private def s6Step101HeadGvFresh : List Wire := [876]

private def s6Step101FrontPlan : HmrSourceFront := ⟨s6Step101EntryGvAfter,s6Step101FrontPair,(growRow 795 s6Step101EntryFFresh ++ (growRow 777 s6Step101EntryGFresh ++ (growRow 776 s6Step101EntryFvFresh ++ (growRow 775 s6Step101EntryGvFresh ++ [])))),s6Step101FrontSigmaArena,[907],s6Step101HeadGBefore,[856],
  s6Step101HeadFvAfter,s6Step101FrontHead,(growRow 777 s6Step101HeadGFresh ++ (growRow 795 s6Step101HeadFFresh ++ (growRow 775 s6Step101HeadGvFresh ++ (growRow 776 s6Step101HeadFvFresh ++ [])))),s6Step101F4Plan,s6Step101CounterDuring,s6Step101CounterWork,s6Step101ExitGvAfter,s6Step101FrontOut,(shrinkRow 777 s6Step101ExitGExtra ++ (shrinkRow 795 s6Step101ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step101ExitGvExtra ++ []))))⟩

private def s6Step101CompletePlan : HmrEarlyStepPlan := ⟨s6Step101FrontPlan,s6Step101EarlyControlArena,s6Step101EarlyControlPlan,s6Step101CompleteMoves⟩

private theorem s6Step101Complete_apart : List.Disjoint (s6Step101CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [907, 856, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] := by
  have nd : ((s6Step101CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[907, 856, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step101Complete_owned : (s6Step101CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step101EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step101EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step101CompleteRelocationMove0Borrowed : Arena := ⟨s6Step101ExitGvAfter.live∪{474},Finset.union_subset s6Step101ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step101CompleteRelocation_move0_owned : 845∈s6Step101ExitGvAfter.live := by norm_num [s6Step101ExitGvAfter,arenaWires]

private theorem s6Step101CompleteRelocation_move0_reserve : s6Step101ExitGvAfter.reserve {474}=some s6Step101CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step101ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step101CompleteRelocation_move0_retire : s6Step101CompleteRelocationMove0Borrowed.retireSet {845}=s6Step101EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step101CompleteRelocationMove0Borrowed s6Step101EarlyControlArena {845}
  change s6Step101EarlyControlArena.live=(s6Step101ExitGvAfter.live∪{474})\{845}
  apply hmrArena_update_of_filter_check s6Step101ExitGvAfter s6Step101EarlyControlArena (fun q => ([(0,474),(475,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [474] [845] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step101CompleteRelocation_checked : s6Step101ExitGvAfter.checkRepack [(845,474)]=some s6Step101EarlyControlArena := by
  have tail1 : s6Step101EarlyControlArena.checkRepack []=some s6Step101EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step101ExitGvAfter s6Step101CompleteRelocationMove0Borrowed s6Step101EarlyControlArena s6Step101EarlyControlArena 845 474 []
    s6Step101CompleteRelocation_move0_owned s6Step101CompleteRelocation_move0_reserve s6Step101CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step101Complete_repack : s6Step101ExitGvAfter.checkRepack s6Step101CompleteMoves=some s6Step101EarlyControlArena := by
  simpa only [s6Step101CompleteMoves] using s6Step101CompleteRelocation_checked

private theorem s6Step101EarlyControl_branchOwned : ([856] : List Wire).toFinset⊆s6Step101EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step101EarlyControlSigmaArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step101EarlyControl_branch : compileHmrBranchRetirement s6Step101EarlyControlSigmaArena 856=some s6Step101EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step101EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step101EarlyControlSigmaArena s6Step101EarlyControlOutputArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,856),(857,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [856] rfl rfl
    decide +kernel

private theorem s6Step101EarlyControl_classEqualityBorrow : s6Step101EarlyControlPositiveArena.checkBorrow (([907, 813] : List Wire).length-1) s6Step101EarlyControlLog.classWork=some s6Step101EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step101EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step101EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step101EarlyControlPositiveArena s6Step101EarlyControlEqualityArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step101EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step101EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step101EarlyControl_classEqualityOwned : ([907, 813] : List Wire).toFinset⊆s6Step101EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step101EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step101EarlyControl_classEquality : compileHmrEqualityLog s6Step101EarlyControlPositiveArena [907, 813] 0 s6Step101EarlyControlLog.classWork=some (s6Step101EarlyControlEqualityArena,s6Step101EarlyControlLog.classWork,s6Step101EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step101EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step101EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step101EarlyControl_classOwned : ([769, 890, 907] : List Wire).toFinset⊆s6Step101EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step101EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step101EarlyControl_positiveBorrow : s6Step101EarlyControlZeroArena.checkBorrow (1) s6Step101EarlyControlLog.positiveWork=some s6Step101EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step101EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step101EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step101EarlyControlZeroArena s6Step101EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step101EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step101EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step101EarlyControl_class : compileHmrSourceClassLog s6Step101EarlyControlZeroArena false 769 s6Step101EarlyControlZeroPlan.top 0 907 s6Step101EarlyControlLog.positiveWork s6Step101EarlyControlLog.classWork=some s6Step101EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step101EarlyControlClassPlan s6Step101EarlyControlZeroArena false 769 s6Step101EarlyControlZeroPlan.top 0 907
  constructor
  · decide +kernel
  · exact s6Step101EarlyControl_classOwned
  · exact s6Step101EarlyControl_positiveBorrow
  · exact s6Step101EarlyControl_classEquality

private theorem s6Step101EarlyControl_entryRecordOwned : ([856, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).toFinset⊆s6Step101EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step101EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step101EarlyControl_entrySigmaOwned : ([907, 254] : List Wire).toFinset⊆s6Step101EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step101EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step101EarlyControl_fitBorrow : s6Step101EarlyControlFlagArena.checkBorrow ((35-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).length)) s6Step101EarlyControlLog.recordFresh=some s6Step101EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step101EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step101EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step101EarlyControlFittedArena,s6Step101EarlyControlFlagArena,s6Step101EarlyControlLog,arenaWires]

private theorem s6Step101EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).toFinset⊆s6Step101EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step101EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step101EarlyControl_fit : compileHmrRecordGrowLog s6Step101EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step101EarlyControlLog.recordFresh=some s6Step101EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step101EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step101EarlyControl_fitBorrow

private theorem s6Step101EarlyControl_flagsBorrow : s6Step101EarlyControlEqualityArena.checkBorrow (6) s6Step101EarlyControlLog.flagWork=some s6Step101EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step101EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step101EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step101EarlyControlFlagArena,s6Step101EarlyControlEqualityArena,s6Step101EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step101EarlyControl_flagsOwned : ([879, 253, 252, 251] : List Wire).toFinset⊆s6Step101EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step101EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step101EarlyControl_flags : compileHmrFlagsLog s6Step101EarlyControlClassPlan.equalityArena s6Step101EarlyControlClassPlan.equality.top 253 252 251 s6Step101EarlyControlLog.flagWork=some s6Step101EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step101EarlyControl_flagsOwned⟩
  · exact s6Step101EarlyControl_flagsBorrow

private theorem s6Step101EarlyControl_historyBorrow : s6Step101EarlyControlArena.checkBorrow ((35-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).length)) s6Step101EarlyControlLog.recordFresh=some s6Step101EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step101EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step101EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step101EarlyControlArena s6Step101EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step101EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step101EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step101EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).toFinset⊆s6Step101EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step101EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step101EarlyControl_history : compileHmrRecordGrowLog s6Step101EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step101EarlyControlLog.recordFresh=some s6Step101EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step101EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step101EarlyControl_historyBorrow

private theorem s6Step101EarlyControl_sigmaOwned : ([254, 907] : List Wire).toFinset⊆s6Step101EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step101EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step101EarlyControl_sigmaReleaseOwned : ([907] : List Wire).toFinset⊆s6Step101EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step101EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step101EarlyControl_sigmaRelease : s6Step101EarlyControlHistoryArena.release {907} (fun _ => false)=some s6Step101EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step101EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step101EarlyControlHistoryArena s6Step101EarlyControlSigmaArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [907] rfl rfl
    decide +kernel

private theorem s6Step101EarlyControl_sigma : compileHmrSigmaDropLog s6Step101EarlyControlHistoryArena false 0 0 254 907 []=some s6Step101EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step101EarlyControl_sigmaOwned⟩
  · exact s6Step101EarlyControl_sigmaRelease

private theorem s6Step101EarlyControl_zeroBorrow : s6Step101EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step101EarlyControlLog.zeroWork=some s6Step101EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step101EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step101EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step101EarlyControlArena s6Step101EarlyControlZeroArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step101EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step101EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step101EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step101EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step101EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step101EarlyControl_zero : compileHmrEqualityLog s6Step101EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step101EarlyControlLog.zeroWork=some (s6Step101EarlyControlZeroArena,s6Step101EarlyControlLog.zeroWork,s6Step101EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step101EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step101EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step101EarlyControl_logged : s6Step101EarlyControlPlan.Logged s6Step101EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 907 254 253 252 251 856 35 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step101EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step101EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step101EarlyControl_zero
  · exact s6Step101EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step101EarlyControl_flags
  · exact s6Step101EarlyControl_fit
  · exact s6Step101EarlyControl_history
  · exact s6Step101EarlyControl_sigma
  · exact s6Step101EarlyControl_branch

private theorem s6Step101EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step101EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 907 254 253 252 251 856 35 s6Step101EarlyControlLog=some s6Step101EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step101EarlyControlPlan s6Step101EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 907 254 253 252 251 856 35 s6Step101EarlyControl_logged

private def s6Step101EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step101EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474],795⟩

private def s6Step101EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922],776⟩

private def s6Step101EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],777⟩

private def s6Step101EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873],775⟩

private def s6Step101FrontBank : WindowBank := ⟨s6Step101EntryFRow,s6Step101EntryGRow,s6Step101EntryFvRow,s6Step101EntryGvRow⟩

private def s6Step101Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 784, 795]

private def s6Step101Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 803, 890, 777]

private def s6Step101Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 776]

private def s6Step101Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 876, 775]

private theorem s6Step101Counter_apart : Disjoint s6Step101HeadFvAfter.live s6Step101CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step101HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step101Counter_borrowed : s6Step101HeadFvAfter.checkBorrow 4 s6Step101CounterWork=some s6Step101CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step101HeadFvAfter s6Step101CounterDuring s6Step101CounterWork.toFinset s6Step101Counter_bounded s6Step101Counter_apart rfl

private theorem s6Step101Counter_owned : (907::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step101HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step101HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step101Counter_checked : compileHmrCounterStepLog s6Step101HeadFvAfter true 907 [774, 773, 772, 771, 770, 769] s6Step101CounterWork=some s6Step101CounterDuring := by
  have owned : ∀q∈907::[774, 773, 772, 771, 770, 769],q∈s6Step101HeadFvAfter.live := fun q hq => s6Step101Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step101Counter_borrowed

private def s6Step101EntryFAfter : Arena := s6Step101EntryFBefore

private theorem s6Step101EntryBank_incomingDistinct : ([s6Step101EntryFRow,s6Step101EntryGRow,s6Step101EntryFvRow,s6Step101EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step101EntryF_Incoming : rowsOwned s6Step101EntryFBefore [s6Step101EntryFRow,s6Step101EntryGRow,s6Step101EntryFvRow,s6Step101EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step101EntryFRow,s6Step101EntryGRow,s6Step101EntryFvRow,s6Step101EntryGvRow] 0 s6Step101EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step101EntryFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step101EntryBank_outgoingOwned : rowsOwned s6Step101EntryGvAfter [s6Step101EntryFOut,s6Step101EntryGOut,s6Step101EntryFvOut,s6Step101EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step101EntryGvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step101EntryF_Outgoing : rowsOwned s6Step101EntryGvAfter [s6Step101EntryFOut,s6Step101EntryGOut,s6Step101EntryFvOut,s6Step101EntryGvOut] :=
  hmrRows_owned_drop s6Step101EntryGvAfter [s6Step101EntryFOut,s6Step101EntryGOut,s6Step101EntryFvOut,s6Step101EntryGvOut] 0 s6Step101EntryBank_outgoingOwned

private theorem s6Step101EntryF_distinct : (s6Step101EntryFRow.sign::s6Step101EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step101EntryF_owned : (s6Step101EntryFRow.sign::s6Step101EntryFRow.payload).toFinset⊆s6Step101EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step101EntryFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step101EntryF_reserved : s6Step101EntryFBefore.reserve s6Step101EntryFFresh.toFinset=some s6Step101EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step101EntryFFresh,arenaWires]
  · norm_num [s6Step101EntryFBefore,s6Step101EntryFFresh,arenaWires]
  · simp only [s6Step101EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step101EntryF_checked : planRowResizeLog s6Step101EntryFBefore s6Step101EntryFRow 219 s6Step101EntryFFresh=
    some (s6Step101EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474],795⟩,growRow 795 s6Step101EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step101EntryFBefore s6Step101EntryFAfter s6Step101EntryFRow 219 s6Step101EntryFFresh
    s6Step101EntryF_distinct s6Step101EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step101EntryF_reserved
  have rowEq : WindowRow.mk (s6Step101EntryFRow.payload++s6Step101EntryFFresh) s6Step101EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step101EntryFvAfter : Arena := s6Step101EntryGAfter

private def s6Step101EntryFvBefore : Arena := s6Step101EntryGAfter

private theorem s6Step101EntryFv_Incoming : rowsOwned s6Step101EntryFvBefore [s6Step101EntryFvRow,s6Step101EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step101EntryFRow,s6Step101EntryGRow,s6Step101EntryFvRow,s6Step101EntryGvRow] 2 s6Step101EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step101EntryFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step101EntryFv_Outgoing : rowsOwned s6Step101EntryGvAfter [s6Step101EntryFvOut,s6Step101EntryGvOut] :=
  hmrRows_owned_drop s6Step101EntryGvAfter [s6Step101EntryFOut,s6Step101EntryGOut,s6Step101EntryFvOut,s6Step101EntryGvOut] 2 s6Step101EntryBank_outgoingOwned

private theorem s6Step101EntryFv_distinct : (s6Step101EntryFvRow.sign::s6Step101EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step101EntryFv_owned : (s6Step101EntryFvRow.sign::s6Step101EntryFvRow.payload).toFinset⊆s6Step101EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step101EntryFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step101EntryFv_reserved : s6Step101EntryFvBefore.reserve s6Step101EntryFvFresh.toFinset=some s6Step101EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step101EntryFvFresh,arenaWires]
  · norm_num [s6Step101EntryFvBefore,s6Step101EntryGAfter,s6Step101EntryFvFresh,arenaWires]
  · simp only [s6Step101EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step101EntryFv_checked : planRowResizeLog s6Step101EntryFvBefore s6Step101EntryFvRow 64 s6Step101EntryFvFresh=
    some (s6Step101EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922],776⟩,growRow 776 s6Step101EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step101EntryFvBefore s6Step101EntryFvAfter s6Step101EntryFvRow 64 s6Step101EntryFvFresh
    s6Step101EntryFv_distinct s6Step101EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step101EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step101EntryFvRow.payload++s6Step101EntryFvFresh) s6Step101EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step101EntryGBefore : Arena := s6Step101EntryFBefore

private theorem s6Step101EntryG_Incoming : rowsOwned s6Step101EntryGBefore [s6Step101EntryGRow,s6Step101EntryFvRow,s6Step101EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step101EntryFRow,s6Step101EntryGRow,s6Step101EntryFvRow,s6Step101EntryGvRow] 1 s6Step101EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step101EntryGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step101EntryG_Outgoing : rowsOwned s6Step101EntryGvAfter [s6Step101EntryGOut,s6Step101EntryFvOut,s6Step101EntryGvOut] :=
  hmrRows_owned_drop s6Step101EntryGvAfter [s6Step101EntryFOut,s6Step101EntryGOut,s6Step101EntryFvOut,s6Step101EntryGvOut] 1 s6Step101EntryBank_outgoingOwned

private theorem s6Step101EntryG_distinct : (s6Step101EntryGRow.sign::s6Step101EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step101EntryG_owned : (s6Step101EntryGRow.sign::s6Step101EntryGRow.payload).toFinset⊆s6Step101EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step101EntryGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step101EntryG_reserved : s6Step101EntryGBefore.reserve s6Step101EntryGFresh.toFinset=some s6Step101EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step101EntryGFresh,arenaWires]
  · norm_num [s6Step101EntryGBefore,s6Step101EntryFBefore,s6Step101EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step101EntryGBefore s6Step101EntryGAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step101EntryGFresh rfl rfl
    · norm_num [s6Step101EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step101EntryG_checked : planRowResizeLog s6Step101EntryGBefore s6Step101EntryGRow 219 s6Step101EntryGFresh=
    some (s6Step101EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 803],777⟩,growRow 777 s6Step101EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step101EntryGBefore s6Step101EntryGAfter s6Step101EntryGRow 219 s6Step101EntryGFresh
    s6Step101EntryG_distinct s6Step101EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step101EntryG_reserved
  have rowEq : WindowRow.mk (s6Step101EntryGRow.payload++s6Step101EntryGFresh) s6Step101EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 803],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step101EntryGvBefore : Arena := s6Step101EntryGAfter

private theorem s6Step101EntryGv_Incoming : rowsOwned s6Step101EntryGvBefore [s6Step101EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step101EntryFRow,s6Step101EntryGRow,s6Step101EntryFvRow,s6Step101EntryGvRow] 3 s6Step101EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step101EntryGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step101EntryGv_Outgoing : rowsOwned s6Step101EntryGvAfter [s6Step101EntryGvOut] :=
  hmrRows_owned_drop s6Step101EntryGvAfter [s6Step101EntryFOut,s6Step101EntryGOut,s6Step101EntryFvOut,s6Step101EntryGvOut] 3 s6Step101EntryBank_outgoingOwned

private theorem s6Step101EntryGv_distinct : (s6Step101EntryGvRow.sign::s6Step101EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step101EntryGv_owned : (s6Step101EntryGvRow.sign::s6Step101EntryGvRow.payload).toFinset⊆s6Step101EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step101EntryGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step101EntryGv_reserved : s6Step101EntryGvBefore.reserve s6Step101EntryGvFresh.toFinset=some s6Step101EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step101EntryGvFresh,arenaWires]
  · norm_num [s6Step101EntryGvBefore,s6Step101EntryGAfter,s6Step101EntryGvFresh,arenaWires]
  · simp only [s6Step101EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step101EntryGv_checked : planRowResizeLog s6Step101EntryGvBefore s6Step101EntryGvRow 64 s6Step101EntryGvFresh=
    some (s6Step101EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873],775⟩,growRow 775 s6Step101EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step101EntryGvBefore s6Step101EntryGvAfter s6Step101EntryGvRow 64 s6Step101EntryGvFresh
    s6Step101EntryGv_distinct s6Step101EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step101EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step101EntryGvRow.payload++s6Step101EntryGvFresh) s6Step101EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step101EntryBank_rows : planWindowRowsLog s6Step101EntryFBefore [(s6Step101EntryFRow,219),(s6Step101EntryGRow,219),(s6Step101EntryFvRow,64),(s6Step101EntryGvRow,64)] [s6Step101EntryFFresh,s6Step101EntryGFresh,s6Step101EntryFvFresh,s6Step101EntryGvFresh]=
    some (s6Step101EntryGvAfter,[s6Step101EntryFOut,s6Step101EntryGOut,s6Step101EntryFvOut,s6Step101EntryGvOut],(growRow 795 s6Step101EntryFFresh ++ (growRow 777 s6Step101EntryGFresh ++ (growRow 776 s6Step101EntryFvFresh ++ (growRow 775 s6Step101EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step101EntryGvAfter [] []=some (s6Step101EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step101EntryGvBefore s6Step101EntryGvAfter s6Step101EntryGvAfter
    s6Step101EntryGvRow s6Step101EntryGvOut 64 s6Step101EntryGvFresh [] [] []
    (growRow 775 s6Step101EntryGvFresh) ([]) s6Step101EntryGv_Incoming s6Step101EntryGv_checked h4 s6Step101EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step101EntryFvBefore s6Step101EntryFvAfter s6Step101EntryGvAfter
    s6Step101EntryFvRow s6Step101EntryFvOut 64 s6Step101EntryFvFresh [(s6Step101EntryGvRow,64)] [s6Step101EntryGvFresh] [s6Step101EntryGvOut]
    (growRow 776 s6Step101EntryFvFresh) ((growRow 775 s6Step101EntryGvFresh ++ [])) s6Step101EntryFv_Incoming s6Step101EntryFv_checked h3 s6Step101EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step101EntryGBefore s6Step101EntryGAfter s6Step101EntryGvAfter
    s6Step101EntryGRow s6Step101EntryGOut 219 s6Step101EntryGFresh [(s6Step101EntryFvRow,64),(s6Step101EntryGvRow,64)] [s6Step101EntryFvFresh,s6Step101EntryGvFresh] [s6Step101EntryFvOut,s6Step101EntryGvOut]
    (growRow 777 s6Step101EntryGFresh) ((growRow 776 s6Step101EntryFvFresh ++ (growRow 775 s6Step101EntryGvFresh ++ []))) s6Step101EntryG_Incoming s6Step101EntryG_checked h2 s6Step101EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step101EntryFBefore s6Step101EntryFAfter s6Step101EntryGvAfter
    s6Step101EntryFRow s6Step101EntryFOut 219 s6Step101EntryFFresh [(s6Step101EntryGRow,219),(s6Step101EntryFvRow,64),(s6Step101EntryGvRow,64)] [s6Step101EntryGFresh,s6Step101EntryFvFresh,s6Step101EntryGvFresh] [s6Step101EntryGOut,s6Step101EntryFvOut,s6Step101EntryGvOut]
    (growRow 795 s6Step101EntryFFresh) ((growRow 777 s6Step101EntryGFresh ++ (growRow 776 s6Step101EntryFvFresh ++ (growRow 775 s6Step101EntryGvFresh ++ [])))) s6Step101EntryF_Incoming s6Step101EntryF_checked h1 s6Step101EntryF_Outgoing
  exact h0

private theorem s6Step101EntryBank_checked : compileHmrBankResizeLog .entry s6Step101EntryFBefore ⟨s6Step101EntryFRow,s6Step101EntryGRow,s6Step101EntryFvRow,s6Step101EntryGvRow⟩ ⟨219,219,64,64⟩ [s6Step101EntryFFresh,s6Step101EntryGFresh,s6Step101EntryFvFresh,s6Step101EntryGvFresh]=
    some (s6Step101EntryGvAfter,⟨s6Step101EntryFOut,s6Step101EntryGOut,s6Step101EntryFvOut,s6Step101EntryGvOut⟩,(growRow 795 s6Step101EntryFFresh ++ (growRow 777 s6Step101EntryGFresh ++ (growRow 776 s6Step101EntryFvFresh ++ (growRow 775 s6Step101EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step101EntryBank_rows]
  rfl

private def s6Step101ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,474),(475,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step101ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step101ExitFBefore : Arena := s6Step101ExitGAfter

private def s6Step101ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 784],795⟩

private def s6Step101ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857],776⟩

private def s6Step101ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 803, 890],777⟩

private def s6Step101ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 876],775⟩

private theorem s6Step101ExitBank_incomingDistinct : ([s6Step101ExitGRow,s6Step101ExitFRow,s6Step101ExitFvRow,s6Step101ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step101ExitF_Incoming : rowsOwned s6Step101ExitFBefore [s6Step101ExitFRow,s6Step101ExitFvRow,s6Step101ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step101ExitGRow,s6Step101ExitFRow,s6Step101ExitFvRow,s6Step101ExitGvRow] 1 s6Step101ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step101ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step101ExitBank_outgoingOwned : rowsOwned s6Step101ExitGvAfter [s6Step101ExitGOut,s6Step101ExitFOut,s6Step101ExitFvOut,s6Step101ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step101ExitGvAfter (fun q => ([(0,474),(475,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step101ExitF_Outgoing : rowsOwned s6Step101ExitGvAfter [s6Step101ExitFOut,s6Step101ExitFvOut,s6Step101ExitGvOut] :=
  hmrRows_owned_drop s6Step101ExitGvAfter [s6Step101ExitGOut,s6Step101ExitFOut,s6Step101ExitFvOut,s6Step101ExitGvOut] 1 s6Step101ExitBank_outgoingOwned

private theorem s6Step101ExitF_distinct : (s6Step101ExitFRow.sign::s6Step101ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step101ExitF_owned : (s6Step101ExitFRow.sign::s6Step101ExitFRow.payload).toFinset⊆s6Step101ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step101ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step101ExitF_retired : s6Step101ExitFBefore.retireSet s6Step101ExitFExtra.toFinset=s6Step101ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step101ExitFBefore s6Step101ExitFAfter s6Step101ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step101ExitFBefore s6Step101ExitFAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,474),(475,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step101ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step101ExitF_checked : planRowResizeLog s6Step101ExitFBefore s6Step101ExitFRow 218 []=
    some (s6Step101ExitFAfter,s6Step101ExitFOut,shrinkRow 795 s6Step101ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step101ExitFBefore s6Step101ExitFRow 218 s6Step101ExitF_distinct s6Step101ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step101ExitFRow.payload.take 218) s6Step101ExitFRow.sign=s6Step101ExitFOut := by decide +kernel
  have hi : s6Step101ExitFRow.payload.drop 218=s6Step101ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step101ExitF_retired] at result
  exact result

private def s6Step101ExitFvAfter : Arena := s6Step101ExitFAfter

private def s6Step101ExitFvBefore : Arena := s6Step101ExitFAfter

private theorem s6Step101ExitFv_Incoming : rowsOwned s6Step101ExitFvBefore [s6Step101ExitFvRow,s6Step101ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step101ExitGRow,s6Step101ExitFRow,s6Step101ExitFvRow,s6Step101ExitGvRow] 2 s6Step101ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step101ExitFvBefore (fun q => ([(0,474),(475,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step101ExitFv_Outgoing : rowsOwned s6Step101ExitGvAfter [s6Step101ExitFvOut,s6Step101ExitGvOut] :=
  hmrRows_owned_drop s6Step101ExitGvAfter [s6Step101ExitGOut,s6Step101ExitFOut,s6Step101ExitFvOut,s6Step101ExitGvOut] 2 s6Step101ExitBank_outgoingOwned

private theorem s6Step101ExitFv_distinct : (s6Step101ExitFvRow.sign::s6Step101ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step101ExitFv_owned : (s6Step101ExitFvRow.sign::s6Step101ExitFvRow.payload).toFinset⊆s6Step101ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step101ExitFvBefore (fun q => ([(0,474),(475,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step101ExitFv_reserved : s6Step101ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step101ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step101ExitFv_checked : planRowResizeLog s6Step101ExitFvBefore s6Step101ExitFvRow 65 []=
    some (s6Step101ExitFvAfter,s6Step101ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step101ExitFvBefore s6Step101ExitFvAfter s6Step101ExitFvRow 65 []
    s6Step101ExitFv_distinct s6Step101ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step101ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step101ExitFvRow.payload++[]) s6Step101ExitFvRow.sign=s6Step101ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step101ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step101ExitG_Incoming : rowsOwned s6Step101ExitGBefore [s6Step101ExitGRow,s6Step101ExitFRow,s6Step101ExitFvRow,s6Step101ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step101ExitGRow,s6Step101ExitFRow,s6Step101ExitFvRow,s6Step101ExitGvRow] 0 s6Step101ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step101ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step101ExitG_Outgoing : rowsOwned s6Step101ExitGvAfter [s6Step101ExitGOut,s6Step101ExitFOut,s6Step101ExitFvOut,s6Step101ExitGvOut] :=
  hmrRows_owned_drop s6Step101ExitGvAfter [s6Step101ExitGOut,s6Step101ExitFOut,s6Step101ExitFvOut,s6Step101ExitGvOut] 0 s6Step101ExitBank_outgoingOwned

private theorem s6Step101ExitG_distinct : (s6Step101ExitGRow.sign::s6Step101ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step101ExitG_owned : (s6Step101ExitGRow.sign::s6Step101ExitGRow.payload).toFinset⊆s6Step101ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step101ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step101ExitG_retired : s6Step101ExitGBefore.retireSet s6Step101ExitGExtra.toFinset=s6Step101ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step101ExitGBefore s6Step101ExitGAfter s6Step101ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step101ExitGBefore s6Step101ExitGAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step101ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step101ExitG_checked : planRowResizeLog s6Step101ExitGBefore s6Step101ExitGRow 218 []=
    some (s6Step101ExitGAfter,s6Step101ExitGOut,shrinkRow 777 s6Step101ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step101ExitGBefore s6Step101ExitGRow 218 s6Step101ExitG_distinct s6Step101ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step101ExitGRow.payload.take 218) s6Step101ExitGRow.sign=s6Step101ExitGOut := by decide +kernel
  have hi : s6Step101ExitGRow.payload.drop 218=s6Step101ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step101ExitG_retired] at result
  exact result

private def s6Step101ExitGvBefore : Arena := s6Step101ExitFAfter

private theorem s6Step101ExitGv_Incoming : rowsOwned s6Step101ExitGvBefore [s6Step101ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step101ExitGRow,s6Step101ExitFRow,s6Step101ExitFvRow,s6Step101ExitGvRow] 3 s6Step101ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step101ExitGvBefore (fun q => ([(0,474),(475,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step101ExitGv_Outgoing : rowsOwned s6Step101ExitGvAfter [s6Step101ExitGvOut] :=
  hmrRows_owned_drop s6Step101ExitGvAfter [s6Step101ExitGOut,s6Step101ExitFOut,s6Step101ExitFvOut,s6Step101ExitGvOut] 3 s6Step101ExitBank_outgoingOwned

private theorem s6Step101ExitGv_distinct : (s6Step101ExitGvRow.sign::s6Step101ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step101ExitGv_owned : (s6Step101ExitGvRow.sign::s6Step101ExitGvRow.payload).toFinset⊆s6Step101ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step101ExitGvBefore (fun q => ([(0,474),(475,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step101ExitGv_retired : s6Step101ExitGvBefore.retireSet s6Step101ExitGvExtra.toFinset=s6Step101ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step101ExitGvBefore s6Step101ExitGvAfter s6Step101ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step101ExitGvBefore s6Step101ExitGvAfter (fun q => ([(0,474),(475,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,474),(475,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step101ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step101ExitGv_checked : planRowResizeLog s6Step101ExitGvBefore s6Step101ExitGvRow 64 []=
    some (s6Step101ExitGvAfter,s6Step101ExitGvOut,shrinkRow 775 s6Step101ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step101ExitGvBefore s6Step101ExitGvRow 64 s6Step101ExitGv_distinct s6Step101ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step101ExitGvRow.payload.take 64) s6Step101ExitGvRow.sign=s6Step101ExitGvOut := by decide +kernel
  have hi : s6Step101ExitGvRow.payload.drop 64=s6Step101ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step101ExitGv_retired] at result
  exact result

private theorem s6Step101ExitBank_rows : planWindowRowsLog s6Step101ExitGBefore [(s6Step101ExitGRow,218),(s6Step101ExitFRow,218),(s6Step101ExitFvRow,65),(s6Step101ExitGvRow,64)] [[],[],[],[]]=
    some (s6Step101ExitGvAfter,[s6Step101ExitGOut,s6Step101ExitFOut,s6Step101ExitFvOut,s6Step101ExitGvOut],(shrinkRow 777 s6Step101ExitGExtra ++ (shrinkRow 795 s6Step101ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step101ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step101ExitGvAfter [] []=some (s6Step101ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step101ExitGvBefore s6Step101ExitGvAfter s6Step101ExitGvAfter
    s6Step101ExitGvRow s6Step101ExitGvOut 64 [] [] [] []
    (shrinkRow 775 s6Step101ExitGvExtra) ([]) s6Step101ExitGv_Incoming s6Step101ExitGv_checked h4 s6Step101ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step101ExitFvBefore s6Step101ExitFvAfter s6Step101ExitGvAfter
    s6Step101ExitFvRow s6Step101ExitFvOut 65 [] [(s6Step101ExitGvRow,64)] [[]] [s6Step101ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step101ExitGvExtra ++ [])) s6Step101ExitFv_Incoming s6Step101ExitFv_checked h3 s6Step101ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step101ExitFBefore s6Step101ExitFAfter s6Step101ExitGvAfter
    s6Step101ExitFRow s6Step101ExitFOut 218 [] [(s6Step101ExitFvRow,65),(s6Step101ExitGvRow,64)] [[],[]] [s6Step101ExitFvOut,s6Step101ExitGvOut]
    (shrinkRow 795 s6Step101ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step101ExitGvExtra ++ []))) s6Step101ExitF_Incoming s6Step101ExitF_checked h2 s6Step101ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step101ExitGBefore s6Step101ExitGAfter s6Step101ExitGvAfter
    s6Step101ExitGRow s6Step101ExitGOut 218 [] [(s6Step101ExitFRow,218),(s6Step101ExitFvRow,65),(s6Step101ExitGvRow,64)] [[],[],[]] [s6Step101ExitFOut,s6Step101ExitFvOut,s6Step101ExitGvOut]
    (shrinkRow 777 s6Step101ExitGExtra) ((shrinkRow 795 s6Step101ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step101ExitGvExtra ++ [])))) s6Step101ExitG_Incoming s6Step101ExitG_checked h1 s6Step101ExitG_Outgoing
  exact h0

private theorem s6Step101ExitBank_checked : compileHmrBankResizeLog .exit s6Step101ExitGBefore ⟨s6Step101ExitFRow,s6Step101ExitGRow,s6Step101ExitFvRow,s6Step101ExitGvRow⟩ ⟨218,218,65,64⟩ [[],[],[],[]]=
    some (s6Step101ExitGvAfter,⟨s6Step101ExitFOut,s6Step101ExitGOut,s6Step101ExitFvOut,s6Step101ExitGvOut⟩,(shrinkRow 777 s6Step101ExitGExtra ++ (shrinkRow 795 s6Step101ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step101ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step101ExitBank_rows]
  rfl

private theorem s6Step101Add0_apart : Disjoint s6Step101Add0Arena.live s6Step101Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step101Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step101Add0_card : s6Step101Add0Arena.live.card=875 := by
  decide +kernel

private theorem s6Step101Add0_borrowed : s6Step101Add0Arena.checkBorrow (hmrHybridCount s6Step101Add0Arena s6Step101Add0B.length) s6Step101Add0Work=some s6Step101Add0During := by
  have len : s6Step101Add0Work.length=hmrHybridCount s6Step101Add0Arena s6Step101Add0B.length := by
    rw [hmrHybridCount,s6Step101Add0_card]
    decide +kernel
  have nd : s6Step101Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step101Add0Arena s6Step101Add0During s6Step101Add0Work.toFinset s6Step101Add0_bounded s6Step101Add0_apart rfl

private theorem s6Step101Add0_distinct : (813::856::879::(s6Step101Add0A++s6Step101Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step101Add0_owned : (813::856::879::(s6Step101Add0A++s6Step101Add0B)).toFinset⊆s6Step101Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step101Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step101Add0_checked : compileHmrHybridCinLog s6Step101Add0Arena 856 813 879 s6Step101Add0A s6Step101Add0B s6Step101Add0Work=some s6Step101Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step101Add0Arena s6Step101Add0During 856 813 879 s6Step101Add0A s6Step101Add0B s6Step101Add0Work
    (by decide +kernel) (by decide +kernel) s6Step101Add0_distinct
    (fun q hq => s6Step101Add0_owned (List.mem_toFinset.mpr hq)) s6Step101Add0_borrowed

private theorem s6Step101Add1_apart : Disjoint s6Step101Add1Arena.live s6Step101Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step101Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step101Add1_card : s6Step101Add1Arena.live.card=875 := by
  decide +kernel

private theorem s6Step101Add1_borrowed : s6Step101Add1Arena.checkBorrow (hmrHybridCount s6Step101Add1Arena s6Step101Add1B.length) s6Step101Add1Work=some s6Step101Add1During := by
  have len : s6Step101Add1Work.length=hmrHybridCount s6Step101Add1Arena s6Step101Add1B.length := by
    rw [hmrHybridCount,s6Step101Add1_card]
    decide +kernel
  have nd : s6Step101Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step101Add1Arena s6Step101Add1During s6Step101Add1Work.toFinset s6Step101Add1_bounded s6Step101Add1_apart rfl

private theorem s6Step101Add1_distinct : (813::856::879::(s6Step101Add1A++s6Step101Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step101Add1_owned : (813::856::879::(s6Step101Add1A++s6Step101Add1B)).toFinset⊆s6Step101Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step101Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step101Add1_checked : compileHmrHybridCinLog s6Step101Add1Arena 856 813 879 s6Step101Add1A s6Step101Add1B s6Step101Add1Work=some s6Step101Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step101Add1Arena s6Step101Add1During 856 813 879 s6Step101Add1A s6Step101Add1B s6Step101Add1Work
    (by decide +kernel) (by decide +kernel) s6Step101Add1_distinct
    (fun q hq => s6Step101Add1_owned (List.mem_toFinset.mpr hq)) s6Step101Add1_borrowed

private theorem s6Step101F4_apart : Disjoint (s6Step101Add0A++s6Step101Add0B).toFinset (s6Step101Add1A++s6Step101Add1B).toFinset := by
  have nd : ((s6Step101Add0A++s6Step101Add0B)++(s6Step101Add1A++s6Step101Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step101F4_carry : s6Step101F4FlagArena.checkBorrow 1 [879]=some s6Step101Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step101F4FlagArena,s6Step101HeadFvAfter,arenaWires]
  · change s6Step101Add0Arena.live=(s6Step101HeadFvAfter.live∪{813})∪{879}
    apply hmrArena_union_pair_of_filter_check s6Step101HeadFvAfter s6Step101Add0Arena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) 813 879 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step101F4_distinct : (907::856::813::879::((s6Step101Add0A++s6Step101Add1A)++(s6Step101Add0B++s6Step101Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step101F4_flag : s6Step101HeadFvAfter.checkBorrow 1 [813]=some s6Step101F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step101HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step101F4_owned : (907::856::((s6Step101Add0A++s6Step101Add1A)++(s6Step101Add0B++s6Step101Add1B))).toFinset⊆s6Step101HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step101HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step101F4_checked : compileHmrHybridF4Log s6Step101HeadFvAfter 907 856 s6Step101Add0A s6Step101Add0B s6Step101Add1A s6Step101Add1B [813] [879] s6Step101Add0Work s6Step101Add1Work=some s6Step101F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step101HeadFvAfter s6Step101F4FlagArena s6Step101Add0Arena s6Step101Add0During s6Step101Add1During 907 856
    s6Step101Add0A s6Step101Add0B s6Step101Add1A s6Step101Add1B [813] [879] s6Step101Add0Work s6Step101Add1Work
    (fun q hq => s6Step101F4_owned (List.mem_toFinset.mpr hq)) s6Step101F4_flag s6Step101F4_carry
    s6Step101F4_distinct s6Step101F4_apart s6Step101Add0_checked s6Step101Add1_checked

private theorem s6Step101Front_branch : s6Step101FrontSigmaArena.checkBorrow 1 [856]=some s6Step101HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step101FrontSigmaArena,s6Step101EntryGvAfter,s6Step101EntryGAfter,arenaWires]
  · change s6Step101HeadGBefore.live=(s6Step101EntryGvAfter.live∪{907})∪{856}
    apply hmrArena_union_pair_of_filter_check s6Step101EntryGvAfter s6Step101HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 907 856 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step101Front_entry : HmrFrontEntryValid s6Step101EntryFBefore s6Step101FrontBank 219 64 ⟨218,218,65,64⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step101FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step101EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step101EntryFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step101FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step101Front_sigma : s6Step101EntryGvAfter.checkBorrow 1 [907]=some s6Step101FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step101EntryGvAfter,s6Step101EntryGAfter,arenaWires]
  · rfl

private def s6Step101HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step101HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step101HeadFBefore : Arena := s6Step101HeadGAfter

private def s6Step101HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474],795⟩

private def s6Step101HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922],776⟩

private def s6Step101HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 803],777⟩

private def s6Step101HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873],775⟩

private theorem s6Step101HeadBank_incomingDistinct : ([s6Step101HeadGRow,s6Step101HeadFRow,s6Step101HeadGvRow,s6Step101HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step101HeadF_Incoming : rowsOwned s6Step101HeadFBefore [s6Step101HeadFRow,s6Step101HeadGvRow,s6Step101HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step101HeadGRow,s6Step101HeadFRow,s6Step101HeadGvRow,s6Step101HeadFvRow] 1 s6Step101HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step101HeadFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step101HeadBank_outgoingOwned : rowsOwned s6Step101HeadFvAfter [s6Step101HeadGOut,s6Step101HeadFOut,s6Step101HeadGvOut,s6Step101HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step101HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step101HeadF_Outgoing : rowsOwned s6Step101HeadFvAfter [s6Step101HeadFOut,s6Step101HeadGvOut,s6Step101HeadFvOut] :=
  hmrRows_owned_drop s6Step101HeadFvAfter [s6Step101HeadGOut,s6Step101HeadFOut,s6Step101HeadGvOut,s6Step101HeadFvOut] 1 s6Step101HeadBank_outgoingOwned

private theorem s6Step101HeadF_distinct : (s6Step101HeadFRow.sign::s6Step101HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step101HeadF_owned : (s6Step101HeadFRow.sign::s6Step101HeadFRow.payload).toFinset⊆s6Step101HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step101HeadFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step101HeadF_reserved : s6Step101HeadFBefore.reserve s6Step101HeadFFresh.toFinset=some s6Step101HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step101HeadFFresh,arenaWires]
  · norm_num [s6Step101HeadFBefore,s6Step101HeadGAfter,s6Step101HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step101HeadFBefore s6Step101HeadFAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step101HeadFFresh rfl rfl
    · norm_num [s6Step101HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step101HeadF_checked : planRowResizeLog s6Step101HeadFBefore s6Step101HeadFRow 220 s6Step101HeadFFresh=
    some (s6Step101HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 784],795⟩,growRow 795 s6Step101HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step101HeadFBefore s6Step101HeadFAfter s6Step101HeadFRow 220 s6Step101HeadFFresh
    s6Step101HeadF_distinct s6Step101HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step101HeadF_reserved
  have rowEq : WindowRow.mk (s6Step101HeadFRow.payload++s6Step101HeadFFresh) s6Step101HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 784],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step101HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,857),(858,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step101HeadFvBefore : Arena := s6Step101HeadGvAfter

private theorem s6Step101HeadFv_Incoming : rowsOwned s6Step101HeadFvBefore [s6Step101HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step101HeadGRow,s6Step101HeadFRow,s6Step101HeadGvRow,s6Step101HeadFvRow] 3 s6Step101HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step101HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,857),(858,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step101HeadFv_Outgoing : rowsOwned s6Step101HeadFvAfter [s6Step101HeadFvOut] :=
  hmrRows_owned_drop s6Step101HeadFvAfter [s6Step101HeadGOut,s6Step101HeadFOut,s6Step101HeadGvOut,s6Step101HeadFvOut] 3 s6Step101HeadBank_outgoingOwned

private theorem s6Step101HeadFv_distinct : (s6Step101HeadFvRow.sign::s6Step101HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step101HeadFv_owned : (s6Step101HeadFvRow.sign::s6Step101HeadFvRow.payload).toFinset⊆s6Step101HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step101HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,857),(858,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step101HeadFv_reserved : s6Step101HeadFvBefore.reserve s6Step101HeadFvFresh.toFinset=some s6Step101HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step101HeadFvFresh,arenaWires]
  · norm_num [s6Step101HeadFvBefore,s6Step101HeadGvAfter,s6Step101HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step101HeadFvBefore s6Step101HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,857),(858,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step101HeadFvFresh rfl rfl
    · norm_num [s6Step101HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step101HeadFv_checked : planRowResizeLog s6Step101HeadFvBefore s6Step101HeadFvRow 65 s6Step101HeadFvFresh=
    some (s6Step101HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857],776⟩,growRow 776 s6Step101HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step101HeadFvBefore s6Step101HeadFvAfter s6Step101HeadFvRow 65 s6Step101HeadFvFresh
    s6Step101HeadFv_distinct s6Step101HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step101HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step101HeadFvRow.payload++s6Step101HeadFvFresh) s6Step101HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step101HeadG_Incoming : rowsOwned s6Step101HeadGBefore [s6Step101HeadGRow,s6Step101HeadFRow,s6Step101HeadGvRow,s6Step101HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step101HeadGRow,s6Step101HeadFRow,s6Step101HeadGvRow,s6Step101HeadFvRow] 0 s6Step101HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step101HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step101HeadG_Outgoing : rowsOwned s6Step101HeadFvAfter [s6Step101HeadGOut,s6Step101HeadFOut,s6Step101HeadGvOut,s6Step101HeadFvOut] :=
  hmrRows_owned_drop s6Step101HeadFvAfter [s6Step101HeadGOut,s6Step101HeadFOut,s6Step101HeadGvOut,s6Step101HeadFvOut] 0 s6Step101HeadBank_outgoingOwned

private theorem s6Step101HeadG_distinct : (s6Step101HeadGRow.sign::s6Step101HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step101HeadG_owned : (s6Step101HeadGRow.sign::s6Step101HeadGRow.payload).toFinset⊆s6Step101HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step101HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step101HeadG_reserved : s6Step101HeadGBefore.reserve s6Step101HeadGFresh.toFinset=some s6Step101HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step101HeadGFresh,arenaWires]
  · norm_num [s6Step101HeadGBefore,s6Step101HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step101HeadGBefore s6Step101HeadGAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step101HeadGFresh rfl rfl
    · norm_num [s6Step101HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step101HeadG_checked : planRowResizeLog s6Step101HeadGBefore s6Step101HeadGRow 220 s6Step101HeadGFresh=
    some (s6Step101HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 803, 890],777⟩,growRow 777 s6Step101HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step101HeadGBefore s6Step101HeadGAfter s6Step101HeadGRow 220 s6Step101HeadGFresh
    s6Step101HeadG_distinct s6Step101HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step101HeadG_reserved
  have rowEq : WindowRow.mk (s6Step101HeadGRow.payload++s6Step101HeadGFresh) s6Step101HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 803, 890],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step101HeadGvBefore : Arena := s6Step101HeadFAfter

private theorem s6Step101HeadGv_Incoming : rowsOwned s6Step101HeadGvBefore [s6Step101HeadGvRow,s6Step101HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step101HeadGRow,s6Step101HeadFRow,s6Step101HeadGvRow,s6Step101HeadFvRow] 2 s6Step101HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step101HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step101HeadGv_Outgoing : rowsOwned s6Step101HeadFvAfter [s6Step101HeadGvOut,s6Step101HeadFvOut] :=
  hmrRows_owned_drop s6Step101HeadFvAfter [s6Step101HeadGOut,s6Step101HeadFOut,s6Step101HeadGvOut,s6Step101HeadFvOut] 2 s6Step101HeadBank_outgoingOwned

private theorem s6Step101HeadGv_distinct : (s6Step101HeadGvRow.sign::s6Step101HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step101HeadGv_owned : (s6Step101HeadGvRow.sign::s6Step101HeadGvRow.payload).toFinset⊆s6Step101HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step101HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step101HeadGv_reserved : s6Step101HeadGvBefore.reserve s6Step101HeadGvFresh.toFinset=some s6Step101HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step101HeadGvFresh,arenaWires]
  · norm_num [s6Step101HeadGvBefore,s6Step101HeadFAfter,s6Step101HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step101HeadGvBefore s6Step101HeadGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,857),(858,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step101HeadGvFresh rfl rfl
    · norm_num [s6Step101HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step101HeadGv_checked : planRowResizeLog s6Step101HeadGvBefore s6Step101HeadGvRow 65 s6Step101HeadGvFresh=
    some (s6Step101HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 876],775⟩,growRow 775 s6Step101HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step101HeadGvBefore s6Step101HeadGvAfter s6Step101HeadGvRow 65 s6Step101HeadGvFresh
    s6Step101HeadGv_distinct s6Step101HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step101HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step101HeadGvRow.payload++s6Step101HeadGvFresh) s6Step101HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 876],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step101HeadBank_rows : planWindowRowsLog s6Step101HeadGBefore [(s6Step101HeadGRow,220),(s6Step101HeadFRow,220),(s6Step101HeadGvRow,65),(s6Step101HeadFvRow,65)] [s6Step101HeadGFresh,s6Step101HeadFFresh,s6Step101HeadGvFresh,s6Step101HeadFvFresh]=
    some (s6Step101HeadFvAfter,[s6Step101HeadGOut,s6Step101HeadFOut,s6Step101HeadGvOut,s6Step101HeadFvOut],(growRow 777 s6Step101HeadGFresh ++ (growRow 795 s6Step101HeadFFresh ++ (growRow 775 s6Step101HeadGvFresh ++ (growRow 776 s6Step101HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step101HeadFvAfter [] []=some (s6Step101HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step101HeadFvBefore s6Step101HeadFvAfter s6Step101HeadFvAfter
    s6Step101HeadFvRow s6Step101HeadFvOut 65 s6Step101HeadFvFresh [] [] []
    (growRow 776 s6Step101HeadFvFresh) ([]) s6Step101HeadFv_Incoming s6Step101HeadFv_checked h4 s6Step101HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step101HeadGvBefore s6Step101HeadGvAfter s6Step101HeadFvAfter
    s6Step101HeadGvRow s6Step101HeadGvOut 65 s6Step101HeadGvFresh [(s6Step101HeadFvRow,65)] [s6Step101HeadFvFresh] [s6Step101HeadFvOut]
    (growRow 775 s6Step101HeadGvFresh) ((growRow 776 s6Step101HeadFvFresh ++ [])) s6Step101HeadGv_Incoming s6Step101HeadGv_checked h3 s6Step101HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step101HeadFBefore s6Step101HeadFAfter s6Step101HeadFvAfter
    s6Step101HeadFRow s6Step101HeadFOut 220 s6Step101HeadFFresh [(s6Step101HeadGvRow,65),(s6Step101HeadFvRow,65)] [s6Step101HeadGvFresh,s6Step101HeadFvFresh] [s6Step101HeadGvOut,s6Step101HeadFvOut]
    (growRow 795 s6Step101HeadFFresh) ((growRow 775 s6Step101HeadGvFresh ++ (growRow 776 s6Step101HeadFvFresh ++ []))) s6Step101HeadF_Incoming s6Step101HeadF_checked h2 s6Step101HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step101HeadGBefore s6Step101HeadGAfter s6Step101HeadFvAfter
    s6Step101HeadGRow s6Step101HeadGOut 220 s6Step101HeadGFresh [(s6Step101HeadFRow,220),(s6Step101HeadGvRow,65),(s6Step101HeadFvRow,65)] [s6Step101HeadFFresh,s6Step101HeadGvFresh,s6Step101HeadFvFresh] [s6Step101HeadFOut,s6Step101HeadGvOut,s6Step101HeadFvOut]
    (growRow 777 s6Step101HeadGFresh) ((growRow 795 s6Step101HeadFFresh ++ (growRow 775 s6Step101HeadGvFresh ++ (growRow 776 s6Step101HeadFvFresh ++ [])))) s6Step101HeadG_Incoming s6Step101HeadG_checked h1 s6Step101HeadG_Outgoing
  exact h0

private theorem s6Step101HeadBank_checked : compileHmrBankResizeLog .headroom s6Step101HeadGBefore ⟨s6Step101HeadFRow,s6Step101HeadGRow,s6Step101HeadFvRow,s6Step101HeadGvRow⟩ ⟨220,220,65,65⟩ [s6Step101HeadGFresh,s6Step101HeadFFresh,s6Step101HeadGvFresh,s6Step101HeadFvFresh]=
    some (s6Step101HeadFvAfter,⟨s6Step101HeadFOut,s6Step101HeadGOut,s6Step101HeadFvOut,s6Step101HeadGvOut⟩,(growRow 777 s6Step101HeadGFresh ++ (growRow 795 s6Step101HeadFFresh ++ (growRow 775 s6Step101HeadGvFresh ++ (growRow 776 s6Step101HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step101HeadBank_rows]
  rfl

private theorem s6Step101Front_checked : compileHmrSourceFrontLog s6Step101EntryFBefore s6Step101FrontBank 219 64 ⟨218,218,65,64⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step101FrontLog=some s6Step101FrontPlan := by
  have pairEq : s6Step101FrontPair=⟨s6Step101HeadFRow,s6Step101HeadGRow,s6Step101HeadFvRow,s6Step101HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step101FrontHead=⟨s6Step101ExitFRow,s6Step101ExitGRow,s6Step101ExitFvRow,s6Step101ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step101Add0A=s6Step101FrontHead.f.wires := by decide +kernel
  have gEq : s6Step101Add0B=s6Step101FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step101Add1A=s6Step101FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step101Add1B=s6Step101FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step101EntryFBefore s6Step101FrontBank 219 64 ⟨218,218,65,64⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step101FrontLog s6Step101FrontPlan
  · exact s6Step101Front_entry
  · exact s6Step101EntryBank_checked
  · exact s6Step101Front_sigma
  · rfl
  · exact s6Step101Front_branch
  · rfl
  · simpa only [s6Step101FrontPlan,pairEq] using s6Step101HeadBank_checked
  · simpa only [s6Step101FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step101F4_checked
  · exact s6Step101Counter_checked
  · rfl
  · simpa only [s6Step101FrontPlan,headEq] using s6Step101ExitBank_checked

private theorem s6Step101Complete_explicit_checked : compileHmrEarlyStepLog s6Step101EntryFBefore s6Step101FrontBank 219 64 ⟨218,218,65,64⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step101CompleteLog=some s6Step101CompletePlan := by
  let Q := s6Step101EarlyControlPlan
  have hq := s6Step101EarlyControl_plan_checked
  have fv1 : s6Step101CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step101CompleteOut.fv.payload[2]?.getD s6Step101CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step101CompleteOut.fv.payload[3]?.getD s6Step101CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step101CompleteOut.fv.payload[4]?.getD s6Step101CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step101EntryFBefore s6Step101EarlyControlArena s6Step101FrontBank 219 64 ⟨218,218,65,64⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step101CompleteLog s6Step101FrontPlan Q
    s6Step101Front_checked s6Step101Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step101Complete_owned s6Step101Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step101EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 907 s6Step101CompleteOut.fv.second (s6Step101CompleteOut.fv.payload[2]?.getD s6Step101CompleteOut.fv.sign) (s6Step101CompleteOut.fv.payload[3]?.getD s6Step101CompleteOut.fv.sign) (s6Step101CompleteOut.fv.payload[4]?.getD s6Step101CompleteOut.fv.sign) 856 35 s6Step101EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep101Arena : Arena := s6Step101EntryFBefore
def s6PrivateStep101Bank : WindowBank := s6Step101FrontBank
def s6PrivateStep101Spec : HmrSourceWalkStepLog := ⟨219,64,⟨218,218,65,64⟩,35,.early s6Step101CompleteLog⟩
def s6PrivateStep101Plan : HmrSourceStepPlan := .early s6Step101CompletePlan
theorem s6PrivateStep101_source : s6PrivateStep101Spec=s6ObservedLogs96[5] := rfl
theorem s6PrivateStep101_checked : compileHmrSourceStepLog s6PrivateStep101Arena s6PrivateStep101Bank
    s6PrivateStep101Spec.fgWidth s6PrivateStep101Spec.vWidth s6PrivateStep101Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840]
    6 498 101 s6PrivateStep101Spec.need none s6PrivateStep101Spec.log=some s6PrivateStep101Plan := by
  change compileHmrSourceStepLog s6Step101EntryFBefore s6Step101FrontBank 219 64 ⟨218,218,65,64⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 6 498 101 35 none (.early s6Step101CompleteLog)=some (.early s6Step101CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 101<498)]
  rw [s6Step101Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
