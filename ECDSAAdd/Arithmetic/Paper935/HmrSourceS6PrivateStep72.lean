import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep70
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

private def s6Step72CompleteMoves : List (Wire × Wire) := []

private def s6Step72EarlyControlLog : HmrEarlyControlLog := ⟨[898, 780, 822, 855, 854],[843],[841],[877, 869, 803, 922, 879, 784],[]⟩

private def s6Step72FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [841, 877], [], [850, 898]],[[869], [843], [780], [855]],[[], [], [], []]⟩,[838],[839],[803],[922],[879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896],[803, 922, 879, 784]⟩

private def s6Step72CompleteLog : HmrEarlyStepLog := ⟨s6Step72FrontLog,s6Step72CompleteMoves,s6Step72EarlyControlLog⟩

private def s6Step72ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487],795⟩

private def s6Step72ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821],776⟩

private def s6Step72ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230],777⟩

private def s6Step72ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850],775⟩

private def s6Step72FrontOut : WindowBank := ⟨s6Step72ExitFOut,s6Step72ExitGOut,s6Step72ExitFvOut,s6Step72ExitGvOut⟩

private def s6Step72CompleteOut : WindowBank := s6Step72FrontOut.repacked s6Step72CompleteMoves

private def s6Step72EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step72EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step72EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step72EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step72EarlyControlPositiveArena,[843],s6Step72EarlyControlEqualityArena,[841],⟨⟨838,false⟩,[⟨⟨843,false⟩,841⟩]⟩⟩

private def s6Step72EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step72EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step72EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step72EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step72EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step72EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step72EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,898⟩,⟨⟨772,false⟩,780⟩,⟨⟨771,false⟩,822⟩,⟨⟨770,false⟩,855⟩,⟨⟨769,false⟩,854⟩]⟩

private def s6Step72EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step72EarlyControlZeroArena,s6Step72EarlyControlZeroPlan,s6Step72EarlyControlClassPlan,s6Step72EarlyControlFlagArena,s6Step72EarlyControlFittedArena,s6Step72EarlyControlHistoryArena,s6Step72EarlyControlSigmaArena,s6Step72EarlyControlOutputArena,s6Step72EarlyControlLog⟩

private def s6Step72CounterWork : List Wire := [803, 922, 879, 784]

private theorem s6Step72Counter_bounded : s6Step72CounterWork.toFinset⊆arenaWires := by norm_num [s6Step72CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step72HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step72CounterDuring : Arena := ⟨s6Step72HeadFvAfter.live∪s6Step72CounterWork.toFinset,Finset.union_subset s6Step72HeadFvAfter.bounded s6Step72Counter_bounded⟩

private def s6Step72EntryFFresh : List Wire := []

private def s6Step72EntryFvFresh : List Wire := []

private def s6Step72EntryGFresh : List Wire := [841, 877]

private def s6Step72EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step72EntryGvFresh : List Wire := [850, 898]

private def s6Step72ExitFExtra : List Wire := [854, 843]

private def s6Step72ExitFvExtra : List Wire := [822, 855]

private def s6Step72ExitGExtra : List Wire := [841, 877, 869]

private def s6Step72ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step72ExitGvExtra : List Wire := [898, 780]

private def s6Step72Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step72Add0Work : List Wire := [879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step72Add0_bounded : s6Step72Add0Work.toFinset⊆arenaWires := by
  have h : s6Step72Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step72Add0During : Arena := ⟨s6Step72Add0Arena.live∪s6Step72Add0Work.toFinset,Finset.union_subset s6Step72Add0Arena.bounded s6Step72Add0_bounded⟩

private def s6Step72Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step72Add1Work : List Wire := [879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896]

private theorem s6Step72Add1_bounded : s6Step72Add1Work.toFinset⊆arenaWires := by
  have h : s6Step72Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step72Add1During : Arena := ⟨s6Step72Add1Arena.live∪s6Step72Add1Work.toFinset,Finset.union_subset s6Step72Add1Arena.bounded s6Step72Add1_bounded⟩

private def s6Step72F4FlagArena : Arena := ⟨s6Step72HeadFvAfter.live∪{803},Finset.union_subset s6Step72HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step72F4Plan : HmrHybridF4Plan := ⟨s6Step72F4FlagArena,[803],s6Step72Add0Arena,[922],s6Step72Add0During,s6Step72Add0Work,s6Step72Add1During,s6Step72Add1Work⟩

private def s6Step72HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 854, 843],795⟩

private def s6Step72HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 822, 855],776⟩

private def s6Step72HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 841, 877, 869],777⟩

private def s6Step72HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 898, 780],775⟩

private def s6Step72FrontHead : WindowBank := ⟨s6Step72HeadFOut,s6Step72HeadGOut,s6Step72HeadFvOut,s6Step72HeadGvOut⟩

private def s6Step72EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 854],795⟩

private def s6Step72EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 822],776⟩

private def s6Step72EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 841, 877],777⟩

private def s6Step72EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 898],775⟩

private def s6Step72FrontPair : WindowBank := ⟨s6Step72EntryFOut,s6Step72EntryGOut,s6Step72EntryFvOut,s6Step72EntryGvOut⟩

private def s6Step72FrontSigmaArena : Arena := ⟨s6Step72EntryGvAfter.live∪{838},Finset.union_subset s6Step72EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step72HeadFFresh : List Wire := [843]

private def s6Step72HeadFvFresh : List Wire := [855]

private def s6Step72HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step72HeadGFresh : List Wire := [869]

private def s6Step72HeadGvFresh : List Wire := [780]

private def s6Step72FrontPlan : HmrSourceFront := ⟨s6Step72EntryGvAfter,s6Step72FrontPair,(growRow 795 s6Step72EntryFFresh ++ (growRow 777 s6Step72EntryGFresh ++ (growRow 776 s6Step72EntryFvFresh ++ (growRow 775 s6Step72EntryGvFresh ++ [])))),s6Step72FrontSigmaArena,[838],s6Step72HeadGBefore,[839],
  s6Step72HeadFvAfter,s6Step72FrontHead,(growRow 777 s6Step72HeadGFresh ++ (growRow 795 s6Step72HeadFFresh ++ (growRow 775 s6Step72HeadGvFresh ++ (growRow 776 s6Step72HeadFvFresh ++ [])))),s6Step72F4Plan,s6Step72CounterDuring,s6Step72CounterWork,s6Step72ExitGvAfter,s6Step72FrontOut,(shrinkRow 777 s6Step72ExitGExtra ++ (shrinkRow 795 s6Step72ExitFExtra ++ (shrinkRow 776 s6Step72ExitFvExtra ++ (shrinkRow 775 s6Step72ExitGvExtra ++ []))))⟩

private def s6Step72CompletePlan : HmrEarlyStepPlan := ⟨s6Step72FrontPlan,s6Step72EarlyControlArena,s6Step72EarlyControlPlan,s6Step72CompleteMoves⟩

private theorem s6Step72Complete_apart : List.Disjoint (s6Step72CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [838, 839, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] := by
  have nd : ((s6Step72CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[838, 839, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step72Complete_owned : (s6Step72CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step72EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step72EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step72Complete_repack : s6Step72ExitGvAfter.checkRepack s6Step72CompleteMoves=some s6Step72EarlyControlArena := by rfl

private theorem s6Step72EarlyControl_branchOwned : ([839] : List Wire).toFinset⊆s6Step72EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step72EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step72EarlyControl_branch : compileHmrBranchRetirement s6Step72EarlyControlSigmaArena 839=some s6Step72EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step72EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step72EarlyControlSigmaArena s6Step72EarlyControlOutputArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [839] rfl rfl
    decide +kernel

private theorem s6Step72EarlyControl_classEqualityBorrow : s6Step72EarlyControlPositiveArena.checkBorrow (([838, 843] : List Wire).length-1) s6Step72EarlyControlLog.classWork=some s6Step72EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step72EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step72EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step72EarlyControlPositiveArena s6Step72EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step72EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step72EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step72EarlyControl_classEqualityOwned : ([838, 843] : List Wire).toFinset⊆s6Step72EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step72EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step72EarlyControl_classEquality : compileHmrEqualityLog s6Step72EarlyControlPositiveArena [838, 843] 0 s6Step72EarlyControlLog.classWork=some (s6Step72EarlyControlEqualityArena,s6Step72EarlyControlLog.classWork,s6Step72EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step72EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step72EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step72EarlyControl_classOwned : ([769, 854, 838] : List Wire).toFinset⊆s6Step72EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step72EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step72EarlyControl_positiveBorrow : s6Step72EarlyControlZeroArena.checkBorrow (1) s6Step72EarlyControlLog.positiveWork=some s6Step72EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step72EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step72EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step72EarlyControlZeroArena s6Step72EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step72EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step72EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step72EarlyControl_class : compileHmrSourceClassLog s6Step72EarlyControlZeroArena false 769 s6Step72EarlyControlZeroPlan.top 0 838 s6Step72EarlyControlLog.positiveWork s6Step72EarlyControlLog.classWork=some s6Step72EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step72EarlyControlClassPlan s6Step72EarlyControlZeroArena false 769 s6Step72EarlyControlZeroPlan.top 0 838
  constructor
  · decide +kernel
  · exact s6Step72EarlyControl_classOwned
  · exact s6Step72EarlyControl_positiveBorrow
  · exact s6Step72EarlyControl_classEquality

private theorem s6Step72EarlyControl_entryRecordOwned : ([839, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step72EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step72EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step72EarlyControl_entrySigmaOwned : ([838, 254] : List Wire).toFinset⊆s6Step72EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step72EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step72EarlyControl_fitBorrow : s6Step72EarlyControlFlagArena.checkBorrow ((30-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).length)) s6Step72EarlyControlLog.recordFresh=some s6Step72EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step72EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step72EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step72EarlyControlFittedArena,s6Step72EarlyControlFlagArena,s6Step72EarlyControlLog,arenaWires]

private theorem s6Step72EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step72EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step72EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step72EarlyControl_fit : compileHmrRecordGrowLog s6Step72EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step72EarlyControlLog.recordFresh=some s6Step72EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step72EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step72EarlyControl_fitBorrow

private theorem s6Step72EarlyControl_flagsBorrow : s6Step72EarlyControlEqualityArena.checkBorrow (6) s6Step72EarlyControlLog.flagWork=some s6Step72EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step72EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step72EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step72EarlyControlEqualityArena s6Step72EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step72EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step72EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step72EarlyControl_flagsOwned : ([841, 253, 252, 251] : List Wire).toFinset⊆s6Step72EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step72EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step72EarlyControl_flags : compileHmrFlagsLog s6Step72EarlyControlClassPlan.equalityArena s6Step72EarlyControlClassPlan.equality.top 253 252 251 s6Step72EarlyControlLog.flagWork=some s6Step72EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step72EarlyControl_flagsOwned⟩
  · exact s6Step72EarlyControl_flagsBorrow

private theorem s6Step72EarlyControl_historyBorrow : s6Step72EarlyControlArena.checkBorrow ((30-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).length)) s6Step72EarlyControlLog.recordFresh=some s6Step72EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step72EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step72EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step72EarlyControlArena s6Step72EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step72EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step72EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step72EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step72EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step72EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step72EarlyControl_history : compileHmrRecordGrowLog s6Step72EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step72EarlyControlLog.recordFresh=some s6Step72EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step72EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step72EarlyControl_historyBorrow

private theorem s6Step72EarlyControl_sigmaOwned : ([254, 838] : List Wire).toFinset⊆s6Step72EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step72EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step72EarlyControl_sigmaReleaseOwned : ([838] : List Wire).toFinset⊆s6Step72EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step72EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step72EarlyControl_sigmaRelease : s6Step72EarlyControlHistoryArena.release {838} (fun _ => false)=some s6Step72EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step72EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step72EarlyControlHistoryArena s6Step72EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [838] rfl rfl
    decide +kernel

private theorem s6Step72EarlyControl_sigma : compileHmrSigmaDropLog s6Step72EarlyControlHistoryArena false 0 0 254 838 []=some s6Step72EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step72EarlyControl_sigmaOwned⟩
  · exact s6Step72EarlyControl_sigmaRelease

private theorem s6Step72EarlyControl_zeroBorrow : s6Step72EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step72EarlyControlLog.zeroWork=some s6Step72EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step72EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step72EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step72EarlyControlArena s6Step72EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step72EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step72EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step72EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step72EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step72EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step72EarlyControl_zero : compileHmrEqualityLog s6Step72EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step72EarlyControlLog.zeroWork=some (s6Step72EarlyControlZeroArena,s6Step72EarlyControlLog.zeroWork,s6Step72EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step72EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step72EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step72EarlyControl_logged : s6Step72EarlyControlPlan.Logged s6Step72EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 838 254 253 252 251 839 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step72EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step72EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step72EarlyControl_zero
  · exact s6Step72EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step72EarlyControl_flags
  · exact s6Step72EarlyControl_fit
  · exact s6Step72EarlyControl_history
  · exact s6Step72EarlyControl_sigma
  · exact s6Step72EarlyControl_branch

private theorem s6Step72EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step72EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 838 254 253 252 251 839 30 s6Step72EarlyControlLog=some s6Step72EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step72EarlyControlPlan s6Step72EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 838 254 253 252 251 839 30 s6Step72EarlyControl_logged

private def s6Step72EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(851,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step72EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 854],795⟩

private def s6Step72EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 822],776⟩

private def s6Step72EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230],777⟩

private def s6Step72EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848],775⟩

private def s6Step72FrontBank : WindowBank := ⟨s6Step72EntryFRow,s6Step72EntryGRow,s6Step72EntryFvRow,s6Step72EntryGvRow⟩

private def s6Step72Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 854, 843, 795]

private def s6Step72Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 841, 877, 869, 777]

private def s6Step72Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 822, 855, 776]

private def s6Step72Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 898, 780, 775]

private theorem s6Step72Counter_apart : Disjoint s6Step72HeadFvAfter.live s6Step72CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step72HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step72Counter_borrowed : s6Step72HeadFvAfter.checkBorrow 4 s6Step72CounterWork=some s6Step72CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step72HeadFvAfter s6Step72CounterDuring s6Step72CounterWork.toFinset s6Step72Counter_bounded s6Step72Counter_apart rfl

private theorem s6Step72Counter_owned : (838::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step72HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step72HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step72Counter_checked : compileHmrCounterStepLog s6Step72HeadFvAfter true 838 [774, 773, 772, 771, 770, 769] s6Step72CounterWork=some s6Step72CounterDuring := by
  have owned : ∀q∈838::[774, 773, 772, 771, 770, 769],q∈s6Step72HeadFvAfter.live := fun q hq => s6Step72Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step72Counter_borrowed

private def s6Step72EntryFAfter : Arena := s6Step72EntryFBefore

private theorem s6Step72EntryBank_incomingDistinct : ([s6Step72EntryFRow,s6Step72EntryGRow,s6Step72EntryFvRow,s6Step72EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step72EntryF_Incoming : rowsOwned s6Step72EntryFBefore [s6Step72EntryFRow,s6Step72EntryGRow,s6Step72EntryFvRow,s6Step72EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step72EntryFRow,s6Step72EntryGRow,s6Step72EntryFvRow,s6Step72EntryGvRow] 0 s6Step72EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step72EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(851,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step72EntryBank_outgoingOwned : rowsOwned s6Step72EntryGvAfter [s6Step72EntryFOut,s6Step72EntryGOut,s6Step72EntryFvOut,s6Step72EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step72EntryGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step72EntryF_Outgoing : rowsOwned s6Step72EntryGvAfter [s6Step72EntryFOut,s6Step72EntryGOut,s6Step72EntryFvOut,s6Step72EntryGvOut] :=
  hmrRows_owned_drop s6Step72EntryGvAfter [s6Step72EntryFOut,s6Step72EntryGOut,s6Step72EntryFvOut,s6Step72EntryGvOut] 0 s6Step72EntryBank_outgoingOwned

private theorem s6Step72EntryF_distinct : (s6Step72EntryFRow.sign::s6Step72EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step72EntryF_owned : (s6Step72EntryFRow.sign::s6Step72EntryFRow.payload).toFinset⊆s6Step72EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step72EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(851,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step72EntryF_reserved : s6Step72EntryFBefore.reserve s6Step72EntryFFresh.toFinset=some s6Step72EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step72EntryFFresh,arenaWires]
  · norm_num [s6Step72EntryFBefore,s6Step72EntryFFresh,arenaWires]
  · simp only [s6Step72EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step72EntryF_checked : planRowResizeLog s6Step72EntryFBefore s6Step72EntryFRow 233 s6Step72EntryFFresh=
    some (s6Step72EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 854],795⟩,growRow 795 s6Step72EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step72EntryFBefore s6Step72EntryFAfter s6Step72EntryFRow 233 s6Step72EntryFFresh
    s6Step72EntryF_distinct s6Step72EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step72EntryF_reserved
  have rowEq : WindowRow.mk (s6Step72EntryFRow.payload++s6Step72EntryFFresh) s6Step72EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 854],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step72EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(851,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step72EntryFvAfter : Arena := s6Step72EntryGAfter

private def s6Step72EntryFvBefore : Arena := s6Step72EntryGAfter

private theorem s6Step72EntryFv_Incoming : rowsOwned s6Step72EntryFvBefore [s6Step72EntryFvRow,s6Step72EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step72EntryFRow,s6Step72EntryGRow,s6Step72EntryFvRow,s6Step72EntryGvRow] 2 s6Step72EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step72EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(851,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step72EntryFv_Outgoing : rowsOwned s6Step72EntryGvAfter [s6Step72EntryFvOut,s6Step72EntryGvOut] :=
  hmrRows_owned_drop s6Step72EntryGvAfter [s6Step72EntryFOut,s6Step72EntryGOut,s6Step72EntryFvOut,s6Step72EntryGvOut] 2 s6Step72EntryBank_outgoingOwned

private theorem s6Step72EntryFv_distinct : (s6Step72EntryFvRow.sign::s6Step72EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step72EntryFv_owned : (s6Step72EntryFvRow.sign::s6Step72EntryFvRow.payload).toFinset⊆s6Step72EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step72EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(851,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step72EntryFv_reserved : s6Step72EntryFvBefore.reserve s6Step72EntryFvFresh.toFinset=some s6Step72EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step72EntryFvFresh,arenaWires]
  · norm_num [s6Step72EntryFvBefore,s6Step72EntryGAfter,s6Step72EntryFvFresh,arenaWires]
  · simp only [s6Step72EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step72EntryFv_checked : planRowResizeLog s6Step72EntryFvBefore s6Step72EntryFvRow 50 s6Step72EntryFvFresh=
    some (s6Step72EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 822],776⟩,growRow 776 s6Step72EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step72EntryFvBefore s6Step72EntryFvAfter s6Step72EntryFvRow 50 s6Step72EntryFvFresh
    s6Step72EntryFv_distinct s6Step72EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step72EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step72EntryFvRow.payload++s6Step72EntryFvFresh) s6Step72EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 822],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step72EntryGBefore : Arena := s6Step72EntryFBefore

private theorem s6Step72EntryG_Incoming : rowsOwned s6Step72EntryGBefore [s6Step72EntryGRow,s6Step72EntryFvRow,s6Step72EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step72EntryFRow,s6Step72EntryGRow,s6Step72EntryFvRow,s6Step72EntryGvRow] 1 s6Step72EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step72EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(851,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step72EntryG_Outgoing : rowsOwned s6Step72EntryGvAfter [s6Step72EntryGOut,s6Step72EntryFvOut,s6Step72EntryGvOut] :=
  hmrRows_owned_drop s6Step72EntryGvAfter [s6Step72EntryFOut,s6Step72EntryGOut,s6Step72EntryFvOut,s6Step72EntryGvOut] 1 s6Step72EntryBank_outgoingOwned

private theorem s6Step72EntryG_distinct : (s6Step72EntryGRow.sign::s6Step72EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step72EntryG_owned : (s6Step72EntryGRow.sign::s6Step72EntryGRow.payload).toFinset⊆s6Step72EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step72EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(851,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step72EntryG_reserved : s6Step72EntryGBefore.reserve s6Step72EntryGFresh.toFinset=some s6Step72EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step72EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step72EntryGBefore,s6Step72EntryFBefore,s6Step72EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step72EntryGBefore s6Step72EntryGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(851,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(851,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step72EntryGFresh rfl rfl
    · norm_num [s6Step72EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step72EntryG_checked : planRowResizeLog s6Step72EntryGBefore s6Step72EntryGRow 233 s6Step72EntryGFresh=
    some (s6Step72EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 841, 877],777⟩,growRow 777 s6Step72EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step72EntryGBefore s6Step72EntryGAfter s6Step72EntryGRow 233 s6Step72EntryGFresh
    s6Step72EntryG_distinct s6Step72EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step72EntryG_reserved
  have rowEq : WindowRow.mk (s6Step72EntryGRow.payload++s6Step72EntryGFresh) s6Step72EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 841, 877],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step72EntryGvBefore : Arena := s6Step72EntryGAfter

private theorem s6Step72EntryGv_Incoming : rowsOwned s6Step72EntryGvBefore [s6Step72EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step72EntryFRow,s6Step72EntryGRow,s6Step72EntryFvRow,s6Step72EntryGvRow] 3 s6Step72EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step72EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(851,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step72EntryGv_Outgoing : rowsOwned s6Step72EntryGvAfter [s6Step72EntryGvOut] :=
  hmrRows_owned_drop s6Step72EntryGvAfter [s6Step72EntryFOut,s6Step72EntryGOut,s6Step72EntryFvOut,s6Step72EntryGvOut] 3 s6Step72EntryBank_outgoingOwned

private theorem s6Step72EntryGv_distinct : (s6Step72EntryGvRow.sign::s6Step72EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step72EntryGv_owned : (s6Step72EntryGvRow.sign::s6Step72EntryGvRow.payload).toFinset⊆s6Step72EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step72EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(851,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step72EntryGv_reserved : s6Step72EntryGvBefore.reserve s6Step72EntryGvFresh.toFinset=some s6Step72EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step72EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step72EntryGvBefore,s6Step72EntryGAfter,s6Step72EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step72EntryGvBefore s6Step72EntryGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(851,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step72EntryGvFresh rfl rfl
    · norm_num [s6Step72EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step72EntryGv_checked : planRowResizeLog s6Step72EntryGvBefore s6Step72EntryGvRow 50 s6Step72EntryGvFresh=
    some (s6Step72EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 898],775⟩,growRow 775 s6Step72EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step72EntryGvBefore s6Step72EntryGvAfter s6Step72EntryGvRow 50 s6Step72EntryGvFresh
    s6Step72EntryGv_distinct s6Step72EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step72EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step72EntryGvRow.payload++s6Step72EntryGvFresh) s6Step72EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 898],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step72EntryBank_rows : planWindowRowsLog s6Step72EntryFBefore [(s6Step72EntryFRow,233),(s6Step72EntryGRow,233),(s6Step72EntryFvRow,50),(s6Step72EntryGvRow,50)] [s6Step72EntryFFresh,s6Step72EntryGFresh,s6Step72EntryFvFresh,s6Step72EntryGvFresh]=
    some (s6Step72EntryGvAfter,[s6Step72EntryFOut,s6Step72EntryGOut,s6Step72EntryFvOut,s6Step72EntryGvOut],(growRow 795 s6Step72EntryFFresh ++ (growRow 777 s6Step72EntryGFresh ++ (growRow 776 s6Step72EntryFvFresh ++ (growRow 775 s6Step72EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step72EntryGvAfter [] []=some (s6Step72EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step72EntryGvBefore s6Step72EntryGvAfter s6Step72EntryGvAfter
    s6Step72EntryGvRow s6Step72EntryGvOut 50 s6Step72EntryGvFresh [] [] []
    (growRow 775 s6Step72EntryGvFresh) ([]) s6Step72EntryGv_Incoming s6Step72EntryGv_checked h4 s6Step72EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step72EntryFvBefore s6Step72EntryFvAfter s6Step72EntryGvAfter
    s6Step72EntryFvRow s6Step72EntryFvOut 50 s6Step72EntryFvFresh [(s6Step72EntryGvRow,50)] [s6Step72EntryGvFresh] [s6Step72EntryGvOut]
    (growRow 776 s6Step72EntryFvFresh) ((growRow 775 s6Step72EntryGvFresh ++ [])) s6Step72EntryFv_Incoming s6Step72EntryFv_checked h3 s6Step72EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step72EntryGBefore s6Step72EntryGAfter s6Step72EntryGvAfter
    s6Step72EntryGRow s6Step72EntryGOut 233 s6Step72EntryGFresh [(s6Step72EntryFvRow,50),(s6Step72EntryGvRow,50)] [s6Step72EntryFvFresh,s6Step72EntryGvFresh] [s6Step72EntryFvOut,s6Step72EntryGvOut]
    (growRow 777 s6Step72EntryGFresh) ((growRow 776 s6Step72EntryFvFresh ++ (growRow 775 s6Step72EntryGvFresh ++ []))) s6Step72EntryG_Incoming s6Step72EntryG_checked h2 s6Step72EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step72EntryFBefore s6Step72EntryFAfter s6Step72EntryGvAfter
    s6Step72EntryFRow s6Step72EntryFOut 233 s6Step72EntryFFresh [(s6Step72EntryGRow,233),(s6Step72EntryFvRow,50),(s6Step72EntryGvRow,50)] [s6Step72EntryGFresh,s6Step72EntryFvFresh,s6Step72EntryGvFresh] [s6Step72EntryGOut,s6Step72EntryFvOut,s6Step72EntryGvOut]
    (growRow 795 s6Step72EntryFFresh) ((growRow 777 s6Step72EntryGFresh ++ (growRow 776 s6Step72EntryFvFresh ++ (growRow 775 s6Step72EntryGvFresh ++ [])))) s6Step72EntryF_Incoming s6Step72EntryF_checked h1 s6Step72EntryF_Outgoing
  exact h0

private theorem s6Step72EntryBank_checked : compileHmrBankResizeLog .entry s6Step72EntryFBefore ⟨s6Step72EntryFRow,s6Step72EntryGRow,s6Step72EntryFvRow,s6Step72EntryGvRow⟩ ⟨233,233,50,50⟩ [s6Step72EntryFFresh,s6Step72EntryGFresh,s6Step72EntryFvFresh,s6Step72EntryGvFresh]=
    some (s6Step72EntryGvAfter,⟨s6Step72EntryFOut,s6Step72EntryGOut,s6Step72EntryFvOut,s6Step72EntryGvOut⟩,(growRow 795 s6Step72EntryFFresh ++ (growRow 777 s6Step72EntryGFresh ++ (growRow 776 s6Step72EntryFvFresh ++ (growRow 775 s6Step72EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step72EntryBank_rows]
  rfl

private def s6Step72ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(855,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step72ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step72ExitFBefore : Arena := s6Step72ExitGAfter

private def s6Step72ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 854, 843],795⟩

private def s6Step72ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 822, 855],776⟩

private def s6Step72ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 841, 877, 869],777⟩

private def s6Step72ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 898, 780],775⟩

private theorem s6Step72ExitBank_incomingDistinct : ([s6Step72ExitGRow,s6Step72ExitFRow,s6Step72ExitFvRow,s6Step72ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step72ExitF_Incoming : rowsOwned s6Step72ExitFBefore [s6Step72ExitFRow,s6Step72ExitFvRow,s6Step72ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step72ExitGRow,s6Step72ExitFRow,s6Step72ExitFvRow,s6Step72ExitGvRow] 1 s6Step72ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step72ExitFBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step72ExitBank_outgoingOwned : rowsOwned s6Step72ExitGvAfter [s6Step72ExitGOut,s6Step72ExitFOut,s6Step72ExitFvOut,s6Step72ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step72ExitGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step72ExitF_Outgoing : rowsOwned s6Step72ExitGvAfter [s6Step72ExitFOut,s6Step72ExitFvOut,s6Step72ExitGvOut] :=
  hmrRows_owned_drop s6Step72ExitGvAfter [s6Step72ExitGOut,s6Step72ExitFOut,s6Step72ExitFvOut,s6Step72ExitGvOut] 1 s6Step72ExitBank_outgoingOwned

private theorem s6Step72ExitF_distinct : (s6Step72ExitFRow.sign::s6Step72ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step72ExitF_owned : (s6Step72ExitFRow.sign::s6Step72ExitFRow.payload).toFinset⊆s6Step72ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step72ExitFBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step72ExitF_retired : s6Step72ExitFBefore.retireSet s6Step72ExitFExtra.toFinset=s6Step72ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step72ExitFBefore s6Step72ExitFAfter s6Step72ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step72ExitFBefore s6Step72ExitFAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(855,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step72ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step72ExitF_checked : planRowResizeLog s6Step72ExitFBefore s6Step72ExitFRow 232 []=
    some (s6Step72ExitFAfter,s6Step72ExitFOut,shrinkRow 795 s6Step72ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step72ExitFBefore s6Step72ExitFRow 232 s6Step72ExitF_distinct s6Step72ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step72ExitFRow.payload.take 232) s6Step72ExitFRow.sign=s6Step72ExitFOut := by decide +kernel
  have hi : s6Step72ExitFRow.payload.drop 232=s6Step72ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step72ExitF_retired] at result
  exact result

private def s6Step72ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step72ExitFvBefore : Arena := s6Step72ExitFAfter

private theorem s6Step72ExitFv_Incoming : rowsOwned s6Step72ExitFvBefore [s6Step72ExitFvRow,s6Step72ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step72ExitGRow,s6Step72ExitFRow,s6Step72ExitFvRow,s6Step72ExitGvRow] 2 s6Step72ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step72ExitFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(855,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step72ExitFv_Outgoing : rowsOwned s6Step72ExitGvAfter [s6Step72ExitFvOut,s6Step72ExitGvOut] :=
  hmrRows_owned_drop s6Step72ExitGvAfter [s6Step72ExitGOut,s6Step72ExitFOut,s6Step72ExitFvOut,s6Step72ExitGvOut] 2 s6Step72ExitBank_outgoingOwned

private theorem s6Step72ExitFv_distinct : (s6Step72ExitFvRow.sign::s6Step72ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step72ExitFv_owned : (s6Step72ExitFvRow.sign::s6Step72ExitFvRow.payload).toFinset⊆s6Step72ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step72ExitFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(855,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step72ExitFv_retired : s6Step72ExitFvBefore.retireSet s6Step72ExitFvExtra.toFinset=s6Step72ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step72ExitFvBefore s6Step72ExitFvAfter s6Step72ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step72ExitFvBefore s6Step72ExitFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(855,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step72ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step72ExitFv_checked : planRowResizeLog s6Step72ExitFvBefore s6Step72ExitFvRow 49 []=
    some (s6Step72ExitFvAfter,s6Step72ExitFvOut,shrinkRow 776 s6Step72ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step72ExitFvBefore s6Step72ExitFvRow 49 s6Step72ExitFv_distinct s6Step72ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step72ExitFvRow.payload.take 49) s6Step72ExitFvRow.sign=s6Step72ExitFvOut := by decide +kernel
  have hi : s6Step72ExitFvRow.payload.drop 49=s6Step72ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step72ExitFv_retired] at result
  exact result

private def s6Step72ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step72ExitG_Incoming : rowsOwned s6Step72ExitGBefore [s6Step72ExitGRow,s6Step72ExitFRow,s6Step72ExitFvRow,s6Step72ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step72ExitGRow,s6Step72ExitFRow,s6Step72ExitFvRow,s6Step72ExitGvRow] 0 s6Step72ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step72ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step72ExitG_Outgoing : rowsOwned s6Step72ExitGvAfter [s6Step72ExitGOut,s6Step72ExitFOut,s6Step72ExitFvOut,s6Step72ExitGvOut] :=
  hmrRows_owned_drop s6Step72ExitGvAfter [s6Step72ExitGOut,s6Step72ExitFOut,s6Step72ExitFvOut,s6Step72ExitGvOut] 0 s6Step72ExitBank_outgoingOwned

private theorem s6Step72ExitG_distinct : (s6Step72ExitGRow.sign::s6Step72ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step72ExitG_owned : (s6Step72ExitGRow.sign::s6Step72ExitGRow.payload).toFinset⊆s6Step72ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step72ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step72ExitG_retired : s6Step72ExitGBefore.retireSet s6Step72ExitGExtra.toFinset=s6Step72ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step72ExitGBefore s6Step72ExitGAfter s6Step72ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step72ExitGBefore s6Step72ExitGAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step72ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step72ExitG_checked : planRowResizeLog s6Step72ExitGBefore s6Step72ExitGRow 231 []=
    some (s6Step72ExitGAfter,s6Step72ExitGOut,shrinkRow 777 s6Step72ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step72ExitGBefore s6Step72ExitGRow 231 s6Step72ExitG_distinct s6Step72ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step72ExitGRow.payload.take 231) s6Step72ExitGRow.sign=s6Step72ExitGOut := by decide +kernel
  have hi : s6Step72ExitGRow.payload.drop 231=s6Step72ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step72ExitG_retired] at result
  exact result

private def s6Step72ExitGvBefore : Arena := s6Step72ExitFvAfter

private theorem s6Step72ExitGv_Incoming : rowsOwned s6Step72ExitGvBefore [s6Step72ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step72ExitGRow,s6Step72ExitFRow,s6Step72ExitFvRow,s6Step72ExitGvRow] 3 s6Step72ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step72ExitGvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step72ExitGv_Outgoing : rowsOwned s6Step72ExitGvAfter [s6Step72ExitGvOut] :=
  hmrRows_owned_drop s6Step72ExitGvAfter [s6Step72ExitGOut,s6Step72ExitFOut,s6Step72ExitFvOut,s6Step72ExitGvOut] 3 s6Step72ExitBank_outgoingOwned

private theorem s6Step72ExitGv_distinct : (s6Step72ExitGvRow.sign::s6Step72ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step72ExitGv_owned : (s6Step72ExitGvRow.sign::s6Step72ExitGvRow.payload).toFinset⊆s6Step72ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step72ExitGvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step72ExitGv_retired : s6Step72ExitGvBefore.retireSet s6Step72ExitGvExtra.toFinset=s6Step72ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step72ExitGvBefore s6Step72ExitGvAfter s6Step72ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step72ExitGvBefore s6Step72ExitGvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step72ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step72ExitGv_checked : planRowResizeLog s6Step72ExitGvBefore s6Step72ExitGvRow 49 []=
    some (s6Step72ExitGvAfter,s6Step72ExitGvOut,shrinkRow 775 s6Step72ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step72ExitGvBefore s6Step72ExitGvRow 49 s6Step72ExitGv_distinct s6Step72ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step72ExitGvRow.payload.take 49) s6Step72ExitGvRow.sign=s6Step72ExitGvOut := by decide +kernel
  have hi : s6Step72ExitGvRow.payload.drop 49=s6Step72ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step72ExitGv_retired] at result
  exact result

private theorem s6Step72ExitBank_rows : planWindowRowsLog s6Step72ExitGBefore [(s6Step72ExitGRow,231),(s6Step72ExitFRow,232),(s6Step72ExitFvRow,49),(s6Step72ExitGvRow,49)] [[],[],[],[]]=
    some (s6Step72ExitGvAfter,[s6Step72ExitGOut,s6Step72ExitFOut,s6Step72ExitFvOut,s6Step72ExitGvOut],(shrinkRow 777 s6Step72ExitGExtra ++ (shrinkRow 795 s6Step72ExitFExtra ++ (shrinkRow 776 s6Step72ExitFvExtra ++ (shrinkRow 775 s6Step72ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step72ExitGvAfter [] []=some (s6Step72ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step72ExitGvBefore s6Step72ExitGvAfter s6Step72ExitGvAfter
    s6Step72ExitGvRow s6Step72ExitGvOut 49 [] [] [] []
    (shrinkRow 775 s6Step72ExitGvExtra) ([]) s6Step72ExitGv_Incoming s6Step72ExitGv_checked h4 s6Step72ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step72ExitFvBefore s6Step72ExitFvAfter s6Step72ExitGvAfter
    s6Step72ExitFvRow s6Step72ExitFvOut 49 [] [(s6Step72ExitGvRow,49)] [[]] [s6Step72ExitGvOut]
    (shrinkRow 776 s6Step72ExitFvExtra) ((shrinkRow 775 s6Step72ExitGvExtra ++ [])) s6Step72ExitFv_Incoming s6Step72ExitFv_checked h3 s6Step72ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step72ExitFBefore s6Step72ExitFAfter s6Step72ExitGvAfter
    s6Step72ExitFRow s6Step72ExitFOut 232 [] [(s6Step72ExitFvRow,49),(s6Step72ExitGvRow,49)] [[],[]] [s6Step72ExitFvOut,s6Step72ExitGvOut]
    (shrinkRow 795 s6Step72ExitFExtra) ((shrinkRow 776 s6Step72ExitFvExtra ++ (shrinkRow 775 s6Step72ExitGvExtra ++ []))) s6Step72ExitF_Incoming s6Step72ExitF_checked h2 s6Step72ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step72ExitGBefore s6Step72ExitGAfter s6Step72ExitGvAfter
    s6Step72ExitGRow s6Step72ExitGOut 231 [] [(s6Step72ExitFRow,232),(s6Step72ExitFvRow,49),(s6Step72ExitGvRow,49)] [[],[],[]] [s6Step72ExitFOut,s6Step72ExitFvOut,s6Step72ExitGvOut]
    (shrinkRow 777 s6Step72ExitGExtra) ((shrinkRow 795 s6Step72ExitFExtra ++ (shrinkRow 776 s6Step72ExitFvExtra ++ (shrinkRow 775 s6Step72ExitGvExtra ++ [])))) s6Step72ExitG_Incoming s6Step72ExitG_checked h1 s6Step72ExitG_Outgoing
  exact h0

private theorem s6Step72ExitBank_checked : compileHmrBankResizeLog .exit s6Step72ExitGBefore ⟨s6Step72ExitFRow,s6Step72ExitGRow,s6Step72ExitFvRow,s6Step72ExitGvRow⟩ ⟨232,231,49,49⟩ [[],[],[],[]]=
    some (s6Step72ExitGvAfter,⟨s6Step72ExitFOut,s6Step72ExitGOut,s6Step72ExitFvOut,s6Step72ExitGvOut⟩,(shrinkRow 777 s6Step72ExitGExtra ++ (shrinkRow 795 s6Step72ExitFExtra ++ (shrinkRow 776 s6Step72ExitFvExtra ++ (shrinkRow 775 s6Step72ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step72ExitBank_rows]
  rfl

private theorem s6Step72Add0_apart : Disjoint s6Step72Add0Arena.live s6Step72Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step72Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step72Add0_card : s6Step72Add0Arena.live.card=870 := by
  decide +kernel

private theorem s6Step72Add0_borrowed : s6Step72Add0Arena.checkBorrow (hmrHybridCount s6Step72Add0Arena s6Step72Add0B.length) s6Step72Add0Work=some s6Step72Add0During := by
  have len : s6Step72Add0Work.length=hmrHybridCount s6Step72Add0Arena s6Step72Add0B.length := by
    rw [hmrHybridCount,s6Step72Add0_card]
    decide +kernel
  have nd : s6Step72Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step72Add0Arena s6Step72Add0During s6Step72Add0Work.toFinset s6Step72Add0_bounded s6Step72Add0_apart rfl

private theorem s6Step72Add0_distinct : (803::839::922::(s6Step72Add0A++s6Step72Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step72Add0_owned : (803::839::922::(s6Step72Add0A++s6Step72Add0B)).toFinset⊆s6Step72Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step72Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step72Add0_checked : compileHmrHybridCinLog s6Step72Add0Arena 839 803 922 s6Step72Add0A s6Step72Add0B s6Step72Add0Work=some s6Step72Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step72Add0Arena s6Step72Add0During 839 803 922 s6Step72Add0A s6Step72Add0B s6Step72Add0Work
    (by decide +kernel) (by decide +kernel) s6Step72Add0_distinct
    (fun q hq => s6Step72Add0_owned (List.mem_toFinset.mpr hq)) s6Step72Add0_borrowed

private theorem s6Step72Add1_apart : Disjoint s6Step72Add1Arena.live s6Step72Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step72Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step72Add1_card : s6Step72Add1Arena.live.card=870 := by
  decide +kernel

private theorem s6Step72Add1_borrowed : s6Step72Add1Arena.checkBorrow (hmrHybridCount s6Step72Add1Arena s6Step72Add1B.length) s6Step72Add1Work=some s6Step72Add1During := by
  have len : s6Step72Add1Work.length=hmrHybridCount s6Step72Add1Arena s6Step72Add1B.length := by
    rw [hmrHybridCount,s6Step72Add1_card]
    decide +kernel
  have nd : s6Step72Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step72Add1Arena s6Step72Add1During s6Step72Add1Work.toFinset s6Step72Add1_bounded s6Step72Add1_apart rfl

private theorem s6Step72Add1_distinct : (803::839::922::(s6Step72Add1A++s6Step72Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step72Add1_owned : (803::839::922::(s6Step72Add1A++s6Step72Add1B)).toFinset⊆s6Step72Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step72Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step72Add1_checked : compileHmrHybridCinLog s6Step72Add1Arena 839 803 922 s6Step72Add1A s6Step72Add1B s6Step72Add1Work=some s6Step72Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step72Add1Arena s6Step72Add1During 839 803 922 s6Step72Add1A s6Step72Add1B s6Step72Add1Work
    (by decide +kernel) (by decide +kernel) s6Step72Add1_distinct
    (fun q hq => s6Step72Add1_owned (List.mem_toFinset.mpr hq)) s6Step72Add1_borrowed

private theorem s6Step72F4_apart : Disjoint (s6Step72Add0A++s6Step72Add0B).toFinset (s6Step72Add1A++s6Step72Add1B).toFinset := by
  have nd : ((s6Step72Add0A++s6Step72Add0B)++(s6Step72Add1A++s6Step72Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step72F4_carry : s6Step72F4FlagArena.checkBorrow 1 [922]=some s6Step72Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step72F4FlagArena,s6Step72HeadFvAfter,arenaWires]
  · change s6Step72Add0Arena.live=(s6Step72HeadFvAfter.live∪{803})∪{922}
    apply hmrArena_union_pair_of_filter_check s6Step72HeadFvAfter s6Step72Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 803 922 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step72F4_distinct : (838::839::803::922::((s6Step72Add0A++s6Step72Add1A)++(s6Step72Add0B++s6Step72Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step72F4_flag : s6Step72HeadFvAfter.checkBorrow 1 [803]=some s6Step72F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step72HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step72F4_owned : (838::839::((s6Step72Add0A++s6Step72Add1A)++(s6Step72Add0B++s6Step72Add1B))).toFinset⊆s6Step72HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step72HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step72F4_checked : compileHmrHybridF4Log s6Step72HeadFvAfter 838 839 s6Step72Add0A s6Step72Add0B s6Step72Add1A s6Step72Add1B [803] [922] s6Step72Add0Work s6Step72Add1Work=some s6Step72F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step72HeadFvAfter s6Step72F4FlagArena s6Step72Add0Arena s6Step72Add0During s6Step72Add1During 838 839
    s6Step72Add0A s6Step72Add0B s6Step72Add1A s6Step72Add1B [803] [922] s6Step72Add0Work s6Step72Add1Work
    (fun q hq => s6Step72F4_owned (List.mem_toFinset.mpr hq)) s6Step72F4_flag s6Step72F4_carry
    s6Step72F4_distinct s6Step72F4_apart s6Step72Add0_checked s6Step72Add1_checked

private theorem s6Step72Front_branch : s6Step72FrontSigmaArena.checkBorrow 1 [839]=some s6Step72HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step72FrontSigmaArena,s6Step72EntryGvAfter,arenaWires]
  · change s6Step72HeadGBefore.live=(s6Step72EntryGvAfter.live∪{838})∪{839}
    apply hmrArena_union_pair_of_filter_check s6Step72EntryGvAfter s6Step72HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 838 839 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step72Front_entry : HmrFrontEntryValid s6Step72EntryFBefore s6Step72FrontBank 233 50 ⟨232,231,49,49⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step72FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step72EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step72EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(845,847),(848,849),(851,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step72FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step72Front_sigma : s6Step72EntryGvAfter.checkBorrow 1 [838]=some s6Step72FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step72EntryGvAfter,arenaWires]
  · rfl

private def s6Step72HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step72HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step72HeadFBefore : Arena := s6Step72HeadGAfter

private def s6Step72HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 854],795⟩

private def s6Step72HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 822],776⟩

private def s6Step72HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 841, 877],777⟩

private def s6Step72HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 898],775⟩

private theorem s6Step72HeadBank_incomingDistinct : ([s6Step72HeadGRow,s6Step72HeadFRow,s6Step72HeadGvRow,s6Step72HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step72HeadF_Incoming : rowsOwned s6Step72HeadFBefore [s6Step72HeadFRow,s6Step72HeadGvRow,s6Step72HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step72HeadGRow,s6Step72HeadFRow,s6Step72HeadGvRow,s6Step72HeadFvRow] 1 s6Step72HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step72HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step72HeadBank_outgoingOwned : rowsOwned s6Step72HeadFvAfter [s6Step72HeadGOut,s6Step72HeadFOut,s6Step72HeadGvOut,s6Step72HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step72HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step72HeadF_Outgoing : rowsOwned s6Step72HeadFvAfter [s6Step72HeadFOut,s6Step72HeadGvOut,s6Step72HeadFvOut] :=
  hmrRows_owned_drop s6Step72HeadFvAfter [s6Step72HeadGOut,s6Step72HeadFOut,s6Step72HeadGvOut,s6Step72HeadFvOut] 1 s6Step72HeadBank_outgoingOwned

private theorem s6Step72HeadF_distinct : (s6Step72HeadFRow.sign::s6Step72HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step72HeadF_owned : (s6Step72HeadFRow.sign::s6Step72HeadFRow.payload).toFinset⊆s6Step72HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step72HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step72HeadF_reserved : s6Step72HeadFBefore.reserve s6Step72HeadFFresh.toFinset=some s6Step72HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step72HeadFFresh,arenaWires]
  · norm_num [s6Step72HeadFBefore,s6Step72HeadGAfter,s6Step72HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step72HeadFBefore s6Step72HeadFAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step72HeadFFresh rfl rfl
    · norm_num [s6Step72HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step72HeadF_checked : planRowResizeLog s6Step72HeadFBefore s6Step72HeadFRow 234 s6Step72HeadFFresh=
    some (s6Step72HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 854, 843],795⟩,growRow 795 s6Step72HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step72HeadFBefore s6Step72HeadFAfter s6Step72HeadFRow 234 s6Step72HeadFFresh
    s6Step72HeadF_distinct s6Step72HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step72HeadF_reserved
  have rowEq : WindowRow.mk (s6Step72HeadFRow.payload++s6Step72HeadFFresh) s6Step72HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 854, 843],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step72HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step72HeadFvBefore : Arena := s6Step72HeadGvAfter

private theorem s6Step72HeadFv_Incoming : rowsOwned s6Step72HeadFvBefore [s6Step72HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step72HeadGRow,s6Step72HeadFRow,s6Step72HeadGvRow,s6Step72HeadFvRow] 3 s6Step72HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step72HeadFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step72HeadFv_Outgoing : rowsOwned s6Step72HeadFvAfter [s6Step72HeadFvOut] :=
  hmrRows_owned_drop s6Step72HeadFvAfter [s6Step72HeadGOut,s6Step72HeadFOut,s6Step72HeadGvOut,s6Step72HeadFvOut] 3 s6Step72HeadBank_outgoingOwned

private theorem s6Step72HeadFv_distinct : (s6Step72HeadFvRow.sign::s6Step72HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step72HeadFv_owned : (s6Step72HeadFvRow.sign::s6Step72HeadFvRow.payload).toFinset⊆s6Step72HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step72HeadFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step72HeadFv_reserved : s6Step72HeadFvBefore.reserve s6Step72HeadFvFresh.toFinset=some s6Step72HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step72HeadFvFresh,arenaWires]
  · norm_num [s6Step72HeadFvBefore,s6Step72HeadGvAfter,s6Step72HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step72HeadFvBefore s6Step72HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step72HeadFvFresh rfl rfl
    · norm_num [s6Step72HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step72HeadFv_checked : planRowResizeLog s6Step72HeadFvBefore s6Step72HeadFvRow 51 s6Step72HeadFvFresh=
    some (s6Step72HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 822, 855],776⟩,growRow 776 s6Step72HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step72HeadFvBefore s6Step72HeadFvAfter s6Step72HeadFvRow 51 s6Step72HeadFvFresh
    s6Step72HeadFv_distinct s6Step72HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step72HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step72HeadFvRow.payload++s6Step72HeadFvFresh) s6Step72HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 822, 855],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step72HeadG_Incoming : rowsOwned s6Step72HeadGBefore [s6Step72HeadGRow,s6Step72HeadFRow,s6Step72HeadGvRow,s6Step72HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step72HeadGRow,s6Step72HeadFRow,s6Step72HeadGvRow,s6Step72HeadFvRow] 0 s6Step72HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step72HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step72HeadG_Outgoing : rowsOwned s6Step72HeadFvAfter [s6Step72HeadGOut,s6Step72HeadFOut,s6Step72HeadGvOut,s6Step72HeadFvOut] :=
  hmrRows_owned_drop s6Step72HeadFvAfter [s6Step72HeadGOut,s6Step72HeadFOut,s6Step72HeadGvOut,s6Step72HeadFvOut] 0 s6Step72HeadBank_outgoingOwned

private theorem s6Step72HeadG_distinct : (s6Step72HeadGRow.sign::s6Step72HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step72HeadG_owned : (s6Step72HeadGRow.sign::s6Step72HeadGRow.payload).toFinset⊆s6Step72HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step72HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step72HeadG_reserved : s6Step72HeadGBefore.reserve s6Step72HeadGFresh.toFinset=some s6Step72HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step72HeadGFresh,arenaWires]
  · norm_num [s6Step72HeadGBefore,s6Step72HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step72HeadGBefore s6Step72HeadGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step72HeadGFresh rfl rfl
    · norm_num [s6Step72HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step72HeadG_checked : planRowResizeLog s6Step72HeadGBefore s6Step72HeadGRow 234 s6Step72HeadGFresh=
    some (s6Step72HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 841, 877, 869],777⟩,growRow 777 s6Step72HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step72HeadGBefore s6Step72HeadGAfter s6Step72HeadGRow 234 s6Step72HeadGFresh
    s6Step72HeadG_distinct s6Step72HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step72HeadG_reserved
  have rowEq : WindowRow.mk (s6Step72HeadGRow.payload++s6Step72HeadGFresh) s6Step72HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 841, 877, 869],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step72HeadGvBefore : Arena := s6Step72HeadFAfter

private theorem s6Step72HeadGv_Incoming : rowsOwned s6Step72HeadGvBefore [s6Step72HeadGvRow,s6Step72HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step72HeadGRow,s6Step72HeadFRow,s6Step72HeadGvRow,s6Step72HeadFvRow] 2 s6Step72HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step72HeadGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step72HeadGv_Outgoing : rowsOwned s6Step72HeadFvAfter [s6Step72HeadGvOut,s6Step72HeadFvOut] :=
  hmrRows_owned_drop s6Step72HeadFvAfter [s6Step72HeadGOut,s6Step72HeadFOut,s6Step72HeadGvOut,s6Step72HeadFvOut] 2 s6Step72HeadBank_outgoingOwned

private theorem s6Step72HeadGv_distinct : (s6Step72HeadGvRow.sign::s6Step72HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step72HeadGv_owned : (s6Step72HeadGvRow.sign::s6Step72HeadGvRow.payload).toFinset⊆s6Step72HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step72HeadGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step72HeadGv_reserved : s6Step72HeadGvBefore.reserve s6Step72HeadGvFresh.toFinset=some s6Step72HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step72HeadGvFresh,arenaWires]
  · norm_num [s6Step72HeadGvBefore,s6Step72HeadFAfter,s6Step72HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step72HeadGvBefore s6Step72HeadGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step72HeadGvFresh rfl rfl
    · norm_num [s6Step72HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step72HeadGv_checked : planRowResizeLog s6Step72HeadGvBefore s6Step72HeadGvRow 51 s6Step72HeadGvFresh=
    some (s6Step72HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 898, 780],775⟩,growRow 775 s6Step72HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step72HeadGvBefore s6Step72HeadGvAfter s6Step72HeadGvRow 51 s6Step72HeadGvFresh
    s6Step72HeadGv_distinct s6Step72HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step72HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step72HeadGvRow.payload++s6Step72HeadGvFresh) s6Step72HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 898, 780],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step72HeadBank_rows : planWindowRowsLog s6Step72HeadGBefore [(s6Step72HeadGRow,234),(s6Step72HeadFRow,234),(s6Step72HeadGvRow,51),(s6Step72HeadFvRow,51)] [s6Step72HeadGFresh,s6Step72HeadFFresh,s6Step72HeadGvFresh,s6Step72HeadFvFresh]=
    some (s6Step72HeadFvAfter,[s6Step72HeadGOut,s6Step72HeadFOut,s6Step72HeadGvOut,s6Step72HeadFvOut],(growRow 777 s6Step72HeadGFresh ++ (growRow 795 s6Step72HeadFFresh ++ (growRow 775 s6Step72HeadGvFresh ++ (growRow 776 s6Step72HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step72HeadFvAfter [] []=some (s6Step72HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step72HeadFvBefore s6Step72HeadFvAfter s6Step72HeadFvAfter
    s6Step72HeadFvRow s6Step72HeadFvOut 51 s6Step72HeadFvFresh [] [] []
    (growRow 776 s6Step72HeadFvFresh) ([]) s6Step72HeadFv_Incoming s6Step72HeadFv_checked h4 s6Step72HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step72HeadGvBefore s6Step72HeadGvAfter s6Step72HeadFvAfter
    s6Step72HeadGvRow s6Step72HeadGvOut 51 s6Step72HeadGvFresh [(s6Step72HeadFvRow,51)] [s6Step72HeadFvFresh] [s6Step72HeadFvOut]
    (growRow 775 s6Step72HeadGvFresh) ((growRow 776 s6Step72HeadFvFresh ++ [])) s6Step72HeadGv_Incoming s6Step72HeadGv_checked h3 s6Step72HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step72HeadFBefore s6Step72HeadFAfter s6Step72HeadFvAfter
    s6Step72HeadFRow s6Step72HeadFOut 234 s6Step72HeadFFresh [(s6Step72HeadGvRow,51),(s6Step72HeadFvRow,51)] [s6Step72HeadGvFresh,s6Step72HeadFvFresh] [s6Step72HeadGvOut,s6Step72HeadFvOut]
    (growRow 795 s6Step72HeadFFresh) ((growRow 775 s6Step72HeadGvFresh ++ (growRow 776 s6Step72HeadFvFresh ++ []))) s6Step72HeadF_Incoming s6Step72HeadF_checked h2 s6Step72HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step72HeadGBefore s6Step72HeadGAfter s6Step72HeadFvAfter
    s6Step72HeadGRow s6Step72HeadGOut 234 s6Step72HeadGFresh [(s6Step72HeadFRow,234),(s6Step72HeadGvRow,51),(s6Step72HeadFvRow,51)] [s6Step72HeadFFresh,s6Step72HeadGvFresh,s6Step72HeadFvFresh] [s6Step72HeadFOut,s6Step72HeadGvOut,s6Step72HeadFvOut]
    (growRow 777 s6Step72HeadGFresh) ((growRow 795 s6Step72HeadFFresh ++ (growRow 775 s6Step72HeadGvFresh ++ (growRow 776 s6Step72HeadFvFresh ++ [])))) s6Step72HeadG_Incoming s6Step72HeadG_checked h1 s6Step72HeadG_Outgoing
  exact h0

private theorem s6Step72HeadBank_checked : compileHmrBankResizeLog .headroom s6Step72HeadGBefore ⟨s6Step72HeadFRow,s6Step72HeadGRow,s6Step72HeadFvRow,s6Step72HeadGvRow⟩ ⟨234,234,51,51⟩ [s6Step72HeadGFresh,s6Step72HeadFFresh,s6Step72HeadGvFresh,s6Step72HeadFvFresh]=
    some (s6Step72HeadFvAfter,⟨s6Step72HeadFOut,s6Step72HeadGOut,s6Step72HeadFvOut,s6Step72HeadGvOut⟩,(growRow 777 s6Step72HeadGFresh ++ (growRow 795 s6Step72HeadFFresh ++ (growRow 775 s6Step72HeadGvFresh ++ (growRow 776 s6Step72HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step72HeadBank_rows]
  rfl

private theorem s6Step72Front_checked : compileHmrSourceFrontLog s6Step72EntryFBefore s6Step72FrontBank 233 50 ⟨232,231,49,49⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step72FrontLog=some s6Step72FrontPlan := by
  have pairEq : s6Step72FrontPair=⟨s6Step72HeadFRow,s6Step72HeadGRow,s6Step72HeadFvRow,s6Step72HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step72FrontHead=⟨s6Step72ExitFRow,s6Step72ExitGRow,s6Step72ExitFvRow,s6Step72ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step72Add0A=s6Step72FrontHead.f.wires := by decide +kernel
  have gEq : s6Step72Add0B=s6Step72FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step72Add1A=s6Step72FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step72Add1B=s6Step72FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step72EntryFBefore s6Step72FrontBank 233 50 ⟨232,231,49,49⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step72FrontLog s6Step72FrontPlan
  · exact s6Step72Front_entry
  · exact s6Step72EntryBank_checked
  · exact s6Step72Front_sigma
  · rfl
  · exact s6Step72Front_branch
  · rfl
  · simpa only [s6Step72FrontPlan,pairEq] using s6Step72HeadBank_checked
  · simpa only [s6Step72FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step72F4_checked
  · exact s6Step72Counter_checked
  · rfl
  · simpa only [s6Step72FrontPlan,headEq] using s6Step72ExitBank_checked

private theorem s6Step72Complete_explicit_checked : compileHmrEarlyStepLog s6Step72EntryFBefore s6Step72FrontBank 233 50 ⟨232,231,49,49⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step72CompleteLog=some s6Step72CompletePlan := by
  let Q := s6Step72EarlyControlPlan
  have hq := s6Step72EarlyControl_plan_checked
  have fv1 : s6Step72CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step72CompleteOut.fv.payload[2]?.getD s6Step72CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step72CompleteOut.fv.payload[3]?.getD s6Step72CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step72CompleteOut.fv.payload[4]?.getD s6Step72CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step72EntryFBefore s6Step72EarlyControlArena s6Step72FrontBank 233 50 ⟨232,231,49,49⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step72CompleteLog s6Step72FrontPlan Q
    s6Step72Front_checked s6Step72Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step72Complete_owned s6Step72Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step72EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 838 s6Step72CompleteOut.fv.second (s6Step72CompleteOut.fv.payload[2]?.getD s6Step72CompleteOut.fv.sign) (s6Step72CompleteOut.fv.payload[3]?.getD s6Step72CompleteOut.fv.sign) (s6Step72CompleteOut.fv.payload[4]?.getD s6Step72CompleteOut.fv.sign) 839 30 s6Step72EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep72Arena : Arena := s6Step72EntryFBefore
def s6PrivateStep72Bank : WindowBank := s6Step72FrontBank
def s6PrivateStep72Spec : HmrSourceWalkStepLog := ⟨233,50,⟨232,231,49,49⟩,30,.early s6Step72CompleteLog⟩
def s6PrivateStep72Plan : HmrSourceStepPlan := .early s6Step72CompletePlan
theorem s6PrivateStep72_source : s6PrivateStep72Spec=s6ObservedLogs64[8] := rfl
theorem s6PrivateStep72_checked : compileHmrSourceStepLog s6PrivateStep72Arena s6PrivateStep72Bank
    s6PrivateStep72Spec.fgWidth s6PrivateStep72Spec.vWidth s6PrivateStep72Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902]
    6 498 72 s6PrivateStep72Spec.need none s6PrivateStep72Spec.log=some s6PrivateStep72Plan := by
  change compileHmrSourceStepLog s6Step72EntryFBefore s6Step72FrontBank 233 50 ⟨232,231,49,49⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 6 498 72 30 none (.early s6Step72CompleteLog)=some (.early s6Step72CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 72<498)]
  rw [s6Step72Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
