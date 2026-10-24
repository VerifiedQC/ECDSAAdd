import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep65
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

private def s6Step67CompleteMoves : List (Wire × Wire) := [(830,234)]

private def s6Step67EarlyControlLog : HmrEarlyControlLog := ⟨[830, 822, 821, 838, 869],[843],[780],[855, 803, 922, 879, 784, 891],[]⟩

private def s6Step67FrontLog : HmrFrontAllocationLog := ⟨⟨[[838], [], [], [814]],[[843], [869], [822], [821]],[[], [], [], []]⟩,[854],[877],[780],[855],[803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920],[780, 855, 803, 922]⟩

private def s6Step67CompleteLog : HmrEarlyStepLog := ⟨s6Step67FrontLog,s6Step67CompleteMoves,s6Step67EarlyControlLog⟩

private def s6Step67ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489],795⟩

private def s6Step67ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875],776⟩

private def s6Step67ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233],777⟩

private def s6Step67ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814],775⟩

private def s6Step67FrontOut : WindowBank := ⟨s6Step67ExitFOut,s6Step67ExitGOut,s6Step67ExitFvOut,s6Step67ExitGvOut⟩

private def s6Step67CompleteOut : WindowBank := s6Step67FrontOut.repacked s6Step67CompleteMoves

private def s6Step67EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step67EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step67EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step67EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step67EarlyControlPositiveArena,[843],s6Step67EarlyControlEqualityArena,[780],⟨⟨854,false⟩,[⟨⟨843,false⟩,780⟩]⟩⟩

private def s6Step67EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step67EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step67EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step67EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step67EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step67EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step67EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,830⟩,⟨⟨772,false⟩,822⟩,⟨⟨771,false⟩,821⟩,⟨⟨770,false⟩,838⟩,⟨⟨769,false⟩,869⟩]⟩

private def s6Step67EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step67EarlyControlZeroArena,s6Step67EarlyControlZeroPlan,s6Step67EarlyControlClassPlan,s6Step67EarlyControlFlagArena,s6Step67EarlyControlFittedArena,s6Step67EarlyControlHistoryArena,s6Step67EarlyControlSigmaArena,s6Step67EarlyControlOutputArena,s6Step67EarlyControlLog⟩

private def s6Step67CounterWork : List Wire := [780, 855, 803, 922]

private theorem s6Step67Counter_bounded : s6Step67CounterWork.toFinset⊆arenaWires := by norm_num [s6Step67CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step67HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step67CounterDuring : Arena := ⟨s6Step67HeadFvAfter.live∪s6Step67CounterWork.toFinset,Finset.union_subset s6Step67HeadFvAfter.bounded s6Step67Counter_bounded⟩

private def s6Step67EntryFFresh : List Wire := [838]

private def s6Step67EntryFvFresh : List Wire := []

private def s6Step67EntryGFresh : List Wire := []

private def s6Step67EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step67EntryGvFresh : List Wire := [814]

private def s6Step67ExitFExtra : List Wire := [838, 869]

private def s6Step67ExitFvExtra : List Wire := [821]

private def s6Step67ExitGExtra : List Wire := [234, 843]

private def s6Step67ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,234),(235,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step67ExitGvExtra : List Wire := [822]

private def s6Step67Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step67Add0Work : List Wire := [803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step67Add0_bounded : s6Step67Add0Work.toFinset⊆arenaWires := by
  have h : s6Step67Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step67Add0During : Arena := ⟨s6Step67Add0Arena.live∪s6Step67Add0Work.toFinset,Finset.union_subset s6Step67Add0Arena.bounded s6Step67Add0_bounded⟩

private def s6Step67Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step67Add1Work : List Wire := [803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920]

private theorem s6Step67Add1_bounded : s6Step67Add1Work.toFinset⊆arenaWires := by
  have h : s6Step67Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step67Add1During : Arena := ⟨s6Step67Add1Arena.live∪s6Step67Add1Work.toFinset,Finset.union_subset s6Step67Add1Arena.bounded s6Step67Add1_bounded⟩

private def s6Step67F4FlagArena : Arena := ⟨s6Step67HeadFvAfter.live∪{780},Finset.union_subset s6Step67HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step67F4Plan : HmrHybridF4Plan := ⟨s6Step67F4FlagArena,[780],s6Step67Add0Arena,[855],s6Step67Add0During,s6Step67Add0Work,s6Step67Add1During,s6Step67Add1Work⟩

private def s6Step67HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 838, 869],795⟩

private def s6Step67HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 821],776⟩

private def s6Step67HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 843],777⟩

private def s6Step67HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 822],775⟩

private def s6Step67FrontHead : WindowBank := ⟨s6Step67HeadFOut,s6Step67HeadGOut,s6Step67HeadFvOut,s6Step67HeadGvOut⟩

private def s6Step67EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 838],795⟩

private def s6Step67EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875],776⟩

private def s6Step67EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234],777⟩

private def s6Step67EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814],775⟩

private def s6Step67FrontPair : WindowBank := ⟨s6Step67EntryFOut,s6Step67EntryGOut,s6Step67EntryFvOut,s6Step67EntryGvOut⟩

private def s6Step67FrontSigmaArena : Arena := ⟨s6Step67EntryGvAfter.live∪{854},Finset.union_subset s6Step67EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step67HeadFFresh : List Wire := [869]

private def s6Step67HeadFvFresh : List Wire := [821]

private def s6Step67HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step67HeadGFresh : List Wire := [843]

private def s6Step67HeadGvFresh : List Wire := [822]

private def s6Step67FrontPlan : HmrSourceFront := ⟨s6Step67EntryGvAfter,s6Step67FrontPair,(growRow 795 s6Step67EntryFFresh ++ (growRow 777 s6Step67EntryGFresh ++ (growRow 776 s6Step67EntryFvFresh ++ (growRow 775 s6Step67EntryGvFresh ++ [])))),s6Step67FrontSigmaArena,[854],s6Step67HeadGBefore,[877],
  s6Step67HeadFvAfter,s6Step67FrontHead,(growRow 777 s6Step67HeadGFresh ++ (growRow 795 s6Step67HeadFFresh ++ (growRow 775 s6Step67HeadGvFresh ++ (growRow 776 s6Step67HeadFvFresh ++ [])))),s6Step67F4Plan,s6Step67CounterDuring,s6Step67CounterWork,s6Step67ExitGvAfter,s6Step67FrontOut,(shrinkRow 777 s6Step67ExitGExtra ++ (shrinkRow 795 s6Step67ExitFExtra ++ (shrinkRow 776 s6Step67ExitFvExtra ++ (shrinkRow 775 s6Step67ExitGvExtra ++ []))))⟩

private def s6Step67CompletePlan : HmrEarlyStepPlan := ⟨s6Step67FrontPlan,s6Step67EarlyControlArena,s6Step67EarlyControlPlan,s6Step67CompleteMoves⟩

private theorem s6Step67Complete_apart : List.Disjoint (s6Step67CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [854, 877, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] := by
  have nd : ((s6Step67CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[854, 877, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step67Complete_owned : (s6Step67CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step67EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step67EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step67CompleteRelocationMove0Borrowed : Arena := ⟨s6Step67ExitGvAfter.live∪{234},Finset.union_subset s6Step67ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step67CompleteRelocation_move0_owned : 830∈s6Step67ExitGvAfter.live := by norm_num [s6Step67ExitGvAfter,arenaWires]

private theorem s6Step67CompleteRelocation_move0_reserve : s6Step67ExitGvAfter.reserve {234}=some s6Step67CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step67ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step67CompleteRelocation_move0_retire : s6Step67CompleteRelocationMove0Borrowed.retireSet {830}=s6Step67EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step67CompleteRelocationMove0Borrowed s6Step67EarlyControlArena {830}
  change s6Step67EarlyControlArena.live=(s6Step67ExitGvAfter.live∪{234})\{830}
  apply hmrArena_update_of_filter_check s6Step67ExitGvAfter s6Step67EarlyControlArena (fun q => ([(0,234),(235,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [234] [830] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step67CompleteRelocation_checked : s6Step67ExitGvAfter.checkRepack [(830,234)]=some s6Step67EarlyControlArena := by
  have tail1 : s6Step67EarlyControlArena.checkRepack []=some s6Step67EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step67ExitGvAfter s6Step67CompleteRelocationMove0Borrowed s6Step67EarlyControlArena s6Step67EarlyControlArena 830 234 []
    s6Step67CompleteRelocation_move0_owned s6Step67CompleteRelocation_move0_reserve s6Step67CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step67Complete_repack : s6Step67ExitGvAfter.checkRepack s6Step67CompleteMoves=some s6Step67EarlyControlArena := by
  simpa only [s6Step67CompleteMoves] using s6Step67CompleteRelocation_checked

private theorem s6Step67EarlyControl_branchOwned : ([877] : List Wire).toFinset⊆s6Step67EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step67EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step67EarlyControl_branch : compileHmrBranchRetirement s6Step67EarlyControlSigmaArena 877=some s6Step67EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step67EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step67EarlyControlSigmaArena s6Step67EarlyControlOutputArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [877] rfl rfl
    decide +kernel

private theorem s6Step67EarlyControl_classEqualityBorrow : s6Step67EarlyControlPositiveArena.checkBorrow (([854, 843] : List Wire).length-1) s6Step67EarlyControlLog.classWork=some s6Step67EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step67EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step67EarlyControlPositiveArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step67EarlyControlPositiveArena s6Step67EarlyControlEqualityArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step67EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step67EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step67EarlyControl_classEqualityOwned : ([854, 843] : List Wire).toFinset⊆s6Step67EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step67EarlyControlPositiveArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step67EarlyControl_classEquality : compileHmrEqualityLog s6Step67EarlyControlPositiveArena [854, 843] 0 s6Step67EarlyControlLog.classWork=some (s6Step67EarlyControlEqualityArena,s6Step67EarlyControlLog.classWork,s6Step67EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step67EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step67EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step67EarlyControl_classOwned : ([769, 869, 854] : List Wire).toFinset⊆s6Step67EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step67EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step67EarlyControl_positiveBorrow : s6Step67EarlyControlZeroArena.checkBorrow (1) s6Step67EarlyControlLog.positiveWork=some s6Step67EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step67EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step67EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step67EarlyControlZeroArena s6Step67EarlyControlPositiveArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step67EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step67EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step67EarlyControl_class : compileHmrSourceClassLog s6Step67EarlyControlZeroArena false 769 s6Step67EarlyControlZeroPlan.top 0 854 s6Step67EarlyControlLog.positiveWork s6Step67EarlyControlLog.classWork=some s6Step67EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step67EarlyControlClassPlan s6Step67EarlyControlZeroArena false 769 s6Step67EarlyControlZeroPlan.top 0 854
  constructor
  · decide +kernel
  · exact s6Step67EarlyControl_classOwned
  · exact s6Step67EarlyControl_positiveBorrow
  · exact s6Step67EarlyControl_classEquality

private theorem s6Step67EarlyControl_entryRecordOwned : ([877, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step67EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step67EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step67EarlyControl_entrySigmaOwned : ([854, 254] : List Wire).toFinset⊆s6Step67EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step67EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step67EarlyControl_fitBorrow : s6Step67EarlyControlFlagArena.checkBorrow ((30-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).length)) s6Step67EarlyControlLog.recordFresh=some s6Step67EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step67EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step67EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step67EarlyControlFittedArena,s6Step67EarlyControlFlagArena,s6Step67EarlyControlLog,arenaWires]

private theorem s6Step67EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step67EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step67EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step67EarlyControl_fit : compileHmrRecordGrowLog s6Step67EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step67EarlyControlLog.recordFresh=some s6Step67EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step67EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step67EarlyControl_fitBorrow

private theorem s6Step67EarlyControl_flagsBorrow : s6Step67EarlyControlEqualityArena.checkBorrow (6) s6Step67EarlyControlLog.flagWork=some s6Step67EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step67EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step67EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step67EarlyControlEqualityArena s6Step67EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step67EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step67EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step67EarlyControl_flagsOwned : ([780, 253, 252, 251] : List Wire).toFinset⊆s6Step67EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step67EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step67EarlyControl_flags : compileHmrFlagsLog s6Step67EarlyControlClassPlan.equalityArena s6Step67EarlyControlClassPlan.equality.top 253 252 251 s6Step67EarlyControlLog.flagWork=some s6Step67EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step67EarlyControl_flagsOwned⟩
  · exact s6Step67EarlyControl_flagsBorrow

private theorem s6Step67EarlyControl_historyBorrow : s6Step67EarlyControlArena.checkBorrow ((30-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).length)) s6Step67EarlyControlLog.recordFresh=some s6Step67EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step67EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step67EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step67EarlyControlArena s6Step67EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step67EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step67EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step67EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step67EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step67EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step67EarlyControl_history : compileHmrRecordGrowLog s6Step67EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step67EarlyControlLog.recordFresh=some s6Step67EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step67EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step67EarlyControl_historyBorrow

private theorem s6Step67EarlyControl_sigmaOwned : ([254, 854] : List Wire).toFinset⊆s6Step67EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step67EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step67EarlyControl_sigmaReleaseOwned : ([854] : List Wire).toFinset⊆s6Step67EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step67EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step67EarlyControl_sigmaRelease : s6Step67EarlyControlHistoryArena.release {854} (fun _ => false)=some s6Step67EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step67EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step67EarlyControlHistoryArena s6Step67EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [854] rfl rfl
    decide +kernel

private theorem s6Step67EarlyControl_sigma : compileHmrSigmaDropLog s6Step67EarlyControlHistoryArena false 0 0 254 854 []=some s6Step67EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step67EarlyControl_sigmaOwned⟩
  · exact s6Step67EarlyControl_sigmaRelease

private theorem s6Step67EarlyControl_zeroBorrow : s6Step67EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step67EarlyControlLog.zeroWork=some s6Step67EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step67EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step67EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step67EarlyControlArena s6Step67EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step67EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step67EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step67EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step67EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step67EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step67EarlyControl_zero : compileHmrEqualityLog s6Step67EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step67EarlyControlLog.zeroWork=some (s6Step67EarlyControlZeroArena,s6Step67EarlyControlLog.zeroWork,s6Step67EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step67EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step67EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step67EarlyControl_logged : s6Step67EarlyControlPlan.Logged s6Step67EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 854 254 253 252 251 877 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step67EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step67EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step67EarlyControl_zero
  · exact s6Step67EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step67EarlyControl_flags
  · exact s6Step67EarlyControl_fit
  · exact s6Step67EarlyControl_history
  · exact s6Step67EarlyControl_sigma
  · exact s6Step67EarlyControl_branch

private theorem s6Step67EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step67EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 854 254 253 252 251 877 30 s6Step67EarlyControlLog=some s6Step67EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step67EarlyControlPlan s6Step67EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 854 254 253 252 251 877 30 s6Step67EarlyControl_logged

private def s6Step67EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step67EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489],795⟩

private def s6Step67EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875],776⟩

private def s6Step67EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234],777⟩

private def s6Step67EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888],775⟩

private def s6Step67FrontBank : WindowBank := ⟨s6Step67EntryFRow,s6Step67EntryGRow,s6Step67EntryFvRow,s6Step67EntryGvRow⟩

private def s6Step67Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 838, 869, 795]

private def s6Step67Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 843, 777]

private def s6Step67Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 821, 776]

private def s6Step67Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 822, 775]

private theorem s6Step67Counter_apart : Disjoint s6Step67HeadFvAfter.live s6Step67CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step67HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step67Counter_borrowed : s6Step67HeadFvAfter.checkBorrow 4 s6Step67CounterWork=some s6Step67CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step67HeadFvAfter s6Step67CounterDuring s6Step67CounterWork.toFinset s6Step67Counter_bounded s6Step67Counter_apart rfl

private theorem s6Step67Counter_owned : (854::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step67HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step67HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step67Counter_checked : compileHmrCounterStepLog s6Step67HeadFvAfter true 854 [774, 773, 772, 771, 770, 769] s6Step67CounterWork=some s6Step67CounterDuring := by
  have owned : ∀q∈854::[774, 773, 772, 771, 770, 769],q∈s6Step67HeadFvAfter.live := fun q hq => s6Step67Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step67Counter_borrowed

private def s6Step67EntryFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step67EntryBank_incomingDistinct : ([s6Step67EntryFRow,s6Step67EntryGRow,s6Step67EntryFvRow,s6Step67EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step67EntryF_Incoming : rowsOwned s6Step67EntryFBefore [s6Step67EntryFRow,s6Step67EntryGRow,s6Step67EntryFvRow,s6Step67EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step67EntryFRow,s6Step67EntryGRow,s6Step67EntryFvRow,s6Step67EntryGvRow] 0 s6Step67EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step67EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step67EntryBank_outgoingOwned : rowsOwned s6Step67EntryGvAfter [s6Step67EntryFOut,s6Step67EntryGOut,s6Step67EntryFvOut,s6Step67EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step67EntryGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step67EntryF_Outgoing : rowsOwned s6Step67EntryGvAfter [s6Step67EntryFOut,s6Step67EntryGOut,s6Step67EntryFvOut,s6Step67EntryGvOut] :=
  hmrRows_owned_drop s6Step67EntryGvAfter [s6Step67EntryFOut,s6Step67EntryGOut,s6Step67EntryFvOut,s6Step67EntryGvOut] 0 s6Step67EntryBank_outgoingOwned

private theorem s6Step67EntryF_distinct : (s6Step67EntryFRow.sign::s6Step67EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step67EntryF_owned : (s6Step67EntryFRow.sign::s6Step67EntryFRow.payload).toFinset⊆s6Step67EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step67EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step67EntryF_reserved : s6Step67EntryFBefore.reserve s6Step67EntryFFresh.toFinset=some s6Step67EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step67EntryFFresh,arenaWires]
  · norm_num [s6Step67EntryFBefore,s6Step67EntryFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step67EntryFBefore s6Step67EntryFAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step67EntryFFresh rfl rfl
    · norm_num [s6Step67EntryFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step67EntryF_checked : planRowResizeLog s6Step67EntryFBefore s6Step67EntryFRow 235 s6Step67EntryFFresh=
    some (s6Step67EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 838],795⟩,growRow 795 s6Step67EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step67EntryFBefore s6Step67EntryFAfter s6Step67EntryFRow 235 s6Step67EntryFFresh
    s6Step67EntryF_distinct s6Step67EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step67EntryF_reserved
  have rowEq : WindowRow.mk (s6Step67EntryFRow.payload++s6Step67EntryFFresh) s6Step67EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 838],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step67EntryFvAfter : Arena := s6Step67EntryFAfter

private def s6Step67EntryFvBefore : Arena := s6Step67EntryFAfter

private theorem s6Step67EntryFv_Incoming : rowsOwned s6Step67EntryFvBefore [s6Step67EntryFvRow,s6Step67EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step67EntryFRow,s6Step67EntryGRow,s6Step67EntryFvRow,s6Step67EntryGvRow] 2 s6Step67EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step67EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step67EntryFv_Outgoing : rowsOwned s6Step67EntryGvAfter [s6Step67EntryFvOut,s6Step67EntryGvOut] :=
  hmrRows_owned_drop s6Step67EntryGvAfter [s6Step67EntryFOut,s6Step67EntryGOut,s6Step67EntryFvOut,s6Step67EntryGvOut] 2 s6Step67EntryBank_outgoingOwned

private theorem s6Step67EntryFv_distinct : (s6Step67EntryFvRow.sign::s6Step67EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step67EntryFv_owned : (s6Step67EntryFvRow.sign::s6Step67EntryFvRow.payload).toFinset⊆s6Step67EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step67EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step67EntryFv_reserved : s6Step67EntryFvBefore.reserve s6Step67EntryFvFresh.toFinset=some s6Step67EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step67EntryFvFresh,arenaWires]
  · norm_num [s6Step67EntryFvBefore,s6Step67EntryFAfter,s6Step67EntryFvFresh,arenaWires]
  · simp only [s6Step67EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step67EntryFv_checked : planRowResizeLog s6Step67EntryFvBefore s6Step67EntryFvRow 47 s6Step67EntryFvFresh=
    some (s6Step67EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875],776⟩,growRow 776 s6Step67EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step67EntryFvBefore s6Step67EntryFvAfter s6Step67EntryFvRow 47 s6Step67EntryFvFresh
    s6Step67EntryFv_distinct s6Step67EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step67EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step67EntryFvRow.payload++s6Step67EntryFvFresh) s6Step67EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step67EntryGAfter : Arena := s6Step67EntryFAfter

private def s6Step67EntryGBefore : Arena := s6Step67EntryFAfter

private theorem s6Step67EntryG_Incoming : rowsOwned s6Step67EntryGBefore [s6Step67EntryGRow,s6Step67EntryFvRow,s6Step67EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step67EntryFRow,s6Step67EntryGRow,s6Step67EntryFvRow,s6Step67EntryGvRow] 1 s6Step67EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step67EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step67EntryG_Outgoing : rowsOwned s6Step67EntryGvAfter [s6Step67EntryGOut,s6Step67EntryFvOut,s6Step67EntryGvOut] :=
  hmrRows_owned_drop s6Step67EntryGvAfter [s6Step67EntryFOut,s6Step67EntryGOut,s6Step67EntryFvOut,s6Step67EntryGvOut] 1 s6Step67EntryBank_outgoingOwned

private theorem s6Step67EntryG_distinct : (s6Step67EntryGRow.sign::s6Step67EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step67EntryG_owned : (s6Step67EntryGRow.sign::s6Step67EntryGRow.payload).toFinset⊆s6Step67EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step67EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step67EntryG_reserved : s6Step67EntryGBefore.reserve s6Step67EntryGFresh.toFinset=some s6Step67EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step67EntryGFresh,arenaWires]
  · norm_num [s6Step67EntryGBefore,s6Step67EntryFAfter,s6Step67EntryGFresh,arenaWires]
  · simp only [s6Step67EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step67EntryG_checked : planRowResizeLog s6Step67EntryGBefore s6Step67EntryGRow 235 s6Step67EntryGFresh=
    some (s6Step67EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234],777⟩,growRow 777 s6Step67EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step67EntryGBefore s6Step67EntryGAfter s6Step67EntryGRow 235 s6Step67EntryGFresh
    s6Step67EntryG_distinct s6Step67EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step67EntryG_reserved
  have rowEq : WindowRow.mk (s6Step67EntryGRow.payload++s6Step67EntryGFresh) s6Step67EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step67EntryGvBefore : Arena := s6Step67EntryFAfter

private theorem s6Step67EntryGv_Incoming : rowsOwned s6Step67EntryGvBefore [s6Step67EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step67EntryFRow,s6Step67EntryGRow,s6Step67EntryFvRow,s6Step67EntryGvRow] 3 s6Step67EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step67EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step67EntryGv_Outgoing : rowsOwned s6Step67EntryGvAfter [s6Step67EntryGvOut] :=
  hmrRows_owned_drop s6Step67EntryGvAfter [s6Step67EntryFOut,s6Step67EntryGOut,s6Step67EntryFvOut,s6Step67EntryGvOut] 3 s6Step67EntryBank_outgoingOwned

private theorem s6Step67EntryGv_distinct : (s6Step67EntryGvRow.sign::s6Step67EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step67EntryGv_owned : (s6Step67EntryGvRow.sign::s6Step67EntryGvRow.payload).toFinset⊆s6Step67EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step67EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step67EntryGv_reserved : s6Step67EntryGvBefore.reserve s6Step67EntryGvFresh.toFinset=some s6Step67EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step67EntryGvFresh,arenaWires]
  · norm_num [s6Step67EntryGvBefore,s6Step67EntryFAfter,s6Step67EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step67EntryGvBefore s6Step67EntryGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step67EntryGvFresh rfl rfl
    · norm_num [s6Step67EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step67EntryGv_checked : planRowResizeLog s6Step67EntryGvBefore s6Step67EntryGvRow 47 s6Step67EntryGvFresh=
    some (s6Step67EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814],775⟩,growRow 775 s6Step67EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step67EntryGvBefore s6Step67EntryGvAfter s6Step67EntryGvRow 47 s6Step67EntryGvFresh
    s6Step67EntryGv_distinct s6Step67EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step67EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step67EntryGvRow.payload++s6Step67EntryGvFresh) s6Step67EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step67EntryBank_rows : planWindowRowsLog s6Step67EntryFBefore [(s6Step67EntryFRow,235),(s6Step67EntryGRow,235),(s6Step67EntryFvRow,47),(s6Step67EntryGvRow,47)] [s6Step67EntryFFresh,s6Step67EntryGFresh,s6Step67EntryFvFresh,s6Step67EntryGvFresh]=
    some (s6Step67EntryGvAfter,[s6Step67EntryFOut,s6Step67EntryGOut,s6Step67EntryFvOut,s6Step67EntryGvOut],(growRow 795 s6Step67EntryFFresh ++ (growRow 777 s6Step67EntryGFresh ++ (growRow 776 s6Step67EntryFvFresh ++ (growRow 775 s6Step67EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step67EntryGvAfter [] []=some (s6Step67EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step67EntryGvBefore s6Step67EntryGvAfter s6Step67EntryGvAfter
    s6Step67EntryGvRow s6Step67EntryGvOut 47 s6Step67EntryGvFresh [] [] []
    (growRow 775 s6Step67EntryGvFresh) ([]) s6Step67EntryGv_Incoming s6Step67EntryGv_checked h4 s6Step67EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step67EntryFvBefore s6Step67EntryFvAfter s6Step67EntryGvAfter
    s6Step67EntryFvRow s6Step67EntryFvOut 47 s6Step67EntryFvFresh [(s6Step67EntryGvRow,47)] [s6Step67EntryGvFresh] [s6Step67EntryGvOut]
    (growRow 776 s6Step67EntryFvFresh) ((growRow 775 s6Step67EntryGvFresh ++ [])) s6Step67EntryFv_Incoming s6Step67EntryFv_checked h3 s6Step67EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step67EntryGBefore s6Step67EntryGAfter s6Step67EntryGvAfter
    s6Step67EntryGRow s6Step67EntryGOut 235 s6Step67EntryGFresh [(s6Step67EntryFvRow,47),(s6Step67EntryGvRow,47)] [s6Step67EntryFvFresh,s6Step67EntryGvFresh] [s6Step67EntryFvOut,s6Step67EntryGvOut]
    (growRow 777 s6Step67EntryGFresh) ((growRow 776 s6Step67EntryFvFresh ++ (growRow 775 s6Step67EntryGvFresh ++ []))) s6Step67EntryG_Incoming s6Step67EntryG_checked h2 s6Step67EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step67EntryFBefore s6Step67EntryFAfter s6Step67EntryGvAfter
    s6Step67EntryFRow s6Step67EntryFOut 235 s6Step67EntryFFresh [(s6Step67EntryGRow,235),(s6Step67EntryFvRow,47),(s6Step67EntryGvRow,47)] [s6Step67EntryGFresh,s6Step67EntryFvFresh,s6Step67EntryGvFresh] [s6Step67EntryGOut,s6Step67EntryFvOut,s6Step67EntryGvOut]
    (growRow 795 s6Step67EntryFFresh) ((growRow 777 s6Step67EntryGFresh ++ (growRow 776 s6Step67EntryFvFresh ++ (growRow 775 s6Step67EntryGvFresh ++ [])))) s6Step67EntryF_Incoming s6Step67EntryF_checked h1 s6Step67EntryF_Outgoing
  exact h0

private theorem s6Step67EntryBank_checked : compileHmrBankResizeLog .entry s6Step67EntryFBefore ⟨s6Step67EntryFRow,s6Step67EntryGRow,s6Step67EntryFvRow,s6Step67EntryGvRow⟩ ⟨235,235,47,47⟩ [s6Step67EntryFFresh,s6Step67EntryGFresh,s6Step67EntryFvFresh,s6Step67EntryGvFresh]=
    some (s6Step67EntryGvAfter,⟨s6Step67EntryFOut,s6Step67EntryGOut,s6Step67EntryFvOut,s6Step67EntryGvOut⟩,(growRow 795 s6Step67EntryFFresh ++ (growRow 777 s6Step67EntryGFresh ++ (growRow 776 s6Step67EntryFvFresh ++ (growRow 775 s6Step67EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step67EntryBank_rows]
  rfl

private def s6Step67ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,234),(235,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step67ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,234),(235,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step67ExitFBefore : Arena := s6Step67ExitGAfter

private def s6Step67ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 838, 869],795⟩

private def s6Step67ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 821],776⟩

private def s6Step67ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 843],777⟩

private def s6Step67ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 822],775⟩

private theorem s6Step67ExitBank_incomingDistinct : ([s6Step67ExitGRow,s6Step67ExitFRow,s6Step67ExitFvRow,s6Step67ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step67ExitF_Incoming : rowsOwned s6Step67ExitFBefore [s6Step67ExitFRow,s6Step67ExitFvRow,s6Step67ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step67ExitGRow,s6Step67ExitFRow,s6Step67ExitFvRow,s6Step67ExitGvRow] 1 s6Step67ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step67ExitFBefore (fun q => ([(0,234),(235,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step67ExitBank_outgoingOwned : rowsOwned s6Step67ExitGvAfter [s6Step67ExitGOut,s6Step67ExitFOut,s6Step67ExitFvOut,s6Step67ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step67ExitGvAfter (fun q => ([(0,234),(235,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step67ExitF_Outgoing : rowsOwned s6Step67ExitGvAfter [s6Step67ExitFOut,s6Step67ExitFvOut,s6Step67ExitGvOut] :=
  hmrRows_owned_drop s6Step67ExitGvAfter [s6Step67ExitGOut,s6Step67ExitFOut,s6Step67ExitFvOut,s6Step67ExitGvOut] 1 s6Step67ExitBank_outgoingOwned

private theorem s6Step67ExitF_distinct : (s6Step67ExitFRow.sign::s6Step67ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step67ExitF_owned : (s6Step67ExitFRow.sign::s6Step67ExitFRow.payload).toFinset⊆s6Step67ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step67ExitFBefore (fun q => ([(0,234),(235,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step67ExitF_retired : s6Step67ExitFBefore.retireSet s6Step67ExitFExtra.toFinset=s6Step67ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step67ExitFBefore s6Step67ExitFAfter s6Step67ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step67ExitFBefore s6Step67ExitFAfter (fun q => ([(0,234),(235,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,234),(235,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step67ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step67ExitF_checked : planRowResizeLog s6Step67ExitFBefore s6Step67ExitFRow 234 []=
    some (s6Step67ExitFAfter,s6Step67ExitFOut,shrinkRow 795 s6Step67ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step67ExitFBefore s6Step67ExitFRow 234 s6Step67ExitF_distinct s6Step67ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step67ExitFRow.payload.take 234) s6Step67ExitFRow.sign=s6Step67ExitFOut := by decide +kernel
  have hi : s6Step67ExitFRow.payload.drop 234=s6Step67ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step67ExitF_retired] at result
  exact result

private def s6Step67ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,234),(235,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step67ExitFvBefore : Arena := s6Step67ExitFAfter

private theorem s6Step67ExitFv_Incoming : rowsOwned s6Step67ExitFvBefore [s6Step67ExitFvRow,s6Step67ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step67ExitGRow,s6Step67ExitFRow,s6Step67ExitFvRow,s6Step67ExitGvRow] 2 s6Step67ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step67ExitFvBefore (fun q => ([(0,234),(235,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step67ExitFv_Outgoing : rowsOwned s6Step67ExitGvAfter [s6Step67ExitFvOut,s6Step67ExitGvOut] :=
  hmrRows_owned_drop s6Step67ExitGvAfter [s6Step67ExitGOut,s6Step67ExitFOut,s6Step67ExitFvOut,s6Step67ExitGvOut] 2 s6Step67ExitBank_outgoingOwned

private theorem s6Step67ExitFv_distinct : (s6Step67ExitFvRow.sign::s6Step67ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step67ExitFv_owned : (s6Step67ExitFvRow.sign::s6Step67ExitFvRow.payload).toFinset⊆s6Step67ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step67ExitFvBefore (fun q => ([(0,234),(235,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step67ExitFv_retired : s6Step67ExitFvBefore.retireSet s6Step67ExitFvExtra.toFinset=s6Step67ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step67ExitFvBefore s6Step67ExitFvAfter s6Step67ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step67ExitFvBefore s6Step67ExitFvAfter (fun q => ([(0,234),(235,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,234),(235,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step67ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step67ExitFv_checked : planRowResizeLog s6Step67ExitFvBefore s6Step67ExitFvRow 47 []=
    some (s6Step67ExitFvAfter,s6Step67ExitFvOut,shrinkRow 776 s6Step67ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step67ExitFvBefore s6Step67ExitFvRow 47 s6Step67ExitFv_distinct s6Step67ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step67ExitFvRow.payload.take 47) s6Step67ExitFvRow.sign=s6Step67ExitFvOut := by decide +kernel
  have hi : s6Step67ExitFvRow.payload.drop 47=s6Step67ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step67ExitFv_retired] at result
  exact result

private def s6Step67ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step67ExitG_Incoming : rowsOwned s6Step67ExitGBefore [s6Step67ExitGRow,s6Step67ExitFRow,s6Step67ExitFvRow,s6Step67ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step67ExitGRow,s6Step67ExitFRow,s6Step67ExitFvRow,s6Step67ExitGvRow] 0 s6Step67ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step67ExitGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step67ExitG_Outgoing : rowsOwned s6Step67ExitGvAfter [s6Step67ExitGOut,s6Step67ExitFOut,s6Step67ExitFvOut,s6Step67ExitGvOut] :=
  hmrRows_owned_drop s6Step67ExitGvAfter [s6Step67ExitGOut,s6Step67ExitFOut,s6Step67ExitFvOut,s6Step67ExitGvOut] 0 s6Step67ExitBank_outgoingOwned

private theorem s6Step67ExitG_distinct : (s6Step67ExitGRow.sign::s6Step67ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step67ExitG_owned : (s6Step67ExitGRow.sign::s6Step67ExitGRow.payload).toFinset⊆s6Step67ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step67ExitGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step67ExitG_retired : s6Step67ExitGBefore.retireSet s6Step67ExitGExtra.toFinset=s6Step67ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step67ExitGBefore s6Step67ExitGAfter s6Step67ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step67ExitGBefore s6Step67ExitGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,234),(235,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step67ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step67ExitG_checked : planRowResizeLog s6Step67ExitGBefore s6Step67ExitGRow 234 []=
    some (s6Step67ExitGAfter,s6Step67ExitGOut,shrinkRow 777 s6Step67ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step67ExitGBefore s6Step67ExitGRow 234 s6Step67ExitG_distinct s6Step67ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step67ExitGRow.payload.take 234) s6Step67ExitGRow.sign=s6Step67ExitGOut := by decide +kernel
  have hi : s6Step67ExitGRow.payload.drop 234=s6Step67ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step67ExitG_retired] at result
  exact result

private def s6Step67ExitGvBefore : Arena := s6Step67ExitFvAfter

private theorem s6Step67ExitGv_Incoming : rowsOwned s6Step67ExitGvBefore [s6Step67ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step67ExitGRow,s6Step67ExitFRow,s6Step67ExitFvRow,s6Step67ExitGvRow] 3 s6Step67ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step67ExitGvBefore (fun q => ([(0,234),(235,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step67ExitGv_Outgoing : rowsOwned s6Step67ExitGvAfter [s6Step67ExitGvOut] :=
  hmrRows_owned_drop s6Step67ExitGvAfter [s6Step67ExitGOut,s6Step67ExitFOut,s6Step67ExitFvOut,s6Step67ExitGvOut] 3 s6Step67ExitBank_outgoingOwned

private theorem s6Step67ExitGv_distinct : (s6Step67ExitGvRow.sign::s6Step67ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step67ExitGv_owned : (s6Step67ExitGvRow.sign::s6Step67ExitGvRow.payload).toFinset⊆s6Step67ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step67ExitGvBefore (fun q => ([(0,234),(235,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step67ExitGv_retired : s6Step67ExitGvBefore.retireSet s6Step67ExitGvExtra.toFinset=s6Step67ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step67ExitGvBefore s6Step67ExitGvAfter s6Step67ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step67ExitGvBefore s6Step67ExitGvAfter (fun q => ([(0,234),(235,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,234),(235,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step67ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step67ExitGv_checked : planRowResizeLog s6Step67ExitGvBefore s6Step67ExitGvRow 47 []=
    some (s6Step67ExitGvAfter,s6Step67ExitGvOut,shrinkRow 775 s6Step67ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step67ExitGvBefore s6Step67ExitGvRow 47 s6Step67ExitGv_distinct s6Step67ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step67ExitGvRow.payload.take 47) s6Step67ExitGvRow.sign=s6Step67ExitGvOut := by decide +kernel
  have hi : s6Step67ExitGvRow.payload.drop 47=s6Step67ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step67ExitGv_retired] at result
  exact result

private theorem s6Step67ExitBank_rows : planWindowRowsLog s6Step67ExitGBefore [(s6Step67ExitGRow,234),(s6Step67ExitFRow,234),(s6Step67ExitFvRow,47),(s6Step67ExitGvRow,47)] [[],[],[],[]]=
    some (s6Step67ExitGvAfter,[s6Step67ExitGOut,s6Step67ExitFOut,s6Step67ExitFvOut,s6Step67ExitGvOut],(shrinkRow 777 s6Step67ExitGExtra ++ (shrinkRow 795 s6Step67ExitFExtra ++ (shrinkRow 776 s6Step67ExitFvExtra ++ (shrinkRow 775 s6Step67ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step67ExitGvAfter [] []=some (s6Step67ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step67ExitGvBefore s6Step67ExitGvAfter s6Step67ExitGvAfter
    s6Step67ExitGvRow s6Step67ExitGvOut 47 [] [] [] []
    (shrinkRow 775 s6Step67ExitGvExtra) ([]) s6Step67ExitGv_Incoming s6Step67ExitGv_checked h4 s6Step67ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step67ExitFvBefore s6Step67ExitFvAfter s6Step67ExitGvAfter
    s6Step67ExitFvRow s6Step67ExitFvOut 47 [] [(s6Step67ExitGvRow,47)] [[]] [s6Step67ExitGvOut]
    (shrinkRow 776 s6Step67ExitFvExtra) ((shrinkRow 775 s6Step67ExitGvExtra ++ [])) s6Step67ExitFv_Incoming s6Step67ExitFv_checked h3 s6Step67ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step67ExitFBefore s6Step67ExitFAfter s6Step67ExitGvAfter
    s6Step67ExitFRow s6Step67ExitFOut 234 [] [(s6Step67ExitFvRow,47),(s6Step67ExitGvRow,47)] [[],[]] [s6Step67ExitFvOut,s6Step67ExitGvOut]
    (shrinkRow 795 s6Step67ExitFExtra) ((shrinkRow 776 s6Step67ExitFvExtra ++ (shrinkRow 775 s6Step67ExitGvExtra ++ []))) s6Step67ExitF_Incoming s6Step67ExitF_checked h2 s6Step67ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step67ExitGBefore s6Step67ExitGAfter s6Step67ExitGvAfter
    s6Step67ExitGRow s6Step67ExitGOut 234 [] [(s6Step67ExitFRow,234),(s6Step67ExitFvRow,47),(s6Step67ExitGvRow,47)] [[],[],[]] [s6Step67ExitFOut,s6Step67ExitFvOut,s6Step67ExitGvOut]
    (shrinkRow 777 s6Step67ExitGExtra) ((shrinkRow 795 s6Step67ExitFExtra ++ (shrinkRow 776 s6Step67ExitFvExtra ++ (shrinkRow 775 s6Step67ExitGvExtra ++ [])))) s6Step67ExitG_Incoming s6Step67ExitG_checked h1 s6Step67ExitG_Outgoing
  exact h0

private theorem s6Step67ExitBank_checked : compileHmrBankResizeLog .exit s6Step67ExitGBefore ⟨s6Step67ExitFRow,s6Step67ExitGRow,s6Step67ExitFvRow,s6Step67ExitGvRow⟩ ⟨234,234,47,47⟩ [[],[],[],[]]=
    some (s6Step67ExitGvAfter,⟨s6Step67ExitFOut,s6Step67ExitGOut,s6Step67ExitFvOut,s6Step67ExitGvOut⟩,(shrinkRow 777 s6Step67ExitGExtra ++ (shrinkRow 795 s6Step67ExitFExtra ++ (shrinkRow 776 s6Step67ExitFvExtra ++ (shrinkRow 775 s6Step67ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step67ExitBank_rows]
  rfl

private theorem s6Step67Add0_apart : Disjoint s6Step67Add0Arena.live s6Step67Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step67Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step67Add0_card : s6Step67Add0Arena.live.card=868 := by
  decide +kernel

private theorem s6Step67Add0_borrowed : s6Step67Add0Arena.checkBorrow (hmrHybridCount s6Step67Add0Arena s6Step67Add0B.length) s6Step67Add0Work=some s6Step67Add0During := by
  have len : s6Step67Add0Work.length=hmrHybridCount s6Step67Add0Arena s6Step67Add0B.length := by
    rw [hmrHybridCount,s6Step67Add0_card]
    decide +kernel
  have nd : s6Step67Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step67Add0Arena s6Step67Add0During s6Step67Add0Work.toFinset s6Step67Add0_bounded s6Step67Add0_apart rfl

private theorem s6Step67Add0_distinct : (780::877::855::(s6Step67Add0A++s6Step67Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step67Add0_owned : (780::877::855::(s6Step67Add0A++s6Step67Add0B)).toFinset⊆s6Step67Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step67Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step67Add0_checked : compileHmrHybridCinLog s6Step67Add0Arena 877 780 855 s6Step67Add0A s6Step67Add0B s6Step67Add0Work=some s6Step67Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step67Add0Arena s6Step67Add0During 877 780 855 s6Step67Add0A s6Step67Add0B s6Step67Add0Work
    (by decide +kernel) (by decide +kernel) s6Step67Add0_distinct
    (fun q hq => s6Step67Add0_owned (List.mem_toFinset.mpr hq)) s6Step67Add0_borrowed

private theorem s6Step67Add1_apart : Disjoint s6Step67Add1Arena.live s6Step67Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step67Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step67Add1_card : s6Step67Add1Arena.live.card=868 := by
  decide +kernel

private theorem s6Step67Add1_borrowed : s6Step67Add1Arena.checkBorrow (hmrHybridCount s6Step67Add1Arena s6Step67Add1B.length) s6Step67Add1Work=some s6Step67Add1During := by
  have len : s6Step67Add1Work.length=hmrHybridCount s6Step67Add1Arena s6Step67Add1B.length := by
    rw [hmrHybridCount,s6Step67Add1_card]
    decide +kernel
  have nd : s6Step67Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step67Add1Arena s6Step67Add1During s6Step67Add1Work.toFinset s6Step67Add1_bounded s6Step67Add1_apart rfl

private theorem s6Step67Add1_distinct : (780::877::855::(s6Step67Add1A++s6Step67Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step67Add1_owned : (780::877::855::(s6Step67Add1A++s6Step67Add1B)).toFinset⊆s6Step67Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step67Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step67Add1_checked : compileHmrHybridCinLog s6Step67Add1Arena 877 780 855 s6Step67Add1A s6Step67Add1B s6Step67Add1Work=some s6Step67Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step67Add1Arena s6Step67Add1During 877 780 855 s6Step67Add1A s6Step67Add1B s6Step67Add1Work
    (by decide +kernel) (by decide +kernel) s6Step67Add1_distinct
    (fun q hq => s6Step67Add1_owned (List.mem_toFinset.mpr hq)) s6Step67Add1_borrowed

private theorem s6Step67F4_apart : Disjoint (s6Step67Add0A++s6Step67Add0B).toFinset (s6Step67Add1A++s6Step67Add1B).toFinset := by
  have nd : ((s6Step67Add0A++s6Step67Add0B)++(s6Step67Add1A++s6Step67Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step67F4_carry : s6Step67F4FlagArena.checkBorrow 1 [855]=some s6Step67Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step67F4FlagArena,s6Step67HeadFvAfter,arenaWires]
  · change s6Step67Add0Arena.live=(s6Step67HeadFvAfter.live∪{780})∪{855}
    apply hmrArena_union_pair_of_filter_check s6Step67HeadFvAfter s6Step67Add0Arena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 780 855 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step67F4_distinct : (854::877::780::855::((s6Step67Add0A++s6Step67Add1A)++(s6Step67Add0B++s6Step67Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step67F4_flag : s6Step67HeadFvAfter.checkBorrow 1 [780]=some s6Step67F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step67HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step67F4_owned : (854::877::((s6Step67Add0A++s6Step67Add1A)++(s6Step67Add0B++s6Step67Add1B))).toFinset⊆s6Step67HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step67HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step67F4_checked : compileHmrHybridF4Log s6Step67HeadFvAfter 854 877 s6Step67Add0A s6Step67Add0B s6Step67Add1A s6Step67Add1B [780] [855] s6Step67Add0Work s6Step67Add1Work=some s6Step67F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step67HeadFvAfter s6Step67F4FlagArena s6Step67Add0Arena s6Step67Add0During s6Step67Add1During 854 877
    s6Step67Add0A s6Step67Add0B s6Step67Add1A s6Step67Add1B [780] [855] s6Step67Add0Work s6Step67Add1Work
    (fun q hq => s6Step67F4_owned (List.mem_toFinset.mpr hq)) s6Step67F4_flag s6Step67F4_carry
    s6Step67F4_distinct s6Step67F4_apart s6Step67Add0_checked s6Step67Add1_checked

private theorem s6Step67Front_branch : s6Step67FrontSigmaArena.checkBorrow 1 [877]=some s6Step67HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step67FrontSigmaArena,s6Step67EntryGvAfter,arenaWires]
  · change s6Step67HeadGBefore.live=(s6Step67EntryGvAfter.live∪{854})∪{877}
    apply hmrArena_union_pair_of_filter_check s6Step67EntryGvAfter s6Step67HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 854 877 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step67Front_entry : HmrFrontEntryValid s6Step67EntryFBefore s6Step67FrontBank 235 47 ⟨234,234,47,47⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step67FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step67EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step67EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step67FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step67Front_sigma : s6Step67EntryGvAfter.checkBorrow 1 [854]=some s6Step67FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step67EntryGvAfter,arenaWires]
  · rfl

private def s6Step67HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step67HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step67HeadFBefore : Arena := s6Step67HeadGAfter

private def s6Step67HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 838],795⟩

private def s6Step67HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875],776⟩

private def s6Step67HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234],777⟩

private def s6Step67HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814],775⟩

private theorem s6Step67HeadBank_incomingDistinct : ([s6Step67HeadGRow,s6Step67HeadFRow,s6Step67HeadGvRow,s6Step67HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step67HeadF_Incoming : rowsOwned s6Step67HeadFBefore [s6Step67HeadFRow,s6Step67HeadGvRow,s6Step67HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step67HeadGRow,s6Step67HeadFRow,s6Step67HeadGvRow,s6Step67HeadFvRow] 1 s6Step67HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step67HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step67HeadBank_outgoingOwned : rowsOwned s6Step67HeadFvAfter [s6Step67HeadGOut,s6Step67HeadFOut,s6Step67HeadGvOut,s6Step67HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step67HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step67HeadF_Outgoing : rowsOwned s6Step67HeadFvAfter [s6Step67HeadFOut,s6Step67HeadGvOut,s6Step67HeadFvOut] :=
  hmrRows_owned_drop s6Step67HeadFvAfter [s6Step67HeadGOut,s6Step67HeadFOut,s6Step67HeadGvOut,s6Step67HeadFvOut] 1 s6Step67HeadBank_outgoingOwned

private theorem s6Step67HeadF_distinct : (s6Step67HeadFRow.sign::s6Step67HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step67HeadF_owned : (s6Step67HeadFRow.sign::s6Step67HeadFRow.payload).toFinset⊆s6Step67HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step67HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step67HeadF_reserved : s6Step67HeadFBefore.reserve s6Step67HeadFFresh.toFinset=some s6Step67HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step67HeadFFresh,arenaWires]
  · norm_num [s6Step67HeadFBefore,s6Step67HeadGAfter,s6Step67HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step67HeadFBefore s6Step67HeadFAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step67HeadFFresh rfl rfl
    · norm_num [s6Step67HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step67HeadF_checked : planRowResizeLog s6Step67HeadFBefore s6Step67HeadFRow 236 s6Step67HeadFFresh=
    some (s6Step67HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 838, 869],795⟩,growRow 795 s6Step67HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step67HeadFBefore s6Step67HeadFAfter s6Step67HeadFRow 236 s6Step67HeadFFresh
    s6Step67HeadF_distinct s6Step67HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step67HeadF_reserved
  have rowEq : WindowRow.mk (s6Step67HeadFRow.payload++s6Step67HeadFFresh) s6Step67HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 838, 869],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step67HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step67HeadFvBefore : Arena := s6Step67HeadGvAfter

private theorem s6Step67HeadFv_Incoming : rowsOwned s6Step67HeadFvBefore [s6Step67HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step67HeadGRow,s6Step67HeadFRow,s6Step67HeadGvRow,s6Step67HeadFvRow] 3 s6Step67HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step67HeadFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step67HeadFv_Outgoing : rowsOwned s6Step67HeadFvAfter [s6Step67HeadFvOut] :=
  hmrRows_owned_drop s6Step67HeadFvAfter [s6Step67HeadGOut,s6Step67HeadFOut,s6Step67HeadGvOut,s6Step67HeadFvOut] 3 s6Step67HeadBank_outgoingOwned

private theorem s6Step67HeadFv_distinct : (s6Step67HeadFvRow.sign::s6Step67HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step67HeadFv_owned : (s6Step67HeadFvRow.sign::s6Step67HeadFvRow.payload).toFinset⊆s6Step67HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step67HeadFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step67HeadFv_reserved : s6Step67HeadFvBefore.reserve s6Step67HeadFvFresh.toFinset=some s6Step67HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step67HeadFvFresh,arenaWires]
  · norm_num [s6Step67HeadFvBefore,s6Step67HeadGvAfter,s6Step67HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step67HeadFvBefore s6Step67HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step67HeadFvFresh rfl rfl
    · norm_num [s6Step67HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step67HeadFv_checked : planRowResizeLog s6Step67HeadFvBefore s6Step67HeadFvRow 48 s6Step67HeadFvFresh=
    some (s6Step67HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 821],776⟩,growRow 776 s6Step67HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step67HeadFvBefore s6Step67HeadFvAfter s6Step67HeadFvRow 48 s6Step67HeadFvFresh
    s6Step67HeadFv_distinct s6Step67HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step67HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step67HeadFvRow.payload++s6Step67HeadFvFresh) s6Step67HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 821],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step67HeadG_Incoming : rowsOwned s6Step67HeadGBefore [s6Step67HeadGRow,s6Step67HeadFRow,s6Step67HeadGvRow,s6Step67HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step67HeadGRow,s6Step67HeadFRow,s6Step67HeadGvRow,s6Step67HeadFvRow] 0 s6Step67HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step67HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step67HeadG_Outgoing : rowsOwned s6Step67HeadFvAfter [s6Step67HeadGOut,s6Step67HeadFOut,s6Step67HeadGvOut,s6Step67HeadFvOut] :=
  hmrRows_owned_drop s6Step67HeadFvAfter [s6Step67HeadGOut,s6Step67HeadFOut,s6Step67HeadGvOut,s6Step67HeadFvOut] 0 s6Step67HeadBank_outgoingOwned

private theorem s6Step67HeadG_distinct : (s6Step67HeadGRow.sign::s6Step67HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step67HeadG_owned : (s6Step67HeadGRow.sign::s6Step67HeadGRow.payload).toFinset⊆s6Step67HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step67HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step67HeadG_reserved : s6Step67HeadGBefore.reserve s6Step67HeadGFresh.toFinset=some s6Step67HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step67HeadGFresh,arenaWires]
  · norm_num [s6Step67HeadGBefore,s6Step67HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step67HeadGBefore s6Step67HeadGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step67HeadGFresh rfl rfl
    · norm_num [s6Step67HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step67HeadG_checked : planRowResizeLog s6Step67HeadGBefore s6Step67HeadGRow 236 s6Step67HeadGFresh=
    some (s6Step67HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 843],777⟩,growRow 777 s6Step67HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step67HeadGBefore s6Step67HeadGAfter s6Step67HeadGRow 236 s6Step67HeadGFresh
    s6Step67HeadG_distinct s6Step67HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step67HeadG_reserved
  have rowEq : WindowRow.mk (s6Step67HeadGRow.payload++s6Step67HeadGFresh) s6Step67HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 843],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step67HeadGvBefore : Arena := s6Step67HeadFAfter

private theorem s6Step67HeadGv_Incoming : rowsOwned s6Step67HeadGvBefore [s6Step67HeadGvRow,s6Step67HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step67HeadGRow,s6Step67HeadFRow,s6Step67HeadGvRow,s6Step67HeadFvRow] 2 s6Step67HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step67HeadGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step67HeadGv_Outgoing : rowsOwned s6Step67HeadFvAfter [s6Step67HeadGvOut,s6Step67HeadFvOut] :=
  hmrRows_owned_drop s6Step67HeadFvAfter [s6Step67HeadGOut,s6Step67HeadFOut,s6Step67HeadGvOut,s6Step67HeadFvOut] 2 s6Step67HeadBank_outgoingOwned

private theorem s6Step67HeadGv_distinct : (s6Step67HeadGvRow.sign::s6Step67HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step67HeadGv_owned : (s6Step67HeadGvRow.sign::s6Step67HeadGvRow.payload).toFinset⊆s6Step67HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step67HeadGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step67HeadGv_reserved : s6Step67HeadGvBefore.reserve s6Step67HeadGvFresh.toFinset=some s6Step67HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step67HeadGvFresh,arenaWires]
  · norm_num [s6Step67HeadGvBefore,s6Step67HeadFAfter,s6Step67HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step67HeadGvBefore s6Step67HeadGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step67HeadGvFresh rfl rfl
    · norm_num [s6Step67HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step67HeadGv_checked : planRowResizeLog s6Step67HeadGvBefore s6Step67HeadGvRow 48 s6Step67HeadGvFresh=
    some (s6Step67HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 822],775⟩,growRow 775 s6Step67HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step67HeadGvBefore s6Step67HeadGvAfter s6Step67HeadGvRow 48 s6Step67HeadGvFresh
    s6Step67HeadGv_distinct s6Step67HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step67HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step67HeadGvRow.payload++s6Step67HeadGvFresh) s6Step67HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 822],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step67HeadBank_rows : planWindowRowsLog s6Step67HeadGBefore [(s6Step67HeadGRow,236),(s6Step67HeadFRow,236),(s6Step67HeadGvRow,48),(s6Step67HeadFvRow,48)] [s6Step67HeadGFresh,s6Step67HeadFFresh,s6Step67HeadGvFresh,s6Step67HeadFvFresh]=
    some (s6Step67HeadFvAfter,[s6Step67HeadGOut,s6Step67HeadFOut,s6Step67HeadGvOut,s6Step67HeadFvOut],(growRow 777 s6Step67HeadGFresh ++ (growRow 795 s6Step67HeadFFresh ++ (growRow 775 s6Step67HeadGvFresh ++ (growRow 776 s6Step67HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step67HeadFvAfter [] []=some (s6Step67HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step67HeadFvBefore s6Step67HeadFvAfter s6Step67HeadFvAfter
    s6Step67HeadFvRow s6Step67HeadFvOut 48 s6Step67HeadFvFresh [] [] []
    (growRow 776 s6Step67HeadFvFresh) ([]) s6Step67HeadFv_Incoming s6Step67HeadFv_checked h4 s6Step67HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step67HeadGvBefore s6Step67HeadGvAfter s6Step67HeadFvAfter
    s6Step67HeadGvRow s6Step67HeadGvOut 48 s6Step67HeadGvFresh [(s6Step67HeadFvRow,48)] [s6Step67HeadFvFresh] [s6Step67HeadFvOut]
    (growRow 775 s6Step67HeadGvFresh) ((growRow 776 s6Step67HeadFvFresh ++ [])) s6Step67HeadGv_Incoming s6Step67HeadGv_checked h3 s6Step67HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step67HeadFBefore s6Step67HeadFAfter s6Step67HeadFvAfter
    s6Step67HeadFRow s6Step67HeadFOut 236 s6Step67HeadFFresh [(s6Step67HeadGvRow,48),(s6Step67HeadFvRow,48)] [s6Step67HeadGvFresh,s6Step67HeadFvFresh] [s6Step67HeadGvOut,s6Step67HeadFvOut]
    (growRow 795 s6Step67HeadFFresh) ((growRow 775 s6Step67HeadGvFresh ++ (growRow 776 s6Step67HeadFvFresh ++ []))) s6Step67HeadF_Incoming s6Step67HeadF_checked h2 s6Step67HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step67HeadGBefore s6Step67HeadGAfter s6Step67HeadFvAfter
    s6Step67HeadGRow s6Step67HeadGOut 236 s6Step67HeadGFresh [(s6Step67HeadFRow,236),(s6Step67HeadGvRow,48),(s6Step67HeadFvRow,48)] [s6Step67HeadFFresh,s6Step67HeadGvFresh,s6Step67HeadFvFresh] [s6Step67HeadFOut,s6Step67HeadGvOut,s6Step67HeadFvOut]
    (growRow 777 s6Step67HeadGFresh) ((growRow 795 s6Step67HeadFFresh ++ (growRow 775 s6Step67HeadGvFresh ++ (growRow 776 s6Step67HeadFvFresh ++ [])))) s6Step67HeadG_Incoming s6Step67HeadG_checked h1 s6Step67HeadG_Outgoing
  exact h0

private theorem s6Step67HeadBank_checked : compileHmrBankResizeLog .headroom s6Step67HeadGBefore ⟨s6Step67HeadFRow,s6Step67HeadGRow,s6Step67HeadFvRow,s6Step67HeadGvRow⟩ ⟨236,236,48,48⟩ [s6Step67HeadGFresh,s6Step67HeadFFresh,s6Step67HeadGvFresh,s6Step67HeadFvFresh]=
    some (s6Step67HeadFvAfter,⟨s6Step67HeadFOut,s6Step67HeadGOut,s6Step67HeadFvOut,s6Step67HeadGvOut⟩,(growRow 777 s6Step67HeadGFresh ++ (growRow 795 s6Step67HeadFFresh ++ (growRow 775 s6Step67HeadGvFresh ++ (growRow 776 s6Step67HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step67HeadBank_rows]
  rfl

private theorem s6Step67Front_checked : compileHmrSourceFrontLog s6Step67EntryFBefore s6Step67FrontBank 235 47 ⟨234,234,47,47⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step67FrontLog=some s6Step67FrontPlan := by
  have pairEq : s6Step67FrontPair=⟨s6Step67HeadFRow,s6Step67HeadGRow,s6Step67HeadFvRow,s6Step67HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step67FrontHead=⟨s6Step67ExitFRow,s6Step67ExitGRow,s6Step67ExitFvRow,s6Step67ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step67Add0A=s6Step67FrontHead.f.wires := by decide +kernel
  have gEq : s6Step67Add0B=s6Step67FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step67Add1A=s6Step67FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step67Add1B=s6Step67FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step67EntryFBefore s6Step67FrontBank 235 47 ⟨234,234,47,47⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step67FrontLog s6Step67FrontPlan
  · exact s6Step67Front_entry
  · exact s6Step67EntryBank_checked
  · exact s6Step67Front_sigma
  · rfl
  · exact s6Step67Front_branch
  · rfl
  · simpa only [s6Step67FrontPlan,pairEq] using s6Step67HeadBank_checked
  · simpa only [s6Step67FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step67F4_checked
  · exact s6Step67Counter_checked
  · rfl
  · simpa only [s6Step67FrontPlan,headEq] using s6Step67ExitBank_checked

private theorem s6Step67Complete_explicit_checked : compileHmrEarlyStepLog s6Step67EntryFBefore s6Step67FrontBank 235 47 ⟨234,234,47,47⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step67CompleteLog=some s6Step67CompletePlan := by
  let Q := s6Step67EarlyControlPlan
  have hq := s6Step67EarlyControl_plan_checked
  have fv1 : s6Step67CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step67CompleteOut.fv.payload[2]?.getD s6Step67CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step67CompleteOut.fv.payload[3]?.getD s6Step67CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step67CompleteOut.fv.payload[4]?.getD s6Step67CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step67EntryFBefore s6Step67EarlyControlArena s6Step67FrontBank 235 47 ⟨234,234,47,47⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step67CompleteLog s6Step67FrontPlan Q
    s6Step67Front_checked s6Step67Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step67Complete_owned s6Step67Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step67EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 854 s6Step67CompleteOut.fv.second (s6Step67CompleteOut.fv.payload[2]?.getD s6Step67CompleteOut.fv.sign) (s6Step67CompleteOut.fv.payload[3]?.getD s6Step67CompleteOut.fv.sign) (s6Step67CompleteOut.fv.payload[4]?.getD s6Step67CompleteOut.fv.sign) 877 30 s6Step67EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep67Arena : Arena := s6Step67EntryFBefore
def s6PrivateStep67Bank : WindowBank := s6Step67FrontBank
def s6PrivateStep67Spec : HmrSourceWalkStepLog := ⟨235,47,⟨234,234,47,47⟩,30,.early s6Step67CompleteLog⟩
def s6PrivateStep67Plan : HmrSourceStepPlan := .early s6Step67CompletePlan
theorem s6PrivateStep67_source : s6PrivateStep67Spec=s6ObservedLogs64[3] := rfl
theorem s6PrivateStep67_checked : compileHmrSourceStepLog s6PrivateStep67Arena s6PrivateStep67Bank
    s6PrivateStep67Spec.fgWidth s6PrivateStep67Spec.vWidth s6PrivateStep67Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902]
    6 498 67 s6PrivateStep67Spec.need none s6PrivateStep67Spec.log=some s6PrivateStep67Plan := by
  change compileHmrSourceStepLog s6Step67EntryFBefore s6Step67FrontBank 235 47 ⟨234,234,47,47⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 6 498 67 30 none (.early s6Step67CompleteLog)=some (.early s6Step67CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 67<498)]
  rw [s6Step67Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
