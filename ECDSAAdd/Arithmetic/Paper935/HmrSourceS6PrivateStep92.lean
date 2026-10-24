import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep90
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

private def s6Step92CompleteMoves : List (Wire × Wire) := [(890,221)]

private def s6Step92EarlyControlLog : HmrEarlyControlLog := ⟨[890, 813, 858, 887, 908],[859],[877],[876, 881, 803, 922, 879, 784],[]⟩

private def s6Step92FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[908], [887], [813], [858]],[[], [], [], []]⟩,[857],[874],[859],[877],[876, 881, 803, 922, 879, 784, 891, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[876, 881, 803, 922, 879, 784, 891, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930],[859, 877, 876, 881]⟩

private def s6Step92CompleteLog : HmrEarlyStepLog := ⟨s6Step92FrontLog,s6Step92CompleteMoves,s6Step92EarlyControlLog⟩

private def s6Step92ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477],795⟩

private def s6Step92ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780],776⟩

private def s6Step92ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220],777⟩

private def s6Step92ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794],775⟩

private def s6Step92FrontOut : WindowBank := ⟨s6Step92ExitFOut,s6Step92ExitGOut,s6Step92ExitFvOut,s6Step92ExitGvOut⟩

private def s6Step92CompleteOut : WindowBank := s6Step92FrontOut.repacked s6Step92CompleteMoves

private def s6Step92EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step92EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step92EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step92EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step92EarlyControlPositiveArena,[859],s6Step92EarlyControlEqualityArena,[877],⟨⟨857,false⟩,[⟨⟨859,false⟩,877⟩]⟩⟩

private def s6Step92EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step92EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step92EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step92EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step92EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step92EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step92EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,890⟩,⟨⟨772,false⟩,813⟩,⟨⟨771,false⟩,858⟩,⟨⟨770,false⟩,887⟩,⟨⟨769,false⟩,908⟩]⟩

private def s6Step92EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step92EarlyControlZeroArena,s6Step92EarlyControlZeroPlan,s6Step92EarlyControlClassPlan,s6Step92EarlyControlFlagArena,s6Step92EarlyControlFittedArena,s6Step92EarlyControlHistoryArena,s6Step92EarlyControlSigmaArena,s6Step92EarlyControlOutputArena,s6Step92EarlyControlLog⟩

private def s6Step92CounterWork : List Wire := [859, 877, 876, 881]

private theorem s6Step92Counter_bounded : s6Step92CounterWork.toFinset⊆arenaWires := by norm_num [s6Step92CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step92HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step92CounterDuring : Arena := ⟨s6Step92HeadFvAfter.live∪s6Step92CounterWork.toFinset,Finset.union_subset s6Step92HeadFvAfter.bounded s6Step92Counter_bounded⟩

private def s6Step92EntryFFresh : List Wire := []

private def s6Step92EntryFvFresh : List Wire := []

private def s6Step92EntryGFresh : List Wire := []

private def s6Step92EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step92EntryGvAfter : Arena := s6Step92EntryFBefore

private def s6Step92EntryGvFresh : List Wire := []

private def s6Step92ExitFExtra : List Wire := [887]

private def s6Step92ExitFvExtra : List Wire := [858]

private def s6Step92ExitGExtra : List Wire := [221, 908]

private def s6Step92ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,221),(222,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step92ExitGvExtra : List Wire := [813]

private def s6Step92Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step92Add0Work : List Wire := [876, 881, 803, 922, 879, 784, 891, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step92Add0_bounded : s6Step92Add0Work.toFinset⊆arenaWires := by
  have h : s6Step92Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step92Add0During : Arena := ⟨s6Step92Add0Arena.live∪s6Step92Add0Work.toFinset,Finset.union_subset s6Step92Add0Arena.bounded s6Step92Add0_bounded⟩

private def s6Step92Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step92Add1Work : List Wire := [876, 881, 803, 922, 879, 784, 891, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930]

private theorem s6Step92Add1_bounded : s6Step92Add1Work.toFinset⊆arenaWires := by
  have h : s6Step92Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step92Add1During : Arena := ⟨s6Step92Add1Arena.live∪s6Step92Add1Work.toFinset,Finset.union_subset s6Step92Add1Arena.bounded s6Step92Add1_bounded⟩

private def s6Step92F4FlagArena : Arena := ⟨s6Step92HeadFvAfter.live∪{859},Finset.union_subset s6Step92HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step92F4Plan : HmrHybridF4Plan := ⟨s6Step92F4FlagArena,[859],s6Step92Add0Arena,[877],s6Step92Add0During,s6Step92Add0Work,s6Step92Add1During,s6Step92Add1Work⟩

private def s6Step92HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 887],795⟩

private def s6Step92HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 858],776⟩

private def s6Step92HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 908],777⟩

private def s6Step92HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 813],775⟩

private def s6Step92FrontHead : WindowBank := ⟨s6Step92HeadFOut,s6Step92HeadGOut,s6Step92HeadFvOut,s6Step92HeadGvOut⟩

private def s6Step92EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477],795⟩

private def s6Step92EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780],776⟩

private def s6Step92EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221],777⟩

private def s6Step92EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794],775⟩

private def s6Step92FrontPair : WindowBank := ⟨s6Step92EntryFOut,s6Step92EntryGOut,s6Step92EntryFvOut,s6Step92EntryGvOut⟩

private def s6Step92FrontSigmaArena : Arena := ⟨s6Step92EntryGvAfter.live∪{857},Finset.union_subset s6Step92EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step92HeadFFresh : List Wire := [887]

private def s6Step92HeadFvFresh : List Wire := [858]

private def s6Step92HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step92HeadGFresh : List Wire := [908]

private def s6Step92HeadGvFresh : List Wire := [813]

private def s6Step92FrontPlan : HmrSourceFront := ⟨s6Step92EntryGvAfter,s6Step92FrontPair,(growRow 795 s6Step92EntryFFresh ++ (growRow 777 s6Step92EntryGFresh ++ (growRow 776 s6Step92EntryFvFresh ++ (growRow 775 s6Step92EntryGvFresh ++ [])))),s6Step92FrontSigmaArena,[857],s6Step92HeadGBefore,[874],
  s6Step92HeadFvAfter,s6Step92FrontHead,(growRow 777 s6Step92HeadGFresh ++ (growRow 795 s6Step92HeadFFresh ++ (growRow 775 s6Step92HeadGvFresh ++ (growRow 776 s6Step92HeadFvFresh ++ [])))),s6Step92F4Plan,s6Step92CounterDuring,s6Step92CounterWork,s6Step92ExitGvAfter,s6Step92FrontOut,(shrinkRow 777 s6Step92ExitGExtra ++ (shrinkRow 795 s6Step92ExitFExtra ++ (shrinkRow 776 s6Step92ExitFvExtra ++ (shrinkRow 775 s6Step92ExitGvExtra ++ []))))⟩

private def s6Step92CompletePlan : HmrEarlyStepPlan := ⟨s6Step92FrontPlan,s6Step92EarlyControlArena,s6Step92EarlyControlPlan,s6Step92CompleteMoves⟩

private theorem s6Step92Complete_apart : List.Disjoint (s6Step92CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [857, 874, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] := by
  have nd : ((s6Step92CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[857, 874, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step92Complete_owned : (s6Step92CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step92EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step92EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step92CompleteRelocationMove0Borrowed : Arena := ⟨s6Step92ExitGvAfter.live∪{221},Finset.union_subset s6Step92ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step92CompleteRelocation_move0_owned : 890∈s6Step92ExitGvAfter.live := by norm_num [s6Step92ExitGvAfter,arenaWires]

private theorem s6Step92CompleteRelocation_move0_reserve : s6Step92ExitGvAfter.reserve {221}=some s6Step92CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step92ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step92CompleteRelocation_move0_retire : s6Step92CompleteRelocationMove0Borrowed.retireSet {890}=s6Step92EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step92CompleteRelocationMove0Borrowed s6Step92EarlyControlArena {890}
  change s6Step92EarlyControlArena.live=(s6Step92ExitGvAfter.live∪{221})\{890}
  apply hmrArena_update_of_filter_check s6Step92ExitGvAfter s6Step92EarlyControlArena (fun q => ([(0,221),(222,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [221] [890] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step92CompleteRelocation_checked : s6Step92ExitGvAfter.checkRepack [(890,221)]=some s6Step92EarlyControlArena := by
  have tail1 : s6Step92EarlyControlArena.checkRepack []=some s6Step92EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step92ExitGvAfter s6Step92CompleteRelocationMove0Borrowed s6Step92EarlyControlArena s6Step92EarlyControlArena 890 221 []
    s6Step92CompleteRelocation_move0_owned s6Step92CompleteRelocation_move0_reserve s6Step92CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step92Complete_repack : s6Step92ExitGvAfter.checkRepack s6Step92CompleteMoves=some s6Step92EarlyControlArena := by
  simpa only [s6Step92CompleteMoves] using s6Step92CompleteRelocation_checked

private theorem s6Step92EarlyControl_branchOwned : ([874] : List Wire).toFinset⊆s6Step92EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step92EarlyControlSigmaArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step92EarlyControl_branch : compileHmrBranchRetirement s6Step92EarlyControlSigmaArena 874=some s6Step92EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step92EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step92EarlyControlSigmaArena s6Step92EarlyControlOutputArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [874] rfl rfl
    decide +kernel

private theorem s6Step92EarlyControl_classEqualityBorrow : s6Step92EarlyControlPositiveArena.checkBorrow (([857, 859] : List Wire).length-1) s6Step92EarlyControlLog.classWork=some s6Step92EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step92EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step92EarlyControlPositiveArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step92EarlyControlPositiveArena s6Step92EarlyControlEqualityArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step92EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step92EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step92EarlyControl_classEqualityOwned : ([857, 859] : List Wire).toFinset⊆s6Step92EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step92EarlyControlPositiveArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step92EarlyControl_classEquality : compileHmrEqualityLog s6Step92EarlyControlPositiveArena [857, 859] 0 s6Step92EarlyControlLog.classWork=some (s6Step92EarlyControlEqualityArena,s6Step92EarlyControlLog.classWork,s6Step92EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step92EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step92EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step92EarlyControl_classOwned : ([769, 908, 857] : List Wire).toFinset⊆s6Step92EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step92EarlyControlZeroArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step92EarlyControl_positiveBorrow : s6Step92EarlyControlZeroArena.checkBorrow (1) s6Step92EarlyControlLog.positiveWork=some s6Step92EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step92EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step92EarlyControlZeroArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step92EarlyControlZeroArena s6Step92EarlyControlPositiveArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step92EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step92EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step92EarlyControl_class : compileHmrSourceClassLog s6Step92EarlyControlZeroArena false 769 s6Step92EarlyControlZeroPlan.top 0 857 s6Step92EarlyControlLog.positiveWork s6Step92EarlyControlLog.classWork=some s6Step92EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step92EarlyControlClassPlan s6Step92EarlyControlZeroArena false 769 s6Step92EarlyControlZeroPlan.top 0 857
  constructor
  · decide +kernel
  · exact s6Step92EarlyControl_classOwned
  · exact s6Step92EarlyControl_positiveBorrow
  · exact s6Step92EarlyControl_classEquality

private theorem s6Step92EarlyControl_entryRecordOwned : ([874, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).toFinset⊆s6Step92EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step92EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step92EarlyControl_entrySigmaOwned : ([857, 254] : List Wire).toFinset⊆s6Step92EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step92EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step92EarlyControl_fitBorrow : s6Step92EarlyControlFlagArena.checkBorrow ((34-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).length)) s6Step92EarlyControlLog.recordFresh=some s6Step92EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step92EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step92EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step92EarlyControlFittedArena,s6Step92EarlyControlFlagArena,s6Step92EarlyControlLog,arenaWires]

private theorem s6Step92EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).toFinset⊆s6Step92EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step92EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step92EarlyControl_fit : compileHmrRecordGrowLog s6Step92EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 34 s6Step92EarlyControlLog.recordFresh=some s6Step92EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step92EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step92EarlyControl_fitBorrow

private theorem s6Step92EarlyControl_flagsBorrow : s6Step92EarlyControlEqualityArena.checkBorrow (6) s6Step92EarlyControlLog.flagWork=some s6Step92EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step92EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step92EarlyControlEqualityArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step92EarlyControlEqualityArena s6Step92EarlyControlFlagArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step92EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step92EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step92EarlyControl_flagsOwned : ([877, 253, 252, 251] : List Wire).toFinset⊆s6Step92EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step92EarlyControlEqualityArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step92EarlyControl_flags : compileHmrFlagsLog s6Step92EarlyControlClassPlan.equalityArena s6Step92EarlyControlClassPlan.equality.top 253 252 251 s6Step92EarlyControlLog.flagWork=some s6Step92EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step92EarlyControl_flagsOwned⟩
  · exact s6Step92EarlyControl_flagsBorrow

private theorem s6Step92EarlyControl_historyBorrow : s6Step92EarlyControlArena.checkBorrow ((34-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).length)) s6Step92EarlyControlLog.recordFresh=some s6Step92EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step92EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step92EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step92EarlyControlArena s6Step92EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step92EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step92EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step92EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).toFinset⊆s6Step92EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step92EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step92EarlyControl_history : compileHmrRecordGrowLog s6Step92EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 34 s6Step92EarlyControlLog.recordFresh=some s6Step92EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step92EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step92EarlyControl_historyBorrow

private theorem s6Step92EarlyControl_sigmaOwned : ([254, 857] : List Wire).toFinset⊆s6Step92EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step92EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step92EarlyControl_sigmaReleaseOwned : ([857] : List Wire).toFinset⊆s6Step92EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step92EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step92EarlyControl_sigmaRelease : s6Step92EarlyControlHistoryArena.release {857} (fun _ => false)=some s6Step92EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step92EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step92EarlyControlHistoryArena s6Step92EarlyControlSigmaArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [857] rfl rfl
    decide +kernel

private theorem s6Step92EarlyControl_sigma : compileHmrSigmaDropLog s6Step92EarlyControlHistoryArena false 0 0 254 857 []=some s6Step92EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step92EarlyControl_sigmaOwned⟩
  · exact s6Step92EarlyControl_sigmaRelease

private theorem s6Step92EarlyControl_zeroBorrow : s6Step92EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step92EarlyControlLog.zeroWork=some s6Step92EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step92EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step92EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step92EarlyControlArena s6Step92EarlyControlZeroArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step92EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step92EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step92EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step92EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step92EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step92EarlyControl_zero : compileHmrEqualityLog s6Step92EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step92EarlyControlLog.zeroWork=some (s6Step92EarlyControlZeroArena,s6Step92EarlyControlLog.zeroWork,s6Step92EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step92EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step92EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step92EarlyControl_logged : s6Step92EarlyControlPlan.Logged s6Step92EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 857 254 253 252 251 874 34 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step92EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step92EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step92EarlyControl_zero
  · exact s6Step92EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step92EarlyControl_flags
  · exact s6Step92EarlyControl_fit
  · exact s6Step92EarlyControl_history
  · exact s6Step92EarlyControl_sigma
  · exact s6Step92EarlyControl_branch

private theorem s6Step92EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step92EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 857 254 253 252 251 874 34 s6Step92EarlyControlLog=some s6Step92EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step92EarlyControlPlan s6Step92EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 857 254 253 252 251 874 34 s6Step92EarlyControl_logged

private def s6Step92EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477],795⟩

private def s6Step92EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780],776⟩

private def s6Step92EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221],777⟩

private def s6Step92EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794],775⟩

private def s6Step92FrontBank : WindowBank := ⟨s6Step92EntryFRow,s6Step92EntryGRow,s6Step92EntryFvRow,s6Step92EntryGvRow⟩

private def s6Step92Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 887, 795]

private def s6Step92Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 908, 777]

private def s6Step92Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 858, 776]

private def s6Step92Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 813, 775]

private theorem s6Step92Counter_apart : Disjoint s6Step92HeadFvAfter.live s6Step92CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step92HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step92Counter_borrowed : s6Step92HeadFvAfter.checkBorrow 4 s6Step92CounterWork=some s6Step92CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step92HeadFvAfter s6Step92CounterDuring s6Step92CounterWork.toFinset s6Step92Counter_bounded s6Step92Counter_apart rfl

private theorem s6Step92Counter_owned : (857::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step92HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step92HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step92Counter_checked : compileHmrCounterStepLog s6Step92HeadFvAfter true 857 [774, 773, 772, 771, 770, 769] s6Step92CounterWork=some s6Step92CounterDuring := by
  have owned : ∀q∈857::[774, 773, 772, 771, 770, 769],q∈s6Step92HeadFvAfter.live := fun q hq => s6Step92Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step92Counter_borrowed

private def s6Step92EntryFAfter : Arena := s6Step92EntryFBefore

private theorem s6Step92EntryBank_incomingDistinct : ([s6Step92EntryFRow,s6Step92EntryGRow,s6Step92EntryFvRow,s6Step92EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step92EntryF_Incoming : rowsOwned s6Step92EntryFBefore [s6Step92EntryFRow,s6Step92EntryGRow,s6Step92EntryFvRow,s6Step92EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step92EntryFRow,s6Step92EntryGRow,s6Step92EntryFvRow,s6Step92EntryGvRow] 0 s6Step92EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step92EntryFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step92EntryBank_outgoingOwned : rowsOwned s6Step92EntryGvAfter [s6Step92EntryFOut,s6Step92EntryGOut,s6Step92EntryFvOut,s6Step92EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step92EntryGvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step92EntryF_Outgoing : rowsOwned s6Step92EntryGvAfter [s6Step92EntryFOut,s6Step92EntryGOut,s6Step92EntryFvOut,s6Step92EntryGvOut] :=
  hmrRows_owned_drop s6Step92EntryGvAfter [s6Step92EntryFOut,s6Step92EntryGOut,s6Step92EntryFvOut,s6Step92EntryGvOut] 0 s6Step92EntryBank_outgoingOwned

private theorem s6Step92EntryF_distinct : (s6Step92EntryFRow.sign::s6Step92EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step92EntryF_owned : (s6Step92EntryFRow.sign::s6Step92EntryFRow.payload).toFinset⊆s6Step92EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step92EntryFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step92EntryF_reserved : s6Step92EntryFBefore.reserve s6Step92EntryFFresh.toFinset=some s6Step92EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step92EntryFFresh,arenaWires]
  · norm_num [s6Step92EntryFBefore,s6Step92EntryFFresh,arenaWires]
  · simp only [s6Step92EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step92EntryF_checked : planRowResizeLog s6Step92EntryFBefore s6Step92EntryFRow 222 s6Step92EntryFFresh=
    some (s6Step92EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477],795⟩,growRow 795 s6Step92EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step92EntryFBefore s6Step92EntryFAfter s6Step92EntryFRow 222 s6Step92EntryFFresh
    s6Step92EntryF_distinct s6Step92EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step92EntryF_reserved
  have rowEq : WindowRow.mk (s6Step92EntryFRow.payload++s6Step92EntryFFresh) s6Step92EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step92EntryFvAfter : Arena := s6Step92EntryFBefore

private def s6Step92EntryFvBefore : Arena := s6Step92EntryFBefore

private theorem s6Step92EntryFv_Incoming : rowsOwned s6Step92EntryFvBefore [s6Step92EntryFvRow,s6Step92EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step92EntryFRow,s6Step92EntryGRow,s6Step92EntryFvRow,s6Step92EntryGvRow] 2 s6Step92EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step92EntryFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step92EntryFv_Outgoing : rowsOwned s6Step92EntryGvAfter [s6Step92EntryFvOut,s6Step92EntryGvOut] :=
  hmrRows_owned_drop s6Step92EntryGvAfter [s6Step92EntryFOut,s6Step92EntryGOut,s6Step92EntryFvOut,s6Step92EntryGvOut] 2 s6Step92EntryBank_outgoingOwned

private theorem s6Step92EntryFv_distinct : (s6Step92EntryFvRow.sign::s6Step92EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step92EntryFv_owned : (s6Step92EntryFvRow.sign::s6Step92EntryFvRow.payload).toFinset⊆s6Step92EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step92EntryFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step92EntryFv_reserved : s6Step92EntryFvBefore.reserve s6Step92EntryFvFresh.toFinset=some s6Step92EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step92EntryFvFresh,arenaWires]
  · norm_num [s6Step92EntryFvBefore,s6Step92EntryFBefore,s6Step92EntryFvFresh,arenaWires]
  · simp only [s6Step92EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step92EntryFv_checked : planRowResizeLog s6Step92EntryFvBefore s6Step92EntryFvRow 59 s6Step92EntryFvFresh=
    some (s6Step92EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780],776⟩,growRow 776 s6Step92EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step92EntryFvBefore s6Step92EntryFvAfter s6Step92EntryFvRow 59 s6Step92EntryFvFresh
    s6Step92EntryFv_distinct s6Step92EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step92EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step92EntryFvRow.payload++s6Step92EntryFvFresh) s6Step92EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step92EntryGAfter : Arena := s6Step92EntryFBefore

private def s6Step92EntryGBefore : Arena := s6Step92EntryFBefore

private theorem s6Step92EntryG_Incoming : rowsOwned s6Step92EntryGBefore [s6Step92EntryGRow,s6Step92EntryFvRow,s6Step92EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step92EntryFRow,s6Step92EntryGRow,s6Step92EntryFvRow,s6Step92EntryGvRow] 1 s6Step92EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step92EntryGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step92EntryG_Outgoing : rowsOwned s6Step92EntryGvAfter [s6Step92EntryGOut,s6Step92EntryFvOut,s6Step92EntryGvOut] :=
  hmrRows_owned_drop s6Step92EntryGvAfter [s6Step92EntryFOut,s6Step92EntryGOut,s6Step92EntryFvOut,s6Step92EntryGvOut] 1 s6Step92EntryBank_outgoingOwned

private theorem s6Step92EntryG_distinct : (s6Step92EntryGRow.sign::s6Step92EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step92EntryG_owned : (s6Step92EntryGRow.sign::s6Step92EntryGRow.payload).toFinset⊆s6Step92EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step92EntryGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step92EntryG_reserved : s6Step92EntryGBefore.reserve s6Step92EntryGFresh.toFinset=some s6Step92EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step92EntryGFresh,arenaWires]
  · norm_num [s6Step92EntryGBefore,s6Step92EntryFBefore,s6Step92EntryGFresh,arenaWires]
  · simp only [s6Step92EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step92EntryG_checked : planRowResizeLog s6Step92EntryGBefore s6Step92EntryGRow 222 s6Step92EntryGFresh=
    some (s6Step92EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221],777⟩,growRow 777 s6Step92EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step92EntryGBefore s6Step92EntryGAfter s6Step92EntryGRow 222 s6Step92EntryGFresh
    s6Step92EntryG_distinct s6Step92EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step92EntryG_reserved
  have rowEq : WindowRow.mk (s6Step92EntryGRow.payload++s6Step92EntryGFresh) s6Step92EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step92EntryGvBefore : Arena := s6Step92EntryFBefore

private theorem s6Step92EntryGv_Incoming : rowsOwned s6Step92EntryGvBefore [s6Step92EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step92EntryFRow,s6Step92EntryGRow,s6Step92EntryFvRow,s6Step92EntryGvRow] 3 s6Step92EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step92EntryGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step92EntryGv_Outgoing : rowsOwned s6Step92EntryGvAfter [s6Step92EntryGvOut] :=
  hmrRows_owned_drop s6Step92EntryGvAfter [s6Step92EntryFOut,s6Step92EntryGOut,s6Step92EntryFvOut,s6Step92EntryGvOut] 3 s6Step92EntryBank_outgoingOwned

private theorem s6Step92EntryGv_distinct : (s6Step92EntryGvRow.sign::s6Step92EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step92EntryGv_owned : (s6Step92EntryGvRow.sign::s6Step92EntryGvRow.payload).toFinset⊆s6Step92EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step92EntryGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step92EntryGv_reserved : s6Step92EntryGvBefore.reserve s6Step92EntryGvFresh.toFinset=some s6Step92EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step92EntryGvFresh,arenaWires]
  · norm_num [s6Step92EntryGvBefore,s6Step92EntryFBefore,s6Step92EntryGvFresh,arenaWires]
  · simp only [s6Step92EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step92EntryGv_checked : planRowResizeLog s6Step92EntryGvBefore s6Step92EntryGvRow 59 s6Step92EntryGvFresh=
    some (s6Step92EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794],775⟩,growRow 775 s6Step92EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step92EntryGvBefore s6Step92EntryGvAfter s6Step92EntryGvRow 59 s6Step92EntryGvFresh
    s6Step92EntryGv_distinct s6Step92EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step92EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step92EntryGvRow.payload++s6Step92EntryGvFresh) s6Step92EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step92EntryBank_rows : planWindowRowsLog s6Step92EntryFBefore [(s6Step92EntryFRow,222),(s6Step92EntryGRow,222),(s6Step92EntryFvRow,59),(s6Step92EntryGvRow,59)] [s6Step92EntryFFresh,s6Step92EntryGFresh,s6Step92EntryFvFresh,s6Step92EntryGvFresh]=
    some (s6Step92EntryGvAfter,[s6Step92EntryFOut,s6Step92EntryGOut,s6Step92EntryFvOut,s6Step92EntryGvOut],(growRow 795 s6Step92EntryFFresh ++ (growRow 777 s6Step92EntryGFresh ++ (growRow 776 s6Step92EntryFvFresh ++ (growRow 775 s6Step92EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step92EntryGvAfter [] []=some (s6Step92EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step92EntryGvBefore s6Step92EntryGvAfter s6Step92EntryGvAfter
    s6Step92EntryGvRow s6Step92EntryGvOut 59 s6Step92EntryGvFresh [] [] []
    (growRow 775 s6Step92EntryGvFresh) ([]) s6Step92EntryGv_Incoming s6Step92EntryGv_checked h4 s6Step92EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step92EntryFvBefore s6Step92EntryFvAfter s6Step92EntryGvAfter
    s6Step92EntryFvRow s6Step92EntryFvOut 59 s6Step92EntryFvFresh [(s6Step92EntryGvRow,59)] [s6Step92EntryGvFresh] [s6Step92EntryGvOut]
    (growRow 776 s6Step92EntryFvFresh) ((growRow 775 s6Step92EntryGvFresh ++ [])) s6Step92EntryFv_Incoming s6Step92EntryFv_checked h3 s6Step92EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step92EntryGBefore s6Step92EntryGAfter s6Step92EntryGvAfter
    s6Step92EntryGRow s6Step92EntryGOut 222 s6Step92EntryGFresh [(s6Step92EntryFvRow,59),(s6Step92EntryGvRow,59)] [s6Step92EntryFvFresh,s6Step92EntryGvFresh] [s6Step92EntryFvOut,s6Step92EntryGvOut]
    (growRow 777 s6Step92EntryGFresh) ((growRow 776 s6Step92EntryFvFresh ++ (growRow 775 s6Step92EntryGvFresh ++ []))) s6Step92EntryG_Incoming s6Step92EntryG_checked h2 s6Step92EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step92EntryFBefore s6Step92EntryFAfter s6Step92EntryGvAfter
    s6Step92EntryFRow s6Step92EntryFOut 222 s6Step92EntryFFresh [(s6Step92EntryGRow,222),(s6Step92EntryFvRow,59),(s6Step92EntryGvRow,59)] [s6Step92EntryGFresh,s6Step92EntryFvFresh,s6Step92EntryGvFresh] [s6Step92EntryGOut,s6Step92EntryFvOut,s6Step92EntryGvOut]
    (growRow 795 s6Step92EntryFFresh) ((growRow 777 s6Step92EntryGFresh ++ (growRow 776 s6Step92EntryFvFresh ++ (growRow 775 s6Step92EntryGvFresh ++ [])))) s6Step92EntryF_Incoming s6Step92EntryF_checked h1 s6Step92EntryF_Outgoing
  exact h0

private theorem s6Step92EntryBank_checked : compileHmrBankResizeLog .entry s6Step92EntryFBefore ⟨s6Step92EntryFRow,s6Step92EntryGRow,s6Step92EntryFvRow,s6Step92EntryGvRow⟩ ⟨222,222,59,59⟩ [s6Step92EntryFFresh,s6Step92EntryGFresh,s6Step92EntryFvFresh,s6Step92EntryGvFresh]=
    some (s6Step92EntryGvAfter,⟨s6Step92EntryFOut,s6Step92EntryGOut,s6Step92EntryFvOut,s6Step92EntryGvOut⟩,(growRow 795 s6Step92EntryFFresh ++ (growRow 777 s6Step92EntryGFresh ++ (growRow 776 s6Step92EntryFvFresh ++ (growRow 775 s6Step92EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step92EntryBank_rows]
  rfl

private def s6Step92ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,221),(222,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step92ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,221),(222,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step92ExitFBefore : Arena := s6Step92ExitGAfter

private def s6Step92ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 887],795⟩

private def s6Step92ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 858],776⟩

private def s6Step92ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 908],777⟩

private def s6Step92ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 813],775⟩

private theorem s6Step92ExitBank_incomingDistinct : ([s6Step92ExitGRow,s6Step92ExitFRow,s6Step92ExitFvRow,s6Step92ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step92ExitF_Incoming : rowsOwned s6Step92ExitFBefore [s6Step92ExitFRow,s6Step92ExitFvRow,s6Step92ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step92ExitGRow,s6Step92ExitFRow,s6Step92ExitFvRow,s6Step92ExitGvRow] 1 s6Step92ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step92ExitFBefore (fun q => ([(0,221),(222,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step92ExitBank_outgoingOwned : rowsOwned s6Step92ExitGvAfter [s6Step92ExitGOut,s6Step92ExitFOut,s6Step92ExitFvOut,s6Step92ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step92ExitGvAfter (fun q => ([(0,221),(222,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step92ExitF_Outgoing : rowsOwned s6Step92ExitGvAfter [s6Step92ExitFOut,s6Step92ExitFvOut,s6Step92ExitGvOut] :=
  hmrRows_owned_drop s6Step92ExitGvAfter [s6Step92ExitGOut,s6Step92ExitFOut,s6Step92ExitFvOut,s6Step92ExitGvOut] 1 s6Step92ExitBank_outgoingOwned

private theorem s6Step92ExitF_distinct : (s6Step92ExitFRow.sign::s6Step92ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step92ExitF_owned : (s6Step92ExitFRow.sign::s6Step92ExitFRow.payload).toFinset⊆s6Step92ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step92ExitFBefore (fun q => ([(0,221),(222,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step92ExitF_retired : s6Step92ExitFBefore.retireSet s6Step92ExitFExtra.toFinset=s6Step92ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step92ExitFBefore s6Step92ExitFAfter s6Step92ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step92ExitFBefore s6Step92ExitFAfter (fun q => ([(0,221),(222,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,221),(222,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step92ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step92ExitF_checked : planRowResizeLog s6Step92ExitFBefore s6Step92ExitFRow 222 []=
    some (s6Step92ExitFAfter,s6Step92ExitFOut,shrinkRow 795 s6Step92ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step92ExitFBefore s6Step92ExitFRow 222 s6Step92ExitF_distinct s6Step92ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step92ExitFRow.payload.take 222) s6Step92ExitFRow.sign=s6Step92ExitFOut := by decide +kernel
  have hi : s6Step92ExitFRow.payload.drop 222=s6Step92ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step92ExitF_retired] at result
  exact result

private def s6Step92ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,221),(222,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step92ExitFvBefore : Arena := s6Step92ExitFAfter

private theorem s6Step92ExitFv_Incoming : rowsOwned s6Step92ExitFvBefore [s6Step92ExitFvRow,s6Step92ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step92ExitGRow,s6Step92ExitFRow,s6Step92ExitFvRow,s6Step92ExitGvRow] 2 s6Step92ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step92ExitFvBefore (fun q => ([(0,221),(222,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step92ExitFv_Outgoing : rowsOwned s6Step92ExitGvAfter [s6Step92ExitFvOut,s6Step92ExitGvOut] :=
  hmrRows_owned_drop s6Step92ExitGvAfter [s6Step92ExitGOut,s6Step92ExitFOut,s6Step92ExitFvOut,s6Step92ExitGvOut] 2 s6Step92ExitBank_outgoingOwned

private theorem s6Step92ExitFv_distinct : (s6Step92ExitFvRow.sign::s6Step92ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step92ExitFv_owned : (s6Step92ExitFvRow.sign::s6Step92ExitFvRow.payload).toFinset⊆s6Step92ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step92ExitFvBefore (fun q => ([(0,221),(222,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step92ExitFv_retired : s6Step92ExitFvBefore.retireSet s6Step92ExitFvExtra.toFinset=s6Step92ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step92ExitFvBefore s6Step92ExitFvAfter s6Step92ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step92ExitFvBefore s6Step92ExitFvAfter (fun q => ([(0,221),(222,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,221),(222,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step92ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step92ExitFv_checked : planRowResizeLog s6Step92ExitFvBefore s6Step92ExitFvRow 59 []=
    some (s6Step92ExitFvAfter,s6Step92ExitFvOut,shrinkRow 776 s6Step92ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step92ExitFvBefore s6Step92ExitFvRow 59 s6Step92ExitFv_distinct s6Step92ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step92ExitFvRow.payload.take 59) s6Step92ExitFvRow.sign=s6Step92ExitFvOut := by decide +kernel
  have hi : s6Step92ExitFvRow.payload.drop 59=s6Step92ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step92ExitFv_retired] at result
  exact result

private def s6Step92ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step92ExitG_Incoming : rowsOwned s6Step92ExitGBefore [s6Step92ExitGRow,s6Step92ExitFRow,s6Step92ExitFvRow,s6Step92ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step92ExitGRow,s6Step92ExitFRow,s6Step92ExitFvRow,s6Step92ExitGvRow] 0 s6Step92ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step92ExitGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step92ExitG_Outgoing : rowsOwned s6Step92ExitGvAfter [s6Step92ExitGOut,s6Step92ExitFOut,s6Step92ExitFvOut,s6Step92ExitGvOut] :=
  hmrRows_owned_drop s6Step92ExitGvAfter [s6Step92ExitGOut,s6Step92ExitFOut,s6Step92ExitFvOut,s6Step92ExitGvOut] 0 s6Step92ExitBank_outgoingOwned

private theorem s6Step92ExitG_distinct : (s6Step92ExitGRow.sign::s6Step92ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step92ExitG_owned : (s6Step92ExitGRow.sign::s6Step92ExitGRow.payload).toFinset⊆s6Step92ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step92ExitGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step92ExitG_retired : s6Step92ExitGBefore.retireSet s6Step92ExitGExtra.toFinset=s6Step92ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step92ExitGBefore s6Step92ExitGAfter s6Step92ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step92ExitGBefore s6Step92ExitGAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,221),(222,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step92ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step92ExitG_checked : planRowResizeLog s6Step92ExitGBefore s6Step92ExitGRow 221 []=
    some (s6Step92ExitGAfter,s6Step92ExitGOut,shrinkRow 777 s6Step92ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step92ExitGBefore s6Step92ExitGRow 221 s6Step92ExitG_distinct s6Step92ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step92ExitGRow.payload.take 221) s6Step92ExitGRow.sign=s6Step92ExitGOut := by decide +kernel
  have hi : s6Step92ExitGRow.payload.drop 221=s6Step92ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step92ExitG_retired] at result
  exact result

private def s6Step92ExitGvBefore : Arena := s6Step92ExitFvAfter

private theorem s6Step92ExitGv_Incoming : rowsOwned s6Step92ExitGvBefore [s6Step92ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step92ExitGRow,s6Step92ExitFRow,s6Step92ExitFvRow,s6Step92ExitGvRow] 3 s6Step92ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step92ExitGvBefore (fun q => ([(0,221),(222,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step92ExitGv_Outgoing : rowsOwned s6Step92ExitGvAfter [s6Step92ExitGvOut] :=
  hmrRows_owned_drop s6Step92ExitGvAfter [s6Step92ExitGOut,s6Step92ExitFOut,s6Step92ExitFvOut,s6Step92ExitGvOut] 3 s6Step92ExitBank_outgoingOwned

private theorem s6Step92ExitGv_distinct : (s6Step92ExitGvRow.sign::s6Step92ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step92ExitGv_owned : (s6Step92ExitGvRow.sign::s6Step92ExitGvRow.payload).toFinset⊆s6Step92ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step92ExitGvBefore (fun q => ([(0,221),(222,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step92ExitGv_retired : s6Step92ExitGvBefore.retireSet s6Step92ExitGvExtra.toFinset=s6Step92ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step92ExitGvBefore s6Step92ExitGvAfter s6Step92ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step92ExitGvBefore s6Step92ExitGvAfter (fun q => ([(0,221),(222,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,221),(222,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step92ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step92ExitGv_checked : planRowResizeLog s6Step92ExitGvBefore s6Step92ExitGvRow 59 []=
    some (s6Step92ExitGvAfter,s6Step92ExitGvOut,shrinkRow 775 s6Step92ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step92ExitGvBefore s6Step92ExitGvRow 59 s6Step92ExitGv_distinct s6Step92ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step92ExitGvRow.payload.take 59) s6Step92ExitGvRow.sign=s6Step92ExitGvOut := by decide +kernel
  have hi : s6Step92ExitGvRow.payload.drop 59=s6Step92ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step92ExitGv_retired] at result
  exact result

private theorem s6Step92ExitBank_rows : planWindowRowsLog s6Step92ExitGBefore [(s6Step92ExitGRow,221),(s6Step92ExitFRow,222),(s6Step92ExitFvRow,59),(s6Step92ExitGvRow,59)] [[],[],[],[]]=
    some (s6Step92ExitGvAfter,[s6Step92ExitGOut,s6Step92ExitFOut,s6Step92ExitFvOut,s6Step92ExitGvOut],(shrinkRow 777 s6Step92ExitGExtra ++ (shrinkRow 795 s6Step92ExitFExtra ++ (shrinkRow 776 s6Step92ExitFvExtra ++ (shrinkRow 775 s6Step92ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step92ExitGvAfter [] []=some (s6Step92ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step92ExitGvBefore s6Step92ExitGvAfter s6Step92ExitGvAfter
    s6Step92ExitGvRow s6Step92ExitGvOut 59 [] [] [] []
    (shrinkRow 775 s6Step92ExitGvExtra) ([]) s6Step92ExitGv_Incoming s6Step92ExitGv_checked h4 s6Step92ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step92ExitFvBefore s6Step92ExitFvAfter s6Step92ExitGvAfter
    s6Step92ExitFvRow s6Step92ExitFvOut 59 [] [(s6Step92ExitGvRow,59)] [[]] [s6Step92ExitGvOut]
    (shrinkRow 776 s6Step92ExitFvExtra) ((shrinkRow 775 s6Step92ExitGvExtra ++ [])) s6Step92ExitFv_Incoming s6Step92ExitFv_checked h3 s6Step92ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step92ExitFBefore s6Step92ExitFAfter s6Step92ExitGvAfter
    s6Step92ExitFRow s6Step92ExitFOut 222 [] [(s6Step92ExitFvRow,59),(s6Step92ExitGvRow,59)] [[],[]] [s6Step92ExitFvOut,s6Step92ExitGvOut]
    (shrinkRow 795 s6Step92ExitFExtra) ((shrinkRow 776 s6Step92ExitFvExtra ++ (shrinkRow 775 s6Step92ExitGvExtra ++ []))) s6Step92ExitF_Incoming s6Step92ExitF_checked h2 s6Step92ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step92ExitGBefore s6Step92ExitGAfter s6Step92ExitGvAfter
    s6Step92ExitGRow s6Step92ExitGOut 221 [] [(s6Step92ExitFRow,222),(s6Step92ExitFvRow,59),(s6Step92ExitGvRow,59)] [[],[],[]] [s6Step92ExitFOut,s6Step92ExitFvOut,s6Step92ExitGvOut]
    (shrinkRow 777 s6Step92ExitGExtra) ((shrinkRow 795 s6Step92ExitFExtra ++ (shrinkRow 776 s6Step92ExitFvExtra ++ (shrinkRow 775 s6Step92ExitGvExtra ++ [])))) s6Step92ExitG_Incoming s6Step92ExitG_checked h1 s6Step92ExitG_Outgoing
  exact h0

private theorem s6Step92ExitBank_checked : compileHmrBankResizeLog .exit s6Step92ExitGBefore ⟨s6Step92ExitFRow,s6Step92ExitGRow,s6Step92ExitFvRow,s6Step92ExitGvRow⟩ ⟨222,221,59,59⟩ [[],[],[],[]]=
    some (s6Step92ExitGvAfter,⟨s6Step92ExitFOut,s6Step92ExitGOut,s6Step92ExitFvOut,s6Step92ExitGvOut⟩,(shrinkRow 777 s6Step92ExitGExtra ++ (shrinkRow 795 s6Step92ExitFExtra ++ (shrinkRow 776 s6Step92ExitFvExtra ++ (shrinkRow 775 s6Step92ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step92ExitBank_rows]
  rfl

private theorem s6Step92Add0_apart : Disjoint s6Step92Add0Arena.live s6Step92Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step92Add0Arena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step92Add0_card : s6Step92Add0Arena.live.card=870 := by
  decide +kernel

private theorem s6Step92Add0_borrowed : s6Step92Add0Arena.checkBorrow (hmrHybridCount s6Step92Add0Arena s6Step92Add0B.length) s6Step92Add0Work=some s6Step92Add0During := by
  have len : s6Step92Add0Work.length=hmrHybridCount s6Step92Add0Arena s6Step92Add0B.length := by
    rw [hmrHybridCount,s6Step92Add0_card]
    decide +kernel
  have nd : s6Step92Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step92Add0Arena s6Step92Add0During s6Step92Add0Work.toFinset s6Step92Add0_bounded s6Step92Add0_apart rfl

private theorem s6Step92Add0_distinct : (859::874::877::(s6Step92Add0A++s6Step92Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step92Add0_owned : (859::874::877::(s6Step92Add0A++s6Step92Add0B)).toFinset⊆s6Step92Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step92Add0Arena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step92Add0_checked : compileHmrHybridCinLog s6Step92Add0Arena 874 859 877 s6Step92Add0A s6Step92Add0B s6Step92Add0Work=some s6Step92Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step92Add0Arena s6Step92Add0During 874 859 877 s6Step92Add0A s6Step92Add0B s6Step92Add0Work
    (by decide +kernel) (by decide +kernel) s6Step92Add0_distinct
    (fun q hq => s6Step92Add0_owned (List.mem_toFinset.mpr hq)) s6Step92Add0_borrowed

private theorem s6Step92Add1_apart : Disjoint s6Step92Add1Arena.live s6Step92Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step92Add1Arena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step92Add1_card : s6Step92Add1Arena.live.card=870 := by
  decide +kernel

private theorem s6Step92Add1_borrowed : s6Step92Add1Arena.checkBorrow (hmrHybridCount s6Step92Add1Arena s6Step92Add1B.length) s6Step92Add1Work=some s6Step92Add1During := by
  have len : s6Step92Add1Work.length=hmrHybridCount s6Step92Add1Arena s6Step92Add1B.length := by
    rw [hmrHybridCount,s6Step92Add1_card]
    decide +kernel
  have nd : s6Step92Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step92Add1Arena s6Step92Add1During s6Step92Add1Work.toFinset s6Step92Add1_bounded s6Step92Add1_apart rfl

private theorem s6Step92Add1_distinct : (859::874::877::(s6Step92Add1A++s6Step92Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step92Add1_owned : (859::874::877::(s6Step92Add1A++s6Step92Add1B)).toFinset⊆s6Step92Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step92Add1Arena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step92Add1_checked : compileHmrHybridCinLog s6Step92Add1Arena 874 859 877 s6Step92Add1A s6Step92Add1B s6Step92Add1Work=some s6Step92Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step92Add1Arena s6Step92Add1During 874 859 877 s6Step92Add1A s6Step92Add1B s6Step92Add1Work
    (by decide +kernel) (by decide +kernel) s6Step92Add1_distinct
    (fun q hq => s6Step92Add1_owned (List.mem_toFinset.mpr hq)) s6Step92Add1_borrowed

private theorem s6Step92F4_apart : Disjoint (s6Step92Add0A++s6Step92Add0B).toFinset (s6Step92Add1A++s6Step92Add1B).toFinset := by
  have nd : ((s6Step92Add0A++s6Step92Add0B)++(s6Step92Add1A++s6Step92Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step92F4_carry : s6Step92F4FlagArena.checkBorrow 1 [877]=some s6Step92Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step92F4FlagArena,s6Step92HeadFvAfter,arenaWires]
  · change s6Step92Add0Arena.live=(s6Step92HeadFvAfter.live∪{859})∪{877}
    apply hmrArena_union_pair_of_filter_check s6Step92HeadFvAfter s6Step92Add0Arena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 859 877 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step92F4_distinct : (857::874::859::877::((s6Step92Add0A++s6Step92Add1A)++(s6Step92Add0B++s6Step92Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step92F4_flag : s6Step92HeadFvAfter.checkBorrow 1 [859]=some s6Step92F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step92HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step92F4_owned : (857::874::((s6Step92Add0A++s6Step92Add1A)++(s6Step92Add0B++s6Step92Add1B))).toFinset⊆s6Step92HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step92HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step92F4_checked : compileHmrHybridF4Log s6Step92HeadFvAfter 857 874 s6Step92Add0A s6Step92Add0B s6Step92Add1A s6Step92Add1B [859] [877] s6Step92Add0Work s6Step92Add1Work=some s6Step92F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step92HeadFvAfter s6Step92F4FlagArena s6Step92Add0Arena s6Step92Add0During s6Step92Add1During 857 874
    s6Step92Add0A s6Step92Add0B s6Step92Add1A s6Step92Add1B [859] [877] s6Step92Add0Work s6Step92Add1Work
    (fun q hq => s6Step92F4_owned (List.mem_toFinset.mpr hq)) s6Step92F4_flag s6Step92F4_carry
    s6Step92F4_distinct s6Step92F4_apart s6Step92Add0_checked s6Step92Add1_checked

private theorem s6Step92Front_branch : s6Step92FrontSigmaArena.checkBorrow 1 [874]=some s6Step92HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step92FrontSigmaArena,s6Step92EntryGvAfter,s6Step92EntryFBefore,arenaWires]
  · change s6Step92HeadGBefore.live=(s6Step92EntryGvAfter.live∪{857})∪{874}
    apply hmrArena_union_pair_of_filter_check s6Step92EntryGvAfter s6Step92HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 857 874 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step92Front_entry : HmrFrontEntryValid s6Step92EntryFBefore s6Step92FrontBank 222 59 ⟨222,221,59,59⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step92FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step92EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step92EntryFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step92FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step92Front_sigma : s6Step92EntryGvAfter.checkBorrow 1 [857]=some s6Step92FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step92EntryGvAfter,s6Step92EntryFBefore,arenaWires]
  · rfl

private def s6Step92HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step92HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step92HeadFBefore : Arena := s6Step92HeadGAfter

private def s6Step92HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477],795⟩

private def s6Step92HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780],776⟩

private def s6Step92HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221],777⟩

private def s6Step92HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794],775⟩

private theorem s6Step92HeadBank_incomingDistinct : ([s6Step92HeadGRow,s6Step92HeadFRow,s6Step92HeadGvRow,s6Step92HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step92HeadF_Incoming : rowsOwned s6Step92HeadFBefore [s6Step92HeadFRow,s6Step92HeadGvRow,s6Step92HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step92HeadGRow,s6Step92HeadFRow,s6Step92HeadGvRow,s6Step92HeadFvRow] 1 s6Step92HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step92HeadFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step92HeadBank_outgoingOwned : rowsOwned s6Step92HeadFvAfter [s6Step92HeadGOut,s6Step92HeadFOut,s6Step92HeadGvOut,s6Step92HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step92HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step92HeadF_Outgoing : rowsOwned s6Step92HeadFvAfter [s6Step92HeadFOut,s6Step92HeadGvOut,s6Step92HeadFvOut] :=
  hmrRows_owned_drop s6Step92HeadFvAfter [s6Step92HeadGOut,s6Step92HeadFOut,s6Step92HeadGvOut,s6Step92HeadFvOut] 1 s6Step92HeadBank_outgoingOwned

private theorem s6Step92HeadF_distinct : (s6Step92HeadFRow.sign::s6Step92HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step92HeadF_owned : (s6Step92HeadFRow.sign::s6Step92HeadFRow.payload).toFinset⊆s6Step92HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step92HeadFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step92HeadF_reserved : s6Step92HeadFBefore.reserve s6Step92HeadFFresh.toFinset=some s6Step92HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step92HeadFFresh,arenaWires]
  · norm_num [s6Step92HeadFBefore,s6Step92HeadGAfter,s6Step92HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step92HeadFBefore s6Step92HeadFAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step92HeadFFresh rfl rfl
    · norm_num [s6Step92HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step92HeadF_checked : planRowResizeLog s6Step92HeadFBefore s6Step92HeadFRow 223 s6Step92HeadFFresh=
    some (s6Step92HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 887],795⟩,growRow 795 s6Step92HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step92HeadFBefore s6Step92HeadFAfter s6Step92HeadFRow 223 s6Step92HeadFFresh
    s6Step92HeadF_distinct s6Step92HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step92HeadF_reserved
  have rowEq : WindowRow.mk (s6Step92HeadFRow.payload++s6Step92HeadFFresh) s6Step92HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 887],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step92HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step92HeadFvBefore : Arena := s6Step92HeadGvAfter

private theorem s6Step92HeadFv_Incoming : rowsOwned s6Step92HeadFvBefore [s6Step92HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step92HeadGRow,s6Step92HeadFRow,s6Step92HeadGvRow,s6Step92HeadFvRow] 3 s6Step92HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step92HeadFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step92HeadFv_Outgoing : rowsOwned s6Step92HeadFvAfter [s6Step92HeadFvOut] :=
  hmrRows_owned_drop s6Step92HeadFvAfter [s6Step92HeadGOut,s6Step92HeadFOut,s6Step92HeadGvOut,s6Step92HeadFvOut] 3 s6Step92HeadBank_outgoingOwned

private theorem s6Step92HeadFv_distinct : (s6Step92HeadFvRow.sign::s6Step92HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step92HeadFv_owned : (s6Step92HeadFvRow.sign::s6Step92HeadFvRow.payload).toFinset⊆s6Step92HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step92HeadFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step92HeadFv_reserved : s6Step92HeadFvBefore.reserve s6Step92HeadFvFresh.toFinset=some s6Step92HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step92HeadFvFresh,arenaWires]
  · norm_num [s6Step92HeadFvBefore,s6Step92HeadGvAfter,s6Step92HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step92HeadFvBefore s6Step92HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step92HeadFvFresh rfl rfl
    · norm_num [s6Step92HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step92HeadFv_checked : planRowResizeLog s6Step92HeadFvBefore s6Step92HeadFvRow 60 s6Step92HeadFvFresh=
    some (s6Step92HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 858],776⟩,growRow 776 s6Step92HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step92HeadFvBefore s6Step92HeadFvAfter s6Step92HeadFvRow 60 s6Step92HeadFvFresh
    s6Step92HeadFv_distinct s6Step92HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step92HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step92HeadFvRow.payload++s6Step92HeadFvFresh) s6Step92HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 858],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step92HeadG_Incoming : rowsOwned s6Step92HeadGBefore [s6Step92HeadGRow,s6Step92HeadFRow,s6Step92HeadGvRow,s6Step92HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step92HeadGRow,s6Step92HeadFRow,s6Step92HeadGvRow,s6Step92HeadFvRow] 0 s6Step92HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step92HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step92HeadG_Outgoing : rowsOwned s6Step92HeadFvAfter [s6Step92HeadGOut,s6Step92HeadFOut,s6Step92HeadGvOut,s6Step92HeadFvOut] :=
  hmrRows_owned_drop s6Step92HeadFvAfter [s6Step92HeadGOut,s6Step92HeadFOut,s6Step92HeadGvOut,s6Step92HeadFvOut] 0 s6Step92HeadBank_outgoingOwned

private theorem s6Step92HeadG_distinct : (s6Step92HeadGRow.sign::s6Step92HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step92HeadG_owned : (s6Step92HeadGRow.sign::s6Step92HeadGRow.payload).toFinset⊆s6Step92HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step92HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step92HeadG_reserved : s6Step92HeadGBefore.reserve s6Step92HeadGFresh.toFinset=some s6Step92HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step92HeadGFresh,arenaWires]
  · norm_num [s6Step92HeadGBefore,s6Step92HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step92HeadGBefore s6Step92HeadGAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step92HeadGFresh rfl rfl
    · norm_num [s6Step92HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step92HeadG_checked : planRowResizeLog s6Step92HeadGBefore s6Step92HeadGRow 223 s6Step92HeadGFresh=
    some (s6Step92HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 908],777⟩,growRow 777 s6Step92HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step92HeadGBefore s6Step92HeadGAfter s6Step92HeadGRow 223 s6Step92HeadGFresh
    s6Step92HeadG_distinct s6Step92HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step92HeadG_reserved
  have rowEq : WindowRow.mk (s6Step92HeadGRow.payload++s6Step92HeadGFresh) s6Step92HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 908],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step92HeadGvBefore : Arena := s6Step92HeadFAfter

private theorem s6Step92HeadGv_Incoming : rowsOwned s6Step92HeadGvBefore [s6Step92HeadGvRow,s6Step92HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step92HeadGRow,s6Step92HeadFRow,s6Step92HeadGvRow,s6Step92HeadFvRow] 2 s6Step92HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step92HeadGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step92HeadGv_Outgoing : rowsOwned s6Step92HeadFvAfter [s6Step92HeadGvOut,s6Step92HeadFvOut] :=
  hmrRows_owned_drop s6Step92HeadFvAfter [s6Step92HeadGOut,s6Step92HeadFOut,s6Step92HeadGvOut,s6Step92HeadFvOut] 2 s6Step92HeadBank_outgoingOwned

private theorem s6Step92HeadGv_distinct : (s6Step92HeadGvRow.sign::s6Step92HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step92HeadGv_owned : (s6Step92HeadGvRow.sign::s6Step92HeadGvRow.payload).toFinset⊆s6Step92HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step92HeadGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step92HeadGv_reserved : s6Step92HeadGvBefore.reserve s6Step92HeadGvFresh.toFinset=some s6Step92HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step92HeadGvFresh,arenaWires]
  · norm_num [s6Step92HeadGvBefore,s6Step92HeadFAfter,s6Step92HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step92HeadGvBefore s6Step92HeadGvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step92HeadGvFresh rfl rfl
    · norm_num [s6Step92HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step92HeadGv_checked : planRowResizeLog s6Step92HeadGvBefore s6Step92HeadGvRow 60 s6Step92HeadGvFresh=
    some (s6Step92HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 813],775⟩,growRow 775 s6Step92HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step92HeadGvBefore s6Step92HeadGvAfter s6Step92HeadGvRow 60 s6Step92HeadGvFresh
    s6Step92HeadGv_distinct s6Step92HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step92HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step92HeadGvRow.payload++s6Step92HeadGvFresh) s6Step92HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 813],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step92HeadBank_rows : planWindowRowsLog s6Step92HeadGBefore [(s6Step92HeadGRow,223),(s6Step92HeadFRow,223),(s6Step92HeadGvRow,60),(s6Step92HeadFvRow,60)] [s6Step92HeadGFresh,s6Step92HeadFFresh,s6Step92HeadGvFresh,s6Step92HeadFvFresh]=
    some (s6Step92HeadFvAfter,[s6Step92HeadGOut,s6Step92HeadFOut,s6Step92HeadGvOut,s6Step92HeadFvOut],(growRow 777 s6Step92HeadGFresh ++ (growRow 795 s6Step92HeadFFresh ++ (growRow 775 s6Step92HeadGvFresh ++ (growRow 776 s6Step92HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step92HeadFvAfter [] []=some (s6Step92HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step92HeadFvBefore s6Step92HeadFvAfter s6Step92HeadFvAfter
    s6Step92HeadFvRow s6Step92HeadFvOut 60 s6Step92HeadFvFresh [] [] []
    (growRow 776 s6Step92HeadFvFresh) ([]) s6Step92HeadFv_Incoming s6Step92HeadFv_checked h4 s6Step92HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step92HeadGvBefore s6Step92HeadGvAfter s6Step92HeadFvAfter
    s6Step92HeadGvRow s6Step92HeadGvOut 60 s6Step92HeadGvFresh [(s6Step92HeadFvRow,60)] [s6Step92HeadFvFresh] [s6Step92HeadFvOut]
    (growRow 775 s6Step92HeadGvFresh) ((growRow 776 s6Step92HeadFvFresh ++ [])) s6Step92HeadGv_Incoming s6Step92HeadGv_checked h3 s6Step92HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step92HeadFBefore s6Step92HeadFAfter s6Step92HeadFvAfter
    s6Step92HeadFRow s6Step92HeadFOut 223 s6Step92HeadFFresh [(s6Step92HeadGvRow,60),(s6Step92HeadFvRow,60)] [s6Step92HeadGvFresh,s6Step92HeadFvFresh] [s6Step92HeadGvOut,s6Step92HeadFvOut]
    (growRow 795 s6Step92HeadFFresh) ((growRow 775 s6Step92HeadGvFresh ++ (growRow 776 s6Step92HeadFvFresh ++ []))) s6Step92HeadF_Incoming s6Step92HeadF_checked h2 s6Step92HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step92HeadGBefore s6Step92HeadGAfter s6Step92HeadFvAfter
    s6Step92HeadGRow s6Step92HeadGOut 223 s6Step92HeadGFresh [(s6Step92HeadFRow,223),(s6Step92HeadGvRow,60),(s6Step92HeadFvRow,60)] [s6Step92HeadFFresh,s6Step92HeadGvFresh,s6Step92HeadFvFresh] [s6Step92HeadFOut,s6Step92HeadGvOut,s6Step92HeadFvOut]
    (growRow 777 s6Step92HeadGFresh) ((growRow 795 s6Step92HeadFFresh ++ (growRow 775 s6Step92HeadGvFresh ++ (growRow 776 s6Step92HeadFvFresh ++ [])))) s6Step92HeadG_Incoming s6Step92HeadG_checked h1 s6Step92HeadG_Outgoing
  exact h0

private theorem s6Step92HeadBank_checked : compileHmrBankResizeLog .headroom s6Step92HeadGBefore ⟨s6Step92HeadFRow,s6Step92HeadGRow,s6Step92HeadFvRow,s6Step92HeadGvRow⟩ ⟨223,223,60,60⟩ [s6Step92HeadGFresh,s6Step92HeadFFresh,s6Step92HeadGvFresh,s6Step92HeadFvFresh]=
    some (s6Step92HeadFvAfter,⟨s6Step92HeadFOut,s6Step92HeadGOut,s6Step92HeadFvOut,s6Step92HeadGvOut⟩,(growRow 777 s6Step92HeadGFresh ++ (growRow 795 s6Step92HeadFFresh ++ (growRow 775 s6Step92HeadGvFresh ++ (growRow 776 s6Step92HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step92HeadBank_rows]
  rfl

private theorem s6Step92Front_checked : compileHmrSourceFrontLog s6Step92EntryFBefore s6Step92FrontBank 222 59 ⟨222,221,59,59⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step92FrontLog=some s6Step92FrontPlan := by
  have pairEq : s6Step92FrontPair=⟨s6Step92HeadFRow,s6Step92HeadGRow,s6Step92HeadFvRow,s6Step92HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step92FrontHead=⟨s6Step92ExitFRow,s6Step92ExitGRow,s6Step92ExitFvRow,s6Step92ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step92Add0A=s6Step92FrontHead.f.wires := by decide +kernel
  have gEq : s6Step92Add0B=s6Step92FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step92Add1A=s6Step92FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step92Add1B=s6Step92FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step92EntryFBefore s6Step92FrontBank 222 59 ⟨222,221,59,59⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step92FrontLog s6Step92FrontPlan
  · exact s6Step92Front_entry
  · exact s6Step92EntryBank_checked
  · exact s6Step92Front_sigma
  · rfl
  · exact s6Step92Front_branch
  · rfl
  · simpa only [s6Step92FrontPlan,pairEq] using s6Step92HeadBank_checked
  · simpa only [s6Step92FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step92F4_checked
  · exact s6Step92Counter_checked
  · rfl
  · simpa only [s6Step92FrontPlan,headEq] using s6Step92ExitBank_checked

private theorem s6Step92Complete_explicit_checked : compileHmrEarlyStepLog s6Step92EntryFBefore s6Step92FrontBank 222 59 ⟨222,221,59,59⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 34 s6Step92CompleteLog=some s6Step92CompletePlan := by
  let Q := s6Step92EarlyControlPlan
  have hq := s6Step92EarlyControl_plan_checked
  have fv1 : s6Step92CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step92CompleteOut.fv.payload[2]?.getD s6Step92CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step92CompleteOut.fv.payload[3]?.getD s6Step92CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step92CompleteOut.fv.payload[4]?.getD s6Step92CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step92EntryFBefore s6Step92EarlyControlArena s6Step92FrontBank 222 59 ⟨222,221,59,59⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 34 s6Step92CompleteLog s6Step92FrontPlan Q
    s6Step92Front_checked s6Step92Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step92Complete_owned s6Step92Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step92EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 857 s6Step92CompleteOut.fv.second (s6Step92CompleteOut.fv.payload[2]?.getD s6Step92CompleteOut.fv.sign) (s6Step92CompleteOut.fv.payload[3]?.getD s6Step92CompleteOut.fv.sign) (s6Step92CompleteOut.fv.payload[4]?.getD s6Step92CompleteOut.fv.sign) 874 34 s6Step92EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep92Arena : Arena := s6Step92EntryFBefore
def s6PrivateStep92Bank : WindowBank := s6Step92FrontBank
def s6PrivateStep92Spec : HmrSourceWalkStepLog := ⟨222,59,⟨222,221,59,59⟩,34,.early s6Step92CompleteLog⟩
def s6PrivateStep92Plan : HmrSourceStepPlan := .early s6Step92CompletePlan
theorem s6PrivateStep92_source : s6PrivateStep92Spec=s6ObservedLogs80[12] := rfl
theorem s6PrivateStep92_checked : compileHmrSourceStepLog s6PrivateStep92Arena s6PrivateStep92Bank
    s6PrivateStep92Spec.fgWidth s6PrivateStep92Spec.vWidth s6PrivateStep92Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847]
    6 498 92 s6PrivateStep92Spec.need none s6PrivateStep92Spec.log=some s6PrivateStep92Plan := by
  change compileHmrSourceStepLog s6Step92EntryFBefore s6Step92FrontBank 222 59 ⟨222,221,59,59⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 6 498 92 34 none (.early s6Step92CompleteLog)=some (.early s6Step92CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 92<498)]
  rw [s6Step92Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
