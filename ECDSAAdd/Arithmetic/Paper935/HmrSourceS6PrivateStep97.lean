import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep95
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

private def s6Step97CompleteMoves : List (Wire × Wire) := [(779,219)]

private def s6Step97EarlyControlLog : HmrEarlyControlLog := ⟨[779, 907, 876, 890, 857],[874],[803],[922, 879, 784, 891, 903, 885],[]⟩

private def s6Step97FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [857], [], [907]],[[874], [890], [876], [881]],[[], [], [], []]⟩,[796],[813],[803],[922],[879, 784, 891, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[879, 784, 891, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[803, 922, 879, 784]⟩

private def s6Step97CompleteLog : HmrEarlyStepLog := ⟨s6Step97FrontLog,s6Step97CompleteMoves,s6Step97EarlyControlLog⟩

private def s6Step97ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476],795⟩

private def s6Step97ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881],776⟩

private def s6Step97ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218],777⟩

private def s6Step97ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858],775⟩

private def s6Step97FrontOut : WindowBank := ⟨s6Step97ExitFOut,s6Step97ExitGOut,s6Step97ExitFvOut,s6Step97ExitGvOut⟩

private def s6Step97CompleteOut : WindowBank := s6Step97FrontOut.repacked s6Step97CompleteMoves

private def s6Step97EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step97EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step97EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step97EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step97EarlyControlPositiveArena,[874],s6Step97EarlyControlEqualityArena,[803],⟨⟨796,false⟩,[⟨⟨874,false⟩,803⟩]⟩⟩

private def s6Step97EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step97EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step97EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step97EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step97EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step97EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step97EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,779⟩,⟨⟨772,false⟩,907⟩,⟨⟨771,false⟩,876⟩,⟨⟨770,false⟩,890⟩,⟨⟨769,false⟩,857⟩]⟩

private def s6Step97EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step97EarlyControlZeroArena,s6Step97EarlyControlZeroPlan,s6Step97EarlyControlClassPlan,s6Step97EarlyControlFlagArena,s6Step97EarlyControlFittedArena,s6Step97EarlyControlHistoryArena,s6Step97EarlyControlSigmaArena,s6Step97EarlyControlOutputArena,s6Step97EarlyControlLog⟩

private def s6Step97CounterWork : List Wire := [803, 922, 879, 784]

private theorem s6Step97Counter_bounded : s6Step97CounterWork.toFinset⊆arenaWires := by norm_num [s6Step97CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step97HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step97CounterDuring : Arena := ⟨s6Step97HeadFvAfter.live∪s6Step97CounterWork.toFinset,Finset.union_subset s6Step97HeadFvAfter.bounded s6Step97Counter_bounded⟩

private def s6Step97EntryFFresh : List Wire := []

private def s6Step97EntryFvFresh : List Wire := []

private def s6Step97EntryGFresh : List Wire := [857]

private def s6Step97EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step97EntryGvFresh : List Wire := [907]

private def s6Step97ExitFExtra : List Wire := [890]

private def s6Step97ExitGExtra : List Wire := [219, 857, 874]

private def s6Step97ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,219),(220,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step97ExitGvExtra : List Wire := [907, 876]

private def s6Step97Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step97Add0Work : List Wire := [879, 784, 891, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step97Add0_bounded : s6Step97Add0Work.toFinset⊆arenaWires := by
  have h : s6Step97Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step97Add0During : Arena := ⟨s6Step97Add0Arena.live∪s6Step97Add0Work.toFinset,Finset.union_subset s6Step97Add0Arena.bounded s6Step97Add0_bounded⟩

private def s6Step97Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step97Add1Work : List Wire := [879, 784, 891, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step97Add1_bounded : s6Step97Add1Work.toFinset⊆arenaWires := by
  have h : s6Step97Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step97Add1During : Arena := ⟨s6Step97Add1Arena.live∪s6Step97Add1Work.toFinset,Finset.union_subset s6Step97Add1Arena.bounded s6Step97Add1_bounded⟩

private def s6Step97F4FlagArena : Arena := ⟨s6Step97HeadFvAfter.live∪{803},Finset.union_subset s6Step97HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step97F4Plan : HmrHybridF4Plan := ⟨s6Step97F4FlagArena,[803],s6Step97Add0Arena,[922],s6Step97Add0During,s6Step97Add0Work,s6Step97Add1During,s6Step97Add1Work⟩

private def s6Step97HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 890],795⟩

private def s6Step97HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881],776⟩

private def s6Step97HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 857, 874],777⟩

private def s6Step97HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 907, 876],775⟩

private def s6Step97FrontHead : WindowBank := ⟨s6Step97HeadFOut,s6Step97HeadGOut,s6Step97HeadFvOut,s6Step97HeadGvOut⟩

private def s6Step97EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476],795⟩

private def s6Step97EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859],776⟩

private def s6Step97EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 857],777⟩

private def s6Step97EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 907],775⟩

private def s6Step97FrontPair : WindowBank := ⟨s6Step97EntryFOut,s6Step97EntryGOut,s6Step97EntryFvOut,s6Step97EntryGvOut⟩

private def s6Step97FrontSigmaArena : Arena := ⟨s6Step97EntryGvAfter.live∪{796},Finset.union_subset s6Step97EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step97HeadFFresh : List Wire := [890]

private def s6Step97HeadFvFresh : List Wire := [881]

private def s6Step97HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step97HeadGFresh : List Wire := [874]

private def s6Step97HeadGvFresh : List Wire := [876]

private def s6Step97FrontPlan : HmrSourceFront := ⟨s6Step97EntryGvAfter,s6Step97FrontPair,(growRow 795 s6Step97EntryFFresh ++ (growRow 777 s6Step97EntryGFresh ++ (growRow 776 s6Step97EntryFvFresh ++ (growRow 775 s6Step97EntryGvFresh ++ [])))),s6Step97FrontSigmaArena,[796],s6Step97HeadGBefore,[813],
  s6Step97HeadFvAfter,s6Step97FrontHead,(growRow 777 s6Step97HeadGFresh ++ (growRow 795 s6Step97HeadFFresh ++ (growRow 775 s6Step97HeadGvFresh ++ (growRow 776 s6Step97HeadFvFresh ++ [])))),s6Step97F4Plan,s6Step97CounterDuring,s6Step97CounterWork,s6Step97ExitGvAfter,s6Step97FrontOut,(shrinkRow 777 s6Step97ExitGExtra ++ (shrinkRow 795 s6Step97ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step97ExitGvExtra ++ []))))⟩

private def s6Step97CompletePlan : HmrEarlyStepPlan := ⟨s6Step97FrontPlan,s6Step97EarlyControlArena,s6Step97EarlyControlPlan,s6Step97CompleteMoves⟩

private theorem s6Step97Complete_apart : List.Disjoint (s6Step97CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [796, 813, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] := by
  have nd : ((s6Step97CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[796, 813, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step97Complete_owned : (s6Step97CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step97EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step97EarlyControlArena (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step97CompleteRelocationMove0Borrowed : Arena := ⟨s6Step97ExitGvAfter.live∪{219},Finset.union_subset s6Step97ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step97CompleteRelocation_move0_owned : 779∈s6Step97ExitGvAfter.live := by norm_num [s6Step97ExitGvAfter,arenaWires]

private theorem s6Step97CompleteRelocation_move0_reserve : s6Step97ExitGvAfter.reserve {219}=some s6Step97CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step97ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step97CompleteRelocation_move0_retire : s6Step97CompleteRelocationMove0Borrowed.retireSet {779}=s6Step97EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step97CompleteRelocationMove0Borrowed s6Step97EarlyControlArena {779}
  change s6Step97EarlyControlArena.live=(s6Step97ExitGvAfter.live∪{219})\{779}
  apply hmrArena_update_of_filter_check s6Step97ExitGvAfter s6Step97EarlyControlArena (fun q => ([(0,219),(220,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [219] [779] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step97CompleteRelocation_checked : s6Step97ExitGvAfter.checkRepack [(779,219)]=some s6Step97EarlyControlArena := by
  have tail1 : s6Step97EarlyControlArena.checkRepack []=some s6Step97EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step97ExitGvAfter s6Step97CompleteRelocationMove0Borrowed s6Step97EarlyControlArena s6Step97EarlyControlArena 779 219 []
    s6Step97CompleteRelocation_move0_owned s6Step97CompleteRelocation_move0_reserve s6Step97CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step97Complete_repack : s6Step97ExitGvAfter.checkRepack s6Step97CompleteMoves=some s6Step97EarlyControlArena := by
  simpa only [s6Step97CompleteMoves] using s6Step97CompleteRelocation_checked

private theorem s6Step97EarlyControl_branchOwned : ([813] : List Wire).toFinset⊆s6Step97EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step97EarlyControlSigmaArena (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step97EarlyControl_branch : compileHmrBranchRetirement s6Step97EarlyControlSigmaArena 813=some s6Step97EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step97EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step97EarlyControlSigmaArena s6Step97EarlyControlOutputArena (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [813] rfl rfl
    decide +kernel

private theorem s6Step97EarlyControl_classEqualityBorrow : s6Step97EarlyControlPositiveArena.checkBorrow (([796, 874] : List Wire).length-1) s6Step97EarlyControlLog.classWork=some s6Step97EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step97EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step97EarlyControlPositiveArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step97EarlyControlPositiveArena s6Step97EarlyControlEqualityArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step97EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step97EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step97EarlyControl_classEqualityOwned : ([796, 874] : List Wire).toFinset⊆s6Step97EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step97EarlyControlPositiveArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step97EarlyControl_classEquality : compileHmrEqualityLog s6Step97EarlyControlPositiveArena [796, 874] 0 s6Step97EarlyControlLog.classWork=some (s6Step97EarlyControlEqualityArena,s6Step97EarlyControlLog.classWork,s6Step97EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step97EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step97EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step97EarlyControl_classOwned : ([769, 857, 796] : List Wire).toFinset⊆s6Step97EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step97EarlyControlZeroArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step97EarlyControl_positiveBorrow : s6Step97EarlyControlZeroArena.checkBorrow (1) s6Step97EarlyControlLog.positiveWork=some s6Step97EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step97EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step97EarlyControlZeroArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step97EarlyControlZeroArena s6Step97EarlyControlPositiveArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step97EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step97EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step97EarlyControl_class : compileHmrSourceClassLog s6Step97EarlyControlZeroArena false 769 s6Step97EarlyControlZeroPlan.top 0 796 s6Step97EarlyControlLog.positiveWork s6Step97EarlyControlLog.classWork=some s6Step97EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step97EarlyControlClassPlan s6Step97EarlyControlZeroArena false 769 s6Step97EarlyControlZeroPlan.top 0 796
  constructor
  · decide +kernel
  · exact s6Step97EarlyControl_classOwned
  · exact s6Step97EarlyControl_positiveBorrow
  · exact s6Step97EarlyControl_classEquality

private theorem s6Step97EarlyControl_entryRecordOwned : ([813, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).toFinset⊆s6Step97EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step97EarlyControlArena (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step97EarlyControl_entrySigmaOwned : ([796, 254] : List Wire).toFinset⊆s6Step97EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step97EarlyControlArena (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step97EarlyControl_fitBorrow : s6Step97EarlyControlFlagArena.checkBorrow ((34-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).length)) s6Step97EarlyControlLog.recordFresh=some s6Step97EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step97EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step97EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step97EarlyControlFittedArena,s6Step97EarlyControlFlagArena,s6Step97EarlyControlLog,arenaWires]

private theorem s6Step97EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).toFinset⊆s6Step97EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step97EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step97EarlyControl_fit : compileHmrRecordGrowLog s6Step97EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 34 s6Step97EarlyControlLog.recordFresh=some s6Step97EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step97EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step97EarlyControl_fitBorrow

private theorem s6Step97EarlyControl_flagsBorrow : s6Step97EarlyControlEqualityArena.checkBorrow (6) s6Step97EarlyControlLog.flagWork=some s6Step97EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step97EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step97EarlyControlEqualityArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step97EarlyControlEqualityArena s6Step97EarlyControlFlagArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step97EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step97EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step97EarlyControl_flagsOwned : ([803, 253, 252, 251] : List Wire).toFinset⊆s6Step97EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step97EarlyControlEqualityArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step97EarlyControl_flags : compileHmrFlagsLog s6Step97EarlyControlClassPlan.equalityArena s6Step97EarlyControlClassPlan.equality.top 253 252 251 s6Step97EarlyControlLog.flagWork=some s6Step97EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step97EarlyControl_flagsOwned⟩
  · exact s6Step97EarlyControl_flagsBorrow

private theorem s6Step97EarlyControl_historyBorrow : s6Step97EarlyControlArena.checkBorrow ((34-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).length)) s6Step97EarlyControlLog.recordFresh=some s6Step97EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step97EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step97EarlyControlArena (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step97EarlyControlArena s6Step97EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step97EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step97EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step97EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).toFinset⊆s6Step97EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step97EarlyControlArena (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step97EarlyControl_history : compileHmrRecordGrowLog s6Step97EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 34 s6Step97EarlyControlLog.recordFresh=some s6Step97EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step97EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step97EarlyControl_historyBorrow

private theorem s6Step97EarlyControl_sigmaOwned : ([254, 796] : List Wire).toFinset⊆s6Step97EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step97EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step97EarlyControl_sigmaReleaseOwned : ([796] : List Wire).toFinset⊆s6Step97EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step97EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step97EarlyControl_sigmaRelease : s6Step97EarlyControlHistoryArena.release {796} (fun _ => false)=some s6Step97EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step97EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step97EarlyControlHistoryArena s6Step97EarlyControlSigmaArena (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [796] rfl rfl
    decide +kernel

private theorem s6Step97EarlyControl_sigma : compileHmrSigmaDropLog s6Step97EarlyControlHistoryArena false 0 0 254 796 []=some s6Step97EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step97EarlyControl_sigmaOwned⟩
  · exact s6Step97EarlyControl_sigmaRelease

private theorem s6Step97EarlyControl_zeroBorrow : s6Step97EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step97EarlyControlLog.zeroWork=some s6Step97EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step97EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step97EarlyControlArena (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step97EarlyControlArena s6Step97EarlyControlZeroArena (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step97EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step97EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step97EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step97EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step97EarlyControlArena (fun q => ([(0,779),(780,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step97EarlyControl_zero : compileHmrEqualityLog s6Step97EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step97EarlyControlLog.zeroWork=some (s6Step97EarlyControlZeroArena,s6Step97EarlyControlLog.zeroWork,s6Step97EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step97EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step97EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step97EarlyControl_logged : s6Step97EarlyControlPlan.Logged s6Step97EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 796 254 253 252 251 813 34 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step97EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step97EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step97EarlyControl_zero
  · exact s6Step97EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step97EarlyControl_flags
  · exact s6Step97EarlyControl_fit
  · exact s6Step97EarlyControl_history
  · exact s6Step97EarlyControl_sigma
  · exact s6Step97EarlyControl_branch

private theorem s6Step97EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step97EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 796 254 253 252 251 813 34 s6Step97EarlyControlLog=some s6Step97EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step97EarlyControlPlan s6Step97EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 796 254 253 252 251 813 34 s6Step97EarlyControl_logged

private def s6Step97EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step97EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476],795⟩

private def s6Step97EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859],776⟩

private def s6Step97EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219],777⟩

private def s6Step97EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858],775⟩

private def s6Step97FrontBank : WindowBank := ⟨s6Step97EntryFRow,s6Step97EntryGRow,s6Step97EntryFvRow,s6Step97EntryGvRow⟩

private def s6Step97Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 890, 795]

private def s6Step97Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 857, 874, 777]

private def s6Step97Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 776]

private def s6Step97Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 907, 876, 775]

private theorem s6Step97Counter_apart : Disjoint s6Step97HeadFvAfter.live s6Step97CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step97HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step97Counter_borrowed : s6Step97HeadFvAfter.checkBorrow 4 s6Step97CounterWork=some s6Step97CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step97HeadFvAfter s6Step97CounterDuring s6Step97CounterWork.toFinset s6Step97Counter_bounded s6Step97Counter_apart rfl

private theorem s6Step97Counter_owned : (796::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step97HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step97HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step97Counter_checked : compileHmrCounterStepLog s6Step97HeadFvAfter true 796 [774, 773, 772, 771, 770, 769] s6Step97CounterWork=some s6Step97CounterDuring := by
  have owned : ∀q∈796::[774, 773, 772, 771, 770, 769],q∈s6Step97HeadFvAfter.live := fun q hq => s6Step97Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step97Counter_borrowed

private def s6Step97EntryFAfter : Arena := s6Step97EntryFBefore

private theorem s6Step97EntryBank_incomingDistinct : ([s6Step97EntryFRow,s6Step97EntryGRow,s6Step97EntryFvRow,s6Step97EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step97EntryF_Incoming : rowsOwned s6Step97EntryFBefore [s6Step97EntryFRow,s6Step97EntryGRow,s6Step97EntryFvRow,s6Step97EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step97EntryFRow,s6Step97EntryGRow,s6Step97EntryFvRow,s6Step97EntryGvRow] 0 s6Step97EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step97EntryFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step97EntryBank_outgoingOwned : rowsOwned s6Step97EntryGvAfter [s6Step97EntryFOut,s6Step97EntryGOut,s6Step97EntryFvOut,s6Step97EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step97EntryGvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step97EntryF_Outgoing : rowsOwned s6Step97EntryGvAfter [s6Step97EntryFOut,s6Step97EntryGOut,s6Step97EntryFvOut,s6Step97EntryGvOut] :=
  hmrRows_owned_drop s6Step97EntryGvAfter [s6Step97EntryFOut,s6Step97EntryGOut,s6Step97EntryFvOut,s6Step97EntryGvOut] 0 s6Step97EntryBank_outgoingOwned

private theorem s6Step97EntryF_distinct : (s6Step97EntryFRow.sign::s6Step97EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step97EntryF_owned : (s6Step97EntryFRow.sign::s6Step97EntryFRow.payload).toFinset⊆s6Step97EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step97EntryFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step97EntryF_reserved : s6Step97EntryFBefore.reserve s6Step97EntryFFresh.toFinset=some s6Step97EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step97EntryFFresh,arenaWires]
  · norm_num [s6Step97EntryFBefore,s6Step97EntryFFresh,arenaWires]
  · simp only [s6Step97EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step97EntryF_checked : planRowResizeLog s6Step97EntryFBefore s6Step97EntryFRow 221 s6Step97EntryFFresh=
    some (s6Step97EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476],795⟩,growRow 795 s6Step97EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step97EntryFBefore s6Step97EntryFAfter s6Step97EntryFRow 221 s6Step97EntryFFresh
    s6Step97EntryF_distinct s6Step97EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step97EntryF_reserved
  have rowEq : WindowRow.mk (s6Step97EntryFRow.payload++s6Step97EntryFFresh) s6Step97EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step97EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step97EntryFvAfter : Arena := s6Step97EntryGAfter

private def s6Step97EntryFvBefore : Arena := s6Step97EntryGAfter

private theorem s6Step97EntryFv_Incoming : rowsOwned s6Step97EntryFvBefore [s6Step97EntryFvRow,s6Step97EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step97EntryFRow,s6Step97EntryGRow,s6Step97EntryFvRow,s6Step97EntryGvRow] 2 s6Step97EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step97EntryFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step97EntryFv_Outgoing : rowsOwned s6Step97EntryGvAfter [s6Step97EntryFvOut,s6Step97EntryGvOut] :=
  hmrRows_owned_drop s6Step97EntryGvAfter [s6Step97EntryFOut,s6Step97EntryGOut,s6Step97EntryFvOut,s6Step97EntryGvOut] 2 s6Step97EntryBank_outgoingOwned

private theorem s6Step97EntryFv_distinct : (s6Step97EntryFvRow.sign::s6Step97EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step97EntryFv_owned : (s6Step97EntryFvRow.sign::s6Step97EntryFvRow.payload).toFinset⊆s6Step97EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step97EntryFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step97EntryFv_reserved : s6Step97EntryFvBefore.reserve s6Step97EntryFvFresh.toFinset=some s6Step97EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step97EntryFvFresh,arenaWires]
  · norm_num [s6Step97EntryFvBefore,s6Step97EntryGAfter,s6Step97EntryFvFresh,arenaWires]
  · simp only [s6Step97EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step97EntryFv_checked : planRowResizeLog s6Step97EntryFvBefore s6Step97EntryFvRow 62 s6Step97EntryFvFresh=
    some (s6Step97EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859],776⟩,growRow 776 s6Step97EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step97EntryFvBefore s6Step97EntryFvAfter s6Step97EntryFvRow 62 s6Step97EntryFvFresh
    s6Step97EntryFv_distinct s6Step97EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step97EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step97EntryFvRow.payload++s6Step97EntryFvFresh) s6Step97EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step97EntryGBefore : Arena := s6Step97EntryFBefore

private theorem s6Step97EntryG_Incoming : rowsOwned s6Step97EntryGBefore [s6Step97EntryGRow,s6Step97EntryFvRow,s6Step97EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step97EntryFRow,s6Step97EntryGRow,s6Step97EntryFvRow,s6Step97EntryGvRow] 1 s6Step97EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step97EntryGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step97EntryG_Outgoing : rowsOwned s6Step97EntryGvAfter [s6Step97EntryGOut,s6Step97EntryFvOut,s6Step97EntryGvOut] :=
  hmrRows_owned_drop s6Step97EntryGvAfter [s6Step97EntryFOut,s6Step97EntryGOut,s6Step97EntryFvOut,s6Step97EntryGvOut] 1 s6Step97EntryBank_outgoingOwned

private theorem s6Step97EntryG_distinct : (s6Step97EntryGRow.sign::s6Step97EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step97EntryG_owned : (s6Step97EntryGRow.sign::s6Step97EntryGRow.payload).toFinset⊆s6Step97EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step97EntryGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step97EntryG_reserved : s6Step97EntryGBefore.reserve s6Step97EntryGFresh.toFinset=some s6Step97EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step97EntryGFresh,arenaWires]
  · norm_num [s6Step97EntryGBefore,s6Step97EntryFBefore,s6Step97EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step97EntryGBefore s6Step97EntryGAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step97EntryGFresh rfl rfl
    · norm_num [s6Step97EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step97EntryG_checked : planRowResizeLog s6Step97EntryGBefore s6Step97EntryGRow 221 s6Step97EntryGFresh=
    some (s6Step97EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 857],777⟩,growRow 777 s6Step97EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step97EntryGBefore s6Step97EntryGAfter s6Step97EntryGRow 221 s6Step97EntryGFresh
    s6Step97EntryG_distinct s6Step97EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step97EntryG_reserved
  have rowEq : WindowRow.mk (s6Step97EntryGRow.payload++s6Step97EntryGFresh) s6Step97EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 857],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step97EntryGvBefore : Arena := s6Step97EntryGAfter

private theorem s6Step97EntryGv_Incoming : rowsOwned s6Step97EntryGvBefore [s6Step97EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step97EntryFRow,s6Step97EntryGRow,s6Step97EntryFvRow,s6Step97EntryGvRow] 3 s6Step97EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step97EntryGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step97EntryGv_Outgoing : rowsOwned s6Step97EntryGvAfter [s6Step97EntryGvOut] :=
  hmrRows_owned_drop s6Step97EntryGvAfter [s6Step97EntryFOut,s6Step97EntryGOut,s6Step97EntryFvOut,s6Step97EntryGvOut] 3 s6Step97EntryBank_outgoingOwned

private theorem s6Step97EntryGv_distinct : (s6Step97EntryGvRow.sign::s6Step97EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step97EntryGv_owned : (s6Step97EntryGvRow.sign::s6Step97EntryGvRow.payload).toFinset⊆s6Step97EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step97EntryGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step97EntryGv_reserved : s6Step97EntryGvBefore.reserve s6Step97EntryGvFresh.toFinset=some s6Step97EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step97EntryGvFresh,arenaWires]
  · norm_num [s6Step97EntryGvBefore,s6Step97EntryGAfter,s6Step97EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step97EntryGvBefore s6Step97EntryGvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step97EntryGvFresh rfl rfl
    · norm_num [s6Step97EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step97EntryGv_checked : planRowResizeLog s6Step97EntryGvBefore s6Step97EntryGvRow 62 s6Step97EntryGvFresh=
    some (s6Step97EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 907],775⟩,growRow 775 s6Step97EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step97EntryGvBefore s6Step97EntryGvAfter s6Step97EntryGvRow 62 s6Step97EntryGvFresh
    s6Step97EntryGv_distinct s6Step97EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step97EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step97EntryGvRow.payload++s6Step97EntryGvFresh) s6Step97EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 907],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step97EntryBank_rows : planWindowRowsLog s6Step97EntryFBefore [(s6Step97EntryFRow,221),(s6Step97EntryGRow,221),(s6Step97EntryFvRow,62),(s6Step97EntryGvRow,62)] [s6Step97EntryFFresh,s6Step97EntryGFresh,s6Step97EntryFvFresh,s6Step97EntryGvFresh]=
    some (s6Step97EntryGvAfter,[s6Step97EntryFOut,s6Step97EntryGOut,s6Step97EntryFvOut,s6Step97EntryGvOut],(growRow 795 s6Step97EntryFFresh ++ (growRow 777 s6Step97EntryGFresh ++ (growRow 776 s6Step97EntryFvFresh ++ (growRow 775 s6Step97EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step97EntryGvAfter [] []=some (s6Step97EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step97EntryGvBefore s6Step97EntryGvAfter s6Step97EntryGvAfter
    s6Step97EntryGvRow s6Step97EntryGvOut 62 s6Step97EntryGvFresh [] [] []
    (growRow 775 s6Step97EntryGvFresh) ([]) s6Step97EntryGv_Incoming s6Step97EntryGv_checked h4 s6Step97EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step97EntryFvBefore s6Step97EntryFvAfter s6Step97EntryGvAfter
    s6Step97EntryFvRow s6Step97EntryFvOut 62 s6Step97EntryFvFresh [(s6Step97EntryGvRow,62)] [s6Step97EntryGvFresh] [s6Step97EntryGvOut]
    (growRow 776 s6Step97EntryFvFresh) ((growRow 775 s6Step97EntryGvFresh ++ [])) s6Step97EntryFv_Incoming s6Step97EntryFv_checked h3 s6Step97EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step97EntryGBefore s6Step97EntryGAfter s6Step97EntryGvAfter
    s6Step97EntryGRow s6Step97EntryGOut 221 s6Step97EntryGFresh [(s6Step97EntryFvRow,62),(s6Step97EntryGvRow,62)] [s6Step97EntryFvFresh,s6Step97EntryGvFresh] [s6Step97EntryFvOut,s6Step97EntryGvOut]
    (growRow 777 s6Step97EntryGFresh) ((growRow 776 s6Step97EntryFvFresh ++ (growRow 775 s6Step97EntryGvFresh ++ []))) s6Step97EntryG_Incoming s6Step97EntryG_checked h2 s6Step97EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step97EntryFBefore s6Step97EntryFAfter s6Step97EntryGvAfter
    s6Step97EntryFRow s6Step97EntryFOut 221 s6Step97EntryFFresh [(s6Step97EntryGRow,221),(s6Step97EntryFvRow,62),(s6Step97EntryGvRow,62)] [s6Step97EntryGFresh,s6Step97EntryFvFresh,s6Step97EntryGvFresh] [s6Step97EntryGOut,s6Step97EntryFvOut,s6Step97EntryGvOut]
    (growRow 795 s6Step97EntryFFresh) ((growRow 777 s6Step97EntryGFresh ++ (growRow 776 s6Step97EntryFvFresh ++ (growRow 775 s6Step97EntryGvFresh ++ [])))) s6Step97EntryF_Incoming s6Step97EntryF_checked h1 s6Step97EntryF_Outgoing
  exact h0

private theorem s6Step97EntryBank_checked : compileHmrBankResizeLog .entry s6Step97EntryFBefore ⟨s6Step97EntryFRow,s6Step97EntryGRow,s6Step97EntryFvRow,s6Step97EntryGvRow⟩ ⟨221,221,62,62⟩ [s6Step97EntryFFresh,s6Step97EntryGFresh,s6Step97EntryFvFresh,s6Step97EntryGvFresh]=
    some (s6Step97EntryGvAfter,⟨s6Step97EntryFOut,s6Step97EntryGOut,s6Step97EntryFvOut,s6Step97EntryGvOut⟩,(growRow 795 s6Step97EntryFFresh ++ (growRow 777 s6Step97EntryGFresh ++ (growRow 776 s6Step97EntryFvFresh ++ (growRow 775 s6Step97EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step97EntryBank_rows]
  rfl

private def s6Step97ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,219),(220,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step97ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,219),(220,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step97ExitFBefore : Arena := s6Step97ExitGAfter

private def s6Step97ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 890],795⟩

private def s6Step97ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881],776⟩

private def s6Step97ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 857, 874],777⟩

private def s6Step97ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 907, 876],775⟩

private theorem s6Step97ExitBank_incomingDistinct : ([s6Step97ExitGRow,s6Step97ExitFRow,s6Step97ExitFvRow,s6Step97ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step97ExitF_Incoming : rowsOwned s6Step97ExitFBefore [s6Step97ExitFRow,s6Step97ExitFvRow,s6Step97ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step97ExitGRow,s6Step97ExitFRow,s6Step97ExitFvRow,s6Step97ExitGvRow] 1 s6Step97ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step97ExitFBefore (fun q => ([(0,219),(220,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step97ExitBank_outgoingOwned : rowsOwned s6Step97ExitGvAfter [s6Step97ExitGOut,s6Step97ExitFOut,s6Step97ExitFvOut,s6Step97ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step97ExitGvAfter (fun q => ([(0,219),(220,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step97ExitF_Outgoing : rowsOwned s6Step97ExitGvAfter [s6Step97ExitFOut,s6Step97ExitFvOut,s6Step97ExitGvOut] :=
  hmrRows_owned_drop s6Step97ExitGvAfter [s6Step97ExitGOut,s6Step97ExitFOut,s6Step97ExitFvOut,s6Step97ExitGvOut] 1 s6Step97ExitBank_outgoingOwned

private theorem s6Step97ExitF_distinct : (s6Step97ExitFRow.sign::s6Step97ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step97ExitF_owned : (s6Step97ExitFRow.sign::s6Step97ExitFRow.payload).toFinset⊆s6Step97ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step97ExitFBefore (fun q => ([(0,219),(220,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step97ExitF_retired : s6Step97ExitFBefore.retireSet s6Step97ExitFExtra.toFinset=s6Step97ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step97ExitFBefore s6Step97ExitFAfter s6Step97ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step97ExitFBefore s6Step97ExitFAfter (fun q => ([(0,219),(220,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,219),(220,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step97ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step97ExitF_checked : planRowResizeLog s6Step97ExitFBefore s6Step97ExitFRow 221 []=
    some (s6Step97ExitFAfter,s6Step97ExitFOut,shrinkRow 795 s6Step97ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step97ExitFBefore s6Step97ExitFRow 221 s6Step97ExitF_distinct s6Step97ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step97ExitFRow.payload.take 221) s6Step97ExitFRow.sign=s6Step97ExitFOut := by decide +kernel
  have hi : s6Step97ExitFRow.payload.drop 221=s6Step97ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step97ExitF_retired] at result
  exact result

private def s6Step97ExitFvAfter : Arena := s6Step97ExitFAfter

private def s6Step97ExitFvBefore : Arena := s6Step97ExitFAfter

private theorem s6Step97ExitFv_Incoming : rowsOwned s6Step97ExitFvBefore [s6Step97ExitFvRow,s6Step97ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step97ExitGRow,s6Step97ExitFRow,s6Step97ExitFvRow,s6Step97ExitGvRow] 2 s6Step97ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step97ExitFvBefore (fun q => ([(0,219),(220,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step97ExitFv_Outgoing : rowsOwned s6Step97ExitGvAfter [s6Step97ExitFvOut,s6Step97ExitGvOut] :=
  hmrRows_owned_drop s6Step97ExitGvAfter [s6Step97ExitGOut,s6Step97ExitFOut,s6Step97ExitFvOut,s6Step97ExitGvOut] 2 s6Step97ExitBank_outgoingOwned

private theorem s6Step97ExitFv_distinct : (s6Step97ExitFvRow.sign::s6Step97ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step97ExitFv_owned : (s6Step97ExitFvRow.sign::s6Step97ExitFvRow.payload).toFinset⊆s6Step97ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step97ExitFvBefore (fun q => ([(0,219),(220,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step97ExitFv_reserved : s6Step97ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step97ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step97ExitFv_checked : planRowResizeLog s6Step97ExitFvBefore s6Step97ExitFvRow 63 []=
    some (s6Step97ExitFvAfter,s6Step97ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step97ExitFvBefore s6Step97ExitFvAfter s6Step97ExitFvRow 63 []
    s6Step97ExitFv_distinct s6Step97ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step97ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step97ExitFvRow.payload++[]) s6Step97ExitFvRow.sign=s6Step97ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step97ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step97ExitG_Incoming : rowsOwned s6Step97ExitGBefore [s6Step97ExitGRow,s6Step97ExitFRow,s6Step97ExitFvRow,s6Step97ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step97ExitGRow,s6Step97ExitFRow,s6Step97ExitFvRow,s6Step97ExitGvRow] 0 s6Step97ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step97ExitGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step97ExitG_Outgoing : rowsOwned s6Step97ExitGvAfter [s6Step97ExitGOut,s6Step97ExitFOut,s6Step97ExitFvOut,s6Step97ExitGvOut] :=
  hmrRows_owned_drop s6Step97ExitGvAfter [s6Step97ExitGOut,s6Step97ExitFOut,s6Step97ExitFvOut,s6Step97ExitGvOut] 0 s6Step97ExitBank_outgoingOwned

private theorem s6Step97ExitG_distinct : (s6Step97ExitGRow.sign::s6Step97ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step97ExitG_owned : (s6Step97ExitGRow.sign::s6Step97ExitGRow.payload).toFinset⊆s6Step97ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step97ExitGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step97ExitG_retired : s6Step97ExitGBefore.retireSet s6Step97ExitGExtra.toFinset=s6Step97ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step97ExitGBefore s6Step97ExitGAfter s6Step97ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step97ExitGBefore s6Step97ExitGAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,219),(220,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step97ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step97ExitG_checked : planRowResizeLog s6Step97ExitGBefore s6Step97ExitGRow 219 []=
    some (s6Step97ExitGAfter,s6Step97ExitGOut,shrinkRow 777 s6Step97ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step97ExitGBefore s6Step97ExitGRow 219 s6Step97ExitG_distinct s6Step97ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step97ExitGRow.payload.take 219) s6Step97ExitGRow.sign=s6Step97ExitGOut := by decide +kernel
  have hi : s6Step97ExitGRow.payload.drop 219=s6Step97ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step97ExitG_retired] at result
  exact result

private def s6Step97ExitGvBefore : Arena := s6Step97ExitFAfter

private theorem s6Step97ExitGv_Incoming : rowsOwned s6Step97ExitGvBefore [s6Step97ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step97ExitGRow,s6Step97ExitFRow,s6Step97ExitFvRow,s6Step97ExitGvRow] 3 s6Step97ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step97ExitGvBefore (fun q => ([(0,219),(220,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step97ExitGv_Outgoing : rowsOwned s6Step97ExitGvAfter [s6Step97ExitGvOut] :=
  hmrRows_owned_drop s6Step97ExitGvAfter [s6Step97ExitGOut,s6Step97ExitFOut,s6Step97ExitFvOut,s6Step97ExitGvOut] 3 s6Step97ExitBank_outgoingOwned

private theorem s6Step97ExitGv_distinct : (s6Step97ExitGvRow.sign::s6Step97ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step97ExitGv_owned : (s6Step97ExitGvRow.sign::s6Step97ExitGvRow.payload).toFinset⊆s6Step97ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step97ExitGvBefore (fun q => ([(0,219),(220,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step97ExitGv_retired : s6Step97ExitGvBefore.retireSet s6Step97ExitGvExtra.toFinset=s6Step97ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step97ExitGvBefore s6Step97ExitGvAfter s6Step97ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step97ExitGvBefore s6Step97ExitGvAfter (fun q => ([(0,219),(220,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,219),(220,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step97ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step97ExitGv_checked : planRowResizeLog s6Step97ExitGvBefore s6Step97ExitGvRow 61 []=
    some (s6Step97ExitGvAfter,s6Step97ExitGvOut,shrinkRow 775 s6Step97ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step97ExitGvBefore s6Step97ExitGvRow 61 s6Step97ExitGv_distinct s6Step97ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step97ExitGvRow.payload.take 61) s6Step97ExitGvRow.sign=s6Step97ExitGvOut := by decide +kernel
  have hi : s6Step97ExitGvRow.payload.drop 61=s6Step97ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step97ExitGv_retired] at result
  exact result

private theorem s6Step97ExitBank_rows : planWindowRowsLog s6Step97ExitGBefore [(s6Step97ExitGRow,219),(s6Step97ExitFRow,221),(s6Step97ExitFvRow,63),(s6Step97ExitGvRow,61)] [[],[],[],[]]=
    some (s6Step97ExitGvAfter,[s6Step97ExitGOut,s6Step97ExitFOut,s6Step97ExitFvOut,s6Step97ExitGvOut],(shrinkRow 777 s6Step97ExitGExtra ++ (shrinkRow 795 s6Step97ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step97ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step97ExitGvAfter [] []=some (s6Step97ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step97ExitGvBefore s6Step97ExitGvAfter s6Step97ExitGvAfter
    s6Step97ExitGvRow s6Step97ExitGvOut 61 [] [] [] []
    (shrinkRow 775 s6Step97ExitGvExtra) ([]) s6Step97ExitGv_Incoming s6Step97ExitGv_checked h4 s6Step97ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step97ExitFvBefore s6Step97ExitFvAfter s6Step97ExitGvAfter
    s6Step97ExitFvRow s6Step97ExitFvOut 63 [] [(s6Step97ExitGvRow,61)] [[]] [s6Step97ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step97ExitGvExtra ++ [])) s6Step97ExitFv_Incoming s6Step97ExitFv_checked h3 s6Step97ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step97ExitFBefore s6Step97ExitFAfter s6Step97ExitGvAfter
    s6Step97ExitFRow s6Step97ExitFOut 221 [] [(s6Step97ExitFvRow,63),(s6Step97ExitGvRow,61)] [[],[]] [s6Step97ExitFvOut,s6Step97ExitGvOut]
    (shrinkRow 795 s6Step97ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step97ExitGvExtra ++ []))) s6Step97ExitF_Incoming s6Step97ExitF_checked h2 s6Step97ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step97ExitGBefore s6Step97ExitGAfter s6Step97ExitGvAfter
    s6Step97ExitGRow s6Step97ExitGOut 219 [] [(s6Step97ExitFRow,221),(s6Step97ExitFvRow,63),(s6Step97ExitGvRow,61)] [[],[],[]] [s6Step97ExitFOut,s6Step97ExitFvOut,s6Step97ExitGvOut]
    (shrinkRow 777 s6Step97ExitGExtra) ((shrinkRow 795 s6Step97ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step97ExitGvExtra ++ [])))) s6Step97ExitG_Incoming s6Step97ExitG_checked h1 s6Step97ExitG_Outgoing
  exact h0

private theorem s6Step97ExitBank_checked : compileHmrBankResizeLog .exit s6Step97ExitGBefore ⟨s6Step97ExitFRow,s6Step97ExitGRow,s6Step97ExitFvRow,s6Step97ExitGvRow⟩ ⟨221,219,63,61⟩ [[],[],[],[]]=
    some (s6Step97ExitGvAfter,⟨s6Step97ExitFOut,s6Step97ExitGOut,s6Step97ExitFvOut,s6Step97ExitGvOut⟩,(shrinkRow 777 s6Step97ExitGExtra ++ (shrinkRow 795 s6Step97ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step97ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step97ExitBank_rows]
  rfl

private theorem s6Step97Add0_apart : Disjoint s6Step97Add0Arena.live s6Step97Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step97Add0Arena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step97Add0_card : s6Step97Add0Arena.live.card=874 := by
  decide +kernel

private theorem s6Step97Add0_borrowed : s6Step97Add0Arena.checkBorrow (hmrHybridCount s6Step97Add0Arena s6Step97Add0B.length) s6Step97Add0Work=some s6Step97Add0During := by
  have len : s6Step97Add0Work.length=hmrHybridCount s6Step97Add0Arena s6Step97Add0B.length := by
    rw [hmrHybridCount,s6Step97Add0_card]
    decide +kernel
  have nd : s6Step97Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step97Add0Arena s6Step97Add0During s6Step97Add0Work.toFinset s6Step97Add0_bounded s6Step97Add0_apart rfl

private theorem s6Step97Add0_distinct : (803::813::922::(s6Step97Add0A++s6Step97Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step97Add0_owned : (803::813::922::(s6Step97Add0A++s6Step97Add0B)).toFinset⊆s6Step97Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step97Add0Arena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step97Add0_checked : compileHmrHybridCinLog s6Step97Add0Arena 813 803 922 s6Step97Add0A s6Step97Add0B s6Step97Add0Work=some s6Step97Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step97Add0Arena s6Step97Add0During 813 803 922 s6Step97Add0A s6Step97Add0B s6Step97Add0Work
    (by decide +kernel) (by decide +kernel) s6Step97Add0_distinct
    (fun q hq => s6Step97Add0_owned (List.mem_toFinset.mpr hq)) s6Step97Add0_borrowed

private theorem s6Step97Add1_apart : Disjoint s6Step97Add1Arena.live s6Step97Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step97Add1Arena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step97Add1_card : s6Step97Add1Arena.live.card=874 := by
  decide +kernel

private theorem s6Step97Add1_borrowed : s6Step97Add1Arena.checkBorrow (hmrHybridCount s6Step97Add1Arena s6Step97Add1B.length) s6Step97Add1Work=some s6Step97Add1During := by
  have len : s6Step97Add1Work.length=hmrHybridCount s6Step97Add1Arena s6Step97Add1B.length := by
    rw [hmrHybridCount,s6Step97Add1_card]
    decide +kernel
  have nd : s6Step97Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step97Add1Arena s6Step97Add1During s6Step97Add1Work.toFinset s6Step97Add1_bounded s6Step97Add1_apart rfl

private theorem s6Step97Add1_distinct : (803::813::922::(s6Step97Add1A++s6Step97Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step97Add1_owned : (803::813::922::(s6Step97Add1A++s6Step97Add1B)).toFinset⊆s6Step97Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step97Add1Arena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step97Add1_checked : compileHmrHybridCinLog s6Step97Add1Arena 813 803 922 s6Step97Add1A s6Step97Add1B s6Step97Add1Work=some s6Step97Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step97Add1Arena s6Step97Add1During 813 803 922 s6Step97Add1A s6Step97Add1B s6Step97Add1Work
    (by decide +kernel) (by decide +kernel) s6Step97Add1_distinct
    (fun q hq => s6Step97Add1_owned (List.mem_toFinset.mpr hq)) s6Step97Add1_borrowed

private theorem s6Step97F4_apart : Disjoint (s6Step97Add0A++s6Step97Add0B).toFinset (s6Step97Add1A++s6Step97Add1B).toFinset := by
  have nd : ((s6Step97Add0A++s6Step97Add0B)++(s6Step97Add1A++s6Step97Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step97F4_carry : s6Step97F4FlagArena.checkBorrow 1 [922]=some s6Step97Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step97F4FlagArena,s6Step97HeadFvAfter,arenaWires]
  · change s6Step97Add0Arena.live=(s6Step97HeadFvAfter.live∪{803})∪{922}
    apply hmrArena_union_pair_of_filter_check s6Step97HeadFvAfter s6Step97Add0Arena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 803 922 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step97F4_distinct : (796::813::803::922::((s6Step97Add0A++s6Step97Add1A)++(s6Step97Add0B++s6Step97Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step97F4_flag : s6Step97HeadFvAfter.checkBorrow 1 [803]=some s6Step97F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step97HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step97F4_owned : (796::813::((s6Step97Add0A++s6Step97Add1A)++(s6Step97Add0B++s6Step97Add1B))).toFinset⊆s6Step97HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step97HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step97F4_checked : compileHmrHybridF4Log s6Step97HeadFvAfter 796 813 s6Step97Add0A s6Step97Add0B s6Step97Add1A s6Step97Add1B [803] [922] s6Step97Add0Work s6Step97Add1Work=some s6Step97F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step97HeadFvAfter s6Step97F4FlagArena s6Step97Add0Arena s6Step97Add0During s6Step97Add1During 796 813
    s6Step97Add0A s6Step97Add0B s6Step97Add1A s6Step97Add1B [803] [922] s6Step97Add0Work s6Step97Add1Work
    (fun q hq => s6Step97F4_owned (List.mem_toFinset.mpr hq)) s6Step97F4_flag s6Step97F4_carry
    s6Step97F4_distinct s6Step97F4_apart s6Step97Add0_checked s6Step97Add1_checked

private theorem s6Step97Front_branch : s6Step97FrontSigmaArena.checkBorrow 1 [813]=some s6Step97HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step97FrontSigmaArena,s6Step97EntryGvAfter,arenaWires]
  · change s6Step97HeadGBefore.live=(s6Step97EntryGvAfter.live∪{796})∪{813}
    apply hmrArena_union_pair_of_filter_check s6Step97EntryGvAfter s6Step97HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 796 813 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step97Front_entry : HmrFrontEntryValid s6Step97EntryFBefore s6Step97FrontBank 221 62 ⟨221,219,63,61⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step97FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step97EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step97EntryFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step97FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step97Front_sigma : s6Step97EntryGvAfter.checkBorrow 1 [796]=some s6Step97FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step97EntryGvAfter,arenaWires]
  · rfl

private def s6Step97HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step97HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step97HeadFBefore : Arena := s6Step97HeadGAfter

private def s6Step97HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476],795⟩

private def s6Step97HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859],776⟩

private def s6Step97HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 857],777⟩

private def s6Step97HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 907],775⟩

private theorem s6Step97HeadBank_incomingDistinct : ([s6Step97HeadGRow,s6Step97HeadFRow,s6Step97HeadGvRow,s6Step97HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step97HeadF_Incoming : rowsOwned s6Step97HeadFBefore [s6Step97HeadFRow,s6Step97HeadGvRow,s6Step97HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step97HeadGRow,s6Step97HeadFRow,s6Step97HeadGvRow,s6Step97HeadFvRow] 1 s6Step97HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step97HeadFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step97HeadBank_outgoingOwned : rowsOwned s6Step97HeadFvAfter [s6Step97HeadGOut,s6Step97HeadFOut,s6Step97HeadGvOut,s6Step97HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step97HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step97HeadF_Outgoing : rowsOwned s6Step97HeadFvAfter [s6Step97HeadFOut,s6Step97HeadGvOut,s6Step97HeadFvOut] :=
  hmrRows_owned_drop s6Step97HeadFvAfter [s6Step97HeadGOut,s6Step97HeadFOut,s6Step97HeadGvOut,s6Step97HeadFvOut] 1 s6Step97HeadBank_outgoingOwned

private theorem s6Step97HeadF_distinct : (s6Step97HeadFRow.sign::s6Step97HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step97HeadF_owned : (s6Step97HeadFRow.sign::s6Step97HeadFRow.payload).toFinset⊆s6Step97HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step97HeadFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step97HeadF_reserved : s6Step97HeadFBefore.reserve s6Step97HeadFFresh.toFinset=some s6Step97HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step97HeadFFresh,arenaWires]
  · norm_num [s6Step97HeadFBefore,s6Step97HeadGAfter,s6Step97HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step97HeadFBefore s6Step97HeadFAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step97HeadFFresh rfl rfl
    · norm_num [s6Step97HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step97HeadF_checked : planRowResizeLog s6Step97HeadFBefore s6Step97HeadFRow 222 s6Step97HeadFFresh=
    some (s6Step97HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 890],795⟩,growRow 795 s6Step97HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step97HeadFBefore s6Step97HeadFAfter s6Step97HeadFRow 222 s6Step97HeadFFresh
    s6Step97HeadF_distinct s6Step97HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step97HeadF_reserved
  have rowEq : WindowRow.mk (s6Step97HeadFRow.payload++s6Step97HeadFFresh) s6Step97HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 890],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step97HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step97HeadFvBefore : Arena := s6Step97HeadGvAfter

private theorem s6Step97HeadFv_Incoming : rowsOwned s6Step97HeadFvBefore [s6Step97HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step97HeadGRow,s6Step97HeadFRow,s6Step97HeadGvRow,s6Step97HeadFvRow] 3 s6Step97HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step97HeadFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step97HeadFv_Outgoing : rowsOwned s6Step97HeadFvAfter [s6Step97HeadFvOut] :=
  hmrRows_owned_drop s6Step97HeadFvAfter [s6Step97HeadGOut,s6Step97HeadFOut,s6Step97HeadGvOut,s6Step97HeadFvOut] 3 s6Step97HeadBank_outgoingOwned

private theorem s6Step97HeadFv_distinct : (s6Step97HeadFvRow.sign::s6Step97HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step97HeadFv_owned : (s6Step97HeadFvRow.sign::s6Step97HeadFvRow.payload).toFinset⊆s6Step97HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step97HeadFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step97HeadFv_reserved : s6Step97HeadFvBefore.reserve s6Step97HeadFvFresh.toFinset=some s6Step97HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step97HeadFvFresh,arenaWires]
  · norm_num [s6Step97HeadFvBefore,s6Step97HeadGvAfter,s6Step97HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step97HeadFvBefore s6Step97HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step97HeadFvFresh rfl rfl
    · norm_num [s6Step97HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step97HeadFv_checked : planRowResizeLog s6Step97HeadFvBefore s6Step97HeadFvRow 63 s6Step97HeadFvFresh=
    some (s6Step97HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881],776⟩,growRow 776 s6Step97HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step97HeadFvBefore s6Step97HeadFvAfter s6Step97HeadFvRow 63 s6Step97HeadFvFresh
    s6Step97HeadFv_distinct s6Step97HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step97HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step97HeadFvRow.payload++s6Step97HeadFvFresh) s6Step97HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step97HeadG_Incoming : rowsOwned s6Step97HeadGBefore [s6Step97HeadGRow,s6Step97HeadFRow,s6Step97HeadGvRow,s6Step97HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step97HeadGRow,s6Step97HeadFRow,s6Step97HeadGvRow,s6Step97HeadFvRow] 0 s6Step97HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step97HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step97HeadG_Outgoing : rowsOwned s6Step97HeadFvAfter [s6Step97HeadGOut,s6Step97HeadFOut,s6Step97HeadGvOut,s6Step97HeadFvOut] :=
  hmrRows_owned_drop s6Step97HeadFvAfter [s6Step97HeadGOut,s6Step97HeadFOut,s6Step97HeadGvOut,s6Step97HeadFvOut] 0 s6Step97HeadBank_outgoingOwned

private theorem s6Step97HeadG_distinct : (s6Step97HeadGRow.sign::s6Step97HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step97HeadG_owned : (s6Step97HeadGRow.sign::s6Step97HeadGRow.payload).toFinset⊆s6Step97HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step97HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step97HeadG_reserved : s6Step97HeadGBefore.reserve s6Step97HeadGFresh.toFinset=some s6Step97HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step97HeadGFresh,arenaWires]
  · norm_num [s6Step97HeadGBefore,s6Step97HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step97HeadGBefore s6Step97HeadGAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step97HeadGFresh rfl rfl
    · norm_num [s6Step97HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step97HeadG_checked : planRowResizeLog s6Step97HeadGBefore s6Step97HeadGRow 222 s6Step97HeadGFresh=
    some (s6Step97HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 857, 874],777⟩,growRow 777 s6Step97HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step97HeadGBefore s6Step97HeadGAfter s6Step97HeadGRow 222 s6Step97HeadGFresh
    s6Step97HeadG_distinct s6Step97HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step97HeadG_reserved
  have rowEq : WindowRow.mk (s6Step97HeadGRow.payload++s6Step97HeadGFresh) s6Step97HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 857, 874],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step97HeadGvBefore : Arena := s6Step97HeadFAfter

private theorem s6Step97HeadGv_Incoming : rowsOwned s6Step97HeadGvBefore [s6Step97HeadGvRow,s6Step97HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step97HeadGRow,s6Step97HeadFRow,s6Step97HeadGvRow,s6Step97HeadFvRow] 2 s6Step97HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step97HeadGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step97HeadGv_Outgoing : rowsOwned s6Step97HeadFvAfter [s6Step97HeadGvOut,s6Step97HeadFvOut] :=
  hmrRows_owned_drop s6Step97HeadFvAfter [s6Step97HeadGOut,s6Step97HeadFOut,s6Step97HeadGvOut,s6Step97HeadFvOut] 2 s6Step97HeadBank_outgoingOwned

private theorem s6Step97HeadGv_distinct : (s6Step97HeadGvRow.sign::s6Step97HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step97HeadGv_owned : (s6Step97HeadGvRow.sign::s6Step97HeadGvRow.payload).toFinset⊆s6Step97HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step97HeadGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step97HeadGv_reserved : s6Step97HeadGvBefore.reserve s6Step97HeadGvFresh.toFinset=some s6Step97HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step97HeadGvFresh,arenaWires]
  · norm_num [s6Step97HeadGvBefore,s6Step97HeadFAfter,s6Step97HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step97HeadGvBefore s6Step97HeadGvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step97HeadGvFresh rfl rfl
    · norm_num [s6Step97HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step97HeadGv_checked : planRowResizeLog s6Step97HeadGvBefore s6Step97HeadGvRow 63 s6Step97HeadGvFresh=
    some (s6Step97HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 907, 876],775⟩,growRow 775 s6Step97HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step97HeadGvBefore s6Step97HeadGvAfter s6Step97HeadGvRow 63 s6Step97HeadGvFresh
    s6Step97HeadGv_distinct s6Step97HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step97HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step97HeadGvRow.payload++s6Step97HeadGvFresh) s6Step97HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 907, 876],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step97HeadBank_rows : planWindowRowsLog s6Step97HeadGBefore [(s6Step97HeadGRow,222),(s6Step97HeadFRow,222),(s6Step97HeadGvRow,63),(s6Step97HeadFvRow,63)] [s6Step97HeadGFresh,s6Step97HeadFFresh,s6Step97HeadGvFresh,s6Step97HeadFvFresh]=
    some (s6Step97HeadFvAfter,[s6Step97HeadGOut,s6Step97HeadFOut,s6Step97HeadGvOut,s6Step97HeadFvOut],(growRow 777 s6Step97HeadGFresh ++ (growRow 795 s6Step97HeadFFresh ++ (growRow 775 s6Step97HeadGvFresh ++ (growRow 776 s6Step97HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step97HeadFvAfter [] []=some (s6Step97HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step97HeadFvBefore s6Step97HeadFvAfter s6Step97HeadFvAfter
    s6Step97HeadFvRow s6Step97HeadFvOut 63 s6Step97HeadFvFresh [] [] []
    (growRow 776 s6Step97HeadFvFresh) ([]) s6Step97HeadFv_Incoming s6Step97HeadFv_checked h4 s6Step97HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step97HeadGvBefore s6Step97HeadGvAfter s6Step97HeadFvAfter
    s6Step97HeadGvRow s6Step97HeadGvOut 63 s6Step97HeadGvFresh [(s6Step97HeadFvRow,63)] [s6Step97HeadFvFresh] [s6Step97HeadFvOut]
    (growRow 775 s6Step97HeadGvFresh) ((growRow 776 s6Step97HeadFvFresh ++ [])) s6Step97HeadGv_Incoming s6Step97HeadGv_checked h3 s6Step97HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step97HeadFBefore s6Step97HeadFAfter s6Step97HeadFvAfter
    s6Step97HeadFRow s6Step97HeadFOut 222 s6Step97HeadFFresh [(s6Step97HeadGvRow,63),(s6Step97HeadFvRow,63)] [s6Step97HeadGvFresh,s6Step97HeadFvFresh] [s6Step97HeadGvOut,s6Step97HeadFvOut]
    (growRow 795 s6Step97HeadFFresh) ((growRow 775 s6Step97HeadGvFresh ++ (growRow 776 s6Step97HeadFvFresh ++ []))) s6Step97HeadF_Incoming s6Step97HeadF_checked h2 s6Step97HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step97HeadGBefore s6Step97HeadGAfter s6Step97HeadFvAfter
    s6Step97HeadGRow s6Step97HeadGOut 222 s6Step97HeadGFresh [(s6Step97HeadFRow,222),(s6Step97HeadGvRow,63),(s6Step97HeadFvRow,63)] [s6Step97HeadFFresh,s6Step97HeadGvFresh,s6Step97HeadFvFresh] [s6Step97HeadFOut,s6Step97HeadGvOut,s6Step97HeadFvOut]
    (growRow 777 s6Step97HeadGFresh) ((growRow 795 s6Step97HeadFFresh ++ (growRow 775 s6Step97HeadGvFresh ++ (growRow 776 s6Step97HeadFvFresh ++ [])))) s6Step97HeadG_Incoming s6Step97HeadG_checked h1 s6Step97HeadG_Outgoing
  exact h0

private theorem s6Step97HeadBank_checked : compileHmrBankResizeLog .headroom s6Step97HeadGBefore ⟨s6Step97HeadFRow,s6Step97HeadGRow,s6Step97HeadFvRow,s6Step97HeadGvRow⟩ ⟨222,222,63,63⟩ [s6Step97HeadGFresh,s6Step97HeadFFresh,s6Step97HeadGvFresh,s6Step97HeadFvFresh]=
    some (s6Step97HeadFvAfter,⟨s6Step97HeadFOut,s6Step97HeadGOut,s6Step97HeadFvOut,s6Step97HeadGvOut⟩,(growRow 777 s6Step97HeadGFresh ++ (growRow 795 s6Step97HeadFFresh ++ (growRow 775 s6Step97HeadGvFresh ++ (growRow 776 s6Step97HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step97HeadBank_rows]
  rfl

private theorem s6Step97Front_checked : compileHmrSourceFrontLog s6Step97EntryFBefore s6Step97FrontBank 221 62 ⟨221,219,63,61⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step97FrontLog=some s6Step97FrontPlan := by
  have pairEq : s6Step97FrontPair=⟨s6Step97HeadFRow,s6Step97HeadGRow,s6Step97HeadFvRow,s6Step97HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step97FrontHead=⟨s6Step97ExitFRow,s6Step97ExitGRow,s6Step97ExitFvRow,s6Step97ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step97Add0A=s6Step97FrontHead.f.wires := by decide +kernel
  have gEq : s6Step97Add0B=s6Step97FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step97Add1A=s6Step97FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step97Add1B=s6Step97FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step97EntryFBefore s6Step97FrontBank 221 62 ⟨221,219,63,61⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step97FrontLog s6Step97FrontPlan
  · exact s6Step97Front_entry
  · exact s6Step97EntryBank_checked
  · exact s6Step97Front_sigma
  · rfl
  · exact s6Step97Front_branch
  · rfl
  · simpa only [s6Step97FrontPlan,pairEq] using s6Step97HeadBank_checked
  · simpa only [s6Step97FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step97F4_checked
  · exact s6Step97Counter_checked
  · rfl
  · simpa only [s6Step97FrontPlan,headEq] using s6Step97ExitBank_checked

private theorem s6Step97Complete_explicit_checked : compileHmrEarlyStepLog s6Step97EntryFBefore s6Step97FrontBank 221 62 ⟨221,219,63,61⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 34 s6Step97CompleteLog=some s6Step97CompletePlan := by
  let Q := s6Step97EarlyControlPlan
  have hq := s6Step97EarlyControl_plan_checked
  have fv1 : s6Step97CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step97CompleteOut.fv.payload[2]?.getD s6Step97CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step97CompleteOut.fv.payload[3]?.getD s6Step97CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step97CompleteOut.fv.payload[4]?.getD s6Step97CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step97EntryFBefore s6Step97EarlyControlArena s6Step97FrontBank 221 62 ⟨221,219,63,61⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 34 s6Step97CompleteLog s6Step97FrontPlan Q
    s6Step97Front_checked s6Step97Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step97Complete_owned s6Step97Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step97EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 796 s6Step97CompleteOut.fv.second (s6Step97CompleteOut.fv.payload[2]?.getD s6Step97CompleteOut.fv.sign) (s6Step97CompleteOut.fv.payload[3]?.getD s6Step97CompleteOut.fv.sign) (s6Step97CompleteOut.fv.payload[4]?.getD s6Step97CompleteOut.fv.sign) 813 34 s6Step97EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep97Arena : Arena := s6Step97EntryFBefore
def s6PrivateStep97Bank : WindowBank := s6Step97FrontBank
def s6PrivateStep97Spec : HmrSourceWalkStepLog := ⟨221,62,⟨221,219,63,61⟩,34,.early s6Step97CompleteLog⟩
def s6PrivateStep97Plan : HmrSourceStepPlan := .early s6Step97CompletePlan
theorem s6PrivateStep97_source : s6PrivateStep97Spec=s6ObservedLogs96[1] := rfl
theorem s6PrivateStep97_checked : compileHmrSourceStepLog s6PrivateStep97Arena s6PrivateStep97Bank
    s6PrivateStep97Spec.fgWidth s6PrivateStep97Spec.vWidth s6PrivateStep97Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847]
    6 498 97 s6PrivateStep97Spec.need none s6PrivateStep97Spec.log=some s6PrivateStep97Plan := by
  change compileHmrSourceStepLog s6Step97EntryFBefore s6Step97FrontBank 221 62 ⟨221,219,63,61⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 6 498 97 34 none (.early s6Step97CompleteLog)=some (.early s6Step97CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 97<498)]
  rw [s6Step97Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
