import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep71
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

private def s6Step73CompleteMoves : List (Wire × Wire) := []

private def s6Step73EarlyControlLog : HmrEarlyControlLog := ⟨[855, 822, 839, 780, 843],[841],[877],[869, 803, 922, 879, 784, 891],[]⟩

private def s6Step73FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [839], [], []],[[780], [822], [855], [854]],[[], [], [], []]⟩,[838],[898],[843],[841],[877, 869, 803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[877, 869, 803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920],[843, 841, 877, 869]⟩

private def s6Step73CompleteLog : HmrEarlyStepLog := ⟨s6Step73FrontLog,s6Step73CompleteMoves,s6Step73EarlyControlLog⟩

private def s6Step73ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487],795⟩

private def s6Step73ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854],776⟩

private def s6Step73ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230],777⟩

private def s6Step73ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850],775⟩

private def s6Step73FrontOut : WindowBank := ⟨s6Step73ExitFOut,s6Step73ExitGOut,s6Step73ExitFvOut,s6Step73ExitGvOut⟩

private def s6Step73CompleteOut : WindowBank := s6Step73FrontOut.repacked s6Step73CompleteMoves

private def s6Step73EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step73EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step73EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step73EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step73EarlyControlPositiveArena,[841],s6Step73EarlyControlEqualityArena,[877],⟨⟨838,false⟩,[⟨⟨841,false⟩,877⟩]⟩⟩

private def s6Step73EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step73EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step73EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step73EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step73EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step73EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step73EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,855⟩,⟨⟨772,false⟩,822⟩,⟨⟨771,false⟩,839⟩,⟨⟨770,false⟩,780⟩,⟨⟨769,false⟩,843⟩]⟩

private def s6Step73EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step73EarlyControlZeroArena,s6Step73EarlyControlZeroPlan,s6Step73EarlyControlClassPlan,s6Step73EarlyControlFlagArena,s6Step73EarlyControlFittedArena,s6Step73EarlyControlHistoryArena,s6Step73EarlyControlSigmaArena,s6Step73EarlyControlOutputArena,s6Step73EarlyControlLog⟩

private def s6Step73CounterWork : List Wire := [843, 841, 877, 869]

private theorem s6Step73Counter_bounded : s6Step73CounterWork.toFinset⊆arenaWires := by norm_num [s6Step73CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step73HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step73CounterDuring : Arena := ⟨s6Step73HeadFvAfter.live∪s6Step73CounterWork.toFinset,Finset.union_subset s6Step73HeadFvAfter.bounded s6Step73Counter_bounded⟩

private def s6Step73EntryFFresh : List Wire := []

private def s6Step73EntryFvFresh : List Wire := []

private def s6Step73EntryGFresh : List Wire := [839]

private def s6Step73EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step73EntryGvAfter : Arena := s6Step73EntryGAfter

private def s6Step73EntryGvFresh : List Wire := []

private def s6Step73ExitFExtra : List Wire := [822]

private def s6Step73ExitGExtra : List Wire := [839, 780]

private def s6Step73ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step73ExitGvExtra : List Wire := [855]

private def s6Step73Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step73Add0Work : List Wire := [877, 869, 803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step73Add0_bounded : s6Step73Add0Work.toFinset⊆arenaWires := by
  have h : s6Step73Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step73Add0During : Arena := ⟨s6Step73Add0Arena.live∪s6Step73Add0Work.toFinset,Finset.union_subset s6Step73Add0Arena.bounded s6Step73Add0_bounded⟩

private def s6Step73Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step73Add1Work : List Wire := [877, 869, 803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920]

private theorem s6Step73Add1_bounded : s6Step73Add1Work.toFinset⊆arenaWires := by
  have h : s6Step73Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step73Add1During : Arena := ⟨s6Step73Add1Arena.live∪s6Step73Add1Work.toFinset,Finset.union_subset s6Step73Add1Arena.bounded s6Step73Add1_bounded⟩

private def s6Step73F4FlagArena : Arena := ⟨s6Step73HeadFvAfter.live∪{843},Finset.union_subset s6Step73HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step73F4Plan : HmrHybridF4Plan := ⟨s6Step73F4FlagArena,[843],s6Step73Add0Arena,[841],s6Step73Add0During,s6Step73Add0Work,s6Step73Add1During,s6Step73Add1Work⟩

private def s6Step73HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 822],795⟩

private def s6Step73HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854],776⟩

private def s6Step73HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 839, 780],777⟩

private def s6Step73HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 855],775⟩

private def s6Step73FrontHead : WindowBank := ⟨s6Step73HeadFOut,s6Step73HeadGOut,s6Step73HeadFvOut,s6Step73HeadGvOut⟩

private def s6Step73EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487],795⟩

private def s6Step73EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821],776⟩

private def s6Step73EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 839],777⟩

private def s6Step73EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850],775⟩

private def s6Step73FrontPair : WindowBank := ⟨s6Step73EntryFOut,s6Step73EntryGOut,s6Step73EntryFvOut,s6Step73EntryGvOut⟩

private def s6Step73FrontSigmaArena : Arena := ⟨s6Step73EntryGvAfter.live∪{838},Finset.union_subset s6Step73EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step73HeadFFresh : List Wire := [822]

private def s6Step73HeadFvFresh : List Wire := [854]

private def s6Step73HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step73HeadGFresh : List Wire := [780]

private def s6Step73HeadGvFresh : List Wire := [855]

private def s6Step73FrontPlan : HmrSourceFront := ⟨s6Step73EntryGvAfter,s6Step73FrontPair,(growRow 795 s6Step73EntryFFresh ++ (growRow 777 s6Step73EntryGFresh ++ (growRow 776 s6Step73EntryFvFresh ++ (growRow 775 s6Step73EntryGvFresh ++ [])))),s6Step73FrontSigmaArena,[838],s6Step73HeadGBefore,[898],
  s6Step73HeadFvAfter,s6Step73FrontHead,(growRow 777 s6Step73HeadGFresh ++ (growRow 795 s6Step73HeadFFresh ++ (growRow 775 s6Step73HeadGvFresh ++ (growRow 776 s6Step73HeadFvFresh ++ [])))),s6Step73F4Plan,s6Step73CounterDuring,s6Step73CounterWork,s6Step73ExitGvAfter,s6Step73FrontOut,(shrinkRow 777 s6Step73ExitGExtra ++ (shrinkRow 795 s6Step73ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step73ExitGvExtra ++ []))))⟩

private def s6Step73CompletePlan : HmrEarlyStepPlan := ⟨s6Step73FrontPlan,s6Step73EarlyControlArena,s6Step73EarlyControlPlan,s6Step73CompleteMoves⟩

private theorem s6Step73Complete_apart : List.Disjoint (s6Step73CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [838, 898, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] := by
  have nd : ((s6Step73CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[838, 898, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step73Complete_owned : (s6Step73CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step73EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step73EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step73Complete_repack : s6Step73ExitGvAfter.checkRepack s6Step73CompleteMoves=some s6Step73EarlyControlArena := by rfl

private theorem s6Step73EarlyControl_branchOwned : ([898] : List Wire).toFinset⊆s6Step73EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step73EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step73EarlyControl_branch : compileHmrBranchRetirement s6Step73EarlyControlSigmaArena 898=some s6Step73EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step73EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step73EarlyControlSigmaArena s6Step73EarlyControlOutputArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [898] rfl rfl
    decide +kernel

private theorem s6Step73EarlyControl_classEqualityBorrow : s6Step73EarlyControlPositiveArena.checkBorrow (([838, 841] : List Wire).length-1) s6Step73EarlyControlLog.classWork=some s6Step73EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step73EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step73EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step73EarlyControlPositiveArena s6Step73EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step73EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step73EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step73EarlyControl_classEqualityOwned : ([838, 841] : List Wire).toFinset⊆s6Step73EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step73EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step73EarlyControl_classEquality : compileHmrEqualityLog s6Step73EarlyControlPositiveArena [838, 841] 0 s6Step73EarlyControlLog.classWork=some (s6Step73EarlyControlEqualityArena,s6Step73EarlyControlLog.classWork,s6Step73EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step73EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step73EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step73EarlyControl_classOwned : ([769, 843, 838] : List Wire).toFinset⊆s6Step73EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step73EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step73EarlyControl_positiveBorrow : s6Step73EarlyControlZeroArena.checkBorrow (1) s6Step73EarlyControlLog.positiveWork=some s6Step73EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step73EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step73EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step73EarlyControlZeroArena s6Step73EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step73EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step73EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step73EarlyControl_class : compileHmrSourceClassLog s6Step73EarlyControlZeroArena false 769 s6Step73EarlyControlZeroPlan.top 0 838 s6Step73EarlyControlLog.positiveWork s6Step73EarlyControlLog.classWork=some s6Step73EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step73EarlyControlClassPlan s6Step73EarlyControlZeroArena false 769 s6Step73EarlyControlZeroPlan.top 0 838
  constructor
  · decide +kernel
  · exact s6Step73EarlyControl_classOwned
  · exact s6Step73EarlyControl_positiveBorrow
  · exact s6Step73EarlyControl_classEquality

private theorem s6Step73EarlyControl_entryRecordOwned : ([898, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step73EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step73EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step73EarlyControl_entrySigmaOwned : ([838, 254] : List Wire).toFinset⊆s6Step73EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step73EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step73EarlyControl_fitBorrow : s6Step73EarlyControlFlagArena.checkBorrow ((30-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).length)) s6Step73EarlyControlLog.recordFresh=some s6Step73EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step73EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step73EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step73EarlyControlFittedArena,s6Step73EarlyControlFlagArena,s6Step73EarlyControlLog,arenaWires]

private theorem s6Step73EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step73EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step73EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step73EarlyControl_fit : compileHmrRecordGrowLog s6Step73EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step73EarlyControlLog.recordFresh=some s6Step73EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step73EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step73EarlyControl_fitBorrow

private theorem s6Step73EarlyControl_flagsBorrow : s6Step73EarlyControlEqualityArena.checkBorrow (6) s6Step73EarlyControlLog.flagWork=some s6Step73EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step73EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step73EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step73EarlyControlEqualityArena s6Step73EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step73EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step73EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step73EarlyControl_flagsOwned : ([877, 253, 252, 251] : List Wire).toFinset⊆s6Step73EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step73EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step73EarlyControl_flags : compileHmrFlagsLog s6Step73EarlyControlClassPlan.equalityArena s6Step73EarlyControlClassPlan.equality.top 253 252 251 s6Step73EarlyControlLog.flagWork=some s6Step73EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step73EarlyControl_flagsOwned⟩
  · exact s6Step73EarlyControl_flagsBorrow

private theorem s6Step73EarlyControl_historyBorrow : s6Step73EarlyControlArena.checkBorrow ((30-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).length)) s6Step73EarlyControlLog.recordFresh=some s6Step73EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step73EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step73EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step73EarlyControlArena s6Step73EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step73EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step73EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step73EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step73EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step73EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step73EarlyControl_history : compileHmrRecordGrowLog s6Step73EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step73EarlyControlLog.recordFresh=some s6Step73EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step73EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step73EarlyControl_historyBorrow

private theorem s6Step73EarlyControl_sigmaOwned : ([254, 838] : List Wire).toFinset⊆s6Step73EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step73EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step73EarlyControl_sigmaReleaseOwned : ([838] : List Wire).toFinset⊆s6Step73EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step73EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step73EarlyControl_sigmaRelease : s6Step73EarlyControlHistoryArena.release {838} (fun _ => false)=some s6Step73EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step73EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step73EarlyControlHistoryArena s6Step73EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [838] rfl rfl
    decide +kernel

private theorem s6Step73EarlyControl_sigma : compileHmrSigmaDropLog s6Step73EarlyControlHistoryArena false 0 0 254 838 []=some s6Step73EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step73EarlyControl_sigmaOwned⟩
  · exact s6Step73EarlyControl_sigmaRelease

private theorem s6Step73EarlyControl_zeroBorrow : s6Step73EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step73EarlyControlLog.zeroWork=some s6Step73EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step73EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step73EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step73EarlyControlArena s6Step73EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step73EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step73EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step73EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step73EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step73EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step73EarlyControl_zero : compileHmrEqualityLog s6Step73EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step73EarlyControlLog.zeroWork=some (s6Step73EarlyControlZeroArena,s6Step73EarlyControlLog.zeroWork,s6Step73EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step73EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step73EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step73EarlyControl_logged : s6Step73EarlyControlPlan.Logged s6Step73EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 838 254 253 252 251 898 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step73EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step73EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step73EarlyControl_zero
  · exact s6Step73EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step73EarlyControl_flags
  · exact s6Step73EarlyControl_fit
  · exact s6Step73EarlyControl_history
  · exact s6Step73EarlyControl_sigma
  · exact s6Step73EarlyControl_branch

private theorem s6Step73EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step73EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 838 254 253 252 251 898 30 s6Step73EarlyControlLog=some s6Step73EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step73EarlyControlPlan s6Step73EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 838 254 253 252 251 898 30 s6Step73EarlyControl_logged

private def s6Step73EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step73EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487],795⟩

private def s6Step73EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821],776⟩

private def s6Step73EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230],777⟩

private def s6Step73EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850],775⟩

private def s6Step73FrontBank : WindowBank := ⟨s6Step73EntryFRow,s6Step73EntryGRow,s6Step73EntryFvRow,s6Step73EntryGvRow⟩

private def s6Step73Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 822, 795]

private def s6Step73Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 839, 780, 777]

private def s6Step73Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 776]

private def s6Step73Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 855, 775]

private theorem s6Step73Counter_apart : Disjoint s6Step73HeadFvAfter.live s6Step73CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step73HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step73Counter_borrowed : s6Step73HeadFvAfter.checkBorrow 4 s6Step73CounterWork=some s6Step73CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step73HeadFvAfter s6Step73CounterDuring s6Step73CounterWork.toFinset s6Step73Counter_bounded s6Step73Counter_apart rfl

private theorem s6Step73Counter_owned : (838::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step73HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step73HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step73Counter_checked : compileHmrCounterStepLog s6Step73HeadFvAfter true 838 [774, 773, 772, 771, 770, 769] s6Step73CounterWork=some s6Step73CounterDuring := by
  have owned : ∀q∈838::[774, 773, 772, 771, 770, 769],q∈s6Step73HeadFvAfter.live := fun q hq => s6Step73Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step73Counter_borrowed

private def s6Step73EntryFAfter : Arena := s6Step73EntryFBefore

private theorem s6Step73EntryBank_incomingDistinct : ([s6Step73EntryFRow,s6Step73EntryGRow,s6Step73EntryFvRow,s6Step73EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step73EntryF_Incoming : rowsOwned s6Step73EntryFBefore [s6Step73EntryFRow,s6Step73EntryGRow,s6Step73EntryFvRow,s6Step73EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step73EntryFRow,s6Step73EntryGRow,s6Step73EntryFvRow,s6Step73EntryGvRow] 0 s6Step73EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step73EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step73EntryBank_outgoingOwned : rowsOwned s6Step73EntryGvAfter [s6Step73EntryFOut,s6Step73EntryGOut,s6Step73EntryFvOut,s6Step73EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step73EntryGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step73EntryF_Outgoing : rowsOwned s6Step73EntryGvAfter [s6Step73EntryFOut,s6Step73EntryGOut,s6Step73EntryFvOut,s6Step73EntryGvOut] :=
  hmrRows_owned_drop s6Step73EntryGvAfter [s6Step73EntryFOut,s6Step73EntryGOut,s6Step73EntryFvOut,s6Step73EntryGvOut] 0 s6Step73EntryBank_outgoingOwned

private theorem s6Step73EntryF_distinct : (s6Step73EntryFRow.sign::s6Step73EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step73EntryF_owned : (s6Step73EntryFRow.sign::s6Step73EntryFRow.payload).toFinset⊆s6Step73EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step73EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step73EntryF_reserved : s6Step73EntryFBefore.reserve s6Step73EntryFFresh.toFinset=some s6Step73EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step73EntryFFresh,arenaWires]
  · norm_num [s6Step73EntryFBefore,s6Step73EntryFFresh,arenaWires]
  · simp only [s6Step73EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step73EntryF_checked : planRowResizeLog s6Step73EntryFBefore s6Step73EntryFRow 232 s6Step73EntryFFresh=
    some (s6Step73EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487],795⟩,growRow 795 s6Step73EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step73EntryFBefore s6Step73EntryFAfter s6Step73EntryFRow 232 s6Step73EntryFFresh
    s6Step73EntryF_distinct s6Step73EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step73EntryF_reserved
  have rowEq : WindowRow.mk (s6Step73EntryFRow.payload++s6Step73EntryFFresh) s6Step73EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step73EntryFvAfter : Arena := s6Step73EntryGAfter

private def s6Step73EntryFvBefore : Arena := s6Step73EntryGAfter

private theorem s6Step73EntryFv_Incoming : rowsOwned s6Step73EntryFvBefore [s6Step73EntryFvRow,s6Step73EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step73EntryFRow,s6Step73EntryGRow,s6Step73EntryFvRow,s6Step73EntryGvRow] 2 s6Step73EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step73EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step73EntryFv_Outgoing : rowsOwned s6Step73EntryGvAfter [s6Step73EntryFvOut,s6Step73EntryGvOut] :=
  hmrRows_owned_drop s6Step73EntryGvAfter [s6Step73EntryFOut,s6Step73EntryGOut,s6Step73EntryFvOut,s6Step73EntryGvOut] 2 s6Step73EntryBank_outgoingOwned

private theorem s6Step73EntryFv_distinct : (s6Step73EntryFvRow.sign::s6Step73EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step73EntryFv_owned : (s6Step73EntryFvRow.sign::s6Step73EntryFvRow.payload).toFinset⊆s6Step73EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step73EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step73EntryFv_reserved : s6Step73EntryFvBefore.reserve s6Step73EntryFvFresh.toFinset=some s6Step73EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step73EntryFvFresh,arenaWires]
  · norm_num [s6Step73EntryFvBefore,s6Step73EntryGAfter,s6Step73EntryFvFresh,arenaWires]
  · simp only [s6Step73EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step73EntryFv_checked : planRowResizeLog s6Step73EntryFvBefore s6Step73EntryFvRow 49 s6Step73EntryFvFresh=
    some (s6Step73EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821],776⟩,growRow 776 s6Step73EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step73EntryFvBefore s6Step73EntryFvAfter s6Step73EntryFvRow 49 s6Step73EntryFvFresh
    s6Step73EntryFv_distinct s6Step73EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step73EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step73EntryFvRow.payload++s6Step73EntryFvFresh) s6Step73EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step73EntryGBefore : Arena := s6Step73EntryFBefore

private theorem s6Step73EntryG_Incoming : rowsOwned s6Step73EntryGBefore [s6Step73EntryGRow,s6Step73EntryFvRow,s6Step73EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step73EntryFRow,s6Step73EntryGRow,s6Step73EntryFvRow,s6Step73EntryGvRow] 1 s6Step73EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step73EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step73EntryG_Outgoing : rowsOwned s6Step73EntryGvAfter [s6Step73EntryGOut,s6Step73EntryFvOut,s6Step73EntryGvOut] :=
  hmrRows_owned_drop s6Step73EntryGvAfter [s6Step73EntryFOut,s6Step73EntryGOut,s6Step73EntryFvOut,s6Step73EntryGvOut] 1 s6Step73EntryBank_outgoingOwned

private theorem s6Step73EntryG_distinct : (s6Step73EntryGRow.sign::s6Step73EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step73EntryG_owned : (s6Step73EntryGRow.sign::s6Step73EntryGRow.payload).toFinset⊆s6Step73EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step73EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step73EntryG_reserved : s6Step73EntryGBefore.reserve s6Step73EntryGFresh.toFinset=some s6Step73EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step73EntryGFresh,arenaWires]
  · norm_num [s6Step73EntryGBefore,s6Step73EntryFBefore,s6Step73EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step73EntryGBefore s6Step73EntryGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step73EntryGFresh rfl rfl
    · norm_num [s6Step73EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step73EntryG_checked : planRowResizeLog s6Step73EntryGBefore s6Step73EntryGRow 232 s6Step73EntryGFresh=
    some (s6Step73EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 839],777⟩,growRow 777 s6Step73EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step73EntryGBefore s6Step73EntryGAfter s6Step73EntryGRow 232 s6Step73EntryGFresh
    s6Step73EntryG_distinct s6Step73EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step73EntryG_reserved
  have rowEq : WindowRow.mk (s6Step73EntryGRow.payload++s6Step73EntryGFresh) s6Step73EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 839],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step73EntryGvBefore : Arena := s6Step73EntryGAfter

private theorem s6Step73EntryGv_Incoming : rowsOwned s6Step73EntryGvBefore [s6Step73EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step73EntryFRow,s6Step73EntryGRow,s6Step73EntryFvRow,s6Step73EntryGvRow] 3 s6Step73EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step73EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step73EntryGv_Outgoing : rowsOwned s6Step73EntryGvAfter [s6Step73EntryGvOut] :=
  hmrRows_owned_drop s6Step73EntryGvAfter [s6Step73EntryFOut,s6Step73EntryGOut,s6Step73EntryFvOut,s6Step73EntryGvOut] 3 s6Step73EntryBank_outgoingOwned

private theorem s6Step73EntryGv_distinct : (s6Step73EntryGvRow.sign::s6Step73EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step73EntryGv_owned : (s6Step73EntryGvRow.sign::s6Step73EntryGvRow.payload).toFinset⊆s6Step73EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step73EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step73EntryGv_reserved : s6Step73EntryGvBefore.reserve s6Step73EntryGvFresh.toFinset=some s6Step73EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step73EntryGvFresh,arenaWires]
  · norm_num [s6Step73EntryGvBefore,s6Step73EntryGAfter,s6Step73EntryGvFresh,arenaWires]
  · simp only [s6Step73EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step73EntryGv_checked : planRowResizeLog s6Step73EntryGvBefore s6Step73EntryGvRow 49 s6Step73EntryGvFresh=
    some (s6Step73EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850],775⟩,growRow 775 s6Step73EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step73EntryGvBefore s6Step73EntryGvAfter s6Step73EntryGvRow 49 s6Step73EntryGvFresh
    s6Step73EntryGv_distinct s6Step73EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step73EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step73EntryGvRow.payload++s6Step73EntryGvFresh) s6Step73EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step73EntryBank_rows : planWindowRowsLog s6Step73EntryFBefore [(s6Step73EntryFRow,232),(s6Step73EntryGRow,232),(s6Step73EntryFvRow,49),(s6Step73EntryGvRow,49)] [s6Step73EntryFFresh,s6Step73EntryGFresh,s6Step73EntryFvFresh,s6Step73EntryGvFresh]=
    some (s6Step73EntryGvAfter,[s6Step73EntryFOut,s6Step73EntryGOut,s6Step73EntryFvOut,s6Step73EntryGvOut],(growRow 795 s6Step73EntryFFresh ++ (growRow 777 s6Step73EntryGFresh ++ (growRow 776 s6Step73EntryFvFresh ++ (growRow 775 s6Step73EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step73EntryGvAfter [] []=some (s6Step73EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step73EntryGvBefore s6Step73EntryGvAfter s6Step73EntryGvAfter
    s6Step73EntryGvRow s6Step73EntryGvOut 49 s6Step73EntryGvFresh [] [] []
    (growRow 775 s6Step73EntryGvFresh) ([]) s6Step73EntryGv_Incoming s6Step73EntryGv_checked h4 s6Step73EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step73EntryFvBefore s6Step73EntryFvAfter s6Step73EntryGvAfter
    s6Step73EntryFvRow s6Step73EntryFvOut 49 s6Step73EntryFvFresh [(s6Step73EntryGvRow,49)] [s6Step73EntryGvFresh] [s6Step73EntryGvOut]
    (growRow 776 s6Step73EntryFvFresh) ((growRow 775 s6Step73EntryGvFresh ++ [])) s6Step73EntryFv_Incoming s6Step73EntryFv_checked h3 s6Step73EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step73EntryGBefore s6Step73EntryGAfter s6Step73EntryGvAfter
    s6Step73EntryGRow s6Step73EntryGOut 232 s6Step73EntryGFresh [(s6Step73EntryFvRow,49),(s6Step73EntryGvRow,49)] [s6Step73EntryFvFresh,s6Step73EntryGvFresh] [s6Step73EntryFvOut,s6Step73EntryGvOut]
    (growRow 777 s6Step73EntryGFresh) ((growRow 776 s6Step73EntryFvFresh ++ (growRow 775 s6Step73EntryGvFresh ++ []))) s6Step73EntryG_Incoming s6Step73EntryG_checked h2 s6Step73EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step73EntryFBefore s6Step73EntryFAfter s6Step73EntryGvAfter
    s6Step73EntryFRow s6Step73EntryFOut 232 s6Step73EntryFFresh [(s6Step73EntryGRow,232),(s6Step73EntryFvRow,49),(s6Step73EntryGvRow,49)] [s6Step73EntryGFresh,s6Step73EntryFvFresh,s6Step73EntryGvFresh] [s6Step73EntryGOut,s6Step73EntryFvOut,s6Step73EntryGvOut]
    (growRow 795 s6Step73EntryFFresh) ((growRow 777 s6Step73EntryGFresh ++ (growRow 776 s6Step73EntryFvFresh ++ (growRow 775 s6Step73EntryGvFresh ++ [])))) s6Step73EntryF_Incoming s6Step73EntryF_checked h1 s6Step73EntryF_Outgoing
  exact h0

private theorem s6Step73EntryBank_checked : compileHmrBankResizeLog .entry s6Step73EntryFBefore ⟨s6Step73EntryFRow,s6Step73EntryGRow,s6Step73EntryFvRow,s6Step73EntryGvRow⟩ ⟨232,232,49,49⟩ [s6Step73EntryFFresh,s6Step73EntryGFresh,s6Step73EntryFvFresh,s6Step73EntryGvFresh]=
    some (s6Step73EntryGvAfter,⟨s6Step73EntryFOut,s6Step73EntryGOut,s6Step73EntryFvOut,s6Step73EntryGvOut⟩,(growRow 795 s6Step73EntryFFresh ++ (growRow 777 s6Step73EntryGFresh ++ (growRow 776 s6Step73EntryFvFresh ++ (growRow 775 s6Step73EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step73EntryBank_rows]
  rfl

private def s6Step73ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step73ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step73ExitFBefore : Arena := s6Step73ExitGAfter

private def s6Step73ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 822],795⟩

private def s6Step73ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854],776⟩

private def s6Step73ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 839, 780],777⟩

private def s6Step73ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 855],775⟩

private theorem s6Step73ExitBank_incomingDistinct : ([s6Step73ExitGRow,s6Step73ExitFRow,s6Step73ExitFvRow,s6Step73ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step73ExitF_Incoming : rowsOwned s6Step73ExitFBefore [s6Step73ExitFRow,s6Step73ExitFvRow,s6Step73ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step73ExitGRow,s6Step73ExitFRow,s6Step73ExitFvRow,s6Step73ExitGvRow] 1 s6Step73ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step73ExitFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step73ExitBank_outgoingOwned : rowsOwned s6Step73ExitGvAfter [s6Step73ExitGOut,s6Step73ExitFOut,s6Step73ExitFvOut,s6Step73ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step73ExitGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step73ExitF_Outgoing : rowsOwned s6Step73ExitGvAfter [s6Step73ExitFOut,s6Step73ExitFvOut,s6Step73ExitGvOut] :=
  hmrRows_owned_drop s6Step73ExitGvAfter [s6Step73ExitGOut,s6Step73ExitFOut,s6Step73ExitFvOut,s6Step73ExitGvOut] 1 s6Step73ExitBank_outgoingOwned

private theorem s6Step73ExitF_distinct : (s6Step73ExitFRow.sign::s6Step73ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step73ExitF_owned : (s6Step73ExitFRow.sign::s6Step73ExitFRow.payload).toFinset⊆s6Step73ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step73ExitFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step73ExitF_retired : s6Step73ExitFBefore.retireSet s6Step73ExitFExtra.toFinset=s6Step73ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step73ExitFBefore s6Step73ExitFAfter s6Step73ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step73ExitFBefore s6Step73ExitFAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step73ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step73ExitF_checked : planRowResizeLog s6Step73ExitFBefore s6Step73ExitFRow 232 []=
    some (s6Step73ExitFAfter,s6Step73ExitFOut,shrinkRow 795 s6Step73ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step73ExitFBefore s6Step73ExitFRow 232 s6Step73ExitF_distinct s6Step73ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step73ExitFRow.payload.take 232) s6Step73ExitFRow.sign=s6Step73ExitFOut := by decide +kernel
  have hi : s6Step73ExitFRow.payload.drop 232=s6Step73ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step73ExitF_retired] at result
  exact result

private def s6Step73ExitFvAfter : Arena := s6Step73ExitFAfter

private def s6Step73ExitFvBefore : Arena := s6Step73ExitFAfter

private theorem s6Step73ExitFv_Incoming : rowsOwned s6Step73ExitFvBefore [s6Step73ExitFvRow,s6Step73ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step73ExitGRow,s6Step73ExitFRow,s6Step73ExitFvRow,s6Step73ExitGvRow] 2 s6Step73ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step73ExitFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step73ExitFv_Outgoing : rowsOwned s6Step73ExitGvAfter [s6Step73ExitFvOut,s6Step73ExitGvOut] :=
  hmrRows_owned_drop s6Step73ExitGvAfter [s6Step73ExitGOut,s6Step73ExitFOut,s6Step73ExitFvOut,s6Step73ExitGvOut] 2 s6Step73ExitBank_outgoingOwned

private theorem s6Step73ExitFv_distinct : (s6Step73ExitFvRow.sign::s6Step73ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step73ExitFv_owned : (s6Step73ExitFvRow.sign::s6Step73ExitFvRow.payload).toFinset⊆s6Step73ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step73ExitFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step73ExitFv_reserved : s6Step73ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step73ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step73ExitFv_checked : planRowResizeLog s6Step73ExitFvBefore s6Step73ExitFvRow 50 []=
    some (s6Step73ExitFvAfter,s6Step73ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step73ExitFvBefore s6Step73ExitFvAfter s6Step73ExitFvRow 50 []
    s6Step73ExitFv_distinct s6Step73ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step73ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step73ExitFvRow.payload++[]) s6Step73ExitFvRow.sign=s6Step73ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step73ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step73ExitG_Incoming : rowsOwned s6Step73ExitGBefore [s6Step73ExitGRow,s6Step73ExitFRow,s6Step73ExitFvRow,s6Step73ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step73ExitGRow,s6Step73ExitFRow,s6Step73ExitFvRow,s6Step73ExitGvRow] 0 s6Step73ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step73ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step73ExitG_Outgoing : rowsOwned s6Step73ExitGvAfter [s6Step73ExitGOut,s6Step73ExitFOut,s6Step73ExitFvOut,s6Step73ExitGvOut] :=
  hmrRows_owned_drop s6Step73ExitGvAfter [s6Step73ExitGOut,s6Step73ExitFOut,s6Step73ExitFvOut,s6Step73ExitGvOut] 0 s6Step73ExitBank_outgoingOwned

private theorem s6Step73ExitG_distinct : (s6Step73ExitGRow.sign::s6Step73ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step73ExitG_owned : (s6Step73ExitGRow.sign::s6Step73ExitGRow.payload).toFinset⊆s6Step73ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step73ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step73ExitG_retired : s6Step73ExitGBefore.retireSet s6Step73ExitGExtra.toFinset=s6Step73ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step73ExitGBefore s6Step73ExitGAfter s6Step73ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step73ExitGBefore s6Step73ExitGAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step73ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step73ExitG_checked : planRowResizeLog s6Step73ExitGBefore s6Step73ExitGRow 231 []=
    some (s6Step73ExitGAfter,s6Step73ExitGOut,shrinkRow 777 s6Step73ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step73ExitGBefore s6Step73ExitGRow 231 s6Step73ExitG_distinct s6Step73ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step73ExitGRow.payload.take 231) s6Step73ExitGRow.sign=s6Step73ExitGOut := by decide +kernel
  have hi : s6Step73ExitGRow.payload.drop 231=s6Step73ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step73ExitG_retired] at result
  exact result

private def s6Step73ExitGvBefore : Arena := s6Step73ExitFAfter

private theorem s6Step73ExitGv_Incoming : rowsOwned s6Step73ExitGvBefore [s6Step73ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step73ExitGRow,s6Step73ExitFRow,s6Step73ExitFvRow,s6Step73ExitGvRow] 3 s6Step73ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step73ExitGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step73ExitGv_Outgoing : rowsOwned s6Step73ExitGvAfter [s6Step73ExitGvOut] :=
  hmrRows_owned_drop s6Step73ExitGvAfter [s6Step73ExitGOut,s6Step73ExitFOut,s6Step73ExitFvOut,s6Step73ExitGvOut] 3 s6Step73ExitBank_outgoingOwned

private theorem s6Step73ExitGv_distinct : (s6Step73ExitGvRow.sign::s6Step73ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step73ExitGv_owned : (s6Step73ExitGvRow.sign::s6Step73ExitGvRow.payload).toFinset⊆s6Step73ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step73ExitGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step73ExitGv_retired : s6Step73ExitGvBefore.retireSet s6Step73ExitGvExtra.toFinset=s6Step73ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step73ExitGvBefore s6Step73ExitGvAfter s6Step73ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step73ExitGvBefore s6Step73ExitGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,839),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step73ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step73ExitGv_checked : planRowResizeLog s6Step73ExitGvBefore s6Step73ExitGvRow 49 []=
    some (s6Step73ExitGvAfter,s6Step73ExitGvOut,shrinkRow 775 s6Step73ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step73ExitGvBefore s6Step73ExitGvRow 49 s6Step73ExitGv_distinct s6Step73ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step73ExitGvRow.payload.take 49) s6Step73ExitGvRow.sign=s6Step73ExitGvOut := by decide +kernel
  have hi : s6Step73ExitGvRow.payload.drop 49=s6Step73ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step73ExitGv_retired] at result
  exact result

private theorem s6Step73ExitBank_rows : planWindowRowsLog s6Step73ExitGBefore [(s6Step73ExitGRow,231),(s6Step73ExitFRow,232),(s6Step73ExitFvRow,50),(s6Step73ExitGvRow,49)] [[],[],[],[]]=
    some (s6Step73ExitGvAfter,[s6Step73ExitGOut,s6Step73ExitFOut,s6Step73ExitFvOut,s6Step73ExitGvOut],(shrinkRow 777 s6Step73ExitGExtra ++ (shrinkRow 795 s6Step73ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step73ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step73ExitGvAfter [] []=some (s6Step73ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step73ExitGvBefore s6Step73ExitGvAfter s6Step73ExitGvAfter
    s6Step73ExitGvRow s6Step73ExitGvOut 49 [] [] [] []
    (shrinkRow 775 s6Step73ExitGvExtra) ([]) s6Step73ExitGv_Incoming s6Step73ExitGv_checked h4 s6Step73ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step73ExitFvBefore s6Step73ExitFvAfter s6Step73ExitGvAfter
    s6Step73ExitFvRow s6Step73ExitFvOut 50 [] [(s6Step73ExitGvRow,49)] [[]] [s6Step73ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step73ExitGvExtra ++ [])) s6Step73ExitFv_Incoming s6Step73ExitFv_checked h3 s6Step73ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step73ExitFBefore s6Step73ExitFAfter s6Step73ExitGvAfter
    s6Step73ExitFRow s6Step73ExitFOut 232 [] [(s6Step73ExitFvRow,50),(s6Step73ExitGvRow,49)] [[],[]] [s6Step73ExitFvOut,s6Step73ExitGvOut]
    (shrinkRow 795 s6Step73ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step73ExitGvExtra ++ []))) s6Step73ExitF_Incoming s6Step73ExitF_checked h2 s6Step73ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step73ExitGBefore s6Step73ExitGAfter s6Step73ExitGvAfter
    s6Step73ExitGRow s6Step73ExitGOut 231 [] [(s6Step73ExitFRow,232),(s6Step73ExitFvRow,50),(s6Step73ExitGvRow,49)] [[],[],[]] [s6Step73ExitFOut,s6Step73ExitFvOut,s6Step73ExitGvOut]
    (shrinkRow 777 s6Step73ExitGExtra) ((shrinkRow 795 s6Step73ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step73ExitGvExtra ++ [])))) s6Step73ExitG_Incoming s6Step73ExitG_checked h1 s6Step73ExitG_Outgoing
  exact h0

private theorem s6Step73ExitBank_checked : compileHmrBankResizeLog .exit s6Step73ExitGBefore ⟨s6Step73ExitFRow,s6Step73ExitGRow,s6Step73ExitFvRow,s6Step73ExitGvRow⟩ ⟨232,231,50,49⟩ [[],[],[],[]]=
    some (s6Step73ExitGvAfter,⟨s6Step73ExitFOut,s6Step73ExitGOut,s6Step73ExitFvOut,s6Step73ExitGvOut⟩,(shrinkRow 777 s6Step73ExitGExtra ++ (shrinkRow 795 s6Step73ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step73ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step73ExitBank_rows]
  rfl

private theorem s6Step73Add0_apart : Disjoint s6Step73Add0Arena.live s6Step73Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step73Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step73Add0_card : s6Step73Add0Arena.live.card=866 := by
  decide +kernel

private theorem s6Step73Add0_borrowed : s6Step73Add0Arena.checkBorrow (hmrHybridCount s6Step73Add0Arena s6Step73Add0B.length) s6Step73Add0Work=some s6Step73Add0During := by
  have len : s6Step73Add0Work.length=hmrHybridCount s6Step73Add0Arena s6Step73Add0B.length := by
    rw [hmrHybridCount,s6Step73Add0_card]
    decide +kernel
  have nd : s6Step73Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step73Add0Arena s6Step73Add0During s6Step73Add0Work.toFinset s6Step73Add0_bounded s6Step73Add0_apart rfl

private theorem s6Step73Add0_distinct : (843::898::841::(s6Step73Add0A++s6Step73Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step73Add0_owned : (843::898::841::(s6Step73Add0A++s6Step73Add0B)).toFinset⊆s6Step73Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step73Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step73Add0_checked : compileHmrHybridCinLog s6Step73Add0Arena 898 843 841 s6Step73Add0A s6Step73Add0B s6Step73Add0Work=some s6Step73Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step73Add0Arena s6Step73Add0During 898 843 841 s6Step73Add0A s6Step73Add0B s6Step73Add0Work
    (by decide +kernel) (by decide +kernel) s6Step73Add0_distinct
    (fun q hq => s6Step73Add0_owned (List.mem_toFinset.mpr hq)) s6Step73Add0_borrowed

private theorem s6Step73Add1_apart : Disjoint s6Step73Add1Arena.live s6Step73Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step73Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step73Add1_card : s6Step73Add1Arena.live.card=866 := by
  decide +kernel

private theorem s6Step73Add1_borrowed : s6Step73Add1Arena.checkBorrow (hmrHybridCount s6Step73Add1Arena s6Step73Add1B.length) s6Step73Add1Work=some s6Step73Add1During := by
  have len : s6Step73Add1Work.length=hmrHybridCount s6Step73Add1Arena s6Step73Add1B.length := by
    rw [hmrHybridCount,s6Step73Add1_card]
    decide +kernel
  have nd : s6Step73Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step73Add1Arena s6Step73Add1During s6Step73Add1Work.toFinset s6Step73Add1_bounded s6Step73Add1_apart rfl

private theorem s6Step73Add1_distinct : (843::898::841::(s6Step73Add1A++s6Step73Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step73Add1_owned : (843::898::841::(s6Step73Add1A++s6Step73Add1B)).toFinset⊆s6Step73Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step73Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step73Add1_checked : compileHmrHybridCinLog s6Step73Add1Arena 898 843 841 s6Step73Add1A s6Step73Add1B s6Step73Add1Work=some s6Step73Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step73Add1Arena s6Step73Add1During 898 843 841 s6Step73Add1A s6Step73Add1B s6Step73Add1Work
    (by decide +kernel) (by decide +kernel) s6Step73Add1_distinct
    (fun q hq => s6Step73Add1_owned (List.mem_toFinset.mpr hq)) s6Step73Add1_borrowed

private theorem s6Step73F4_apart : Disjoint (s6Step73Add0A++s6Step73Add0B).toFinset (s6Step73Add1A++s6Step73Add1B).toFinset := by
  have nd : ((s6Step73Add0A++s6Step73Add0B)++(s6Step73Add1A++s6Step73Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step73F4_carry : s6Step73F4FlagArena.checkBorrow 1 [841]=some s6Step73Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step73F4FlagArena,s6Step73HeadFvAfter,arenaWires]
  · change s6Step73Add0Arena.live=(s6Step73HeadFvAfter.live∪{843})∪{841}
    apply hmrArena_union_pair_of_filter_check s6Step73HeadFvAfter s6Step73Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 843 841 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step73F4_distinct : (838::898::843::841::((s6Step73Add0A++s6Step73Add1A)++(s6Step73Add0B++s6Step73Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step73F4_flag : s6Step73HeadFvAfter.checkBorrow 1 [843]=some s6Step73F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step73HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step73F4_owned : (838::898::((s6Step73Add0A++s6Step73Add1A)++(s6Step73Add0B++s6Step73Add1B))).toFinset⊆s6Step73HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step73HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step73F4_checked : compileHmrHybridF4Log s6Step73HeadFvAfter 838 898 s6Step73Add0A s6Step73Add0B s6Step73Add1A s6Step73Add1B [843] [841] s6Step73Add0Work s6Step73Add1Work=some s6Step73F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step73HeadFvAfter s6Step73F4FlagArena s6Step73Add0Arena s6Step73Add0During s6Step73Add1During 838 898
    s6Step73Add0A s6Step73Add0B s6Step73Add1A s6Step73Add1B [843] [841] s6Step73Add0Work s6Step73Add1Work
    (fun q hq => s6Step73F4_owned (List.mem_toFinset.mpr hq)) s6Step73F4_flag s6Step73F4_carry
    s6Step73F4_distinct s6Step73F4_apart s6Step73Add0_checked s6Step73Add1_checked

private theorem s6Step73Front_branch : s6Step73FrontSigmaArena.checkBorrow 1 [898]=some s6Step73HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step73FrontSigmaArena,s6Step73EntryGvAfter,s6Step73EntryGAfter,arenaWires]
  · change s6Step73HeadGBefore.live=(s6Step73EntryGvAfter.live∪{838})∪{898}
    apply hmrArena_union_pair_of_filter_check s6Step73EntryGvAfter s6Step73HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 838 898 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step73Front_entry : HmrFrontEntryValid s6Step73EntryFBefore s6Step73FrontBank 232 49 ⟨232,231,50,49⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step73FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step73EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step73EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step73FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step73Front_sigma : s6Step73EntryGvAfter.checkBorrow 1 [838]=some s6Step73FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step73EntryGvAfter,s6Step73EntryGAfter,arenaWires]
  · rfl

private def s6Step73HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step73HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step73HeadFBefore : Arena := s6Step73HeadGAfter

private def s6Step73HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487],795⟩

private def s6Step73HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821],776⟩

private def s6Step73HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 839],777⟩

private def s6Step73HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850],775⟩

private theorem s6Step73HeadBank_incomingDistinct : ([s6Step73HeadGRow,s6Step73HeadFRow,s6Step73HeadGvRow,s6Step73HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step73HeadF_Incoming : rowsOwned s6Step73HeadFBefore [s6Step73HeadFRow,s6Step73HeadGvRow,s6Step73HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step73HeadGRow,s6Step73HeadFRow,s6Step73HeadGvRow,s6Step73HeadFvRow] 1 s6Step73HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step73HeadFBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step73HeadBank_outgoingOwned : rowsOwned s6Step73HeadFvAfter [s6Step73HeadGOut,s6Step73HeadFOut,s6Step73HeadGvOut,s6Step73HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step73HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step73HeadF_Outgoing : rowsOwned s6Step73HeadFvAfter [s6Step73HeadFOut,s6Step73HeadGvOut,s6Step73HeadFvOut] :=
  hmrRows_owned_drop s6Step73HeadFvAfter [s6Step73HeadGOut,s6Step73HeadFOut,s6Step73HeadGvOut,s6Step73HeadFvOut] 1 s6Step73HeadBank_outgoingOwned

private theorem s6Step73HeadF_distinct : (s6Step73HeadFRow.sign::s6Step73HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step73HeadF_owned : (s6Step73HeadFRow.sign::s6Step73HeadFRow.payload).toFinset⊆s6Step73HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step73HeadFBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step73HeadF_reserved : s6Step73HeadFBefore.reserve s6Step73HeadFFresh.toFinset=some s6Step73HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step73HeadFFresh,arenaWires]
  · norm_num [s6Step73HeadFBefore,s6Step73HeadGAfter,s6Step73HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step73HeadFBefore s6Step73HeadFAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step73HeadFFresh rfl rfl
    · norm_num [s6Step73HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step73HeadF_checked : planRowResizeLog s6Step73HeadFBefore s6Step73HeadFRow 233 s6Step73HeadFFresh=
    some (s6Step73HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 822],795⟩,growRow 795 s6Step73HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step73HeadFBefore s6Step73HeadFAfter s6Step73HeadFRow 233 s6Step73HeadFFresh
    s6Step73HeadF_distinct s6Step73HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step73HeadF_reserved
  have rowEq : WindowRow.mk (s6Step73HeadFRow.payload++s6Step73HeadFFresh) s6Step73HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 822],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step73HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(855,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step73HeadFvBefore : Arena := s6Step73HeadGvAfter

private theorem s6Step73HeadFv_Incoming : rowsOwned s6Step73HeadFvBefore [s6Step73HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step73HeadGRow,s6Step73HeadFRow,s6Step73HeadGvRow,s6Step73HeadFvRow] 3 s6Step73HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step73HeadFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(855,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step73HeadFv_Outgoing : rowsOwned s6Step73HeadFvAfter [s6Step73HeadFvOut] :=
  hmrRows_owned_drop s6Step73HeadFvAfter [s6Step73HeadGOut,s6Step73HeadFOut,s6Step73HeadGvOut,s6Step73HeadFvOut] 3 s6Step73HeadBank_outgoingOwned

private theorem s6Step73HeadFv_distinct : (s6Step73HeadFvRow.sign::s6Step73HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step73HeadFv_owned : (s6Step73HeadFvRow.sign::s6Step73HeadFvRow.payload).toFinset⊆s6Step73HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step73HeadFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(855,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step73HeadFv_reserved : s6Step73HeadFvBefore.reserve s6Step73HeadFvFresh.toFinset=some s6Step73HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step73HeadFvFresh,arenaWires]
  · norm_num [s6Step73HeadFvBefore,s6Step73HeadGvAfter,s6Step73HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step73HeadFvBefore s6Step73HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(855,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step73HeadFvFresh rfl rfl
    · norm_num [s6Step73HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step73HeadFv_checked : planRowResizeLog s6Step73HeadFvBefore s6Step73HeadFvRow 50 s6Step73HeadFvFresh=
    some (s6Step73HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854],776⟩,growRow 776 s6Step73HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step73HeadFvBefore s6Step73HeadFvAfter s6Step73HeadFvRow 50 s6Step73HeadFvFresh
    s6Step73HeadFv_distinct s6Step73HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step73HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step73HeadFvRow.payload++s6Step73HeadFvFresh) s6Step73HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step73HeadG_Incoming : rowsOwned s6Step73HeadGBefore [s6Step73HeadGRow,s6Step73HeadFRow,s6Step73HeadGvRow,s6Step73HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step73HeadGRow,s6Step73HeadFRow,s6Step73HeadGvRow,s6Step73HeadFvRow] 0 s6Step73HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step73HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step73HeadG_Outgoing : rowsOwned s6Step73HeadFvAfter [s6Step73HeadGOut,s6Step73HeadFOut,s6Step73HeadGvOut,s6Step73HeadFvOut] :=
  hmrRows_owned_drop s6Step73HeadFvAfter [s6Step73HeadGOut,s6Step73HeadFOut,s6Step73HeadGvOut,s6Step73HeadFvOut] 0 s6Step73HeadBank_outgoingOwned

private theorem s6Step73HeadG_distinct : (s6Step73HeadGRow.sign::s6Step73HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step73HeadG_owned : (s6Step73HeadGRow.sign::s6Step73HeadGRow.payload).toFinset⊆s6Step73HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step73HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step73HeadG_reserved : s6Step73HeadGBefore.reserve s6Step73HeadGFresh.toFinset=some s6Step73HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step73HeadGFresh,arenaWires]
  · norm_num [s6Step73HeadGBefore,s6Step73HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step73HeadGBefore s6Step73HeadGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step73HeadGFresh rfl rfl
    · norm_num [s6Step73HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step73HeadG_checked : planRowResizeLog s6Step73HeadGBefore s6Step73HeadGRow 233 s6Step73HeadGFresh=
    some (s6Step73HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 839, 780],777⟩,growRow 777 s6Step73HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step73HeadGBefore s6Step73HeadGAfter s6Step73HeadGRow 233 s6Step73HeadGFresh
    s6Step73HeadG_distinct s6Step73HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step73HeadG_reserved
  have rowEq : WindowRow.mk (s6Step73HeadGRow.payload++s6Step73HeadGFresh) s6Step73HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 839, 780],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step73HeadGvBefore : Arena := s6Step73HeadFAfter

private theorem s6Step73HeadGv_Incoming : rowsOwned s6Step73HeadGvBefore [s6Step73HeadGvRow,s6Step73HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step73HeadGRow,s6Step73HeadFRow,s6Step73HeadGvRow,s6Step73HeadFvRow] 2 s6Step73HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step73HeadGvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step73HeadGv_Outgoing : rowsOwned s6Step73HeadFvAfter [s6Step73HeadGvOut,s6Step73HeadFvOut] :=
  hmrRows_owned_drop s6Step73HeadFvAfter [s6Step73HeadGOut,s6Step73HeadFOut,s6Step73HeadGvOut,s6Step73HeadFvOut] 2 s6Step73HeadBank_outgoingOwned

private theorem s6Step73HeadGv_distinct : (s6Step73HeadGvRow.sign::s6Step73HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step73HeadGv_owned : (s6Step73HeadGvRow.sign::s6Step73HeadGvRow.payload).toFinset⊆s6Step73HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step73HeadGvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step73HeadGv_reserved : s6Step73HeadGvBefore.reserve s6Step73HeadGvFresh.toFinset=some s6Step73HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step73HeadGvFresh,arenaWires]
  · norm_num [s6Step73HeadGvBefore,s6Step73HeadFAfter,s6Step73HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step73HeadGvBefore s6Step73HeadGvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(855,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step73HeadGvFresh rfl rfl
    · norm_num [s6Step73HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step73HeadGv_checked : planRowResizeLog s6Step73HeadGvBefore s6Step73HeadGvRow 50 s6Step73HeadGvFresh=
    some (s6Step73HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 855],775⟩,growRow 775 s6Step73HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step73HeadGvBefore s6Step73HeadGvAfter s6Step73HeadGvRow 50 s6Step73HeadGvFresh
    s6Step73HeadGv_distinct s6Step73HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step73HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step73HeadGvRow.payload++s6Step73HeadGvFresh) s6Step73HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 855],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step73HeadBank_rows : planWindowRowsLog s6Step73HeadGBefore [(s6Step73HeadGRow,233),(s6Step73HeadFRow,233),(s6Step73HeadGvRow,50),(s6Step73HeadFvRow,50)] [s6Step73HeadGFresh,s6Step73HeadFFresh,s6Step73HeadGvFresh,s6Step73HeadFvFresh]=
    some (s6Step73HeadFvAfter,[s6Step73HeadGOut,s6Step73HeadFOut,s6Step73HeadGvOut,s6Step73HeadFvOut],(growRow 777 s6Step73HeadGFresh ++ (growRow 795 s6Step73HeadFFresh ++ (growRow 775 s6Step73HeadGvFresh ++ (growRow 776 s6Step73HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step73HeadFvAfter [] []=some (s6Step73HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step73HeadFvBefore s6Step73HeadFvAfter s6Step73HeadFvAfter
    s6Step73HeadFvRow s6Step73HeadFvOut 50 s6Step73HeadFvFresh [] [] []
    (growRow 776 s6Step73HeadFvFresh) ([]) s6Step73HeadFv_Incoming s6Step73HeadFv_checked h4 s6Step73HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step73HeadGvBefore s6Step73HeadGvAfter s6Step73HeadFvAfter
    s6Step73HeadGvRow s6Step73HeadGvOut 50 s6Step73HeadGvFresh [(s6Step73HeadFvRow,50)] [s6Step73HeadFvFresh] [s6Step73HeadFvOut]
    (growRow 775 s6Step73HeadGvFresh) ((growRow 776 s6Step73HeadFvFresh ++ [])) s6Step73HeadGv_Incoming s6Step73HeadGv_checked h3 s6Step73HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step73HeadFBefore s6Step73HeadFAfter s6Step73HeadFvAfter
    s6Step73HeadFRow s6Step73HeadFOut 233 s6Step73HeadFFresh [(s6Step73HeadGvRow,50),(s6Step73HeadFvRow,50)] [s6Step73HeadGvFresh,s6Step73HeadFvFresh] [s6Step73HeadGvOut,s6Step73HeadFvOut]
    (growRow 795 s6Step73HeadFFresh) ((growRow 775 s6Step73HeadGvFresh ++ (growRow 776 s6Step73HeadFvFresh ++ []))) s6Step73HeadF_Incoming s6Step73HeadF_checked h2 s6Step73HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step73HeadGBefore s6Step73HeadGAfter s6Step73HeadFvAfter
    s6Step73HeadGRow s6Step73HeadGOut 233 s6Step73HeadGFresh [(s6Step73HeadFRow,233),(s6Step73HeadGvRow,50),(s6Step73HeadFvRow,50)] [s6Step73HeadFFresh,s6Step73HeadGvFresh,s6Step73HeadFvFresh] [s6Step73HeadFOut,s6Step73HeadGvOut,s6Step73HeadFvOut]
    (growRow 777 s6Step73HeadGFresh) ((growRow 795 s6Step73HeadFFresh ++ (growRow 775 s6Step73HeadGvFresh ++ (growRow 776 s6Step73HeadFvFresh ++ [])))) s6Step73HeadG_Incoming s6Step73HeadG_checked h1 s6Step73HeadG_Outgoing
  exact h0

private theorem s6Step73HeadBank_checked : compileHmrBankResizeLog .headroom s6Step73HeadGBefore ⟨s6Step73HeadFRow,s6Step73HeadGRow,s6Step73HeadFvRow,s6Step73HeadGvRow⟩ ⟨233,233,50,50⟩ [s6Step73HeadGFresh,s6Step73HeadFFresh,s6Step73HeadGvFresh,s6Step73HeadFvFresh]=
    some (s6Step73HeadFvAfter,⟨s6Step73HeadFOut,s6Step73HeadGOut,s6Step73HeadFvOut,s6Step73HeadGvOut⟩,(growRow 777 s6Step73HeadGFresh ++ (growRow 795 s6Step73HeadFFresh ++ (growRow 775 s6Step73HeadGvFresh ++ (growRow 776 s6Step73HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step73HeadBank_rows]
  rfl

private theorem s6Step73Front_checked : compileHmrSourceFrontLog s6Step73EntryFBefore s6Step73FrontBank 232 49 ⟨232,231,50,49⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step73FrontLog=some s6Step73FrontPlan := by
  have pairEq : s6Step73FrontPair=⟨s6Step73HeadFRow,s6Step73HeadGRow,s6Step73HeadFvRow,s6Step73HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step73FrontHead=⟨s6Step73ExitFRow,s6Step73ExitGRow,s6Step73ExitFvRow,s6Step73ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step73Add0A=s6Step73FrontHead.f.wires := by decide +kernel
  have gEq : s6Step73Add0B=s6Step73FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step73Add1A=s6Step73FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step73Add1B=s6Step73FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step73EntryFBefore s6Step73FrontBank 232 49 ⟨232,231,50,49⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step73FrontLog s6Step73FrontPlan
  · exact s6Step73Front_entry
  · exact s6Step73EntryBank_checked
  · exact s6Step73Front_sigma
  · rfl
  · exact s6Step73Front_branch
  · rfl
  · simpa only [s6Step73FrontPlan,pairEq] using s6Step73HeadBank_checked
  · simpa only [s6Step73FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step73F4_checked
  · exact s6Step73Counter_checked
  · rfl
  · simpa only [s6Step73FrontPlan,headEq] using s6Step73ExitBank_checked

private theorem s6Step73Complete_explicit_checked : compileHmrEarlyStepLog s6Step73EntryFBefore s6Step73FrontBank 232 49 ⟨232,231,50,49⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step73CompleteLog=some s6Step73CompletePlan := by
  let Q := s6Step73EarlyControlPlan
  have hq := s6Step73EarlyControl_plan_checked
  have fv1 : s6Step73CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step73CompleteOut.fv.payload[2]?.getD s6Step73CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step73CompleteOut.fv.payload[3]?.getD s6Step73CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step73CompleteOut.fv.payload[4]?.getD s6Step73CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step73EntryFBefore s6Step73EarlyControlArena s6Step73FrontBank 232 49 ⟨232,231,50,49⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step73CompleteLog s6Step73FrontPlan Q
    s6Step73Front_checked s6Step73Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step73Complete_owned s6Step73Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step73EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 838 s6Step73CompleteOut.fv.second (s6Step73CompleteOut.fv.payload[2]?.getD s6Step73CompleteOut.fv.sign) (s6Step73CompleteOut.fv.payload[3]?.getD s6Step73CompleteOut.fv.sign) (s6Step73CompleteOut.fv.payload[4]?.getD s6Step73CompleteOut.fv.sign) 898 30 s6Step73EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep73Arena : Arena := s6Step73EntryFBefore
def s6PrivateStep73Bank : WindowBank := s6Step73FrontBank
def s6PrivateStep73Spec : HmrSourceWalkStepLog := ⟨232,49,⟨232,231,50,49⟩,30,.early s6Step73CompleteLog⟩
def s6PrivateStep73Plan : HmrSourceStepPlan := .early s6Step73CompletePlan
theorem s6PrivateStep73_source : s6PrivateStep73Spec=s6ObservedLogs64[9] := rfl
theorem s6PrivateStep73_checked : compileHmrSourceStepLog s6PrivateStep73Arena s6PrivateStep73Bank
    s6PrivateStep73Spec.fgWidth s6PrivateStep73Spec.vWidth s6PrivateStep73Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902]
    6 498 73 s6PrivateStep73Spec.need none s6PrivateStep73Spec.log=some s6PrivateStep73Plan := by
  change compileHmrSourceStepLog s6Step73EntryFBefore s6Step73FrontBank 232 49 ⟨232,231,50,49⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 6 498 73 30 none (.early s6Step73CompleteLog)=some (.early s6Step73CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 73<498)]
  rw [s6Step73Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
