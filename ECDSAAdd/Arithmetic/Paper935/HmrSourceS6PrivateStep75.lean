import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep73
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

private def s6Step75CompleteMoves : List (Wire × Wire) := [(860,230)]

private def s6Step75EarlyControlLog : HmrEarlyControlLog := ⟨[860, 898, 780, 843, 877],[869],[803],[922, 879, 784, 891, 783, 919],[]⟩

private def s6Step75FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [822]],[[843], [780], [898], [839]],[[], [], [], []]⟩,[855],[794],[877],[869],[803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820],[877, 869, 803, 922]⟩

private def s6Step75CompleteLog : HmrEarlyStepLog := ⟨s6Step75FrontLog,s6Step75CompleteMoves,s6Step75EarlyControlLog⟩

private def s6Step75ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486],795⟩

private def s6Step75ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839],776⟩

private def s6Step75ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229],777⟩

private def s6Step75ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822],775⟩

private def s6Step75FrontOut : WindowBank := ⟨s6Step75ExitFOut,s6Step75ExitGOut,s6Step75ExitFvOut,s6Step75ExitGvOut⟩

private def s6Step75CompleteOut : WindowBank := s6Step75FrontOut.repacked s6Step75CompleteMoves

private def s6Step75EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step75EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step75EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step75EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step75EarlyControlPositiveArena,[869],s6Step75EarlyControlEqualityArena,[803],⟨⟨855,false⟩,[⟨⟨869,false⟩,803⟩]⟩⟩

private def s6Step75EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step75EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step75EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step75EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step75EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step75EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step75EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,860⟩,⟨⟨772,false⟩,898⟩,⟨⟨771,false⟩,780⟩,⟨⟨770,false⟩,843⟩,⟨⟨769,false⟩,877⟩]⟩

private def s6Step75EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step75EarlyControlZeroArena,s6Step75EarlyControlZeroPlan,s6Step75EarlyControlClassPlan,s6Step75EarlyControlFlagArena,s6Step75EarlyControlFittedArena,s6Step75EarlyControlHistoryArena,s6Step75EarlyControlSigmaArena,s6Step75EarlyControlOutputArena,s6Step75EarlyControlLog⟩

private def s6Step75CounterWork : List Wire := [877, 869, 803, 922]

private theorem s6Step75Counter_bounded : s6Step75CounterWork.toFinset⊆arenaWires := by norm_num [s6Step75CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step75HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step75CounterDuring : Arena := ⟨s6Step75HeadFvAfter.live∪s6Step75CounterWork.toFinset,Finset.union_subset s6Step75HeadFvAfter.bounded s6Step75Counter_bounded⟩

private def s6Step75EntryFFresh : List Wire := []

private def s6Step75EntryFvFresh : List Wire := []

private def s6Step75EntryGFresh : List Wire := []

private def s6Step75EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step75EntryGvFresh : List Wire := [822]

private def s6Step75ExitFExtra : List Wire := [780]

private def s6Step75ExitGExtra : List Wire := [230, 843]

private def s6Step75ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,230),(231,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step75ExitGvExtra : List Wire := [898]

private def s6Step75Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step75Add0Work : List Wire := [803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step75Add0_bounded : s6Step75Add0Work.toFinset⊆arenaWires := by
  have h : s6Step75Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step75Add0During : Arena := ⟨s6Step75Add0Arena.live∪s6Step75Add0Work.toFinset,Finset.union_subset s6Step75Add0Arena.bounded s6Step75Add0_bounded⟩

private def s6Step75Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step75Add1Work : List Wire := [803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820]

private theorem s6Step75Add1_bounded : s6Step75Add1Work.toFinset⊆arenaWires := by
  have h : s6Step75Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step75Add1During : Arena := ⟨s6Step75Add1Arena.live∪s6Step75Add1Work.toFinset,Finset.union_subset s6Step75Add1Arena.bounded s6Step75Add1_bounded⟩

private def s6Step75F4FlagArena : Arena := ⟨s6Step75HeadFvAfter.live∪{877},Finset.union_subset s6Step75HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step75F4Plan : HmrHybridF4Plan := ⟨s6Step75F4FlagArena,[877],s6Step75Add0Arena,[869],s6Step75Add0During,s6Step75Add0Work,s6Step75Add1During,s6Step75Add1Work⟩

private def s6Step75HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 780],795⟩

private def s6Step75HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839],776⟩

private def s6Step75HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 843],777⟩

private def s6Step75HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898],775⟩

private def s6Step75FrontHead : WindowBank := ⟨s6Step75HeadFOut,s6Step75HeadGOut,s6Step75HeadFvOut,s6Step75HeadGvOut⟩

private def s6Step75EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486],795⟩

private def s6Step75EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841],776⟩

private def s6Step75EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230],777⟩

private def s6Step75EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822],775⟩

private def s6Step75FrontPair : WindowBank := ⟨s6Step75EntryFOut,s6Step75EntryGOut,s6Step75EntryFvOut,s6Step75EntryGvOut⟩

private def s6Step75FrontSigmaArena : Arena := ⟨s6Step75EntryGvAfter.live∪{855},Finset.union_subset s6Step75EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step75HeadFFresh : List Wire := [780]

private def s6Step75HeadFvFresh : List Wire := [839]

private def s6Step75HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step75HeadGFresh : List Wire := [843]

private def s6Step75HeadGvFresh : List Wire := [898]

private def s6Step75FrontPlan : HmrSourceFront := ⟨s6Step75EntryGvAfter,s6Step75FrontPair,(growRow 795 s6Step75EntryFFresh ++ (growRow 777 s6Step75EntryGFresh ++ (growRow 776 s6Step75EntryFvFresh ++ (growRow 775 s6Step75EntryGvFresh ++ [])))),s6Step75FrontSigmaArena,[855],s6Step75HeadGBefore,[794],
  s6Step75HeadFvAfter,s6Step75FrontHead,(growRow 777 s6Step75HeadGFresh ++ (growRow 795 s6Step75HeadFFresh ++ (growRow 775 s6Step75HeadGvFresh ++ (growRow 776 s6Step75HeadFvFresh ++ [])))),s6Step75F4Plan,s6Step75CounterDuring,s6Step75CounterWork,s6Step75ExitGvAfter,s6Step75FrontOut,(shrinkRow 777 s6Step75ExitGExtra ++ (shrinkRow 795 s6Step75ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step75ExitGvExtra ++ []))))⟩

private def s6Step75CompletePlan : HmrEarlyStepPlan := ⟨s6Step75FrontPlan,s6Step75EarlyControlArena,s6Step75EarlyControlPlan,s6Step75CompleteMoves⟩

private theorem s6Step75Complete_apart : List.Disjoint (s6Step75CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [855, 794, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] := by
  have nd : ((s6Step75CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[855, 794, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step75Complete_owned : (s6Step75CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step75EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step75EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step75CompleteRelocationMove0Borrowed : Arena := ⟨s6Step75ExitGvAfter.live∪{230},Finset.union_subset s6Step75ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step75CompleteRelocation_move0_owned : 860∈s6Step75ExitGvAfter.live := by norm_num [s6Step75ExitGvAfter,arenaWires]

private theorem s6Step75CompleteRelocation_move0_reserve : s6Step75ExitGvAfter.reserve {230}=some s6Step75CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step75ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step75CompleteRelocation_move0_retire : s6Step75CompleteRelocationMove0Borrowed.retireSet {860}=s6Step75EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step75CompleteRelocationMove0Borrowed s6Step75EarlyControlArena {860}
  change s6Step75EarlyControlArena.live=(s6Step75ExitGvAfter.live∪{230})\{860}
  apply hmrArena_update_of_filter_check s6Step75ExitGvAfter s6Step75EarlyControlArena (fun q => ([(0,230),(231,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [230] [860] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step75CompleteRelocation_checked : s6Step75ExitGvAfter.checkRepack [(860,230)]=some s6Step75EarlyControlArena := by
  have tail1 : s6Step75EarlyControlArena.checkRepack []=some s6Step75EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step75ExitGvAfter s6Step75CompleteRelocationMove0Borrowed s6Step75EarlyControlArena s6Step75EarlyControlArena 860 230 []
    s6Step75CompleteRelocation_move0_owned s6Step75CompleteRelocation_move0_reserve s6Step75CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step75Complete_repack : s6Step75ExitGvAfter.checkRepack s6Step75CompleteMoves=some s6Step75EarlyControlArena := by
  simpa only [s6Step75CompleteMoves] using s6Step75CompleteRelocation_checked

private theorem s6Step75EarlyControl_branchOwned : ([794] : List Wire).toFinset⊆s6Step75EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step75EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step75EarlyControl_branch : compileHmrBranchRetirement s6Step75EarlyControlSigmaArena 794=some s6Step75EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step75EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step75EarlyControlSigmaArena s6Step75EarlyControlOutputArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [794] rfl rfl
    decide +kernel

private theorem s6Step75EarlyControl_classEqualityBorrow : s6Step75EarlyControlPositiveArena.checkBorrow (([855, 869] : List Wire).length-1) s6Step75EarlyControlLog.classWork=some s6Step75EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step75EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step75EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step75EarlyControlPositiveArena s6Step75EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step75EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step75EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step75EarlyControl_classEqualityOwned : ([855, 869] : List Wire).toFinset⊆s6Step75EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step75EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step75EarlyControl_classEquality : compileHmrEqualityLog s6Step75EarlyControlPositiveArena [855, 869] 0 s6Step75EarlyControlLog.classWork=some (s6Step75EarlyControlEqualityArena,s6Step75EarlyControlLog.classWork,s6Step75EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step75EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step75EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step75EarlyControl_classOwned : ([769, 877, 855] : List Wire).toFinset⊆s6Step75EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step75EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step75EarlyControl_positiveBorrow : s6Step75EarlyControlZeroArena.checkBorrow (1) s6Step75EarlyControlLog.positiveWork=some s6Step75EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step75EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step75EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step75EarlyControlZeroArena s6Step75EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step75EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step75EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step75EarlyControl_class : compileHmrSourceClassLog s6Step75EarlyControlZeroArena false 769 s6Step75EarlyControlZeroPlan.top 0 855 s6Step75EarlyControlLog.positiveWork s6Step75EarlyControlLog.classWork=some s6Step75EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step75EarlyControlClassPlan s6Step75EarlyControlZeroArena false 769 s6Step75EarlyControlZeroPlan.top 0 855
  constructor
  · decide +kernel
  · exact s6Step75EarlyControl_classOwned
  · exact s6Step75EarlyControl_positiveBorrow
  · exact s6Step75EarlyControl_classEquality

private theorem s6Step75EarlyControl_entryRecordOwned : ([794, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step75EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step75EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step75EarlyControl_entrySigmaOwned : ([855, 254] : List Wire).toFinset⊆s6Step75EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step75EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step75EarlyControl_fitBorrow : s6Step75EarlyControlFlagArena.checkBorrow ((30-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).length)) s6Step75EarlyControlLog.recordFresh=some s6Step75EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step75EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step75EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step75EarlyControlFittedArena,s6Step75EarlyControlFlagArena,s6Step75EarlyControlLog,arenaWires]

private theorem s6Step75EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step75EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step75EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step75EarlyControl_fit : compileHmrRecordGrowLog s6Step75EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step75EarlyControlLog.recordFresh=some s6Step75EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step75EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step75EarlyControl_fitBorrow

private theorem s6Step75EarlyControl_flagsBorrow : s6Step75EarlyControlEqualityArena.checkBorrow (6) s6Step75EarlyControlLog.flagWork=some s6Step75EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step75EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step75EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step75EarlyControlEqualityArena s6Step75EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step75EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step75EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step75EarlyControl_flagsOwned : ([803, 253, 252, 251] : List Wire).toFinset⊆s6Step75EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step75EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step75EarlyControl_flags : compileHmrFlagsLog s6Step75EarlyControlClassPlan.equalityArena s6Step75EarlyControlClassPlan.equality.top 253 252 251 s6Step75EarlyControlLog.flagWork=some s6Step75EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step75EarlyControl_flagsOwned⟩
  · exact s6Step75EarlyControl_flagsBorrow

private theorem s6Step75EarlyControl_historyBorrow : s6Step75EarlyControlArena.checkBorrow ((30-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).length)) s6Step75EarlyControlLog.recordFresh=some s6Step75EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step75EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step75EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step75EarlyControlArena s6Step75EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step75EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step75EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step75EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step75EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step75EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step75EarlyControl_history : compileHmrRecordGrowLog s6Step75EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step75EarlyControlLog.recordFresh=some s6Step75EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step75EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step75EarlyControl_historyBorrow

private theorem s6Step75EarlyControl_sigmaOwned : ([254, 855] : List Wire).toFinset⊆s6Step75EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step75EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step75EarlyControl_sigmaReleaseOwned : ([855] : List Wire).toFinset⊆s6Step75EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step75EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step75EarlyControl_sigmaRelease : s6Step75EarlyControlHistoryArena.release {855} (fun _ => false)=some s6Step75EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step75EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step75EarlyControlHistoryArena s6Step75EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [855] rfl rfl
    decide +kernel

private theorem s6Step75EarlyControl_sigma : compileHmrSigmaDropLog s6Step75EarlyControlHistoryArena false 0 0 254 855 []=some s6Step75EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step75EarlyControl_sigmaOwned⟩
  · exact s6Step75EarlyControl_sigmaRelease

private theorem s6Step75EarlyControl_zeroBorrow : s6Step75EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step75EarlyControlLog.zeroWork=some s6Step75EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step75EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step75EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step75EarlyControlArena s6Step75EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step75EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step75EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step75EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step75EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step75EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step75EarlyControl_zero : compileHmrEqualityLog s6Step75EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step75EarlyControlLog.zeroWork=some (s6Step75EarlyControlZeroArena,s6Step75EarlyControlLog.zeroWork,s6Step75EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step75EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step75EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step75EarlyControl_logged : s6Step75EarlyControlPlan.Logged s6Step75EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 855 254 253 252 251 794 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step75EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step75EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step75EarlyControl_zero
  · exact s6Step75EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step75EarlyControl_flags
  · exact s6Step75EarlyControl_fit
  · exact s6Step75EarlyControl_history
  · exact s6Step75EarlyControl_sigma
  · exact s6Step75EarlyControl_branch

private theorem s6Step75EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step75EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 855 254 253 252 251 794 30 s6Step75EarlyControlLog=some s6Step75EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step75EarlyControlPlan s6Step75EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 855 254 253 252 251 794 30 s6Step75EarlyControl_logged

private def s6Step75EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step75EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486],795⟩

private def s6Step75EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841],776⟩

private def s6Step75EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230],777⟩

private def s6Step75EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838],775⟩

private def s6Step75FrontBank : WindowBank := ⟨s6Step75EntryFRow,s6Step75EntryGRow,s6Step75EntryFvRow,s6Step75EntryGvRow⟩

private def s6Step75Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 780, 795]

private def s6Step75Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 843, 777]

private def s6Step75Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 776]

private def s6Step75Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 775]

private theorem s6Step75Counter_apart : Disjoint s6Step75HeadFvAfter.live s6Step75CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step75HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step75Counter_borrowed : s6Step75HeadFvAfter.checkBorrow 4 s6Step75CounterWork=some s6Step75CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step75HeadFvAfter s6Step75CounterDuring s6Step75CounterWork.toFinset s6Step75Counter_bounded s6Step75Counter_apart rfl

private theorem s6Step75Counter_owned : (855::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step75HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step75HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step75Counter_checked : compileHmrCounterStepLog s6Step75HeadFvAfter true 855 [774, 773, 772, 771, 770, 769] s6Step75CounterWork=some s6Step75CounterDuring := by
  have owned : ∀q∈855::[774, 773, 772, 771, 770, 769],q∈s6Step75HeadFvAfter.live := fun q hq => s6Step75Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step75Counter_borrowed

private def s6Step75EntryFAfter : Arena := s6Step75EntryFBefore

private theorem s6Step75EntryBank_incomingDistinct : ([s6Step75EntryFRow,s6Step75EntryGRow,s6Step75EntryFvRow,s6Step75EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step75EntryF_Incoming : rowsOwned s6Step75EntryFBefore [s6Step75EntryFRow,s6Step75EntryGRow,s6Step75EntryFvRow,s6Step75EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step75EntryFRow,s6Step75EntryGRow,s6Step75EntryFvRow,s6Step75EntryGvRow] 0 s6Step75EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step75EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step75EntryBank_outgoingOwned : rowsOwned s6Step75EntryGvAfter [s6Step75EntryFOut,s6Step75EntryGOut,s6Step75EntryFvOut,s6Step75EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step75EntryGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step75EntryF_Outgoing : rowsOwned s6Step75EntryGvAfter [s6Step75EntryFOut,s6Step75EntryGOut,s6Step75EntryFvOut,s6Step75EntryGvOut] :=
  hmrRows_owned_drop s6Step75EntryGvAfter [s6Step75EntryFOut,s6Step75EntryGOut,s6Step75EntryFvOut,s6Step75EntryGvOut] 0 s6Step75EntryBank_outgoingOwned

private theorem s6Step75EntryF_distinct : (s6Step75EntryFRow.sign::s6Step75EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step75EntryF_owned : (s6Step75EntryFRow.sign::s6Step75EntryFRow.payload).toFinset⊆s6Step75EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step75EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step75EntryF_reserved : s6Step75EntryFBefore.reserve s6Step75EntryFFresh.toFinset=some s6Step75EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step75EntryFFresh,arenaWires]
  · norm_num [s6Step75EntryFBefore,s6Step75EntryFFresh,arenaWires]
  · simp only [s6Step75EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step75EntryF_checked : planRowResizeLog s6Step75EntryFBefore s6Step75EntryFRow 231 s6Step75EntryFFresh=
    some (s6Step75EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486],795⟩,growRow 795 s6Step75EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step75EntryFBefore s6Step75EntryFAfter s6Step75EntryFRow 231 s6Step75EntryFFresh
    s6Step75EntryF_distinct s6Step75EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step75EntryF_reserved
  have rowEq : WindowRow.mk (s6Step75EntryFRow.payload++s6Step75EntryFFresh) s6Step75EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step75EntryFvAfter : Arena := s6Step75EntryFBefore

private def s6Step75EntryFvBefore : Arena := s6Step75EntryFBefore

private theorem s6Step75EntryFv_Incoming : rowsOwned s6Step75EntryFvBefore [s6Step75EntryFvRow,s6Step75EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step75EntryFRow,s6Step75EntryGRow,s6Step75EntryFvRow,s6Step75EntryGvRow] 2 s6Step75EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step75EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step75EntryFv_Outgoing : rowsOwned s6Step75EntryGvAfter [s6Step75EntryFvOut,s6Step75EntryGvOut] :=
  hmrRows_owned_drop s6Step75EntryGvAfter [s6Step75EntryFOut,s6Step75EntryGOut,s6Step75EntryFvOut,s6Step75EntryGvOut] 2 s6Step75EntryBank_outgoingOwned

private theorem s6Step75EntryFv_distinct : (s6Step75EntryFvRow.sign::s6Step75EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step75EntryFv_owned : (s6Step75EntryFvRow.sign::s6Step75EntryFvRow.payload).toFinset⊆s6Step75EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step75EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step75EntryFv_reserved : s6Step75EntryFvBefore.reserve s6Step75EntryFvFresh.toFinset=some s6Step75EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step75EntryFvFresh,arenaWires]
  · norm_num [s6Step75EntryFvBefore,s6Step75EntryFBefore,s6Step75EntryFvFresh,arenaWires]
  · simp only [s6Step75EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step75EntryFv_checked : planRowResizeLog s6Step75EntryFvBefore s6Step75EntryFvRow 51 s6Step75EntryFvFresh=
    some (s6Step75EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841],776⟩,growRow 776 s6Step75EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step75EntryFvBefore s6Step75EntryFvAfter s6Step75EntryFvRow 51 s6Step75EntryFvFresh
    s6Step75EntryFv_distinct s6Step75EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step75EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step75EntryFvRow.payload++s6Step75EntryFvFresh) s6Step75EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step75EntryGAfter : Arena := s6Step75EntryFBefore

private def s6Step75EntryGBefore : Arena := s6Step75EntryFBefore

private theorem s6Step75EntryG_Incoming : rowsOwned s6Step75EntryGBefore [s6Step75EntryGRow,s6Step75EntryFvRow,s6Step75EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step75EntryFRow,s6Step75EntryGRow,s6Step75EntryFvRow,s6Step75EntryGvRow] 1 s6Step75EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step75EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step75EntryG_Outgoing : rowsOwned s6Step75EntryGvAfter [s6Step75EntryGOut,s6Step75EntryFvOut,s6Step75EntryGvOut] :=
  hmrRows_owned_drop s6Step75EntryGvAfter [s6Step75EntryFOut,s6Step75EntryGOut,s6Step75EntryFvOut,s6Step75EntryGvOut] 1 s6Step75EntryBank_outgoingOwned

private theorem s6Step75EntryG_distinct : (s6Step75EntryGRow.sign::s6Step75EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step75EntryG_owned : (s6Step75EntryGRow.sign::s6Step75EntryGRow.payload).toFinset⊆s6Step75EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step75EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step75EntryG_reserved : s6Step75EntryGBefore.reserve s6Step75EntryGFresh.toFinset=some s6Step75EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step75EntryGFresh,arenaWires]
  · norm_num [s6Step75EntryGBefore,s6Step75EntryFBefore,s6Step75EntryGFresh,arenaWires]
  · simp only [s6Step75EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step75EntryG_checked : planRowResizeLog s6Step75EntryGBefore s6Step75EntryGRow 231 s6Step75EntryGFresh=
    some (s6Step75EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230],777⟩,growRow 777 s6Step75EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step75EntryGBefore s6Step75EntryGAfter s6Step75EntryGRow 231 s6Step75EntryGFresh
    s6Step75EntryG_distinct s6Step75EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step75EntryG_reserved
  have rowEq : WindowRow.mk (s6Step75EntryGRow.payload++s6Step75EntryGFresh) s6Step75EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step75EntryGvBefore : Arena := s6Step75EntryFBefore

private theorem s6Step75EntryGv_Incoming : rowsOwned s6Step75EntryGvBefore [s6Step75EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step75EntryFRow,s6Step75EntryGRow,s6Step75EntryFvRow,s6Step75EntryGvRow] 3 s6Step75EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step75EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step75EntryGv_Outgoing : rowsOwned s6Step75EntryGvAfter [s6Step75EntryGvOut] :=
  hmrRows_owned_drop s6Step75EntryGvAfter [s6Step75EntryFOut,s6Step75EntryGOut,s6Step75EntryFvOut,s6Step75EntryGvOut] 3 s6Step75EntryBank_outgoingOwned

private theorem s6Step75EntryGv_distinct : (s6Step75EntryGvRow.sign::s6Step75EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step75EntryGv_owned : (s6Step75EntryGvRow.sign::s6Step75EntryGvRow.payload).toFinset⊆s6Step75EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step75EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step75EntryGv_reserved : s6Step75EntryGvBefore.reserve s6Step75EntryGvFresh.toFinset=some s6Step75EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step75EntryGvFresh,arenaWires]
  · norm_num [s6Step75EntryGvBefore,s6Step75EntryFBefore,s6Step75EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step75EntryGvBefore s6Step75EntryGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step75EntryGvFresh rfl rfl
    · norm_num [s6Step75EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step75EntryGv_checked : planRowResizeLog s6Step75EntryGvBefore s6Step75EntryGvRow 51 s6Step75EntryGvFresh=
    some (s6Step75EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822],775⟩,growRow 775 s6Step75EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step75EntryGvBefore s6Step75EntryGvAfter s6Step75EntryGvRow 51 s6Step75EntryGvFresh
    s6Step75EntryGv_distinct s6Step75EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step75EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step75EntryGvRow.payload++s6Step75EntryGvFresh) s6Step75EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step75EntryBank_rows : planWindowRowsLog s6Step75EntryFBefore [(s6Step75EntryFRow,231),(s6Step75EntryGRow,231),(s6Step75EntryFvRow,51),(s6Step75EntryGvRow,51)] [s6Step75EntryFFresh,s6Step75EntryGFresh,s6Step75EntryFvFresh,s6Step75EntryGvFresh]=
    some (s6Step75EntryGvAfter,[s6Step75EntryFOut,s6Step75EntryGOut,s6Step75EntryFvOut,s6Step75EntryGvOut],(growRow 795 s6Step75EntryFFresh ++ (growRow 777 s6Step75EntryGFresh ++ (growRow 776 s6Step75EntryFvFresh ++ (growRow 775 s6Step75EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step75EntryGvAfter [] []=some (s6Step75EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step75EntryGvBefore s6Step75EntryGvAfter s6Step75EntryGvAfter
    s6Step75EntryGvRow s6Step75EntryGvOut 51 s6Step75EntryGvFresh [] [] []
    (growRow 775 s6Step75EntryGvFresh) ([]) s6Step75EntryGv_Incoming s6Step75EntryGv_checked h4 s6Step75EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step75EntryFvBefore s6Step75EntryFvAfter s6Step75EntryGvAfter
    s6Step75EntryFvRow s6Step75EntryFvOut 51 s6Step75EntryFvFresh [(s6Step75EntryGvRow,51)] [s6Step75EntryGvFresh] [s6Step75EntryGvOut]
    (growRow 776 s6Step75EntryFvFresh) ((growRow 775 s6Step75EntryGvFresh ++ [])) s6Step75EntryFv_Incoming s6Step75EntryFv_checked h3 s6Step75EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step75EntryGBefore s6Step75EntryGAfter s6Step75EntryGvAfter
    s6Step75EntryGRow s6Step75EntryGOut 231 s6Step75EntryGFresh [(s6Step75EntryFvRow,51),(s6Step75EntryGvRow,51)] [s6Step75EntryFvFresh,s6Step75EntryGvFresh] [s6Step75EntryFvOut,s6Step75EntryGvOut]
    (growRow 777 s6Step75EntryGFresh) ((growRow 776 s6Step75EntryFvFresh ++ (growRow 775 s6Step75EntryGvFresh ++ []))) s6Step75EntryG_Incoming s6Step75EntryG_checked h2 s6Step75EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step75EntryFBefore s6Step75EntryFAfter s6Step75EntryGvAfter
    s6Step75EntryFRow s6Step75EntryFOut 231 s6Step75EntryFFresh [(s6Step75EntryGRow,231),(s6Step75EntryFvRow,51),(s6Step75EntryGvRow,51)] [s6Step75EntryGFresh,s6Step75EntryFvFresh,s6Step75EntryGvFresh] [s6Step75EntryGOut,s6Step75EntryFvOut,s6Step75EntryGvOut]
    (growRow 795 s6Step75EntryFFresh) ((growRow 777 s6Step75EntryGFresh ++ (growRow 776 s6Step75EntryFvFresh ++ (growRow 775 s6Step75EntryGvFresh ++ [])))) s6Step75EntryF_Incoming s6Step75EntryF_checked h1 s6Step75EntryF_Outgoing
  exact h0

private theorem s6Step75EntryBank_checked : compileHmrBankResizeLog .entry s6Step75EntryFBefore ⟨s6Step75EntryFRow,s6Step75EntryGRow,s6Step75EntryFvRow,s6Step75EntryGvRow⟩ ⟨231,231,51,51⟩ [s6Step75EntryFFresh,s6Step75EntryGFresh,s6Step75EntryFvFresh,s6Step75EntryGvFresh]=
    some (s6Step75EntryGvAfter,⟨s6Step75EntryFOut,s6Step75EntryGOut,s6Step75EntryFvOut,s6Step75EntryGvOut⟩,(growRow 795 s6Step75EntryFFresh ++ (growRow 777 s6Step75EntryGFresh ++ (growRow 776 s6Step75EntryFvFresh ++ (growRow 775 s6Step75EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step75EntryBank_rows]
  rfl

private def s6Step75ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,230),(231,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step75ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,230),(231,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step75ExitFBefore : Arena := s6Step75ExitGAfter

private def s6Step75ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 780],795⟩

private def s6Step75ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839],776⟩

private def s6Step75ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 843],777⟩

private def s6Step75ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898],775⟩

private theorem s6Step75ExitBank_incomingDistinct : ([s6Step75ExitGRow,s6Step75ExitFRow,s6Step75ExitFvRow,s6Step75ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step75ExitF_Incoming : rowsOwned s6Step75ExitFBefore [s6Step75ExitFRow,s6Step75ExitFvRow,s6Step75ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step75ExitGRow,s6Step75ExitFRow,s6Step75ExitFvRow,s6Step75ExitGvRow] 1 s6Step75ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step75ExitFBefore (fun q => ([(0,230),(231,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step75ExitBank_outgoingOwned : rowsOwned s6Step75ExitGvAfter [s6Step75ExitGOut,s6Step75ExitFOut,s6Step75ExitFvOut,s6Step75ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step75ExitGvAfter (fun q => ([(0,230),(231,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step75ExitF_Outgoing : rowsOwned s6Step75ExitGvAfter [s6Step75ExitFOut,s6Step75ExitFvOut,s6Step75ExitGvOut] :=
  hmrRows_owned_drop s6Step75ExitGvAfter [s6Step75ExitGOut,s6Step75ExitFOut,s6Step75ExitFvOut,s6Step75ExitGvOut] 1 s6Step75ExitBank_outgoingOwned

private theorem s6Step75ExitF_distinct : (s6Step75ExitFRow.sign::s6Step75ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step75ExitF_owned : (s6Step75ExitFRow.sign::s6Step75ExitFRow.payload).toFinset⊆s6Step75ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step75ExitFBefore (fun q => ([(0,230),(231,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step75ExitF_retired : s6Step75ExitFBefore.retireSet s6Step75ExitFExtra.toFinset=s6Step75ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step75ExitFBefore s6Step75ExitFAfter s6Step75ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step75ExitFBefore s6Step75ExitFAfter (fun q => ([(0,230),(231,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,230),(231,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step75ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step75ExitF_checked : planRowResizeLog s6Step75ExitFBefore s6Step75ExitFRow 231 []=
    some (s6Step75ExitFAfter,s6Step75ExitFOut,shrinkRow 795 s6Step75ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step75ExitFBefore s6Step75ExitFRow 231 s6Step75ExitF_distinct s6Step75ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step75ExitFRow.payload.take 231) s6Step75ExitFRow.sign=s6Step75ExitFOut := by decide +kernel
  have hi : s6Step75ExitFRow.payload.drop 231=s6Step75ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step75ExitF_retired] at result
  exact result

private def s6Step75ExitFvAfter : Arena := s6Step75ExitFAfter

private def s6Step75ExitFvBefore : Arena := s6Step75ExitFAfter

private theorem s6Step75ExitFv_Incoming : rowsOwned s6Step75ExitFvBefore [s6Step75ExitFvRow,s6Step75ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step75ExitGRow,s6Step75ExitFRow,s6Step75ExitFvRow,s6Step75ExitGvRow] 2 s6Step75ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step75ExitFvBefore (fun q => ([(0,230),(231,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step75ExitFv_Outgoing : rowsOwned s6Step75ExitGvAfter [s6Step75ExitFvOut,s6Step75ExitGvOut] :=
  hmrRows_owned_drop s6Step75ExitGvAfter [s6Step75ExitGOut,s6Step75ExitFOut,s6Step75ExitFvOut,s6Step75ExitGvOut] 2 s6Step75ExitBank_outgoingOwned

private theorem s6Step75ExitFv_distinct : (s6Step75ExitFvRow.sign::s6Step75ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step75ExitFv_owned : (s6Step75ExitFvRow.sign::s6Step75ExitFvRow.payload).toFinset⊆s6Step75ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step75ExitFvBefore (fun q => ([(0,230),(231,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step75ExitFv_reserved : s6Step75ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step75ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step75ExitFv_checked : planRowResizeLog s6Step75ExitFvBefore s6Step75ExitFvRow 52 []=
    some (s6Step75ExitFvAfter,s6Step75ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step75ExitFvBefore s6Step75ExitFvAfter s6Step75ExitFvRow 52 []
    s6Step75ExitFv_distinct s6Step75ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step75ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step75ExitFvRow.payload++[]) s6Step75ExitFvRow.sign=s6Step75ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step75ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step75ExitG_Incoming : rowsOwned s6Step75ExitGBefore [s6Step75ExitGRow,s6Step75ExitFRow,s6Step75ExitFvRow,s6Step75ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step75ExitGRow,s6Step75ExitFRow,s6Step75ExitFvRow,s6Step75ExitGvRow] 0 s6Step75ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step75ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step75ExitG_Outgoing : rowsOwned s6Step75ExitGvAfter [s6Step75ExitGOut,s6Step75ExitFOut,s6Step75ExitFvOut,s6Step75ExitGvOut] :=
  hmrRows_owned_drop s6Step75ExitGvAfter [s6Step75ExitGOut,s6Step75ExitFOut,s6Step75ExitFvOut,s6Step75ExitGvOut] 0 s6Step75ExitBank_outgoingOwned

private theorem s6Step75ExitG_distinct : (s6Step75ExitGRow.sign::s6Step75ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step75ExitG_owned : (s6Step75ExitGRow.sign::s6Step75ExitGRow.payload).toFinset⊆s6Step75ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step75ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step75ExitG_retired : s6Step75ExitGBefore.retireSet s6Step75ExitGExtra.toFinset=s6Step75ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step75ExitGBefore s6Step75ExitGAfter s6Step75ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step75ExitGBefore s6Step75ExitGAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,230),(231,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step75ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step75ExitG_checked : planRowResizeLog s6Step75ExitGBefore s6Step75ExitGRow 230 []=
    some (s6Step75ExitGAfter,s6Step75ExitGOut,shrinkRow 777 s6Step75ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step75ExitGBefore s6Step75ExitGRow 230 s6Step75ExitG_distinct s6Step75ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step75ExitGRow.payload.take 230) s6Step75ExitGRow.sign=s6Step75ExitGOut := by decide +kernel
  have hi : s6Step75ExitGRow.payload.drop 230=s6Step75ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step75ExitG_retired] at result
  exact result

private def s6Step75ExitGvBefore : Arena := s6Step75ExitFAfter

private theorem s6Step75ExitGv_Incoming : rowsOwned s6Step75ExitGvBefore [s6Step75ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step75ExitGRow,s6Step75ExitFRow,s6Step75ExitFvRow,s6Step75ExitGvRow] 3 s6Step75ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step75ExitGvBefore (fun q => ([(0,230),(231,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step75ExitGv_Outgoing : rowsOwned s6Step75ExitGvAfter [s6Step75ExitGvOut] :=
  hmrRows_owned_drop s6Step75ExitGvAfter [s6Step75ExitGOut,s6Step75ExitFOut,s6Step75ExitFvOut,s6Step75ExitGvOut] 3 s6Step75ExitBank_outgoingOwned

private theorem s6Step75ExitGv_distinct : (s6Step75ExitGvRow.sign::s6Step75ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step75ExitGv_owned : (s6Step75ExitGvRow.sign::s6Step75ExitGvRow.payload).toFinset⊆s6Step75ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step75ExitGvBefore (fun q => ([(0,230),(231,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step75ExitGv_retired : s6Step75ExitGvBefore.retireSet s6Step75ExitGvExtra.toFinset=s6Step75ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step75ExitGvBefore s6Step75ExitGvAfter s6Step75ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step75ExitGvBefore s6Step75ExitGvAfter (fun q => ([(0,230),(231,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,230),(231,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step75ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step75ExitGv_checked : planRowResizeLog s6Step75ExitGvBefore s6Step75ExitGvRow 51 []=
    some (s6Step75ExitGvAfter,s6Step75ExitGvOut,shrinkRow 775 s6Step75ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step75ExitGvBefore s6Step75ExitGvRow 51 s6Step75ExitGv_distinct s6Step75ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step75ExitGvRow.payload.take 51) s6Step75ExitGvRow.sign=s6Step75ExitGvOut := by decide +kernel
  have hi : s6Step75ExitGvRow.payload.drop 51=s6Step75ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step75ExitGv_retired] at result
  exact result

private theorem s6Step75ExitBank_rows : planWindowRowsLog s6Step75ExitGBefore [(s6Step75ExitGRow,230),(s6Step75ExitFRow,231),(s6Step75ExitFvRow,52),(s6Step75ExitGvRow,51)] [[],[],[],[]]=
    some (s6Step75ExitGvAfter,[s6Step75ExitGOut,s6Step75ExitFOut,s6Step75ExitFvOut,s6Step75ExitGvOut],(shrinkRow 777 s6Step75ExitGExtra ++ (shrinkRow 795 s6Step75ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step75ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step75ExitGvAfter [] []=some (s6Step75ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step75ExitGvBefore s6Step75ExitGvAfter s6Step75ExitGvAfter
    s6Step75ExitGvRow s6Step75ExitGvOut 51 [] [] [] []
    (shrinkRow 775 s6Step75ExitGvExtra) ([]) s6Step75ExitGv_Incoming s6Step75ExitGv_checked h4 s6Step75ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step75ExitFvBefore s6Step75ExitFvAfter s6Step75ExitGvAfter
    s6Step75ExitFvRow s6Step75ExitFvOut 52 [] [(s6Step75ExitGvRow,51)] [[]] [s6Step75ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step75ExitGvExtra ++ [])) s6Step75ExitFv_Incoming s6Step75ExitFv_checked h3 s6Step75ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step75ExitFBefore s6Step75ExitFAfter s6Step75ExitGvAfter
    s6Step75ExitFRow s6Step75ExitFOut 231 [] [(s6Step75ExitFvRow,52),(s6Step75ExitGvRow,51)] [[],[]] [s6Step75ExitFvOut,s6Step75ExitGvOut]
    (shrinkRow 795 s6Step75ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step75ExitGvExtra ++ []))) s6Step75ExitF_Incoming s6Step75ExitF_checked h2 s6Step75ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step75ExitGBefore s6Step75ExitGAfter s6Step75ExitGvAfter
    s6Step75ExitGRow s6Step75ExitGOut 230 [] [(s6Step75ExitFRow,231),(s6Step75ExitFvRow,52),(s6Step75ExitGvRow,51)] [[],[],[]] [s6Step75ExitFOut,s6Step75ExitFvOut,s6Step75ExitGvOut]
    (shrinkRow 777 s6Step75ExitGExtra) ((shrinkRow 795 s6Step75ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step75ExitGvExtra ++ [])))) s6Step75ExitG_Incoming s6Step75ExitG_checked h1 s6Step75ExitG_Outgoing
  exact h0

private theorem s6Step75ExitBank_checked : compileHmrBankResizeLog .exit s6Step75ExitGBefore ⟨s6Step75ExitFRow,s6Step75ExitGRow,s6Step75ExitFvRow,s6Step75ExitGvRow⟩ ⟨231,230,52,51⟩ [[],[],[],[]]=
    some (s6Step75ExitGvAfter,⟨s6Step75ExitFOut,s6Step75ExitGOut,s6Step75ExitFvOut,s6Step75ExitGvOut⟩,(shrinkRow 777 s6Step75ExitGExtra ++ (shrinkRow 795 s6Step75ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step75ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step75ExitBank_rows]
  rfl

private theorem s6Step75Add0_apart : Disjoint s6Step75Add0Arena.live s6Step75Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step75Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step75Add0_card : s6Step75Add0Arena.live.card=868 := by
  decide +kernel

private theorem s6Step75Add0_borrowed : s6Step75Add0Arena.checkBorrow (hmrHybridCount s6Step75Add0Arena s6Step75Add0B.length) s6Step75Add0Work=some s6Step75Add0During := by
  have len : s6Step75Add0Work.length=hmrHybridCount s6Step75Add0Arena s6Step75Add0B.length := by
    rw [hmrHybridCount,s6Step75Add0_card]
    decide +kernel
  have nd : s6Step75Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step75Add0Arena s6Step75Add0During s6Step75Add0Work.toFinset s6Step75Add0_bounded s6Step75Add0_apart rfl

private theorem s6Step75Add0_distinct : (877::794::869::(s6Step75Add0A++s6Step75Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step75Add0_owned : (877::794::869::(s6Step75Add0A++s6Step75Add0B)).toFinset⊆s6Step75Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step75Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step75Add0_checked : compileHmrHybridCinLog s6Step75Add0Arena 794 877 869 s6Step75Add0A s6Step75Add0B s6Step75Add0Work=some s6Step75Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step75Add0Arena s6Step75Add0During 794 877 869 s6Step75Add0A s6Step75Add0B s6Step75Add0Work
    (by decide +kernel) (by decide +kernel) s6Step75Add0_distinct
    (fun q hq => s6Step75Add0_owned (List.mem_toFinset.mpr hq)) s6Step75Add0_borrowed

private theorem s6Step75Add1_apart : Disjoint s6Step75Add1Arena.live s6Step75Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step75Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step75Add1_card : s6Step75Add1Arena.live.card=868 := by
  decide +kernel

private theorem s6Step75Add1_borrowed : s6Step75Add1Arena.checkBorrow (hmrHybridCount s6Step75Add1Arena s6Step75Add1B.length) s6Step75Add1Work=some s6Step75Add1During := by
  have len : s6Step75Add1Work.length=hmrHybridCount s6Step75Add1Arena s6Step75Add1B.length := by
    rw [hmrHybridCount,s6Step75Add1_card]
    decide +kernel
  have nd : s6Step75Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step75Add1Arena s6Step75Add1During s6Step75Add1Work.toFinset s6Step75Add1_bounded s6Step75Add1_apart rfl

private theorem s6Step75Add1_distinct : (877::794::869::(s6Step75Add1A++s6Step75Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step75Add1_owned : (877::794::869::(s6Step75Add1A++s6Step75Add1B)).toFinset⊆s6Step75Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step75Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step75Add1_checked : compileHmrHybridCinLog s6Step75Add1Arena 794 877 869 s6Step75Add1A s6Step75Add1B s6Step75Add1Work=some s6Step75Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step75Add1Arena s6Step75Add1During 794 877 869 s6Step75Add1A s6Step75Add1B s6Step75Add1Work
    (by decide +kernel) (by decide +kernel) s6Step75Add1_distinct
    (fun q hq => s6Step75Add1_owned (List.mem_toFinset.mpr hq)) s6Step75Add1_borrowed

private theorem s6Step75F4_apart : Disjoint (s6Step75Add0A++s6Step75Add0B).toFinset (s6Step75Add1A++s6Step75Add1B).toFinset := by
  have nd : ((s6Step75Add0A++s6Step75Add0B)++(s6Step75Add1A++s6Step75Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step75F4_carry : s6Step75F4FlagArena.checkBorrow 1 [869]=some s6Step75Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step75F4FlagArena,s6Step75HeadFvAfter,arenaWires]
  · change s6Step75Add0Arena.live=(s6Step75HeadFvAfter.live∪{877})∪{869}
    apply hmrArena_union_pair_of_filter_check s6Step75HeadFvAfter s6Step75Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 877 869 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step75F4_distinct : (855::794::877::869::((s6Step75Add0A++s6Step75Add1A)++(s6Step75Add0B++s6Step75Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step75F4_flag : s6Step75HeadFvAfter.checkBorrow 1 [877]=some s6Step75F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step75HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step75F4_owned : (855::794::((s6Step75Add0A++s6Step75Add1A)++(s6Step75Add0B++s6Step75Add1B))).toFinset⊆s6Step75HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step75HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step75F4_checked : compileHmrHybridF4Log s6Step75HeadFvAfter 855 794 s6Step75Add0A s6Step75Add0B s6Step75Add1A s6Step75Add1B [877] [869] s6Step75Add0Work s6Step75Add1Work=some s6Step75F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step75HeadFvAfter s6Step75F4FlagArena s6Step75Add0Arena s6Step75Add0During s6Step75Add1During 855 794
    s6Step75Add0A s6Step75Add0B s6Step75Add1A s6Step75Add1B [877] [869] s6Step75Add0Work s6Step75Add1Work
    (fun q hq => s6Step75F4_owned (List.mem_toFinset.mpr hq)) s6Step75F4_flag s6Step75F4_carry
    s6Step75F4_distinct s6Step75F4_apart s6Step75Add0_checked s6Step75Add1_checked

private theorem s6Step75Front_branch : s6Step75FrontSigmaArena.checkBorrow 1 [794]=some s6Step75HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step75FrontSigmaArena,s6Step75EntryGvAfter,arenaWires]
  · change s6Step75HeadGBefore.live=(s6Step75EntryGvAfter.live∪{855})∪{794}
    apply hmrArena_union_pair_of_filter_check s6Step75EntryGvAfter s6Step75HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 855 794 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step75Front_entry : HmrFrontEntryValid s6Step75EntryFBefore s6Step75FrontBank 231 51 ⟨231,230,52,51⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step75FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step75EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step75EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step75FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step75Front_sigma : s6Step75EntryGvAfter.checkBorrow 1 [855]=some s6Step75FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step75EntryGvAfter,arenaWires]
  · rfl

private def s6Step75HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step75HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step75HeadFBefore : Arena := s6Step75HeadGAfter

private def s6Step75HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486],795⟩

private def s6Step75HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841],776⟩

private def s6Step75HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230],777⟩

private def s6Step75HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822],775⟩

private theorem s6Step75HeadBank_incomingDistinct : ([s6Step75HeadGRow,s6Step75HeadFRow,s6Step75HeadGvRow,s6Step75HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step75HeadF_Incoming : rowsOwned s6Step75HeadFBefore [s6Step75HeadFRow,s6Step75HeadGvRow,s6Step75HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step75HeadGRow,s6Step75HeadFRow,s6Step75HeadGvRow,s6Step75HeadFvRow] 1 s6Step75HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step75HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step75HeadBank_outgoingOwned : rowsOwned s6Step75HeadFvAfter [s6Step75HeadGOut,s6Step75HeadFOut,s6Step75HeadGvOut,s6Step75HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step75HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step75HeadF_Outgoing : rowsOwned s6Step75HeadFvAfter [s6Step75HeadFOut,s6Step75HeadGvOut,s6Step75HeadFvOut] :=
  hmrRows_owned_drop s6Step75HeadFvAfter [s6Step75HeadGOut,s6Step75HeadFOut,s6Step75HeadGvOut,s6Step75HeadFvOut] 1 s6Step75HeadBank_outgoingOwned

private theorem s6Step75HeadF_distinct : (s6Step75HeadFRow.sign::s6Step75HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step75HeadF_owned : (s6Step75HeadFRow.sign::s6Step75HeadFRow.payload).toFinset⊆s6Step75HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step75HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step75HeadF_reserved : s6Step75HeadFBefore.reserve s6Step75HeadFFresh.toFinset=some s6Step75HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step75HeadFFresh,arenaWires]
  · norm_num [s6Step75HeadFBefore,s6Step75HeadGAfter,s6Step75HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step75HeadFBefore s6Step75HeadFAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step75HeadFFresh rfl rfl
    · norm_num [s6Step75HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step75HeadF_checked : planRowResizeLog s6Step75HeadFBefore s6Step75HeadFRow 232 s6Step75HeadFFresh=
    some (s6Step75HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 780],795⟩,growRow 795 s6Step75HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step75HeadFBefore s6Step75HeadFAfter s6Step75HeadFRow 232 s6Step75HeadFFresh
    s6Step75HeadF_distinct s6Step75HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step75HeadF_reserved
  have rowEq : WindowRow.mk (s6Step75HeadFRow.payload++s6Step75HeadFFresh) s6Step75HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 780],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step75HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step75HeadFvBefore : Arena := s6Step75HeadGvAfter

private theorem s6Step75HeadFv_Incoming : rowsOwned s6Step75HeadFvBefore [s6Step75HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step75HeadGRow,s6Step75HeadFRow,s6Step75HeadGvRow,s6Step75HeadFvRow] 3 s6Step75HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step75HeadFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step75HeadFv_Outgoing : rowsOwned s6Step75HeadFvAfter [s6Step75HeadFvOut] :=
  hmrRows_owned_drop s6Step75HeadFvAfter [s6Step75HeadGOut,s6Step75HeadFOut,s6Step75HeadGvOut,s6Step75HeadFvOut] 3 s6Step75HeadBank_outgoingOwned

private theorem s6Step75HeadFv_distinct : (s6Step75HeadFvRow.sign::s6Step75HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step75HeadFv_owned : (s6Step75HeadFvRow.sign::s6Step75HeadFvRow.payload).toFinset⊆s6Step75HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step75HeadFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step75HeadFv_reserved : s6Step75HeadFvBefore.reserve s6Step75HeadFvFresh.toFinset=some s6Step75HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step75HeadFvFresh,arenaWires]
  · norm_num [s6Step75HeadFvBefore,s6Step75HeadGvAfter,s6Step75HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step75HeadFvBefore s6Step75HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step75HeadFvFresh rfl rfl
    · norm_num [s6Step75HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step75HeadFv_checked : planRowResizeLog s6Step75HeadFvBefore s6Step75HeadFvRow 52 s6Step75HeadFvFresh=
    some (s6Step75HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839],776⟩,growRow 776 s6Step75HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step75HeadFvBefore s6Step75HeadFvAfter s6Step75HeadFvRow 52 s6Step75HeadFvFresh
    s6Step75HeadFv_distinct s6Step75HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step75HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step75HeadFvRow.payload++s6Step75HeadFvFresh) s6Step75HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step75HeadG_Incoming : rowsOwned s6Step75HeadGBefore [s6Step75HeadGRow,s6Step75HeadFRow,s6Step75HeadGvRow,s6Step75HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step75HeadGRow,s6Step75HeadFRow,s6Step75HeadGvRow,s6Step75HeadFvRow] 0 s6Step75HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step75HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step75HeadG_Outgoing : rowsOwned s6Step75HeadFvAfter [s6Step75HeadGOut,s6Step75HeadFOut,s6Step75HeadGvOut,s6Step75HeadFvOut] :=
  hmrRows_owned_drop s6Step75HeadFvAfter [s6Step75HeadGOut,s6Step75HeadFOut,s6Step75HeadGvOut,s6Step75HeadFvOut] 0 s6Step75HeadBank_outgoingOwned

private theorem s6Step75HeadG_distinct : (s6Step75HeadGRow.sign::s6Step75HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step75HeadG_owned : (s6Step75HeadGRow.sign::s6Step75HeadGRow.payload).toFinset⊆s6Step75HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step75HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step75HeadG_reserved : s6Step75HeadGBefore.reserve s6Step75HeadGFresh.toFinset=some s6Step75HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step75HeadGFresh,arenaWires]
  · norm_num [s6Step75HeadGBefore,s6Step75HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step75HeadGBefore s6Step75HeadGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step75HeadGFresh rfl rfl
    · norm_num [s6Step75HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step75HeadG_checked : planRowResizeLog s6Step75HeadGBefore s6Step75HeadGRow 232 s6Step75HeadGFresh=
    some (s6Step75HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 843],777⟩,growRow 777 s6Step75HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step75HeadGBefore s6Step75HeadGAfter s6Step75HeadGRow 232 s6Step75HeadGFresh
    s6Step75HeadG_distinct s6Step75HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step75HeadG_reserved
  have rowEq : WindowRow.mk (s6Step75HeadGRow.payload++s6Step75HeadGFresh) s6Step75HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 843],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step75HeadGvBefore : Arena := s6Step75HeadFAfter

private theorem s6Step75HeadGv_Incoming : rowsOwned s6Step75HeadGvBefore [s6Step75HeadGvRow,s6Step75HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step75HeadGRow,s6Step75HeadFRow,s6Step75HeadGvRow,s6Step75HeadFvRow] 2 s6Step75HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step75HeadGvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step75HeadGv_Outgoing : rowsOwned s6Step75HeadFvAfter [s6Step75HeadGvOut,s6Step75HeadFvOut] :=
  hmrRows_owned_drop s6Step75HeadFvAfter [s6Step75HeadGOut,s6Step75HeadFOut,s6Step75HeadGvOut,s6Step75HeadFvOut] 2 s6Step75HeadBank_outgoingOwned

private theorem s6Step75HeadGv_distinct : (s6Step75HeadGvRow.sign::s6Step75HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step75HeadGv_owned : (s6Step75HeadGvRow.sign::s6Step75HeadGvRow.payload).toFinset⊆s6Step75HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step75HeadGvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step75HeadGv_reserved : s6Step75HeadGvBefore.reserve s6Step75HeadGvFresh.toFinset=some s6Step75HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step75HeadGvFresh,arenaWires]
  · norm_num [s6Step75HeadGvBefore,s6Step75HeadFAfter,s6Step75HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step75HeadGvBefore s6Step75HeadGvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step75HeadGvFresh rfl rfl
    · norm_num [s6Step75HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step75HeadGv_checked : planRowResizeLog s6Step75HeadGvBefore s6Step75HeadGvRow 52 s6Step75HeadGvFresh=
    some (s6Step75HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898],775⟩,growRow 775 s6Step75HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step75HeadGvBefore s6Step75HeadGvAfter s6Step75HeadGvRow 52 s6Step75HeadGvFresh
    s6Step75HeadGv_distinct s6Step75HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step75HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step75HeadGvRow.payload++s6Step75HeadGvFresh) s6Step75HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step75HeadBank_rows : planWindowRowsLog s6Step75HeadGBefore [(s6Step75HeadGRow,232),(s6Step75HeadFRow,232),(s6Step75HeadGvRow,52),(s6Step75HeadFvRow,52)] [s6Step75HeadGFresh,s6Step75HeadFFresh,s6Step75HeadGvFresh,s6Step75HeadFvFresh]=
    some (s6Step75HeadFvAfter,[s6Step75HeadGOut,s6Step75HeadFOut,s6Step75HeadGvOut,s6Step75HeadFvOut],(growRow 777 s6Step75HeadGFresh ++ (growRow 795 s6Step75HeadFFresh ++ (growRow 775 s6Step75HeadGvFresh ++ (growRow 776 s6Step75HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step75HeadFvAfter [] []=some (s6Step75HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step75HeadFvBefore s6Step75HeadFvAfter s6Step75HeadFvAfter
    s6Step75HeadFvRow s6Step75HeadFvOut 52 s6Step75HeadFvFresh [] [] []
    (growRow 776 s6Step75HeadFvFresh) ([]) s6Step75HeadFv_Incoming s6Step75HeadFv_checked h4 s6Step75HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step75HeadGvBefore s6Step75HeadGvAfter s6Step75HeadFvAfter
    s6Step75HeadGvRow s6Step75HeadGvOut 52 s6Step75HeadGvFresh [(s6Step75HeadFvRow,52)] [s6Step75HeadFvFresh] [s6Step75HeadFvOut]
    (growRow 775 s6Step75HeadGvFresh) ((growRow 776 s6Step75HeadFvFresh ++ [])) s6Step75HeadGv_Incoming s6Step75HeadGv_checked h3 s6Step75HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step75HeadFBefore s6Step75HeadFAfter s6Step75HeadFvAfter
    s6Step75HeadFRow s6Step75HeadFOut 232 s6Step75HeadFFresh [(s6Step75HeadGvRow,52),(s6Step75HeadFvRow,52)] [s6Step75HeadGvFresh,s6Step75HeadFvFresh] [s6Step75HeadGvOut,s6Step75HeadFvOut]
    (growRow 795 s6Step75HeadFFresh) ((growRow 775 s6Step75HeadGvFresh ++ (growRow 776 s6Step75HeadFvFresh ++ []))) s6Step75HeadF_Incoming s6Step75HeadF_checked h2 s6Step75HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step75HeadGBefore s6Step75HeadGAfter s6Step75HeadFvAfter
    s6Step75HeadGRow s6Step75HeadGOut 232 s6Step75HeadGFresh [(s6Step75HeadFRow,232),(s6Step75HeadGvRow,52),(s6Step75HeadFvRow,52)] [s6Step75HeadFFresh,s6Step75HeadGvFresh,s6Step75HeadFvFresh] [s6Step75HeadFOut,s6Step75HeadGvOut,s6Step75HeadFvOut]
    (growRow 777 s6Step75HeadGFresh) ((growRow 795 s6Step75HeadFFresh ++ (growRow 775 s6Step75HeadGvFresh ++ (growRow 776 s6Step75HeadFvFresh ++ [])))) s6Step75HeadG_Incoming s6Step75HeadG_checked h1 s6Step75HeadG_Outgoing
  exact h0

private theorem s6Step75HeadBank_checked : compileHmrBankResizeLog .headroom s6Step75HeadGBefore ⟨s6Step75HeadFRow,s6Step75HeadGRow,s6Step75HeadFvRow,s6Step75HeadGvRow⟩ ⟨232,232,52,52⟩ [s6Step75HeadGFresh,s6Step75HeadFFresh,s6Step75HeadGvFresh,s6Step75HeadFvFresh]=
    some (s6Step75HeadFvAfter,⟨s6Step75HeadFOut,s6Step75HeadGOut,s6Step75HeadFvOut,s6Step75HeadGvOut⟩,(growRow 777 s6Step75HeadGFresh ++ (growRow 795 s6Step75HeadFFresh ++ (growRow 775 s6Step75HeadGvFresh ++ (growRow 776 s6Step75HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step75HeadBank_rows]
  rfl

private theorem s6Step75Front_checked : compileHmrSourceFrontLog s6Step75EntryFBefore s6Step75FrontBank 231 51 ⟨231,230,52,51⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step75FrontLog=some s6Step75FrontPlan := by
  have pairEq : s6Step75FrontPair=⟨s6Step75HeadFRow,s6Step75HeadGRow,s6Step75HeadFvRow,s6Step75HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step75FrontHead=⟨s6Step75ExitFRow,s6Step75ExitGRow,s6Step75ExitFvRow,s6Step75ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step75Add0A=s6Step75FrontHead.f.wires := by decide +kernel
  have gEq : s6Step75Add0B=s6Step75FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step75Add1A=s6Step75FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step75Add1B=s6Step75FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step75EntryFBefore s6Step75FrontBank 231 51 ⟨231,230,52,51⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step75FrontLog s6Step75FrontPlan
  · exact s6Step75Front_entry
  · exact s6Step75EntryBank_checked
  · exact s6Step75Front_sigma
  · rfl
  · exact s6Step75Front_branch
  · rfl
  · simpa only [s6Step75FrontPlan,pairEq] using s6Step75HeadBank_checked
  · simpa only [s6Step75FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step75F4_checked
  · exact s6Step75Counter_checked
  · rfl
  · simpa only [s6Step75FrontPlan,headEq] using s6Step75ExitBank_checked

private theorem s6Step75Complete_explicit_checked : compileHmrEarlyStepLog s6Step75EntryFBefore s6Step75FrontBank 231 51 ⟨231,230,52,51⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step75CompleteLog=some s6Step75CompletePlan := by
  let Q := s6Step75EarlyControlPlan
  have hq := s6Step75EarlyControl_plan_checked
  have fv1 : s6Step75CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step75CompleteOut.fv.payload[2]?.getD s6Step75CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step75CompleteOut.fv.payload[3]?.getD s6Step75CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step75CompleteOut.fv.payload[4]?.getD s6Step75CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step75EntryFBefore s6Step75EarlyControlArena s6Step75FrontBank 231 51 ⟨231,230,52,51⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step75CompleteLog s6Step75FrontPlan Q
    s6Step75Front_checked s6Step75Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step75Complete_owned s6Step75Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step75EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 855 s6Step75CompleteOut.fv.second (s6Step75CompleteOut.fv.payload[2]?.getD s6Step75CompleteOut.fv.sign) (s6Step75CompleteOut.fv.payload[3]?.getD s6Step75CompleteOut.fv.sign) (s6Step75CompleteOut.fv.payload[4]?.getD s6Step75CompleteOut.fv.sign) 794 30 s6Step75EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep75Arena : Arena := s6Step75EntryFBefore
def s6PrivateStep75Bank : WindowBank := s6Step75FrontBank
def s6PrivateStep75Spec : HmrSourceWalkStepLog := ⟨231,51,⟨231,230,52,51⟩,30,.early s6Step75CompleteLog⟩
def s6PrivateStep75Plan : HmrSourceStepPlan := .early s6Step75CompletePlan
theorem s6PrivateStep75_source : s6PrivateStep75Spec=s6ObservedLogs64[11] := rfl
theorem s6PrivateStep75_checked : compileHmrSourceStepLog s6PrivateStep75Arena s6PrivateStep75Bank
    s6PrivateStep75Spec.fgWidth s6PrivateStep75Spec.vWidth s6PrivateStep75Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902]
    6 498 75 s6PrivateStep75Spec.need none s6PrivateStep75Spec.log=some s6PrivateStep75Plan := by
  change compileHmrSourceStepLog s6Step75EntryFBefore s6Step75FrontBank 231 51 ⟨231,230,52,51⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 6 498 75 30 none (.early s6Step75CompleteLog)=some (.early s6Step75CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 75<498)]
  rw [s6Step75Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
