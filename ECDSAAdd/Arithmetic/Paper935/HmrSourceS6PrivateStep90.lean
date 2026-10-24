import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep88
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

private def s6Step90CompleteMoves : List (Wire × Wire) := [(858,479)]

private def s6Step90EarlyControlLog : HmrEarlyControlLog := ⟨[858, 813, 794, 780, 859],[877],[876],[881, 803, 922, 879, 784, 891],[783]⟩

private def s6Step90FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [859], [], []],[[877], [780], [813], [794]],[[], [], [], []]⟩,[857],[874],[876],[881],[803, 922, 879, 784, 891, 783, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[803, 922, 879, 784, 891, 783, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928],[876, 881, 803, 922]⟩

private def s6Step90CompleteLog : HmrEarlyStepLog := ⟨s6Step90FrontLog,s6Step90CompleteMoves,s6Step90EarlyControlLog⟩

private def s6Step90ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478],795⟩

private def s6Step90ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855],776⟩

private def s6Step90ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222],777⟩

private def s6Step90ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802],775⟩

private def s6Step90FrontOut : WindowBank := ⟨s6Step90ExitFOut,s6Step90ExitGOut,s6Step90ExitFvOut,s6Step90ExitGvOut⟩

private def s6Step90CompleteOut : WindowBank := s6Step90FrontOut.repacked s6Step90CompleteMoves

private def s6Step90EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step90EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step90EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step90EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step90EarlyControlPositiveArena,[877],s6Step90EarlyControlEqualityArena,[876],⟨⟨857,false⟩,[⟨⟨877,false⟩,876⟩]⟩⟩

private def s6Step90EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step90EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step90EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step90EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step90EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step90EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step90EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,858⟩,⟨⟨772,false⟩,813⟩,⟨⟨771,false⟩,794⟩,⟨⟨770,false⟩,780⟩,⟨⟨769,false⟩,859⟩]⟩

private def s6Step90EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step90EarlyControlZeroArena,s6Step90EarlyControlZeroPlan,s6Step90EarlyControlClassPlan,s6Step90EarlyControlFlagArena,s6Step90EarlyControlFittedArena,s6Step90EarlyControlHistoryArena,s6Step90EarlyControlSigmaArena,s6Step90EarlyControlOutputArena,s6Step90EarlyControlLog⟩

private def s6Step90CounterWork : List Wire := [876, 881, 803, 922]

private theorem s6Step90Counter_bounded : s6Step90CounterWork.toFinset⊆arenaWires := by norm_num [s6Step90CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step90HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step90CounterDuring : Arena := ⟨s6Step90HeadFvAfter.live∪s6Step90CounterWork.toFinset,Finset.union_subset s6Step90HeadFvAfter.bounded s6Step90Counter_bounded⟩

private def s6Step90EntryFFresh : List Wire := []

private def s6Step90EntryFvFresh : List Wire := []

private def s6Step90EntryGFresh : List Wire := [859]

private def s6Step90EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step90EntryGvAfter : Arena := s6Step90EntryGAfter

private def s6Step90EntryGvFresh : List Wire := []

private def s6Step90ExitFExtra : List Wire := [479, 780]

private def s6Step90ExitFvExtra : List Wire := [794]

private def s6Step90ExitGExtra : List Wire := [859, 877]

private def s6Step90ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,479),(480,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step90ExitGvExtra : List Wire := [813]

private def s6Step90Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step90Add0Work : List Wire := [803, 922, 879, 784, 891, 783, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step90Add0_bounded : s6Step90Add0Work.toFinset⊆arenaWires := by
  have h : s6Step90Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step90Add0During : Arena := ⟨s6Step90Add0Arena.live∪s6Step90Add0Work.toFinset,Finset.union_subset s6Step90Add0Arena.bounded s6Step90Add0_bounded⟩

private def s6Step90Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step90Add1Work : List Wire := [803, 922, 879, 784, 891, 783, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928]

private theorem s6Step90Add1_bounded : s6Step90Add1Work.toFinset⊆arenaWires := by
  have h : s6Step90Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step90Add1During : Arena := ⟨s6Step90Add1Arena.live∪s6Step90Add1Work.toFinset,Finset.union_subset s6Step90Add1Arena.bounded s6Step90Add1_bounded⟩

private def s6Step90F4FlagArena : Arena := ⟨s6Step90HeadFvAfter.live∪{876},Finset.union_subset s6Step90HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step90F4Plan : HmrHybridF4Plan := ⟨s6Step90F4FlagArena,[876],s6Step90Add0Arena,[881],s6Step90Add0During,s6Step90Add0Work,s6Step90Add1During,s6Step90Add1Work⟩

private def s6Step90HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 780],795⟩

private def s6Step90HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 794],776⟩

private def s6Step90HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 859, 877],777⟩

private def s6Step90HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 813],775⟩

private def s6Step90FrontHead : WindowBank := ⟨s6Step90HeadFOut,s6Step90HeadGOut,s6Step90HeadFvOut,s6Step90HeadGvOut⟩

private def s6Step90EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479],795⟩

private def s6Step90EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855],776⟩

private def s6Step90EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 859],777⟩

private def s6Step90EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802],775⟩

private def s6Step90FrontPair : WindowBank := ⟨s6Step90EntryFOut,s6Step90EntryGOut,s6Step90EntryFvOut,s6Step90EntryGvOut⟩

private def s6Step90FrontSigmaArena : Arena := ⟨s6Step90EntryGvAfter.live∪{857},Finset.union_subset s6Step90EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step90HeadFFresh : List Wire := [780]

private def s6Step90HeadFvFresh : List Wire := [794]

private def s6Step90HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step90HeadGFresh : List Wire := [877]

private def s6Step90HeadGvFresh : List Wire := [813]

private def s6Step90FrontPlan : HmrSourceFront := ⟨s6Step90EntryGvAfter,s6Step90FrontPair,(growRow 795 s6Step90EntryFFresh ++ (growRow 777 s6Step90EntryGFresh ++ (growRow 776 s6Step90EntryFvFresh ++ (growRow 775 s6Step90EntryGvFresh ++ [])))),s6Step90FrontSigmaArena,[857],s6Step90HeadGBefore,[874],
  s6Step90HeadFvAfter,s6Step90FrontHead,(growRow 777 s6Step90HeadGFresh ++ (growRow 795 s6Step90HeadFFresh ++ (growRow 775 s6Step90HeadGvFresh ++ (growRow 776 s6Step90HeadFvFresh ++ [])))),s6Step90F4Plan,s6Step90CounterDuring,s6Step90CounterWork,s6Step90ExitGvAfter,s6Step90FrontOut,(shrinkRow 777 s6Step90ExitGExtra ++ (shrinkRow 795 s6Step90ExitFExtra ++ (shrinkRow 776 s6Step90ExitFvExtra ++ (shrinkRow 775 s6Step90ExitGvExtra ++ []))))⟩

private def s6Step90CompletePlan : HmrEarlyStepPlan := ⟨s6Step90FrontPlan,s6Step90EarlyControlArena,s6Step90EarlyControlPlan,s6Step90CompleteMoves⟩

private theorem s6Step90Complete_apart : List.Disjoint (s6Step90CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [857, 874, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919] := by
  have nd : ((s6Step90CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[857, 874, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step90Complete_owned : (s6Step90CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step90EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step90EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step90CompleteRelocationMove0Borrowed : Arena := ⟨s6Step90ExitGvAfter.live∪{479},Finset.union_subset s6Step90ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step90CompleteRelocation_move0_owned : 858∈s6Step90ExitGvAfter.live := by norm_num [s6Step90ExitGvAfter,arenaWires]

private theorem s6Step90CompleteRelocation_move0_reserve : s6Step90ExitGvAfter.reserve {479}=some s6Step90CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step90ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step90CompleteRelocation_move0_retire : s6Step90CompleteRelocationMove0Borrowed.retireSet {858}=s6Step90EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step90CompleteRelocationMove0Borrowed s6Step90EarlyControlArena {858}
  change s6Step90EarlyControlArena.live=(s6Step90ExitGvAfter.live∪{479})\{858}
  apply hmrArena_update_of_filter_check s6Step90ExitGvAfter s6Step90EarlyControlArena (fun q => ([(0,479),(480,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [479] [858] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step90CompleteRelocation_checked : s6Step90ExitGvAfter.checkRepack [(858,479)]=some s6Step90EarlyControlArena := by
  have tail1 : s6Step90EarlyControlArena.checkRepack []=some s6Step90EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step90ExitGvAfter s6Step90CompleteRelocationMove0Borrowed s6Step90EarlyControlArena s6Step90EarlyControlArena 858 479 []
    s6Step90CompleteRelocation_move0_owned s6Step90CompleteRelocation_move0_reserve s6Step90CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step90Complete_repack : s6Step90ExitGvAfter.checkRepack s6Step90CompleteMoves=some s6Step90EarlyControlArena := by
  simpa only [s6Step90CompleteMoves] using s6Step90CompleteRelocation_checked

private theorem s6Step90EarlyControl_branchOwned : ([874] : List Wire).toFinset⊆s6Step90EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step90EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step90EarlyControl_branch : compileHmrBranchRetirement s6Step90EarlyControlSigmaArena 874=some s6Step90EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step90EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step90EarlyControlSigmaArena s6Step90EarlyControlOutputArena (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [874] rfl rfl
    decide +kernel

private theorem s6Step90EarlyControl_classEqualityBorrow : s6Step90EarlyControlPositiveArena.checkBorrow (([857, 877] : List Wire).length-1) s6Step90EarlyControlLog.classWork=some s6Step90EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step90EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step90EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step90EarlyControlPositiveArena s6Step90EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step90EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step90EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step90EarlyControl_classEqualityOwned : ([857, 877] : List Wire).toFinset⊆s6Step90EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step90EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step90EarlyControl_classEquality : compileHmrEqualityLog s6Step90EarlyControlPositiveArena [857, 877] 0 s6Step90EarlyControlLog.classWork=some (s6Step90EarlyControlEqualityArena,s6Step90EarlyControlLog.classWork,s6Step90EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step90EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step90EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step90EarlyControl_classOwned : ([769, 859, 857] : List Wire).toFinset⊆s6Step90EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step90EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step90EarlyControl_positiveBorrow : s6Step90EarlyControlZeroArena.checkBorrow (1) s6Step90EarlyControlLog.positiveWork=some s6Step90EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step90EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step90EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step90EarlyControlZeroArena s6Step90EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step90EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step90EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step90EarlyControl_class : compileHmrSourceClassLog s6Step90EarlyControlZeroArena false 769 s6Step90EarlyControlZeroPlan.top 0 857 s6Step90EarlyControlLog.positiveWork s6Step90EarlyControlLog.classWork=some s6Step90EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step90EarlyControlClassPlan s6Step90EarlyControlZeroArena false 769 s6Step90EarlyControlZeroPlan.top 0 857
  constructor
  · decide +kernel
  · exact s6Step90EarlyControl_classOwned
  · exact s6Step90EarlyControl_positiveBorrow
  · exact s6Step90EarlyControl_classEquality

private theorem s6Step90EarlyControl_entryRecordOwned : ([874, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919] : List Wire).toFinset⊆s6Step90EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step90EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step90EarlyControl_entrySigmaOwned : ([857, 254] : List Wire).toFinset⊆s6Step90EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step90EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step90EarlyControl_fitBorrow : s6Step90EarlyControlFlagArena.checkBorrow ((33-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919] : List Wire).length)) s6Step90EarlyControlLog.recordFresh=some s6Step90EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step90EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step90EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step90EarlyControlFittedArena,s6Step90EarlyControlFlagArena,s6Step90EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step90EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919] : List Wire).toFinset⊆s6Step90EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step90EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step90EarlyControl_fit : compileHmrRecordGrowLog s6Step90EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919] 33 s6Step90EarlyControlLog.recordFresh=some s6Step90EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step90EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step90EarlyControl_fitBorrow

private theorem s6Step90EarlyControl_flagsBorrow : s6Step90EarlyControlEqualityArena.checkBorrow (6) s6Step90EarlyControlLog.flagWork=some s6Step90EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step90EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step90EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step90EarlyControlEqualityArena s6Step90EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step90EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step90EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step90EarlyControl_flagsOwned : ([876, 253, 252, 251] : List Wire).toFinset⊆s6Step90EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step90EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step90EarlyControl_flags : compileHmrFlagsLog s6Step90EarlyControlClassPlan.equalityArena s6Step90EarlyControlClassPlan.equality.top 253 252 251 s6Step90EarlyControlLog.flagWork=some s6Step90EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step90EarlyControl_flagsOwned⟩
  · exact s6Step90EarlyControl_flagsBorrow

private theorem s6Step90EarlyControl_historyBorrow : s6Step90EarlyControlArena.checkBorrow ((33-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919] : List Wire).length)) s6Step90EarlyControlLog.recordFresh=some s6Step90EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step90EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step90EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step90EarlyControlArena s6Step90EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step90EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step90EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step90EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919] : List Wire).toFinset⊆s6Step90EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step90EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step90EarlyControl_history : compileHmrRecordGrowLog s6Step90EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919] 33 s6Step90EarlyControlLog.recordFresh=some s6Step90EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step90EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step90EarlyControl_historyBorrow

private theorem s6Step90EarlyControl_sigmaOwned : ([254, 857] : List Wire).toFinset⊆s6Step90EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step90EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step90EarlyControl_sigmaReleaseOwned : ([857] : List Wire).toFinset⊆s6Step90EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step90EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step90EarlyControl_sigmaRelease : s6Step90EarlyControlHistoryArena.release {857} (fun _ => false)=some s6Step90EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step90EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step90EarlyControlHistoryArena s6Step90EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(783,784),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [857] rfl rfl
    decide +kernel

private theorem s6Step90EarlyControl_sigma : compileHmrSigmaDropLog s6Step90EarlyControlHistoryArena false 0 0 254 857 []=some s6Step90EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step90EarlyControl_sigmaOwned⟩
  · exact s6Step90EarlyControl_sigmaRelease

private theorem s6Step90EarlyControl_zeroBorrow : s6Step90EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step90EarlyControlLog.zeroWork=some s6Step90EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step90EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step90EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step90EarlyControlArena s6Step90EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step90EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step90EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step90EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step90EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step90EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step90EarlyControl_zero : compileHmrEqualityLog s6Step90EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step90EarlyControlLog.zeroWork=some (s6Step90EarlyControlZeroArena,s6Step90EarlyControlLog.zeroWork,s6Step90EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step90EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step90EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step90EarlyControl_logged : s6Step90EarlyControlPlan.Logged s6Step90EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919] 769 857 254 253 252 251 874 33 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step90EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step90EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step90EarlyControl_zero
  · exact s6Step90EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step90EarlyControl_flags
  · exact s6Step90EarlyControl_fit
  · exact s6Step90EarlyControl_history
  · exact s6Step90EarlyControl_sigma
  · exact s6Step90EarlyControl_branch

private theorem s6Step90EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step90EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919] 769 857 254 253 252 251 874 33 s6Step90EarlyControlLog=some s6Step90EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step90EarlyControlPlan s6Step90EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919] 769 857 254 253 252 251 874 33 s6Step90EarlyControl_logged

private def s6Step90EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,859),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step90EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479],795⟩

private def s6Step90EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855],776⟩

private def s6Step90EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222],777⟩

private def s6Step90EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802],775⟩

private def s6Step90FrontBank : WindowBank := ⟨s6Step90EntryFRow,s6Step90EntryGRow,s6Step90EntryFvRow,s6Step90EntryGvRow⟩

private def s6Step90Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 780, 795]

private def s6Step90Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 859, 877, 777]

private def s6Step90Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 794, 776]

private def s6Step90Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 813, 775]

private theorem s6Step90Counter_apart : Disjoint s6Step90HeadFvAfter.live s6Step90CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step90HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step90Counter_borrowed : s6Step90HeadFvAfter.checkBorrow 4 s6Step90CounterWork=some s6Step90CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step90HeadFvAfter s6Step90CounterDuring s6Step90CounterWork.toFinset s6Step90Counter_bounded s6Step90Counter_apart rfl

private theorem s6Step90Counter_owned : (857::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step90HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step90HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step90Counter_checked : compileHmrCounterStepLog s6Step90HeadFvAfter true 857 [774, 773, 772, 771, 770, 769] s6Step90CounterWork=some s6Step90CounterDuring := by
  have owned : ∀q∈857::[774, 773, 772, 771, 770, 769],q∈s6Step90HeadFvAfter.live := fun q hq => s6Step90Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step90Counter_borrowed

private def s6Step90EntryFAfter : Arena := s6Step90EntryFBefore

private theorem s6Step90EntryBank_incomingDistinct : ([s6Step90EntryFRow,s6Step90EntryGRow,s6Step90EntryFvRow,s6Step90EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step90EntryF_Incoming : rowsOwned s6Step90EntryFBefore [s6Step90EntryFRow,s6Step90EntryGRow,s6Step90EntryFvRow,s6Step90EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step90EntryFRow,s6Step90EntryGRow,s6Step90EntryFvRow,s6Step90EntryGvRow] 0 s6Step90EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step90EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,859),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step90EntryBank_outgoingOwned : rowsOwned s6Step90EntryGvAfter [s6Step90EntryFOut,s6Step90EntryGOut,s6Step90EntryFvOut,s6Step90EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step90EntryGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step90EntryF_Outgoing : rowsOwned s6Step90EntryGvAfter [s6Step90EntryFOut,s6Step90EntryGOut,s6Step90EntryFvOut,s6Step90EntryGvOut] :=
  hmrRows_owned_drop s6Step90EntryGvAfter [s6Step90EntryFOut,s6Step90EntryGOut,s6Step90EntryFvOut,s6Step90EntryGvOut] 0 s6Step90EntryBank_outgoingOwned

private theorem s6Step90EntryF_distinct : (s6Step90EntryFRow.sign::s6Step90EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step90EntryF_owned : (s6Step90EntryFRow.sign::s6Step90EntryFRow.payload).toFinset⊆s6Step90EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step90EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,859),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step90EntryF_reserved : s6Step90EntryFBefore.reserve s6Step90EntryFFresh.toFinset=some s6Step90EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step90EntryFFresh,arenaWires]
  · norm_num [s6Step90EntryFBefore,s6Step90EntryFFresh,arenaWires]
  · simp only [s6Step90EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step90EntryF_checked : planRowResizeLog s6Step90EntryFBefore s6Step90EntryFRow 224 s6Step90EntryFFresh=
    some (s6Step90EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479],795⟩,growRow 795 s6Step90EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step90EntryFBefore s6Step90EntryFAfter s6Step90EntryFRow 224 s6Step90EntryFFresh
    s6Step90EntryF_distinct s6Step90EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step90EntryF_reserved
  have rowEq : WindowRow.mk (s6Step90EntryFRow.payload++s6Step90EntryFFresh) s6Step90EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step90EntryFvAfter : Arena := s6Step90EntryGAfter

private def s6Step90EntryFvBefore : Arena := s6Step90EntryGAfter

private theorem s6Step90EntryFv_Incoming : rowsOwned s6Step90EntryFvBefore [s6Step90EntryFvRow,s6Step90EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step90EntryFRow,s6Step90EntryGRow,s6Step90EntryFvRow,s6Step90EntryGvRow] 2 s6Step90EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step90EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step90EntryFv_Outgoing : rowsOwned s6Step90EntryGvAfter [s6Step90EntryFvOut,s6Step90EntryGvOut] :=
  hmrRows_owned_drop s6Step90EntryGvAfter [s6Step90EntryFOut,s6Step90EntryGOut,s6Step90EntryFvOut,s6Step90EntryGvOut] 2 s6Step90EntryBank_outgoingOwned

private theorem s6Step90EntryFv_distinct : (s6Step90EntryFvRow.sign::s6Step90EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step90EntryFv_owned : (s6Step90EntryFvRow.sign::s6Step90EntryFvRow.payload).toFinset⊆s6Step90EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step90EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step90EntryFv_reserved : s6Step90EntryFvBefore.reserve s6Step90EntryFvFresh.toFinset=some s6Step90EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step90EntryFvFresh,arenaWires]
  · norm_num [s6Step90EntryFvBefore,s6Step90EntryGAfter,s6Step90EntryFvFresh,arenaWires]
  · simp only [s6Step90EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step90EntryFv_checked : planRowResizeLog s6Step90EntryFvBefore s6Step90EntryFvRow 58 s6Step90EntryFvFresh=
    some (s6Step90EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855],776⟩,growRow 776 s6Step90EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step90EntryFvBefore s6Step90EntryFvAfter s6Step90EntryFvRow 58 s6Step90EntryFvFresh
    s6Step90EntryFv_distinct s6Step90EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step90EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step90EntryFvRow.payload++s6Step90EntryFvFresh) s6Step90EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step90EntryGBefore : Arena := s6Step90EntryFBefore

private theorem s6Step90EntryG_Incoming : rowsOwned s6Step90EntryGBefore [s6Step90EntryGRow,s6Step90EntryFvRow,s6Step90EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step90EntryFRow,s6Step90EntryGRow,s6Step90EntryFvRow,s6Step90EntryGvRow] 1 s6Step90EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step90EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,859),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step90EntryG_Outgoing : rowsOwned s6Step90EntryGvAfter [s6Step90EntryGOut,s6Step90EntryFvOut,s6Step90EntryGvOut] :=
  hmrRows_owned_drop s6Step90EntryGvAfter [s6Step90EntryFOut,s6Step90EntryGOut,s6Step90EntryFvOut,s6Step90EntryGvOut] 1 s6Step90EntryBank_outgoingOwned

private theorem s6Step90EntryG_distinct : (s6Step90EntryGRow.sign::s6Step90EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step90EntryG_owned : (s6Step90EntryGRow.sign::s6Step90EntryGRow.payload).toFinset⊆s6Step90EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step90EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,859),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step90EntryG_reserved : s6Step90EntryGBefore.reserve s6Step90EntryGFresh.toFinset=some s6Step90EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step90EntryGFresh,arenaWires]
  · norm_num [s6Step90EntryGBefore,s6Step90EntryFBefore,s6Step90EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step90EntryGBefore s6Step90EntryGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,859),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step90EntryGFresh rfl rfl
    · norm_num [s6Step90EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step90EntryG_checked : planRowResizeLog s6Step90EntryGBefore s6Step90EntryGRow 224 s6Step90EntryGFresh=
    some (s6Step90EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 859],777⟩,growRow 777 s6Step90EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step90EntryGBefore s6Step90EntryGAfter s6Step90EntryGRow 224 s6Step90EntryGFresh
    s6Step90EntryG_distinct s6Step90EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step90EntryG_reserved
  have rowEq : WindowRow.mk (s6Step90EntryGRow.payload++s6Step90EntryGFresh) s6Step90EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 859],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step90EntryGvBefore : Arena := s6Step90EntryGAfter

private theorem s6Step90EntryGv_Incoming : rowsOwned s6Step90EntryGvBefore [s6Step90EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step90EntryFRow,s6Step90EntryGRow,s6Step90EntryFvRow,s6Step90EntryGvRow] 3 s6Step90EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step90EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step90EntryGv_Outgoing : rowsOwned s6Step90EntryGvAfter [s6Step90EntryGvOut] :=
  hmrRows_owned_drop s6Step90EntryGvAfter [s6Step90EntryFOut,s6Step90EntryGOut,s6Step90EntryFvOut,s6Step90EntryGvOut] 3 s6Step90EntryBank_outgoingOwned

private theorem s6Step90EntryGv_distinct : (s6Step90EntryGvRow.sign::s6Step90EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step90EntryGv_owned : (s6Step90EntryGvRow.sign::s6Step90EntryGvRow.payload).toFinset⊆s6Step90EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step90EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step90EntryGv_reserved : s6Step90EntryGvBefore.reserve s6Step90EntryGvFresh.toFinset=some s6Step90EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step90EntryGvFresh,arenaWires]
  · norm_num [s6Step90EntryGvBefore,s6Step90EntryGAfter,s6Step90EntryGvFresh,arenaWires]
  · simp only [s6Step90EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step90EntryGv_checked : planRowResizeLog s6Step90EntryGvBefore s6Step90EntryGvRow 58 s6Step90EntryGvFresh=
    some (s6Step90EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802],775⟩,growRow 775 s6Step90EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step90EntryGvBefore s6Step90EntryGvAfter s6Step90EntryGvRow 58 s6Step90EntryGvFresh
    s6Step90EntryGv_distinct s6Step90EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step90EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step90EntryGvRow.payload++s6Step90EntryGvFresh) s6Step90EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step90EntryBank_rows : planWindowRowsLog s6Step90EntryFBefore [(s6Step90EntryFRow,224),(s6Step90EntryGRow,224),(s6Step90EntryFvRow,58),(s6Step90EntryGvRow,58)] [s6Step90EntryFFresh,s6Step90EntryGFresh,s6Step90EntryFvFresh,s6Step90EntryGvFresh]=
    some (s6Step90EntryGvAfter,[s6Step90EntryFOut,s6Step90EntryGOut,s6Step90EntryFvOut,s6Step90EntryGvOut],(growRow 795 s6Step90EntryFFresh ++ (growRow 777 s6Step90EntryGFresh ++ (growRow 776 s6Step90EntryFvFresh ++ (growRow 775 s6Step90EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step90EntryGvAfter [] []=some (s6Step90EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step90EntryGvBefore s6Step90EntryGvAfter s6Step90EntryGvAfter
    s6Step90EntryGvRow s6Step90EntryGvOut 58 s6Step90EntryGvFresh [] [] []
    (growRow 775 s6Step90EntryGvFresh) ([]) s6Step90EntryGv_Incoming s6Step90EntryGv_checked h4 s6Step90EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step90EntryFvBefore s6Step90EntryFvAfter s6Step90EntryGvAfter
    s6Step90EntryFvRow s6Step90EntryFvOut 58 s6Step90EntryFvFresh [(s6Step90EntryGvRow,58)] [s6Step90EntryGvFresh] [s6Step90EntryGvOut]
    (growRow 776 s6Step90EntryFvFresh) ((growRow 775 s6Step90EntryGvFresh ++ [])) s6Step90EntryFv_Incoming s6Step90EntryFv_checked h3 s6Step90EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step90EntryGBefore s6Step90EntryGAfter s6Step90EntryGvAfter
    s6Step90EntryGRow s6Step90EntryGOut 224 s6Step90EntryGFresh [(s6Step90EntryFvRow,58),(s6Step90EntryGvRow,58)] [s6Step90EntryFvFresh,s6Step90EntryGvFresh] [s6Step90EntryFvOut,s6Step90EntryGvOut]
    (growRow 777 s6Step90EntryGFresh) ((growRow 776 s6Step90EntryFvFresh ++ (growRow 775 s6Step90EntryGvFresh ++ []))) s6Step90EntryG_Incoming s6Step90EntryG_checked h2 s6Step90EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step90EntryFBefore s6Step90EntryFAfter s6Step90EntryGvAfter
    s6Step90EntryFRow s6Step90EntryFOut 224 s6Step90EntryFFresh [(s6Step90EntryGRow,224),(s6Step90EntryFvRow,58),(s6Step90EntryGvRow,58)] [s6Step90EntryGFresh,s6Step90EntryFvFresh,s6Step90EntryGvFresh] [s6Step90EntryGOut,s6Step90EntryFvOut,s6Step90EntryGvOut]
    (growRow 795 s6Step90EntryFFresh) ((growRow 777 s6Step90EntryGFresh ++ (growRow 776 s6Step90EntryFvFresh ++ (growRow 775 s6Step90EntryGvFresh ++ [])))) s6Step90EntryF_Incoming s6Step90EntryF_checked h1 s6Step90EntryF_Outgoing
  exact h0

private theorem s6Step90EntryBank_checked : compileHmrBankResizeLog .entry s6Step90EntryFBefore ⟨s6Step90EntryFRow,s6Step90EntryGRow,s6Step90EntryFvRow,s6Step90EntryGvRow⟩ ⟨224,224,58,58⟩ [s6Step90EntryFFresh,s6Step90EntryGFresh,s6Step90EntryFvFresh,s6Step90EntryGvFresh]=
    some (s6Step90EntryGvAfter,⟨s6Step90EntryFOut,s6Step90EntryGOut,s6Step90EntryFvOut,s6Step90EntryGvOut⟩,(growRow 795 s6Step90EntryFFresh ++ (growRow 777 s6Step90EntryGFresh ++ (growRow 776 s6Step90EntryFvFresh ++ (growRow 775 s6Step90EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step90EntryBank_rows]
  rfl

private def s6Step90ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,479),(480,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step90ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step90ExitFBefore : Arena := s6Step90ExitGAfter

private def s6Step90ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 780],795⟩

private def s6Step90ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 794],776⟩

private def s6Step90ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 859, 877],777⟩

private def s6Step90ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 813],775⟩

private theorem s6Step90ExitBank_incomingDistinct : ([s6Step90ExitGRow,s6Step90ExitFRow,s6Step90ExitFvRow,s6Step90ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step90ExitF_Incoming : rowsOwned s6Step90ExitFBefore [s6Step90ExitFRow,s6Step90ExitFvRow,s6Step90ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step90ExitGRow,s6Step90ExitFRow,s6Step90ExitFvRow,s6Step90ExitGvRow] 1 s6Step90ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step90ExitFBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step90ExitBank_outgoingOwned : rowsOwned s6Step90ExitGvAfter [s6Step90ExitGOut,s6Step90ExitFOut,s6Step90ExitFvOut,s6Step90ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step90ExitGvAfter (fun q => ([(0,479),(480,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step90ExitF_Outgoing : rowsOwned s6Step90ExitGvAfter [s6Step90ExitFOut,s6Step90ExitFvOut,s6Step90ExitGvOut] :=
  hmrRows_owned_drop s6Step90ExitGvAfter [s6Step90ExitGOut,s6Step90ExitFOut,s6Step90ExitFvOut,s6Step90ExitGvOut] 1 s6Step90ExitBank_outgoingOwned

private theorem s6Step90ExitF_distinct : (s6Step90ExitFRow.sign::s6Step90ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step90ExitF_owned : (s6Step90ExitFRow.sign::s6Step90ExitFRow.payload).toFinset⊆s6Step90ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step90ExitFBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step90ExitF_retired : s6Step90ExitFBefore.retireSet s6Step90ExitFExtra.toFinset=s6Step90ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step90ExitFBefore s6Step90ExitFAfter s6Step90ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step90ExitFBefore s6Step90ExitFAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,479),(480,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step90ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step90ExitF_checked : planRowResizeLog s6Step90ExitFBefore s6Step90ExitFRow 223 []=
    some (s6Step90ExitFAfter,s6Step90ExitFOut,shrinkRow 795 s6Step90ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step90ExitFBefore s6Step90ExitFRow 223 s6Step90ExitF_distinct s6Step90ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step90ExitFRow.payload.take 223) s6Step90ExitFRow.sign=s6Step90ExitFOut := by decide +kernel
  have hi : s6Step90ExitFRow.payload.drop 223=s6Step90ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step90ExitF_retired] at result
  exact result

private def s6Step90ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,479),(480,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step90ExitFvBefore : Arena := s6Step90ExitFAfter

private theorem s6Step90ExitFv_Incoming : rowsOwned s6Step90ExitFvBefore [s6Step90ExitFvRow,s6Step90ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step90ExitGRow,s6Step90ExitFRow,s6Step90ExitFvRow,s6Step90ExitGvRow] 2 s6Step90ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step90ExitFvBefore (fun q => ([(0,479),(480,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step90ExitFv_Outgoing : rowsOwned s6Step90ExitGvAfter [s6Step90ExitFvOut,s6Step90ExitGvOut] :=
  hmrRows_owned_drop s6Step90ExitGvAfter [s6Step90ExitGOut,s6Step90ExitFOut,s6Step90ExitFvOut,s6Step90ExitGvOut] 2 s6Step90ExitBank_outgoingOwned

private theorem s6Step90ExitFv_distinct : (s6Step90ExitFvRow.sign::s6Step90ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step90ExitFv_owned : (s6Step90ExitFvRow.sign::s6Step90ExitFvRow.payload).toFinset⊆s6Step90ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step90ExitFvBefore (fun q => ([(0,479),(480,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step90ExitFv_retired : s6Step90ExitFvBefore.retireSet s6Step90ExitFvExtra.toFinset=s6Step90ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step90ExitFvBefore s6Step90ExitFvAfter s6Step90ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step90ExitFvBefore s6Step90ExitFvAfter (fun q => ([(0,479),(480,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,479),(480,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step90ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step90ExitFv_checked : planRowResizeLog s6Step90ExitFvBefore s6Step90ExitFvRow 58 []=
    some (s6Step90ExitFvAfter,s6Step90ExitFvOut,shrinkRow 776 s6Step90ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step90ExitFvBefore s6Step90ExitFvRow 58 s6Step90ExitFv_distinct s6Step90ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step90ExitFvRow.payload.take 58) s6Step90ExitFvRow.sign=s6Step90ExitFvOut := by decide +kernel
  have hi : s6Step90ExitFvRow.payload.drop 58=s6Step90ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step90ExitFv_retired] at result
  exact result

private def s6Step90ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step90ExitG_Incoming : rowsOwned s6Step90ExitGBefore [s6Step90ExitGRow,s6Step90ExitFRow,s6Step90ExitFvRow,s6Step90ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step90ExitGRow,s6Step90ExitFRow,s6Step90ExitFvRow,s6Step90ExitGvRow] 0 s6Step90ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step90ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step90ExitG_Outgoing : rowsOwned s6Step90ExitGvAfter [s6Step90ExitGOut,s6Step90ExitFOut,s6Step90ExitFvOut,s6Step90ExitGvOut] :=
  hmrRows_owned_drop s6Step90ExitGvAfter [s6Step90ExitGOut,s6Step90ExitFOut,s6Step90ExitFvOut,s6Step90ExitGvOut] 0 s6Step90ExitBank_outgoingOwned

private theorem s6Step90ExitG_distinct : (s6Step90ExitGRow.sign::s6Step90ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step90ExitG_owned : (s6Step90ExitGRow.sign::s6Step90ExitGRow.payload).toFinset⊆s6Step90ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step90ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step90ExitG_retired : s6Step90ExitGBefore.retireSet s6Step90ExitGExtra.toFinset=s6Step90ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step90ExitGBefore s6Step90ExitGAfter s6Step90ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step90ExitGBefore s6Step90ExitGAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step90ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step90ExitG_checked : planRowResizeLog s6Step90ExitGBefore s6Step90ExitGRow 223 []=
    some (s6Step90ExitGAfter,s6Step90ExitGOut,shrinkRow 777 s6Step90ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step90ExitGBefore s6Step90ExitGRow 223 s6Step90ExitG_distinct s6Step90ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step90ExitGRow.payload.take 223) s6Step90ExitGRow.sign=s6Step90ExitGOut := by decide +kernel
  have hi : s6Step90ExitGRow.payload.drop 223=s6Step90ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step90ExitG_retired] at result
  exact result

private def s6Step90ExitGvBefore : Arena := s6Step90ExitFvAfter

private theorem s6Step90ExitGv_Incoming : rowsOwned s6Step90ExitGvBefore [s6Step90ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step90ExitGRow,s6Step90ExitFRow,s6Step90ExitFvRow,s6Step90ExitGvRow] 3 s6Step90ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step90ExitGvBefore (fun q => ([(0,479),(480,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step90ExitGv_Outgoing : rowsOwned s6Step90ExitGvAfter [s6Step90ExitGvOut] :=
  hmrRows_owned_drop s6Step90ExitGvAfter [s6Step90ExitGOut,s6Step90ExitFOut,s6Step90ExitFvOut,s6Step90ExitGvOut] 3 s6Step90ExitBank_outgoingOwned

private theorem s6Step90ExitGv_distinct : (s6Step90ExitGvRow.sign::s6Step90ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step90ExitGv_owned : (s6Step90ExitGvRow.sign::s6Step90ExitGvRow.payload).toFinset⊆s6Step90ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step90ExitGvBefore (fun q => ([(0,479),(480,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step90ExitGv_retired : s6Step90ExitGvBefore.retireSet s6Step90ExitGvExtra.toFinset=s6Step90ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step90ExitGvBefore s6Step90ExitGvAfter s6Step90ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step90ExitGvBefore s6Step90ExitGvAfter (fun q => ([(0,479),(480,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,479),(480,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step90ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step90ExitGv_checked : planRowResizeLog s6Step90ExitGvBefore s6Step90ExitGvRow 58 []=
    some (s6Step90ExitGvAfter,s6Step90ExitGvOut,shrinkRow 775 s6Step90ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step90ExitGvBefore s6Step90ExitGvRow 58 s6Step90ExitGv_distinct s6Step90ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step90ExitGvRow.payload.take 58) s6Step90ExitGvRow.sign=s6Step90ExitGvOut := by decide +kernel
  have hi : s6Step90ExitGvRow.payload.drop 58=s6Step90ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step90ExitGv_retired] at result
  exact result

private theorem s6Step90ExitBank_rows : planWindowRowsLog s6Step90ExitGBefore [(s6Step90ExitGRow,223),(s6Step90ExitFRow,223),(s6Step90ExitFvRow,58),(s6Step90ExitGvRow,58)] [[],[],[],[]]=
    some (s6Step90ExitGvAfter,[s6Step90ExitGOut,s6Step90ExitFOut,s6Step90ExitFvOut,s6Step90ExitGvOut],(shrinkRow 777 s6Step90ExitGExtra ++ (shrinkRow 795 s6Step90ExitFExtra ++ (shrinkRow 776 s6Step90ExitFvExtra ++ (shrinkRow 775 s6Step90ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step90ExitGvAfter [] []=some (s6Step90ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step90ExitGvBefore s6Step90ExitGvAfter s6Step90ExitGvAfter
    s6Step90ExitGvRow s6Step90ExitGvOut 58 [] [] [] []
    (shrinkRow 775 s6Step90ExitGvExtra) ([]) s6Step90ExitGv_Incoming s6Step90ExitGv_checked h4 s6Step90ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step90ExitFvBefore s6Step90ExitFvAfter s6Step90ExitGvAfter
    s6Step90ExitFvRow s6Step90ExitFvOut 58 [] [(s6Step90ExitGvRow,58)] [[]] [s6Step90ExitGvOut]
    (shrinkRow 776 s6Step90ExitFvExtra) ((shrinkRow 775 s6Step90ExitGvExtra ++ [])) s6Step90ExitFv_Incoming s6Step90ExitFv_checked h3 s6Step90ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step90ExitFBefore s6Step90ExitFAfter s6Step90ExitGvAfter
    s6Step90ExitFRow s6Step90ExitFOut 223 [] [(s6Step90ExitFvRow,58),(s6Step90ExitGvRow,58)] [[],[]] [s6Step90ExitFvOut,s6Step90ExitGvOut]
    (shrinkRow 795 s6Step90ExitFExtra) ((shrinkRow 776 s6Step90ExitFvExtra ++ (shrinkRow 775 s6Step90ExitGvExtra ++ []))) s6Step90ExitF_Incoming s6Step90ExitF_checked h2 s6Step90ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step90ExitGBefore s6Step90ExitGAfter s6Step90ExitGvAfter
    s6Step90ExitGRow s6Step90ExitGOut 223 [] [(s6Step90ExitFRow,223),(s6Step90ExitFvRow,58),(s6Step90ExitGvRow,58)] [[],[],[]] [s6Step90ExitFOut,s6Step90ExitFvOut,s6Step90ExitGvOut]
    (shrinkRow 777 s6Step90ExitGExtra) ((shrinkRow 795 s6Step90ExitFExtra ++ (shrinkRow 776 s6Step90ExitFvExtra ++ (shrinkRow 775 s6Step90ExitGvExtra ++ [])))) s6Step90ExitG_Incoming s6Step90ExitG_checked h1 s6Step90ExitG_Outgoing
  exact h0

private theorem s6Step90ExitBank_checked : compileHmrBankResizeLog .exit s6Step90ExitGBefore ⟨s6Step90ExitFRow,s6Step90ExitGRow,s6Step90ExitFvRow,s6Step90ExitGvRow⟩ ⟨223,223,58,58⟩ [[],[],[],[]]=
    some (s6Step90ExitGvAfter,⟨s6Step90ExitFOut,s6Step90ExitGOut,s6Step90ExitFvOut,s6Step90ExitGvOut⟩,(shrinkRow 777 s6Step90ExitGExtra ++ (shrinkRow 795 s6Step90ExitFExtra ++ (shrinkRow 776 s6Step90ExitFvExtra ++ (shrinkRow 775 s6Step90ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step90ExitBank_rows]
  rfl

private theorem s6Step90Add0_apart : Disjoint s6Step90Add0Arena.live s6Step90Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step90Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step90Add0_card : s6Step90Add0Arena.live.card=870 := by
  decide +kernel

private theorem s6Step90Add0_borrowed : s6Step90Add0Arena.checkBorrow (hmrHybridCount s6Step90Add0Arena s6Step90Add0B.length) s6Step90Add0Work=some s6Step90Add0During := by
  have len : s6Step90Add0Work.length=hmrHybridCount s6Step90Add0Arena s6Step90Add0B.length := by
    rw [hmrHybridCount,s6Step90Add0_card]
    decide +kernel
  have nd : s6Step90Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step90Add0Arena s6Step90Add0During s6Step90Add0Work.toFinset s6Step90Add0_bounded s6Step90Add0_apart rfl

private theorem s6Step90Add0_distinct : (876::874::881::(s6Step90Add0A++s6Step90Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step90Add0_owned : (876::874::881::(s6Step90Add0A++s6Step90Add0B)).toFinset⊆s6Step90Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step90Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step90Add0_checked : compileHmrHybridCinLog s6Step90Add0Arena 874 876 881 s6Step90Add0A s6Step90Add0B s6Step90Add0Work=some s6Step90Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step90Add0Arena s6Step90Add0During 874 876 881 s6Step90Add0A s6Step90Add0B s6Step90Add0Work
    (by decide +kernel) (by decide +kernel) s6Step90Add0_distinct
    (fun q hq => s6Step90Add0_owned (List.mem_toFinset.mpr hq)) s6Step90Add0_borrowed

private theorem s6Step90Add1_apart : Disjoint s6Step90Add1Arena.live s6Step90Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step90Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step90Add1_card : s6Step90Add1Arena.live.card=870 := by
  decide +kernel

private theorem s6Step90Add1_borrowed : s6Step90Add1Arena.checkBorrow (hmrHybridCount s6Step90Add1Arena s6Step90Add1B.length) s6Step90Add1Work=some s6Step90Add1During := by
  have len : s6Step90Add1Work.length=hmrHybridCount s6Step90Add1Arena s6Step90Add1B.length := by
    rw [hmrHybridCount,s6Step90Add1_card]
    decide +kernel
  have nd : s6Step90Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step90Add1Arena s6Step90Add1During s6Step90Add1Work.toFinset s6Step90Add1_bounded s6Step90Add1_apart rfl

private theorem s6Step90Add1_distinct : (876::874::881::(s6Step90Add1A++s6Step90Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step90Add1_owned : (876::874::881::(s6Step90Add1A++s6Step90Add1B)).toFinset⊆s6Step90Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step90Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step90Add1_checked : compileHmrHybridCinLog s6Step90Add1Arena 874 876 881 s6Step90Add1A s6Step90Add1B s6Step90Add1Work=some s6Step90Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step90Add1Arena s6Step90Add1During 874 876 881 s6Step90Add1A s6Step90Add1B s6Step90Add1Work
    (by decide +kernel) (by decide +kernel) s6Step90Add1_distinct
    (fun q hq => s6Step90Add1_owned (List.mem_toFinset.mpr hq)) s6Step90Add1_borrowed

private theorem s6Step90F4_apart : Disjoint (s6Step90Add0A++s6Step90Add0B).toFinset (s6Step90Add1A++s6Step90Add1B).toFinset := by
  have nd : ((s6Step90Add0A++s6Step90Add0B)++(s6Step90Add1A++s6Step90Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step90F4_carry : s6Step90F4FlagArena.checkBorrow 1 [881]=some s6Step90Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step90F4FlagArena,s6Step90HeadFvAfter,arenaWires]
  · change s6Step90Add0Arena.live=(s6Step90HeadFvAfter.live∪{876})∪{881}
    apply hmrArena_union_pair_of_filter_check s6Step90HeadFvAfter s6Step90Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 876 881 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step90F4_distinct : (857::874::876::881::((s6Step90Add0A++s6Step90Add1A)++(s6Step90Add0B++s6Step90Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step90F4_flag : s6Step90HeadFvAfter.checkBorrow 1 [876]=some s6Step90F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step90HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step90F4_owned : (857::874::((s6Step90Add0A++s6Step90Add1A)++(s6Step90Add0B++s6Step90Add1B))).toFinset⊆s6Step90HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step90HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step90F4_checked : compileHmrHybridF4Log s6Step90HeadFvAfter 857 874 s6Step90Add0A s6Step90Add0B s6Step90Add1A s6Step90Add1B [876] [881] s6Step90Add0Work s6Step90Add1Work=some s6Step90F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step90HeadFvAfter s6Step90F4FlagArena s6Step90Add0Arena s6Step90Add0During s6Step90Add1During 857 874
    s6Step90Add0A s6Step90Add0B s6Step90Add1A s6Step90Add1B [876] [881] s6Step90Add0Work s6Step90Add1Work
    (fun q hq => s6Step90F4_owned (List.mem_toFinset.mpr hq)) s6Step90F4_flag s6Step90F4_carry
    s6Step90F4_distinct s6Step90F4_apart s6Step90Add0_checked s6Step90Add1_checked

private theorem s6Step90Front_branch : s6Step90FrontSigmaArena.checkBorrow 1 [874]=some s6Step90HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step90FrontSigmaArena,s6Step90EntryGvAfter,s6Step90EntryGAfter,arenaWires]
  · change s6Step90HeadGBefore.live=(s6Step90EntryGvAfter.live∪{857})∪{874}
    apply hmrArena_union_pair_of_filter_check s6Step90EntryGvAfter s6Step90HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 857 874 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step90Front_entry : HmrFrontEntryValid s6Step90EntryFBefore s6Step90FrontBank 224 58 ⟨223,223,58,58⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step90FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step90EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step90EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,859),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step90FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step90Front_sigma : s6Step90EntryGvAfter.checkBorrow 1 [857]=some s6Step90FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step90EntryGvAfter,s6Step90EntryGAfter,arenaWires]
  · rfl

private def s6Step90HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step90HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step90HeadFBefore : Arena := s6Step90HeadGAfter

private def s6Step90HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479],795⟩

private def s6Step90HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855],776⟩

private def s6Step90HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 859],777⟩

private def s6Step90HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802],775⟩

private theorem s6Step90HeadBank_incomingDistinct : ([s6Step90HeadGRow,s6Step90HeadFRow,s6Step90HeadGvRow,s6Step90HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step90HeadF_Incoming : rowsOwned s6Step90HeadFBefore [s6Step90HeadFRow,s6Step90HeadGvRow,s6Step90HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step90HeadGRow,s6Step90HeadFRow,s6Step90HeadGvRow,s6Step90HeadFvRow] 1 s6Step90HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step90HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step90HeadBank_outgoingOwned : rowsOwned s6Step90HeadFvAfter [s6Step90HeadGOut,s6Step90HeadFOut,s6Step90HeadGvOut,s6Step90HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step90HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step90HeadF_Outgoing : rowsOwned s6Step90HeadFvAfter [s6Step90HeadFOut,s6Step90HeadGvOut,s6Step90HeadFvOut] :=
  hmrRows_owned_drop s6Step90HeadFvAfter [s6Step90HeadGOut,s6Step90HeadFOut,s6Step90HeadGvOut,s6Step90HeadFvOut] 1 s6Step90HeadBank_outgoingOwned

private theorem s6Step90HeadF_distinct : (s6Step90HeadFRow.sign::s6Step90HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step90HeadF_owned : (s6Step90HeadFRow.sign::s6Step90HeadFRow.payload).toFinset⊆s6Step90HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step90HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step90HeadF_reserved : s6Step90HeadFBefore.reserve s6Step90HeadFFresh.toFinset=some s6Step90HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step90HeadFFresh,arenaWires]
  · norm_num [s6Step90HeadFBefore,s6Step90HeadGAfter,s6Step90HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step90HeadFBefore s6Step90HeadFAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step90HeadFFresh rfl rfl
    · norm_num [s6Step90HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step90HeadF_checked : planRowResizeLog s6Step90HeadFBefore s6Step90HeadFRow 225 s6Step90HeadFFresh=
    some (s6Step90HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 780],795⟩,growRow 795 s6Step90HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step90HeadFBefore s6Step90HeadFAfter s6Step90HeadFRow 225 s6Step90HeadFFresh
    s6Step90HeadF_distinct s6Step90HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step90HeadF_reserved
  have rowEq : WindowRow.mk (s6Step90HeadFRow.payload++s6Step90HeadFFresh) s6Step90HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 780],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step90HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step90HeadFvBefore : Arena := s6Step90HeadGvAfter

private theorem s6Step90HeadFv_Incoming : rowsOwned s6Step90HeadFvBefore [s6Step90HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step90HeadGRow,s6Step90HeadFRow,s6Step90HeadGvRow,s6Step90HeadFvRow] 3 s6Step90HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step90HeadFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step90HeadFv_Outgoing : rowsOwned s6Step90HeadFvAfter [s6Step90HeadFvOut] :=
  hmrRows_owned_drop s6Step90HeadFvAfter [s6Step90HeadGOut,s6Step90HeadFOut,s6Step90HeadGvOut,s6Step90HeadFvOut] 3 s6Step90HeadBank_outgoingOwned

private theorem s6Step90HeadFv_distinct : (s6Step90HeadFvRow.sign::s6Step90HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step90HeadFv_owned : (s6Step90HeadFvRow.sign::s6Step90HeadFvRow.payload).toFinset⊆s6Step90HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step90HeadFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step90HeadFv_reserved : s6Step90HeadFvBefore.reserve s6Step90HeadFvFresh.toFinset=some s6Step90HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step90HeadFvFresh,arenaWires]
  · norm_num [s6Step90HeadFvBefore,s6Step90HeadGvAfter,s6Step90HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step90HeadFvBefore s6Step90HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step90HeadFvFresh rfl rfl
    · norm_num [s6Step90HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step90HeadFv_checked : planRowResizeLog s6Step90HeadFvBefore s6Step90HeadFvRow 59 s6Step90HeadFvFresh=
    some (s6Step90HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 794],776⟩,growRow 776 s6Step90HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step90HeadFvBefore s6Step90HeadFvAfter s6Step90HeadFvRow 59 s6Step90HeadFvFresh
    s6Step90HeadFv_distinct s6Step90HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step90HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step90HeadFvRow.payload++s6Step90HeadFvFresh) s6Step90HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 794],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step90HeadG_Incoming : rowsOwned s6Step90HeadGBefore [s6Step90HeadGRow,s6Step90HeadFRow,s6Step90HeadGvRow,s6Step90HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step90HeadGRow,s6Step90HeadFRow,s6Step90HeadGvRow,s6Step90HeadFvRow] 0 s6Step90HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step90HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step90HeadG_Outgoing : rowsOwned s6Step90HeadFvAfter [s6Step90HeadGOut,s6Step90HeadFOut,s6Step90HeadGvOut,s6Step90HeadFvOut] :=
  hmrRows_owned_drop s6Step90HeadFvAfter [s6Step90HeadGOut,s6Step90HeadFOut,s6Step90HeadGvOut,s6Step90HeadFvOut] 0 s6Step90HeadBank_outgoingOwned

private theorem s6Step90HeadG_distinct : (s6Step90HeadGRow.sign::s6Step90HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step90HeadG_owned : (s6Step90HeadGRow.sign::s6Step90HeadGRow.payload).toFinset⊆s6Step90HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step90HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step90HeadG_reserved : s6Step90HeadGBefore.reserve s6Step90HeadGFresh.toFinset=some s6Step90HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step90HeadGFresh,arenaWires]
  · norm_num [s6Step90HeadGBefore,s6Step90HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step90HeadGBefore s6Step90HeadGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step90HeadGFresh rfl rfl
    · norm_num [s6Step90HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step90HeadG_checked : planRowResizeLog s6Step90HeadGBefore s6Step90HeadGRow 225 s6Step90HeadGFresh=
    some (s6Step90HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 859, 877],777⟩,growRow 777 s6Step90HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step90HeadGBefore s6Step90HeadGAfter s6Step90HeadGRow 225 s6Step90HeadGFresh
    s6Step90HeadG_distinct s6Step90HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step90HeadG_reserved
  have rowEq : WindowRow.mk (s6Step90HeadGRow.payload++s6Step90HeadGFresh) s6Step90HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 859, 877],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step90HeadGvBefore : Arena := s6Step90HeadFAfter

private theorem s6Step90HeadGv_Incoming : rowsOwned s6Step90HeadGvBefore [s6Step90HeadGvRow,s6Step90HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step90HeadGRow,s6Step90HeadFRow,s6Step90HeadGvRow,s6Step90HeadFvRow] 2 s6Step90HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step90HeadGvBefore (fun q => ([(0,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step90HeadGv_Outgoing : rowsOwned s6Step90HeadFvAfter [s6Step90HeadGvOut,s6Step90HeadFvOut] :=
  hmrRows_owned_drop s6Step90HeadFvAfter [s6Step90HeadGOut,s6Step90HeadFOut,s6Step90HeadGvOut,s6Step90HeadFvOut] 2 s6Step90HeadBank_outgoingOwned

private theorem s6Step90HeadGv_distinct : (s6Step90HeadGvRow.sign::s6Step90HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step90HeadGv_owned : (s6Step90HeadGvRow.sign::s6Step90HeadGvRow.payload).toFinset⊆s6Step90HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step90HeadGvBefore (fun q => ([(0,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step90HeadGv_reserved : s6Step90HeadGvBefore.reserve s6Step90HeadGvFresh.toFinset=some s6Step90HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step90HeadGvFresh,arenaWires]
  · norm_num [s6Step90HeadGvBefore,s6Step90HeadFAfter,s6Step90HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step90HeadGvBefore s6Step90HeadGvAfter (fun q => ([(0,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step90HeadGvFresh rfl rfl
    · norm_num [s6Step90HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step90HeadGv_checked : planRowResizeLog s6Step90HeadGvBefore s6Step90HeadGvRow 59 s6Step90HeadGvFresh=
    some (s6Step90HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 813],775⟩,growRow 775 s6Step90HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step90HeadGvBefore s6Step90HeadGvAfter s6Step90HeadGvRow 59 s6Step90HeadGvFresh
    s6Step90HeadGv_distinct s6Step90HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step90HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step90HeadGvRow.payload++s6Step90HeadGvFresh) s6Step90HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 813],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step90HeadBank_rows : planWindowRowsLog s6Step90HeadGBefore [(s6Step90HeadGRow,225),(s6Step90HeadFRow,225),(s6Step90HeadGvRow,59),(s6Step90HeadFvRow,59)] [s6Step90HeadGFresh,s6Step90HeadFFresh,s6Step90HeadGvFresh,s6Step90HeadFvFresh]=
    some (s6Step90HeadFvAfter,[s6Step90HeadGOut,s6Step90HeadFOut,s6Step90HeadGvOut,s6Step90HeadFvOut],(growRow 777 s6Step90HeadGFresh ++ (growRow 795 s6Step90HeadFFresh ++ (growRow 775 s6Step90HeadGvFresh ++ (growRow 776 s6Step90HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step90HeadFvAfter [] []=some (s6Step90HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step90HeadFvBefore s6Step90HeadFvAfter s6Step90HeadFvAfter
    s6Step90HeadFvRow s6Step90HeadFvOut 59 s6Step90HeadFvFresh [] [] []
    (growRow 776 s6Step90HeadFvFresh) ([]) s6Step90HeadFv_Incoming s6Step90HeadFv_checked h4 s6Step90HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step90HeadGvBefore s6Step90HeadGvAfter s6Step90HeadFvAfter
    s6Step90HeadGvRow s6Step90HeadGvOut 59 s6Step90HeadGvFresh [(s6Step90HeadFvRow,59)] [s6Step90HeadFvFresh] [s6Step90HeadFvOut]
    (growRow 775 s6Step90HeadGvFresh) ((growRow 776 s6Step90HeadFvFresh ++ [])) s6Step90HeadGv_Incoming s6Step90HeadGv_checked h3 s6Step90HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step90HeadFBefore s6Step90HeadFAfter s6Step90HeadFvAfter
    s6Step90HeadFRow s6Step90HeadFOut 225 s6Step90HeadFFresh [(s6Step90HeadGvRow,59),(s6Step90HeadFvRow,59)] [s6Step90HeadGvFresh,s6Step90HeadFvFresh] [s6Step90HeadGvOut,s6Step90HeadFvOut]
    (growRow 795 s6Step90HeadFFresh) ((growRow 775 s6Step90HeadGvFresh ++ (growRow 776 s6Step90HeadFvFresh ++ []))) s6Step90HeadF_Incoming s6Step90HeadF_checked h2 s6Step90HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step90HeadGBefore s6Step90HeadGAfter s6Step90HeadFvAfter
    s6Step90HeadGRow s6Step90HeadGOut 225 s6Step90HeadGFresh [(s6Step90HeadFRow,225),(s6Step90HeadGvRow,59),(s6Step90HeadFvRow,59)] [s6Step90HeadFFresh,s6Step90HeadGvFresh,s6Step90HeadFvFresh] [s6Step90HeadFOut,s6Step90HeadGvOut,s6Step90HeadFvOut]
    (growRow 777 s6Step90HeadGFresh) ((growRow 795 s6Step90HeadFFresh ++ (growRow 775 s6Step90HeadGvFresh ++ (growRow 776 s6Step90HeadFvFresh ++ [])))) s6Step90HeadG_Incoming s6Step90HeadG_checked h1 s6Step90HeadG_Outgoing
  exact h0

private theorem s6Step90HeadBank_checked : compileHmrBankResizeLog .headroom s6Step90HeadGBefore ⟨s6Step90HeadFRow,s6Step90HeadGRow,s6Step90HeadFvRow,s6Step90HeadGvRow⟩ ⟨225,225,59,59⟩ [s6Step90HeadGFresh,s6Step90HeadFFresh,s6Step90HeadGvFresh,s6Step90HeadFvFresh]=
    some (s6Step90HeadFvAfter,⟨s6Step90HeadFOut,s6Step90HeadGOut,s6Step90HeadFvOut,s6Step90HeadGvOut⟩,(growRow 777 s6Step90HeadGFresh ++ (growRow 795 s6Step90HeadFFresh ++ (growRow 775 s6Step90HeadGvFresh ++ (growRow 776 s6Step90HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step90HeadBank_rows]
  rfl

private theorem s6Step90Front_checked : compileHmrSourceFrontLog s6Step90EntryFBefore s6Step90FrontBank 224 58 ⟨223,223,58,58⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step90FrontLog=some s6Step90FrontPlan := by
  have pairEq : s6Step90FrontPair=⟨s6Step90HeadFRow,s6Step90HeadGRow,s6Step90HeadFvRow,s6Step90HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step90FrontHead=⟨s6Step90ExitFRow,s6Step90ExitGRow,s6Step90ExitFvRow,s6Step90ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step90Add0A=s6Step90FrontHead.f.wires := by decide +kernel
  have gEq : s6Step90Add0B=s6Step90FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step90Add1A=s6Step90FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step90Add1B=s6Step90FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step90EntryFBefore s6Step90FrontBank 224 58 ⟨223,223,58,58⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step90FrontLog s6Step90FrontPlan
  · exact s6Step90Front_entry
  · exact s6Step90EntryBank_checked
  · exact s6Step90Front_sigma
  · rfl
  · exact s6Step90Front_branch
  · rfl
  · simpa only [s6Step90FrontPlan,pairEq] using s6Step90HeadBank_checked
  · simpa only [s6Step90FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step90F4_checked
  · exact s6Step90Counter_checked
  · rfl
  · simpa only [s6Step90FrontPlan,headEq] using s6Step90ExitBank_checked

private theorem s6Step90Complete_explicit_checked : compileHmrEarlyStepLog s6Step90EntryFBefore s6Step90FrontBank 224 58 ⟨223,223,58,58⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919] 33 s6Step90CompleteLog=some s6Step90CompletePlan := by
  let Q := s6Step90EarlyControlPlan
  have hq := s6Step90EarlyControl_plan_checked
  have fv1 : s6Step90CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step90CompleteOut.fv.payload[2]?.getD s6Step90CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step90CompleteOut.fv.payload[3]?.getD s6Step90CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step90CompleteOut.fv.payload[4]?.getD s6Step90CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step90EntryFBefore s6Step90EarlyControlArena s6Step90FrontBank 224 58 ⟨223,223,58,58⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919] 33 s6Step90CompleteLog s6Step90FrontPlan Q
    s6Step90Front_checked s6Step90Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step90Complete_owned s6Step90Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step90EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919] 769 857 s6Step90CompleteOut.fv.second (s6Step90CompleteOut.fv.payload[2]?.getD s6Step90CompleteOut.fv.sign) (s6Step90CompleteOut.fv.payload[3]?.getD s6Step90CompleteOut.fv.sign) (s6Step90CompleteOut.fv.payload[4]?.getD s6Step90CompleteOut.fv.sign) 874 33 s6Step90EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep90Arena : Arena := s6Step90EntryFBefore
def s6PrivateStep90Bank : WindowBank := s6Step90FrontBank
def s6PrivateStep90Spec : HmrSourceWalkStepLog := ⟨224,58,⟨223,223,58,58⟩,33,.early s6Step90CompleteLog⟩
def s6PrivateStep90Plan : HmrSourceStepPlan := .early s6Step90CompletePlan
theorem s6PrivateStep90_source : s6PrivateStep90Spec=s6ObservedLogs80[10] := rfl
theorem s6PrivateStep90_checked : compileHmrSourceStepLog s6PrivateStep90Arena s6PrivateStep90Bank
    s6PrivateStep90Spec.fgWidth s6PrivateStep90Spec.vWidth s6PrivateStep90Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919]
    6 498 90 s6PrivateStep90Spec.need none s6PrivateStep90Spec.log=some s6PrivateStep90Plan := by
  change compileHmrSourceStepLog s6Step90EntryFBefore s6Step90FrontBank 224 58 ⟨223,223,58,58⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919] 6 498 90 33 none (.early s6Step90CompleteLog)=some (.early s6Step90CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 90<498)]
  rw [s6Step90Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
