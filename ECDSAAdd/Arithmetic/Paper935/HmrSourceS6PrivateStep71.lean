import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep69
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

private def s6Step71CompleteMoves : List (Wire × Wire) := [(850,231)]

private def s6Step71EarlyControlLog : HmrEarlyControlLog := ⟨[850, 898, 838, 839, 869],[843],[780],[855, 803, 922, 879, 784, 891],[]⟩

private def s6Step71FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [898]],[[839], [854], [838], [822]],[[], [], [], []]⟩,[877],[841],[869],[843],[780, 855, 803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[780, 855, 803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920],[869, 843, 780, 855]⟩

private def s6Step71CompleteLog : HmrEarlyStepLog := ⟨s6Step71FrontLog,s6Step71CompleteMoves,s6Step71EarlyControlLog⟩

private def s6Step71ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 854],795⟩

private def s6Step71ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 822],776⟩

private def s6Step71ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230],777⟩

private def s6Step71ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848],775⟩

private def s6Step71FrontOut : WindowBank := ⟨s6Step71ExitFOut,s6Step71ExitGOut,s6Step71ExitFvOut,s6Step71ExitGvOut⟩

private def s6Step71CompleteOut : WindowBank := s6Step71FrontOut.repacked s6Step71CompleteMoves

private def s6Step71EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(851,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step71EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step71EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step71EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step71EarlyControlPositiveArena,[843],s6Step71EarlyControlEqualityArena,[780],⟨⟨877,false⟩,[⟨⟨843,false⟩,780⟩]⟩⟩

private def s6Step71EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step71EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step71EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(851,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step71EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(851,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step71EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(851,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step71EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step71EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,850⟩,⟨⟨772,false⟩,898⟩,⟨⟨771,false⟩,838⟩,⟨⟨770,false⟩,839⟩,⟨⟨769,false⟩,869⟩]⟩

private def s6Step71EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step71EarlyControlZeroArena,s6Step71EarlyControlZeroPlan,s6Step71EarlyControlClassPlan,s6Step71EarlyControlFlagArena,s6Step71EarlyControlFittedArena,s6Step71EarlyControlHistoryArena,s6Step71EarlyControlSigmaArena,s6Step71EarlyControlOutputArena,s6Step71EarlyControlLog⟩

private def s6Step71CounterWork : List Wire := [869, 843, 780, 855]

private theorem s6Step71Counter_bounded : s6Step71CounterWork.toFinset⊆arenaWires := by norm_num [s6Step71CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step71HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step71CounterDuring : Arena := ⟨s6Step71HeadFvAfter.live∪s6Step71CounterWork.toFinset,Finset.union_subset s6Step71HeadFvAfter.bounded s6Step71Counter_bounded⟩

private def s6Step71EntryFFresh : List Wire := []

private def s6Step71EntryFvFresh : List Wire := []

private def s6Step71EntryGFresh : List Wire := []

private def s6Step71EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step71EntryGvFresh : List Wire := [898]

private def s6Step71ExitGExtra : List Wire := [231, 839]

private def s6Step71ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,231),(232,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step71ExitGvExtra : List Wire := [898, 838]

private def s6Step71Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step71Add0Work : List Wire := [780, 855, 803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step71Add0_bounded : s6Step71Add0Work.toFinset⊆arenaWires := by
  have h : s6Step71Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step71Add0During : Arena := ⟨s6Step71Add0Arena.live∪s6Step71Add0Work.toFinset,Finset.union_subset s6Step71Add0Arena.bounded s6Step71Add0_bounded⟩

private def s6Step71Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step71Add1Work : List Wire := [780, 855, 803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920]

private theorem s6Step71Add1_bounded : s6Step71Add1Work.toFinset⊆arenaWires := by
  have h : s6Step71Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step71Add1During : Arena := ⟨s6Step71Add1Arena.live∪s6Step71Add1Work.toFinset,Finset.union_subset s6Step71Add1Arena.bounded s6Step71Add1_bounded⟩

private def s6Step71F4FlagArena : Arena := ⟨s6Step71HeadFvAfter.live∪{869},Finset.union_subset s6Step71HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step71F4Plan : HmrHybridF4Plan := ⟨s6Step71F4FlagArena,[869],s6Step71Add0Arena,[843],s6Step71Add0During,s6Step71Add0Work,s6Step71Add1During,s6Step71Add1Work⟩

private def s6Step71HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 854],795⟩

private def s6Step71HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 822],776⟩

private def s6Step71HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 839],777⟩

private def s6Step71HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 898, 838],775⟩

private def s6Step71FrontHead : WindowBank := ⟨s6Step71HeadFOut,s6Step71HeadGOut,s6Step71HeadFvOut,s6Step71HeadGvOut⟩

private def s6Step71EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487],795⟩

private def s6Step71EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821],776⟩

private def s6Step71EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231],777⟩

private def s6Step71EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 898],775⟩

private def s6Step71FrontPair : WindowBank := ⟨s6Step71EntryFOut,s6Step71EntryGOut,s6Step71EntryFvOut,s6Step71EntryGvOut⟩

private def s6Step71FrontSigmaArena : Arena := ⟨s6Step71EntryGvAfter.live∪{877},Finset.union_subset s6Step71EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step71HeadFFresh : List Wire := [854]

private def s6Step71HeadFvFresh : List Wire := [822]

private def s6Step71HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step71HeadGFresh : List Wire := [839]

private def s6Step71HeadGvFresh : List Wire := [838]

private def s6Step71FrontPlan : HmrSourceFront := ⟨s6Step71EntryGvAfter,s6Step71FrontPair,(growRow 795 s6Step71EntryFFresh ++ (growRow 777 s6Step71EntryGFresh ++ (growRow 776 s6Step71EntryFvFresh ++ (growRow 775 s6Step71EntryGvFresh ++ [])))),s6Step71FrontSigmaArena,[877],s6Step71HeadGBefore,[841],
  s6Step71HeadFvAfter,s6Step71FrontHead,(growRow 777 s6Step71HeadGFresh ++ (growRow 795 s6Step71HeadFFresh ++ (growRow 775 s6Step71HeadGvFresh ++ (growRow 776 s6Step71HeadFvFresh ++ [])))),s6Step71F4Plan,s6Step71CounterDuring,s6Step71CounterWork,s6Step71ExitGvAfter,s6Step71FrontOut,(shrinkRow 777 s6Step71ExitGExtra ++ (growRow 795 [] ++ (growRow 776 [] ++ (shrinkRow 775 s6Step71ExitGvExtra ++ []))))⟩

private def s6Step71CompletePlan : HmrEarlyStepPlan := ⟨s6Step71FrontPlan,s6Step71EarlyControlArena,s6Step71EarlyControlPlan,s6Step71CompleteMoves⟩

private theorem s6Step71Complete_apart : List.Disjoint (s6Step71CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [877, 841, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] := by
  have nd : ((s6Step71CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[877, 841, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step71Complete_owned : (s6Step71CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step71EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step71EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(851,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step71CompleteRelocationMove0Borrowed : Arena := ⟨s6Step71ExitGvAfter.live∪{231},Finset.union_subset s6Step71ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step71CompleteRelocation_move0_owned : 850∈s6Step71ExitGvAfter.live := by norm_num [s6Step71ExitGvAfter,arenaWires]

private theorem s6Step71CompleteRelocation_move0_reserve : s6Step71ExitGvAfter.reserve {231}=some s6Step71CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step71ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step71CompleteRelocation_move0_retire : s6Step71CompleteRelocationMove0Borrowed.retireSet {850}=s6Step71EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step71CompleteRelocationMove0Borrowed s6Step71EarlyControlArena {850}
  change s6Step71EarlyControlArena.live=(s6Step71ExitGvAfter.live∪{231})\{850}
  apply hmrArena_update_of_filter_check s6Step71ExitGvAfter s6Step71EarlyControlArena (fun q => ([(0,231),(232,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(851,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [231] [850] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step71CompleteRelocation_checked : s6Step71ExitGvAfter.checkRepack [(850,231)]=some s6Step71EarlyControlArena := by
  have tail1 : s6Step71EarlyControlArena.checkRepack []=some s6Step71EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step71ExitGvAfter s6Step71CompleteRelocationMove0Borrowed s6Step71EarlyControlArena s6Step71EarlyControlArena 850 231 []
    s6Step71CompleteRelocation_move0_owned s6Step71CompleteRelocation_move0_reserve s6Step71CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step71Complete_repack : s6Step71ExitGvAfter.checkRepack s6Step71CompleteMoves=some s6Step71EarlyControlArena := by
  simpa only [s6Step71CompleteMoves] using s6Step71CompleteRelocation_checked

private theorem s6Step71EarlyControl_branchOwned : ([841] : List Wire).toFinset⊆s6Step71EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step71EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(851,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step71EarlyControl_branch : compileHmrBranchRetirement s6Step71EarlyControlSigmaArena 841=some s6Step71EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step71EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step71EarlyControlSigmaArena s6Step71EarlyControlOutputArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(851,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(851,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [841] rfl rfl
    decide +kernel

private theorem s6Step71EarlyControl_classEqualityBorrow : s6Step71EarlyControlPositiveArena.checkBorrow (([877, 843] : List Wire).length-1) s6Step71EarlyControlLog.classWork=some s6Step71EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step71EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step71EarlyControlPositiveArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step71EarlyControlPositiveArena s6Step71EarlyControlEqualityArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step71EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step71EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step71EarlyControl_classEqualityOwned : ([877, 843] : List Wire).toFinset⊆s6Step71EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step71EarlyControlPositiveArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step71EarlyControl_classEquality : compileHmrEqualityLog s6Step71EarlyControlPositiveArena [877, 843] 0 s6Step71EarlyControlLog.classWork=some (s6Step71EarlyControlEqualityArena,s6Step71EarlyControlLog.classWork,s6Step71EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step71EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step71EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step71EarlyControl_classOwned : ([769, 869, 877] : List Wire).toFinset⊆s6Step71EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step71EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step71EarlyControl_positiveBorrow : s6Step71EarlyControlZeroArena.checkBorrow (1) s6Step71EarlyControlLog.positiveWork=some s6Step71EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step71EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step71EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step71EarlyControlZeroArena s6Step71EarlyControlPositiveArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step71EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step71EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step71EarlyControl_class : compileHmrSourceClassLog s6Step71EarlyControlZeroArena false 769 s6Step71EarlyControlZeroPlan.top 0 877 s6Step71EarlyControlLog.positiveWork s6Step71EarlyControlLog.classWork=some s6Step71EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step71EarlyControlClassPlan s6Step71EarlyControlZeroArena false 769 s6Step71EarlyControlZeroPlan.top 0 877
  constructor
  · decide +kernel
  · exact s6Step71EarlyControl_classOwned
  · exact s6Step71EarlyControl_positiveBorrow
  · exact s6Step71EarlyControl_classEquality

private theorem s6Step71EarlyControl_entryRecordOwned : ([841, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step71EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step71EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(851,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step71EarlyControl_entrySigmaOwned : ([877, 254] : List Wire).toFinset⊆s6Step71EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step71EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(851,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step71EarlyControl_fitBorrow : s6Step71EarlyControlFlagArena.checkBorrow ((30-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).length)) s6Step71EarlyControlLog.recordFresh=some s6Step71EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step71EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step71EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step71EarlyControlFittedArena,s6Step71EarlyControlFlagArena,s6Step71EarlyControlLog,arenaWires]

private theorem s6Step71EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step71EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step71EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step71EarlyControl_fit : compileHmrRecordGrowLog s6Step71EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step71EarlyControlLog.recordFresh=some s6Step71EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step71EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step71EarlyControl_fitBorrow

private theorem s6Step71EarlyControl_flagsBorrow : s6Step71EarlyControlEqualityArena.checkBorrow (6) s6Step71EarlyControlLog.flagWork=some s6Step71EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step71EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step71EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step71EarlyControlEqualityArena s6Step71EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step71EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step71EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step71EarlyControl_flagsOwned : ([780, 253, 252, 251] : List Wire).toFinset⊆s6Step71EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step71EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step71EarlyControl_flags : compileHmrFlagsLog s6Step71EarlyControlClassPlan.equalityArena s6Step71EarlyControlClassPlan.equality.top 253 252 251 s6Step71EarlyControlLog.flagWork=some s6Step71EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step71EarlyControl_flagsOwned⟩
  · exact s6Step71EarlyControl_flagsBorrow

private theorem s6Step71EarlyControl_historyBorrow : s6Step71EarlyControlArena.checkBorrow ((30-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).length)) s6Step71EarlyControlLog.recordFresh=some s6Step71EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step71EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step71EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(851,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step71EarlyControlArena s6Step71EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(851,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(851,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step71EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step71EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step71EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step71EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step71EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(851,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step71EarlyControl_history : compileHmrRecordGrowLog s6Step71EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step71EarlyControlLog.recordFresh=some s6Step71EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step71EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step71EarlyControl_historyBorrow

private theorem s6Step71EarlyControl_sigmaOwned : ([254, 877] : List Wire).toFinset⊆s6Step71EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step71EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(851,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step71EarlyControl_sigmaReleaseOwned : ([877] : List Wire).toFinset⊆s6Step71EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step71EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(851,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step71EarlyControl_sigmaRelease : s6Step71EarlyControlHistoryArena.release {877} (fun _ => false)=some s6Step71EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step71EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step71EarlyControlHistoryArena s6Step71EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(851,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(851,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [877] rfl rfl
    decide +kernel

private theorem s6Step71EarlyControl_sigma : compileHmrSigmaDropLog s6Step71EarlyControlHistoryArena false 0 0 254 877 []=some s6Step71EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step71EarlyControl_sigmaOwned⟩
  · exact s6Step71EarlyControl_sigmaRelease

private theorem s6Step71EarlyControl_zeroBorrow : s6Step71EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step71EarlyControlLog.zeroWork=some s6Step71EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step71EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step71EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(851,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step71EarlyControlArena s6Step71EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(851,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step71EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step71EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step71EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step71EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step71EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(851,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step71EarlyControl_zero : compileHmrEqualityLog s6Step71EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step71EarlyControlLog.zeroWork=some (s6Step71EarlyControlZeroArena,s6Step71EarlyControlLog.zeroWork,s6Step71EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step71EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step71EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step71EarlyControl_logged : s6Step71EarlyControlPlan.Logged s6Step71EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 877 254 253 252 251 841 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step71EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step71EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step71EarlyControl_zero
  · exact s6Step71EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step71EarlyControl_flags
  · exact s6Step71EarlyControl_fit
  · exact s6Step71EarlyControl_history
  · exact s6Step71EarlyControl_sigma
  · exact s6Step71EarlyControl_branch

private theorem s6Step71EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step71EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 877 254 253 252 251 841 30 s6Step71EarlyControlLog=some s6Step71EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step71EarlyControlPlan s6Step71EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 877 254 253 252 251 841 30 s6Step71EarlyControl_logged

private def s6Step71EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step71EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487],795⟩

private def s6Step71EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821],776⟩

private def s6Step71EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231],777⟩

private def s6Step71EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848],775⟩

private def s6Step71FrontBank : WindowBank := ⟨s6Step71EntryFRow,s6Step71EntryGRow,s6Step71EntryFvRow,s6Step71EntryGvRow⟩

private def s6Step71Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 854, 795]

private def s6Step71Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 839, 777]

private def s6Step71Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 822, 776]

private def s6Step71Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 898, 838, 775]

private theorem s6Step71Counter_apart : Disjoint s6Step71HeadFvAfter.live s6Step71CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step71HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step71Counter_borrowed : s6Step71HeadFvAfter.checkBorrow 4 s6Step71CounterWork=some s6Step71CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step71HeadFvAfter s6Step71CounterDuring s6Step71CounterWork.toFinset s6Step71Counter_bounded s6Step71Counter_apart rfl

private theorem s6Step71Counter_owned : (877::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step71HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step71HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step71Counter_checked : compileHmrCounterStepLog s6Step71HeadFvAfter true 877 [774, 773, 772, 771, 770, 769] s6Step71CounterWork=some s6Step71CounterDuring := by
  have owned : ∀q∈877::[774, 773, 772, 771, 770, 769],q∈s6Step71HeadFvAfter.live := fun q hq => s6Step71Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step71Counter_borrowed

private def s6Step71EntryFAfter : Arena := s6Step71EntryFBefore

private theorem s6Step71EntryBank_incomingDistinct : ([s6Step71EntryFRow,s6Step71EntryGRow,s6Step71EntryFvRow,s6Step71EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step71EntryF_Incoming : rowsOwned s6Step71EntryFBefore [s6Step71EntryFRow,s6Step71EntryGRow,s6Step71EntryFvRow,s6Step71EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step71EntryFRow,s6Step71EntryGRow,s6Step71EntryFvRow,s6Step71EntryGvRow] 0 s6Step71EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step71EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step71EntryBank_outgoingOwned : rowsOwned s6Step71EntryGvAfter [s6Step71EntryFOut,s6Step71EntryGOut,s6Step71EntryFvOut,s6Step71EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step71EntryGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step71EntryF_Outgoing : rowsOwned s6Step71EntryGvAfter [s6Step71EntryFOut,s6Step71EntryGOut,s6Step71EntryFvOut,s6Step71EntryGvOut] :=
  hmrRows_owned_drop s6Step71EntryGvAfter [s6Step71EntryFOut,s6Step71EntryGOut,s6Step71EntryFvOut,s6Step71EntryGvOut] 0 s6Step71EntryBank_outgoingOwned

private theorem s6Step71EntryF_distinct : (s6Step71EntryFRow.sign::s6Step71EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step71EntryF_owned : (s6Step71EntryFRow.sign::s6Step71EntryFRow.payload).toFinset⊆s6Step71EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step71EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step71EntryF_reserved : s6Step71EntryFBefore.reserve s6Step71EntryFFresh.toFinset=some s6Step71EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step71EntryFFresh,arenaWires]
  · norm_num [s6Step71EntryFBefore,s6Step71EntryFFresh,arenaWires]
  · simp only [s6Step71EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step71EntryF_checked : planRowResizeLog s6Step71EntryFBefore s6Step71EntryFRow 232 s6Step71EntryFFresh=
    some (s6Step71EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487],795⟩,growRow 795 s6Step71EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step71EntryFBefore s6Step71EntryFAfter s6Step71EntryFRow 232 s6Step71EntryFFresh
    s6Step71EntryF_distinct s6Step71EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step71EntryF_reserved
  have rowEq : WindowRow.mk (s6Step71EntryFRow.payload++s6Step71EntryFFresh) s6Step71EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step71EntryFvAfter : Arena := s6Step71EntryFBefore

private def s6Step71EntryFvBefore : Arena := s6Step71EntryFBefore

private theorem s6Step71EntryFv_Incoming : rowsOwned s6Step71EntryFvBefore [s6Step71EntryFvRow,s6Step71EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step71EntryFRow,s6Step71EntryGRow,s6Step71EntryFvRow,s6Step71EntryGvRow] 2 s6Step71EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step71EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step71EntryFv_Outgoing : rowsOwned s6Step71EntryGvAfter [s6Step71EntryFvOut,s6Step71EntryGvOut] :=
  hmrRows_owned_drop s6Step71EntryGvAfter [s6Step71EntryFOut,s6Step71EntryGOut,s6Step71EntryFvOut,s6Step71EntryGvOut] 2 s6Step71EntryBank_outgoingOwned

private theorem s6Step71EntryFv_distinct : (s6Step71EntryFvRow.sign::s6Step71EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step71EntryFv_owned : (s6Step71EntryFvRow.sign::s6Step71EntryFvRow.payload).toFinset⊆s6Step71EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step71EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step71EntryFv_reserved : s6Step71EntryFvBefore.reserve s6Step71EntryFvFresh.toFinset=some s6Step71EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step71EntryFvFresh,arenaWires]
  · norm_num [s6Step71EntryFvBefore,s6Step71EntryFBefore,s6Step71EntryFvFresh,arenaWires]
  · simp only [s6Step71EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step71EntryFv_checked : planRowResizeLog s6Step71EntryFvBefore s6Step71EntryFvRow 49 s6Step71EntryFvFresh=
    some (s6Step71EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821],776⟩,growRow 776 s6Step71EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step71EntryFvBefore s6Step71EntryFvAfter s6Step71EntryFvRow 49 s6Step71EntryFvFresh
    s6Step71EntryFv_distinct s6Step71EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step71EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step71EntryFvRow.payload++s6Step71EntryFvFresh) s6Step71EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step71EntryGAfter : Arena := s6Step71EntryFBefore

private def s6Step71EntryGBefore : Arena := s6Step71EntryFBefore

private theorem s6Step71EntryG_Incoming : rowsOwned s6Step71EntryGBefore [s6Step71EntryGRow,s6Step71EntryFvRow,s6Step71EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step71EntryFRow,s6Step71EntryGRow,s6Step71EntryFvRow,s6Step71EntryGvRow] 1 s6Step71EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step71EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step71EntryG_Outgoing : rowsOwned s6Step71EntryGvAfter [s6Step71EntryGOut,s6Step71EntryFvOut,s6Step71EntryGvOut] :=
  hmrRows_owned_drop s6Step71EntryGvAfter [s6Step71EntryFOut,s6Step71EntryGOut,s6Step71EntryFvOut,s6Step71EntryGvOut] 1 s6Step71EntryBank_outgoingOwned

private theorem s6Step71EntryG_distinct : (s6Step71EntryGRow.sign::s6Step71EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step71EntryG_owned : (s6Step71EntryGRow.sign::s6Step71EntryGRow.payload).toFinset⊆s6Step71EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step71EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step71EntryG_reserved : s6Step71EntryGBefore.reserve s6Step71EntryGFresh.toFinset=some s6Step71EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step71EntryGFresh,arenaWires]
  · norm_num [s6Step71EntryGBefore,s6Step71EntryFBefore,s6Step71EntryGFresh,arenaWires]
  · simp only [s6Step71EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step71EntryG_checked : planRowResizeLog s6Step71EntryGBefore s6Step71EntryGRow 232 s6Step71EntryGFresh=
    some (s6Step71EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231],777⟩,growRow 777 s6Step71EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step71EntryGBefore s6Step71EntryGAfter s6Step71EntryGRow 232 s6Step71EntryGFresh
    s6Step71EntryG_distinct s6Step71EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step71EntryG_reserved
  have rowEq : WindowRow.mk (s6Step71EntryGRow.payload++s6Step71EntryGFresh) s6Step71EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step71EntryGvBefore : Arena := s6Step71EntryFBefore

private theorem s6Step71EntryGv_Incoming : rowsOwned s6Step71EntryGvBefore [s6Step71EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step71EntryFRow,s6Step71EntryGRow,s6Step71EntryFvRow,s6Step71EntryGvRow] 3 s6Step71EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step71EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step71EntryGv_Outgoing : rowsOwned s6Step71EntryGvAfter [s6Step71EntryGvOut] :=
  hmrRows_owned_drop s6Step71EntryGvAfter [s6Step71EntryFOut,s6Step71EntryGOut,s6Step71EntryFvOut,s6Step71EntryGvOut] 3 s6Step71EntryBank_outgoingOwned

private theorem s6Step71EntryGv_distinct : (s6Step71EntryGvRow.sign::s6Step71EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step71EntryGv_owned : (s6Step71EntryGvRow.sign::s6Step71EntryGvRow.payload).toFinset⊆s6Step71EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step71EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step71EntryGv_reserved : s6Step71EntryGvBefore.reserve s6Step71EntryGvFresh.toFinset=some s6Step71EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step71EntryGvFresh,arenaWires]
  · norm_num [s6Step71EntryGvBefore,s6Step71EntryFBefore,s6Step71EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step71EntryGvBefore s6Step71EntryGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step71EntryGvFresh rfl rfl
    · norm_num [s6Step71EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step71EntryGv_checked : planRowResizeLog s6Step71EntryGvBefore s6Step71EntryGvRow 49 s6Step71EntryGvFresh=
    some (s6Step71EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 898],775⟩,growRow 775 s6Step71EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step71EntryGvBefore s6Step71EntryGvAfter s6Step71EntryGvRow 49 s6Step71EntryGvFresh
    s6Step71EntryGv_distinct s6Step71EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step71EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step71EntryGvRow.payload++s6Step71EntryGvFresh) s6Step71EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 898],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step71EntryBank_rows : planWindowRowsLog s6Step71EntryFBefore [(s6Step71EntryFRow,232),(s6Step71EntryGRow,232),(s6Step71EntryFvRow,49),(s6Step71EntryGvRow,49)] [s6Step71EntryFFresh,s6Step71EntryGFresh,s6Step71EntryFvFresh,s6Step71EntryGvFresh]=
    some (s6Step71EntryGvAfter,[s6Step71EntryFOut,s6Step71EntryGOut,s6Step71EntryFvOut,s6Step71EntryGvOut],(growRow 795 s6Step71EntryFFresh ++ (growRow 777 s6Step71EntryGFresh ++ (growRow 776 s6Step71EntryFvFresh ++ (growRow 775 s6Step71EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step71EntryGvAfter [] []=some (s6Step71EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step71EntryGvBefore s6Step71EntryGvAfter s6Step71EntryGvAfter
    s6Step71EntryGvRow s6Step71EntryGvOut 49 s6Step71EntryGvFresh [] [] []
    (growRow 775 s6Step71EntryGvFresh) ([]) s6Step71EntryGv_Incoming s6Step71EntryGv_checked h4 s6Step71EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step71EntryFvBefore s6Step71EntryFvAfter s6Step71EntryGvAfter
    s6Step71EntryFvRow s6Step71EntryFvOut 49 s6Step71EntryFvFresh [(s6Step71EntryGvRow,49)] [s6Step71EntryGvFresh] [s6Step71EntryGvOut]
    (growRow 776 s6Step71EntryFvFresh) ((growRow 775 s6Step71EntryGvFresh ++ [])) s6Step71EntryFv_Incoming s6Step71EntryFv_checked h3 s6Step71EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step71EntryGBefore s6Step71EntryGAfter s6Step71EntryGvAfter
    s6Step71EntryGRow s6Step71EntryGOut 232 s6Step71EntryGFresh [(s6Step71EntryFvRow,49),(s6Step71EntryGvRow,49)] [s6Step71EntryFvFresh,s6Step71EntryGvFresh] [s6Step71EntryFvOut,s6Step71EntryGvOut]
    (growRow 777 s6Step71EntryGFresh) ((growRow 776 s6Step71EntryFvFresh ++ (growRow 775 s6Step71EntryGvFresh ++ []))) s6Step71EntryG_Incoming s6Step71EntryG_checked h2 s6Step71EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step71EntryFBefore s6Step71EntryFAfter s6Step71EntryGvAfter
    s6Step71EntryFRow s6Step71EntryFOut 232 s6Step71EntryFFresh [(s6Step71EntryGRow,232),(s6Step71EntryFvRow,49),(s6Step71EntryGvRow,49)] [s6Step71EntryGFresh,s6Step71EntryFvFresh,s6Step71EntryGvFresh] [s6Step71EntryGOut,s6Step71EntryFvOut,s6Step71EntryGvOut]
    (growRow 795 s6Step71EntryFFresh) ((growRow 777 s6Step71EntryGFresh ++ (growRow 776 s6Step71EntryFvFresh ++ (growRow 775 s6Step71EntryGvFresh ++ [])))) s6Step71EntryF_Incoming s6Step71EntryF_checked h1 s6Step71EntryF_Outgoing
  exact h0

private theorem s6Step71EntryBank_checked : compileHmrBankResizeLog .entry s6Step71EntryFBefore ⟨s6Step71EntryFRow,s6Step71EntryGRow,s6Step71EntryFvRow,s6Step71EntryGvRow⟩ ⟨232,232,49,49⟩ [s6Step71EntryFFresh,s6Step71EntryGFresh,s6Step71EntryFvFresh,s6Step71EntryGvFresh]=
    some (s6Step71EntryGvAfter,⟨s6Step71EntryFOut,s6Step71EntryGOut,s6Step71EntryFvOut,s6Step71EntryGvOut⟩,(growRow 795 s6Step71EntryFFresh ++ (growRow 777 s6Step71EntryGFresh ++ (growRow 776 s6Step71EntryFvFresh ++ (growRow 775 s6Step71EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step71EntryBank_rows]
  rfl

private def s6Step71ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,231),(232,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step71ExitFAfter : Arena := s6Step71ExitGAfter

private def s6Step71ExitFBefore : Arena := s6Step71ExitGAfter

private def s6Step71ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 854],795⟩

private def s6Step71ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 822],776⟩

private def s6Step71ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 839],777⟩

private def s6Step71ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 898, 838],775⟩

private theorem s6Step71ExitBank_incomingDistinct : ([s6Step71ExitGRow,s6Step71ExitFRow,s6Step71ExitFvRow,s6Step71ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step71ExitF_Incoming : rowsOwned s6Step71ExitFBefore [s6Step71ExitFRow,s6Step71ExitFvRow,s6Step71ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step71ExitGRow,s6Step71ExitFRow,s6Step71ExitFvRow,s6Step71ExitGvRow] 1 s6Step71ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step71ExitFBefore (fun q => ([(0,231),(232,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step71ExitBank_outgoingOwned : rowsOwned s6Step71ExitGvAfter [s6Step71ExitGOut,s6Step71ExitFOut,s6Step71ExitFvOut,s6Step71ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step71ExitGvAfter (fun q => ([(0,231),(232,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step71ExitF_Outgoing : rowsOwned s6Step71ExitGvAfter [s6Step71ExitFOut,s6Step71ExitFvOut,s6Step71ExitGvOut] :=
  hmrRows_owned_drop s6Step71ExitGvAfter [s6Step71ExitGOut,s6Step71ExitFOut,s6Step71ExitFvOut,s6Step71ExitGvOut] 1 s6Step71ExitBank_outgoingOwned

private theorem s6Step71ExitF_distinct : (s6Step71ExitFRow.sign::s6Step71ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step71ExitF_owned : (s6Step71ExitFRow.sign::s6Step71ExitFRow.payload).toFinset⊆s6Step71ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step71ExitFBefore (fun q => ([(0,231),(232,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step71ExitF_reserved : s6Step71ExitFBefore.reserve (∅ : Finset Wire)=some s6Step71ExitFAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step71ExitF_checked : planRowResizeLog s6Step71ExitFBefore s6Step71ExitFRow 233 []=
    some (s6Step71ExitFAfter,s6Step71ExitFOut,growRow 795 []) := by
  have result := planRowResizeLog_of_growth s6Step71ExitFBefore s6Step71ExitFAfter s6Step71ExitFRow 233 []
    s6Step71ExitF_distinct s6Step71ExitF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step71ExitF_reserved
  have rowEq : WindowRow.mk (s6Step71ExitFRow.payload++[]) s6Step71ExitFRow.sign=s6Step71ExitFOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step71ExitFvAfter : Arena := s6Step71ExitGAfter

private def s6Step71ExitFvBefore : Arena := s6Step71ExitGAfter

private theorem s6Step71ExitFv_Incoming : rowsOwned s6Step71ExitFvBefore [s6Step71ExitFvRow,s6Step71ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step71ExitGRow,s6Step71ExitFRow,s6Step71ExitFvRow,s6Step71ExitGvRow] 2 s6Step71ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step71ExitFvBefore (fun q => ([(0,231),(232,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step71ExitFv_Outgoing : rowsOwned s6Step71ExitGvAfter [s6Step71ExitFvOut,s6Step71ExitGvOut] :=
  hmrRows_owned_drop s6Step71ExitGvAfter [s6Step71ExitGOut,s6Step71ExitFOut,s6Step71ExitFvOut,s6Step71ExitGvOut] 2 s6Step71ExitBank_outgoingOwned

private theorem s6Step71ExitFv_distinct : (s6Step71ExitFvRow.sign::s6Step71ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step71ExitFv_owned : (s6Step71ExitFvRow.sign::s6Step71ExitFvRow.payload).toFinset⊆s6Step71ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step71ExitFvBefore (fun q => ([(0,231),(232,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step71ExitFv_reserved : s6Step71ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step71ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step71ExitFv_checked : planRowResizeLog s6Step71ExitFvBefore s6Step71ExitFvRow 50 []=
    some (s6Step71ExitFvAfter,s6Step71ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step71ExitFvBefore s6Step71ExitFvAfter s6Step71ExitFvRow 50 []
    s6Step71ExitFv_distinct s6Step71ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step71ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step71ExitFvRow.payload++[]) s6Step71ExitFvRow.sign=s6Step71ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step71ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step71ExitG_Incoming : rowsOwned s6Step71ExitGBefore [s6Step71ExitGRow,s6Step71ExitFRow,s6Step71ExitFvRow,s6Step71ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step71ExitGRow,s6Step71ExitFRow,s6Step71ExitFvRow,s6Step71ExitGvRow] 0 s6Step71ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step71ExitGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step71ExitG_Outgoing : rowsOwned s6Step71ExitGvAfter [s6Step71ExitGOut,s6Step71ExitFOut,s6Step71ExitFvOut,s6Step71ExitGvOut] :=
  hmrRows_owned_drop s6Step71ExitGvAfter [s6Step71ExitGOut,s6Step71ExitFOut,s6Step71ExitFvOut,s6Step71ExitGvOut] 0 s6Step71ExitBank_outgoingOwned

private theorem s6Step71ExitG_distinct : (s6Step71ExitGRow.sign::s6Step71ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step71ExitG_owned : (s6Step71ExitGRow.sign::s6Step71ExitGRow.payload).toFinset⊆s6Step71ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step71ExitGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step71ExitG_retired : s6Step71ExitGBefore.retireSet s6Step71ExitGExtra.toFinset=s6Step71ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step71ExitGBefore s6Step71ExitGAfter s6Step71ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step71ExitGBefore s6Step71ExitGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,231),(232,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step71ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step71ExitG_checked : planRowResizeLog s6Step71ExitGBefore s6Step71ExitGRow 231 []=
    some (s6Step71ExitGAfter,s6Step71ExitGOut,shrinkRow 777 s6Step71ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step71ExitGBefore s6Step71ExitGRow 231 s6Step71ExitG_distinct s6Step71ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step71ExitGRow.payload.take 231) s6Step71ExitGRow.sign=s6Step71ExitGOut := by decide +kernel
  have hi : s6Step71ExitGRow.payload.drop 231=s6Step71ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step71ExitG_retired] at result
  exact result

private def s6Step71ExitGvBefore : Arena := s6Step71ExitGAfter

private theorem s6Step71ExitGv_Incoming : rowsOwned s6Step71ExitGvBefore [s6Step71ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step71ExitGRow,s6Step71ExitFRow,s6Step71ExitFvRow,s6Step71ExitGvRow] 3 s6Step71ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step71ExitGvBefore (fun q => ([(0,231),(232,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step71ExitGv_Outgoing : rowsOwned s6Step71ExitGvAfter [s6Step71ExitGvOut] :=
  hmrRows_owned_drop s6Step71ExitGvAfter [s6Step71ExitGOut,s6Step71ExitFOut,s6Step71ExitFvOut,s6Step71ExitGvOut] 3 s6Step71ExitBank_outgoingOwned

private theorem s6Step71ExitGv_distinct : (s6Step71ExitGvRow.sign::s6Step71ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step71ExitGv_owned : (s6Step71ExitGvRow.sign::s6Step71ExitGvRow.payload).toFinset⊆s6Step71ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step71ExitGvBefore (fun q => ([(0,231),(232,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step71ExitGv_retired : s6Step71ExitGvBefore.retireSet s6Step71ExitGvExtra.toFinset=s6Step71ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step71ExitGvBefore s6Step71ExitGvAfter s6Step71ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step71ExitGvBefore s6Step71ExitGvAfter (fun q => ([(0,231),(232,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,231),(232,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step71ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step71ExitGv_checked : planRowResizeLog s6Step71ExitGvBefore s6Step71ExitGvRow 48 []=
    some (s6Step71ExitGvAfter,s6Step71ExitGvOut,shrinkRow 775 s6Step71ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step71ExitGvBefore s6Step71ExitGvRow 48 s6Step71ExitGv_distinct s6Step71ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step71ExitGvRow.payload.take 48) s6Step71ExitGvRow.sign=s6Step71ExitGvOut := by decide +kernel
  have hi : s6Step71ExitGvRow.payload.drop 48=s6Step71ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step71ExitGv_retired] at result
  exact result

private theorem s6Step71ExitBank_rows : planWindowRowsLog s6Step71ExitGBefore [(s6Step71ExitGRow,231),(s6Step71ExitFRow,233),(s6Step71ExitFvRow,50),(s6Step71ExitGvRow,48)] [[],[],[],[]]=
    some (s6Step71ExitGvAfter,[s6Step71ExitGOut,s6Step71ExitFOut,s6Step71ExitFvOut,s6Step71ExitGvOut],(shrinkRow 777 s6Step71ExitGExtra ++ (growRow 795 [] ++ (growRow 776 [] ++ (shrinkRow 775 s6Step71ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step71ExitGvAfter [] []=some (s6Step71ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step71ExitGvBefore s6Step71ExitGvAfter s6Step71ExitGvAfter
    s6Step71ExitGvRow s6Step71ExitGvOut 48 [] [] [] []
    (shrinkRow 775 s6Step71ExitGvExtra) ([]) s6Step71ExitGv_Incoming s6Step71ExitGv_checked h4 s6Step71ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step71ExitFvBefore s6Step71ExitFvAfter s6Step71ExitGvAfter
    s6Step71ExitFvRow s6Step71ExitFvOut 50 [] [(s6Step71ExitGvRow,48)] [[]] [s6Step71ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step71ExitGvExtra ++ [])) s6Step71ExitFv_Incoming s6Step71ExitFv_checked h3 s6Step71ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step71ExitFBefore s6Step71ExitFAfter s6Step71ExitGvAfter
    s6Step71ExitFRow s6Step71ExitFOut 233 [] [(s6Step71ExitFvRow,50),(s6Step71ExitGvRow,48)] [[],[]] [s6Step71ExitFvOut,s6Step71ExitGvOut]
    (growRow 795 []) ((growRow 776 [] ++ (shrinkRow 775 s6Step71ExitGvExtra ++ []))) s6Step71ExitF_Incoming s6Step71ExitF_checked h2 s6Step71ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step71ExitGBefore s6Step71ExitGAfter s6Step71ExitGvAfter
    s6Step71ExitGRow s6Step71ExitGOut 231 [] [(s6Step71ExitFRow,233),(s6Step71ExitFvRow,50),(s6Step71ExitGvRow,48)] [[],[],[]] [s6Step71ExitFOut,s6Step71ExitFvOut,s6Step71ExitGvOut]
    (shrinkRow 777 s6Step71ExitGExtra) ((growRow 795 [] ++ (growRow 776 [] ++ (shrinkRow 775 s6Step71ExitGvExtra ++ [])))) s6Step71ExitG_Incoming s6Step71ExitG_checked h1 s6Step71ExitG_Outgoing
  exact h0

private theorem s6Step71ExitBank_checked : compileHmrBankResizeLog .exit s6Step71ExitGBefore ⟨s6Step71ExitFRow,s6Step71ExitGRow,s6Step71ExitFvRow,s6Step71ExitGvRow⟩ ⟨233,231,50,48⟩ [[],[],[],[]]=
    some (s6Step71ExitGvAfter,⟨s6Step71ExitFOut,s6Step71ExitGOut,s6Step71ExitFvOut,s6Step71ExitGvOut⟩,(shrinkRow 777 s6Step71ExitGExtra ++ (growRow 795 [] ++ (growRow 776 [] ++ (shrinkRow 775 s6Step71ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step71ExitBank_rows]
  rfl

private theorem s6Step71Add0_apart : Disjoint s6Step71Add0Arena.live s6Step71Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step71Add0Arena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step71Add0_card : s6Step71Add0Arena.live.card=866 := by
  decide +kernel

private theorem s6Step71Add0_borrowed : s6Step71Add0Arena.checkBorrow (hmrHybridCount s6Step71Add0Arena s6Step71Add0B.length) s6Step71Add0Work=some s6Step71Add0During := by
  have len : s6Step71Add0Work.length=hmrHybridCount s6Step71Add0Arena s6Step71Add0B.length := by
    rw [hmrHybridCount,s6Step71Add0_card]
    decide +kernel
  have nd : s6Step71Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step71Add0Arena s6Step71Add0During s6Step71Add0Work.toFinset s6Step71Add0_bounded s6Step71Add0_apart rfl

private theorem s6Step71Add0_distinct : (869::841::843::(s6Step71Add0A++s6Step71Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step71Add0_owned : (869::841::843::(s6Step71Add0A++s6Step71Add0B)).toFinset⊆s6Step71Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step71Add0Arena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step71Add0_checked : compileHmrHybridCinLog s6Step71Add0Arena 841 869 843 s6Step71Add0A s6Step71Add0B s6Step71Add0Work=some s6Step71Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step71Add0Arena s6Step71Add0During 841 869 843 s6Step71Add0A s6Step71Add0B s6Step71Add0Work
    (by decide +kernel) (by decide +kernel) s6Step71Add0_distinct
    (fun q hq => s6Step71Add0_owned (List.mem_toFinset.mpr hq)) s6Step71Add0_borrowed

private theorem s6Step71Add1_apart : Disjoint s6Step71Add1Arena.live s6Step71Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step71Add1Arena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step71Add1_card : s6Step71Add1Arena.live.card=866 := by
  decide +kernel

private theorem s6Step71Add1_borrowed : s6Step71Add1Arena.checkBorrow (hmrHybridCount s6Step71Add1Arena s6Step71Add1B.length) s6Step71Add1Work=some s6Step71Add1During := by
  have len : s6Step71Add1Work.length=hmrHybridCount s6Step71Add1Arena s6Step71Add1B.length := by
    rw [hmrHybridCount,s6Step71Add1_card]
    decide +kernel
  have nd : s6Step71Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step71Add1Arena s6Step71Add1During s6Step71Add1Work.toFinset s6Step71Add1_bounded s6Step71Add1_apart rfl

private theorem s6Step71Add1_distinct : (869::841::843::(s6Step71Add1A++s6Step71Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step71Add1_owned : (869::841::843::(s6Step71Add1A++s6Step71Add1B)).toFinset⊆s6Step71Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step71Add1Arena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step71Add1_checked : compileHmrHybridCinLog s6Step71Add1Arena 841 869 843 s6Step71Add1A s6Step71Add1B s6Step71Add1Work=some s6Step71Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step71Add1Arena s6Step71Add1During 841 869 843 s6Step71Add1A s6Step71Add1B s6Step71Add1Work
    (by decide +kernel) (by decide +kernel) s6Step71Add1_distinct
    (fun q hq => s6Step71Add1_owned (List.mem_toFinset.mpr hq)) s6Step71Add1_borrowed

private theorem s6Step71F4_apart : Disjoint (s6Step71Add0A++s6Step71Add0B).toFinset (s6Step71Add1A++s6Step71Add1B).toFinset := by
  have nd : ((s6Step71Add0A++s6Step71Add0B)++(s6Step71Add1A++s6Step71Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step71F4_carry : s6Step71F4FlagArena.checkBorrow 1 [843]=some s6Step71Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step71F4FlagArena,s6Step71HeadFvAfter,arenaWires]
  · change s6Step71Add0Arena.live=(s6Step71HeadFvAfter.live∪{869})∪{843}
    apply hmrArena_union_pair_of_filter_check s6Step71HeadFvAfter s6Step71Add0Arena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 869 843 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step71F4_distinct : (877::841::869::843::((s6Step71Add0A++s6Step71Add1A)++(s6Step71Add0B++s6Step71Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step71F4_flag : s6Step71HeadFvAfter.checkBorrow 1 [869]=some s6Step71F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step71HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step71F4_owned : (877::841::((s6Step71Add0A++s6Step71Add1A)++(s6Step71Add0B++s6Step71Add1B))).toFinset⊆s6Step71HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step71HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step71F4_checked : compileHmrHybridF4Log s6Step71HeadFvAfter 877 841 s6Step71Add0A s6Step71Add0B s6Step71Add1A s6Step71Add1B [869] [843] s6Step71Add0Work s6Step71Add1Work=some s6Step71F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step71HeadFvAfter s6Step71F4FlagArena s6Step71Add0Arena s6Step71Add0During s6Step71Add1During 877 841
    s6Step71Add0A s6Step71Add0B s6Step71Add1A s6Step71Add1B [869] [843] s6Step71Add0Work s6Step71Add1Work
    (fun q hq => s6Step71F4_owned (List.mem_toFinset.mpr hq)) s6Step71F4_flag s6Step71F4_carry
    s6Step71F4_distinct s6Step71F4_apart s6Step71Add0_checked s6Step71Add1_checked

private theorem s6Step71Front_branch : s6Step71FrontSigmaArena.checkBorrow 1 [841]=some s6Step71HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step71FrontSigmaArena,s6Step71EntryGvAfter,arenaWires]
  · change s6Step71HeadGBefore.live=(s6Step71EntryGvAfter.live∪{877})∪{841}
    apply hmrArena_union_pair_of_filter_check s6Step71EntryGvAfter s6Step71HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 877 841 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step71Front_entry : HmrFrontEntryValid s6Step71EntryFBefore s6Step71FrontBank 232 49 ⟨233,231,50,48⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step71FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step71EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step71EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step71FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step71Front_sigma : s6Step71EntryGvAfter.checkBorrow 1 [877]=some s6Step71FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step71EntryGvAfter,arenaWires]
  · rfl

private def s6Step71HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step71HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step71HeadFBefore : Arena := s6Step71HeadGAfter

private def s6Step71HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487],795⟩

private def s6Step71HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821],776⟩

private def s6Step71HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231],777⟩

private def s6Step71HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 898],775⟩

private theorem s6Step71HeadBank_incomingDistinct : ([s6Step71HeadGRow,s6Step71HeadFRow,s6Step71HeadGvRow,s6Step71HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step71HeadF_Incoming : rowsOwned s6Step71HeadFBefore [s6Step71HeadFRow,s6Step71HeadGvRow,s6Step71HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step71HeadGRow,s6Step71HeadFRow,s6Step71HeadGvRow,s6Step71HeadFvRow] 1 s6Step71HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step71HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step71HeadBank_outgoingOwned : rowsOwned s6Step71HeadFvAfter [s6Step71HeadGOut,s6Step71HeadFOut,s6Step71HeadGvOut,s6Step71HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step71HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step71HeadF_Outgoing : rowsOwned s6Step71HeadFvAfter [s6Step71HeadFOut,s6Step71HeadGvOut,s6Step71HeadFvOut] :=
  hmrRows_owned_drop s6Step71HeadFvAfter [s6Step71HeadGOut,s6Step71HeadFOut,s6Step71HeadGvOut,s6Step71HeadFvOut] 1 s6Step71HeadBank_outgoingOwned

private theorem s6Step71HeadF_distinct : (s6Step71HeadFRow.sign::s6Step71HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step71HeadF_owned : (s6Step71HeadFRow.sign::s6Step71HeadFRow.payload).toFinset⊆s6Step71HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step71HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step71HeadF_reserved : s6Step71HeadFBefore.reserve s6Step71HeadFFresh.toFinset=some s6Step71HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step71HeadFFresh,arenaWires]
  · norm_num [s6Step71HeadFBefore,s6Step71HeadGAfter,s6Step71HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step71HeadFBefore s6Step71HeadFAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step71HeadFFresh rfl rfl
    · norm_num [s6Step71HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step71HeadF_checked : planRowResizeLog s6Step71HeadFBefore s6Step71HeadFRow 233 s6Step71HeadFFresh=
    some (s6Step71HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 854],795⟩,growRow 795 s6Step71HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step71HeadFBefore s6Step71HeadFAfter s6Step71HeadFRow 233 s6Step71HeadFFresh
    s6Step71HeadF_distinct s6Step71HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step71HeadF_reserved
  have rowEq : WindowRow.mk (s6Step71HeadFRow.payload++s6Step71HeadFFresh) s6Step71HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 854],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step71HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step71HeadFvBefore : Arena := s6Step71HeadGvAfter

private theorem s6Step71HeadFv_Incoming : rowsOwned s6Step71HeadFvBefore [s6Step71HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step71HeadGRow,s6Step71HeadFRow,s6Step71HeadGvRow,s6Step71HeadFvRow] 3 s6Step71HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step71HeadFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step71HeadFv_Outgoing : rowsOwned s6Step71HeadFvAfter [s6Step71HeadFvOut] :=
  hmrRows_owned_drop s6Step71HeadFvAfter [s6Step71HeadGOut,s6Step71HeadFOut,s6Step71HeadGvOut,s6Step71HeadFvOut] 3 s6Step71HeadBank_outgoingOwned

private theorem s6Step71HeadFv_distinct : (s6Step71HeadFvRow.sign::s6Step71HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step71HeadFv_owned : (s6Step71HeadFvRow.sign::s6Step71HeadFvRow.payload).toFinset⊆s6Step71HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step71HeadFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step71HeadFv_reserved : s6Step71HeadFvBefore.reserve s6Step71HeadFvFresh.toFinset=some s6Step71HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step71HeadFvFresh,arenaWires]
  · norm_num [s6Step71HeadFvBefore,s6Step71HeadGvAfter,s6Step71HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step71HeadFvBefore s6Step71HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step71HeadFvFresh rfl rfl
    · norm_num [s6Step71HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step71HeadFv_checked : planRowResizeLog s6Step71HeadFvBefore s6Step71HeadFvRow 50 s6Step71HeadFvFresh=
    some (s6Step71HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 822],776⟩,growRow 776 s6Step71HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step71HeadFvBefore s6Step71HeadFvAfter s6Step71HeadFvRow 50 s6Step71HeadFvFresh
    s6Step71HeadFv_distinct s6Step71HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step71HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step71HeadFvRow.payload++s6Step71HeadFvFresh) s6Step71HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 822],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step71HeadG_Incoming : rowsOwned s6Step71HeadGBefore [s6Step71HeadGRow,s6Step71HeadFRow,s6Step71HeadGvRow,s6Step71HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step71HeadGRow,s6Step71HeadFRow,s6Step71HeadGvRow,s6Step71HeadFvRow] 0 s6Step71HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step71HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step71HeadG_Outgoing : rowsOwned s6Step71HeadFvAfter [s6Step71HeadGOut,s6Step71HeadFOut,s6Step71HeadGvOut,s6Step71HeadFvOut] :=
  hmrRows_owned_drop s6Step71HeadFvAfter [s6Step71HeadGOut,s6Step71HeadFOut,s6Step71HeadGvOut,s6Step71HeadFvOut] 0 s6Step71HeadBank_outgoingOwned

private theorem s6Step71HeadG_distinct : (s6Step71HeadGRow.sign::s6Step71HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step71HeadG_owned : (s6Step71HeadGRow.sign::s6Step71HeadGRow.payload).toFinset⊆s6Step71HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step71HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step71HeadG_reserved : s6Step71HeadGBefore.reserve s6Step71HeadGFresh.toFinset=some s6Step71HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step71HeadGFresh,arenaWires]
  · norm_num [s6Step71HeadGBefore,s6Step71HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step71HeadGBefore s6Step71HeadGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step71HeadGFresh rfl rfl
    · norm_num [s6Step71HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step71HeadG_checked : planRowResizeLog s6Step71HeadGBefore s6Step71HeadGRow 233 s6Step71HeadGFresh=
    some (s6Step71HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 839],777⟩,growRow 777 s6Step71HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step71HeadGBefore s6Step71HeadGAfter s6Step71HeadGRow 233 s6Step71HeadGFresh
    s6Step71HeadG_distinct s6Step71HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step71HeadG_reserved
  have rowEq : WindowRow.mk (s6Step71HeadGRow.payload++s6Step71HeadGFresh) s6Step71HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 839],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step71HeadGvBefore : Arena := s6Step71HeadFAfter

private theorem s6Step71HeadGv_Incoming : rowsOwned s6Step71HeadGvBefore [s6Step71HeadGvRow,s6Step71HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step71HeadGRow,s6Step71HeadFRow,s6Step71HeadGvRow,s6Step71HeadFvRow] 2 s6Step71HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step71HeadGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step71HeadGv_Outgoing : rowsOwned s6Step71HeadFvAfter [s6Step71HeadGvOut,s6Step71HeadFvOut] :=
  hmrRows_owned_drop s6Step71HeadFvAfter [s6Step71HeadGOut,s6Step71HeadFOut,s6Step71HeadGvOut,s6Step71HeadFvOut] 2 s6Step71HeadBank_outgoingOwned

private theorem s6Step71HeadGv_distinct : (s6Step71HeadGvRow.sign::s6Step71HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step71HeadGv_owned : (s6Step71HeadGvRow.sign::s6Step71HeadGvRow.payload).toFinset⊆s6Step71HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step71HeadGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step71HeadGv_reserved : s6Step71HeadGvBefore.reserve s6Step71HeadGvFresh.toFinset=some s6Step71HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step71HeadGvFresh,arenaWires]
  · norm_num [s6Step71HeadGvBefore,s6Step71HeadFAfter,s6Step71HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step71HeadGvBefore s6Step71HeadGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step71HeadGvFresh rfl rfl
    · norm_num [s6Step71HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step71HeadGv_checked : planRowResizeLog s6Step71HeadGvBefore s6Step71HeadGvRow 50 s6Step71HeadGvFresh=
    some (s6Step71HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 898, 838],775⟩,growRow 775 s6Step71HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step71HeadGvBefore s6Step71HeadGvAfter s6Step71HeadGvRow 50 s6Step71HeadGvFresh
    s6Step71HeadGv_distinct s6Step71HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step71HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step71HeadGvRow.payload++s6Step71HeadGvFresh) s6Step71HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 898, 838],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step71HeadBank_rows : planWindowRowsLog s6Step71HeadGBefore [(s6Step71HeadGRow,233),(s6Step71HeadFRow,233),(s6Step71HeadGvRow,50),(s6Step71HeadFvRow,50)] [s6Step71HeadGFresh,s6Step71HeadFFresh,s6Step71HeadGvFresh,s6Step71HeadFvFresh]=
    some (s6Step71HeadFvAfter,[s6Step71HeadGOut,s6Step71HeadFOut,s6Step71HeadGvOut,s6Step71HeadFvOut],(growRow 777 s6Step71HeadGFresh ++ (growRow 795 s6Step71HeadFFresh ++ (growRow 775 s6Step71HeadGvFresh ++ (growRow 776 s6Step71HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step71HeadFvAfter [] []=some (s6Step71HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step71HeadFvBefore s6Step71HeadFvAfter s6Step71HeadFvAfter
    s6Step71HeadFvRow s6Step71HeadFvOut 50 s6Step71HeadFvFresh [] [] []
    (growRow 776 s6Step71HeadFvFresh) ([]) s6Step71HeadFv_Incoming s6Step71HeadFv_checked h4 s6Step71HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step71HeadGvBefore s6Step71HeadGvAfter s6Step71HeadFvAfter
    s6Step71HeadGvRow s6Step71HeadGvOut 50 s6Step71HeadGvFresh [(s6Step71HeadFvRow,50)] [s6Step71HeadFvFresh] [s6Step71HeadFvOut]
    (growRow 775 s6Step71HeadGvFresh) ((growRow 776 s6Step71HeadFvFresh ++ [])) s6Step71HeadGv_Incoming s6Step71HeadGv_checked h3 s6Step71HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step71HeadFBefore s6Step71HeadFAfter s6Step71HeadFvAfter
    s6Step71HeadFRow s6Step71HeadFOut 233 s6Step71HeadFFresh [(s6Step71HeadGvRow,50),(s6Step71HeadFvRow,50)] [s6Step71HeadGvFresh,s6Step71HeadFvFresh] [s6Step71HeadGvOut,s6Step71HeadFvOut]
    (growRow 795 s6Step71HeadFFresh) ((growRow 775 s6Step71HeadGvFresh ++ (growRow 776 s6Step71HeadFvFresh ++ []))) s6Step71HeadF_Incoming s6Step71HeadF_checked h2 s6Step71HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step71HeadGBefore s6Step71HeadGAfter s6Step71HeadFvAfter
    s6Step71HeadGRow s6Step71HeadGOut 233 s6Step71HeadGFresh [(s6Step71HeadFRow,233),(s6Step71HeadGvRow,50),(s6Step71HeadFvRow,50)] [s6Step71HeadFFresh,s6Step71HeadGvFresh,s6Step71HeadFvFresh] [s6Step71HeadFOut,s6Step71HeadGvOut,s6Step71HeadFvOut]
    (growRow 777 s6Step71HeadGFresh) ((growRow 795 s6Step71HeadFFresh ++ (growRow 775 s6Step71HeadGvFresh ++ (growRow 776 s6Step71HeadFvFresh ++ [])))) s6Step71HeadG_Incoming s6Step71HeadG_checked h1 s6Step71HeadG_Outgoing
  exact h0

private theorem s6Step71HeadBank_checked : compileHmrBankResizeLog .headroom s6Step71HeadGBefore ⟨s6Step71HeadFRow,s6Step71HeadGRow,s6Step71HeadFvRow,s6Step71HeadGvRow⟩ ⟨233,233,50,50⟩ [s6Step71HeadGFresh,s6Step71HeadFFresh,s6Step71HeadGvFresh,s6Step71HeadFvFresh]=
    some (s6Step71HeadFvAfter,⟨s6Step71HeadFOut,s6Step71HeadGOut,s6Step71HeadFvOut,s6Step71HeadGvOut⟩,(growRow 777 s6Step71HeadGFresh ++ (growRow 795 s6Step71HeadFFresh ++ (growRow 775 s6Step71HeadGvFresh ++ (growRow 776 s6Step71HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step71HeadBank_rows]
  rfl

private theorem s6Step71Front_checked : compileHmrSourceFrontLog s6Step71EntryFBefore s6Step71FrontBank 232 49 ⟨233,231,50,48⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step71FrontLog=some s6Step71FrontPlan := by
  have pairEq : s6Step71FrontPair=⟨s6Step71HeadFRow,s6Step71HeadGRow,s6Step71HeadFvRow,s6Step71HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step71FrontHead=⟨s6Step71ExitFRow,s6Step71ExitGRow,s6Step71ExitFvRow,s6Step71ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step71Add0A=s6Step71FrontHead.f.wires := by decide +kernel
  have gEq : s6Step71Add0B=s6Step71FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step71Add1A=s6Step71FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step71Add1B=s6Step71FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step71EntryFBefore s6Step71FrontBank 232 49 ⟨233,231,50,48⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step71FrontLog s6Step71FrontPlan
  · exact s6Step71Front_entry
  · exact s6Step71EntryBank_checked
  · exact s6Step71Front_sigma
  · rfl
  · exact s6Step71Front_branch
  · rfl
  · simpa only [s6Step71FrontPlan,pairEq] using s6Step71HeadBank_checked
  · simpa only [s6Step71FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step71F4_checked
  · exact s6Step71Counter_checked
  · rfl
  · simpa only [s6Step71FrontPlan,headEq] using s6Step71ExitBank_checked

private theorem s6Step71Complete_explicit_checked : compileHmrEarlyStepLog s6Step71EntryFBefore s6Step71FrontBank 232 49 ⟨233,231,50,48⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step71CompleteLog=some s6Step71CompletePlan := by
  let Q := s6Step71EarlyControlPlan
  have hq := s6Step71EarlyControl_plan_checked
  have fv1 : s6Step71CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step71CompleteOut.fv.payload[2]?.getD s6Step71CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step71CompleteOut.fv.payload[3]?.getD s6Step71CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step71CompleteOut.fv.payload[4]?.getD s6Step71CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step71EntryFBefore s6Step71EarlyControlArena s6Step71FrontBank 232 49 ⟨233,231,50,48⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step71CompleteLog s6Step71FrontPlan Q
    s6Step71Front_checked s6Step71Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step71Complete_owned s6Step71Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step71EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 877 s6Step71CompleteOut.fv.second (s6Step71CompleteOut.fv.payload[2]?.getD s6Step71CompleteOut.fv.sign) (s6Step71CompleteOut.fv.payload[3]?.getD s6Step71CompleteOut.fv.sign) (s6Step71CompleteOut.fv.payload[4]?.getD s6Step71CompleteOut.fv.sign) 841 30 s6Step71EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep71Arena : Arena := s6Step71EntryFBefore
def s6PrivateStep71Bank : WindowBank := s6Step71FrontBank
def s6PrivateStep71Spec : HmrSourceWalkStepLog := ⟨232,49,⟨233,231,50,48⟩,30,.early s6Step71CompleteLog⟩
def s6PrivateStep71Plan : HmrSourceStepPlan := .early s6Step71CompletePlan
theorem s6PrivateStep71_source : s6PrivateStep71Spec=s6ObservedLogs64[7] := rfl
theorem s6PrivateStep71_checked : compileHmrSourceStepLog s6PrivateStep71Arena s6PrivateStep71Bank
    s6PrivateStep71Spec.fgWidth s6PrivateStep71Spec.vWidth s6PrivateStep71Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902]
    6 498 71 s6PrivateStep71Spec.need none s6PrivateStep71Spec.log=some s6PrivateStep71Plan := by
  change compileHmrSourceStepLog s6Step71EntryFBefore s6Step71FrontBank 232 49 ⟨233,231,50,48⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 6 498 71 30 none (.early s6Step71CompleteLog)=some (.early s6Step71CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 71<498)]
  rw [s6Step71Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
