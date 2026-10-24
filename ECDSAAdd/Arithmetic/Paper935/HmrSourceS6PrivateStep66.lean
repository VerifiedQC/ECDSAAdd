import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep64
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

private def s6Step66CompleteMoves : List (Wire × Wire) := [(854,490)]

private def s6Step66EarlyControlLog : HmrEarlyControlLog := ⟨[854, 877, 843, 869, 822],[821],[780],[855, 803, 922, 879, 784, 891],[902]⟩

private def s6Step66FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[869], [843], [877], [875]],[[], [], [], []]⟩,[814],[838],[822],[821],[780, 855, 803, 922, 879, 784, 891, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[780, 855, 803, 922, 879, 784, 891, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801],[822, 821, 780, 855]⟩

private def s6Step66CompleteLog : HmrEarlyStepLog := ⟨s6Step66FrontLog,s6Step66CompleteMoves,s6Step66EarlyControlLog⟩

private def s6Step66ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489],795⟩

private def s6Step66ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875],776⟩

private def s6Step66ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234],777⟩

private def s6Step66ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888],775⟩

private def s6Step66FrontOut : WindowBank := ⟨s6Step66ExitFOut,s6Step66ExitGOut,s6Step66ExitFvOut,s6Step66ExitGvOut⟩

private def s6Step66CompleteOut : WindowBank := s6Step66FrontOut.repacked s6Step66CompleteMoves

private def s6Step66EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step66EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step66EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step66EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step66EarlyControlPositiveArena,[821],s6Step66EarlyControlEqualityArena,[780],⟨⟨814,false⟩,[⟨⟨821,false⟩,780⟩]⟩⟩

private def s6Step66EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step66EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step66EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step66EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step66EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step66EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step66EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,854⟩,⟨⟨772,false⟩,877⟩,⟨⟨771,false⟩,843⟩,⟨⟨770,false⟩,869⟩,⟨⟨769,false⟩,822⟩]⟩

private def s6Step66EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step66EarlyControlZeroArena,s6Step66EarlyControlZeroPlan,s6Step66EarlyControlClassPlan,s6Step66EarlyControlFlagArena,s6Step66EarlyControlFittedArena,s6Step66EarlyControlHistoryArena,s6Step66EarlyControlSigmaArena,s6Step66EarlyControlOutputArena,s6Step66EarlyControlLog⟩

private def s6Step66CounterWork : List Wire := [822, 821, 780, 855]

private theorem s6Step66Counter_bounded : s6Step66CounterWork.toFinset⊆arenaWires := by norm_num [s6Step66CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step66HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step66CounterDuring : Arena := ⟨s6Step66HeadFvAfter.live∪s6Step66CounterWork.toFinset,Finset.union_subset s6Step66HeadFvAfter.bounded s6Step66Counter_bounded⟩

private def s6Step66EntryFFresh : List Wire := []

private def s6Step66EntryFvFresh : List Wire := []

private def s6Step66EntryGFresh : List Wire := []

private def s6Step66EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step66EntryGvAfter : Arena := s6Step66EntryFBefore

private def s6Step66EntryGvFresh : List Wire := []

private def s6Step66ExitFExtra : List Wire := [490, 843]

private def s6Step66ExitGExtra : List Wire := [869]

private def s6Step66ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,490),(491,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step66ExitGvExtra : List Wire := [877]

private def s6Step66Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step66Add0Work : List Wire := [780, 855, 803, 922, 879, 784, 891, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step66Add0_bounded : s6Step66Add0Work.toFinset⊆arenaWires := by
  have h : s6Step66Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step66Add0During : Arena := ⟨s6Step66Add0Arena.live∪s6Step66Add0Work.toFinset,Finset.union_subset s6Step66Add0Arena.bounded s6Step66Add0_bounded⟩

private def s6Step66Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step66Add1Work : List Wire := [780, 855, 803, 922, 879, 784, 891, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801]

private theorem s6Step66Add1_bounded : s6Step66Add1Work.toFinset⊆arenaWires := by
  have h : s6Step66Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step66Add1During : Arena := ⟨s6Step66Add1Arena.live∪s6Step66Add1Work.toFinset,Finset.union_subset s6Step66Add1Arena.bounded s6Step66Add1_bounded⟩

private def s6Step66F4FlagArena : Arena := ⟨s6Step66HeadFvAfter.live∪{822},Finset.union_subset s6Step66HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step66F4Plan : HmrHybridF4Plan := ⟨s6Step66F4FlagArena,[822],s6Step66Add0Arena,[821],s6Step66Add0During,s6Step66Add0Work,s6Step66Add1During,s6Step66Add1Work⟩

private def s6Step66HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 843],795⟩

private def s6Step66HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875],776⟩

private def s6Step66HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 869],777⟩

private def s6Step66HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 877],775⟩

private def s6Step66FrontHead : WindowBank := ⟨s6Step66HeadFOut,s6Step66HeadGOut,s6Step66HeadFvOut,s6Step66HeadGvOut⟩

private def s6Step66EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490],795⟩

private def s6Step66EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833],776⟩

private def s6Step66EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234],777⟩

private def s6Step66EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888],775⟩

private def s6Step66FrontPair : WindowBank := ⟨s6Step66EntryFOut,s6Step66EntryGOut,s6Step66EntryFvOut,s6Step66EntryGvOut⟩

private def s6Step66FrontSigmaArena : Arena := ⟨s6Step66EntryGvAfter.live∪{814},Finset.union_subset s6Step66EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step66HeadFFresh : List Wire := [843]

private def s6Step66HeadFvFresh : List Wire := [875]

private def s6Step66HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step66HeadGFresh : List Wire := [869]

private def s6Step66HeadGvFresh : List Wire := [877]

private def s6Step66FrontPlan : HmrSourceFront := ⟨s6Step66EntryGvAfter,s6Step66FrontPair,(growRow 795 s6Step66EntryFFresh ++ (growRow 777 s6Step66EntryGFresh ++ (growRow 776 s6Step66EntryFvFresh ++ (growRow 775 s6Step66EntryGvFresh ++ [])))),s6Step66FrontSigmaArena,[814],s6Step66HeadGBefore,[838],
  s6Step66HeadFvAfter,s6Step66FrontHead,(growRow 777 s6Step66HeadGFresh ++ (growRow 795 s6Step66HeadFFresh ++ (growRow 775 s6Step66HeadGvFresh ++ (growRow 776 s6Step66HeadFvFresh ++ [])))),s6Step66F4Plan,s6Step66CounterDuring,s6Step66CounterWork,s6Step66ExitGvAfter,s6Step66FrontOut,(shrinkRow 777 s6Step66ExitGExtra ++ (shrinkRow 795 s6Step66ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step66ExitGvExtra ++ []))))⟩

private def s6Step66CompletePlan : HmrEarlyStepPlan := ⟨s6Step66FrontPlan,s6Step66EarlyControlArena,s6Step66EarlyControlPlan,s6Step66CompleteMoves⟩

private theorem s6Step66Complete_apart : List.Disjoint (s6Step66CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [814, 838, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846] := by
  have nd : ((s6Step66CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[814, 838, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step66Complete_owned : (s6Step66CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step66EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step66EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step66CompleteRelocationMove0Borrowed : Arena := ⟨s6Step66ExitGvAfter.live∪{490},Finset.union_subset s6Step66ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step66CompleteRelocation_move0_owned : 854∈s6Step66ExitGvAfter.live := by norm_num [s6Step66ExitGvAfter,arenaWires]

private theorem s6Step66CompleteRelocation_move0_reserve : s6Step66ExitGvAfter.reserve {490}=some s6Step66CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step66ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step66CompleteRelocation_move0_retire : s6Step66CompleteRelocationMove0Borrowed.retireSet {854}=s6Step66EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step66CompleteRelocationMove0Borrowed s6Step66EarlyControlArena {854}
  change s6Step66EarlyControlArena.live=(s6Step66ExitGvAfter.live∪{490})\{854}
  apply hmrArena_update_of_filter_check s6Step66ExitGvAfter s6Step66EarlyControlArena (fun q => ([(0,490),(491,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [490] [854] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step66CompleteRelocation_checked : s6Step66ExitGvAfter.checkRepack [(854,490)]=some s6Step66EarlyControlArena := by
  have tail1 : s6Step66EarlyControlArena.checkRepack []=some s6Step66EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step66ExitGvAfter s6Step66CompleteRelocationMove0Borrowed s6Step66EarlyControlArena s6Step66EarlyControlArena 854 490 []
    s6Step66CompleteRelocation_move0_owned s6Step66CompleteRelocation_move0_reserve s6Step66CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step66Complete_repack : s6Step66ExitGvAfter.checkRepack s6Step66CompleteMoves=some s6Step66EarlyControlArena := by
  simpa only [s6Step66CompleteMoves] using s6Step66CompleteRelocation_checked

private theorem s6Step66EarlyControl_branchOwned : ([838] : List Wire).toFinset⊆s6Step66EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step66EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step66EarlyControl_branch : compileHmrBranchRetirement s6Step66EarlyControlSigmaArena 838=some s6Step66EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step66EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step66EarlyControlSigmaArena s6Step66EarlyControlOutputArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [838] rfl rfl
    decide +kernel

private theorem s6Step66EarlyControl_classEqualityBorrow : s6Step66EarlyControlPositiveArena.checkBorrow (([814, 821] : List Wire).length-1) s6Step66EarlyControlLog.classWork=some s6Step66EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step66EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step66EarlyControlPositiveArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step66EarlyControlPositiveArena s6Step66EarlyControlEqualityArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step66EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step66EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step66EarlyControl_classEqualityOwned : ([814, 821] : List Wire).toFinset⊆s6Step66EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step66EarlyControlPositiveArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step66EarlyControl_classEquality : compileHmrEqualityLog s6Step66EarlyControlPositiveArena [814, 821] 0 s6Step66EarlyControlLog.classWork=some (s6Step66EarlyControlEqualityArena,s6Step66EarlyControlLog.classWork,s6Step66EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step66EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step66EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step66EarlyControl_classOwned : ([769, 822, 814] : List Wire).toFinset⊆s6Step66EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step66EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step66EarlyControl_positiveBorrow : s6Step66EarlyControlZeroArena.checkBorrow (1) s6Step66EarlyControlLog.positiveWork=some s6Step66EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step66EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step66EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step66EarlyControlZeroArena s6Step66EarlyControlPositiveArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step66EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step66EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step66EarlyControl_class : compileHmrSourceClassLog s6Step66EarlyControlZeroArena false 769 s6Step66EarlyControlZeroPlan.top 0 814 s6Step66EarlyControlLog.positiveWork s6Step66EarlyControlLog.classWork=some s6Step66EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step66EarlyControlClassPlan s6Step66EarlyControlZeroArena false 769 s6Step66EarlyControlZeroPlan.top 0 814
  constructor
  · decide +kernel
  · exact s6Step66EarlyControl_classOwned
  · exact s6Step66EarlyControl_positiveBorrow
  · exact s6Step66EarlyControl_classEquality

private theorem s6Step66EarlyControl_entryRecordOwned : ([838, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846] : List Wire).toFinset⊆s6Step66EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step66EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step66EarlyControl_entrySigmaOwned : ([814, 254] : List Wire).toFinset⊆s6Step66EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step66EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step66EarlyControl_fitBorrow : s6Step66EarlyControlFlagArena.checkBorrow ((30-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846] : List Wire).length)) s6Step66EarlyControlLog.recordFresh=some s6Step66EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step66EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step66EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step66EarlyControlFittedArena,s6Step66EarlyControlFlagArena,s6Step66EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step66EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846] : List Wire).toFinset⊆s6Step66EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step66EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step66EarlyControl_fit : compileHmrRecordGrowLog s6Step66EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846] 30 s6Step66EarlyControlLog.recordFresh=some s6Step66EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step66EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step66EarlyControl_fitBorrow

private theorem s6Step66EarlyControl_flagsBorrow : s6Step66EarlyControlEqualityArena.checkBorrow (6) s6Step66EarlyControlLog.flagWork=some s6Step66EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step66EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step66EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step66EarlyControlEqualityArena s6Step66EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step66EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step66EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step66EarlyControl_flagsOwned : ([780, 253, 252, 251] : List Wire).toFinset⊆s6Step66EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step66EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step66EarlyControl_flags : compileHmrFlagsLog s6Step66EarlyControlClassPlan.equalityArena s6Step66EarlyControlClassPlan.equality.top 253 252 251 s6Step66EarlyControlLog.flagWork=some s6Step66EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step66EarlyControl_flagsOwned⟩
  · exact s6Step66EarlyControl_flagsBorrow

private theorem s6Step66EarlyControl_historyBorrow : s6Step66EarlyControlArena.checkBorrow ((30-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846] : List Wire).length)) s6Step66EarlyControlLog.recordFresh=some s6Step66EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step66EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step66EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step66EarlyControlArena s6Step66EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step66EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step66EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step66EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846] : List Wire).toFinset⊆s6Step66EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step66EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step66EarlyControl_history : compileHmrRecordGrowLog s6Step66EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846] 30 s6Step66EarlyControlLog.recordFresh=some s6Step66EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step66EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step66EarlyControl_historyBorrow

private theorem s6Step66EarlyControl_sigmaOwned : ([254, 814] : List Wire).toFinset⊆s6Step66EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step66EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step66EarlyControl_sigmaReleaseOwned : ([814] : List Wire).toFinset⊆s6Step66EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step66EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step66EarlyControl_sigmaRelease : s6Step66EarlyControlHistoryArena.release {814} (fun _ => false)=some s6Step66EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step66EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step66EarlyControlHistoryArena s6Step66EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [814] rfl rfl
    decide +kernel

private theorem s6Step66EarlyControl_sigma : compileHmrSigmaDropLog s6Step66EarlyControlHistoryArena false 0 0 254 814 []=some s6Step66EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step66EarlyControl_sigmaOwned⟩
  · exact s6Step66EarlyControl_sigmaRelease

private theorem s6Step66EarlyControl_zeroBorrow : s6Step66EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step66EarlyControlLog.zeroWork=some s6Step66EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step66EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step66EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step66EarlyControlArena s6Step66EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step66EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step66EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step66EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step66EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step66EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step66EarlyControl_zero : compileHmrEqualityLog s6Step66EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step66EarlyControlLog.zeroWork=some (s6Step66EarlyControlZeroArena,s6Step66EarlyControlLog.zeroWork,s6Step66EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step66EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step66EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step66EarlyControl_logged : s6Step66EarlyControlPlan.Logged s6Step66EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846] 769 814 254 253 252 251 838 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step66EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step66EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step66EarlyControl_zero
  · exact s6Step66EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step66EarlyControl_flags
  · exact s6Step66EarlyControl_fit
  · exact s6Step66EarlyControl_history
  · exact s6Step66EarlyControl_sigma
  · exact s6Step66EarlyControl_branch

private theorem s6Step66EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step66EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846] 769 814 254 253 252 251 838 30 s6Step66EarlyControlLog=some s6Step66EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step66EarlyControlPlan s6Step66EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846] 769 814 254 253 252 251 838 30 s6Step66EarlyControl_logged

private def s6Step66EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490],795⟩

private def s6Step66EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833],776⟩

private def s6Step66EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234],777⟩

private def s6Step66EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888],775⟩

private def s6Step66FrontBank : WindowBank := ⟨s6Step66EntryFRow,s6Step66EntryGRow,s6Step66EntryFvRow,s6Step66EntryGvRow⟩

private def s6Step66Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 843, 795]

private def s6Step66Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 869, 777]

private def s6Step66Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 776]

private def s6Step66Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 877, 775]

private theorem s6Step66Counter_apart : Disjoint s6Step66HeadFvAfter.live s6Step66CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step66HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step66Counter_borrowed : s6Step66HeadFvAfter.checkBorrow 4 s6Step66CounterWork=some s6Step66CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step66HeadFvAfter s6Step66CounterDuring s6Step66CounterWork.toFinset s6Step66Counter_bounded s6Step66Counter_apart rfl

private theorem s6Step66Counter_owned : (814::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step66HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step66HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step66Counter_checked : compileHmrCounterStepLog s6Step66HeadFvAfter true 814 [774, 773, 772, 771, 770, 769] s6Step66CounterWork=some s6Step66CounterDuring := by
  have owned : ∀q∈814::[774, 773, 772, 771, 770, 769],q∈s6Step66HeadFvAfter.live := fun q hq => s6Step66Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step66Counter_borrowed

private def s6Step66EntryFAfter : Arena := s6Step66EntryFBefore

private theorem s6Step66EntryBank_incomingDistinct : ([s6Step66EntryFRow,s6Step66EntryGRow,s6Step66EntryFvRow,s6Step66EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step66EntryF_Incoming : rowsOwned s6Step66EntryFBefore [s6Step66EntryFRow,s6Step66EntryGRow,s6Step66EntryFvRow,s6Step66EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step66EntryFRow,s6Step66EntryGRow,s6Step66EntryFvRow,s6Step66EntryGvRow] 0 s6Step66EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step66EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step66EntryBank_outgoingOwned : rowsOwned s6Step66EntryGvAfter [s6Step66EntryFOut,s6Step66EntryGOut,s6Step66EntryFvOut,s6Step66EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step66EntryGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step66EntryF_Outgoing : rowsOwned s6Step66EntryGvAfter [s6Step66EntryFOut,s6Step66EntryGOut,s6Step66EntryFvOut,s6Step66EntryGvOut] :=
  hmrRows_owned_drop s6Step66EntryGvAfter [s6Step66EntryFOut,s6Step66EntryGOut,s6Step66EntryFvOut,s6Step66EntryGvOut] 0 s6Step66EntryBank_outgoingOwned

private theorem s6Step66EntryF_distinct : (s6Step66EntryFRow.sign::s6Step66EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step66EntryF_owned : (s6Step66EntryFRow.sign::s6Step66EntryFRow.payload).toFinset⊆s6Step66EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step66EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step66EntryF_reserved : s6Step66EntryFBefore.reserve s6Step66EntryFFresh.toFinset=some s6Step66EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step66EntryFFresh,arenaWires]
  · norm_num [s6Step66EntryFBefore,s6Step66EntryFFresh,arenaWires]
  · simp only [s6Step66EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step66EntryF_checked : planRowResizeLog s6Step66EntryFBefore s6Step66EntryFRow 235 s6Step66EntryFFresh=
    some (s6Step66EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490],795⟩,growRow 795 s6Step66EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step66EntryFBefore s6Step66EntryFAfter s6Step66EntryFRow 235 s6Step66EntryFFresh
    s6Step66EntryF_distinct s6Step66EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step66EntryF_reserved
  have rowEq : WindowRow.mk (s6Step66EntryFRow.payload++s6Step66EntryFFresh) s6Step66EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step66EntryFvAfter : Arena := s6Step66EntryFBefore

private def s6Step66EntryFvBefore : Arena := s6Step66EntryFBefore

private theorem s6Step66EntryFv_Incoming : rowsOwned s6Step66EntryFvBefore [s6Step66EntryFvRow,s6Step66EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step66EntryFRow,s6Step66EntryGRow,s6Step66EntryFvRow,s6Step66EntryGvRow] 2 s6Step66EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step66EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step66EntryFv_Outgoing : rowsOwned s6Step66EntryGvAfter [s6Step66EntryFvOut,s6Step66EntryGvOut] :=
  hmrRows_owned_drop s6Step66EntryGvAfter [s6Step66EntryFOut,s6Step66EntryGOut,s6Step66EntryFvOut,s6Step66EntryGvOut] 2 s6Step66EntryBank_outgoingOwned

private theorem s6Step66EntryFv_distinct : (s6Step66EntryFvRow.sign::s6Step66EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step66EntryFv_owned : (s6Step66EntryFvRow.sign::s6Step66EntryFvRow.payload).toFinset⊆s6Step66EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step66EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step66EntryFv_reserved : s6Step66EntryFvBefore.reserve s6Step66EntryFvFresh.toFinset=some s6Step66EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step66EntryFvFresh,arenaWires]
  · norm_num [s6Step66EntryFvBefore,s6Step66EntryFBefore,s6Step66EntryFvFresh,arenaWires]
  · simp only [s6Step66EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step66EntryFv_checked : planRowResizeLog s6Step66EntryFvBefore s6Step66EntryFvRow 46 s6Step66EntryFvFresh=
    some (s6Step66EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833],776⟩,growRow 776 s6Step66EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step66EntryFvBefore s6Step66EntryFvAfter s6Step66EntryFvRow 46 s6Step66EntryFvFresh
    s6Step66EntryFv_distinct s6Step66EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step66EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step66EntryFvRow.payload++s6Step66EntryFvFresh) s6Step66EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step66EntryGAfter : Arena := s6Step66EntryFBefore

private def s6Step66EntryGBefore : Arena := s6Step66EntryFBefore

private theorem s6Step66EntryG_Incoming : rowsOwned s6Step66EntryGBefore [s6Step66EntryGRow,s6Step66EntryFvRow,s6Step66EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step66EntryFRow,s6Step66EntryGRow,s6Step66EntryFvRow,s6Step66EntryGvRow] 1 s6Step66EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step66EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step66EntryG_Outgoing : rowsOwned s6Step66EntryGvAfter [s6Step66EntryGOut,s6Step66EntryFvOut,s6Step66EntryGvOut] :=
  hmrRows_owned_drop s6Step66EntryGvAfter [s6Step66EntryFOut,s6Step66EntryGOut,s6Step66EntryFvOut,s6Step66EntryGvOut] 1 s6Step66EntryBank_outgoingOwned

private theorem s6Step66EntryG_distinct : (s6Step66EntryGRow.sign::s6Step66EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step66EntryG_owned : (s6Step66EntryGRow.sign::s6Step66EntryGRow.payload).toFinset⊆s6Step66EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step66EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step66EntryG_reserved : s6Step66EntryGBefore.reserve s6Step66EntryGFresh.toFinset=some s6Step66EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step66EntryGFresh,arenaWires]
  · norm_num [s6Step66EntryGBefore,s6Step66EntryFBefore,s6Step66EntryGFresh,arenaWires]
  · simp only [s6Step66EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step66EntryG_checked : planRowResizeLog s6Step66EntryGBefore s6Step66EntryGRow 235 s6Step66EntryGFresh=
    some (s6Step66EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234],777⟩,growRow 777 s6Step66EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step66EntryGBefore s6Step66EntryGAfter s6Step66EntryGRow 235 s6Step66EntryGFresh
    s6Step66EntryG_distinct s6Step66EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step66EntryG_reserved
  have rowEq : WindowRow.mk (s6Step66EntryGRow.payload++s6Step66EntryGFresh) s6Step66EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step66EntryGvBefore : Arena := s6Step66EntryFBefore

private theorem s6Step66EntryGv_Incoming : rowsOwned s6Step66EntryGvBefore [s6Step66EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step66EntryFRow,s6Step66EntryGRow,s6Step66EntryFvRow,s6Step66EntryGvRow] 3 s6Step66EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step66EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step66EntryGv_Outgoing : rowsOwned s6Step66EntryGvAfter [s6Step66EntryGvOut] :=
  hmrRows_owned_drop s6Step66EntryGvAfter [s6Step66EntryFOut,s6Step66EntryGOut,s6Step66EntryFvOut,s6Step66EntryGvOut] 3 s6Step66EntryBank_outgoingOwned

private theorem s6Step66EntryGv_distinct : (s6Step66EntryGvRow.sign::s6Step66EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step66EntryGv_owned : (s6Step66EntryGvRow.sign::s6Step66EntryGvRow.payload).toFinset⊆s6Step66EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step66EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step66EntryGv_reserved : s6Step66EntryGvBefore.reserve s6Step66EntryGvFresh.toFinset=some s6Step66EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step66EntryGvFresh,arenaWires]
  · norm_num [s6Step66EntryGvBefore,s6Step66EntryFBefore,s6Step66EntryGvFresh,arenaWires]
  · simp only [s6Step66EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step66EntryGv_checked : planRowResizeLog s6Step66EntryGvBefore s6Step66EntryGvRow 46 s6Step66EntryGvFresh=
    some (s6Step66EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888],775⟩,growRow 775 s6Step66EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step66EntryGvBefore s6Step66EntryGvAfter s6Step66EntryGvRow 46 s6Step66EntryGvFresh
    s6Step66EntryGv_distinct s6Step66EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step66EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step66EntryGvRow.payload++s6Step66EntryGvFresh) s6Step66EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step66EntryBank_rows : planWindowRowsLog s6Step66EntryFBefore [(s6Step66EntryFRow,235),(s6Step66EntryGRow,235),(s6Step66EntryFvRow,46),(s6Step66EntryGvRow,46)] [s6Step66EntryFFresh,s6Step66EntryGFresh,s6Step66EntryFvFresh,s6Step66EntryGvFresh]=
    some (s6Step66EntryGvAfter,[s6Step66EntryFOut,s6Step66EntryGOut,s6Step66EntryFvOut,s6Step66EntryGvOut],(growRow 795 s6Step66EntryFFresh ++ (growRow 777 s6Step66EntryGFresh ++ (growRow 776 s6Step66EntryFvFresh ++ (growRow 775 s6Step66EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step66EntryGvAfter [] []=some (s6Step66EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step66EntryGvBefore s6Step66EntryGvAfter s6Step66EntryGvAfter
    s6Step66EntryGvRow s6Step66EntryGvOut 46 s6Step66EntryGvFresh [] [] []
    (growRow 775 s6Step66EntryGvFresh) ([]) s6Step66EntryGv_Incoming s6Step66EntryGv_checked h4 s6Step66EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step66EntryFvBefore s6Step66EntryFvAfter s6Step66EntryGvAfter
    s6Step66EntryFvRow s6Step66EntryFvOut 46 s6Step66EntryFvFresh [(s6Step66EntryGvRow,46)] [s6Step66EntryGvFresh] [s6Step66EntryGvOut]
    (growRow 776 s6Step66EntryFvFresh) ((growRow 775 s6Step66EntryGvFresh ++ [])) s6Step66EntryFv_Incoming s6Step66EntryFv_checked h3 s6Step66EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step66EntryGBefore s6Step66EntryGAfter s6Step66EntryGvAfter
    s6Step66EntryGRow s6Step66EntryGOut 235 s6Step66EntryGFresh [(s6Step66EntryFvRow,46),(s6Step66EntryGvRow,46)] [s6Step66EntryFvFresh,s6Step66EntryGvFresh] [s6Step66EntryFvOut,s6Step66EntryGvOut]
    (growRow 777 s6Step66EntryGFresh) ((growRow 776 s6Step66EntryFvFresh ++ (growRow 775 s6Step66EntryGvFresh ++ []))) s6Step66EntryG_Incoming s6Step66EntryG_checked h2 s6Step66EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step66EntryFBefore s6Step66EntryFAfter s6Step66EntryGvAfter
    s6Step66EntryFRow s6Step66EntryFOut 235 s6Step66EntryFFresh [(s6Step66EntryGRow,235),(s6Step66EntryFvRow,46),(s6Step66EntryGvRow,46)] [s6Step66EntryGFresh,s6Step66EntryFvFresh,s6Step66EntryGvFresh] [s6Step66EntryGOut,s6Step66EntryFvOut,s6Step66EntryGvOut]
    (growRow 795 s6Step66EntryFFresh) ((growRow 777 s6Step66EntryGFresh ++ (growRow 776 s6Step66EntryFvFresh ++ (growRow 775 s6Step66EntryGvFresh ++ [])))) s6Step66EntryF_Incoming s6Step66EntryF_checked h1 s6Step66EntryF_Outgoing
  exact h0

private theorem s6Step66EntryBank_checked : compileHmrBankResizeLog .entry s6Step66EntryFBefore ⟨s6Step66EntryFRow,s6Step66EntryGRow,s6Step66EntryFvRow,s6Step66EntryGvRow⟩ ⟨235,235,46,46⟩ [s6Step66EntryFFresh,s6Step66EntryGFresh,s6Step66EntryFvFresh,s6Step66EntryGvFresh]=
    some (s6Step66EntryGvAfter,⟨s6Step66EntryFOut,s6Step66EntryGOut,s6Step66EntryFvOut,s6Step66EntryGvOut⟩,(growRow 795 s6Step66EntryFFresh ++ (growRow 777 s6Step66EntryGFresh ++ (growRow 776 s6Step66EntryFvFresh ++ (growRow 775 s6Step66EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step66EntryBank_rows]
  rfl

private def s6Step66ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,490),(491,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step66ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step66ExitFBefore : Arena := s6Step66ExitGAfter

private def s6Step66ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 843],795⟩

private def s6Step66ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875],776⟩

private def s6Step66ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 869],777⟩

private def s6Step66ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 877],775⟩

private theorem s6Step66ExitBank_incomingDistinct : ([s6Step66ExitGRow,s6Step66ExitFRow,s6Step66ExitFvRow,s6Step66ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step66ExitF_Incoming : rowsOwned s6Step66ExitFBefore [s6Step66ExitFRow,s6Step66ExitFvRow,s6Step66ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step66ExitGRow,s6Step66ExitFRow,s6Step66ExitFvRow,s6Step66ExitGvRow] 1 s6Step66ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step66ExitFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step66ExitBank_outgoingOwned : rowsOwned s6Step66ExitGvAfter [s6Step66ExitGOut,s6Step66ExitFOut,s6Step66ExitFvOut,s6Step66ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step66ExitGvAfter (fun q => ([(0,490),(491,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step66ExitF_Outgoing : rowsOwned s6Step66ExitGvAfter [s6Step66ExitFOut,s6Step66ExitFvOut,s6Step66ExitGvOut] :=
  hmrRows_owned_drop s6Step66ExitGvAfter [s6Step66ExitGOut,s6Step66ExitFOut,s6Step66ExitFvOut,s6Step66ExitGvOut] 1 s6Step66ExitBank_outgoingOwned

private theorem s6Step66ExitF_distinct : (s6Step66ExitFRow.sign::s6Step66ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step66ExitF_owned : (s6Step66ExitFRow.sign::s6Step66ExitFRow.payload).toFinset⊆s6Step66ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step66ExitFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step66ExitF_retired : s6Step66ExitFBefore.retireSet s6Step66ExitFExtra.toFinset=s6Step66ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step66ExitFBefore s6Step66ExitFAfter s6Step66ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step66ExitFBefore s6Step66ExitFAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,490),(491,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step66ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step66ExitF_checked : planRowResizeLog s6Step66ExitFBefore s6Step66ExitFRow 234 []=
    some (s6Step66ExitFAfter,s6Step66ExitFOut,shrinkRow 795 s6Step66ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step66ExitFBefore s6Step66ExitFRow 234 s6Step66ExitF_distinct s6Step66ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step66ExitFRow.payload.take 234) s6Step66ExitFRow.sign=s6Step66ExitFOut := by decide +kernel
  have hi : s6Step66ExitFRow.payload.drop 234=s6Step66ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step66ExitF_retired] at result
  exact result

private def s6Step66ExitFvAfter : Arena := s6Step66ExitFAfter

private def s6Step66ExitFvBefore : Arena := s6Step66ExitFAfter

private theorem s6Step66ExitFv_Incoming : rowsOwned s6Step66ExitFvBefore [s6Step66ExitFvRow,s6Step66ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step66ExitGRow,s6Step66ExitFRow,s6Step66ExitFvRow,s6Step66ExitGvRow] 2 s6Step66ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step66ExitFvBefore (fun q => ([(0,490),(491,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step66ExitFv_Outgoing : rowsOwned s6Step66ExitGvAfter [s6Step66ExitFvOut,s6Step66ExitGvOut] :=
  hmrRows_owned_drop s6Step66ExitGvAfter [s6Step66ExitGOut,s6Step66ExitFOut,s6Step66ExitFvOut,s6Step66ExitGvOut] 2 s6Step66ExitBank_outgoingOwned

private theorem s6Step66ExitFv_distinct : (s6Step66ExitFvRow.sign::s6Step66ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step66ExitFv_owned : (s6Step66ExitFvRow.sign::s6Step66ExitFvRow.payload).toFinset⊆s6Step66ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step66ExitFvBefore (fun q => ([(0,490),(491,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step66ExitFv_reserved : s6Step66ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step66ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step66ExitFv_checked : planRowResizeLog s6Step66ExitFvBefore s6Step66ExitFvRow 47 []=
    some (s6Step66ExitFvAfter,s6Step66ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step66ExitFvBefore s6Step66ExitFvAfter s6Step66ExitFvRow 47 []
    s6Step66ExitFv_distinct s6Step66ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step66ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step66ExitFvRow.payload++[]) s6Step66ExitFvRow.sign=s6Step66ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step66ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step66ExitG_Incoming : rowsOwned s6Step66ExitGBefore [s6Step66ExitGRow,s6Step66ExitFRow,s6Step66ExitFvRow,s6Step66ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step66ExitGRow,s6Step66ExitFRow,s6Step66ExitFvRow,s6Step66ExitGvRow] 0 s6Step66ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step66ExitGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step66ExitG_Outgoing : rowsOwned s6Step66ExitGvAfter [s6Step66ExitGOut,s6Step66ExitFOut,s6Step66ExitFvOut,s6Step66ExitGvOut] :=
  hmrRows_owned_drop s6Step66ExitGvAfter [s6Step66ExitGOut,s6Step66ExitFOut,s6Step66ExitFvOut,s6Step66ExitGvOut] 0 s6Step66ExitBank_outgoingOwned

private theorem s6Step66ExitG_distinct : (s6Step66ExitGRow.sign::s6Step66ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step66ExitG_owned : (s6Step66ExitGRow.sign::s6Step66ExitGRow.payload).toFinset⊆s6Step66ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step66ExitGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step66ExitG_retired : s6Step66ExitGBefore.retireSet s6Step66ExitGExtra.toFinset=s6Step66ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step66ExitGBefore s6Step66ExitGAfter s6Step66ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step66ExitGBefore s6Step66ExitGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step66ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step66ExitG_checked : planRowResizeLog s6Step66ExitGBefore s6Step66ExitGRow 235 []=
    some (s6Step66ExitGAfter,s6Step66ExitGOut,shrinkRow 777 s6Step66ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step66ExitGBefore s6Step66ExitGRow 235 s6Step66ExitG_distinct s6Step66ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step66ExitGRow.payload.take 235) s6Step66ExitGRow.sign=s6Step66ExitGOut := by decide +kernel
  have hi : s6Step66ExitGRow.payload.drop 235=s6Step66ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step66ExitG_retired] at result
  exact result

private def s6Step66ExitGvBefore : Arena := s6Step66ExitFAfter

private theorem s6Step66ExitGv_Incoming : rowsOwned s6Step66ExitGvBefore [s6Step66ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step66ExitGRow,s6Step66ExitFRow,s6Step66ExitFvRow,s6Step66ExitGvRow] 3 s6Step66ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step66ExitGvBefore (fun q => ([(0,490),(491,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step66ExitGv_Outgoing : rowsOwned s6Step66ExitGvAfter [s6Step66ExitGvOut] :=
  hmrRows_owned_drop s6Step66ExitGvAfter [s6Step66ExitGOut,s6Step66ExitFOut,s6Step66ExitFvOut,s6Step66ExitGvOut] 3 s6Step66ExitBank_outgoingOwned

private theorem s6Step66ExitGv_distinct : (s6Step66ExitGvRow.sign::s6Step66ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step66ExitGv_owned : (s6Step66ExitGvRow.sign::s6Step66ExitGvRow.payload).toFinset⊆s6Step66ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step66ExitGvBefore (fun q => ([(0,490),(491,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step66ExitGv_retired : s6Step66ExitGvBefore.retireSet s6Step66ExitGvExtra.toFinset=s6Step66ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step66ExitGvBefore s6Step66ExitGvAfter s6Step66ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step66ExitGvBefore s6Step66ExitGvAfter (fun q => ([(0,490),(491,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,490),(491,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step66ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step66ExitGv_checked : planRowResizeLog s6Step66ExitGvBefore s6Step66ExitGvRow 46 []=
    some (s6Step66ExitGvAfter,s6Step66ExitGvOut,shrinkRow 775 s6Step66ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step66ExitGvBefore s6Step66ExitGvRow 46 s6Step66ExitGv_distinct s6Step66ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step66ExitGvRow.payload.take 46) s6Step66ExitGvRow.sign=s6Step66ExitGvOut := by decide +kernel
  have hi : s6Step66ExitGvRow.payload.drop 46=s6Step66ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step66ExitGv_retired] at result
  exact result

private theorem s6Step66ExitBank_rows : planWindowRowsLog s6Step66ExitGBefore [(s6Step66ExitGRow,235),(s6Step66ExitFRow,234),(s6Step66ExitFvRow,47),(s6Step66ExitGvRow,46)] [[],[],[],[]]=
    some (s6Step66ExitGvAfter,[s6Step66ExitGOut,s6Step66ExitFOut,s6Step66ExitFvOut,s6Step66ExitGvOut],(shrinkRow 777 s6Step66ExitGExtra ++ (shrinkRow 795 s6Step66ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step66ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step66ExitGvAfter [] []=some (s6Step66ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step66ExitGvBefore s6Step66ExitGvAfter s6Step66ExitGvAfter
    s6Step66ExitGvRow s6Step66ExitGvOut 46 [] [] [] []
    (shrinkRow 775 s6Step66ExitGvExtra) ([]) s6Step66ExitGv_Incoming s6Step66ExitGv_checked h4 s6Step66ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step66ExitFvBefore s6Step66ExitFvAfter s6Step66ExitGvAfter
    s6Step66ExitFvRow s6Step66ExitFvOut 47 [] [(s6Step66ExitGvRow,46)] [[]] [s6Step66ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step66ExitGvExtra ++ [])) s6Step66ExitFv_Incoming s6Step66ExitFv_checked h3 s6Step66ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step66ExitFBefore s6Step66ExitFAfter s6Step66ExitGvAfter
    s6Step66ExitFRow s6Step66ExitFOut 234 [] [(s6Step66ExitFvRow,47),(s6Step66ExitGvRow,46)] [[],[]] [s6Step66ExitFvOut,s6Step66ExitGvOut]
    (shrinkRow 795 s6Step66ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step66ExitGvExtra ++ []))) s6Step66ExitF_Incoming s6Step66ExitF_checked h2 s6Step66ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step66ExitGBefore s6Step66ExitGAfter s6Step66ExitGvAfter
    s6Step66ExitGRow s6Step66ExitGOut 235 [] [(s6Step66ExitFRow,234),(s6Step66ExitFvRow,47),(s6Step66ExitGvRow,46)] [[],[],[]] [s6Step66ExitFOut,s6Step66ExitFvOut,s6Step66ExitGvOut]
    (shrinkRow 777 s6Step66ExitGExtra) ((shrinkRow 795 s6Step66ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step66ExitGvExtra ++ [])))) s6Step66ExitG_Incoming s6Step66ExitG_checked h1 s6Step66ExitG_Outgoing
  exact h0

private theorem s6Step66ExitBank_checked : compileHmrBankResizeLog .exit s6Step66ExitGBefore ⟨s6Step66ExitFRow,s6Step66ExitGRow,s6Step66ExitFvRow,s6Step66ExitGvRow⟩ ⟨234,235,47,46⟩ [[],[],[],[]]=
    some (s6Step66ExitGvAfter,⟨s6Step66ExitFOut,s6Step66ExitGOut,s6Step66ExitFvOut,s6Step66ExitGvOut⟩,(shrinkRow 777 s6Step66ExitGExtra ++ (shrinkRow 795 s6Step66ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step66ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step66ExitBank_rows]
  rfl

private theorem s6Step66Add0_apart : Disjoint s6Step66Add0Arena.live s6Step66Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step66Add0Arena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step66Add0_card : s6Step66Add0Arena.live.card=865 := by
  decide +kernel

private theorem s6Step66Add0_borrowed : s6Step66Add0Arena.checkBorrow (hmrHybridCount s6Step66Add0Arena s6Step66Add0B.length) s6Step66Add0Work=some s6Step66Add0During := by
  have len : s6Step66Add0Work.length=hmrHybridCount s6Step66Add0Arena s6Step66Add0B.length := by
    rw [hmrHybridCount,s6Step66Add0_card]
    decide +kernel
  have nd : s6Step66Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step66Add0Arena s6Step66Add0During s6Step66Add0Work.toFinset s6Step66Add0_bounded s6Step66Add0_apart rfl

private theorem s6Step66Add0_distinct : (822::838::821::(s6Step66Add0A++s6Step66Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step66Add0_owned : (822::838::821::(s6Step66Add0A++s6Step66Add0B)).toFinset⊆s6Step66Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step66Add0Arena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step66Add0_checked : compileHmrHybridCinLog s6Step66Add0Arena 838 822 821 s6Step66Add0A s6Step66Add0B s6Step66Add0Work=some s6Step66Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step66Add0Arena s6Step66Add0During 838 822 821 s6Step66Add0A s6Step66Add0B s6Step66Add0Work
    (by decide +kernel) (by decide +kernel) s6Step66Add0_distinct
    (fun q hq => s6Step66Add0_owned (List.mem_toFinset.mpr hq)) s6Step66Add0_borrowed

private theorem s6Step66Add1_apart : Disjoint s6Step66Add1Arena.live s6Step66Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step66Add1Arena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step66Add1_card : s6Step66Add1Arena.live.card=865 := by
  decide +kernel

private theorem s6Step66Add1_borrowed : s6Step66Add1Arena.checkBorrow (hmrHybridCount s6Step66Add1Arena s6Step66Add1B.length) s6Step66Add1Work=some s6Step66Add1During := by
  have len : s6Step66Add1Work.length=hmrHybridCount s6Step66Add1Arena s6Step66Add1B.length := by
    rw [hmrHybridCount,s6Step66Add1_card]
    decide +kernel
  have nd : s6Step66Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step66Add1Arena s6Step66Add1During s6Step66Add1Work.toFinset s6Step66Add1_bounded s6Step66Add1_apart rfl

private theorem s6Step66Add1_distinct : (822::838::821::(s6Step66Add1A++s6Step66Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step66Add1_owned : (822::838::821::(s6Step66Add1A++s6Step66Add1B)).toFinset⊆s6Step66Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step66Add1Arena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step66Add1_checked : compileHmrHybridCinLog s6Step66Add1Arena 838 822 821 s6Step66Add1A s6Step66Add1B s6Step66Add1Work=some s6Step66Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step66Add1Arena s6Step66Add1During 838 822 821 s6Step66Add1A s6Step66Add1B s6Step66Add1Work
    (by decide +kernel) (by decide +kernel) s6Step66Add1_distinct
    (fun q hq => s6Step66Add1_owned (List.mem_toFinset.mpr hq)) s6Step66Add1_borrowed

private theorem s6Step66F4_apart : Disjoint (s6Step66Add0A++s6Step66Add0B).toFinset (s6Step66Add1A++s6Step66Add1B).toFinset := by
  have nd : ((s6Step66Add0A++s6Step66Add0B)++(s6Step66Add1A++s6Step66Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step66F4_carry : s6Step66F4FlagArena.checkBorrow 1 [821]=some s6Step66Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step66F4FlagArena,s6Step66HeadFvAfter,arenaWires]
  · change s6Step66Add0Arena.live=(s6Step66HeadFvAfter.live∪{822})∪{821}
    apply hmrArena_union_pair_of_filter_check s6Step66HeadFvAfter s6Step66Add0Arena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 822 821 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step66F4_distinct : (814::838::822::821::((s6Step66Add0A++s6Step66Add1A)++(s6Step66Add0B++s6Step66Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step66F4_flag : s6Step66HeadFvAfter.checkBorrow 1 [822]=some s6Step66F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step66HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step66F4_owned : (814::838::((s6Step66Add0A++s6Step66Add1A)++(s6Step66Add0B++s6Step66Add1B))).toFinset⊆s6Step66HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step66HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step66F4_checked : compileHmrHybridF4Log s6Step66HeadFvAfter 814 838 s6Step66Add0A s6Step66Add0B s6Step66Add1A s6Step66Add1B [822] [821] s6Step66Add0Work s6Step66Add1Work=some s6Step66F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step66HeadFvAfter s6Step66F4FlagArena s6Step66Add0Arena s6Step66Add0During s6Step66Add1During 814 838
    s6Step66Add0A s6Step66Add0B s6Step66Add1A s6Step66Add1B [822] [821] s6Step66Add0Work s6Step66Add1Work
    (fun q hq => s6Step66F4_owned (List.mem_toFinset.mpr hq)) s6Step66F4_flag s6Step66F4_carry
    s6Step66F4_distinct s6Step66F4_apart s6Step66Add0_checked s6Step66Add1_checked

private theorem s6Step66Front_branch : s6Step66FrontSigmaArena.checkBorrow 1 [838]=some s6Step66HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step66FrontSigmaArena,s6Step66EntryGvAfter,s6Step66EntryFBefore,arenaWires]
  · change s6Step66HeadGBefore.live=(s6Step66EntryGvAfter.live∪{814})∪{838}
    apply hmrArena_union_pair_of_filter_check s6Step66EntryGvAfter s6Step66HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 814 838 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step66Front_entry : HmrFrontEntryValid s6Step66EntryFBefore s6Step66FrontBank 235 46 ⟨234,235,47,46⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step66FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step66EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step66EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step66FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step66Front_sigma : s6Step66EntryGvAfter.checkBorrow 1 [814]=some s6Step66FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step66EntryGvAfter,s6Step66EntryFBefore,arenaWires]
  · rfl

private def s6Step66HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step66HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step66HeadFBefore : Arena := s6Step66HeadGAfter

private def s6Step66HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490],795⟩

private def s6Step66HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833],776⟩

private def s6Step66HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234],777⟩

private def s6Step66HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888],775⟩

private theorem s6Step66HeadBank_incomingDistinct : ([s6Step66HeadGRow,s6Step66HeadFRow,s6Step66HeadGvRow,s6Step66HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step66HeadF_Incoming : rowsOwned s6Step66HeadFBefore [s6Step66HeadFRow,s6Step66HeadGvRow,s6Step66HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step66HeadGRow,s6Step66HeadFRow,s6Step66HeadGvRow,s6Step66HeadFvRow] 1 s6Step66HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step66HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step66HeadBank_outgoingOwned : rowsOwned s6Step66HeadFvAfter [s6Step66HeadGOut,s6Step66HeadFOut,s6Step66HeadGvOut,s6Step66HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step66HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step66HeadF_Outgoing : rowsOwned s6Step66HeadFvAfter [s6Step66HeadFOut,s6Step66HeadGvOut,s6Step66HeadFvOut] :=
  hmrRows_owned_drop s6Step66HeadFvAfter [s6Step66HeadGOut,s6Step66HeadFOut,s6Step66HeadGvOut,s6Step66HeadFvOut] 1 s6Step66HeadBank_outgoingOwned

private theorem s6Step66HeadF_distinct : (s6Step66HeadFRow.sign::s6Step66HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step66HeadF_owned : (s6Step66HeadFRow.sign::s6Step66HeadFRow.payload).toFinset⊆s6Step66HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step66HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step66HeadF_reserved : s6Step66HeadFBefore.reserve s6Step66HeadFFresh.toFinset=some s6Step66HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step66HeadFFresh,arenaWires]
  · norm_num [s6Step66HeadFBefore,s6Step66HeadGAfter,s6Step66HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step66HeadFBefore s6Step66HeadFAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step66HeadFFresh rfl rfl
    · norm_num [s6Step66HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step66HeadF_checked : planRowResizeLog s6Step66HeadFBefore s6Step66HeadFRow 236 s6Step66HeadFFresh=
    some (s6Step66HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 843],795⟩,growRow 795 s6Step66HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step66HeadFBefore s6Step66HeadFAfter s6Step66HeadFRow 236 s6Step66HeadFFresh
    s6Step66HeadF_distinct s6Step66HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step66HeadF_reserved
  have rowEq : WindowRow.mk (s6Step66HeadFRow.payload++s6Step66HeadFFresh) s6Step66HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 843],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step66HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step66HeadFvBefore : Arena := s6Step66HeadGvAfter

private theorem s6Step66HeadFv_Incoming : rowsOwned s6Step66HeadFvBefore [s6Step66HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step66HeadGRow,s6Step66HeadFRow,s6Step66HeadGvRow,s6Step66HeadFvRow] 3 s6Step66HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step66HeadFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step66HeadFv_Outgoing : rowsOwned s6Step66HeadFvAfter [s6Step66HeadFvOut] :=
  hmrRows_owned_drop s6Step66HeadFvAfter [s6Step66HeadGOut,s6Step66HeadFOut,s6Step66HeadGvOut,s6Step66HeadFvOut] 3 s6Step66HeadBank_outgoingOwned

private theorem s6Step66HeadFv_distinct : (s6Step66HeadFvRow.sign::s6Step66HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step66HeadFv_owned : (s6Step66HeadFvRow.sign::s6Step66HeadFvRow.payload).toFinset⊆s6Step66HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step66HeadFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step66HeadFv_reserved : s6Step66HeadFvBefore.reserve s6Step66HeadFvFresh.toFinset=some s6Step66HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step66HeadFvFresh,arenaWires]
  · norm_num [s6Step66HeadFvBefore,s6Step66HeadGvAfter,s6Step66HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step66HeadFvBefore s6Step66HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step66HeadFvFresh rfl rfl
    · norm_num [s6Step66HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step66HeadFv_checked : planRowResizeLog s6Step66HeadFvBefore s6Step66HeadFvRow 47 s6Step66HeadFvFresh=
    some (s6Step66HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875],776⟩,growRow 776 s6Step66HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step66HeadFvBefore s6Step66HeadFvAfter s6Step66HeadFvRow 47 s6Step66HeadFvFresh
    s6Step66HeadFv_distinct s6Step66HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step66HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step66HeadFvRow.payload++s6Step66HeadFvFresh) s6Step66HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step66HeadG_Incoming : rowsOwned s6Step66HeadGBefore [s6Step66HeadGRow,s6Step66HeadFRow,s6Step66HeadGvRow,s6Step66HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step66HeadGRow,s6Step66HeadFRow,s6Step66HeadGvRow,s6Step66HeadFvRow] 0 s6Step66HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step66HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step66HeadG_Outgoing : rowsOwned s6Step66HeadFvAfter [s6Step66HeadGOut,s6Step66HeadFOut,s6Step66HeadGvOut,s6Step66HeadFvOut] :=
  hmrRows_owned_drop s6Step66HeadFvAfter [s6Step66HeadGOut,s6Step66HeadFOut,s6Step66HeadGvOut,s6Step66HeadFvOut] 0 s6Step66HeadBank_outgoingOwned

private theorem s6Step66HeadG_distinct : (s6Step66HeadGRow.sign::s6Step66HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step66HeadG_owned : (s6Step66HeadGRow.sign::s6Step66HeadGRow.payload).toFinset⊆s6Step66HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step66HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step66HeadG_reserved : s6Step66HeadGBefore.reserve s6Step66HeadGFresh.toFinset=some s6Step66HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step66HeadGFresh,arenaWires]
  · norm_num [s6Step66HeadGBefore,s6Step66HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step66HeadGBefore s6Step66HeadGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step66HeadGFresh rfl rfl
    · norm_num [s6Step66HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step66HeadG_checked : planRowResizeLog s6Step66HeadGBefore s6Step66HeadGRow 236 s6Step66HeadGFresh=
    some (s6Step66HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 869],777⟩,growRow 777 s6Step66HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step66HeadGBefore s6Step66HeadGAfter s6Step66HeadGRow 236 s6Step66HeadGFresh
    s6Step66HeadG_distinct s6Step66HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step66HeadG_reserved
  have rowEq : WindowRow.mk (s6Step66HeadGRow.payload++s6Step66HeadGFresh) s6Step66HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 869],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step66HeadGvBefore : Arena := s6Step66HeadFAfter

private theorem s6Step66HeadGv_Incoming : rowsOwned s6Step66HeadGvBefore [s6Step66HeadGvRow,s6Step66HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step66HeadGRow,s6Step66HeadFRow,s6Step66HeadGvRow,s6Step66HeadFvRow] 2 s6Step66HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step66HeadGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step66HeadGv_Outgoing : rowsOwned s6Step66HeadFvAfter [s6Step66HeadGvOut,s6Step66HeadFvOut] :=
  hmrRows_owned_drop s6Step66HeadFvAfter [s6Step66HeadGOut,s6Step66HeadFOut,s6Step66HeadGvOut,s6Step66HeadFvOut] 2 s6Step66HeadBank_outgoingOwned

private theorem s6Step66HeadGv_distinct : (s6Step66HeadGvRow.sign::s6Step66HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step66HeadGv_owned : (s6Step66HeadGvRow.sign::s6Step66HeadGvRow.payload).toFinset⊆s6Step66HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step66HeadGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step66HeadGv_reserved : s6Step66HeadGvBefore.reserve s6Step66HeadGvFresh.toFinset=some s6Step66HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step66HeadGvFresh,arenaWires]
  · norm_num [s6Step66HeadGvBefore,s6Step66HeadFAfter,s6Step66HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step66HeadGvBefore s6Step66HeadGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step66HeadGvFresh rfl rfl
    · norm_num [s6Step66HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step66HeadGv_checked : planRowResizeLog s6Step66HeadGvBefore s6Step66HeadGvRow 47 s6Step66HeadGvFresh=
    some (s6Step66HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 877],775⟩,growRow 775 s6Step66HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step66HeadGvBefore s6Step66HeadGvAfter s6Step66HeadGvRow 47 s6Step66HeadGvFresh
    s6Step66HeadGv_distinct s6Step66HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step66HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step66HeadGvRow.payload++s6Step66HeadGvFresh) s6Step66HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 877],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step66HeadBank_rows : planWindowRowsLog s6Step66HeadGBefore [(s6Step66HeadGRow,236),(s6Step66HeadFRow,236),(s6Step66HeadGvRow,47),(s6Step66HeadFvRow,47)] [s6Step66HeadGFresh,s6Step66HeadFFresh,s6Step66HeadGvFresh,s6Step66HeadFvFresh]=
    some (s6Step66HeadFvAfter,[s6Step66HeadGOut,s6Step66HeadFOut,s6Step66HeadGvOut,s6Step66HeadFvOut],(growRow 777 s6Step66HeadGFresh ++ (growRow 795 s6Step66HeadFFresh ++ (growRow 775 s6Step66HeadGvFresh ++ (growRow 776 s6Step66HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step66HeadFvAfter [] []=some (s6Step66HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step66HeadFvBefore s6Step66HeadFvAfter s6Step66HeadFvAfter
    s6Step66HeadFvRow s6Step66HeadFvOut 47 s6Step66HeadFvFresh [] [] []
    (growRow 776 s6Step66HeadFvFresh) ([]) s6Step66HeadFv_Incoming s6Step66HeadFv_checked h4 s6Step66HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step66HeadGvBefore s6Step66HeadGvAfter s6Step66HeadFvAfter
    s6Step66HeadGvRow s6Step66HeadGvOut 47 s6Step66HeadGvFresh [(s6Step66HeadFvRow,47)] [s6Step66HeadFvFresh] [s6Step66HeadFvOut]
    (growRow 775 s6Step66HeadGvFresh) ((growRow 776 s6Step66HeadFvFresh ++ [])) s6Step66HeadGv_Incoming s6Step66HeadGv_checked h3 s6Step66HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step66HeadFBefore s6Step66HeadFAfter s6Step66HeadFvAfter
    s6Step66HeadFRow s6Step66HeadFOut 236 s6Step66HeadFFresh [(s6Step66HeadGvRow,47),(s6Step66HeadFvRow,47)] [s6Step66HeadGvFresh,s6Step66HeadFvFresh] [s6Step66HeadGvOut,s6Step66HeadFvOut]
    (growRow 795 s6Step66HeadFFresh) ((growRow 775 s6Step66HeadGvFresh ++ (growRow 776 s6Step66HeadFvFresh ++ []))) s6Step66HeadF_Incoming s6Step66HeadF_checked h2 s6Step66HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step66HeadGBefore s6Step66HeadGAfter s6Step66HeadFvAfter
    s6Step66HeadGRow s6Step66HeadGOut 236 s6Step66HeadGFresh [(s6Step66HeadFRow,236),(s6Step66HeadGvRow,47),(s6Step66HeadFvRow,47)] [s6Step66HeadFFresh,s6Step66HeadGvFresh,s6Step66HeadFvFresh] [s6Step66HeadFOut,s6Step66HeadGvOut,s6Step66HeadFvOut]
    (growRow 777 s6Step66HeadGFresh) ((growRow 795 s6Step66HeadFFresh ++ (growRow 775 s6Step66HeadGvFresh ++ (growRow 776 s6Step66HeadFvFresh ++ [])))) s6Step66HeadG_Incoming s6Step66HeadG_checked h1 s6Step66HeadG_Outgoing
  exact h0

private theorem s6Step66HeadBank_checked : compileHmrBankResizeLog .headroom s6Step66HeadGBefore ⟨s6Step66HeadFRow,s6Step66HeadGRow,s6Step66HeadFvRow,s6Step66HeadGvRow⟩ ⟨236,236,47,47⟩ [s6Step66HeadGFresh,s6Step66HeadFFresh,s6Step66HeadGvFresh,s6Step66HeadFvFresh]=
    some (s6Step66HeadFvAfter,⟨s6Step66HeadFOut,s6Step66HeadGOut,s6Step66HeadFvOut,s6Step66HeadGvOut⟩,(growRow 777 s6Step66HeadGFresh ++ (growRow 795 s6Step66HeadFFresh ++ (growRow 775 s6Step66HeadGvFresh ++ (growRow 776 s6Step66HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step66HeadBank_rows]
  rfl

private theorem s6Step66Front_checked : compileHmrSourceFrontLog s6Step66EntryFBefore s6Step66FrontBank 235 46 ⟨234,235,47,46⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step66FrontLog=some s6Step66FrontPlan := by
  have pairEq : s6Step66FrontPair=⟨s6Step66HeadFRow,s6Step66HeadGRow,s6Step66HeadFvRow,s6Step66HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step66FrontHead=⟨s6Step66ExitFRow,s6Step66ExitGRow,s6Step66ExitFvRow,s6Step66ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step66Add0A=s6Step66FrontHead.f.wires := by decide +kernel
  have gEq : s6Step66Add0B=s6Step66FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step66Add1A=s6Step66FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step66Add1B=s6Step66FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step66EntryFBefore s6Step66FrontBank 235 46 ⟨234,235,47,46⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step66FrontLog s6Step66FrontPlan
  · exact s6Step66Front_entry
  · exact s6Step66EntryBank_checked
  · exact s6Step66Front_sigma
  · rfl
  · exact s6Step66Front_branch
  · rfl
  · simpa only [s6Step66FrontPlan,pairEq] using s6Step66HeadBank_checked
  · simpa only [s6Step66FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step66F4_checked
  · exact s6Step66Counter_checked
  · rfl
  · simpa only [s6Step66FrontPlan,headEq] using s6Step66ExitBank_checked

private theorem s6Step66Complete_explicit_checked : compileHmrEarlyStepLog s6Step66EntryFBefore s6Step66FrontBank 235 46 ⟨234,235,47,46⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846] 30 s6Step66CompleteLog=some s6Step66CompletePlan := by
  let Q := s6Step66EarlyControlPlan
  have hq := s6Step66EarlyControl_plan_checked
  have fv1 : s6Step66CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step66CompleteOut.fv.payload[2]?.getD s6Step66CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step66CompleteOut.fv.payload[3]?.getD s6Step66CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step66CompleteOut.fv.payload[4]?.getD s6Step66CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step66EntryFBefore s6Step66EarlyControlArena s6Step66FrontBank 235 46 ⟨234,235,47,46⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846] 30 s6Step66CompleteLog s6Step66FrontPlan Q
    s6Step66Front_checked s6Step66Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step66Complete_owned s6Step66Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step66EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846] 769 814 s6Step66CompleteOut.fv.second (s6Step66CompleteOut.fv.payload[2]?.getD s6Step66CompleteOut.fv.sign) (s6Step66CompleteOut.fv.payload[3]?.getD s6Step66CompleteOut.fv.sign) (s6Step66CompleteOut.fv.payload[4]?.getD s6Step66CompleteOut.fv.sign) 838 30 s6Step66EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep66Arena : Arena := s6Step66EntryFBefore
def s6PrivateStep66Bank : WindowBank := s6Step66FrontBank
def s6PrivateStep66Spec : HmrSourceWalkStepLog := ⟨235,46,⟨234,235,47,46⟩,30,.early s6Step66CompleteLog⟩
def s6PrivateStep66Plan : HmrSourceStepPlan := .early s6Step66CompletePlan
theorem s6PrivateStep66_source : s6PrivateStep66Spec=s6ObservedLogs64[2] := rfl
theorem s6PrivateStep66_checked : compileHmrSourceStepLog s6PrivateStep66Arena s6PrivateStep66Bank
    s6PrivateStep66Spec.fgWidth s6PrivateStep66Spec.vWidth s6PrivateStep66Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846]
    6 498 66 s6PrivateStep66Spec.need none s6PrivateStep66Spec.log=some s6PrivateStep66Plan := by
  change compileHmrSourceStepLog s6Step66EntryFBefore s6Step66FrontBank 235 46 ⟨234,235,47,46⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846] 6 498 66 30 none (.early s6Step66CompleteLog)=some (.early s6Step66CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 66<498)]
  rw [s6Step66Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
