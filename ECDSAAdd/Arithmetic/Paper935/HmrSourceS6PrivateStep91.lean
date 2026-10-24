import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep89
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

private def s6Step91CompleteMoves : List (Wire × Wire) := [(887,222),(908,478)]

private def s6Step91EarlyControlLog : HmrEarlyControlLog := ⟨[908, 887, 813, 858, 859],[877],[876],[881, 803, 922, 879, 784, 891],[847]⟩

private def s6Step91FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[858], [813], [794], [780]],[[], [], [], []]⟩,[874],[857],[859],[877],[876, 881, 803, 922, 879, 784, 891, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[876, 881, 803, 922, 879, 784, 891, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832],[859, 877, 876, 881]⟩

private def s6Step91CompleteLog : HmrEarlyStepLog := ⟨s6Step91FrontLog,s6Step91CompleteMoves,s6Step91EarlyControlLog⟩

private def s6Step91ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477],795⟩

private def s6Step91ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780],776⟩

private def s6Step91ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221],777⟩

private def s6Step91ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794],775⟩

private def s6Step91FrontOut : WindowBank := ⟨s6Step91ExitFOut,s6Step91ExitGOut,s6Step91ExitFvOut,s6Step91ExitGvOut⟩

private def s6Step91CompleteOut : WindowBank := s6Step91FrontOut.repacked s6Step91CompleteMoves

private def s6Step91EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step91EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step91EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step91EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step91EarlyControlPositiveArena,[877],s6Step91EarlyControlEqualityArena,[876],⟨⟨874,false⟩,[⟨⟨877,false⟩,876⟩]⟩⟩

private def s6Step91EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step91EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step91EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step91EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step91EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,874),(875,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step91EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step91EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,908⟩,⟨⟨772,false⟩,887⟩,⟨⟨771,false⟩,813⟩,⟨⟨770,false⟩,858⟩,⟨⟨769,false⟩,859⟩]⟩

private def s6Step91EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step91EarlyControlZeroArena,s6Step91EarlyControlZeroPlan,s6Step91EarlyControlClassPlan,s6Step91EarlyControlFlagArena,s6Step91EarlyControlFittedArena,s6Step91EarlyControlHistoryArena,s6Step91EarlyControlSigmaArena,s6Step91EarlyControlOutputArena,s6Step91EarlyControlLog⟩

private def s6Step91CounterWork : List Wire := [859, 877, 876, 881]

private theorem s6Step91Counter_bounded : s6Step91CounterWork.toFinset⊆arenaWires := by norm_num [s6Step91CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step91HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step91CounterDuring : Arena := ⟨s6Step91HeadFvAfter.live∪s6Step91CounterWork.toFinset,Finset.union_subset s6Step91HeadFvAfter.bounded s6Step91Counter_bounded⟩

private def s6Step91EntryFFresh : List Wire := []

private def s6Step91EntryFvFresh : List Wire := []

private def s6Step91EntryGFresh : List Wire := []

private def s6Step91EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step91EntryGvAfter : Arena := s6Step91EntryFBefore

private def s6Step91EntryGvFresh : List Wire := []

private def s6Step91ExitFExtra : List Wire := [478, 813]

private def s6Step91ExitGExtra : List Wire := [222, 858]

private def s6Step91ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,222),(223,478),(479,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step91ExitGvAfter : Arena := s6Step91ExitFAfter

private def s6Step91Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step91Add0Work : List Wire := [876, 881, 803, 922, 879, 784, 891, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step91Add0_bounded : s6Step91Add0Work.toFinset⊆arenaWires := by
  have h : s6Step91Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step91Add0During : Arena := ⟨s6Step91Add0Arena.live∪s6Step91Add0Work.toFinset,Finset.union_subset s6Step91Add0Arena.bounded s6Step91Add0_bounded⟩

private def s6Step91Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step91Add1Work : List Wire := [876, 881, 803, 922, 879, 784, 891, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832]

private theorem s6Step91Add1_bounded : s6Step91Add1Work.toFinset⊆arenaWires := by
  have h : s6Step91Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step91Add1During : Arena := ⟨s6Step91Add1Arena.live∪s6Step91Add1Work.toFinset,Finset.union_subset s6Step91Add1Arena.bounded s6Step91Add1_bounded⟩

private def s6Step91F4FlagArena : Arena := ⟨s6Step91HeadFvAfter.live∪{859},Finset.union_subset s6Step91HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step91F4Plan : HmrHybridF4Plan := ⟨s6Step91F4FlagArena,[859],s6Step91Add0Arena,[877],s6Step91Add0During,s6Step91Add0Work,s6Step91Add1During,s6Step91Add1Work⟩

private def s6Step91HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 813],795⟩

private def s6Step91HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780],776⟩

private def s6Step91HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 858],777⟩

private def s6Step91HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794],775⟩

private def s6Step91FrontHead : WindowBank := ⟨s6Step91HeadFOut,s6Step91HeadGOut,s6Step91HeadFvOut,s6Step91HeadGvOut⟩

private def s6Step91EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478],795⟩

private def s6Step91EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855],776⟩

private def s6Step91EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222],777⟩

private def s6Step91EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802],775⟩

private def s6Step91FrontPair : WindowBank := ⟨s6Step91EntryFOut,s6Step91EntryGOut,s6Step91EntryFvOut,s6Step91EntryGvOut⟩

private def s6Step91FrontSigmaArena : Arena := ⟨s6Step91EntryGvAfter.live∪{874},Finset.union_subset s6Step91EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step91HeadFFresh : List Wire := [813]

private def s6Step91HeadFvFresh : List Wire := [780]

private def s6Step91HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step91HeadGFresh : List Wire := [858]

private def s6Step91HeadGvFresh : List Wire := [794]

private def s6Step91FrontPlan : HmrSourceFront := ⟨s6Step91EntryGvAfter,s6Step91FrontPair,(growRow 795 s6Step91EntryFFresh ++ (growRow 777 s6Step91EntryGFresh ++ (growRow 776 s6Step91EntryFvFresh ++ (growRow 775 s6Step91EntryGvFresh ++ [])))),s6Step91FrontSigmaArena,[874],s6Step91HeadGBefore,[857],
  s6Step91HeadFvAfter,s6Step91FrontHead,(growRow 777 s6Step91HeadGFresh ++ (growRow 795 s6Step91HeadFFresh ++ (growRow 775 s6Step91HeadGvFresh ++ (growRow 776 s6Step91HeadFvFresh ++ [])))),s6Step91F4Plan,s6Step91CounterDuring,s6Step91CounterWork,s6Step91ExitGvAfter,s6Step91FrontOut,(shrinkRow 777 s6Step91ExitGExtra ++ (shrinkRow 795 s6Step91ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))⟩

private def s6Step91CompletePlan : HmrEarlyStepPlan := ⟨s6Step91FrontPlan,s6Step91EarlyControlArena,s6Step91EarlyControlPlan,s6Step91CompleteMoves⟩

private theorem s6Step91Complete_apart : List.Disjoint (s6Step91CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [874, 857, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783] := by
  have nd : ((s6Step91CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[874, 857, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step91Complete_owned : (s6Step91CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step91EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step91EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step91CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,478),(479,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step91CompleteRelocationMove0Borrowed : Arena := ⟨s6Step91ExitGvAfter.live∪{222},Finset.union_subset s6Step91ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step91CompleteRelocationMove1Borrowed : Arena := ⟨s6Step91CompleteRelocationMove0After.live∪{478},Finset.union_subset s6Step91CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step91CompleteRelocation_move0_owned : 887∈s6Step91ExitGvAfter.live := by norm_num [s6Step91ExitGvAfter,s6Step91ExitFAfter,arenaWires]

private theorem s6Step91CompleteRelocation_move0_reserve : s6Step91ExitGvAfter.reserve {222}=some s6Step91CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step91ExitGvAfter,s6Step91ExitFAfter,arenaWires]
  · rfl

private theorem s6Step91CompleteRelocation_move0_retire : s6Step91CompleteRelocationMove0Borrowed.retireSet {887}=s6Step91CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step91CompleteRelocationMove0Borrowed s6Step91CompleteRelocationMove0After {887}
  change s6Step91CompleteRelocationMove0After.live=(s6Step91ExitGvAfter.live∪{222})\{887}
  apply hmrArena_update_of_filter_check s6Step91ExitGvAfter s6Step91CompleteRelocationMove0After (fun q => ([(0,222),(223,478),(479,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,478),(479,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [222] [887] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step91CompleteRelocation_move1_owned : 908∈s6Step91CompleteRelocationMove0After.live := by norm_num [s6Step91CompleteRelocationMove0After,arenaWires]

private theorem s6Step91CompleteRelocation_move1_reserve : s6Step91CompleteRelocationMove0After.reserve {478}=some s6Step91CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step91CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step91CompleteRelocation_move1_retire : s6Step91CompleteRelocationMove1Borrowed.retireSet {908}=s6Step91EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step91CompleteRelocationMove1Borrowed s6Step91EarlyControlArena {908}
  change s6Step91EarlyControlArena.live=(s6Step91CompleteRelocationMove0After.live∪{478})\{908}
  apply hmrArena_update_of_filter_check s6Step91CompleteRelocationMove0After s6Step91EarlyControlArena (fun q => ([(0,478),(479,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [478] [908] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step91CompleteRelocation_checked : s6Step91ExitGvAfter.checkRepack [(887,222),(908,478)]=some s6Step91EarlyControlArena := by
  have tail2 : s6Step91EarlyControlArena.checkRepack []=some s6Step91EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step91CompleteRelocationMove0After s6Step91CompleteRelocationMove1Borrowed s6Step91EarlyControlArena s6Step91EarlyControlArena 908 478 []
    s6Step91CompleteRelocation_move1_owned s6Step91CompleteRelocation_move1_reserve s6Step91CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step91ExitGvAfter s6Step91CompleteRelocationMove0Borrowed s6Step91CompleteRelocationMove0After s6Step91EarlyControlArena 887 222 [(908,478)]
    s6Step91CompleteRelocation_move0_owned s6Step91CompleteRelocation_move0_reserve s6Step91CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step91Complete_repack : s6Step91ExitGvAfter.checkRepack s6Step91CompleteMoves=some s6Step91EarlyControlArena := by
  simpa only [s6Step91CompleteMoves] using s6Step91CompleteRelocation_checked

private theorem s6Step91EarlyControl_branchOwned : ([857] : List Wire).toFinset⊆s6Step91EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step91EarlyControlSigmaArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,874),(875,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step91EarlyControl_branch : compileHmrBranchRetirement s6Step91EarlyControlSigmaArena 857=some s6Step91EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step91EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step91EarlyControlSigmaArena s6Step91EarlyControlOutputArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,874),(875,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [857] rfl rfl
    decide +kernel

private theorem s6Step91EarlyControl_classEqualityBorrow : s6Step91EarlyControlPositiveArena.checkBorrow (([874, 877] : List Wire).length-1) s6Step91EarlyControlLog.classWork=some s6Step91EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step91EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step91EarlyControlPositiveArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step91EarlyControlPositiveArena s6Step91EarlyControlEqualityArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step91EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step91EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step91EarlyControl_classEqualityOwned : ([874, 877] : List Wire).toFinset⊆s6Step91EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step91EarlyControlPositiveArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step91EarlyControl_classEquality : compileHmrEqualityLog s6Step91EarlyControlPositiveArena [874, 877] 0 s6Step91EarlyControlLog.classWork=some (s6Step91EarlyControlEqualityArena,s6Step91EarlyControlLog.classWork,s6Step91EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step91EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step91EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step91EarlyControl_classOwned : ([769, 859, 874] : List Wire).toFinset⊆s6Step91EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step91EarlyControlZeroArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step91EarlyControl_positiveBorrow : s6Step91EarlyControlZeroArena.checkBorrow (1) s6Step91EarlyControlLog.positiveWork=some s6Step91EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step91EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step91EarlyControlZeroArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step91EarlyControlZeroArena s6Step91EarlyControlPositiveArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step91EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step91EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step91EarlyControl_class : compileHmrSourceClassLog s6Step91EarlyControlZeroArena false 769 s6Step91EarlyControlZeroPlan.top 0 874 s6Step91EarlyControlLog.positiveWork s6Step91EarlyControlLog.classWork=some s6Step91EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step91EarlyControlClassPlan s6Step91EarlyControlZeroArena false 769 s6Step91EarlyControlZeroPlan.top 0 874
  constructor
  · decide +kernel
  · exact s6Step91EarlyControl_classOwned
  · exact s6Step91EarlyControl_positiveBorrow
  · exact s6Step91EarlyControl_classEquality

private theorem s6Step91EarlyControl_entryRecordOwned : ([857, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783] : List Wire).toFinset⊆s6Step91EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step91EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step91EarlyControl_entrySigmaOwned : ([874, 254] : List Wire).toFinset⊆s6Step91EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step91EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step91EarlyControl_fitBorrow : s6Step91EarlyControlFlagArena.checkBorrow ((34-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783] : List Wire).length)) s6Step91EarlyControlLog.recordFresh=some s6Step91EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step91EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step91EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step91EarlyControlFittedArena,s6Step91EarlyControlFlagArena,s6Step91EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step91EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783] : List Wire).toFinset⊆s6Step91EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step91EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step91EarlyControl_fit : compileHmrRecordGrowLog s6Step91EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783] 34 s6Step91EarlyControlLog.recordFresh=some s6Step91EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step91EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step91EarlyControl_fitBorrow

private theorem s6Step91EarlyControl_flagsBorrow : s6Step91EarlyControlEqualityArena.checkBorrow (6) s6Step91EarlyControlLog.flagWork=some s6Step91EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step91EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step91EarlyControlEqualityArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step91EarlyControlEqualityArena s6Step91EarlyControlFlagArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step91EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step91EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step91EarlyControl_flagsOwned : ([876, 253, 252, 251] : List Wire).toFinset⊆s6Step91EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step91EarlyControlEqualityArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step91EarlyControl_flags : compileHmrFlagsLog s6Step91EarlyControlClassPlan.equalityArena s6Step91EarlyControlClassPlan.equality.top 253 252 251 s6Step91EarlyControlLog.flagWork=some s6Step91EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step91EarlyControl_flagsOwned⟩
  · exact s6Step91EarlyControl_flagsBorrow

private theorem s6Step91EarlyControl_historyBorrow : s6Step91EarlyControlArena.checkBorrow ((34-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783] : List Wire).length)) s6Step91EarlyControlLog.recordFresh=some s6Step91EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step91EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step91EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step91EarlyControlArena s6Step91EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step91EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step91EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step91EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783] : List Wire).toFinset⊆s6Step91EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step91EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step91EarlyControl_history : compileHmrRecordGrowLog s6Step91EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783] 34 s6Step91EarlyControlLog.recordFresh=some s6Step91EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step91EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step91EarlyControl_historyBorrow

private theorem s6Step91EarlyControl_sigmaOwned : ([254, 874] : List Wire).toFinset⊆s6Step91EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step91EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step91EarlyControl_sigmaReleaseOwned : ([874] : List Wire).toFinset⊆s6Step91EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step91EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step91EarlyControl_sigmaRelease : s6Step91EarlyControlHistoryArena.release {874} (fun _ => false)=some s6Step91EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step91EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step91EarlyControlHistoryArena s6Step91EarlyControlSigmaArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,874),(875,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [874] rfl rfl
    decide +kernel

private theorem s6Step91EarlyControl_sigma : compileHmrSigmaDropLog s6Step91EarlyControlHistoryArena false 0 0 254 874 []=some s6Step91EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step91EarlyControl_sigmaOwned⟩
  · exact s6Step91EarlyControl_sigmaRelease

private theorem s6Step91EarlyControl_zeroBorrow : s6Step91EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step91EarlyControlLog.zeroWork=some s6Step91EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step91EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step91EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step91EarlyControlArena s6Step91EarlyControlZeroArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step91EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step91EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step91EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step91EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step91EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step91EarlyControl_zero : compileHmrEqualityLog s6Step91EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step91EarlyControlLog.zeroWork=some (s6Step91EarlyControlZeroArena,s6Step91EarlyControlLog.zeroWork,s6Step91EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step91EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step91EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step91EarlyControl_logged : s6Step91EarlyControlPlan.Logged s6Step91EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783] 769 874 254 253 252 251 857 34 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step91EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step91EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step91EarlyControl_zero
  · exact s6Step91EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step91EarlyControl_flags
  · exact s6Step91EarlyControl_fit
  · exact s6Step91EarlyControl_history
  · exact s6Step91EarlyControl_sigma
  · exact s6Step91EarlyControl_branch

private theorem s6Step91EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step91EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783] 769 874 254 253 252 251 857 34 s6Step91EarlyControlLog=some s6Step91EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step91EarlyControlPlan s6Step91EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783] 769 874 254 253 252 251 857 34 s6Step91EarlyControl_logged

private def s6Step91EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478],795⟩

private def s6Step91EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855],776⟩

private def s6Step91EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222],777⟩

private def s6Step91EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802],775⟩

private def s6Step91FrontBank : WindowBank := ⟨s6Step91EntryFRow,s6Step91EntryGRow,s6Step91EntryFvRow,s6Step91EntryGvRow⟩

private def s6Step91Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 813, 795]

private def s6Step91Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 858, 777]

private def s6Step91Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 776]

private def s6Step91Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 775]

private theorem s6Step91Counter_apart : Disjoint s6Step91HeadFvAfter.live s6Step91CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step91HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step91Counter_borrowed : s6Step91HeadFvAfter.checkBorrow 4 s6Step91CounterWork=some s6Step91CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step91HeadFvAfter s6Step91CounterDuring s6Step91CounterWork.toFinset s6Step91Counter_bounded s6Step91Counter_apart rfl

private theorem s6Step91Counter_owned : (874::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step91HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step91HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step91Counter_checked : compileHmrCounterStepLog s6Step91HeadFvAfter true 874 [774, 773, 772, 771, 770, 769] s6Step91CounterWork=some s6Step91CounterDuring := by
  have owned : ∀q∈874::[774, 773, 772, 771, 770, 769],q∈s6Step91HeadFvAfter.live := fun q hq => s6Step91Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step91Counter_borrowed

private def s6Step91EntryFAfter : Arena := s6Step91EntryFBefore

private theorem s6Step91EntryBank_incomingDistinct : ([s6Step91EntryFRow,s6Step91EntryGRow,s6Step91EntryFvRow,s6Step91EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step91EntryF_Incoming : rowsOwned s6Step91EntryFBefore [s6Step91EntryFRow,s6Step91EntryGRow,s6Step91EntryFvRow,s6Step91EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step91EntryFRow,s6Step91EntryGRow,s6Step91EntryFvRow,s6Step91EntryGvRow] 0 s6Step91EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step91EntryFBefore (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step91EntryBank_outgoingOwned : rowsOwned s6Step91EntryGvAfter [s6Step91EntryFOut,s6Step91EntryGOut,s6Step91EntryFvOut,s6Step91EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step91EntryGvAfter (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step91EntryF_Outgoing : rowsOwned s6Step91EntryGvAfter [s6Step91EntryFOut,s6Step91EntryGOut,s6Step91EntryFvOut,s6Step91EntryGvOut] :=
  hmrRows_owned_drop s6Step91EntryGvAfter [s6Step91EntryFOut,s6Step91EntryGOut,s6Step91EntryFvOut,s6Step91EntryGvOut] 0 s6Step91EntryBank_outgoingOwned

private theorem s6Step91EntryF_distinct : (s6Step91EntryFRow.sign::s6Step91EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step91EntryF_owned : (s6Step91EntryFRow.sign::s6Step91EntryFRow.payload).toFinset⊆s6Step91EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step91EntryFBefore (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step91EntryF_reserved : s6Step91EntryFBefore.reserve s6Step91EntryFFresh.toFinset=some s6Step91EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step91EntryFFresh,arenaWires]
  · norm_num [s6Step91EntryFBefore,s6Step91EntryFFresh,arenaWires]
  · simp only [s6Step91EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step91EntryF_checked : planRowResizeLog s6Step91EntryFBefore s6Step91EntryFRow 223 s6Step91EntryFFresh=
    some (s6Step91EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478],795⟩,growRow 795 s6Step91EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step91EntryFBefore s6Step91EntryFAfter s6Step91EntryFRow 223 s6Step91EntryFFresh
    s6Step91EntryF_distinct s6Step91EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step91EntryF_reserved
  have rowEq : WindowRow.mk (s6Step91EntryFRow.payload++s6Step91EntryFFresh) s6Step91EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step91EntryFvAfter : Arena := s6Step91EntryFBefore

private def s6Step91EntryFvBefore : Arena := s6Step91EntryFBefore

private theorem s6Step91EntryFv_Incoming : rowsOwned s6Step91EntryFvBefore [s6Step91EntryFvRow,s6Step91EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step91EntryFRow,s6Step91EntryGRow,s6Step91EntryFvRow,s6Step91EntryGvRow] 2 s6Step91EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step91EntryFvBefore (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step91EntryFv_Outgoing : rowsOwned s6Step91EntryGvAfter [s6Step91EntryFvOut,s6Step91EntryGvOut] :=
  hmrRows_owned_drop s6Step91EntryGvAfter [s6Step91EntryFOut,s6Step91EntryGOut,s6Step91EntryFvOut,s6Step91EntryGvOut] 2 s6Step91EntryBank_outgoingOwned

private theorem s6Step91EntryFv_distinct : (s6Step91EntryFvRow.sign::s6Step91EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step91EntryFv_owned : (s6Step91EntryFvRow.sign::s6Step91EntryFvRow.payload).toFinset⊆s6Step91EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step91EntryFvBefore (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step91EntryFv_reserved : s6Step91EntryFvBefore.reserve s6Step91EntryFvFresh.toFinset=some s6Step91EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step91EntryFvFresh,arenaWires]
  · norm_num [s6Step91EntryFvBefore,s6Step91EntryFBefore,s6Step91EntryFvFresh,arenaWires]
  · simp only [s6Step91EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step91EntryFv_checked : planRowResizeLog s6Step91EntryFvBefore s6Step91EntryFvRow 58 s6Step91EntryFvFresh=
    some (s6Step91EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855],776⟩,growRow 776 s6Step91EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step91EntryFvBefore s6Step91EntryFvAfter s6Step91EntryFvRow 58 s6Step91EntryFvFresh
    s6Step91EntryFv_distinct s6Step91EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step91EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step91EntryFvRow.payload++s6Step91EntryFvFresh) s6Step91EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step91EntryGAfter : Arena := s6Step91EntryFBefore

private def s6Step91EntryGBefore : Arena := s6Step91EntryFBefore

private theorem s6Step91EntryG_Incoming : rowsOwned s6Step91EntryGBefore [s6Step91EntryGRow,s6Step91EntryFvRow,s6Step91EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step91EntryFRow,s6Step91EntryGRow,s6Step91EntryFvRow,s6Step91EntryGvRow] 1 s6Step91EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step91EntryGBefore (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step91EntryG_Outgoing : rowsOwned s6Step91EntryGvAfter [s6Step91EntryGOut,s6Step91EntryFvOut,s6Step91EntryGvOut] :=
  hmrRows_owned_drop s6Step91EntryGvAfter [s6Step91EntryFOut,s6Step91EntryGOut,s6Step91EntryFvOut,s6Step91EntryGvOut] 1 s6Step91EntryBank_outgoingOwned

private theorem s6Step91EntryG_distinct : (s6Step91EntryGRow.sign::s6Step91EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step91EntryG_owned : (s6Step91EntryGRow.sign::s6Step91EntryGRow.payload).toFinset⊆s6Step91EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step91EntryGBefore (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step91EntryG_reserved : s6Step91EntryGBefore.reserve s6Step91EntryGFresh.toFinset=some s6Step91EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step91EntryGFresh,arenaWires]
  · norm_num [s6Step91EntryGBefore,s6Step91EntryFBefore,s6Step91EntryGFresh,arenaWires]
  · simp only [s6Step91EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step91EntryG_checked : planRowResizeLog s6Step91EntryGBefore s6Step91EntryGRow 223 s6Step91EntryGFresh=
    some (s6Step91EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222],777⟩,growRow 777 s6Step91EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step91EntryGBefore s6Step91EntryGAfter s6Step91EntryGRow 223 s6Step91EntryGFresh
    s6Step91EntryG_distinct s6Step91EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step91EntryG_reserved
  have rowEq : WindowRow.mk (s6Step91EntryGRow.payload++s6Step91EntryGFresh) s6Step91EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step91EntryGvBefore : Arena := s6Step91EntryFBefore

private theorem s6Step91EntryGv_Incoming : rowsOwned s6Step91EntryGvBefore [s6Step91EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step91EntryFRow,s6Step91EntryGRow,s6Step91EntryFvRow,s6Step91EntryGvRow] 3 s6Step91EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step91EntryGvBefore (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step91EntryGv_Outgoing : rowsOwned s6Step91EntryGvAfter [s6Step91EntryGvOut] :=
  hmrRows_owned_drop s6Step91EntryGvAfter [s6Step91EntryFOut,s6Step91EntryGOut,s6Step91EntryFvOut,s6Step91EntryGvOut] 3 s6Step91EntryBank_outgoingOwned

private theorem s6Step91EntryGv_distinct : (s6Step91EntryGvRow.sign::s6Step91EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step91EntryGv_owned : (s6Step91EntryGvRow.sign::s6Step91EntryGvRow.payload).toFinset⊆s6Step91EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step91EntryGvBefore (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step91EntryGv_reserved : s6Step91EntryGvBefore.reserve s6Step91EntryGvFresh.toFinset=some s6Step91EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step91EntryGvFresh,arenaWires]
  · norm_num [s6Step91EntryGvBefore,s6Step91EntryFBefore,s6Step91EntryGvFresh,arenaWires]
  · simp only [s6Step91EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step91EntryGv_checked : planRowResizeLog s6Step91EntryGvBefore s6Step91EntryGvRow 58 s6Step91EntryGvFresh=
    some (s6Step91EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802],775⟩,growRow 775 s6Step91EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step91EntryGvBefore s6Step91EntryGvAfter s6Step91EntryGvRow 58 s6Step91EntryGvFresh
    s6Step91EntryGv_distinct s6Step91EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step91EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step91EntryGvRow.payload++s6Step91EntryGvFresh) s6Step91EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step91EntryBank_rows : planWindowRowsLog s6Step91EntryFBefore [(s6Step91EntryFRow,223),(s6Step91EntryGRow,223),(s6Step91EntryFvRow,58),(s6Step91EntryGvRow,58)] [s6Step91EntryFFresh,s6Step91EntryGFresh,s6Step91EntryFvFresh,s6Step91EntryGvFresh]=
    some (s6Step91EntryGvAfter,[s6Step91EntryFOut,s6Step91EntryGOut,s6Step91EntryFvOut,s6Step91EntryGvOut],(growRow 795 s6Step91EntryFFresh ++ (growRow 777 s6Step91EntryGFresh ++ (growRow 776 s6Step91EntryFvFresh ++ (growRow 775 s6Step91EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step91EntryGvAfter [] []=some (s6Step91EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step91EntryGvBefore s6Step91EntryGvAfter s6Step91EntryGvAfter
    s6Step91EntryGvRow s6Step91EntryGvOut 58 s6Step91EntryGvFresh [] [] []
    (growRow 775 s6Step91EntryGvFresh) ([]) s6Step91EntryGv_Incoming s6Step91EntryGv_checked h4 s6Step91EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step91EntryFvBefore s6Step91EntryFvAfter s6Step91EntryGvAfter
    s6Step91EntryFvRow s6Step91EntryFvOut 58 s6Step91EntryFvFresh [(s6Step91EntryGvRow,58)] [s6Step91EntryGvFresh] [s6Step91EntryGvOut]
    (growRow 776 s6Step91EntryFvFresh) ((growRow 775 s6Step91EntryGvFresh ++ [])) s6Step91EntryFv_Incoming s6Step91EntryFv_checked h3 s6Step91EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step91EntryGBefore s6Step91EntryGAfter s6Step91EntryGvAfter
    s6Step91EntryGRow s6Step91EntryGOut 223 s6Step91EntryGFresh [(s6Step91EntryFvRow,58),(s6Step91EntryGvRow,58)] [s6Step91EntryFvFresh,s6Step91EntryGvFresh] [s6Step91EntryFvOut,s6Step91EntryGvOut]
    (growRow 777 s6Step91EntryGFresh) ((growRow 776 s6Step91EntryFvFresh ++ (growRow 775 s6Step91EntryGvFresh ++ []))) s6Step91EntryG_Incoming s6Step91EntryG_checked h2 s6Step91EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step91EntryFBefore s6Step91EntryFAfter s6Step91EntryGvAfter
    s6Step91EntryFRow s6Step91EntryFOut 223 s6Step91EntryFFresh [(s6Step91EntryGRow,223),(s6Step91EntryFvRow,58),(s6Step91EntryGvRow,58)] [s6Step91EntryGFresh,s6Step91EntryFvFresh,s6Step91EntryGvFresh] [s6Step91EntryGOut,s6Step91EntryFvOut,s6Step91EntryGvOut]
    (growRow 795 s6Step91EntryFFresh) ((growRow 777 s6Step91EntryGFresh ++ (growRow 776 s6Step91EntryFvFresh ++ (growRow 775 s6Step91EntryGvFresh ++ [])))) s6Step91EntryF_Incoming s6Step91EntryF_checked h1 s6Step91EntryF_Outgoing
  exact h0

private theorem s6Step91EntryBank_checked : compileHmrBankResizeLog .entry s6Step91EntryFBefore ⟨s6Step91EntryFRow,s6Step91EntryGRow,s6Step91EntryFvRow,s6Step91EntryGvRow⟩ ⟨223,223,58,58⟩ [s6Step91EntryFFresh,s6Step91EntryGFresh,s6Step91EntryFvFresh,s6Step91EntryGvFresh]=
    some (s6Step91EntryGvAfter,⟨s6Step91EntryFOut,s6Step91EntryGOut,s6Step91EntryFvOut,s6Step91EntryGvOut⟩,(growRow 795 s6Step91EntryFFresh ++ (growRow 777 s6Step91EntryGFresh ++ (growRow 776 s6Step91EntryFvFresh ++ (growRow 775 s6Step91EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step91EntryBank_rows]
  rfl

private def s6Step91ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,222),(223,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step91ExitFBefore : Arena := s6Step91ExitGAfter

private def s6Step91ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 813],795⟩

private def s6Step91ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780],776⟩

private def s6Step91ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 858],777⟩

private def s6Step91ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794],775⟩

private theorem s6Step91ExitBank_incomingDistinct : ([s6Step91ExitGRow,s6Step91ExitFRow,s6Step91ExitFvRow,s6Step91ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step91ExitF_Incoming : rowsOwned s6Step91ExitFBefore [s6Step91ExitFRow,s6Step91ExitFvRow,s6Step91ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step91ExitGRow,s6Step91ExitFRow,s6Step91ExitFvRow,s6Step91ExitGvRow] 1 s6Step91ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step91ExitFBefore (fun q => ([(0,222),(223,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step91ExitBank_outgoingOwned : rowsOwned s6Step91ExitGvAfter [s6Step91ExitGOut,s6Step91ExitFOut,s6Step91ExitFvOut,s6Step91ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step91ExitGvAfter (fun q => ([(0,222),(223,478),(479,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step91ExitF_Outgoing : rowsOwned s6Step91ExitGvAfter [s6Step91ExitFOut,s6Step91ExitFvOut,s6Step91ExitGvOut] :=
  hmrRows_owned_drop s6Step91ExitGvAfter [s6Step91ExitGOut,s6Step91ExitFOut,s6Step91ExitFvOut,s6Step91ExitGvOut] 1 s6Step91ExitBank_outgoingOwned

private theorem s6Step91ExitF_distinct : (s6Step91ExitFRow.sign::s6Step91ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step91ExitF_owned : (s6Step91ExitFRow.sign::s6Step91ExitFRow.payload).toFinset⊆s6Step91ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step91ExitFBefore (fun q => ([(0,222),(223,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step91ExitF_retired : s6Step91ExitFBefore.retireSet s6Step91ExitFExtra.toFinset=s6Step91ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step91ExitFBefore s6Step91ExitFAfter s6Step91ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step91ExitFBefore s6Step91ExitFAfter (fun q => ([(0,222),(223,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,222),(223,478),(479,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step91ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step91ExitF_checked : planRowResizeLog s6Step91ExitFBefore s6Step91ExitFRow 222 []=
    some (s6Step91ExitFAfter,s6Step91ExitFOut,shrinkRow 795 s6Step91ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step91ExitFBefore s6Step91ExitFRow 222 s6Step91ExitF_distinct s6Step91ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step91ExitFRow.payload.take 222) s6Step91ExitFRow.sign=s6Step91ExitFOut := by decide +kernel
  have hi : s6Step91ExitFRow.payload.drop 222=s6Step91ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step91ExitF_retired] at result
  exact result

private def s6Step91ExitFvAfter : Arena := s6Step91ExitFAfter

private def s6Step91ExitFvBefore : Arena := s6Step91ExitFAfter

private theorem s6Step91ExitFv_Incoming : rowsOwned s6Step91ExitFvBefore [s6Step91ExitFvRow,s6Step91ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step91ExitGRow,s6Step91ExitFRow,s6Step91ExitFvRow,s6Step91ExitGvRow] 2 s6Step91ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step91ExitFvBefore (fun q => ([(0,222),(223,478),(479,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step91ExitFv_Outgoing : rowsOwned s6Step91ExitGvAfter [s6Step91ExitFvOut,s6Step91ExitGvOut] :=
  hmrRows_owned_drop s6Step91ExitGvAfter [s6Step91ExitGOut,s6Step91ExitFOut,s6Step91ExitFvOut,s6Step91ExitGvOut] 2 s6Step91ExitBank_outgoingOwned

private theorem s6Step91ExitFv_distinct : (s6Step91ExitFvRow.sign::s6Step91ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step91ExitFv_owned : (s6Step91ExitFvRow.sign::s6Step91ExitFvRow.payload).toFinset⊆s6Step91ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step91ExitFvBefore (fun q => ([(0,222),(223,478),(479,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step91ExitFv_reserved : s6Step91ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step91ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step91ExitFv_checked : planRowResizeLog s6Step91ExitFvBefore s6Step91ExitFvRow 59 []=
    some (s6Step91ExitFvAfter,s6Step91ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step91ExitFvBefore s6Step91ExitFvAfter s6Step91ExitFvRow 59 []
    s6Step91ExitFv_distinct s6Step91ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step91ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step91ExitFvRow.payload++[]) s6Step91ExitFvRow.sign=s6Step91ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step91ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step91ExitG_Incoming : rowsOwned s6Step91ExitGBefore [s6Step91ExitGRow,s6Step91ExitFRow,s6Step91ExitFvRow,s6Step91ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step91ExitGRow,s6Step91ExitFRow,s6Step91ExitFvRow,s6Step91ExitGvRow] 0 s6Step91ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step91ExitGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step91ExitG_Outgoing : rowsOwned s6Step91ExitGvAfter [s6Step91ExitGOut,s6Step91ExitFOut,s6Step91ExitFvOut,s6Step91ExitGvOut] :=
  hmrRows_owned_drop s6Step91ExitGvAfter [s6Step91ExitGOut,s6Step91ExitFOut,s6Step91ExitFvOut,s6Step91ExitGvOut] 0 s6Step91ExitBank_outgoingOwned

private theorem s6Step91ExitG_distinct : (s6Step91ExitGRow.sign::s6Step91ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step91ExitG_owned : (s6Step91ExitGRow.sign::s6Step91ExitGRow.payload).toFinset⊆s6Step91ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step91ExitGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step91ExitG_retired : s6Step91ExitGBefore.retireSet s6Step91ExitGExtra.toFinset=s6Step91ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step91ExitGBefore s6Step91ExitGAfter s6Step91ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step91ExitGBefore s6Step91ExitGAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,222),(223,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step91ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step91ExitG_checked : planRowResizeLog s6Step91ExitGBefore s6Step91ExitGRow 222 []=
    some (s6Step91ExitGAfter,s6Step91ExitGOut,shrinkRow 777 s6Step91ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step91ExitGBefore s6Step91ExitGRow 222 s6Step91ExitG_distinct s6Step91ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step91ExitGRow.payload.take 222) s6Step91ExitGRow.sign=s6Step91ExitGOut := by decide +kernel
  have hi : s6Step91ExitGRow.payload.drop 222=s6Step91ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step91ExitG_retired] at result
  exact result

private def s6Step91ExitGvBefore : Arena := s6Step91ExitFAfter

private theorem s6Step91ExitGv_Incoming : rowsOwned s6Step91ExitGvBefore [s6Step91ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step91ExitGRow,s6Step91ExitFRow,s6Step91ExitFvRow,s6Step91ExitGvRow] 3 s6Step91ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step91ExitGvBefore (fun q => ([(0,222),(223,478),(479,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step91ExitGv_Outgoing : rowsOwned s6Step91ExitGvAfter [s6Step91ExitGvOut] :=
  hmrRows_owned_drop s6Step91ExitGvAfter [s6Step91ExitGOut,s6Step91ExitFOut,s6Step91ExitFvOut,s6Step91ExitGvOut] 3 s6Step91ExitBank_outgoingOwned

private theorem s6Step91ExitGv_distinct : (s6Step91ExitGvRow.sign::s6Step91ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step91ExitGv_owned : (s6Step91ExitGvRow.sign::s6Step91ExitGvRow.payload).toFinset⊆s6Step91ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step91ExitGvBefore (fun q => ([(0,222),(223,478),(479,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step91ExitGv_reserved : s6Step91ExitGvBefore.reserve (∅ : Finset Wire)=some s6Step91ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step91ExitGv_checked : planRowResizeLog s6Step91ExitGvBefore s6Step91ExitGvRow 59 []=
    some (s6Step91ExitGvAfter,s6Step91ExitGvOut,growRow 775 []) := by
  have result := planRowResizeLog_of_growth s6Step91ExitGvBefore s6Step91ExitGvAfter s6Step91ExitGvRow 59 []
    s6Step91ExitGv_distinct s6Step91ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step91ExitGv_reserved
  have rowEq : WindowRow.mk (s6Step91ExitGvRow.payload++[]) s6Step91ExitGvRow.sign=s6Step91ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step91ExitBank_rows : planWindowRowsLog s6Step91ExitGBefore [(s6Step91ExitGRow,222),(s6Step91ExitFRow,222),(s6Step91ExitFvRow,59),(s6Step91ExitGvRow,59)] [[],[],[],[]]=
    some (s6Step91ExitGvAfter,[s6Step91ExitGOut,s6Step91ExitFOut,s6Step91ExitFvOut,s6Step91ExitGvOut],(shrinkRow 777 s6Step91ExitGExtra ++ (shrinkRow 795 s6Step91ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  have h4 : planWindowRowsLog s6Step91ExitGvAfter [] []=some (s6Step91ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step91ExitGvBefore s6Step91ExitGvAfter s6Step91ExitGvAfter
    s6Step91ExitGvRow s6Step91ExitGvOut 59 [] [] [] []
    (growRow 775 []) ([]) s6Step91ExitGv_Incoming s6Step91ExitGv_checked h4 s6Step91ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step91ExitFvBefore s6Step91ExitFvAfter s6Step91ExitGvAfter
    s6Step91ExitFvRow s6Step91ExitFvOut 59 [] [(s6Step91ExitGvRow,59)] [[]] [s6Step91ExitGvOut]
    (growRow 776 []) ((growRow 775 [] ++ [])) s6Step91ExitFv_Incoming s6Step91ExitFv_checked h3 s6Step91ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step91ExitFBefore s6Step91ExitFAfter s6Step91ExitGvAfter
    s6Step91ExitFRow s6Step91ExitFOut 222 [] [(s6Step91ExitFvRow,59),(s6Step91ExitGvRow,59)] [[],[]] [s6Step91ExitFvOut,s6Step91ExitGvOut]
    (shrinkRow 795 s6Step91ExitFExtra) ((growRow 776 [] ++ (growRow 775 [] ++ []))) s6Step91ExitF_Incoming s6Step91ExitF_checked h2 s6Step91ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step91ExitGBefore s6Step91ExitGAfter s6Step91ExitGvAfter
    s6Step91ExitGRow s6Step91ExitGOut 222 [] [(s6Step91ExitFRow,222),(s6Step91ExitFvRow,59),(s6Step91ExitGvRow,59)] [[],[],[]] [s6Step91ExitFOut,s6Step91ExitFvOut,s6Step91ExitGvOut]
    (shrinkRow 777 s6Step91ExitGExtra) ((shrinkRow 795 s6Step91ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ [])))) s6Step91ExitG_Incoming s6Step91ExitG_checked h1 s6Step91ExitG_Outgoing
  exact h0

private theorem s6Step91ExitBank_checked : compileHmrBankResizeLog .exit s6Step91ExitGBefore ⟨s6Step91ExitFRow,s6Step91ExitGRow,s6Step91ExitFvRow,s6Step91ExitGvRow⟩ ⟨222,222,59,59⟩ [[],[],[],[]]=
    some (s6Step91ExitGvAfter,⟨s6Step91ExitFOut,s6Step91ExitGOut,s6Step91ExitFvOut,s6Step91ExitGvOut⟩,(shrinkRow 777 s6Step91ExitGExtra ++ (shrinkRow 795 s6Step91ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step91ExitBank_rows]
  rfl

private theorem s6Step91Add0_apart : Disjoint s6Step91Add0Arena.live s6Step91Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step91Add0Arena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step91Add0_card : s6Step91Add0Arena.live.card=869 := by
  decide +kernel

private theorem s6Step91Add0_borrowed : s6Step91Add0Arena.checkBorrow (hmrHybridCount s6Step91Add0Arena s6Step91Add0B.length) s6Step91Add0Work=some s6Step91Add0During := by
  have len : s6Step91Add0Work.length=hmrHybridCount s6Step91Add0Arena s6Step91Add0B.length := by
    rw [hmrHybridCount,s6Step91Add0_card]
    decide +kernel
  have nd : s6Step91Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step91Add0Arena s6Step91Add0During s6Step91Add0Work.toFinset s6Step91Add0_bounded s6Step91Add0_apart rfl

private theorem s6Step91Add0_distinct : (859::857::877::(s6Step91Add0A++s6Step91Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step91Add0_owned : (859::857::877::(s6Step91Add0A++s6Step91Add0B)).toFinset⊆s6Step91Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step91Add0Arena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step91Add0_checked : compileHmrHybridCinLog s6Step91Add0Arena 857 859 877 s6Step91Add0A s6Step91Add0B s6Step91Add0Work=some s6Step91Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step91Add0Arena s6Step91Add0During 857 859 877 s6Step91Add0A s6Step91Add0B s6Step91Add0Work
    (by decide +kernel) (by decide +kernel) s6Step91Add0_distinct
    (fun q hq => s6Step91Add0_owned (List.mem_toFinset.mpr hq)) s6Step91Add0_borrowed

private theorem s6Step91Add1_apart : Disjoint s6Step91Add1Arena.live s6Step91Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step91Add1Arena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step91Add1_card : s6Step91Add1Arena.live.card=869 := by
  decide +kernel

private theorem s6Step91Add1_borrowed : s6Step91Add1Arena.checkBorrow (hmrHybridCount s6Step91Add1Arena s6Step91Add1B.length) s6Step91Add1Work=some s6Step91Add1During := by
  have len : s6Step91Add1Work.length=hmrHybridCount s6Step91Add1Arena s6Step91Add1B.length := by
    rw [hmrHybridCount,s6Step91Add1_card]
    decide +kernel
  have nd : s6Step91Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step91Add1Arena s6Step91Add1During s6Step91Add1Work.toFinset s6Step91Add1_bounded s6Step91Add1_apart rfl

private theorem s6Step91Add1_distinct : (859::857::877::(s6Step91Add1A++s6Step91Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step91Add1_owned : (859::857::877::(s6Step91Add1A++s6Step91Add1B)).toFinset⊆s6Step91Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step91Add1Arena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step91Add1_checked : compileHmrHybridCinLog s6Step91Add1Arena 857 859 877 s6Step91Add1A s6Step91Add1B s6Step91Add1Work=some s6Step91Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step91Add1Arena s6Step91Add1During 857 859 877 s6Step91Add1A s6Step91Add1B s6Step91Add1Work
    (by decide +kernel) (by decide +kernel) s6Step91Add1_distinct
    (fun q hq => s6Step91Add1_owned (List.mem_toFinset.mpr hq)) s6Step91Add1_borrowed

private theorem s6Step91F4_apart : Disjoint (s6Step91Add0A++s6Step91Add0B).toFinset (s6Step91Add1A++s6Step91Add1B).toFinset := by
  have nd : ((s6Step91Add0A++s6Step91Add0B)++(s6Step91Add1A++s6Step91Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step91F4_carry : s6Step91F4FlagArena.checkBorrow 1 [877]=some s6Step91Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step91F4FlagArena,s6Step91HeadFvAfter,arenaWires]
  · change s6Step91Add0Arena.live=(s6Step91HeadFvAfter.live∪{859})∪{877}
    apply hmrArena_union_pair_of_filter_check s6Step91HeadFvAfter s6Step91Add0Arena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 859 877 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step91F4_distinct : (874::857::859::877::((s6Step91Add0A++s6Step91Add1A)++(s6Step91Add0B++s6Step91Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step91F4_flag : s6Step91HeadFvAfter.checkBorrow 1 [859]=some s6Step91F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step91HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step91F4_owned : (874::857::((s6Step91Add0A++s6Step91Add1A)++(s6Step91Add0B++s6Step91Add1B))).toFinset⊆s6Step91HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step91HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step91F4_checked : compileHmrHybridF4Log s6Step91HeadFvAfter 874 857 s6Step91Add0A s6Step91Add0B s6Step91Add1A s6Step91Add1B [859] [877] s6Step91Add0Work s6Step91Add1Work=some s6Step91F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step91HeadFvAfter s6Step91F4FlagArena s6Step91Add0Arena s6Step91Add0During s6Step91Add1During 874 857
    s6Step91Add0A s6Step91Add0B s6Step91Add1A s6Step91Add1B [859] [877] s6Step91Add0Work s6Step91Add1Work
    (fun q hq => s6Step91F4_owned (List.mem_toFinset.mpr hq)) s6Step91F4_flag s6Step91F4_carry
    s6Step91F4_distinct s6Step91F4_apart s6Step91Add0_checked s6Step91Add1_checked

private theorem s6Step91Front_branch : s6Step91FrontSigmaArena.checkBorrow 1 [857]=some s6Step91HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step91FrontSigmaArena,s6Step91EntryGvAfter,s6Step91EntryFBefore,arenaWires]
  · change s6Step91HeadGBefore.live=(s6Step91EntryGvAfter.live∪{874})∪{857}
    apply hmrArena_union_pair_of_filter_check s6Step91EntryGvAfter s6Step91HeadGBefore (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 874 857 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step91Front_entry : HmrFrontEntryValid s6Step91EntryFBefore s6Step91FrontBank 223 58 ⟨222,222,59,59⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step91FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step91EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step91EntryFBefore (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step91FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step91Front_sigma : s6Step91EntryGvAfter.checkBorrow 1 [874]=some s6Step91FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step91EntryGvAfter,s6Step91EntryFBefore,arenaWires]
  · rfl

private def s6Step91HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step91HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step91HeadFBefore : Arena := s6Step91HeadGAfter

private def s6Step91HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478],795⟩

private def s6Step91HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855],776⟩

private def s6Step91HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222],777⟩

private def s6Step91HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802],775⟩

private theorem s6Step91HeadBank_incomingDistinct : ([s6Step91HeadGRow,s6Step91HeadFRow,s6Step91HeadGvRow,s6Step91HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step91HeadF_Incoming : rowsOwned s6Step91HeadFBefore [s6Step91HeadFRow,s6Step91HeadGvRow,s6Step91HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step91HeadGRow,s6Step91HeadFRow,s6Step91HeadGvRow,s6Step91HeadFvRow] 1 s6Step91HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step91HeadFBefore (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step91HeadBank_outgoingOwned : rowsOwned s6Step91HeadFvAfter [s6Step91HeadGOut,s6Step91HeadFOut,s6Step91HeadGvOut,s6Step91HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step91HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step91HeadF_Outgoing : rowsOwned s6Step91HeadFvAfter [s6Step91HeadFOut,s6Step91HeadGvOut,s6Step91HeadFvOut] :=
  hmrRows_owned_drop s6Step91HeadFvAfter [s6Step91HeadGOut,s6Step91HeadFOut,s6Step91HeadGvOut,s6Step91HeadFvOut] 1 s6Step91HeadBank_outgoingOwned

private theorem s6Step91HeadF_distinct : (s6Step91HeadFRow.sign::s6Step91HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step91HeadF_owned : (s6Step91HeadFRow.sign::s6Step91HeadFRow.payload).toFinset⊆s6Step91HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step91HeadFBefore (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step91HeadF_reserved : s6Step91HeadFBefore.reserve s6Step91HeadFFresh.toFinset=some s6Step91HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step91HeadFFresh,arenaWires]
  · norm_num [s6Step91HeadFBefore,s6Step91HeadGAfter,s6Step91HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step91HeadFBefore s6Step91HeadFAfter (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step91HeadFFresh rfl rfl
    · norm_num [s6Step91HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step91HeadF_checked : planRowResizeLog s6Step91HeadFBefore s6Step91HeadFRow 224 s6Step91HeadFFresh=
    some (s6Step91HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 813],795⟩,growRow 795 s6Step91HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step91HeadFBefore s6Step91HeadFAfter s6Step91HeadFRow 224 s6Step91HeadFFresh
    s6Step91HeadF_distinct s6Step91HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step91HeadF_reserved
  have rowEq : WindowRow.mk (s6Step91HeadFRow.payload++s6Step91HeadFFresh) s6Step91HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 813],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step91HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step91HeadFvBefore : Arena := s6Step91HeadGvAfter

private theorem s6Step91HeadFv_Incoming : rowsOwned s6Step91HeadFvBefore [s6Step91HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step91HeadGRow,s6Step91HeadFRow,s6Step91HeadGvRow,s6Step91HeadFvRow] 3 s6Step91HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step91HeadFvBefore (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step91HeadFv_Outgoing : rowsOwned s6Step91HeadFvAfter [s6Step91HeadFvOut] :=
  hmrRows_owned_drop s6Step91HeadFvAfter [s6Step91HeadGOut,s6Step91HeadFOut,s6Step91HeadGvOut,s6Step91HeadFvOut] 3 s6Step91HeadBank_outgoingOwned

private theorem s6Step91HeadFv_distinct : (s6Step91HeadFvRow.sign::s6Step91HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step91HeadFv_owned : (s6Step91HeadFvRow.sign::s6Step91HeadFvRow.payload).toFinset⊆s6Step91HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step91HeadFvBefore (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step91HeadFv_reserved : s6Step91HeadFvBefore.reserve s6Step91HeadFvFresh.toFinset=some s6Step91HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step91HeadFvFresh,arenaWires]
  · norm_num [s6Step91HeadFvBefore,s6Step91HeadGvAfter,s6Step91HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step91HeadFvBefore s6Step91HeadFvAfter (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step91HeadFvFresh rfl rfl
    · norm_num [s6Step91HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step91HeadFv_checked : planRowResizeLog s6Step91HeadFvBefore s6Step91HeadFvRow 59 s6Step91HeadFvFresh=
    some (s6Step91HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780],776⟩,growRow 776 s6Step91HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step91HeadFvBefore s6Step91HeadFvAfter s6Step91HeadFvRow 59 s6Step91HeadFvFresh
    s6Step91HeadFv_distinct s6Step91HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step91HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step91HeadFvRow.payload++s6Step91HeadFvFresh) s6Step91HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step91HeadG_Incoming : rowsOwned s6Step91HeadGBefore [s6Step91HeadGRow,s6Step91HeadFRow,s6Step91HeadGvRow,s6Step91HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step91HeadGRow,s6Step91HeadFRow,s6Step91HeadGvRow,s6Step91HeadFvRow] 0 s6Step91HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step91HeadGBefore (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step91HeadG_Outgoing : rowsOwned s6Step91HeadFvAfter [s6Step91HeadGOut,s6Step91HeadFOut,s6Step91HeadGvOut,s6Step91HeadFvOut] :=
  hmrRows_owned_drop s6Step91HeadFvAfter [s6Step91HeadGOut,s6Step91HeadFOut,s6Step91HeadGvOut,s6Step91HeadFvOut] 0 s6Step91HeadBank_outgoingOwned

private theorem s6Step91HeadG_distinct : (s6Step91HeadGRow.sign::s6Step91HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step91HeadG_owned : (s6Step91HeadGRow.sign::s6Step91HeadGRow.payload).toFinset⊆s6Step91HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step91HeadGBefore (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step91HeadG_reserved : s6Step91HeadGBefore.reserve s6Step91HeadGFresh.toFinset=some s6Step91HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step91HeadGFresh,arenaWires]
  · norm_num [s6Step91HeadGBefore,s6Step91HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step91HeadGBefore s6Step91HeadGAfter (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step91HeadGFresh rfl rfl
    · norm_num [s6Step91HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step91HeadG_checked : planRowResizeLog s6Step91HeadGBefore s6Step91HeadGRow 224 s6Step91HeadGFresh=
    some (s6Step91HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 858],777⟩,growRow 777 s6Step91HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step91HeadGBefore s6Step91HeadGAfter s6Step91HeadGRow 224 s6Step91HeadGFresh
    s6Step91HeadG_distinct s6Step91HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step91HeadG_reserved
  have rowEq : WindowRow.mk (s6Step91HeadGRow.payload++s6Step91HeadGFresh) s6Step91HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 858],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step91HeadGvBefore : Arena := s6Step91HeadFAfter

private theorem s6Step91HeadGv_Incoming : rowsOwned s6Step91HeadGvBefore [s6Step91HeadGvRow,s6Step91HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step91HeadGRow,s6Step91HeadFRow,s6Step91HeadGvRow,s6Step91HeadFvRow] 2 s6Step91HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step91HeadGvBefore (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step91HeadGv_Outgoing : rowsOwned s6Step91HeadFvAfter [s6Step91HeadGvOut,s6Step91HeadFvOut] :=
  hmrRows_owned_drop s6Step91HeadFvAfter [s6Step91HeadGOut,s6Step91HeadFOut,s6Step91HeadGvOut,s6Step91HeadFvOut] 2 s6Step91HeadBank_outgoingOwned

private theorem s6Step91HeadGv_distinct : (s6Step91HeadGvRow.sign::s6Step91HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step91HeadGv_owned : (s6Step91HeadGvRow.sign::s6Step91HeadGvRow.payload).toFinset⊆s6Step91HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step91HeadGvBefore (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step91HeadGv_reserved : s6Step91HeadGvBefore.reserve s6Step91HeadGvFresh.toFinset=some s6Step91HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step91HeadGvFresh,arenaWires]
  · norm_num [s6Step91HeadGvBefore,s6Step91HeadFAfter,s6Step91HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step91HeadGvBefore s6Step91HeadGvAfter (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step91HeadGvFresh rfl rfl
    · norm_num [s6Step91HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step91HeadGv_checked : planRowResizeLog s6Step91HeadGvBefore s6Step91HeadGvRow 59 s6Step91HeadGvFresh=
    some (s6Step91HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794],775⟩,growRow 775 s6Step91HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step91HeadGvBefore s6Step91HeadGvAfter s6Step91HeadGvRow 59 s6Step91HeadGvFresh
    s6Step91HeadGv_distinct s6Step91HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step91HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step91HeadGvRow.payload++s6Step91HeadGvFresh) s6Step91HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step91HeadBank_rows : planWindowRowsLog s6Step91HeadGBefore [(s6Step91HeadGRow,224),(s6Step91HeadFRow,224),(s6Step91HeadGvRow,59),(s6Step91HeadFvRow,59)] [s6Step91HeadGFresh,s6Step91HeadFFresh,s6Step91HeadGvFresh,s6Step91HeadFvFresh]=
    some (s6Step91HeadFvAfter,[s6Step91HeadGOut,s6Step91HeadFOut,s6Step91HeadGvOut,s6Step91HeadFvOut],(growRow 777 s6Step91HeadGFresh ++ (growRow 795 s6Step91HeadFFresh ++ (growRow 775 s6Step91HeadGvFresh ++ (growRow 776 s6Step91HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step91HeadFvAfter [] []=some (s6Step91HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step91HeadFvBefore s6Step91HeadFvAfter s6Step91HeadFvAfter
    s6Step91HeadFvRow s6Step91HeadFvOut 59 s6Step91HeadFvFresh [] [] []
    (growRow 776 s6Step91HeadFvFresh) ([]) s6Step91HeadFv_Incoming s6Step91HeadFv_checked h4 s6Step91HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step91HeadGvBefore s6Step91HeadGvAfter s6Step91HeadFvAfter
    s6Step91HeadGvRow s6Step91HeadGvOut 59 s6Step91HeadGvFresh [(s6Step91HeadFvRow,59)] [s6Step91HeadFvFresh] [s6Step91HeadFvOut]
    (growRow 775 s6Step91HeadGvFresh) ((growRow 776 s6Step91HeadFvFresh ++ [])) s6Step91HeadGv_Incoming s6Step91HeadGv_checked h3 s6Step91HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step91HeadFBefore s6Step91HeadFAfter s6Step91HeadFvAfter
    s6Step91HeadFRow s6Step91HeadFOut 224 s6Step91HeadFFresh [(s6Step91HeadGvRow,59),(s6Step91HeadFvRow,59)] [s6Step91HeadGvFresh,s6Step91HeadFvFresh] [s6Step91HeadGvOut,s6Step91HeadFvOut]
    (growRow 795 s6Step91HeadFFresh) ((growRow 775 s6Step91HeadGvFresh ++ (growRow 776 s6Step91HeadFvFresh ++ []))) s6Step91HeadF_Incoming s6Step91HeadF_checked h2 s6Step91HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step91HeadGBefore s6Step91HeadGAfter s6Step91HeadFvAfter
    s6Step91HeadGRow s6Step91HeadGOut 224 s6Step91HeadGFresh [(s6Step91HeadFRow,224),(s6Step91HeadGvRow,59),(s6Step91HeadFvRow,59)] [s6Step91HeadFFresh,s6Step91HeadGvFresh,s6Step91HeadFvFresh] [s6Step91HeadFOut,s6Step91HeadGvOut,s6Step91HeadFvOut]
    (growRow 777 s6Step91HeadGFresh) ((growRow 795 s6Step91HeadFFresh ++ (growRow 775 s6Step91HeadGvFresh ++ (growRow 776 s6Step91HeadFvFresh ++ [])))) s6Step91HeadG_Incoming s6Step91HeadG_checked h1 s6Step91HeadG_Outgoing
  exact h0

private theorem s6Step91HeadBank_checked : compileHmrBankResizeLog .headroom s6Step91HeadGBefore ⟨s6Step91HeadFRow,s6Step91HeadGRow,s6Step91HeadFvRow,s6Step91HeadGvRow⟩ ⟨224,224,59,59⟩ [s6Step91HeadGFresh,s6Step91HeadFFresh,s6Step91HeadGvFresh,s6Step91HeadFvFresh]=
    some (s6Step91HeadFvAfter,⟨s6Step91HeadFOut,s6Step91HeadGOut,s6Step91HeadFvOut,s6Step91HeadGvOut⟩,(growRow 777 s6Step91HeadGFresh ++ (growRow 795 s6Step91HeadFFresh ++ (growRow 775 s6Step91HeadGvFresh ++ (growRow 776 s6Step91HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step91HeadBank_rows]
  rfl

private theorem s6Step91Front_checked : compileHmrSourceFrontLog s6Step91EntryFBefore s6Step91FrontBank 223 58 ⟨222,222,59,59⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step91FrontLog=some s6Step91FrontPlan := by
  have pairEq : s6Step91FrontPair=⟨s6Step91HeadFRow,s6Step91HeadGRow,s6Step91HeadFvRow,s6Step91HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step91FrontHead=⟨s6Step91ExitFRow,s6Step91ExitGRow,s6Step91ExitFvRow,s6Step91ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step91Add0A=s6Step91FrontHead.f.wires := by decide +kernel
  have gEq : s6Step91Add0B=s6Step91FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step91Add1A=s6Step91FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step91Add1B=s6Step91FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step91EntryFBefore s6Step91FrontBank 223 58 ⟨222,222,59,59⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step91FrontLog s6Step91FrontPlan
  · exact s6Step91Front_entry
  · exact s6Step91EntryBank_checked
  · exact s6Step91Front_sigma
  · rfl
  · exact s6Step91Front_branch
  · rfl
  · simpa only [s6Step91FrontPlan,pairEq] using s6Step91HeadBank_checked
  · simpa only [s6Step91FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step91F4_checked
  · exact s6Step91Counter_checked
  · rfl
  · simpa only [s6Step91FrontPlan,headEq] using s6Step91ExitBank_checked

private theorem s6Step91Complete_explicit_checked : compileHmrEarlyStepLog s6Step91EntryFBefore s6Step91FrontBank 223 58 ⟨222,222,59,59⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783] 34 s6Step91CompleteLog=some s6Step91CompletePlan := by
  let Q := s6Step91EarlyControlPlan
  have hq := s6Step91EarlyControl_plan_checked
  have fv1 : s6Step91CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step91CompleteOut.fv.payload[2]?.getD s6Step91CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step91CompleteOut.fv.payload[3]?.getD s6Step91CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step91CompleteOut.fv.payload[4]?.getD s6Step91CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step91EntryFBefore s6Step91EarlyControlArena s6Step91FrontBank 223 58 ⟨222,222,59,59⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783] 34 s6Step91CompleteLog s6Step91FrontPlan Q
    s6Step91Front_checked s6Step91Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step91Complete_owned s6Step91Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step91EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783] 769 874 s6Step91CompleteOut.fv.second (s6Step91CompleteOut.fv.payload[2]?.getD s6Step91CompleteOut.fv.sign) (s6Step91CompleteOut.fv.payload[3]?.getD s6Step91CompleteOut.fv.sign) (s6Step91CompleteOut.fv.payload[4]?.getD s6Step91CompleteOut.fv.sign) 857 34 s6Step91EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep91Arena : Arena := s6Step91EntryFBefore
def s6PrivateStep91Bank : WindowBank := s6Step91FrontBank
def s6PrivateStep91Spec : HmrSourceWalkStepLog := ⟨223,58,⟨222,222,59,59⟩,34,.early s6Step91CompleteLog⟩
def s6PrivateStep91Plan : HmrSourceStepPlan := .early s6Step91CompletePlan
theorem s6PrivateStep91_source : s6PrivateStep91Spec=s6ObservedLogs80[11] := rfl
theorem s6PrivateStep91_checked : compileHmrSourceStepLog s6PrivateStep91Arena s6PrivateStep91Bank
    s6PrivateStep91Spec.fgWidth s6PrivateStep91Spec.vWidth s6PrivateStep91Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783]
    6 498 91 s6PrivateStep91Spec.need none s6PrivateStep91Spec.log=some s6PrivateStep91Plan := by
  change compileHmrSourceStepLog s6Step91EntryFBefore s6Step91FrontBank 223 58 ⟨222,222,59,59⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783] 6 498 91 34 none (.early s6Step91CompleteLog)=some (.early s6Step91CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 91<498)]
  rw [s6Step91Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
