import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep96
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

private def s6Step98CompleteMoves : List (Wire × Wire) := [(865,218)]

private def s6Step98EarlyControlLog : HmrEarlyControlLog := ⟨[865, 907, 803, 874, 813],[796],[857],[879, 784, 891, 903, 885, 791],[]⟩

private def s6Step98FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [813, 796], [], [779, 907]],[[857], [874], [803], [922]],[[], [], [], []]⟩,[876],[890],[879],[784],[891, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[879, 784, 891, 903]⟩

private def s6Step98CompleteLog : HmrEarlyStepLog := ⟨s6Step98FrontLog,s6Step98CompleteMoves,s6Step98EarlyControlLog⟩

private def s6Step98ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476],795⟩

private def s6Step98ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922],776⟩

private def s6Step98ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],777⟩

private def s6Step98ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779],775⟩

private def s6Step98FrontOut : WindowBank := ⟨s6Step98ExitFOut,s6Step98ExitGOut,s6Step98ExitFvOut,s6Step98ExitGvOut⟩

private def s6Step98CompleteOut : WindowBank := s6Step98FrontOut.repacked s6Step98CompleteMoves

private def s6Step98EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step98EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step98EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step98EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step98EarlyControlPositiveArena,[796],s6Step98EarlyControlEqualityArena,[857],⟨⟨876,false⟩,[⟨⟨796,false⟩,857⟩]⟩⟩

private def s6Step98EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step98EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step98EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step98EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step98EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,874),(875,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step98EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step98EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,865⟩,⟨⟨772,false⟩,907⟩,⟨⟨771,false⟩,803⟩,⟨⟨770,false⟩,874⟩,⟨⟨769,false⟩,813⟩]⟩

private def s6Step98EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step98EarlyControlZeroArena,s6Step98EarlyControlZeroPlan,s6Step98EarlyControlClassPlan,s6Step98EarlyControlFlagArena,s6Step98EarlyControlFittedArena,s6Step98EarlyControlHistoryArena,s6Step98EarlyControlSigmaArena,s6Step98EarlyControlOutputArena,s6Step98EarlyControlLog⟩

private def s6Step98CounterWork : List Wire := [879, 784, 891, 903]

private theorem s6Step98Counter_bounded : s6Step98CounterWork.toFinset⊆arenaWires := by norm_num [s6Step98CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step98HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step98CounterDuring : Arena := ⟨s6Step98HeadFvAfter.live∪s6Step98CounterWork.toFinset,Finset.union_subset s6Step98HeadFvAfter.bounded s6Step98Counter_bounded⟩

private def s6Step98EntryFFresh : List Wire := []

private def s6Step98EntryFvFresh : List Wire := []

private def s6Step98EntryGFresh : List Wire := [813, 796]

private def s6Step98EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step98EntryGvFresh : List Wire := [779, 907]

private def s6Step98ExitFExtra : List Wire := [874]

private def s6Step98ExitGExtra : List Wire := [218, 813, 796, 857]

private def s6Step98ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,218),(219,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step98ExitGvExtra : List Wire := [907, 803]

private def s6Step98Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step98Add0Work : List Wire := [891, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step98Add0_bounded : s6Step98Add0Work.toFinset⊆arenaWires := by
  have h : s6Step98Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step98Add0During : Arena := ⟨s6Step98Add0Arena.live∪s6Step98Add0Work.toFinset,Finset.union_subset s6Step98Add0Arena.bounded s6Step98Add0_bounded⟩

private def s6Step98Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step98Add1Work : List Wire := [891, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step98Add1_bounded : s6Step98Add1Work.toFinset⊆arenaWires := by
  have h : s6Step98Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step98Add1During : Arena := ⟨s6Step98Add1Arena.live∪s6Step98Add1Work.toFinset,Finset.union_subset s6Step98Add1Arena.bounded s6Step98Add1_bounded⟩

private def s6Step98F4FlagArena : Arena := ⟨s6Step98HeadFvAfter.live∪{879},Finset.union_subset s6Step98HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step98F4Plan : HmrHybridF4Plan := ⟨s6Step98F4FlagArena,[879],s6Step98Add0Arena,[784],s6Step98Add0During,s6Step98Add0Work,s6Step98Add1During,s6Step98Add1Work⟩

private def s6Step98HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 874],795⟩

private def s6Step98HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922],776⟩

private def s6Step98HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 813, 796, 857],777⟩

private def s6Step98HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 907, 803],775⟩

private def s6Step98FrontHead : WindowBank := ⟨s6Step98HeadFOut,s6Step98HeadGOut,s6Step98HeadFvOut,s6Step98HeadGvOut⟩

private def s6Step98EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476],795⟩

private def s6Step98EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881],776⟩

private def s6Step98EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 813, 796],777⟩

private def s6Step98EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 907],775⟩

private def s6Step98FrontPair : WindowBank := ⟨s6Step98EntryFOut,s6Step98EntryGOut,s6Step98EntryFvOut,s6Step98EntryGvOut⟩

private def s6Step98FrontSigmaArena : Arena := ⟨s6Step98EntryGvAfter.live∪{876},Finset.union_subset s6Step98EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step98HeadFFresh : List Wire := [874]

private def s6Step98HeadFvFresh : List Wire := [922]

private def s6Step98HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step98HeadGFresh : List Wire := [857]

private def s6Step98HeadGvFresh : List Wire := [803]

private def s6Step98FrontPlan : HmrSourceFront := ⟨s6Step98EntryGvAfter,s6Step98FrontPair,(growRow 795 s6Step98EntryFFresh ++ (growRow 777 s6Step98EntryGFresh ++ (growRow 776 s6Step98EntryFvFresh ++ (growRow 775 s6Step98EntryGvFresh ++ [])))),s6Step98FrontSigmaArena,[876],s6Step98HeadGBefore,[890],
  s6Step98HeadFvAfter,s6Step98FrontHead,(growRow 777 s6Step98HeadGFresh ++ (growRow 795 s6Step98HeadFFresh ++ (growRow 775 s6Step98HeadGvFresh ++ (growRow 776 s6Step98HeadFvFresh ++ [])))),s6Step98F4Plan,s6Step98CounterDuring,s6Step98CounterWork,s6Step98ExitGvAfter,s6Step98FrontOut,(shrinkRow 777 s6Step98ExitGExtra ++ (shrinkRow 795 s6Step98ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step98ExitGvExtra ++ []))))⟩

private def s6Step98CompletePlan : HmrEarlyStepPlan := ⟨s6Step98FrontPlan,s6Step98EarlyControlArena,s6Step98EarlyControlPlan,s6Step98CompleteMoves⟩

private theorem s6Step98Complete_apart : List.Disjoint (s6Step98CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [876, 890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] := by
  have nd : ((s6Step98CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[876, 890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step98Complete_owned : (s6Step98CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step98EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step98EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step98CompleteRelocationMove0Borrowed : Arena := ⟨s6Step98ExitGvAfter.live∪{218},Finset.union_subset s6Step98ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step98CompleteRelocation_move0_owned : 865∈s6Step98ExitGvAfter.live := by norm_num [s6Step98ExitGvAfter,arenaWires]

private theorem s6Step98CompleteRelocation_move0_reserve : s6Step98ExitGvAfter.reserve {218}=some s6Step98CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step98ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step98CompleteRelocation_move0_retire : s6Step98CompleteRelocationMove0Borrowed.retireSet {865}=s6Step98EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step98CompleteRelocationMove0Borrowed s6Step98EarlyControlArena {865}
  change s6Step98EarlyControlArena.live=(s6Step98ExitGvAfter.live∪{218})\{865}
  apply hmrArena_update_of_filter_check s6Step98ExitGvAfter s6Step98EarlyControlArena (fun q => ([(0,218),(219,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [218] [865] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step98CompleteRelocation_checked : s6Step98ExitGvAfter.checkRepack [(865,218)]=some s6Step98EarlyControlArena := by
  have tail1 : s6Step98EarlyControlArena.checkRepack []=some s6Step98EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step98ExitGvAfter s6Step98CompleteRelocationMove0Borrowed s6Step98EarlyControlArena s6Step98EarlyControlArena 865 218 []
    s6Step98CompleteRelocation_move0_owned s6Step98CompleteRelocation_move0_reserve s6Step98CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step98Complete_repack : s6Step98ExitGvAfter.checkRepack s6Step98CompleteMoves=some s6Step98EarlyControlArena := by
  simpa only [s6Step98CompleteMoves] using s6Step98CompleteRelocation_checked

private theorem s6Step98EarlyControl_branchOwned : ([890] : List Wire).toFinset⊆s6Step98EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step98EarlyControlSigmaArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,874),(875,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step98EarlyControl_branch : compileHmrBranchRetirement s6Step98EarlyControlSigmaArena 890=some s6Step98EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step98EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step98EarlyControlSigmaArena s6Step98EarlyControlOutputArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,874),(875,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [890] rfl rfl
    decide +kernel

private theorem s6Step98EarlyControl_classEqualityBorrow : s6Step98EarlyControlPositiveArena.checkBorrow (([876, 796] : List Wire).length-1) s6Step98EarlyControlLog.classWork=some s6Step98EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step98EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step98EarlyControlPositiveArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step98EarlyControlPositiveArena s6Step98EarlyControlEqualityArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step98EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step98EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step98EarlyControl_classEqualityOwned : ([876, 796] : List Wire).toFinset⊆s6Step98EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step98EarlyControlPositiveArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step98EarlyControl_classEquality : compileHmrEqualityLog s6Step98EarlyControlPositiveArena [876, 796] 0 s6Step98EarlyControlLog.classWork=some (s6Step98EarlyControlEqualityArena,s6Step98EarlyControlLog.classWork,s6Step98EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step98EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step98EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step98EarlyControl_classOwned : ([769, 813, 876] : List Wire).toFinset⊆s6Step98EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step98EarlyControlZeroArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step98EarlyControl_positiveBorrow : s6Step98EarlyControlZeroArena.checkBorrow (1) s6Step98EarlyControlLog.positiveWork=some s6Step98EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step98EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step98EarlyControlZeroArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step98EarlyControlZeroArena s6Step98EarlyControlPositiveArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step98EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step98EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step98EarlyControl_class : compileHmrSourceClassLog s6Step98EarlyControlZeroArena false 769 s6Step98EarlyControlZeroPlan.top 0 876 s6Step98EarlyControlLog.positiveWork s6Step98EarlyControlLog.classWork=some s6Step98EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step98EarlyControlClassPlan s6Step98EarlyControlZeroArena false 769 s6Step98EarlyControlZeroPlan.top 0 876
  constructor
  · decide +kernel
  · exact s6Step98EarlyControl_classOwned
  · exact s6Step98EarlyControl_positiveBorrow
  · exact s6Step98EarlyControl_classEquality

private theorem s6Step98EarlyControl_entryRecordOwned : ([890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).toFinset⊆s6Step98EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step98EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step98EarlyControl_entrySigmaOwned : ([876, 254] : List Wire).toFinset⊆s6Step98EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step98EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step98EarlyControl_fitBorrow : s6Step98EarlyControlFlagArena.checkBorrow ((34-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).length)) s6Step98EarlyControlLog.recordFresh=some s6Step98EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step98EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step98EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step98EarlyControlFittedArena,s6Step98EarlyControlFlagArena,s6Step98EarlyControlLog,arenaWires]

private theorem s6Step98EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).toFinset⊆s6Step98EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step98EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step98EarlyControl_fit : compileHmrRecordGrowLog s6Step98EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 34 s6Step98EarlyControlLog.recordFresh=some s6Step98EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step98EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step98EarlyControl_fitBorrow

private theorem s6Step98EarlyControl_flagsBorrow : s6Step98EarlyControlEqualityArena.checkBorrow (6) s6Step98EarlyControlLog.flagWork=some s6Step98EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step98EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step98EarlyControlEqualityArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step98EarlyControlEqualityArena s6Step98EarlyControlFlagArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step98EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step98EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step98EarlyControl_flagsOwned : ([857, 253, 252, 251] : List Wire).toFinset⊆s6Step98EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step98EarlyControlEqualityArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step98EarlyControl_flags : compileHmrFlagsLog s6Step98EarlyControlClassPlan.equalityArena s6Step98EarlyControlClassPlan.equality.top 253 252 251 s6Step98EarlyControlLog.flagWork=some s6Step98EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step98EarlyControl_flagsOwned⟩
  · exact s6Step98EarlyControl_flagsBorrow

private theorem s6Step98EarlyControl_historyBorrow : s6Step98EarlyControlArena.checkBorrow ((34-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).length)) s6Step98EarlyControlLog.recordFresh=some s6Step98EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step98EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step98EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step98EarlyControlArena s6Step98EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step98EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step98EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step98EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).toFinset⊆s6Step98EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step98EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step98EarlyControl_history : compileHmrRecordGrowLog s6Step98EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 34 s6Step98EarlyControlLog.recordFresh=some s6Step98EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step98EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step98EarlyControl_historyBorrow

private theorem s6Step98EarlyControl_sigmaOwned : ([254, 876] : List Wire).toFinset⊆s6Step98EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step98EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step98EarlyControl_sigmaReleaseOwned : ([876] : List Wire).toFinset⊆s6Step98EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step98EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step98EarlyControl_sigmaRelease : s6Step98EarlyControlHistoryArena.release {876} (fun _ => false)=some s6Step98EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step98EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step98EarlyControlHistoryArena s6Step98EarlyControlSigmaArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,874),(875,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [876] rfl rfl
    decide +kernel

private theorem s6Step98EarlyControl_sigma : compileHmrSigmaDropLog s6Step98EarlyControlHistoryArena false 0 0 254 876 []=some s6Step98EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step98EarlyControl_sigmaOwned⟩
  · exact s6Step98EarlyControl_sigmaRelease

private theorem s6Step98EarlyControl_zeroBorrow : s6Step98EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step98EarlyControlLog.zeroWork=some s6Step98EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step98EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step98EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step98EarlyControlArena s6Step98EarlyControlZeroArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step98EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step98EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step98EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step98EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step98EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step98EarlyControl_zero : compileHmrEqualityLog s6Step98EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step98EarlyControlLog.zeroWork=some (s6Step98EarlyControlZeroArena,s6Step98EarlyControlLog.zeroWork,s6Step98EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step98EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step98EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step98EarlyControl_logged : s6Step98EarlyControlPlan.Logged s6Step98EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 876 254 253 252 251 890 34 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step98EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step98EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step98EarlyControl_zero
  · exact s6Step98EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step98EarlyControl_flags
  · exact s6Step98EarlyControl_fit
  · exact s6Step98EarlyControl_history
  · exact s6Step98EarlyControl_sigma
  · exact s6Step98EarlyControl_branch

private theorem s6Step98EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step98EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 876 254 253 252 251 890 34 s6Step98EarlyControlLog=some s6Step98EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step98EarlyControlPlan s6Step98EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 876 254 253 252 251 890 34 s6Step98EarlyControl_logged

private def s6Step98EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step98EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476],795⟩

private def s6Step98EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881],776⟩

private def s6Step98EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218],777⟩

private def s6Step98EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858],775⟩

private def s6Step98FrontBank : WindowBank := ⟨s6Step98EntryFRow,s6Step98EntryGRow,s6Step98EntryFvRow,s6Step98EntryGvRow⟩

private def s6Step98Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 874, 795]

private def s6Step98Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 813, 796, 857, 777]

private def s6Step98Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 776]

private def s6Step98Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 907, 803, 775]

private theorem s6Step98Counter_apart : Disjoint s6Step98HeadFvAfter.live s6Step98CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step98HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step98Counter_borrowed : s6Step98HeadFvAfter.checkBorrow 4 s6Step98CounterWork=some s6Step98CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step98HeadFvAfter s6Step98CounterDuring s6Step98CounterWork.toFinset s6Step98Counter_bounded s6Step98Counter_apart rfl

private theorem s6Step98Counter_owned : (876::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step98HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step98HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step98Counter_checked : compileHmrCounterStepLog s6Step98HeadFvAfter true 876 [774, 773, 772, 771, 770, 769] s6Step98CounterWork=some s6Step98CounterDuring := by
  have owned : ∀q∈876::[774, 773, 772, 771, 770, 769],q∈s6Step98HeadFvAfter.live := fun q hq => s6Step98Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step98Counter_borrowed

private def s6Step98EntryFAfter : Arena := s6Step98EntryFBefore

private theorem s6Step98EntryBank_incomingDistinct : ([s6Step98EntryFRow,s6Step98EntryGRow,s6Step98EntryFvRow,s6Step98EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step98EntryF_Incoming : rowsOwned s6Step98EntryFBefore [s6Step98EntryFRow,s6Step98EntryGRow,s6Step98EntryFvRow,s6Step98EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step98EntryFRow,s6Step98EntryGRow,s6Step98EntryFvRow,s6Step98EntryGvRow] 0 s6Step98EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step98EntryFBefore (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step98EntryBank_outgoingOwned : rowsOwned s6Step98EntryGvAfter [s6Step98EntryFOut,s6Step98EntryGOut,s6Step98EntryFvOut,s6Step98EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step98EntryGvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step98EntryF_Outgoing : rowsOwned s6Step98EntryGvAfter [s6Step98EntryFOut,s6Step98EntryGOut,s6Step98EntryFvOut,s6Step98EntryGvOut] :=
  hmrRows_owned_drop s6Step98EntryGvAfter [s6Step98EntryFOut,s6Step98EntryGOut,s6Step98EntryFvOut,s6Step98EntryGvOut] 0 s6Step98EntryBank_outgoingOwned

private theorem s6Step98EntryF_distinct : (s6Step98EntryFRow.sign::s6Step98EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step98EntryF_owned : (s6Step98EntryFRow.sign::s6Step98EntryFRow.payload).toFinset⊆s6Step98EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step98EntryFBefore (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step98EntryF_reserved : s6Step98EntryFBefore.reserve s6Step98EntryFFresh.toFinset=some s6Step98EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step98EntryFFresh,arenaWires]
  · norm_num [s6Step98EntryFBefore,s6Step98EntryFFresh,arenaWires]
  · simp only [s6Step98EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step98EntryF_checked : planRowResizeLog s6Step98EntryFBefore s6Step98EntryFRow 221 s6Step98EntryFFresh=
    some (s6Step98EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476],795⟩,growRow 795 s6Step98EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step98EntryFBefore s6Step98EntryFAfter s6Step98EntryFRow 221 s6Step98EntryFFresh
    s6Step98EntryF_distinct s6Step98EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step98EntryF_reserved
  have rowEq : WindowRow.mk (s6Step98EntryFRow.payload++s6Step98EntryFFresh) s6Step98EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step98EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step98EntryFvAfter : Arena := s6Step98EntryGAfter

private def s6Step98EntryFvBefore : Arena := s6Step98EntryGAfter

private theorem s6Step98EntryFv_Incoming : rowsOwned s6Step98EntryFvBefore [s6Step98EntryFvRow,s6Step98EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step98EntryFRow,s6Step98EntryGRow,s6Step98EntryFvRow,s6Step98EntryGvRow] 2 s6Step98EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step98EntryFvBefore (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step98EntryFv_Outgoing : rowsOwned s6Step98EntryGvAfter [s6Step98EntryFvOut,s6Step98EntryGvOut] :=
  hmrRows_owned_drop s6Step98EntryGvAfter [s6Step98EntryFOut,s6Step98EntryGOut,s6Step98EntryFvOut,s6Step98EntryGvOut] 2 s6Step98EntryBank_outgoingOwned

private theorem s6Step98EntryFv_distinct : (s6Step98EntryFvRow.sign::s6Step98EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step98EntryFv_owned : (s6Step98EntryFvRow.sign::s6Step98EntryFvRow.payload).toFinset⊆s6Step98EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step98EntryFvBefore (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step98EntryFv_reserved : s6Step98EntryFvBefore.reserve s6Step98EntryFvFresh.toFinset=some s6Step98EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step98EntryFvFresh,arenaWires]
  · norm_num [s6Step98EntryFvBefore,s6Step98EntryGAfter,s6Step98EntryFvFresh,arenaWires]
  · simp only [s6Step98EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step98EntryFv_checked : planRowResizeLog s6Step98EntryFvBefore s6Step98EntryFvRow 63 s6Step98EntryFvFresh=
    some (s6Step98EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881],776⟩,growRow 776 s6Step98EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step98EntryFvBefore s6Step98EntryFvAfter s6Step98EntryFvRow 63 s6Step98EntryFvFresh
    s6Step98EntryFv_distinct s6Step98EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step98EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step98EntryFvRow.payload++s6Step98EntryFvFresh) s6Step98EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step98EntryGBefore : Arena := s6Step98EntryFBefore

private theorem s6Step98EntryG_Incoming : rowsOwned s6Step98EntryGBefore [s6Step98EntryGRow,s6Step98EntryFvRow,s6Step98EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step98EntryFRow,s6Step98EntryGRow,s6Step98EntryFvRow,s6Step98EntryGvRow] 1 s6Step98EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step98EntryGBefore (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step98EntryG_Outgoing : rowsOwned s6Step98EntryGvAfter [s6Step98EntryGOut,s6Step98EntryFvOut,s6Step98EntryGvOut] :=
  hmrRows_owned_drop s6Step98EntryGvAfter [s6Step98EntryFOut,s6Step98EntryGOut,s6Step98EntryFvOut,s6Step98EntryGvOut] 1 s6Step98EntryBank_outgoingOwned

private theorem s6Step98EntryG_distinct : (s6Step98EntryGRow.sign::s6Step98EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step98EntryG_owned : (s6Step98EntryGRow.sign::s6Step98EntryGRow.payload).toFinset⊆s6Step98EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step98EntryGBefore (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step98EntryG_reserved : s6Step98EntryGBefore.reserve s6Step98EntryGFresh.toFinset=some s6Step98EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step98EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step98EntryGBefore,s6Step98EntryFBefore,s6Step98EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step98EntryGBefore s6Step98EntryGAfter (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step98EntryGFresh rfl rfl
    · norm_num [s6Step98EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step98EntryG_checked : planRowResizeLog s6Step98EntryGBefore s6Step98EntryGRow 221 s6Step98EntryGFresh=
    some (s6Step98EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 813, 796],777⟩,growRow 777 s6Step98EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step98EntryGBefore s6Step98EntryGAfter s6Step98EntryGRow 221 s6Step98EntryGFresh
    s6Step98EntryG_distinct s6Step98EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step98EntryG_reserved
  have rowEq : WindowRow.mk (s6Step98EntryGRow.payload++s6Step98EntryGFresh) s6Step98EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 813, 796],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step98EntryGvBefore : Arena := s6Step98EntryGAfter

private theorem s6Step98EntryGv_Incoming : rowsOwned s6Step98EntryGvBefore [s6Step98EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step98EntryFRow,s6Step98EntryGRow,s6Step98EntryFvRow,s6Step98EntryGvRow] 3 s6Step98EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step98EntryGvBefore (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step98EntryGv_Outgoing : rowsOwned s6Step98EntryGvAfter [s6Step98EntryGvOut] :=
  hmrRows_owned_drop s6Step98EntryGvAfter [s6Step98EntryFOut,s6Step98EntryGOut,s6Step98EntryFvOut,s6Step98EntryGvOut] 3 s6Step98EntryBank_outgoingOwned

private theorem s6Step98EntryGv_distinct : (s6Step98EntryGvRow.sign::s6Step98EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step98EntryGv_owned : (s6Step98EntryGvRow.sign::s6Step98EntryGvRow.payload).toFinset⊆s6Step98EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step98EntryGvBefore (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step98EntryGv_reserved : s6Step98EntryGvBefore.reserve s6Step98EntryGvFresh.toFinset=some s6Step98EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step98EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step98EntryGvBefore,s6Step98EntryGAfter,s6Step98EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step98EntryGvBefore s6Step98EntryGvAfter (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step98EntryGvFresh rfl rfl
    · norm_num [s6Step98EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step98EntryGv_checked : planRowResizeLog s6Step98EntryGvBefore s6Step98EntryGvRow 63 s6Step98EntryGvFresh=
    some (s6Step98EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 907],775⟩,growRow 775 s6Step98EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step98EntryGvBefore s6Step98EntryGvAfter s6Step98EntryGvRow 63 s6Step98EntryGvFresh
    s6Step98EntryGv_distinct s6Step98EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step98EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step98EntryGvRow.payload++s6Step98EntryGvFresh) s6Step98EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 907],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step98EntryBank_rows : planWindowRowsLog s6Step98EntryFBefore [(s6Step98EntryFRow,221),(s6Step98EntryGRow,221),(s6Step98EntryFvRow,63),(s6Step98EntryGvRow,63)] [s6Step98EntryFFresh,s6Step98EntryGFresh,s6Step98EntryFvFresh,s6Step98EntryGvFresh]=
    some (s6Step98EntryGvAfter,[s6Step98EntryFOut,s6Step98EntryGOut,s6Step98EntryFvOut,s6Step98EntryGvOut],(growRow 795 s6Step98EntryFFresh ++ (growRow 777 s6Step98EntryGFresh ++ (growRow 776 s6Step98EntryFvFresh ++ (growRow 775 s6Step98EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step98EntryGvAfter [] []=some (s6Step98EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step98EntryGvBefore s6Step98EntryGvAfter s6Step98EntryGvAfter
    s6Step98EntryGvRow s6Step98EntryGvOut 63 s6Step98EntryGvFresh [] [] []
    (growRow 775 s6Step98EntryGvFresh) ([]) s6Step98EntryGv_Incoming s6Step98EntryGv_checked h4 s6Step98EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step98EntryFvBefore s6Step98EntryFvAfter s6Step98EntryGvAfter
    s6Step98EntryFvRow s6Step98EntryFvOut 63 s6Step98EntryFvFresh [(s6Step98EntryGvRow,63)] [s6Step98EntryGvFresh] [s6Step98EntryGvOut]
    (growRow 776 s6Step98EntryFvFresh) ((growRow 775 s6Step98EntryGvFresh ++ [])) s6Step98EntryFv_Incoming s6Step98EntryFv_checked h3 s6Step98EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step98EntryGBefore s6Step98EntryGAfter s6Step98EntryGvAfter
    s6Step98EntryGRow s6Step98EntryGOut 221 s6Step98EntryGFresh [(s6Step98EntryFvRow,63),(s6Step98EntryGvRow,63)] [s6Step98EntryFvFresh,s6Step98EntryGvFresh] [s6Step98EntryFvOut,s6Step98EntryGvOut]
    (growRow 777 s6Step98EntryGFresh) ((growRow 776 s6Step98EntryFvFresh ++ (growRow 775 s6Step98EntryGvFresh ++ []))) s6Step98EntryG_Incoming s6Step98EntryG_checked h2 s6Step98EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step98EntryFBefore s6Step98EntryFAfter s6Step98EntryGvAfter
    s6Step98EntryFRow s6Step98EntryFOut 221 s6Step98EntryFFresh [(s6Step98EntryGRow,221),(s6Step98EntryFvRow,63),(s6Step98EntryGvRow,63)] [s6Step98EntryGFresh,s6Step98EntryFvFresh,s6Step98EntryGvFresh] [s6Step98EntryGOut,s6Step98EntryFvOut,s6Step98EntryGvOut]
    (growRow 795 s6Step98EntryFFresh) ((growRow 777 s6Step98EntryGFresh ++ (growRow 776 s6Step98EntryFvFresh ++ (growRow 775 s6Step98EntryGvFresh ++ [])))) s6Step98EntryF_Incoming s6Step98EntryF_checked h1 s6Step98EntryF_Outgoing
  exact h0

private theorem s6Step98EntryBank_checked : compileHmrBankResizeLog .entry s6Step98EntryFBefore ⟨s6Step98EntryFRow,s6Step98EntryGRow,s6Step98EntryFvRow,s6Step98EntryGvRow⟩ ⟨221,221,63,63⟩ [s6Step98EntryFFresh,s6Step98EntryGFresh,s6Step98EntryFvFresh,s6Step98EntryGvFresh]=
    some (s6Step98EntryGvAfter,⟨s6Step98EntryFOut,s6Step98EntryGOut,s6Step98EntryFvOut,s6Step98EntryGvOut⟩,(growRow 795 s6Step98EntryFFresh ++ (growRow 777 s6Step98EntryGFresh ++ (growRow 776 s6Step98EntryFvFresh ++ (growRow 775 s6Step98EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step98EntryBank_rows]
  rfl

private def s6Step98ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,218),(219,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step98ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,218),(219,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step98ExitFBefore : Arena := s6Step98ExitGAfter

private def s6Step98ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 874],795⟩

private def s6Step98ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922],776⟩

private def s6Step98ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 813, 796, 857],777⟩

private def s6Step98ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 907, 803],775⟩

private theorem s6Step98ExitBank_incomingDistinct : ([s6Step98ExitGRow,s6Step98ExitFRow,s6Step98ExitFvRow,s6Step98ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step98ExitF_Incoming : rowsOwned s6Step98ExitFBefore [s6Step98ExitFRow,s6Step98ExitFvRow,s6Step98ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step98ExitGRow,s6Step98ExitFRow,s6Step98ExitFvRow,s6Step98ExitGvRow] 1 s6Step98ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step98ExitFBefore (fun q => ([(0,218),(219,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step98ExitBank_outgoingOwned : rowsOwned s6Step98ExitGvAfter [s6Step98ExitGOut,s6Step98ExitFOut,s6Step98ExitFvOut,s6Step98ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step98ExitGvAfter (fun q => ([(0,218),(219,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step98ExitF_Outgoing : rowsOwned s6Step98ExitGvAfter [s6Step98ExitFOut,s6Step98ExitFvOut,s6Step98ExitGvOut] :=
  hmrRows_owned_drop s6Step98ExitGvAfter [s6Step98ExitGOut,s6Step98ExitFOut,s6Step98ExitFvOut,s6Step98ExitGvOut] 1 s6Step98ExitBank_outgoingOwned

private theorem s6Step98ExitF_distinct : (s6Step98ExitFRow.sign::s6Step98ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step98ExitF_owned : (s6Step98ExitFRow.sign::s6Step98ExitFRow.payload).toFinset⊆s6Step98ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step98ExitFBefore (fun q => ([(0,218),(219,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step98ExitF_retired : s6Step98ExitFBefore.retireSet s6Step98ExitFExtra.toFinset=s6Step98ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step98ExitFBefore s6Step98ExitFAfter s6Step98ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step98ExitFBefore s6Step98ExitFAfter (fun q => ([(0,218),(219,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,218),(219,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step98ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step98ExitF_checked : planRowResizeLog s6Step98ExitFBefore s6Step98ExitFRow 221 []=
    some (s6Step98ExitFAfter,s6Step98ExitFOut,shrinkRow 795 s6Step98ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step98ExitFBefore s6Step98ExitFRow 221 s6Step98ExitF_distinct s6Step98ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step98ExitFRow.payload.take 221) s6Step98ExitFRow.sign=s6Step98ExitFOut := by decide +kernel
  have hi : s6Step98ExitFRow.payload.drop 221=s6Step98ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step98ExitF_retired] at result
  exact result

private def s6Step98ExitFvAfter : Arena := s6Step98ExitFAfter

private def s6Step98ExitFvBefore : Arena := s6Step98ExitFAfter

private theorem s6Step98ExitFv_Incoming : rowsOwned s6Step98ExitFvBefore [s6Step98ExitFvRow,s6Step98ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step98ExitGRow,s6Step98ExitFRow,s6Step98ExitFvRow,s6Step98ExitGvRow] 2 s6Step98ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step98ExitFvBefore (fun q => ([(0,218),(219,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step98ExitFv_Outgoing : rowsOwned s6Step98ExitGvAfter [s6Step98ExitFvOut,s6Step98ExitGvOut] :=
  hmrRows_owned_drop s6Step98ExitGvAfter [s6Step98ExitGOut,s6Step98ExitFOut,s6Step98ExitFvOut,s6Step98ExitGvOut] 2 s6Step98ExitBank_outgoingOwned

private theorem s6Step98ExitFv_distinct : (s6Step98ExitFvRow.sign::s6Step98ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step98ExitFv_owned : (s6Step98ExitFvRow.sign::s6Step98ExitFvRow.payload).toFinset⊆s6Step98ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step98ExitFvBefore (fun q => ([(0,218),(219,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step98ExitFv_reserved : s6Step98ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step98ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step98ExitFv_checked : planRowResizeLog s6Step98ExitFvBefore s6Step98ExitFvRow 64 []=
    some (s6Step98ExitFvAfter,s6Step98ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step98ExitFvBefore s6Step98ExitFvAfter s6Step98ExitFvRow 64 []
    s6Step98ExitFv_distinct s6Step98ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step98ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step98ExitFvRow.payload++[]) s6Step98ExitFvRow.sign=s6Step98ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step98ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step98ExitG_Incoming : rowsOwned s6Step98ExitGBefore [s6Step98ExitGRow,s6Step98ExitFRow,s6Step98ExitFvRow,s6Step98ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step98ExitGRow,s6Step98ExitFRow,s6Step98ExitFvRow,s6Step98ExitGvRow] 0 s6Step98ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step98ExitGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step98ExitG_Outgoing : rowsOwned s6Step98ExitGvAfter [s6Step98ExitGOut,s6Step98ExitFOut,s6Step98ExitFvOut,s6Step98ExitGvOut] :=
  hmrRows_owned_drop s6Step98ExitGvAfter [s6Step98ExitGOut,s6Step98ExitFOut,s6Step98ExitFvOut,s6Step98ExitGvOut] 0 s6Step98ExitBank_outgoingOwned

private theorem s6Step98ExitG_distinct : (s6Step98ExitGRow.sign::s6Step98ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step98ExitG_owned : (s6Step98ExitGRow.sign::s6Step98ExitGRow.payload).toFinset⊆s6Step98ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step98ExitGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step98ExitG_retired : s6Step98ExitGBefore.retireSet s6Step98ExitGExtra.toFinset=s6Step98ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step98ExitGBefore s6Step98ExitGAfter s6Step98ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step98ExitGBefore s6Step98ExitGAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,218),(219,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step98ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step98ExitG_checked : planRowResizeLog s6Step98ExitGBefore s6Step98ExitGRow 218 []=
    some (s6Step98ExitGAfter,s6Step98ExitGOut,shrinkRow 777 s6Step98ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step98ExitGBefore s6Step98ExitGRow 218 s6Step98ExitG_distinct s6Step98ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step98ExitGRow.payload.take 218) s6Step98ExitGRow.sign=s6Step98ExitGOut := by decide +kernel
  have hi : s6Step98ExitGRow.payload.drop 218=s6Step98ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step98ExitG_retired] at result
  exact result

private def s6Step98ExitGvBefore : Arena := s6Step98ExitFAfter

private theorem s6Step98ExitGv_Incoming : rowsOwned s6Step98ExitGvBefore [s6Step98ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step98ExitGRow,s6Step98ExitFRow,s6Step98ExitFvRow,s6Step98ExitGvRow] 3 s6Step98ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step98ExitGvBefore (fun q => ([(0,218),(219,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step98ExitGv_Outgoing : rowsOwned s6Step98ExitGvAfter [s6Step98ExitGvOut] :=
  hmrRows_owned_drop s6Step98ExitGvAfter [s6Step98ExitGOut,s6Step98ExitFOut,s6Step98ExitFvOut,s6Step98ExitGvOut] 3 s6Step98ExitBank_outgoingOwned

private theorem s6Step98ExitGv_distinct : (s6Step98ExitGvRow.sign::s6Step98ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step98ExitGv_owned : (s6Step98ExitGvRow.sign::s6Step98ExitGvRow.payload).toFinset⊆s6Step98ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step98ExitGvBefore (fun q => ([(0,218),(219,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step98ExitGv_retired : s6Step98ExitGvBefore.retireSet s6Step98ExitGvExtra.toFinset=s6Step98ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step98ExitGvBefore s6Step98ExitGvAfter s6Step98ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step98ExitGvBefore s6Step98ExitGvAfter (fun q => ([(0,218),(219,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,218),(219,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step98ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step98ExitGv_checked : planRowResizeLog s6Step98ExitGvBefore s6Step98ExitGvRow 62 []=
    some (s6Step98ExitGvAfter,s6Step98ExitGvOut,shrinkRow 775 s6Step98ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step98ExitGvBefore s6Step98ExitGvRow 62 s6Step98ExitGv_distinct s6Step98ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step98ExitGvRow.payload.take 62) s6Step98ExitGvRow.sign=s6Step98ExitGvOut := by decide +kernel
  have hi : s6Step98ExitGvRow.payload.drop 62=s6Step98ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step98ExitGv_retired] at result
  exact result

private theorem s6Step98ExitBank_rows : planWindowRowsLog s6Step98ExitGBefore [(s6Step98ExitGRow,218),(s6Step98ExitFRow,221),(s6Step98ExitFvRow,64),(s6Step98ExitGvRow,62)] [[],[],[],[]]=
    some (s6Step98ExitGvAfter,[s6Step98ExitGOut,s6Step98ExitFOut,s6Step98ExitFvOut,s6Step98ExitGvOut],(shrinkRow 777 s6Step98ExitGExtra ++ (shrinkRow 795 s6Step98ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step98ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step98ExitGvAfter [] []=some (s6Step98ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step98ExitGvBefore s6Step98ExitGvAfter s6Step98ExitGvAfter
    s6Step98ExitGvRow s6Step98ExitGvOut 62 [] [] [] []
    (shrinkRow 775 s6Step98ExitGvExtra) ([]) s6Step98ExitGv_Incoming s6Step98ExitGv_checked h4 s6Step98ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step98ExitFvBefore s6Step98ExitFvAfter s6Step98ExitGvAfter
    s6Step98ExitFvRow s6Step98ExitFvOut 64 [] [(s6Step98ExitGvRow,62)] [[]] [s6Step98ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step98ExitGvExtra ++ [])) s6Step98ExitFv_Incoming s6Step98ExitFv_checked h3 s6Step98ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step98ExitFBefore s6Step98ExitFAfter s6Step98ExitGvAfter
    s6Step98ExitFRow s6Step98ExitFOut 221 [] [(s6Step98ExitFvRow,64),(s6Step98ExitGvRow,62)] [[],[]] [s6Step98ExitFvOut,s6Step98ExitGvOut]
    (shrinkRow 795 s6Step98ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step98ExitGvExtra ++ []))) s6Step98ExitF_Incoming s6Step98ExitF_checked h2 s6Step98ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step98ExitGBefore s6Step98ExitGAfter s6Step98ExitGvAfter
    s6Step98ExitGRow s6Step98ExitGOut 218 [] [(s6Step98ExitFRow,221),(s6Step98ExitFvRow,64),(s6Step98ExitGvRow,62)] [[],[],[]] [s6Step98ExitFOut,s6Step98ExitFvOut,s6Step98ExitGvOut]
    (shrinkRow 777 s6Step98ExitGExtra) ((shrinkRow 795 s6Step98ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step98ExitGvExtra ++ [])))) s6Step98ExitG_Incoming s6Step98ExitG_checked h1 s6Step98ExitG_Outgoing
  exact h0

private theorem s6Step98ExitBank_checked : compileHmrBankResizeLog .exit s6Step98ExitGBefore ⟨s6Step98ExitFRow,s6Step98ExitGRow,s6Step98ExitFvRow,s6Step98ExitGvRow⟩ ⟨221,218,64,62⟩ [[],[],[],[]]=
    some (s6Step98ExitGvAfter,⟨s6Step98ExitFOut,s6Step98ExitGOut,s6Step98ExitFvOut,s6Step98ExitGvOut⟩,(shrinkRow 777 s6Step98ExitGExtra ++ (shrinkRow 795 s6Step98ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step98ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step98ExitBank_rows]
  rfl

private theorem s6Step98Add0_apart : Disjoint s6Step98Add0Arena.live s6Step98Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step98Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step98Add0_card : s6Step98Add0Arena.live.card=876 := by
  decide +kernel

private theorem s6Step98Add0_borrowed : s6Step98Add0Arena.checkBorrow (hmrHybridCount s6Step98Add0Arena s6Step98Add0B.length) s6Step98Add0Work=some s6Step98Add0During := by
  have len : s6Step98Add0Work.length=hmrHybridCount s6Step98Add0Arena s6Step98Add0B.length := by
    rw [hmrHybridCount,s6Step98Add0_card]
    decide +kernel
  have nd : s6Step98Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step98Add0Arena s6Step98Add0During s6Step98Add0Work.toFinset s6Step98Add0_bounded s6Step98Add0_apart rfl

private theorem s6Step98Add0_distinct : (879::890::784::(s6Step98Add0A++s6Step98Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step98Add0_owned : (879::890::784::(s6Step98Add0A++s6Step98Add0B)).toFinset⊆s6Step98Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step98Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step98Add0_checked : compileHmrHybridCinLog s6Step98Add0Arena 890 879 784 s6Step98Add0A s6Step98Add0B s6Step98Add0Work=some s6Step98Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step98Add0Arena s6Step98Add0During 890 879 784 s6Step98Add0A s6Step98Add0B s6Step98Add0Work
    (by decide +kernel) (by decide +kernel) s6Step98Add0_distinct
    (fun q hq => s6Step98Add0_owned (List.mem_toFinset.mpr hq)) s6Step98Add0_borrowed

private theorem s6Step98Add1_apart : Disjoint s6Step98Add1Arena.live s6Step98Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step98Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step98Add1_card : s6Step98Add1Arena.live.card=876 := by
  decide +kernel

private theorem s6Step98Add1_borrowed : s6Step98Add1Arena.checkBorrow (hmrHybridCount s6Step98Add1Arena s6Step98Add1B.length) s6Step98Add1Work=some s6Step98Add1During := by
  have len : s6Step98Add1Work.length=hmrHybridCount s6Step98Add1Arena s6Step98Add1B.length := by
    rw [hmrHybridCount,s6Step98Add1_card]
    decide +kernel
  have nd : s6Step98Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step98Add1Arena s6Step98Add1During s6Step98Add1Work.toFinset s6Step98Add1_bounded s6Step98Add1_apart rfl

private theorem s6Step98Add1_distinct : (879::890::784::(s6Step98Add1A++s6Step98Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step98Add1_owned : (879::890::784::(s6Step98Add1A++s6Step98Add1B)).toFinset⊆s6Step98Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step98Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step98Add1_checked : compileHmrHybridCinLog s6Step98Add1Arena 890 879 784 s6Step98Add1A s6Step98Add1B s6Step98Add1Work=some s6Step98Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step98Add1Arena s6Step98Add1During 890 879 784 s6Step98Add1A s6Step98Add1B s6Step98Add1Work
    (by decide +kernel) (by decide +kernel) s6Step98Add1_distinct
    (fun q hq => s6Step98Add1_owned (List.mem_toFinset.mpr hq)) s6Step98Add1_borrowed

private theorem s6Step98F4_apart : Disjoint (s6Step98Add0A++s6Step98Add0B).toFinset (s6Step98Add1A++s6Step98Add1B).toFinset := by
  have nd : ((s6Step98Add0A++s6Step98Add0B)++(s6Step98Add1A++s6Step98Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step98F4_carry : s6Step98F4FlagArena.checkBorrow 1 [784]=some s6Step98Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step98F4FlagArena,s6Step98HeadFvAfter,arenaWires]
  · change s6Step98Add0Arena.live=(s6Step98HeadFvAfter.live∪{879})∪{784}
    apply hmrArena_union_pair_of_filter_check s6Step98HeadFvAfter s6Step98Add0Arena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) 879 784 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step98F4_distinct : (876::890::879::784::((s6Step98Add0A++s6Step98Add1A)++(s6Step98Add0B++s6Step98Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step98F4_flag : s6Step98HeadFvAfter.checkBorrow 1 [879]=some s6Step98F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step98HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step98F4_owned : (876::890::((s6Step98Add0A++s6Step98Add1A)++(s6Step98Add0B++s6Step98Add1B))).toFinset⊆s6Step98HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step98HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step98F4_checked : compileHmrHybridF4Log s6Step98HeadFvAfter 876 890 s6Step98Add0A s6Step98Add0B s6Step98Add1A s6Step98Add1B [879] [784] s6Step98Add0Work s6Step98Add1Work=some s6Step98F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step98HeadFvAfter s6Step98F4FlagArena s6Step98Add0Arena s6Step98Add0During s6Step98Add1During 876 890
    s6Step98Add0A s6Step98Add0B s6Step98Add1A s6Step98Add1B [879] [784] s6Step98Add0Work s6Step98Add1Work
    (fun q hq => s6Step98F4_owned (List.mem_toFinset.mpr hq)) s6Step98F4_flag s6Step98F4_carry
    s6Step98F4_distinct s6Step98F4_apart s6Step98Add0_checked s6Step98Add1_checked

private theorem s6Step98Front_branch : s6Step98FrontSigmaArena.checkBorrow 1 [890]=some s6Step98HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step98FrontSigmaArena,s6Step98EntryGvAfter,arenaWires]
  · change s6Step98HeadGBefore.live=(s6Step98EntryGvAfter.live∪{876})∪{890}
    apply hmrArena_union_pair_of_filter_check s6Step98EntryGvAfter s6Step98HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 876 890 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step98Front_entry : HmrFrontEntryValid s6Step98EntryFBefore s6Step98FrontBank 221 63 ⟨221,218,64,62⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step98FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step98EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step98EntryFBefore (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step98FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step98Front_sigma : s6Step98EntryGvAfter.checkBorrow 1 [876]=some s6Step98FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step98EntryGvAfter,arenaWires]
  · rfl

private def s6Step98HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step98HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step98HeadFBefore : Arena := s6Step98HeadGAfter

private def s6Step98HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476],795⟩

private def s6Step98HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881],776⟩

private def s6Step98HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 813, 796],777⟩

private def s6Step98HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 907],775⟩

private theorem s6Step98HeadBank_incomingDistinct : ([s6Step98HeadGRow,s6Step98HeadFRow,s6Step98HeadGvRow,s6Step98HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step98HeadF_Incoming : rowsOwned s6Step98HeadFBefore [s6Step98HeadFRow,s6Step98HeadGvRow,s6Step98HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step98HeadGRow,s6Step98HeadFRow,s6Step98HeadGvRow,s6Step98HeadFvRow] 1 s6Step98HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step98HeadFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step98HeadBank_outgoingOwned : rowsOwned s6Step98HeadFvAfter [s6Step98HeadGOut,s6Step98HeadFOut,s6Step98HeadGvOut,s6Step98HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step98HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step98HeadF_Outgoing : rowsOwned s6Step98HeadFvAfter [s6Step98HeadFOut,s6Step98HeadGvOut,s6Step98HeadFvOut] :=
  hmrRows_owned_drop s6Step98HeadFvAfter [s6Step98HeadGOut,s6Step98HeadFOut,s6Step98HeadGvOut,s6Step98HeadFvOut] 1 s6Step98HeadBank_outgoingOwned

private theorem s6Step98HeadF_distinct : (s6Step98HeadFRow.sign::s6Step98HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step98HeadF_owned : (s6Step98HeadFRow.sign::s6Step98HeadFRow.payload).toFinset⊆s6Step98HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step98HeadFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step98HeadF_reserved : s6Step98HeadFBefore.reserve s6Step98HeadFFresh.toFinset=some s6Step98HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step98HeadFFresh,arenaWires]
  · norm_num [s6Step98HeadFBefore,s6Step98HeadGAfter,s6Step98HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step98HeadFBefore s6Step98HeadFAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step98HeadFFresh rfl rfl
    · norm_num [s6Step98HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step98HeadF_checked : planRowResizeLog s6Step98HeadFBefore s6Step98HeadFRow 222 s6Step98HeadFFresh=
    some (s6Step98HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 874],795⟩,growRow 795 s6Step98HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step98HeadFBefore s6Step98HeadFAfter s6Step98HeadFRow 222 s6Step98HeadFFresh
    s6Step98HeadF_distinct s6Step98HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step98HeadF_reserved
  have rowEq : WindowRow.mk (s6Step98HeadFRow.payload++s6Step98HeadFFresh) s6Step98HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 874],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step98HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step98HeadFvBefore : Arena := s6Step98HeadGvAfter

private theorem s6Step98HeadFv_Incoming : rowsOwned s6Step98HeadFvBefore [s6Step98HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step98HeadGRow,s6Step98HeadFRow,s6Step98HeadGvRow,s6Step98HeadFvRow] 3 s6Step98HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step98HeadFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step98HeadFv_Outgoing : rowsOwned s6Step98HeadFvAfter [s6Step98HeadFvOut] :=
  hmrRows_owned_drop s6Step98HeadFvAfter [s6Step98HeadGOut,s6Step98HeadFOut,s6Step98HeadGvOut,s6Step98HeadFvOut] 3 s6Step98HeadBank_outgoingOwned

private theorem s6Step98HeadFv_distinct : (s6Step98HeadFvRow.sign::s6Step98HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step98HeadFv_owned : (s6Step98HeadFvRow.sign::s6Step98HeadFvRow.payload).toFinset⊆s6Step98HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step98HeadFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step98HeadFv_reserved : s6Step98HeadFvBefore.reserve s6Step98HeadFvFresh.toFinset=some s6Step98HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step98HeadFvFresh,arenaWires]
  · norm_num [s6Step98HeadFvBefore,s6Step98HeadGvAfter,s6Step98HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step98HeadFvBefore s6Step98HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step98HeadFvFresh rfl rfl
    · norm_num [s6Step98HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step98HeadFv_checked : planRowResizeLog s6Step98HeadFvBefore s6Step98HeadFvRow 64 s6Step98HeadFvFresh=
    some (s6Step98HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922],776⟩,growRow 776 s6Step98HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step98HeadFvBefore s6Step98HeadFvAfter s6Step98HeadFvRow 64 s6Step98HeadFvFresh
    s6Step98HeadFv_distinct s6Step98HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step98HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step98HeadFvRow.payload++s6Step98HeadFvFresh) s6Step98HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step98HeadG_Incoming : rowsOwned s6Step98HeadGBefore [s6Step98HeadGRow,s6Step98HeadFRow,s6Step98HeadGvRow,s6Step98HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step98HeadGRow,s6Step98HeadFRow,s6Step98HeadGvRow,s6Step98HeadFvRow] 0 s6Step98HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step98HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step98HeadG_Outgoing : rowsOwned s6Step98HeadFvAfter [s6Step98HeadGOut,s6Step98HeadFOut,s6Step98HeadGvOut,s6Step98HeadFvOut] :=
  hmrRows_owned_drop s6Step98HeadFvAfter [s6Step98HeadGOut,s6Step98HeadFOut,s6Step98HeadGvOut,s6Step98HeadFvOut] 0 s6Step98HeadBank_outgoingOwned

private theorem s6Step98HeadG_distinct : (s6Step98HeadGRow.sign::s6Step98HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step98HeadG_owned : (s6Step98HeadGRow.sign::s6Step98HeadGRow.payload).toFinset⊆s6Step98HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step98HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step98HeadG_reserved : s6Step98HeadGBefore.reserve s6Step98HeadGFresh.toFinset=some s6Step98HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step98HeadGFresh,arenaWires]
  · norm_num [s6Step98HeadGBefore,s6Step98HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step98HeadGBefore s6Step98HeadGAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step98HeadGFresh rfl rfl
    · norm_num [s6Step98HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step98HeadG_checked : planRowResizeLog s6Step98HeadGBefore s6Step98HeadGRow 222 s6Step98HeadGFresh=
    some (s6Step98HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 813, 796, 857],777⟩,growRow 777 s6Step98HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step98HeadGBefore s6Step98HeadGAfter s6Step98HeadGRow 222 s6Step98HeadGFresh
    s6Step98HeadG_distinct s6Step98HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step98HeadG_reserved
  have rowEq : WindowRow.mk (s6Step98HeadGRow.payload++s6Step98HeadGFresh) s6Step98HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 813, 796, 857],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step98HeadGvBefore : Arena := s6Step98HeadFAfter

private theorem s6Step98HeadGv_Incoming : rowsOwned s6Step98HeadGvBefore [s6Step98HeadGvRow,s6Step98HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step98HeadGRow,s6Step98HeadFRow,s6Step98HeadGvRow,s6Step98HeadFvRow] 2 s6Step98HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step98HeadGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step98HeadGv_Outgoing : rowsOwned s6Step98HeadFvAfter [s6Step98HeadGvOut,s6Step98HeadFvOut] :=
  hmrRows_owned_drop s6Step98HeadFvAfter [s6Step98HeadGOut,s6Step98HeadFOut,s6Step98HeadGvOut,s6Step98HeadFvOut] 2 s6Step98HeadBank_outgoingOwned

private theorem s6Step98HeadGv_distinct : (s6Step98HeadGvRow.sign::s6Step98HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step98HeadGv_owned : (s6Step98HeadGvRow.sign::s6Step98HeadGvRow.payload).toFinset⊆s6Step98HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step98HeadGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step98HeadGv_reserved : s6Step98HeadGvBefore.reserve s6Step98HeadGvFresh.toFinset=some s6Step98HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step98HeadGvFresh,arenaWires]
  · norm_num [s6Step98HeadGvBefore,s6Step98HeadFAfter,s6Step98HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step98HeadGvBefore s6Step98HeadGvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step98HeadGvFresh rfl rfl
    · norm_num [s6Step98HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step98HeadGv_checked : planRowResizeLog s6Step98HeadGvBefore s6Step98HeadGvRow 64 s6Step98HeadGvFresh=
    some (s6Step98HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 907, 803],775⟩,growRow 775 s6Step98HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step98HeadGvBefore s6Step98HeadGvAfter s6Step98HeadGvRow 64 s6Step98HeadGvFresh
    s6Step98HeadGv_distinct s6Step98HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step98HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step98HeadGvRow.payload++s6Step98HeadGvFresh) s6Step98HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 907, 803],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step98HeadBank_rows : planWindowRowsLog s6Step98HeadGBefore [(s6Step98HeadGRow,222),(s6Step98HeadFRow,222),(s6Step98HeadGvRow,64),(s6Step98HeadFvRow,64)] [s6Step98HeadGFresh,s6Step98HeadFFresh,s6Step98HeadGvFresh,s6Step98HeadFvFresh]=
    some (s6Step98HeadFvAfter,[s6Step98HeadGOut,s6Step98HeadFOut,s6Step98HeadGvOut,s6Step98HeadFvOut],(growRow 777 s6Step98HeadGFresh ++ (growRow 795 s6Step98HeadFFresh ++ (growRow 775 s6Step98HeadGvFresh ++ (growRow 776 s6Step98HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step98HeadFvAfter [] []=some (s6Step98HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step98HeadFvBefore s6Step98HeadFvAfter s6Step98HeadFvAfter
    s6Step98HeadFvRow s6Step98HeadFvOut 64 s6Step98HeadFvFresh [] [] []
    (growRow 776 s6Step98HeadFvFresh) ([]) s6Step98HeadFv_Incoming s6Step98HeadFv_checked h4 s6Step98HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step98HeadGvBefore s6Step98HeadGvAfter s6Step98HeadFvAfter
    s6Step98HeadGvRow s6Step98HeadGvOut 64 s6Step98HeadGvFresh [(s6Step98HeadFvRow,64)] [s6Step98HeadFvFresh] [s6Step98HeadFvOut]
    (growRow 775 s6Step98HeadGvFresh) ((growRow 776 s6Step98HeadFvFresh ++ [])) s6Step98HeadGv_Incoming s6Step98HeadGv_checked h3 s6Step98HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step98HeadFBefore s6Step98HeadFAfter s6Step98HeadFvAfter
    s6Step98HeadFRow s6Step98HeadFOut 222 s6Step98HeadFFresh [(s6Step98HeadGvRow,64),(s6Step98HeadFvRow,64)] [s6Step98HeadGvFresh,s6Step98HeadFvFresh] [s6Step98HeadGvOut,s6Step98HeadFvOut]
    (growRow 795 s6Step98HeadFFresh) ((growRow 775 s6Step98HeadGvFresh ++ (growRow 776 s6Step98HeadFvFresh ++ []))) s6Step98HeadF_Incoming s6Step98HeadF_checked h2 s6Step98HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step98HeadGBefore s6Step98HeadGAfter s6Step98HeadFvAfter
    s6Step98HeadGRow s6Step98HeadGOut 222 s6Step98HeadGFresh [(s6Step98HeadFRow,222),(s6Step98HeadGvRow,64),(s6Step98HeadFvRow,64)] [s6Step98HeadFFresh,s6Step98HeadGvFresh,s6Step98HeadFvFresh] [s6Step98HeadFOut,s6Step98HeadGvOut,s6Step98HeadFvOut]
    (growRow 777 s6Step98HeadGFresh) ((growRow 795 s6Step98HeadFFresh ++ (growRow 775 s6Step98HeadGvFresh ++ (growRow 776 s6Step98HeadFvFresh ++ [])))) s6Step98HeadG_Incoming s6Step98HeadG_checked h1 s6Step98HeadG_Outgoing
  exact h0

private theorem s6Step98HeadBank_checked : compileHmrBankResizeLog .headroom s6Step98HeadGBefore ⟨s6Step98HeadFRow,s6Step98HeadGRow,s6Step98HeadFvRow,s6Step98HeadGvRow⟩ ⟨222,222,64,64⟩ [s6Step98HeadGFresh,s6Step98HeadFFresh,s6Step98HeadGvFresh,s6Step98HeadFvFresh]=
    some (s6Step98HeadFvAfter,⟨s6Step98HeadFOut,s6Step98HeadGOut,s6Step98HeadFvOut,s6Step98HeadGvOut⟩,(growRow 777 s6Step98HeadGFresh ++ (growRow 795 s6Step98HeadFFresh ++ (growRow 775 s6Step98HeadGvFresh ++ (growRow 776 s6Step98HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step98HeadBank_rows]
  rfl

private theorem s6Step98Front_checked : compileHmrSourceFrontLog s6Step98EntryFBefore s6Step98FrontBank 221 63 ⟨221,218,64,62⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step98FrontLog=some s6Step98FrontPlan := by
  have pairEq : s6Step98FrontPair=⟨s6Step98HeadFRow,s6Step98HeadGRow,s6Step98HeadFvRow,s6Step98HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step98FrontHead=⟨s6Step98ExitFRow,s6Step98ExitGRow,s6Step98ExitFvRow,s6Step98ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step98Add0A=s6Step98FrontHead.f.wires := by decide +kernel
  have gEq : s6Step98Add0B=s6Step98FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step98Add1A=s6Step98FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step98Add1B=s6Step98FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step98EntryFBefore s6Step98FrontBank 221 63 ⟨221,218,64,62⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step98FrontLog s6Step98FrontPlan
  · exact s6Step98Front_entry
  · exact s6Step98EntryBank_checked
  · exact s6Step98Front_sigma
  · rfl
  · exact s6Step98Front_branch
  · rfl
  · simpa only [s6Step98FrontPlan,pairEq] using s6Step98HeadBank_checked
  · simpa only [s6Step98FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step98F4_checked
  · exact s6Step98Counter_checked
  · rfl
  · simpa only [s6Step98FrontPlan,headEq] using s6Step98ExitBank_checked

private theorem s6Step98Complete_explicit_checked : compileHmrEarlyStepLog s6Step98EntryFBefore s6Step98FrontBank 221 63 ⟨221,218,64,62⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 34 s6Step98CompleteLog=some s6Step98CompletePlan := by
  let Q := s6Step98EarlyControlPlan
  have hq := s6Step98EarlyControl_plan_checked
  have fv1 : s6Step98CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step98CompleteOut.fv.payload[2]?.getD s6Step98CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step98CompleteOut.fv.payload[3]?.getD s6Step98CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step98CompleteOut.fv.payload[4]?.getD s6Step98CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step98EntryFBefore s6Step98EarlyControlArena s6Step98FrontBank 221 63 ⟨221,218,64,62⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 34 s6Step98CompleteLog s6Step98FrontPlan Q
    s6Step98Front_checked s6Step98Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step98Complete_owned s6Step98Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step98EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 876 s6Step98CompleteOut.fv.second (s6Step98CompleteOut.fv.payload[2]?.getD s6Step98CompleteOut.fv.sign) (s6Step98CompleteOut.fv.payload[3]?.getD s6Step98CompleteOut.fv.sign) (s6Step98CompleteOut.fv.payload[4]?.getD s6Step98CompleteOut.fv.sign) 890 34 s6Step98EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep98Arena : Arena := s6Step98EntryFBefore
def s6PrivateStep98Bank : WindowBank := s6Step98FrontBank
def s6PrivateStep98Spec : HmrSourceWalkStepLog := ⟨221,63,⟨221,218,64,62⟩,34,.early s6Step98CompleteLog⟩
def s6PrivateStep98Plan : HmrSourceStepPlan := .early s6Step98CompletePlan
theorem s6PrivateStep98_source : s6PrivateStep98Spec=s6ObservedLogs96[2] := rfl
theorem s6PrivateStep98_checked : compileHmrSourceStepLog s6PrivateStep98Arena s6PrivateStep98Bank
    s6PrivateStep98Spec.fgWidth s6PrivateStep98Spec.vWidth s6PrivateStep98Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847]
    6 498 98 s6PrivateStep98Spec.need none s6PrivateStep98Spec.log=some s6PrivateStep98Plan := by
  change compileHmrSourceStepLog s6Step98EntryFBefore s6Step98FrontBank 221 63 ⟨221,218,64,62⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 6 498 98 34 none (.early s6Step98CompleteLog)=some (.early s6Step98CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 98<498)]
  rw [s6Step98Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
