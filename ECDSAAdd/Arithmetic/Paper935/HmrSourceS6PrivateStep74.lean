import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep72
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

private def s6Step74CompleteMoves : List (Wire × Wire) := [(794,487)]

private def s6Step74EarlyControlLog : HmrEarlyControlLog := ⟨[794, 843, 780, 898, 839],[877],[869],[803, 922, 879, 784, 891, 783],[]⟩

private def s6Step74FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [898], [], [838]],[[839], [780], [843], [841]],[[], [], [], []]⟩,[855],[822],[877],[869],[803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808],[877, 869, 803, 922]⟩

private def s6Step74CompleteLog : HmrEarlyStepLog := ⟨s6Step74FrontLog,s6Step74CompleteMoves,s6Step74EarlyControlLog⟩

private def s6Step74ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486],795⟩

private def s6Step74ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841],776⟩

private def s6Step74ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230],777⟩

private def s6Step74ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838],775⟩

private def s6Step74FrontOut : WindowBank := ⟨s6Step74ExitFOut,s6Step74ExitGOut,s6Step74ExitFvOut,s6Step74ExitGvOut⟩

private def s6Step74CompleteOut : WindowBank := s6Step74FrontOut.repacked s6Step74CompleteMoves

private def s6Step74EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step74EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step74EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step74EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step74EarlyControlPositiveArena,[877],s6Step74EarlyControlEqualityArena,[869],⟨⟨855,false⟩,[⟨⟨877,false⟩,869⟩]⟩⟩

private def s6Step74EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step74EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step74EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step74EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step74EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step74EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step74EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,794⟩,⟨⟨772,false⟩,843⟩,⟨⟨771,false⟩,780⟩,⟨⟨770,false⟩,898⟩,⟨⟨769,false⟩,839⟩]⟩

private def s6Step74EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step74EarlyControlZeroArena,s6Step74EarlyControlZeroPlan,s6Step74EarlyControlClassPlan,s6Step74EarlyControlFlagArena,s6Step74EarlyControlFittedArena,s6Step74EarlyControlHistoryArena,s6Step74EarlyControlSigmaArena,s6Step74EarlyControlOutputArena,s6Step74EarlyControlLog⟩

private def s6Step74CounterWork : List Wire := [877, 869, 803, 922]

private theorem s6Step74Counter_bounded : s6Step74CounterWork.toFinset⊆arenaWires := by norm_num [s6Step74CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step74HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step74CounterDuring : Arena := ⟨s6Step74HeadFvAfter.live∪s6Step74CounterWork.toFinset,Finset.union_subset s6Step74HeadFvAfter.bounded s6Step74Counter_bounded⟩

private def s6Step74EntryFFresh : List Wire := []

private def s6Step74EntryFvFresh : List Wire := []

private def s6Step74EntryGFresh : List Wire := [898]

private def s6Step74EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step74EntryGvFresh : List Wire := [838]

private def s6Step74ExitFExtra : List Wire := [487, 780]

private def s6Step74ExitGExtra : List Wire := [898, 839]

private def s6Step74ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,487),(488,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step74ExitGvExtra : List Wire := [843]

private def s6Step74Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step74Add0Work : List Wire := [803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step74Add0_bounded : s6Step74Add0Work.toFinset⊆arenaWires := by
  have h : s6Step74Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step74Add0During : Arena := ⟨s6Step74Add0Arena.live∪s6Step74Add0Work.toFinset,Finset.union_subset s6Step74Add0Arena.bounded s6Step74Add0_bounded⟩

private def s6Step74Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step74Add1Work : List Wire := [803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808]

private theorem s6Step74Add1_bounded : s6Step74Add1Work.toFinset⊆arenaWires := by
  have h : s6Step74Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step74Add1During : Arena := ⟨s6Step74Add1Arena.live∪s6Step74Add1Work.toFinset,Finset.union_subset s6Step74Add1Arena.bounded s6Step74Add1_bounded⟩

private def s6Step74F4FlagArena : Arena := ⟨s6Step74HeadFvAfter.live∪{877},Finset.union_subset s6Step74HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step74F4Plan : HmrHybridF4Plan := ⟨s6Step74F4FlagArena,[877],s6Step74Add0Arena,[869],s6Step74Add0During,s6Step74Add0Work,s6Step74Add1During,s6Step74Add1Work⟩

private def s6Step74HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 780],795⟩

private def s6Step74HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841],776⟩

private def s6Step74HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 898, 839],777⟩

private def s6Step74HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 843],775⟩

private def s6Step74FrontHead : WindowBank := ⟨s6Step74HeadFOut,s6Step74HeadGOut,s6Step74HeadFvOut,s6Step74HeadGvOut⟩

private def s6Step74EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487],795⟩

private def s6Step74EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854],776⟩

private def s6Step74EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 898],777⟩

private def s6Step74EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838],775⟩

private def s6Step74FrontPair : WindowBank := ⟨s6Step74EntryFOut,s6Step74EntryGOut,s6Step74EntryFvOut,s6Step74EntryGvOut⟩

private def s6Step74FrontSigmaArena : Arena := ⟨s6Step74EntryGvAfter.live∪{855},Finset.union_subset s6Step74EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step74HeadFFresh : List Wire := [780]

private def s6Step74HeadFvFresh : List Wire := [841]

private def s6Step74HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step74HeadGFresh : List Wire := [839]

private def s6Step74HeadGvFresh : List Wire := [843]

private def s6Step74FrontPlan : HmrSourceFront := ⟨s6Step74EntryGvAfter,s6Step74FrontPair,(growRow 795 s6Step74EntryFFresh ++ (growRow 777 s6Step74EntryGFresh ++ (growRow 776 s6Step74EntryFvFresh ++ (growRow 775 s6Step74EntryGvFresh ++ [])))),s6Step74FrontSigmaArena,[855],s6Step74HeadGBefore,[822],
  s6Step74HeadFvAfter,s6Step74FrontHead,(growRow 777 s6Step74HeadGFresh ++ (growRow 795 s6Step74HeadFFresh ++ (growRow 775 s6Step74HeadGvFresh ++ (growRow 776 s6Step74HeadFvFresh ++ [])))),s6Step74F4Plan,s6Step74CounterDuring,s6Step74CounterWork,s6Step74ExitGvAfter,s6Step74FrontOut,(shrinkRow 777 s6Step74ExitGExtra ++ (shrinkRow 795 s6Step74ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step74ExitGvExtra ++ []))))⟩

private def s6Step74CompletePlan : HmrEarlyStepPlan := ⟨s6Step74FrontPlan,s6Step74EarlyControlArena,s6Step74EarlyControlPlan,s6Step74CompleteMoves⟩

private theorem s6Step74Complete_apart : List.Disjoint (s6Step74CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [855, 822, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] := by
  have nd : ((s6Step74CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[855, 822, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step74Complete_owned : (s6Step74CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step74EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step74EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step74CompleteRelocationMove0Borrowed : Arena := ⟨s6Step74ExitGvAfter.live∪{487},Finset.union_subset s6Step74ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step74CompleteRelocation_move0_owned : 794∈s6Step74ExitGvAfter.live := by norm_num [s6Step74ExitGvAfter,arenaWires]

private theorem s6Step74CompleteRelocation_move0_reserve : s6Step74ExitGvAfter.reserve {487}=some s6Step74CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step74ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step74CompleteRelocation_move0_retire : s6Step74CompleteRelocationMove0Borrowed.retireSet {794}=s6Step74EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step74CompleteRelocationMove0Borrowed s6Step74EarlyControlArena {794}
  change s6Step74EarlyControlArena.live=(s6Step74ExitGvAfter.live∪{487})\{794}
  apply hmrArena_update_of_filter_check s6Step74ExitGvAfter s6Step74EarlyControlArena (fun q => ([(0,487),(488,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [487] [794] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step74CompleteRelocation_checked : s6Step74ExitGvAfter.checkRepack [(794,487)]=some s6Step74EarlyControlArena := by
  have tail1 : s6Step74EarlyControlArena.checkRepack []=some s6Step74EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step74ExitGvAfter s6Step74CompleteRelocationMove0Borrowed s6Step74EarlyControlArena s6Step74EarlyControlArena 794 487 []
    s6Step74CompleteRelocation_move0_owned s6Step74CompleteRelocation_move0_reserve s6Step74CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step74Complete_repack : s6Step74ExitGvAfter.checkRepack s6Step74CompleteMoves=some s6Step74EarlyControlArena := by
  simpa only [s6Step74CompleteMoves] using s6Step74CompleteRelocation_checked

private theorem s6Step74EarlyControl_branchOwned : ([822] : List Wire).toFinset⊆s6Step74EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step74EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step74EarlyControl_branch : compileHmrBranchRetirement s6Step74EarlyControlSigmaArena 822=some s6Step74EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step74EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step74EarlyControlSigmaArena s6Step74EarlyControlOutputArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [822] rfl rfl
    decide +kernel

private theorem s6Step74EarlyControl_classEqualityBorrow : s6Step74EarlyControlPositiveArena.checkBorrow (([855, 877] : List Wire).length-1) s6Step74EarlyControlLog.classWork=some s6Step74EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step74EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step74EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step74EarlyControlPositiveArena s6Step74EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step74EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step74EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step74EarlyControl_classEqualityOwned : ([855, 877] : List Wire).toFinset⊆s6Step74EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step74EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step74EarlyControl_classEquality : compileHmrEqualityLog s6Step74EarlyControlPositiveArena [855, 877] 0 s6Step74EarlyControlLog.classWork=some (s6Step74EarlyControlEqualityArena,s6Step74EarlyControlLog.classWork,s6Step74EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step74EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step74EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step74EarlyControl_classOwned : ([769, 839, 855] : List Wire).toFinset⊆s6Step74EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step74EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step74EarlyControl_positiveBorrow : s6Step74EarlyControlZeroArena.checkBorrow (1) s6Step74EarlyControlLog.positiveWork=some s6Step74EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step74EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step74EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step74EarlyControlZeroArena s6Step74EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step74EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step74EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step74EarlyControl_class : compileHmrSourceClassLog s6Step74EarlyControlZeroArena false 769 s6Step74EarlyControlZeroPlan.top 0 855 s6Step74EarlyControlLog.positiveWork s6Step74EarlyControlLog.classWork=some s6Step74EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step74EarlyControlClassPlan s6Step74EarlyControlZeroArena false 769 s6Step74EarlyControlZeroPlan.top 0 855
  constructor
  · decide +kernel
  · exact s6Step74EarlyControl_classOwned
  · exact s6Step74EarlyControl_positiveBorrow
  · exact s6Step74EarlyControl_classEquality

private theorem s6Step74EarlyControl_entryRecordOwned : ([822, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step74EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step74EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step74EarlyControl_entrySigmaOwned : ([855, 254] : List Wire).toFinset⊆s6Step74EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step74EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step74EarlyControl_fitBorrow : s6Step74EarlyControlFlagArena.checkBorrow ((30-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).length)) s6Step74EarlyControlLog.recordFresh=some s6Step74EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step74EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step74EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step74EarlyControlFittedArena,s6Step74EarlyControlFlagArena,s6Step74EarlyControlLog,arenaWires]

private theorem s6Step74EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step74EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step74EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step74EarlyControl_fit : compileHmrRecordGrowLog s6Step74EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step74EarlyControlLog.recordFresh=some s6Step74EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step74EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step74EarlyControl_fitBorrow

private theorem s6Step74EarlyControl_flagsBorrow : s6Step74EarlyControlEqualityArena.checkBorrow (6) s6Step74EarlyControlLog.flagWork=some s6Step74EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step74EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step74EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step74EarlyControlEqualityArena s6Step74EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step74EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step74EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step74EarlyControl_flagsOwned : ([869, 253, 252, 251] : List Wire).toFinset⊆s6Step74EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step74EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step74EarlyControl_flags : compileHmrFlagsLog s6Step74EarlyControlClassPlan.equalityArena s6Step74EarlyControlClassPlan.equality.top 253 252 251 s6Step74EarlyControlLog.flagWork=some s6Step74EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step74EarlyControl_flagsOwned⟩
  · exact s6Step74EarlyControl_flagsBorrow

private theorem s6Step74EarlyControl_historyBorrow : s6Step74EarlyControlArena.checkBorrow ((30-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).length)) s6Step74EarlyControlLog.recordFresh=some s6Step74EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step74EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step74EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step74EarlyControlArena s6Step74EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step74EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step74EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step74EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step74EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step74EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step74EarlyControl_history : compileHmrRecordGrowLog s6Step74EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step74EarlyControlLog.recordFresh=some s6Step74EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step74EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step74EarlyControl_historyBorrow

private theorem s6Step74EarlyControl_sigmaOwned : ([254, 855] : List Wire).toFinset⊆s6Step74EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step74EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step74EarlyControl_sigmaReleaseOwned : ([855] : List Wire).toFinset⊆s6Step74EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step74EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step74EarlyControl_sigmaRelease : s6Step74EarlyControlHistoryArena.release {855} (fun _ => false)=some s6Step74EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step74EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step74EarlyControlHistoryArena s6Step74EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [855] rfl rfl
    decide +kernel

private theorem s6Step74EarlyControl_sigma : compileHmrSigmaDropLog s6Step74EarlyControlHistoryArena false 0 0 254 855 []=some s6Step74EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step74EarlyControl_sigmaOwned⟩
  · exact s6Step74EarlyControl_sigmaRelease

private theorem s6Step74EarlyControl_zeroBorrow : s6Step74EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step74EarlyControlLog.zeroWork=some s6Step74EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step74EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step74EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step74EarlyControlArena s6Step74EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step74EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step74EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step74EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step74EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step74EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step74EarlyControl_zero : compileHmrEqualityLog s6Step74EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step74EarlyControlLog.zeroWork=some (s6Step74EarlyControlZeroArena,s6Step74EarlyControlLog.zeroWork,s6Step74EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step74EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step74EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step74EarlyControl_logged : s6Step74EarlyControlPlan.Logged s6Step74EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 855 254 253 252 251 822 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step74EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step74EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step74EarlyControl_zero
  · exact s6Step74EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step74EarlyControl_flags
  · exact s6Step74EarlyControl_fit
  · exact s6Step74EarlyControl_history
  · exact s6Step74EarlyControl_sigma
  · exact s6Step74EarlyControl_branch

private theorem s6Step74EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step74EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 855 254 253 252 251 822 30 s6Step74EarlyControlLog=some s6Step74EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step74EarlyControlPlan s6Step74EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 855 254 253 252 251 822 30 s6Step74EarlyControl_logged

private def s6Step74EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step74EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487],795⟩

private def s6Step74EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854],776⟩

private def s6Step74EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230],777⟩

private def s6Step74EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850],775⟩

private def s6Step74FrontBank : WindowBank := ⟨s6Step74EntryFRow,s6Step74EntryGRow,s6Step74EntryFvRow,s6Step74EntryGvRow⟩

private def s6Step74Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 780, 795]

private def s6Step74Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 898, 839, 777]

private def s6Step74Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 776]

private def s6Step74Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 843, 775]

private theorem s6Step74Counter_apart : Disjoint s6Step74HeadFvAfter.live s6Step74CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step74HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step74Counter_borrowed : s6Step74HeadFvAfter.checkBorrow 4 s6Step74CounterWork=some s6Step74CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step74HeadFvAfter s6Step74CounterDuring s6Step74CounterWork.toFinset s6Step74Counter_bounded s6Step74Counter_apart rfl

private theorem s6Step74Counter_owned : (855::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step74HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step74HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step74Counter_checked : compileHmrCounterStepLog s6Step74HeadFvAfter true 855 [774, 773, 772, 771, 770, 769] s6Step74CounterWork=some s6Step74CounterDuring := by
  have owned : ∀q∈855::[774, 773, 772, 771, 770, 769],q∈s6Step74HeadFvAfter.live := fun q hq => s6Step74Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step74Counter_borrowed

private def s6Step74EntryFAfter : Arena := s6Step74EntryFBefore

private theorem s6Step74EntryBank_incomingDistinct : ([s6Step74EntryFRow,s6Step74EntryGRow,s6Step74EntryFvRow,s6Step74EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step74EntryF_Incoming : rowsOwned s6Step74EntryFBefore [s6Step74EntryFRow,s6Step74EntryGRow,s6Step74EntryFvRow,s6Step74EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step74EntryFRow,s6Step74EntryGRow,s6Step74EntryFvRow,s6Step74EntryGvRow] 0 s6Step74EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step74EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step74EntryBank_outgoingOwned : rowsOwned s6Step74EntryGvAfter [s6Step74EntryFOut,s6Step74EntryGOut,s6Step74EntryFvOut,s6Step74EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step74EntryGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step74EntryF_Outgoing : rowsOwned s6Step74EntryGvAfter [s6Step74EntryFOut,s6Step74EntryGOut,s6Step74EntryFvOut,s6Step74EntryGvOut] :=
  hmrRows_owned_drop s6Step74EntryGvAfter [s6Step74EntryFOut,s6Step74EntryGOut,s6Step74EntryFvOut,s6Step74EntryGvOut] 0 s6Step74EntryBank_outgoingOwned

private theorem s6Step74EntryF_distinct : (s6Step74EntryFRow.sign::s6Step74EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step74EntryF_owned : (s6Step74EntryFRow.sign::s6Step74EntryFRow.payload).toFinset⊆s6Step74EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step74EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step74EntryF_reserved : s6Step74EntryFBefore.reserve s6Step74EntryFFresh.toFinset=some s6Step74EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step74EntryFFresh,arenaWires]
  · norm_num [s6Step74EntryFBefore,s6Step74EntryFFresh,arenaWires]
  · simp only [s6Step74EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step74EntryF_checked : planRowResizeLog s6Step74EntryFBefore s6Step74EntryFRow 232 s6Step74EntryFFresh=
    some (s6Step74EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487],795⟩,growRow 795 s6Step74EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step74EntryFBefore s6Step74EntryFAfter s6Step74EntryFRow 232 s6Step74EntryFFresh
    s6Step74EntryF_distinct s6Step74EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step74EntryF_reserved
  have rowEq : WindowRow.mk (s6Step74EntryFRow.payload++s6Step74EntryFFresh) s6Step74EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step74EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step74EntryFvAfter : Arena := s6Step74EntryGAfter

private def s6Step74EntryFvBefore : Arena := s6Step74EntryGAfter

private theorem s6Step74EntryFv_Incoming : rowsOwned s6Step74EntryFvBefore [s6Step74EntryFvRow,s6Step74EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step74EntryFRow,s6Step74EntryGRow,s6Step74EntryFvRow,s6Step74EntryGvRow] 2 s6Step74EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step74EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step74EntryFv_Outgoing : rowsOwned s6Step74EntryGvAfter [s6Step74EntryFvOut,s6Step74EntryGvOut] :=
  hmrRows_owned_drop s6Step74EntryGvAfter [s6Step74EntryFOut,s6Step74EntryGOut,s6Step74EntryFvOut,s6Step74EntryGvOut] 2 s6Step74EntryBank_outgoingOwned

private theorem s6Step74EntryFv_distinct : (s6Step74EntryFvRow.sign::s6Step74EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step74EntryFv_owned : (s6Step74EntryFvRow.sign::s6Step74EntryFvRow.payload).toFinset⊆s6Step74EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step74EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step74EntryFv_reserved : s6Step74EntryFvBefore.reserve s6Step74EntryFvFresh.toFinset=some s6Step74EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step74EntryFvFresh,arenaWires]
  · norm_num [s6Step74EntryFvBefore,s6Step74EntryGAfter,s6Step74EntryFvFresh,arenaWires]
  · simp only [s6Step74EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step74EntryFv_checked : planRowResizeLog s6Step74EntryFvBefore s6Step74EntryFvRow 50 s6Step74EntryFvFresh=
    some (s6Step74EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854],776⟩,growRow 776 s6Step74EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step74EntryFvBefore s6Step74EntryFvAfter s6Step74EntryFvRow 50 s6Step74EntryFvFresh
    s6Step74EntryFv_distinct s6Step74EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step74EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step74EntryFvRow.payload++s6Step74EntryFvFresh) s6Step74EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step74EntryGBefore : Arena := s6Step74EntryFBefore

private theorem s6Step74EntryG_Incoming : rowsOwned s6Step74EntryGBefore [s6Step74EntryGRow,s6Step74EntryFvRow,s6Step74EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step74EntryFRow,s6Step74EntryGRow,s6Step74EntryFvRow,s6Step74EntryGvRow] 1 s6Step74EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step74EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step74EntryG_Outgoing : rowsOwned s6Step74EntryGvAfter [s6Step74EntryGOut,s6Step74EntryFvOut,s6Step74EntryGvOut] :=
  hmrRows_owned_drop s6Step74EntryGvAfter [s6Step74EntryFOut,s6Step74EntryGOut,s6Step74EntryFvOut,s6Step74EntryGvOut] 1 s6Step74EntryBank_outgoingOwned

private theorem s6Step74EntryG_distinct : (s6Step74EntryGRow.sign::s6Step74EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step74EntryG_owned : (s6Step74EntryGRow.sign::s6Step74EntryGRow.payload).toFinset⊆s6Step74EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step74EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step74EntryG_reserved : s6Step74EntryGBefore.reserve s6Step74EntryGFresh.toFinset=some s6Step74EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step74EntryGFresh,arenaWires]
  · norm_num [s6Step74EntryGBefore,s6Step74EntryFBefore,s6Step74EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step74EntryGBefore s6Step74EntryGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step74EntryGFresh rfl rfl
    · norm_num [s6Step74EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step74EntryG_checked : planRowResizeLog s6Step74EntryGBefore s6Step74EntryGRow 232 s6Step74EntryGFresh=
    some (s6Step74EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 898],777⟩,growRow 777 s6Step74EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step74EntryGBefore s6Step74EntryGAfter s6Step74EntryGRow 232 s6Step74EntryGFresh
    s6Step74EntryG_distinct s6Step74EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step74EntryG_reserved
  have rowEq : WindowRow.mk (s6Step74EntryGRow.payload++s6Step74EntryGFresh) s6Step74EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 898],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step74EntryGvBefore : Arena := s6Step74EntryGAfter

private theorem s6Step74EntryGv_Incoming : rowsOwned s6Step74EntryGvBefore [s6Step74EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step74EntryFRow,s6Step74EntryGRow,s6Step74EntryFvRow,s6Step74EntryGvRow] 3 s6Step74EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step74EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step74EntryGv_Outgoing : rowsOwned s6Step74EntryGvAfter [s6Step74EntryGvOut] :=
  hmrRows_owned_drop s6Step74EntryGvAfter [s6Step74EntryFOut,s6Step74EntryGOut,s6Step74EntryFvOut,s6Step74EntryGvOut] 3 s6Step74EntryBank_outgoingOwned

private theorem s6Step74EntryGv_distinct : (s6Step74EntryGvRow.sign::s6Step74EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step74EntryGv_owned : (s6Step74EntryGvRow.sign::s6Step74EntryGvRow.payload).toFinset⊆s6Step74EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step74EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step74EntryGv_reserved : s6Step74EntryGvBefore.reserve s6Step74EntryGvFresh.toFinset=some s6Step74EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step74EntryGvFresh,arenaWires]
  · norm_num [s6Step74EntryGvBefore,s6Step74EntryGAfter,s6Step74EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step74EntryGvBefore s6Step74EntryGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step74EntryGvFresh rfl rfl
    · norm_num [s6Step74EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step74EntryGv_checked : planRowResizeLog s6Step74EntryGvBefore s6Step74EntryGvRow 50 s6Step74EntryGvFresh=
    some (s6Step74EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838],775⟩,growRow 775 s6Step74EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step74EntryGvBefore s6Step74EntryGvAfter s6Step74EntryGvRow 50 s6Step74EntryGvFresh
    s6Step74EntryGv_distinct s6Step74EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step74EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step74EntryGvRow.payload++s6Step74EntryGvFresh) s6Step74EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step74EntryBank_rows : planWindowRowsLog s6Step74EntryFBefore [(s6Step74EntryFRow,232),(s6Step74EntryGRow,232),(s6Step74EntryFvRow,50),(s6Step74EntryGvRow,50)] [s6Step74EntryFFresh,s6Step74EntryGFresh,s6Step74EntryFvFresh,s6Step74EntryGvFresh]=
    some (s6Step74EntryGvAfter,[s6Step74EntryFOut,s6Step74EntryGOut,s6Step74EntryFvOut,s6Step74EntryGvOut],(growRow 795 s6Step74EntryFFresh ++ (growRow 777 s6Step74EntryGFresh ++ (growRow 776 s6Step74EntryFvFresh ++ (growRow 775 s6Step74EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step74EntryGvAfter [] []=some (s6Step74EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step74EntryGvBefore s6Step74EntryGvAfter s6Step74EntryGvAfter
    s6Step74EntryGvRow s6Step74EntryGvOut 50 s6Step74EntryGvFresh [] [] []
    (growRow 775 s6Step74EntryGvFresh) ([]) s6Step74EntryGv_Incoming s6Step74EntryGv_checked h4 s6Step74EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step74EntryFvBefore s6Step74EntryFvAfter s6Step74EntryGvAfter
    s6Step74EntryFvRow s6Step74EntryFvOut 50 s6Step74EntryFvFresh [(s6Step74EntryGvRow,50)] [s6Step74EntryGvFresh] [s6Step74EntryGvOut]
    (growRow 776 s6Step74EntryFvFresh) ((growRow 775 s6Step74EntryGvFresh ++ [])) s6Step74EntryFv_Incoming s6Step74EntryFv_checked h3 s6Step74EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step74EntryGBefore s6Step74EntryGAfter s6Step74EntryGvAfter
    s6Step74EntryGRow s6Step74EntryGOut 232 s6Step74EntryGFresh [(s6Step74EntryFvRow,50),(s6Step74EntryGvRow,50)] [s6Step74EntryFvFresh,s6Step74EntryGvFresh] [s6Step74EntryFvOut,s6Step74EntryGvOut]
    (growRow 777 s6Step74EntryGFresh) ((growRow 776 s6Step74EntryFvFresh ++ (growRow 775 s6Step74EntryGvFresh ++ []))) s6Step74EntryG_Incoming s6Step74EntryG_checked h2 s6Step74EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step74EntryFBefore s6Step74EntryFAfter s6Step74EntryGvAfter
    s6Step74EntryFRow s6Step74EntryFOut 232 s6Step74EntryFFresh [(s6Step74EntryGRow,232),(s6Step74EntryFvRow,50),(s6Step74EntryGvRow,50)] [s6Step74EntryGFresh,s6Step74EntryFvFresh,s6Step74EntryGvFresh] [s6Step74EntryGOut,s6Step74EntryFvOut,s6Step74EntryGvOut]
    (growRow 795 s6Step74EntryFFresh) ((growRow 777 s6Step74EntryGFresh ++ (growRow 776 s6Step74EntryFvFresh ++ (growRow 775 s6Step74EntryGvFresh ++ [])))) s6Step74EntryF_Incoming s6Step74EntryF_checked h1 s6Step74EntryF_Outgoing
  exact h0

private theorem s6Step74EntryBank_checked : compileHmrBankResizeLog .entry s6Step74EntryFBefore ⟨s6Step74EntryFRow,s6Step74EntryGRow,s6Step74EntryFvRow,s6Step74EntryGvRow⟩ ⟨232,232,50,50⟩ [s6Step74EntryFFresh,s6Step74EntryGFresh,s6Step74EntryFvFresh,s6Step74EntryGvFresh]=
    some (s6Step74EntryGvAfter,⟨s6Step74EntryFOut,s6Step74EntryGOut,s6Step74EntryFvOut,s6Step74EntryGvOut⟩,(growRow 795 s6Step74EntryFFresh ++ (growRow 777 s6Step74EntryGFresh ++ (growRow 776 s6Step74EntryFvFresh ++ (growRow 775 s6Step74EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step74EntryBank_rows]
  rfl

private def s6Step74ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,487),(488,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step74ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step74ExitFBefore : Arena := s6Step74ExitGAfter

private def s6Step74ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 780],795⟩

private def s6Step74ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841],776⟩

private def s6Step74ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 898, 839],777⟩

private def s6Step74ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 843],775⟩

private theorem s6Step74ExitBank_incomingDistinct : ([s6Step74ExitGRow,s6Step74ExitFRow,s6Step74ExitFvRow,s6Step74ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step74ExitF_Incoming : rowsOwned s6Step74ExitFBefore [s6Step74ExitFRow,s6Step74ExitFvRow,s6Step74ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step74ExitGRow,s6Step74ExitFRow,s6Step74ExitFvRow,s6Step74ExitGvRow] 1 s6Step74ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step74ExitFBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step74ExitBank_outgoingOwned : rowsOwned s6Step74ExitGvAfter [s6Step74ExitGOut,s6Step74ExitFOut,s6Step74ExitFvOut,s6Step74ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step74ExitGvAfter (fun q => ([(0,487),(488,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step74ExitF_Outgoing : rowsOwned s6Step74ExitGvAfter [s6Step74ExitFOut,s6Step74ExitFvOut,s6Step74ExitGvOut] :=
  hmrRows_owned_drop s6Step74ExitGvAfter [s6Step74ExitGOut,s6Step74ExitFOut,s6Step74ExitFvOut,s6Step74ExitGvOut] 1 s6Step74ExitBank_outgoingOwned

private theorem s6Step74ExitF_distinct : (s6Step74ExitFRow.sign::s6Step74ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step74ExitF_owned : (s6Step74ExitFRow.sign::s6Step74ExitFRow.payload).toFinset⊆s6Step74ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step74ExitFBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step74ExitF_retired : s6Step74ExitFBefore.retireSet s6Step74ExitFExtra.toFinset=s6Step74ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step74ExitFBefore s6Step74ExitFAfter s6Step74ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step74ExitFBefore s6Step74ExitFAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,487),(488,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step74ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step74ExitF_checked : planRowResizeLog s6Step74ExitFBefore s6Step74ExitFRow 231 []=
    some (s6Step74ExitFAfter,s6Step74ExitFOut,shrinkRow 795 s6Step74ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step74ExitFBefore s6Step74ExitFRow 231 s6Step74ExitF_distinct s6Step74ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step74ExitFRow.payload.take 231) s6Step74ExitFRow.sign=s6Step74ExitFOut := by decide +kernel
  have hi : s6Step74ExitFRow.payload.drop 231=s6Step74ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step74ExitF_retired] at result
  exact result

private def s6Step74ExitFvAfter : Arena := s6Step74ExitFAfter

private def s6Step74ExitFvBefore : Arena := s6Step74ExitFAfter

private theorem s6Step74ExitFv_Incoming : rowsOwned s6Step74ExitFvBefore [s6Step74ExitFvRow,s6Step74ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step74ExitGRow,s6Step74ExitFRow,s6Step74ExitFvRow,s6Step74ExitGvRow] 2 s6Step74ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step74ExitFvBefore (fun q => ([(0,487),(488,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step74ExitFv_Outgoing : rowsOwned s6Step74ExitGvAfter [s6Step74ExitFvOut,s6Step74ExitGvOut] :=
  hmrRows_owned_drop s6Step74ExitGvAfter [s6Step74ExitGOut,s6Step74ExitFOut,s6Step74ExitFvOut,s6Step74ExitGvOut] 2 s6Step74ExitBank_outgoingOwned

private theorem s6Step74ExitFv_distinct : (s6Step74ExitFvRow.sign::s6Step74ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step74ExitFv_owned : (s6Step74ExitFvRow.sign::s6Step74ExitFvRow.payload).toFinset⊆s6Step74ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step74ExitFvBefore (fun q => ([(0,487),(488,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step74ExitFv_reserved : s6Step74ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step74ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step74ExitFv_checked : planRowResizeLog s6Step74ExitFvBefore s6Step74ExitFvRow 51 []=
    some (s6Step74ExitFvAfter,s6Step74ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step74ExitFvBefore s6Step74ExitFvAfter s6Step74ExitFvRow 51 []
    s6Step74ExitFv_distinct s6Step74ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step74ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step74ExitFvRow.payload++[]) s6Step74ExitFvRow.sign=s6Step74ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step74ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step74ExitG_Incoming : rowsOwned s6Step74ExitGBefore [s6Step74ExitGRow,s6Step74ExitFRow,s6Step74ExitFvRow,s6Step74ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step74ExitGRow,s6Step74ExitFRow,s6Step74ExitFvRow,s6Step74ExitGvRow] 0 s6Step74ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step74ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step74ExitG_Outgoing : rowsOwned s6Step74ExitGvAfter [s6Step74ExitGOut,s6Step74ExitFOut,s6Step74ExitFvOut,s6Step74ExitGvOut] :=
  hmrRows_owned_drop s6Step74ExitGvAfter [s6Step74ExitGOut,s6Step74ExitFOut,s6Step74ExitFvOut,s6Step74ExitGvOut] 0 s6Step74ExitBank_outgoingOwned

private theorem s6Step74ExitG_distinct : (s6Step74ExitGRow.sign::s6Step74ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step74ExitG_owned : (s6Step74ExitGRow.sign::s6Step74ExitGRow.payload).toFinset⊆s6Step74ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step74ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step74ExitG_retired : s6Step74ExitGBefore.retireSet s6Step74ExitGExtra.toFinset=s6Step74ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step74ExitGBefore s6Step74ExitGAfter s6Step74ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step74ExitGBefore s6Step74ExitGAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step74ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step74ExitG_checked : planRowResizeLog s6Step74ExitGBefore s6Step74ExitGRow 231 []=
    some (s6Step74ExitGAfter,s6Step74ExitGOut,shrinkRow 777 s6Step74ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step74ExitGBefore s6Step74ExitGRow 231 s6Step74ExitG_distinct s6Step74ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step74ExitGRow.payload.take 231) s6Step74ExitGRow.sign=s6Step74ExitGOut := by decide +kernel
  have hi : s6Step74ExitGRow.payload.drop 231=s6Step74ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step74ExitG_retired] at result
  exact result

private def s6Step74ExitGvBefore : Arena := s6Step74ExitFAfter

private theorem s6Step74ExitGv_Incoming : rowsOwned s6Step74ExitGvBefore [s6Step74ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step74ExitGRow,s6Step74ExitFRow,s6Step74ExitFvRow,s6Step74ExitGvRow] 3 s6Step74ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step74ExitGvBefore (fun q => ([(0,487),(488,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step74ExitGv_Outgoing : rowsOwned s6Step74ExitGvAfter [s6Step74ExitGvOut] :=
  hmrRows_owned_drop s6Step74ExitGvAfter [s6Step74ExitGOut,s6Step74ExitFOut,s6Step74ExitFvOut,s6Step74ExitGvOut] 3 s6Step74ExitBank_outgoingOwned

private theorem s6Step74ExitGv_distinct : (s6Step74ExitGvRow.sign::s6Step74ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step74ExitGv_owned : (s6Step74ExitGvRow.sign::s6Step74ExitGvRow.payload).toFinset⊆s6Step74ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step74ExitGvBefore (fun q => ([(0,487),(488,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step74ExitGv_retired : s6Step74ExitGvBefore.retireSet s6Step74ExitGvExtra.toFinset=s6Step74ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step74ExitGvBefore s6Step74ExitGvAfter s6Step74ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step74ExitGvBefore s6Step74ExitGvAfter (fun q => ([(0,487),(488,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,487),(488,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step74ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step74ExitGv_checked : planRowResizeLog s6Step74ExitGvBefore s6Step74ExitGvRow 50 []=
    some (s6Step74ExitGvAfter,s6Step74ExitGvOut,shrinkRow 775 s6Step74ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step74ExitGvBefore s6Step74ExitGvRow 50 s6Step74ExitGv_distinct s6Step74ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step74ExitGvRow.payload.take 50) s6Step74ExitGvRow.sign=s6Step74ExitGvOut := by decide +kernel
  have hi : s6Step74ExitGvRow.payload.drop 50=s6Step74ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step74ExitGv_retired] at result
  exact result

private theorem s6Step74ExitBank_rows : planWindowRowsLog s6Step74ExitGBefore [(s6Step74ExitGRow,231),(s6Step74ExitFRow,231),(s6Step74ExitFvRow,51),(s6Step74ExitGvRow,50)] [[],[],[],[]]=
    some (s6Step74ExitGvAfter,[s6Step74ExitGOut,s6Step74ExitFOut,s6Step74ExitFvOut,s6Step74ExitGvOut],(shrinkRow 777 s6Step74ExitGExtra ++ (shrinkRow 795 s6Step74ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step74ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step74ExitGvAfter [] []=some (s6Step74ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step74ExitGvBefore s6Step74ExitGvAfter s6Step74ExitGvAfter
    s6Step74ExitGvRow s6Step74ExitGvOut 50 [] [] [] []
    (shrinkRow 775 s6Step74ExitGvExtra) ([]) s6Step74ExitGv_Incoming s6Step74ExitGv_checked h4 s6Step74ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step74ExitFvBefore s6Step74ExitFvAfter s6Step74ExitGvAfter
    s6Step74ExitFvRow s6Step74ExitFvOut 51 [] [(s6Step74ExitGvRow,50)] [[]] [s6Step74ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step74ExitGvExtra ++ [])) s6Step74ExitFv_Incoming s6Step74ExitFv_checked h3 s6Step74ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step74ExitFBefore s6Step74ExitFAfter s6Step74ExitGvAfter
    s6Step74ExitFRow s6Step74ExitFOut 231 [] [(s6Step74ExitFvRow,51),(s6Step74ExitGvRow,50)] [[],[]] [s6Step74ExitFvOut,s6Step74ExitGvOut]
    (shrinkRow 795 s6Step74ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step74ExitGvExtra ++ []))) s6Step74ExitF_Incoming s6Step74ExitF_checked h2 s6Step74ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step74ExitGBefore s6Step74ExitGAfter s6Step74ExitGvAfter
    s6Step74ExitGRow s6Step74ExitGOut 231 [] [(s6Step74ExitFRow,231),(s6Step74ExitFvRow,51),(s6Step74ExitGvRow,50)] [[],[],[]] [s6Step74ExitFOut,s6Step74ExitFvOut,s6Step74ExitGvOut]
    (shrinkRow 777 s6Step74ExitGExtra) ((shrinkRow 795 s6Step74ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step74ExitGvExtra ++ [])))) s6Step74ExitG_Incoming s6Step74ExitG_checked h1 s6Step74ExitG_Outgoing
  exact h0

private theorem s6Step74ExitBank_checked : compileHmrBankResizeLog .exit s6Step74ExitGBefore ⟨s6Step74ExitFRow,s6Step74ExitGRow,s6Step74ExitFvRow,s6Step74ExitGvRow⟩ ⟨231,231,51,50⟩ [[],[],[],[]]=
    some (s6Step74ExitGvAfter,⟨s6Step74ExitFOut,s6Step74ExitGOut,s6Step74ExitFvOut,s6Step74ExitGvOut⟩,(shrinkRow 777 s6Step74ExitGExtra ++ (shrinkRow 795 s6Step74ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step74ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step74ExitBank_rows]
  rfl

private theorem s6Step74Add0_apart : Disjoint s6Step74Add0Arena.live s6Step74Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step74Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step74Add0_card : s6Step74Add0Arena.live.card=868 := by
  decide +kernel

private theorem s6Step74Add0_borrowed : s6Step74Add0Arena.checkBorrow (hmrHybridCount s6Step74Add0Arena s6Step74Add0B.length) s6Step74Add0Work=some s6Step74Add0During := by
  have len : s6Step74Add0Work.length=hmrHybridCount s6Step74Add0Arena s6Step74Add0B.length := by
    rw [hmrHybridCount,s6Step74Add0_card]
    decide +kernel
  have nd : s6Step74Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step74Add0Arena s6Step74Add0During s6Step74Add0Work.toFinset s6Step74Add0_bounded s6Step74Add0_apart rfl

private theorem s6Step74Add0_distinct : (877::822::869::(s6Step74Add0A++s6Step74Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step74Add0_owned : (877::822::869::(s6Step74Add0A++s6Step74Add0B)).toFinset⊆s6Step74Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step74Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step74Add0_checked : compileHmrHybridCinLog s6Step74Add0Arena 822 877 869 s6Step74Add0A s6Step74Add0B s6Step74Add0Work=some s6Step74Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step74Add0Arena s6Step74Add0During 822 877 869 s6Step74Add0A s6Step74Add0B s6Step74Add0Work
    (by decide +kernel) (by decide +kernel) s6Step74Add0_distinct
    (fun q hq => s6Step74Add0_owned (List.mem_toFinset.mpr hq)) s6Step74Add0_borrowed

private theorem s6Step74Add1_apart : Disjoint s6Step74Add1Arena.live s6Step74Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step74Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step74Add1_card : s6Step74Add1Arena.live.card=868 := by
  decide +kernel

private theorem s6Step74Add1_borrowed : s6Step74Add1Arena.checkBorrow (hmrHybridCount s6Step74Add1Arena s6Step74Add1B.length) s6Step74Add1Work=some s6Step74Add1During := by
  have len : s6Step74Add1Work.length=hmrHybridCount s6Step74Add1Arena s6Step74Add1B.length := by
    rw [hmrHybridCount,s6Step74Add1_card]
    decide +kernel
  have nd : s6Step74Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step74Add1Arena s6Step74Add1During s6Step74Add1Work.toFinset s6Step74Add1_bounded s6Step74Add1_apart rfl

private theorem s6Step74Add1_distinct : (877::822::869::(s6Step74Add1A++s6Step74Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step74Add1_owned : (877::822::869::(s6Step74Add1A++s6Step74Add1B)).toFinset⊆s6Step74Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step74Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step74Add1_checked : compileHmrHybridCinLog s6Step74Add1Arena 822 877 869 s6Step74Add1A s6Step74Add1B s6Step74Add1Work=some s6Step74Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step74Add1Arena s6Step74Add1During 822 877 869 s6Step74Add1A s6Step74Add1B s6Step74Add1Work
    (by decide +kernel) (by decide +kernel) s6Step74Add1_distinct
    (fun q hq => s6Step74Add1_owned (List.mem_toFinset.mpr hq)) s6Step74Add1_borrowed

private theorem s6Step74F4_apart : Disjoint (s6Step74Add0A++s6Step74Add0B).toFinset (s6Step74Add1A++s6Step74Add1B).toFinset := by
  have nd : ((s6Step74Add0A++s6Step74Add0B)++(s6Step74Add1A++s6Step74Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step74F4_carry : s6Step74F4FlagArena.checkBorrow 1 [869]=some s6Step74Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step74F4FlagArena,s6Step74HeadFvAfter,arenaWires]
  · change s6Step74Add0Arena.live=(s6Step74HeadFvAfter.live∪{877})∪{869}
    apply hmrArena_union_pair_of_filter_check s6Step74HeadFvAfter s6Step74Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 877 869 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step74F4_distinct : (855::822::877::869::((s6Step74Add0A++s6Step74Add1A)++(s6Step74Add0B++s6Step74Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step74F4_flag : s6Step74HeadFvAfter.checkBorrow 1 [877]=some s6Step74F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step74HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step74F4_owned : (855::822::((s6Step74Add0A++s6Step74Add1A)++(s6Step74Add0B++s6Step74Add1B))).toFinset⊆s6Step74HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step74HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step74F4_checked : compileHmrHybridF4Log s6Step74HeadFvAfter 855 822 s6Step74Add0A s6Step74Add0B s6Step74Add1A s6Step74Add1B [877] [869] s6Step74Add0Work s6Step74Add1Work=some s6Step74F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step74HeadFvAfter s6Step74F4FlagArena s6Step74Add0Arena s6Step74Add0During s6Step74Add1During 855 822
    s6Step74Add0A s6Step74Add0B s6Step74Add1A s6Step74Add1B [877] [869] s6Step74Add0Work s6Step74Add1Work
    (fun q hq => s6Step74F4_owned (List.mem_toFinset.mpr hq)) s6Step74F4_flag s6Step74F4_carry
    s6Step74F4_distinct s6Step74F4_apart s6Step74Add0_checked s6Step74Add1_checked

private theorem s6Step74Front_branch : s6Step74FrontSigmaArena.checkBorrow 1 [822]=some s6Step74HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step74FrontSigmaArena,s6Step74EntryGvAfter,arenaWires]
  · change s6Step74HeadGBefore.live=(s6Step74EntryGvAfter.live∪{855})∪{822}
    apply hmrArena_union_pair_of_filter_check s6Step74EntryGvAfter s6Step74HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 855 822 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step74Front_entry : HmrFrontEntryValid s6Step74EntryFBefore s6Step74FrontBank 232 50 ⟨231,231,51,50⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step74FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step74EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step74EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step74FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step74Front_sigma : s6Step74EntryGvAfter.checkBorrow 1 [855]=some s6Step74FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step74EntryGvAfter,arenaWires]
  · rfl

private def s6Step74HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step74HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step74HeadFBefore : Arena := s6Step74HeadGAfter

private def s6Step74HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487],795⟩

private def s6Step74HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854],776⟩

private def s6Step74HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 898],777⟩

private def s6Step74HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838],775⟩

private theorem s6Step74HeadBank_incomingDistinct : ([s6Step74HeadGRow,s6Step74HeadFRow,s6Step74HeadGvRow,s6Step74HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step74HeadF_Incoming : rowsOwned s6Step74HeadFBefore [s6Step74HeadFRow,s6Step74HeadGvRow,s6Step74HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step74HeadGRow,s6Step74HeadFRow,s6Step74HeadGvRow,s6Step74HeadFvRow] 1 s6Step74HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step74HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step74HeadBank_outgoingOwned : rowsOwned s6Step74HeadFvAfter [s6Step74HeadGOut,s6Step74HeadFOut,s6Step74HeadGvOut,s6Step74HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step74HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step74HeadF_Outgoing : rowsOwned s6Step74HeadFvAfter [s6Step74HeadFOut,s6Step74HeadGvOut,s6Step74HeadFvOut] :=
  hmrRows_owned_drop s6Step74HeadFvAfter [s6Step74HeadGOut,s6Step74HeadFOut,s6Step74HeadGvOut,s6Step74HeadFvOut] 1 s6Step74HeadBank_outgoingOwned

private theorem s6Step74HeadF_distinct : (s6Step74HeadFRow.sign::s6Step74HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step74HeadF_owned : (s6Step74HeadFRow.sign::s6Step74HeadFRow.payload).toFinset⊆s6Step74HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step74HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step74HeadF_reserved : s6Step74HeadFBefore.reserve s6Step74HeadFFresh.toFinset=some s6Step74HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step74HeadFFresh,arenaWires]
  · norm_num [s6Step74HeadFBefore,s6Step74HeadGAfter,s6Step74HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step74HeadFBefore s6Step74HeadFAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step74HeadFFresh rfl rfl
    · norm_num [s6Step74HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step74HeadF_checked : planRowResizeLog s6Step74HeadFBefore s6Step74HeadFRow 233 s6Step74HeadFFresh=
    some (s6Step74HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 780],795⟩,growRow 795 s6Step74HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step74HeadFBefore s6Step74HeadFAfter s6Step74HeadFRow 233 s6Step74HeadFFresh
    s6Step74HeadF_distinct s6Step74HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step74HeadF_reserved
  have rowEq : WindowRow.mk (s6Step74HeadFRow.payload++s6Step74HeadFFresh) s6Step74HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 780],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step74HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step74HeadFvBefore : Arena := s6Step74HeadGvAfter

private theorem s6Step74HeadFv_Incoming : rowsOwned s6Step74HeadFvBefore [s6Step74HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step74HeadGRow,s6Step74HeadFRow,s6Step74HeadGvRow,s6Step74HeadFvRow] 3 s6Step74HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step74HeadFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step74HeadFv_Outgoing : rowsOwned s6Step74HeadFvAfter [s6Step74HeadFvOut] :=
  hmrRows_owned_drop s6Step74HeadFvAfter [s6Step74HeadGOut,s6Step74HeadFOut,s6Step74HeadGvOut,s6Step74HeadFvOut] 3 s6Step74HeadBank_outgoingOwned

private theorem s6Step74HeadFv_distinct : (s6Step74HeadFvRow.sign::s6Step74HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step74HeadFv_owned : (s6Step74HeadFvRow.sign::s6Step74HeadFvRow.payload).toFinset⊆s6Step74HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step74HeadFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step74HeadFv_reserved : s6Step74HeadFvBefore.reserve s6Step74HeadFvFresh.toFinset=some s6Step74HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step74HeadFvFresh,arenaWires]
  · norm_num [s6Step74HeadFvBefore,s6Step74HeadGvAfter,s6Step74HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step74HeadFvBefore s6Step74HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step74HeadFvFresh rfl rfl
    · norm_num [s6Step74HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step74HeadFv_checked : planRowResizeLog s6Step74HeadFvBefore s6Step74HeadFvRow 51 s6Step74HeadFvFresh=
    some (s6Step74HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841],776⟩,growRow 776 s6Step74HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step74HeadFvBefore s6Step74HeadFvAfter s6Step74HeadFvRow 51 s6Step74HeadFvFresh
    s6Step74HeadFv_distinct s6Step74HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step74HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step74HeadFvRow.payload++s6Step74HeadFvFresh) s6Step74HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step74HeadG_Incoming : rowsOwned s6Step74HeadGBefore [s6Step74HeadGRow,s6Step74HeadFRow,s6Step74HeadGvRow,s6Step74HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step74HeadGRow,s6Step74HeadFRow,s6Step74HeadGvRow,s6Step74HeadFvRow] 0 s6Step74HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step74HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step74HeadG_Outgoing : rowsOwned s6Step74HeadFvAfter [s6Step74HeadGOut,s6Step74HeadFOut,s6Step74HeadGvOut,s6Step74HeadFvOut] :=
  hmrRows_owned_drop s6Step74HeadFvAfter [s6Step74HeadGOut,s6Step74HeadFOut,s6Step74HeadGvOut,s6Step74HeadFvOut] 0 s6Step74HeadBank_outgoingOwned

private theorem s6Step74HeadG_distinct : (s6Step74HeadGRow.sign::s6Step74HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step74HeadG_owned : (s6Step74HeadGRow.sign::s6Step74HeadGRow.payload).toFinset⊆s6Step74HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step74HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step74HeadG_reserved : s6Step74HeadGBefore.reserve s6Step74HeadGFresh.toFinset=some s6Step74HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step74HeadGFresh,arenaWires]
  · norm_num [s6Step74HeadGBefore,s6Step74HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step74HeadGBefore s6Step74HeadGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step74HeadGFresh rfl rfl
    · norm_num [s6Step74HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step74HeadG_checked : planRowResizeLog s6Step74HeadGBefore s6Step74HeadGRow 233 s6Step74HeadGFresh=
    some (s6Step74HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 898, 839],777⟩,growRow 777 s6Step74HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step74HeadGBefore s6Step74HeadGAfter s6Step74HeadGRow 233 s6Step74HeadGFresh
    s6Step74HeadG_distinct s6Step74HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step74HeadG_reserved
  have rowEq : WindowRow.mk (s6Step74HeadGRow.payload++s6Step74HeadGFresh) s6Step74HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 898, 839],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step74HeadGvBefore : Arena := s6Step74HeadFAfter

private theorem s6Step74HeadGv_Incoming : rowsOwned s6Step74HeadGvBefore [s6Step74HeadGvRow,s6Step74HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step74HeadGRow,s6Step74HeadFRow,s6Step74HeadGvRow,s6Step74HeadFvRow] 2 s6Step74HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step74HeadGvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step74HeadGv_Outgoing : rowsOwned s6Step74HeadFvAfter [s6Step74HeadGvOut,s6Step74HeadFvOut] :=
  hmrRows_owned_drop s6Step74HeadFvAfter [s6Step74HeadGOut,s6Step74HeadFOut,s6Step74HeadGvOut,s6Step74HeadFvOut] 2 s6Step74HeadBank_outgoingOwned

private theorem s6Step74HeadGv_distinct : (s6Step74HeadGvRow.sign::s6Step74HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step74HeadGv_owned : (s6Step74HeadGvRow.sign::s6Step74HeadGvRow.payload).toFinset⊆s6Step74HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step74HeadGvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step74HeadGv_reserved : s6Step74HeadGvBefore.reserve s6Step74HeadGvFresh.toFinset=some s6Step74HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step74HeadGvFresh,arenaWires]
  · norm_num [s6Step74HeadGvBefore,s6Step74HeadFAfter,s6Step74HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step74HeadGvBefore s6Step74HeadGvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step74HeadGvFresh rfl rfl
    · norm_num [s6Step74HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step74HeadGv_checked : planRowResizeLog s6Step74HeadGvBefore s6Step74HeadGvRow 51 s6Step74HeadGvFresh=
    some (s6Step74HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 843],775⟩,growRow 775 s6Step74HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step74HeadGvBefore s6Step74HeadGvAfter s6Step74HeadGvRow 51 s6Step74HeadGvFresh
    s6Step74HeadGv_distinct s6Step74HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step74HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step74HeadGvRow.payload++s6Step74HeadGvFresh) s6Step74HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 843],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step74HeadBank_rows : planWindowRowsLog s6Step74HeadGBefore [(s6Step74HeadGRow,233),(s6Step74HeadFRow,233),(s6Step74HeadGvRow,51),(s6Step74HeadFvRow,51)] [s6Step74HeadGFresh,s6Step74HeadFFresh,s6Step74HeadGvFresh,s6Step74HeadFvFresh]=
    some (s6Step74HeadFvAfter,[s6Step74HeadGOut,s6Step74HeadFOut,s6Step74HeadGvOut,s6Step74HeadFvOut],(growRow 777 s6Step74HeadGFresh ++ (growRow 795 s6Step74HeadFFresh ++ (growRow 775 s6Step74HeadGvFresh ++ (growRow 776 s6Step74HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step74HeadFvAfter [] []=some (s6Step74HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step74HeadFvBefore s6Step74HeadFvAfter s6Step74HeadFvAfter
    s6Step74HeadFvRow s6Step74HeadFvOut 51 s6Step74HeadFvFresh [] [] []
    (growRow 776 s6Step74HeadFvFresh) ([]) s6Step74HeadFv_Incoming s6Step74HeadFv_checked h4 s6Step74HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step74HeadGvBefore s6Step74HeadGvAfter s6Step74HeadFvAfter
    s6Step74HeadGvRow s6Step74HeadGvOut 51 s6Step74HeadGvFresh [(s6Step74HeadFvRow,51)] [s6Step74HeadFvFresh] [s6Step74HeadFvOut]
    (growRow 775 s6Step74HeadGvFresh) ((growRow 776 s6Step74HeadFvFresh ++ [])) s6Step74HeadGv_Incoming s6Step74HeadGv_checked h3 s6Step74HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step74HeadFBefore s6Step74HeadFAfter s6Step74HeadFvAfter
    s6Step74HeadFRow s6Step74HeadFOut 233 s6Step74HeadFFresh [(s6Step74HeadGvRow,51),(s6Step74HeadFvRow,51)] [s6Step74HeadGvFresh,s6Step74HeadFvFresh] [s6Step74HeadGvOut,s6Step74HeadFvOut]
    (growRow 795 s6Step74HeadFFresh) ((growRow 775 s6Step74HeadGvFresh ++ (growRow 776 s6Step74HeadFvFresh ++ []))) s6Step74HeadF_Incoming s6Step74HeadF_checked h2 s6Step74HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step74HeadGBefore s6Step74HeadGAfter s6Step74HeadFvAfter
    s6Step74HeadGRow s6Step74HeadGOut 233 s6Step74HeadGFresh [(s6Step74HeadFRow,233),(s6Step74HeadGvRow,51),(s6Step74HeadFvRow,51)] [s6Step74HeadFFresh,s6Step74HeadGvFresh,s6Step74HeadFvFresh] [s6Step74HeadFOut,s6Step74HeadGvOut,s6Step74HeadFvOut]
    (growRow 777 s6Step74HeadGFresh) ((growRow 795 s6Step74HeadFFresh ++ (growRow 775 s6Step74HeadGvFresh ++ (growRow 776 s6Step74HeadFvFresh ++ [])))) s6Step74HeadG_Incoming s6Step74HeadG_checked h1 s6Step74HeadG_Outgoing
  exact h0

private theorem s6Step74HeadBank_checked : compileHmrBankResizeLog .headroom s6Step74HeadGBefore ⟨s6Step74HeadFRow,s6Step74HeadGRow,s6Step74HeadFvRow,s6Step74HeadGvRow⟩ ⟨233,233,51,51⟩ [s6Step74HeadGFresh,s6Step74HeadFFresh,s6Step74HeadGvFresh,s6Step74HeadFvFresh]=
    some (s6Step74HeadFvAfter,⟨s6Step74HeadFOut,s6Step74HeadGOut,s6Step74HeadFvOut,s6Step74HeadGvOut⟩,(growRow 777 s6Step74HeadGFresh ++ (growRow 795 s6Step74HeadFFresh ++ (growRow 775 s6Step74HeadGvFresh ++ (growRow 776 s6Step74HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step74HeadBank_rows]
  rfl

private theorem s6Step74Front_checked : compileHmrSourceFrontLog s6Step74EntryFBefore s6Step74FrontBank 232 50 ⟨231,231,51,50⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step74FrontLog=some s6Step74FrontPlan := by
  have pairEq : s6Step74FrontPair=⟨s6Step74HeadFRow,s6Step74HeadGRow,s6Step74HeadFvRow,s6Step74HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step74FrontHead=⟨s6Step74ExitFRow,s6Step74ExitGRow,s6Step74ExitFvRow,s6Step74ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step74Add0A=s6Step74FrontHead.f.wires := by decide +kernel
  have gEq : s6Step74Add0B=s6Step74FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step74Add1A=s6Step74FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step74Add1B=s6Step74FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step74EntryFBefore s6Step74FrontBank 232 50 ⟨231,231,51,50⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step74FrontLog s6Step74FrontPlan
  · exact s6Step74Front_entry
  · exact s6Step74EntryBank_checked
  · exact s6Step74Front_sigma
  · rfl
  · exact s6Step74Front_branch
  · rfl
  · simpa only [s6Step74FrontPlan,pairEq] using s6Step74HeadBank_checked
  · simpa only [s6Step74FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step74F4_checked
  · exact s6Step74Counter_checked
  · rfl
  · simpa only [s6Step74FrontPlan,headEq] using s6Step74ExitBank_checked

private theorem s6Step74Complete_explicit_checked : compileHmrEarlyStepLog s6Step74EntryFBefore s6Step74FrontBank 232 50 ⟨231,231,51,50⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step74CompleteLog=some s6Step74CompletePlan := by
  let Q := s6Step74EarlyControlPlan
  have hq := s6Step74EarlyControl_plan_checked
  have fv1 : s6Step74CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step74CompleteOut.fv.payload[2]?.getD s6Step74CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step74CompleteOut.fv.payload[3]?.getD s6Step74CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step74CompleteOut.fv.payload[4]?.getD s6Step74CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step74EntryFBefore s6Step74EarlyControlArena s6Step74FrontBank 232 50 ⟨231,231,51,50⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step74CompleteLog s6Step74FrontPlan Q
    s6Step74Front_checked s6Step74Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step74Complete_owned s6Step74Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step74EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 855 s6Step74CompleteOut.fv.second (s6Step74CompleteOut.fv.payload[2]?.getD s6Step74CompleteOut.fv.sign) (s6Step74CompleteOut.fv.payload[3]?.getD s6Step74CompleteOut.fv.sign) (s6Step74CompleteOut.fv.payload[4]?.getD s6Step74CompleteOut.fv.sign) 822 30 s6Step74EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep74Arena : Arena := s6Step74EntryFBefore
def s6PrivateStep74Bank : WindowBank := s6Step74FrontBank
def s6PrivateStep74Spec : HmrSourceWalkStepLog := ⟨232,50,⟨231,231,51,50⟩,30,.early s6Step74CompleteLog⟩
def s6PrivateStep74Plan : HmrSourceStepPlan := .early s6Step74CompletePlan
theorem s6PrivateStep74_source : s6PrivateStep74Spec=s6ObservedLogs64[10] := rfl
theorem s6PrivateStep74_checked : compileHmrSourceStepLog s6PrivateStep74Arena s6PrivateStep74Bank
    s6PrivateStep74Spec.fgWidth s6PrivateStep74Spec.vWidth s6PrivateStep74Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902]
    6 498 74 s6PrivateStep74Spec.need none s6PrivateStep74Spec.log=some s6PrivateStep74Plan := by
  change compileHmrSourceStepLog s6Step74EntryFBefore s6Step74FrontBank 232 50 ⟨231,231,51,50⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 6 498 74 30 none (.early s6Step74CompleteLog)=some (.early s6Step74CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 74<498)]
  rw [s6Step74Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
