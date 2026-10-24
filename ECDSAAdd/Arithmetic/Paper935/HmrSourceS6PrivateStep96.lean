import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep94
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

private def s6Step96CompleteMoves : List (Wire × Wire) := [(796,220)]

private def s6Step96EarlyControlLog : HmrEarlyControlLog := ⟨[796, 813, 874, 890, 876],[881],[803],[922, 879, 784, 891, 903, 885],[]⟩

private def s6Step96FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[890], [874], [813], [859]],[[], [], [], []]⟩,[907],[857],[876],[881],[803, 922, 879, 784, 891, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[803, 922, 879, 784, 891, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929],[876, 881, 803, 922]⟩

private def s6Step96CompleteLog : HmrEarlyStepLog := ⟨s6Step96FrontLog,s6Step96CompleteMoves,s6Step96EarlyControlLog⟩

private def s6Step96ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476],795⟩

private def s6Step96ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859],776⟩

private def s6Step96ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219],777⟩

private def s6Step96ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858],775⟩

private def s6Step96FrontOut : WindowBank := ⟨s6Step96ExitFOut,s6Step96ExitGOut,s6Step96ExitFvOut,s6Step96ExitGvOut⟩

private def s6Step96CompleteOut : WindowBank := s6Step96FrontOut.repacked s6Step96CompleteMoves

private def s6Step96EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step96EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step96EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step96EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step96EarlyControlPositiveArena,[881],s6Step96EarlyControlEqualityArena,[803],⟨⟨907,false⟩,[⟨⟨881,false⟩,803⟩]⟩⟩

private def s6Step96EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step96EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step96EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step96EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step96EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step96EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step96EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,796⟩,⟨⟨772,false⟩,813⟩,⟨⟨771,false⟩,874⟩,⟨⟨770,false⟩,890⟩,⟨⟨769,false⟩,876⟩]⟩

private def s6Step96EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step96EarlyControlZeroArena,s6Step96EarlyControlZeroPlan,s6Step96EarlyControlClassPlan,s6Step96EarlyControlFlagArena,s6Step96EarlyControlFittedArena,s6Step96EarlyControlHistoryArena,s6Step96EarlyControlSigmaArena,s6Step96EarlyControlOutputArena,s6Step96EarlyControlLog⟩

private def s6Step96CounterWork : List Wire := [876, 881, 803, 922]

private theorem s6Step96Counter_bounded : s6Step96CounterWork.toFinset⊆arenaWires := by norm_num [s6Step96CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step96HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step96CounterDuring : Arena := ⟨s6Step96HeadFvAfter.live∪s6Step96CounterWork.toFinset,Finset.union_subset s6Step96HeadFvAfter.bounded s6Step96Counter_bounded⟩

private def s6Step96EntryFFresh : List Wire := []

private def s6Step96EntryFvFresh : List Wire := []

private def s6Step96EntryGFresh : List Wire := []

private def s6Step96EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step96EntryGvAfter : Arena := s6Step96EntryFBefore

private def s6Step96EntryGvFresh : List Wire := []

private def s6Step96ExitFExtra : List Wire := [874]

private def s6Step96ExitGExtra : List Wire := [220, 890]

private def s6Step96ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,220),(221,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step96ExitGvExtra : List Wire := [813]

private def s6Step96Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step96Add0Work : List Wire := [803, 922, 879, 784, 891, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step96Add0_bounded : s6Step96Add0Work.toFinset⊆arenaWires := by
  have h : s6Step96Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step96Add0During : Arena := ⟨s6Step96Add0Arena.live∪s6Step96Add0Work.toFinset,Finset.union_subset s6Step96Add0Arena.bounded s6Step96Add0_bounded⟩

private def s6Step96Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step96Add1Work : List Wire := [803, 922, 879, 784, 891, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929]

private theorem s6Step96Add1_bounded : s6Step96Add1Work.toFinset⊆arenaWires := by
  have h : s6Step96Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step96Add1During : Arena := ⟨s6Step96Add1Arena.live∪s6Step96Add1Work.toFinset,Finset.union_subset s6Step96Add1Arena.bounded s6Step96Add1_bounded⟩

private def s6Step96F4FlagArena : Arena := ⟨s6Step96HeadFvAfter.live∪{876},Finset.union_subset s6Step96HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step96F4Plan : HmrHybridF4Plan := ⟨s6Step96F4FlagArena,[876],s6Step96Add0Arena,[881],s6Step96Add0During,s6Step96Add0Work,s6Step96Add1During,s6Step96Add1Work⟩

private def s6Step96HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 874],795⟩

private def s6Step96HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859],776⟩

private def s6Step96HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 890],777⟩

private def s6Step96HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 813],775⟩

private def s6Step96FrontHead : WindowBank := ⟨s6Step96HeadFOut,s6Step96HeadGOut,s6Step96HeadFvOut,s6Step96HeadGvOut⟩

private def s6Step96EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476],795⟩

private def s6Step96EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877],776⟩

private def s6Step96EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220],777⟩

private def s6Step96EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858],775⟩

private def s6Step96FrontPair : WindowBank := ⟨s6Step96EntryFOut,s6Step96EntryGOut,s6Step96EntryFvOut,s6Step96EntryGvOut⟩

private def s6Step96FrontSigmaArena : Arena := ⟨s6Step96EntryGvAfter.live∪{907},Finset.union_subset s6Step96EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step96HeadFFresh : List Wire := [874]

private def s6Step96HeadFvFresh : List Wire := [859]

private def s6Step96HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step96HeadGFresh : List Wire := [890]

private def s6Step96HeadGvFresh : List Wire := [813]

private def s6Step96FrontPlan : HmrSourceFront := ⟨s6Step96EntryGvAfter,s6Step96FrontPair,(growRow 795 s6Step96EntryFFresh ++ (growRow 777 s6Step96EntryGFresh ++ (growRow 776 s6Step96EntryFvFresh ++ (growRow 775 s6Step96EntryGvFresh ++ [])))),s6Step96FrontSigmaArena,[907],s6Step96HeadGBefore,[857],
  s6Step96HeadFvAfter,s6Step96FrontHead,(growRow 777 s6Step96HeadGFresh ++ (growRow 795 s6Step96HeadFFresh ++ (growRow 775 s6Step96HeadGvFresh ++ (growRow 776 s6Step96HeadFvFresh ++ [])))),s6Step96F4Plan,s6Step96CounterDuring,s6Step96CounterWork,s6Step96ExitGvAfter,s6Step96FrontOut,(shrinkRow 777 s6Step96ExitGExtra ++ (shrinkRow 795 s6Step96ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step96ExitGvExtra ++ []))))⟩

private def s6Step96CompletePlan : HmrEarlyStepPlan := ⟨s6Step96FrontPlan,s6Step96EarlyControlArena,s6Step96EarlyControlPlan,s6Step96CompleteMoves⟩

private theorem s6Step96Complete_apart : List.Disjoint (s6Step96CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [907, 857, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] := by
  have nd : ((s6Step96CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[907, 857, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step96Complete_owned : (s6Step96CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step96EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step96EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step96CompleteRelocationMove0Borrowed : Arena := ⟨s6Step96ExitGvAfter.live∪{220},Finset.union_subset s6Step96ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step96CompleteRelocation_move0_owned : 796∈s6Step96ExitGvAfter.live := by norm_num [s6Step96ExitGvAfter,arenaWires]

private theorem s6Step96CompleteRelocation_move0_reserve : s6Step96ExitGvAfter.reserve {220}=some s6Step96CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step96ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step96CompleteRelocation_move0_retire : s6Step96CompleteRelocationMove0Borrowed.retireSet {796}=s6Step96EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step96CompleteRelocationMove0Borrowed s6Step96EarlyControlArena {796}
  change s6Step96EarlyControlArena.live=(s6Step96ExitGvAfter.live∪{220})\{796}
  apply hmrArena_update_of_filter_check s6Step96ExitGvAfter s6Step96EarlyControlArena (fun q => ([(0,220),(221,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [220] [796] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step96CompleteRelocation_checked : s6Step96ExitGvAfter.checkRepack [(796,220)]=some s6Step96EarlyControlArena := by
  have tail1 : s6Step96EarlyControlArena.checkRepack []=some s6Step96EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step96ExitGvAfter s6Step96CompleteRelocationMove0Borrowed s6Step96EarlyControlArena s6Step96EarlyControlArena 796 220 []
    s6Step96CompleteRelocation_move0_owned s6Step96CompleteRelocation_move0_reserve s6Step96CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step96Complete_repack : s6Step96ExitGvAfter.checkRepack s6Step96CompleteMoves=some s6Step96EarlyControlArena := by
  simpa only [s6Step96CompleteMoves] using s6Step96CompleteRelocation_checked

private theorem s6Step96EarlyControl_branchOwned : ([857] : List Wire).toFinset⊆s6Step96EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step96EarlyControlSigmaArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step96EarlyControl_branch : compileHmrBranchRetirement s6Step96EarlyControlSigmaArena 857=some s6Step96EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step96EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step96EarlyControlSigmaArena s6Step96EarlyControlOutputArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [857] rfl rfl
    decide +kernel

private theorem s6Step96EarlyControl_classEqualityBorrow : s6Step96EarlyControlPositiveArena.checkBorrow (([907, 881] : List Wire).length-1) s6Step96EarlyControlLog.classWork=some s6Step96EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step96EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step96EarlyControlPositiveArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step96EarlyControlPositiveArena s6Step96EarlyControlEqualityArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step96EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step96EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step96EarlyControl_classEqualityOwned : ([907, 881] : List Wire).toFinset⊆s6Step96EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step96EarlyControlPositiveArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step96EarlyControl_classEquality : compileHmrEqualityLog s6Step96EarlyControlPositiveArena [907, 881] 0 s6Step96EarlyControlLog.classWork=some (s6Step96EarlyControlEqualityArena,s6Step96EarlyControlLog.classWork,s6Step96EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step96EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step96EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step96EarlyControl_classOwned : ([769, 876, 907] : List Wire).toFinset⊆s6Step96EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step96EarlyControlZeroArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step96EarlyControl_positiveBorrow : s6Step96EarlyControlZeroArena.checkBorrow (1) s6Step96EarlyControlLog.positiveWork=some s6Step96EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step96EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step96EarlyControlZeroArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step96EarlyControlZeroArena s6Step96EarlyControlPositiveArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step96EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step96EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step96EarlyControl_class : compileHmrSourceClassLog s6Step96EarlyControlZeroArena false 769 s6Step96EarlyControlZeroPlan.top 0 907 s6Step96EarlyControlLog.positiveWork s6Step96EarlyControlLog.classWork=some s6Step96EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step96EarlyControlClassPlan s6Step96EarlyControlZeroArena false 769 s6Step96EarlyControlZeroPlan.top 0 907
  constructor
  · decide +kernel
  · exact s6Step96EarlyControl_classOwned
  · exact s6Step96EarlyControl_positiveBorrow
  · exact s6Step96EarlyControl_classEquality

private theorem s6Step96EarlyControl_entryRecordOwned : ([857, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).toFinset⊆s6Step96EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step96EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step96EarlyControl_entrySigmaOwned : ([907, 254] : List Wire).toFinset⊆s6Step96EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step96EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step96EarlyControl_fitBorrow : s6Step96EarlyControlFlagArena.checkBorrow ((34-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).length)) s6Step96EarlyControlLog.recordFresh=some s6Step96EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step96EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step96EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step96EarlyControlFittedArena,s6Step96EarlyControlFlagArena,s6Step96EarlyControlLog,arenaWires]

private theorem s6Step96EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).toFinset⊆s6Step96EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step96EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step96EarlyControl_fit : compileHmrRecordGrowLog s6Step96EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 34 s6Step96EarlyControlLog.recordFresh=some s6Step96EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step96EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step96EarlyControl_fitBorrow

private theorem s6Step96EarlyControl_flagsBorrow : s6Step96EarlyControlEqualityArena.checkBorrow (6) s6Step96EarlyControlLog.flagWork=some s6Step96EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step96EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step96EarlyControlEqualityArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step96EarlyControlEqualityArena s6Step96EarlyControlFlagArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step96EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step96EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step96EarlyControl_flagsOwned : ([803, 253, 252, 251] : List Wire).toFinset⊆s6Step96EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step96EarlyControlEqualityArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step96EarlyControl_flags : compileHmrFlagsLog s6Step96EarlyControlClassPlan.equalityArena s6Step96EarlyControlClassPlan.equality.top 253 252 251 s6Step96EarlyControlLog.flagWork=some s6Step96EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step96EarlyControl_flagsOwned⟩
  · exact s6Step96EarlyControl_flagsBorrow

private theorem s6Step96EarlyControl_historyBorrow : s6Step96EarlyControlArena.checkBorrow ((34-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).length)) s6Step96EarlyControlLog.recordFresh=some s6Step96EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step96EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step96EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step96EarlyControlArena s6Step96EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step96EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step96EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step96EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).toFinset⊆s6Step96EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step96EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step96EarlyControl_history : compileHmrRecordGrowLog s6Step96EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 34 s6Step96EarlyControlLog.recordFresh=some s6Step96EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step96EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step96EarlyControl_historyBorrow

private theorem s6Step96EarlyControl_sigmaOwned : ([254, 907] : List Wire).toFinset⊆s6Step96EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step96EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step96EarlyControl_sigmaReleaseOwned : ([907] : List Wire).toFinset⊆s6Step96EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step96EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step96EarlyControl_sigmaRelease : s6Step96EarlyControlHistoryArena.release {907} (fun _ => false)=some s6Step96EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step96EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step96EarlyControlHistoryArena s6Step96EarlyControlSigmaArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [907] rfl rfl
    decide +kernel

private theorem s6Step96EarlyControl_sigma : compileHmrSigmaDropLog s6Step96EarlyControlHistoryArena false 0 0 254 907 []=some s6Step96EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step96EarlyControl_sigmaOwned⟩
  · exact s6Step96EarlyControl_sigmaRelease

private theorem s6Step96EarlyControl_zeroBorrow : s6Step96EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step96EarlyControlLog.zeroWork=some s6Step96EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step96EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step96EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step96EarlyControlArena s6Step96EarlyControlZeroArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step96EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step96EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step96EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step96EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step96EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step96EarlyControl_zero : compileHmrEqualityLog s6Step96EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step96EarlyControlLog.zeroWork=some (s6Step96EarlyControlZeroArena,s6Step96EarlyControlLog.zeroWork,s6Step96EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step96EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step96EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step96EarlyControl_logged : s6Step96EarlyControlPlan.Logged s6Step96EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 907 254 253 252 251 857 34 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step96EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step96EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step96EarlyControl_zero
  · exact s6Step96EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step96EarlyControl_flags
  · exact s6Step96EarlyControl_fit
  · exact s6Step96EarlyControl_history
  · exact s6Step96EarlyControl_sigma
  · exact s6Step96EarlyControl_branch

private theorem s6Step96EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step96EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 907 254 253 252 251 857 34 s6Step96EarlyControlLog=some s6Step96EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step96EarlyControlPlan s6Step96EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 907 254 253 252 251 857 34 s6Step96EarlyControl_logged

private def s6Step96EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476],795⟩

private def s6Step96EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877],776⟩

private def s6Step96EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220],777⟩

private def s6Step96EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858],775⟩

private def s6Step96FrontBank : WindowBank := ⟨s6Step96EntryFRow,s6Step96EntryGRow,s6Step96EntryFvRow,s6Step96EntryGvRow⟩

private def s6Step96Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 874, 795]

private def s6Step96Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 890, 777]

private def s6Step96Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 776]

private def s6Step96Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 813, 775]

private theorem s6Step96Counter_apart : Disjoint s6Step96HeadFvAfter.live s6Step96CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step96HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step96Counter_borrowed : s6Step96HeadFvAfter.checkBorrow 4 s6Step96CounterWork=some s6Step96CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step96HeadFvAfter s6Step96CounterDuring s6Step96CounterWork.toFinset s6Step96Counter_bounded s6Step96Counter_apart rfl

private theorem s6Step96Counter_owned : (907::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step96HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step96HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step96Counter_checked : compileHmrCounterStepLog s6Step96HeadFvAfter true 907 [774, 773, 772, 771, 770, 769] s6Step96CounterWork=some s6Step96CounterDuring := by
  have owned : ∀q∈907::[774, 773, 772, 771, 770, 769],q∈s6Step96HeadFvAfter.live := fun q hq => s6Step96Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step96Counter_borrowed

private def s6Step96EntryFAfter : Arena := s6Step96EntryFBefore

private theorem s6Step96EntryBank_incomingDistinct : ([s6Step96EntryFRow,s6Step96EntryGRow,s6Step96EntryFvRow,s6Step96EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step96EntryF_Incoming : rowsOwned s6Step96EntryFBefore [s6Step96EntryFRow,s6Step96EntryGRow,s6Step96EntryFvRow,s6Step96EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step96EntryFRow,s6Step96EntryGRow,s6Step96EntryFvRow,s6Step96EntryGvRow] 0 s6Step96EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step96EntryFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step96EntryBank_outgoingOwned : rowsOwned s6Step96EntryGvAfter [s6Step96EntryFOut,s6Step96EntryGOut,s6Step96EntryFvOut,s6Step96EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step96EntryGvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step96EntryF_Outgoing : rowsOwned s6Step96EntryGvAfter [s6Step96EntryFOut,s6Step96EntryGOut,s6Step96EntryFvOut,s6Step96EntryGvOut] :=
  hmrRows_owned_drop s6Step96EntryGvAfter [s6Step96EntryFOut,s6Step96EntryGOut,s6Step96EntryFvOut,s6Step96EntryGvOut] 0 s6Step96EntryBank_outgoingOwned

private theorem s6Step96EntryF_distinct : (s6Step96EntryFRow.sign::s6Step96EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step96EntryF_owned : (s6Step96EntryFRow.sign::s6Step96EntryFRow.payload).toFinset⊆s6Step96EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step96EntryFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step96EntryF_reserved : s6Step96EntryFBefore.reserve s6Step96EntryFFresh.toFinset=some s6Step96EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step96EntryFFresh,arenaWires]
  · norm_num [s6Step96EntryFBefore,s6Step96EntryFFresh,arenaWires]
  · simp only [s6Step96EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step96EntryF_checked : planRowResizeLog s6Step96EntryFBefore s6Step96EntryFRow 221 s6Step96EntryFFresh=
    some (s6Step96EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476],795⟩,growRow 795 s6Step96EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step96EntryFBefore s6Step96EntryFAfter s6Step96EntryFRow 221 s6Step96EntryFFresh
    s6Step96EntryF_distinct s6Step96EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step96EntryF_reserved
  have rowEq : WindowRow.mk (s6Step96EntryFRow.payload++s6Step96EntryFFresh) s6Step96EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step96EntryFvAfter : Arena := s6Step96EntryFBefore

private def s6Step96EntryFvBefore : Arena := s6Step96EntryFBefore

private theorem s6Step96EntryFv_Incoming : rowsOwned s6Step96EntryFvBefore [s6Step96EntryFvRow,s6Step96EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step96EntryFRow,s6Step96EntryGRow,s6Step96EntryFvRow,s6Step96EntryGvRow] 2 s6Step96EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step96EntryFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step96EntryFv_Outgoing : rowsOwned s6Step96EntryGvAfter [s6Step96EntryFvOut,s6Step96EntryGvOut] :=
  hmrRows_owned_drop s6Step96EntryGvAfter [s6Step96EntryFOut,s6Step96EntryGOut,s6Step96EntryFvOut,s6Step96EntryGvOut] 2 s6Step96EntryBank_outgoingOwned

private theorem s6Step96EntryFv_distinct : (s6Step96EntryFvRow.sign::s6Step96EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step96EntryFv_owned : (s6Step96EntryFvRow.sign::s6Step96EntryFvRow.payload).toFinset⊆s6Step96EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step96EntryFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step96EntryFv_reserved : s6Step96EntryFvBefore.reserve s6Step96EntryFvFresh.toFinset=some s6Step96EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step96EntryFvFresh,arenaWires]
  · norm_num [s6Step96EntryFvBefore,s6Step96EntryFBefore,s6Step96EntryFvFresh,arenaWires]
  · simp only [s6Step96EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step96EntryFv_checked : planRowResizeLog s6Step96EntryFvBefore s6Step96EntryFvRow 61 s6Step96EntryFvFresh=
    some (s6Step96EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877],776⟩,growRow 776 s6Step96EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step96EntryFvBefore s6Step96EntryFvAfter s6Step96EntryFvRow 61 s6Step96EntryFvFresh
    s6Step96EntryFv_distinct s6Step96EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step96EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step96EntryFvRow.payload++s6Step96EntryFvFresh) s6Step96EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step96EntryGAfter : Arena := s6Step96EntryFBefore

private def s6Step96EntryGBefore : Arena := s6Step96EntryFBefore

private theorem s6Step96EntryG_Incoming : rowsOwned s6Step96EntryGBefore [s6Step96EntryGRow,s6Step96EntryFvRow,s6Step96EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step96EntryFRow,s6Step96EntryGRow,s6Step96EntryFvRow,s6Step96EntryGvRow] 1 s6Step96EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step96EntryGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step96EntryG_Outgoing : rowsOwned s6Step96EntryGvAfter [s6Step96EntryGOut,s6Step96EntryFvOut,s6Step96EntryGvOut] :=
  hmrRows_owned_drop s6Step96EntryGvAfter [s6Step96EntryFOut,s6Step96EntryGOut,s6Step96EntryFvOut,s6Step96EntryGvOut] 1 s6Step96EntryBank_outgoingOwned

private theorem s6Step96EntryG_distinct : (s6Step96EntryGRow.sign::s6Step96EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step96EntryG_owned : (s6Step96EntryGRow.sign::s6Step96EntryGRow.payload).toFinset⊆s6Step96EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step96EntryGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step96EntryG_reserved : s6Step96EntryGBefore.reserve s6Step96EntryGFresh.toFinset=some s6Step96EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step96EntryGFresh,arenaWires]
  · norm_num [s6Step96EntryGBefore,s6Step96EntryFBefore,s6Step96EntryGFresh,arenaWires]
  · simp only [s6Step96EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step96EntryG_checked : planRowResizeLog s6Step96EntryGBefore s6Step96EntryGRow 221 s6Step96EntryGFresh=
    some (s6Step96EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220],777⟩,growRow 777 s6Step96EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step96EntryGBefore s6Step96EntryGAfter s6Step96EntryGRow 221 s6Step96EntryGFresh
    s6Step96EntryG_distinct s6Step96EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step96EntryG_reserved
  have rowEq : WindowRow.mk (s6Step96EntryGRow.payload++s6Step96EntryGFresh) s6Step96EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step96EntryGvBefore : Arena := s6Step96EntryFBefore

private theorem s6Step96EntryGv_Incoming : rowsOwned s6Step96EntryGvBefore [s6Step96EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step96EntryFRow,s6Step96EntryGRow,s6Step96EntryFvRow,s6Step96EntryGvRow] 3 s6Step96EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step96EntryGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step96EntryGv_Outgoing : rowsOwned s6Step96EntryGvAfter [s6Step96EntryGvOut] :=
  hmrRows_owned_drop s6Step96EntryGvAfter [s6Step96EntryFOut,s6Step96EntryGOut,s6Step96EntryFvOut,s6Step96EntryGvOut] 3 s6Step96EntryBank_outgoingOwned

private theorem s6Step96EntryGv_distinct : (s6Step96EntryGvRow.sign::s6Step96EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step96EntryGv_owned : (s6Step96EntryGvRow.sign::s6Step96EntryGvRow.payload).toFinset⊆s6Step96EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step96EntryGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step96EntryGv_reserved : s6Step96EntryGvBefore.reserve s6Step96EntryGvFresh.toFinset=some s6Step96EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step96EntryGvFresh,arenaWires]
  · norm_num [s6Step96EntryGvBefore,s6Step96EntryFBefore,s6Step96EntryGvFresh,arenaWires]
  · simp only [s6Step96EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step96EntryGv_checked : planRowResizeLog s6Step96EntryGvBefore s6Step96EntryGvRow 61 s6Step96EntryGvFresh=
    some (s6Step96EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858],775⟩,growRow 775 s6Step96EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step96EntryGvBefore s6Step96EntryGvAfter s6Step96EntryGvRow 61 s6Step96EntryGvFresh
    s6Step96EntryGv_distinct s6Step96EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step96EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step96EntryGvRow.payload++s6Step96EntryGvFresh) s6Step96EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step96EntryBank_rows : planWindowRowsLog s6Step96EntryFBefore [(s6Step96EntryFRow,221),(s6Step96EntryGRow,221),(s6Step96EntryFvRow,61),(s6Step96EntryGvRow,61)] [s6Step96EntryFFresh,s6Step96EntryGFresh,s6Step96EntryFvFresh,s6Step96EntryGvFresh]=
    some (s6Step96EntryGvAfter,[s6Step96EntryFOut,s6Step96EntryGOut,s6Step96EntryFvOut,s6Step96EntryGvOut],(growRow 795 s6Step96EntryFFresh ++ (growRow 777 s6Step96EntryGFresh ++ (growRow 776 s6Step96EntryFvFresh ++ (growRow 775 s6Step96EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step96EntryGvAfter [] []=some (s6Step96EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step96EntryGvBefore s6Step96EntryGvAfter s6Step96EntryGvAfter
    s6Step96EntryGvRow s6Step96EntryGvOut 61 s6Step96EntryGvFresh [] [] []
    (growRow 775 s6Step96EntryGvFresh) ([]) s6Step96EntryGv_Incoming s6Step96EntryGv_checked h4 s6Step96EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step96EntryFvBefore s6Step96EntryFvAfter s6Step96EntryGvAfter
    s6Step96EntryFvRow s6Step96EntryFvOut 61 s6Step96EntryFvFresh [(s6Step96EntryGvRow,61)] [s6Step96EntryGvFresh] [s6Step96EntryGvOut]
    (growRow 776 s6Step96EntryFvFresh) ((growRow 775 s6Step96EntryGvFresh ++ [])) s6Step96EntryFv_Incoming s6Step96EntryFv_checked h3 s6Step96EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step96EntryGBefore s6Step96EntryGAfter s6Step96EntryGvAfter
    s6Step96EntryGRow s6Step96EntryGOut 221 s6Step96EntryGFresh [(s6Step96EntryFvRow,61),(s6Step96EntryGvRow,61)] [s6Step96EntryFvFresh,s6Step96EntryGvFresh] [s6Step96EntryFvOut,s6Step96EntryGvOut]
    (growRow 777 s6Step96EntryGFresh) ((growRow 776 s6Step96EntryFvFresh ++ (growRow 775 s6Step96EntryGvFresh ++ []))) s6Step96EntryG_Incoming s6Step96EntryG_checked h2 s6Step96EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step96EntryFBefore s6Step96EntryFAfter s6Step96EntryGvAfter
    s6Step96EntryFRow s6Step96EntryFOut 221 s6Step96EntryFFresh [(s6Step96EntryGRow,221),(s6Step96EntryFvRow,61),(s6Step96EntryGvRow,61)] [s6Step96EntryGFresh,s6Step96EntryFvFresh,s6Step96EntryGvFresh] [s6Step96EntryGOut,s6Step96EntryFvOut,s6Step96EntryGvOut]
    (growRow 795 s6Step96EntryFFresh) ((growRow 777 s6Step96EntryGFresh ++ (growRow 776 s6Step96EntryFvFresh ++ (growRow 775 s6Step96EntryGvFresh ++ [])))) s6Step96EntryF_Incoming s6Step96EntryF_checked h1 s6Step96EntryF_Outgoing
  exact h0

private theorem s6Step96EntryBank_checked : compileHmrBankResizeLog .entry s6Step96EntryFBefore ⟨s6Step96EntryFRow,s6Step96EntryGRow,s6Step96EntryFvRow,s6Step96EntryGvRow⟩ ⟨221,221,61,61⟩ [s6Step96EntryFFresh,s6Step96EntryGFresh,s6Step96EntryFvFresh,s6Step96EntryGvFresh]=
    some (s6Step96EntryGvAfter,⟨s6Step96EntryFOut,s6Step96EntryGOut,s6Step96EntryFvOut,s6Step96EntryGvOut⟩,(growRow 795 s6Step96EntryFFresh ++ (growRow 777 s6Step96EntryGFresh ++ (growRow 776 s6Step96EntryFvFresh ++ (growRow 775 s6Step96EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step96EntryBank_rows]
  rfl

private def s6Step96ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,220),(221,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step96ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,220),(221,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step96ExitFBefore : Arena := s6Step96ExitGAfter

private def s6Step96ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 874],795⟩

private def s6Step96ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859],776⟩

private def s6Step96ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 890],777⟩

private def s6Step96ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 813],775⟩

private theorem s6Step96ExitBank_incomingDistinct : ([s6Step96ExitGRow,s6Step96ExitFRow,s6Step96ExitFvRow,s6Step96ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step96ExitF_Incoming : rowsOwned s6Step96ExitFBefore [s6Step96ExitFRow,s6Step96ExitFvRow,s6Step96ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step96ExitGRow,s6Step96ExitFRow,s6Step96ExitFvRow,s6Step96ExitGvRow] 1 s6Step96ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step96ExitFBefore (fun q => ([(0,220),(221,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step96ExitBank_outgoingOwned : rowsOwned s6Step96ExitGvAfter [s6Step96ExitGOut,s6Step96ExitFOut,s6Step96ExitFvOut,s6Step96ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step96ExitGvAfter (fun q => ([(0,220),(221,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step96ExitF_Outgoing : rowsOwned s6Step96ExitGvAfter [s6Step96ExitFOut,s6Step96ExitFvOut,s6Step96ExitGvOut] :=
  hmrRows_owned_drop s6Step96ExitGvAfter [s6Step96ExitGOut,s6Step96ExitFOut,s6Step96ExitFvOut,s6Step96ExitGvOut] 1 s6Step96ExitBank_outgoingOwned

private theorem s6Step96ExitF_distinct : (s6Step96ExitFRow.sign::s6Step96ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step96ExitF_owned : (s6Step96ExitFRow.sign::s6Step96ExitFRow.payload).toFinset⊆s6Step96ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step96ExitFBefore (fun q => ([(0,220),(221,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step96ExitF_retired : s6Step96ExitFBefore.retireSet s6Step96ExitFExtra.toFinset=s6Step96ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step96ExitFBefore s6Step96ExitFAfter s6Step96ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step96ExitFBefore s6Step96ExitFAfter (fun q => ([(0,220),(221,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,220),(221,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step96ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step96ExitF_checked : planRowResizeLog s6Step96ExitFBefore s6Step96ExitFRow 221 []=
    some (s6Step96ExitFAfter,s6Step96ExitFOut,shrinkRow 795 s6Step96ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step96ExitFBefore s6Step96ExitFRow 221 s6Step96ExitF_distinct s6Step96ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step96ExitFRow.payload.take 221) s6Step96ExitFRow.sign=s6Step96ExitFOut := by decide +kernel
  have hi : s6Step96ExitFRow.payload.drop 221=s6Step96ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step96ExitF_retired] at result
  exact result

private def s6Step96ExitFvAfter : Arena := s6Step96ExitFAfter

private def s6Step96ExitFvBefore : Arena := s6Step96ExitFAfter

private theorem s6Step96ExitFv_Incoming : rowsOwned s6Step96ExitFvBefore [s6Step96ExitFvRow,s6Step96ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step96ExitGRow,s6Step96ExitFRow,s6Step96ExitFvRow,s6Step96ExitGvRow] 2 s6Step96ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step96ExitFvBefore (fun q => ([(0,220),(221,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step96ExitFv_Outgoing : rowsOwned s6Step96ExitGvAfter [s6Step96ExitFvOut,s6Step96ExitGvOut] :=
  hmrRows_owned_drop s6Step96ExitGvAfter [s6Step96ExitGOut,s6Step96ExitFOut,s6Step96ExitFvOut,s6Step96ExitGvOut] 2 s6Step96ExitBank_outgoingOwned

private theorem s6Step96ExitFv_distinct : (s6Step96ExitFvRow.sign::s6Step96ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step96ExitFv_owned : (s6Step96ExitFvRow.sign::s6Step96ExitFvRow.payload).toFinset⊆s6Step96ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step96ExitFvBefore (fun q => ([(0,220),(221,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step96ExitFv_reserved : s6Step96ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step96ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step96ExitFv_checked : planRowResizeLog s6Step96ExitFvBefore s6Step96ExitFvRow 62 []=
    some (s6Step96ExitFvAfter,s6Step96ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step96ExitFvBefore s6Step96ExitFvAfter s6Step96ExitFvRow 62 []
    s6Step96ExitFv_distinct s6Step96ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step96ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step96ExitFvRow.payload++[]) s6Step96ExitFvRow.sign=s6Step96ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step96ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step96ExitG_Incoming : rowsOwned s6Step96ExitGBefore [s6Step96ExitGRow,s6Step96ExitFRow,s6Step96ExitFvRow,s6Step96ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step96ExitGRow,s6Step96ExitFRow,s6Step96ExitFvRow,s6Step96ExitGvRow] 0 s6Step96ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step96ExitGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step96ExitG_Outgoing : rowsOwned s6Step96ExitGvAfter [s6Step96ExitGOut,s6Step96ExitFOut,s6Step96ExitFvOut,s6Step96ExitGvOut] :=
  hmrRows_owned_drop s6Step96ExitGvAfter [s6Step96ExitGOut,s6Step96ExitFOut,s6Step96ExitFvOut,s6Step96ExitGvOut] 0 s6Step96ExitBank_outgoingOwned

private theorem s6Step96ExitG_distinct : (s6Step96ExitGRow.sign::s6Step96ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step96ExitG_owned : (s6Step96ExitGRow.sign::s6Step96ExitGRow.payload).toFinset⊆s6Step96ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step96ExitGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step96ExitG_retired : s6Step96ExitGBefore.retireSet s6Step96ExitGExtra.toFinset=s6Step96ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step96ExitGBefore s6Step96ExitGAfter s6Step96ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step96ExitGBefore s6Step96ExitGAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,220),(221,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step96ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step96ExitG_checked : planRowResizeLog s6Step96ExitGBefore s6Step96ExitGRow 220 []=
    some (s6Step96ExitGAfter,s6Step96ExitGOut,shrinkRow 777 s6Step96ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step96ExitGBefore s6Step96ExitGRow 220 s6Step96ExitG_distinct s6Step96ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step96ExitGRow.payload.take 220) s6Step96ExitGRow.sign=s6Step96ExitGOut := by decide +kernel
  have hi : s6Step96ExitGRow.payload.drop 220=s6Step96ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step96ExitG_retired] at result
  exact result

private def s6Step96ExitGvBefore : Arena := s6Step96ExitFAfter

private theorem s6Step96ExitGv_Incoming : rowsOwned s6Step96ExitGvBefore [s6Step96ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step96ExitGRow,s6Step96ExitFRow,s6Step96ExitFvRow,s6Step96ExitGvRow] 3 s6Step96ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step96ExitGvBefore (fun q => ([(0,220),(221,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step96ExitGv_Outgoing : rowsOwned s6Step96ExitGvAfter [s6Step96ExitGvOut] :=
  hmrRows_owned_drop s6Step96ExitGvAfter [s6Step96ExitGOut,s6Step96ExitFOut,s6Step96ExitFvOut,s6Step96ExitGvOut] 3 s6Step96ExitBank_outgoingOwned

private theorem s6Step96ExitGv_distinct : (s6Step96ExitGvRow.sign::s6Step96ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step96ExitGv_owned : (s6Step96ExitGvRow.sign::s6Step96ExitGvRow.payload).toFinset⊆s6Step96ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step96ExitGvBefore (fun q => ([(0,220),(221,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step96ExitGv_retired : s6Step96ExitGvBefore.retireSet s6Step96ExitGvExtra.toFinset=s6Step96ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step96ExitGvBefore s6Step96ExitGvAfter s6Step96ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step96ExitGvBefore s6Step96ExitGvAfter (fun q => ([(0,220),(221,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,220),(221,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step96ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step96ExitGv_checked : planRowResizeLog s6Step96ExitGvBefore s6Step96ExitGvRow 61 []=
    some (s6Step96ExitGvAfter,s6Step96ExitGvOut,shrinkRow 775 s6Step96ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step96ExitGvBefore s6Step96ExitGvRow 61 s6Step96ExitGv_distinct s6Step96ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step96ExitGvRow.payload.take 61) s6Step96ExitGvRow.sign=s6Step96ExitGvOut := by decide +kernel
  have hi : s6Step96ExitGvRow.payload.drop 61=s6Step96ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step96ExitGv_retired] at result
  exact result

private theorem s6Step96ExitBank_rows : planWindowRowsLog s6Step96ExitGBefore [(s6Step96ExitGRow,220),(s6Step96ExitFRow,221),(s6Step96ExitFvRow,62),(s6Step96ExitGvRow,61)] [[],[],[],[]]=
    some (s6Step96ExitGvAfter,[s6Step96ExitGOut,s6Step96ExitFOut,s6Step96ExitFvOut,s6Step96ExitGvOut],(shrinkRow 777 s6Step96ExitGExtra ++ (shrinkRow 795 s6Step96ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step96ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step96ExitGvAfter [] []=some (s6Step96ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step96ExitGvBefore s6Step96ExitGvAfter s6Step96ExitGvAfter
    s6Step96ExitGvRow s6Step96ExitGvOut 61 [] [] [] []
    (shrinkRow 775 s6Step96ExitGvExtra) ([]) s6Step96ExitGv_Incoming s6Step96ExitGv_checked h4 s6Step96ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step96ExitFvBefore s6Step96ExitFvAfter s6Step96ExitGvAfter
    s6Step96ExitFvRow s6Step96ExitFvOut 62 [] [(s6Step96ExitGvRow,61)] [[]] [s6Step96ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step96ExitGvExtra ++ [])) s6Step96ExitFv_Incoming s6Step96ExitFv_checked h3 s6Step96ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step96ExitFBefore s6Step96ExitFAfter s6Step96ExitGvAfter
    s6Step96ExitFRow s6Step96ExitFOut 221 [] [(s6Step96ExitFvRow,62),(s6Step96ExitGvRow,61)] [[],[]] [s6Step96ExitFvOut,s6Step96ExitGvOut]
    (shrinkRow 795 s6Step96ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step96ExitGvExtra ++ []))) s6Step96ExitF_Incoming s6Step96ExitF_checked h2 s6Step96ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step96ExitGBefore s6Step96ExitGAfter s6Step96ExitGvAfter
    s6Step96ExitGRow s6Step96ExitGOut 220 [] [(s6Step96ExitFRow,221),(s6Step96ExitFvRow,62),(s6Step96ExitGvRow,61)] [[],[],[]] [s6Step96ExitFOut,s6Step96ExitFvOut,s6Step96ExitGvOut]
    (shrinkRow 777 s6Step96ExitGExtra) ((shrinkRow 795 s6Step96ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step96ExitGvExtra ++ [])))) s6Step96ExitG_Incoming s6Step96ExitG_checked h1 s6Step96ExitG_Outgoing
  exact h0

private theorem s6Step96ExitBank_checked : compileHmrBankResizeLog .exit s6Step96ExitGBefore ⟨s6Step96ExitFRow,s6Step96ExitGRow,s6Step96ExitFvRow,s6Step96ExitGvRow⟩ ⟨221,220,62,61⟩ [[],[],[],[]]=
    some (s6Step96ExitGvAfter,⟨s6Step96ExitFOut,s6Step96ExitGOut,s6Step96ExitFvOut,s6Step96ExitGvOut⟩,(shrinkRow 777 s6Step96ExitGExtra ++ (shrinkRow 795 s6Step96ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step96ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step96ExitBank_rows]
  rfl

private theorem s6Step96Add0_apart : Disjoint s6Step96Add0Arena.live s6Step96Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step96Add0Arena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step96Add0_card : s6Step96Add0Arena.live.card=872 := by
  decide +kernel

private theorem s6Step96Add0_borrowed : s6Step96Add0Arena.checkBorrow (hmrHybridCount s6Step96Add0Arena s6Step96Add0B.length) s6Step96Add0Work=some s6Step96Add0During := by
  have len : s6Step96Add0Work.length=hmrHybridCount s6Step96Add0Arena s6Step96Add0B.length := by
    rw [hmrHybridCount,s6Step96Add0_card]
    decide +kernel
  have nd : s6Step96Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step96Add0Arena s6Step96Add0During s6Step96Add0Work.toFinset s6Step96Add0_bounded s6Step96Add0_apart rfl

private theorem s6Step96Add0_distinct : (876::857::881::(s6Step96Add0A++s6Step96Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step96Add0_owned : (876::857::881::(s6Step96Add0A++s6Step96Add0B)).toFinset⊆s6Step96Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step96Add0Arena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step96Add0_checked : compileHmrHybridCinLog s6Step96Add0Arena 857 876 881 s6Step96Add0A s6Step96Add0B s6Step96Add0Work=some s6Step96Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step96Add0Arena s6Step96Add0During 857 876 881 s6Step96Add0A s6Step96Add0B s6Step96Add0Work
    (by decide +kernel) (by decide +kernel) s6Step96Add0_distinct
    (fun q hq => s6Step96Add0_owned (List.mem_toFinset.mpr hq)) s6Step96Add0_borrowed

private theorem s6Step96Add1_apart : Disjoint s6Step96Add1Arena.live s6Step96Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step96Add1Arena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step96Add1_card : s6Step96Add1Arena.live.card=872 := by
  decide +kernel

private theorem s6Step96Add1_borrowed : s6Step96Add1Arena.checkBorrow (hmrHybridCount s6Step96Add1Arena s6Step96Add1B.length) s6Step96Add1Work=some s6Step96Add1During := by
  have len : s6Step96Add1Work.length=hmrHybridCount s6Step96Add1Arena s6Step96Add1B.length := by
    rw [hmrHybridCount,s6Step96Add1_card]
    decide +kernel
  have nd : s6Step96Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step96Add1Arena s6Step96Add1During s6Step96Add1Work.toFinset s6Step96Add1_bounded s6Step96Add1_apart rfl

private theorem s6Step96Add1_distinct : (876::857::881::(s6Step96Add1A++s6Step96Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step96Add1_owned : (876::857::881::(s6Step96Add1A++s6Step96Add1B)).toFinset⊆s6Step96Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step96Add1Arena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step96Add1_checked : compileHmrHybridCinLog s6Step96Add1Arena 857 876 881 s6Step96Add1A s6Step96Add1B s6Step96Add1Work=some s6Step96Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step96Add1Arena s6Step96Add1During 857 876 881 s6Step96Add1A s6Step96Add1B s6Step96Add1Work
    (by decide +kernel) (by decide +kernel) s6Step96Add1_distinct
    (fun q hq => s6Step96Add1_owned (List.mem_toFinset.mpr hq)) s6Step96Add1_borrowed

private theorem s6Step96F4_apart : Disjoint (s6Step96Add0A++s6Step96Add0B).toFinset (s6Step96Add1A++s6Step96Add1B).toFinset := by
  have nd : ((s6Step96Add0A++s6Step96Add0B)++(s6Step96Add1A++s6Step96Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step96F4_carry : s6Step96F4FlagArena.checkBorrow 1 [881]=some s6Step96Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step96F4FlagArena,s6Step96HeadFvAfter,arenaWires]
  · change s6Step96Add0Arena.live=(s6Step96HeadFvAfter.live∪{876})∪{881}
    apply hmrArena_union_pair_of_filter_check s6Step96HeadFvAfter s6Step96Add0Arena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 876 881 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step96F4_distinct : (907::857::876::881::((s6Step96Add0A++s6Step96Add1A)++(s6Step96Add0B++s6Step96Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step96F4_flag : s6Step96HeadFvAfter.checkBorrow 1 [876]=some s6Step96F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step96HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step96F4_owned : (907::857::((s6Step96Add0A++s6Step96Add1A)++(s6Step96Add0B++s6Step96Add1B))).toFinset⊆s6Step96HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step96HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step96F4_checked : compileHmrHybridF4Log s6Step96HeadFvAfter 907 857 s6Step96Add0A s6Step96Add0B s6Step96Add1A s6Step96Add1B [876] [881] s6Step96Add0Work s6Step96Add1Work=some s6Step96F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step96HeadFvAfter s6Step96F4FlagArena s6Step96Add0Arena s6Step96Add0During s6Step96Add1During 907 857
    s6Step96Add0A s6Step96Add0B s6Step96Add1A s6Step96Add1B [876] [881] s6Step96Add0Work s6Step96Add1Work
    (fun q hq => s6Step96F4_owned (List.mem_toFinset.mpr hq)) s6Step96F4_flag s6Step96F4_carry
    s6Step96F4_distinct s6Step96F4_apart s6Step96Add0_checked s6Step96Add1_checked

private theorem s6Step96Front_branch : s6Step96FrontSigmaArena.checkBorrow 1 [857]=some s6Step96HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step96FrontSigmaArena,s6Step96EntryGvAfter,s6Step96EntryFBefore,arenaWires]
  · change s6Step96HeadGBefore.live=(s6Step96EntryGvAfter.live∪{907})∪{857}
    apply hmrArena_union_pair_of_filter_check s6Step96EntryGvAfter s6Step96HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 907 857 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step96Front_entry : HmrFrontEntryValid s6Step96EntryFBefore s6Step96FrontBank 221 61 ⟨221,220,62,61⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step96FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step96EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step96EntryFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step96FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step96Front_sigma : s6Step96EntryGvAfter.checkBorrow 1 [907]=some s6Step96FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step96EntryGvAfter,s6Step96EntryFBefore,arenaWires]
  · rfl

private def s6Step96HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step96HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step96HeadFBefore : Arena := s6Step96HeadGAfter

private def s6Step96HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476],795⟩

private def s6Step96HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877],776⟩

private def s6Step96HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220],777⟩

private def s6Step96HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858],775⟩

private theorem s6Step96HeadBank_incomingDistinct : ([s6Step96HeadGRow,s6Step96HeadFRow,s6Step96HeadGvRow,s6Step96HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step96HeadF_Incoming : rowsOwned s6Step96HeadFBefore [s6Step96HeadFRow,s6Step96HeadGvRow,s6Step96HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step96HeadGRow,s6Step96HeadFRow,s6Step96HeadGvRow,s6Step96HeadFvRow] 1 s6Step96HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step96HeadFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step96HeadBank_outgoingOwned : rowsOwned s6Step96HeadFvAfter [s6Step96HeadGOut,s6Step96HeadFOut,s6Step96HeadGvOut,s6Step96HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step96HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step96HeadF_Outgoing : rowsOwned s6Step96HeadFvAfter [s6Step96HeadFOut,s6Step96HeadGvOut,s6Step96HeadFvOut] :=
  hmrRows_owned_drop s6Step96HeadFvAfter [s6Step96HeadGOut,s6Step96HeadFOut,s6Step96HeadGvOut,s6Step96HeadFvOut] 1 s6Step96HeadBank_outgoingOwned

private theorem s6Step96HeadF_distinct : (s6Step96HeadFRow.sign::s6Step96HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step96HeadF_owned : (s6Step96HeadFRow.sign::s6Step96HeadFRow.payload).toFinset⊆s6Step96HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step96HeadFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step96HeadF_reserved : s6Step96HeadFBefore.reserve s6Step96HeadFFresh.toFinset=some s6Step96HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step96HeadFFresh,arenaWires]
  · norm_num [s6Step96HeadFBefore,s6Step96HeadGAfter,s6Step96HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step96HeadFBefore s6Step96HeadFAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step96HeadFFresh rfl rfl
    · norm_num [s6Step96HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step96HeadF_checked : planRowResizeLog s6Step96HeadFBefore s6Step96HeadFRow 222 s6Step96HeadFFresh=
    some (s6Step96HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 874],795⟩,growRow 795 s6Step96HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step96HeadFBefore s6Step96HeadFAfter s6Step96HeadFRow 222 s6Step96HeadFFresh
    s6Step96HeadF_distinct s6Step96HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step96HeadF_reserved
  have rowEq : WindowRow.mk (s6Step96HeadFRow.payload++s6Step96HeadFFresh) s6Step96HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 874],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step96HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step96HeadFvBefore : Arena := s6Step96HeadGvAfter

private theorem s6Step96HeadFv_Incoming : rowsOwned s6Step96HeadFvBefore [s6Step96HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step96HeadGRow,s6Step96HeadFRow,s6Step96HeadGvRow,s6Step96HeadFvRow] 3 s6Step96HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step96HeadFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step96HeadFv_Outgoing : rowsOwned s6Step96HeadFvAfter [s6Step96HeadFvOut] :=
  hmrRows_owned_drop s6Step96HeadFvAfter [s6Step96HeadGOut,s6Step96HeadFOut,s6Step96HeadGvOut,s6Step96HeadFvOut] 3 s6Step96HeadBank_outgoingOwned

private theorem s6Step96HeadFv_distinct : (s6Step96HeadFvRow.sign::s6Step96HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step96HeadFv_owned : (s6Step96HeadFvRow.sign::s6Step96HeadFvRow.payload).toFinset⊆s6Step96HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step96HeadFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step96HeadFv_reserved : s6Step96HeadFvBefore.reserve s6Step96HeadFvFresh.toFinset=some s6Step96HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step96HeadFvFresh,arenaWires]
  · norm_num [s6Step96HeadFvBefore,s6Step96HeadGvAfter,s6Step96HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step96HeadFvBefore s6Step96HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step96HeadFvFresh rfl rfl
    · norm_num [s6Step96HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step96HeadFv_checked : planRowResizeLog s6Step96HeadFvBefore s6Step96HeadFvRow 62 s6Step96HeadFvFresh=
    some (s6Step96HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859],776⟩,growRow 776 s6Step96HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step96HeadFvBefore s6Step96HeadFvAfter s6Step96HeadFvRow 62 s6Step96HeadFvFresh
    s6Step96HeadFv_distinct s6Step96HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step96HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step96HeadFvRow.payload++s6Step96HeadFvFresh) s6Step96HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step96HeadG_Incoming : rowsOwned s6Step96HeadGBefore [s6Step96HeadGRow,s6Step96HeadFRow,s6Step96HeadGvRow,s6Step96HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step96HeadGRow,s6Step96HeadFRow,s6Step96HeadGvRow,s6Step96HeadFvRow] 0 s6Step96HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step96HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step96HeadG_Outgoing : rowsOwned s6Step96HeadFvAfter [s6Step96HeadGOut,s6Step96HeadFOut,s6Step96HeadGvOut,s6Step96HeadFvOut] :=
  hmrRows_owned_drop s6Step96HeadFvAfter [s6Step96HeadGOut,s6Step96HeadFOut,s6Step96HeadGvOut,s6Step96HeadFvOut] 0 s6Step96HeadBank_outgoingOwned

private theorem s6Step96HeadG_distinct : (s6Step96HeadGRow.sign::s6Step96HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step96HeadG_owned : (s6Step96HeadGRow.sign::s6Step96HeadGRow.payload).toFinset⊆s6Step96HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step96HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step96HeadG_reserved : s6Step96HeadGBefore.reserve s6Step96HeadGFresh.toFinset=some s6Step96HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step96HeadGFresh,arenaWires]
  · norm_num [s6Step96HeadGBefore,s6Step96HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step96HeadGBefore s6Step96HeadGAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step96HeadGFresh rfl rfl
    · norm_num [s6Step96HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step96HeadG_checked : planRowResizeLog s6Step96HeadGBefore s6Step96HeadGRow 222 s6Step96HeadGFresh=
    some (s6Step96HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 890],777⟩,growRow 777 s6Step96HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step96HeadGBefore s6Step96HeadGAfter s6Step96HeadGRow 222 s6Step96HeadGFresh
    s6Step96HeadG_distinct s6Step96HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step96HeadG_reserved
  have rowEq : WindowRow.mk (s6Step96HeadGRow.payload++s6Step96HeadGFresh) s6Step96HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 890],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step96HeadGvBefore : Arena := s6Step96HeadFAfter

private theorem s6Step96HeadGv_Incoming : rowsOwned s6Step96HeadGvBefore [s6Step96HeadGvRow,s6Step96HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step96HeadGRow,s6Step96HeadFRow,s6Step96HeadGvRow,s6Step96HeadFvRow] 2 s6Step96HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step96HeadGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step96HeadGv_Outgoing : rowsOwned s6Step96HeadFvAfter [s6Step96HeadGvOut,s6Step96HeadFvOut] :=
  hmrRows_owned_drop s6Step96HeadFvAfter [s6Step96HeadGOut,s6Step96HeadFOut,s6Step96HeadGvOut,s6Step96HeadFvOut] 2 s6Step96HeadBank_outgoingOwned

private theorem s6Step96HeadGv_distinct : (s6Step96HeadGvRow.sign::s6Step96HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step96HeadGv_owned : (s6Step96HeadGvRow.sign::s6Step96HeadGvRow.payload).toFinset⊆s6Step96HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step96HeadGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step96HeadGv_reserved : s6Step96HeadGvBefore.reserve s6Step96HeadGvFresh.toFinset=some s6Step96HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step96HeadGvFresh,arenaWires]
  · norm_num [s6Step96HeadGvBefore,s6Step96HeadFAfter,s6Step96HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step96HeadGvBefore s6Step96HeadGvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step96HeadGvFresh rfl rfl
    · norm_num [s6Step96HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step96HeadGv_checked : planRowResizeLog s6Step96HeadGvBefore s6Step96HeadGvRow 62 s6Step96HeadGvFresh=
    some (s6Step96HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 813],775⟩,growRow 775 s6Step96HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step96HeadGvBefore s6Step96HeadGvAfter s6Step96HeadGvRow 62 s6Step96HeadGvFresh
    s6Step96HeadGv_distinct s6Step96HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step96HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step96HeadGvRow.payload++s6Step96HeadGvFresh) s6Step96HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 813],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step96HeadBank_rows : planWindowRowsLog s6Step96HeadGBefore [(s6Step96HeadGRow,222),(s6Step96HeadFRow,222),(s6Step96HeadGvRow,62),(s6Step96HeadFvRow,62)] [s6Step96HeadGFresh,s6Step96HeadFFresh,s6Step96HeadGvFresh,s6Step96HeadFvFresh]=
    some (s6Step96HeadFvAfter,[s6Step96HeadGOut,s6Step96HeadFOut,s6Step96HeadGvOut,s6Step96HeadFvOut],(growRow 777 s6Step96HeadGFresh ++ (growRow 795 s6Step96HeadFFresh ++ (growRow 775 s6Step96HeadGvFresh ++ (growRow 776 s6Step96HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step96HeadFvAfter [] []=some (s6Step96HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step96HeadFvBefore s6Step96HeadFvAfter s6Step96HeadFvAfter
    s6Step96HeadFvRow s6Step96HeadFvOut 62 s6Step96HeadFvFresh [] [] []
    (growRow 776 s6Step96HeadFvFresh) ([]) s6Step96HeadFv_Incoming s6Step96HeadFv_checked h4 s6Step96HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step96HeadGvBefore s6Step96HeadGvAfter s6Step96HeadFvAfter
    s6Step96HeadGvRow s6Step96HeadGvOut 62 s6Step96HeadGvFresh [(s6Step96HeadFvRow,62)] [s6Step96HeadFvFresh] [s6Step96HeadFvOut]
    (growRow 775 s6Step96HeadGvFresh) ((growRow 776 s6Step96HeadFvFresh ++ [])) s6Step96HeadGv_Incoming s6Step96HeadGv_checked h3 s6Step96HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step96HeadFBefore s6Step96HeadFAfter s6Step96HeadFvAfter
    s6Step96HeadFRow s6Step96HeadFOut 222 s6Step96HeadFFresh [(s6Step96HeadGvRow,62),(s6Step96HeadFvRow,62)] [s6Step96HeadGvFresh,s6Step96HeadFvFresh] [s6Step96HeadGvOut,s6Step96HeadFvOut]
    (growRow 795 s6Step96HeadFFresh) ((growRow 775 s6Step96HeadGvFresh ++ (growRow 776 s6Step96HeadFvFresh ++ []))) s6Step96HeadF_Incoming s6Step96HeadF_checked h2 s6Step96HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step96HeadGBefore s6Step96HeadGAfter s6Step96HeadFvAfter
    s6Step96HeadGRow s6Step96HeadGOut 222 s6Step96HeadGFresh [(s6Step96HeadFRow,222),(s6Step96HeadGvRow,62),(s6Step96HeadFvRow,62)] [s6Step96HeadFFresh,s6Step96HeadGvFresh,s6Step96HeadFvFresh] [s6Step96HeadFOut,s6Step96HeadGvOut,s6Step96HeadFvOut]
    (growRow 777 s6Step96HeadGFresh) ((growRow 795 s6Step96HeadFFresh ++ (growRow 775 s6Step96HeadGvFresh ++ (growRow 776 s6Step96HeadFvFresh ++ [])))) s6Step96HeadG_Incoming s6Step96HeadG_checked h1 s6Step96HeadG_Outgoing
  exact h0

private theorem s6Step96HeadBank_checked : compileHmrBankResizeLog .headroom s6Step96HeadGBefore ⟨s6Step96HeadFRow,s6Step96HeadGRow,s6Step96HeadFvRow,s6Step96HeadGvRow⟩ ⟨222,222,62,62⟩ [s6Step96HeadGFresh,s6Step96HeadFFresh,s6Step96HeadGvFresh,s6Step96HeadFvFresh]=
    some (s6Step96HeadFvAfter,⟨s6Step96HeadFOut,s6Step96HeadGOut,s6Step96HeadFvOut,s6Step96HeadGvOut⟩,(growRow 777 s6Step96HeadGFresh ++ (growRow 795 s6Step96HeadFFresh ++ (growRow 775 s6Step96HeadGvFresh ++ (growRow 776 s6Step96HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step96HeadBank_rows]
  rfl

private theorem s6Step96Front_checked : compileHmrSourceFrontLog s6Step96EntryFBefore s6Step96FrontBank 221 61 ⟨221,220,62,61⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step96FrontLog=some s6Step96FrontPlan := by
  have pairEq : s6Step96FrontPair=⟨s6Step96HeadFRow,s6Step96HeadGRow,s6Step96HeadFvRow,s6Step96HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step96FrontHead=⟨s6Step96ExitFRow,s6Step96ExitGRow,s6Step96ExitFvRow,s6Step96ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step96Add0A=s6Step96FrontHead.f.wires := by decide +kernel
  have gEq : s6Step96Add0B=s6Step96FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step96Add1A=s6Step96FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step96Add1B=s6Step96FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step96EntryFBefore s6Step96FrontBank 221 61 ⟨221,220,62,61⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step96FrontLog s6Step96FrontPlan
  · exact s6Step96Front_entry
  · exact s6Step96EntryBank_checked
  · exact s6Step96Front_sigma
  · rfl
  · exact s6Step96Front_branch
  · rfl
  · simpa only [s6Step96FrontPlan,pairEq] using s6Step96HeadBank_checked
  · simpa only [s6Step96FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step96F4_checked
  · exact s6Step96Counter_checked
  · rfl
  · simpa only [s6Step96FrontPlan,headEq] using s6Step96ExitBank_checked

private theorem s6Step96Complete_explicit_checked : compileHmrEarlyStepLog s6Step96EntryFBefore s6Step96FrontBank 221 61 ⟨221,220,62,61⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 34 s6Step96CompleteLog=some s6Step96CompletePlan := by
  let Q := s6Step96EarlyControlPlan
  have hq := s6Step96EarlyControl_plan_checked
  have fv1 : s6Step96CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step96CompleteOut.fv.payload[2]?.getD s6Step96CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step96CompleteOut.fv.payload[3]?.getD s6Step96CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step96CompleteOut.fv.payload[4]?.getD s6Step96CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step96EntryFBefore s6Step96EarlyControlArena s6Step96FrontBank 221 61 ⟨221,220,62,61⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 34 s6Step96CompleteLog s6Step96FrontPlan Q
    s6Step96Front_checked s6Step96Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step96Complete_owned s6Step96Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step96EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 907 s6Step96CompleteOut.fv.second (s6Step96CompleteOut.fv.payload[2]?.getD s6Step96CompleteOut.fv.sign) (s6Step96CompleteOut.fv.payload[3]?.getD s6Step96CompleteOut.fv.sign) (s6Step96CompleteOut.fv.payload[4]?.getD s6Step96CompleteOut.fv.sign) 857 34 s6Step96EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep96Arena : Arena := s6Step96EntryFBefore
def s6PrivateStep96Bank : WindowBank := s6Step96FrontBank
def s6PrivateStep96Spec : HmrSourceWalkStepLog := ⟨221,61,⟨221,220,62,61⟩,34,.early s6Step96CompleteLog⟩
def s6PrivateStep96Plan : HmrSourceStepPlan := .early s6Step96CompletePlan
theorem s6PrivateStep96_source : s6PrivateStep96Spec=s6ObservedLogs96[0] := rfl
theorem s6PrivateStep96_checked : compileHmrSourceStepLog s6PrivateStep96Arena s6PrivateStep96Bank
    s6PrivateStep96Spec.fgWidth s6PrivateStep96Spec.vWidth s6PrivateStep96Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847]
    6 498 96 s6PrivateStep96Spec.need none s6PrivateStep96Spec.log=some s6PrivateStep96Plan := by
  change compileHmrSourceStepLog s6Step96EntryFBefore s6Step96FrontBank 221 61 ⟨221,220,62,61⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 6 498 96 34 none (.early s6Step96CompleteLog)=some (.early s6Step96CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 96<498)]
  rw [s6Step96Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
