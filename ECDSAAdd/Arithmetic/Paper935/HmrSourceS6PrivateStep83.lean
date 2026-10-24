import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep81
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

private def s6Step83CompleteMoves : List (Wire × Wire) := [(813,226)]

private def s6Step83EarlyControlLog : HmrEarlyControlLog := ⟨[813, 794, 855, 877, 786],[780],[803],[922, 879, 784, 891, 783, 919],[]⟩

private def s6Step83FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [768]],[[877], [855], [794], [860]],[[], [], [], []]⟩,[867],[881],[786],[780],[803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916],[786, 780, 803, 922]⟩

private def s6Step83CompleteLog : HmrEarlyStepLog := ⟨s6Step83FrontLog,s6Step83CompleteMoves,s6Step83EarlyControlLog⟩

private def s6Step83ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482],795⟩

private def s6Step83ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860],776⟩

private def s6Step83ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225],777⟩

private def s6Step83ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768],775⟩

private def s6Step83FrontOut : WindowBank := ⟨s6Step83ExitFOut,s6Step83ExitGOut,s6Step83ExitFvOut,s6Step83ExitGvOut⟩

private def s6Step83CompleteOut : WindowBank := s6Step83FrontOut.repacked s6Step83CompleteMoves

private def s6Step83EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step83EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step83EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step83EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step83EarlyControlPositiveArena,[780],s6Step83EarlyControlEqualityArena,[803],⟨⟨867,false⟩,[⟨⟨780,false⟩,803⟩]⟩⟩

private def s6Step83EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step83EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step83EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step83EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,867),(868,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step83EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step83EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step83EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,813⟩,⟨⟨772,false⟩,794⟩,⟨⟨771,false⟩,855⟩,⟨⟨770,false⟩,877⟩,⟨⟨769,false⟩,786⟩]⟩

private def s6Step83EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step83EarlyControlZeroArena,s6Step83EarlyControlZeroPlan,s6Step83EarlyControlClassPlan,s6Step83EarlyControlFlagArena,s6Step83EarlyControlFittedArena,s6Step83EarlyControlHistoryArena,s6Step83EarlyControlSigmaArena,s6Step83EarlyControlOutputArena,s6Step83EarlyControlLog⟩

private def s6Step83CounterWork : List Wire := [786, 780, 803, 922]

private theorem s6Step83Counter_bounded : s6Step83CounterWork.toFinset⊆arenaWires := by norm_num [s6Step83CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step83HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step83CounterDuring : Arena := ⟨s6Step83HeadFvAfter.live∪s6Step83CounterWork.toFinset,Finset.union_subset s6Step83HeadFvAfter.bounded s6Step83Counter_bounded⟩

private def s6Step83EntryFFresh : List Wire := []

private def s6Step83EntryFvFresh : List Wire := []

private def s6Step83EntryGFresh : List Wire := []

private def s6Step83EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step83EntryGvFresh : List Wire := [768]

private def s6Step83ExitFExtra : List Wire := [855]

private def s6Step83ExitGExtra : List Wire := [226, 877]

private def s6Step83ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,226),(227,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step83ExitGvExtra : List Wire := [794]

private def s6Step83Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step83Add0Work : List Wire := [803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step83Add0_bounded : s6Step83Add0Work.toFinset⊆arenaWires := by
  have h : s6Step83Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step83Add0During : Arena := ⟨s6Step83Add0Arena.live∪s6Step83Add0Work.toFinset,Finset.union_subset s6Step83Add0Arena.bounded s6Step83Add0_bounded⟩

private def s6Step83Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step83Add1Work : List Wire := [803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916]

private theorem s6Step83Add1_bounded : s6Step83Add1Work.toFinset⊆arenaWires := by
  have h : s6Step83Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step83Add1During : Arena := ⟨s6Step83Add1Arena.live∪s6Step83Add1Work.toFinset,Finset.union_subset s6Step83Add1Arena.bounded s6Step83Add1_bounded⟩

private def s6Step83F4FlagArena : Arena := ⟨s6Step83HeadFvAfter.live∪{786},Finset.union_subset s6Step83HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step83F4Plan : HmrHybridF4Plan := ⟨s6Step83F4FlagArena,[786],s6Step83Add0Arena,[780],s6Step83Add0During,s6Step83Add0Work,s6Step83Add1During,s6Step83Add1Work⟩

private def s6Step83HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 855],795⟩

private def s6Step83HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860],776⟩

private def s6Step83HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 877],777⟩

private def s6Step83HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 794],775⟩

private def s6Step83FrontHead : WindowBank := ⟨s6Step83HeadFOut,s6Step83HeadGOut,s6Step83HeadFvOut,s6Step83HeadGvOut⟩

private def s6Step83EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482],795⟩

private def s6Step83EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862],776⟩

private def s6Step83EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226],777⟩

private def s6Step83EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768],775⟩

private def s6Step83FrontPair : WindowBank := ⟨s6Step83EntryFOut,s6Step83EntryGOut,s6Step83EntryFvOut,s6Step83EntryGvOut⟩

private def s6Step83FrontSigmaArena : Arena := ⟨s6Step83EntryGvAfter.live∪{867},Finset.union_subset s6Step83EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step83HeadFFresh : List Wire := [855]

private def s6Step83HeadFvFresh : List Wire := [860]

private def s6Step83HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step83HeadGFresh : List Wire := [877]

private def s6Step83HeadGvFresh : List Wire := [794]

private def s6Step83FrontPlan : HmrSourceFront := ⟨s6Step83EntryGvAfter,s6Step83FrontPair,(growRow 795 s6Step83EntryFFresh ++ (growRow 777 s6Step83EntryGFresh ++ (growRow 776 s6Step83EntryFvFresh ++ (growRow 775 s6Step83EntryGvFresh ++ [])))),s6Step83FrontSigmaArena,[867],s6Step83HeadGBefore,[881],
  s6Step83HeadFvAfter,s6Step83FrontHead,(growRow 777 s6Step83HeadGFresh ++ (growRow 795 s6Step83HeadFFresh ++ (growRow 775 s6Step83HeadGvFresh ++ (growRow 776 s6Step83HeadFvFresh ++ [])))),s6Step83F4Plan,s6Step83CounterDuring,s6Step83CounterWork,s6Step83ExitGvAfter,s6Step83FrontOut,(shrinkRow 777 s6Step83ExitGExtra ++ (shrinkRow 795 s6Step83ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step83ExitGvExtra ++ []))))⟩

private def s6Step83CompletePlan : HmrEarlyStepPlan := ⟨s6Step83FrontPlan,s6Step83EarlyControlArena,s6Step83EarlyControlPlan,s6Step83CompleteMoves⟩

private theorem s6Step83Complete_apart : List.Disjoint (s6Step83CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [867, 881, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] := by
  have nd : ((s6Step83CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[867, 881, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step83Complete_owned : (s6Step83CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step83EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step83EarlyControlArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step83CompleteRelocationMove0Borrowed : Arena := ⟨s6Step83ExitGvAfter.live∪{226},Finset.union_subset s6Step83ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step83CompleteRelocation_move0_owned : 813∈s6Step83ExitGvAfter.live := by norm_num [s6Step83ExitGvAfter,arenaWires]

private theorem s6Step83CompleteRelocation_move0_reserve : s6Step83ExitGvAfter.reserve {226}=some s6Step83CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step83ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step83CompleteRelocation_move0_retire : s6Step83CompleteRelocationMove0Borrowed.retireSet {813}=s6Step83EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step83CompleteRelocationMove0Borrowed s6Step83EarlyControlArena {813}
  change s6Step83EarlyControlArena.live=(s6Step83ExitGvAfter.live∪{226})\{813}
  apply hmrArena_update_of_filter_check s6Step83ExitGvAfter s6Step83EarlyControlArena (fun q => ([(0,226),(227,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [226] [813] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step83CompleteRelocation_checked : s6Step83ExitGvAfter.checkRepack [(813,226)]=some s6Step83EarlyControlArena := by
  have tail1 : s6Step83EarlyControlArena.checkRepack []=some s6Step83EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step83ExitGvAfter s6Step83CompleteRelocationMove0Borrowed s6Step83EarlyControlArena s6Step83EarlyControlArena 813 226 []
    s6Step83CompleteRelocation_move0_owned s6Step83CompleteRelocation_move0_reserve s6Step83CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step83Complete_repack : s6Step83ExitGvAfter.checkRepack s6Step83CompleteMoves=some s6Step83EarlyControlArena := by
  simpa only [s6Step83CompleteMoves] using s6Step83CompleteRelocation_checked

private theorem s6Step83EarlyControl_branchOwned : ([881] : List Wire).toFinset⊆s6Step83EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step83EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step83EarlyControl_branch : compileHmrBranchRetirement s6Step83EarlyControlSigmaArena 881=some s6Step83EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step83EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step83EarlyControlSigmaArena s6Step83EarlyControlOutputArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,867),(868,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [881] rfl rfl
    decide +kernel

private theorem s6Step83EarlyControl_classEqualityBorrow : s6Step83EarlyControlPositiveArena.checkBorrow (([867, 780] : List Wire).length-1) s6Step83EarlyControlLog.classWork=some s6Step83EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step83EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step83EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step83EarlyControlPositiveArena s6Step83EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step83EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step83EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step83EarlyControl_classEqualityOwned : ([867, 780] : List Wire).toFinset⊆s6Step83EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step83EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step83EarlyControl_classEquality : compileHmrEqualityLog s6Step83EarlyControlPositiveArena [867, 780] 0 s6Step83EarlyControlLog.classWork=some (s6Step83EarlyControlEqualityArena,s6Step83EarlyControlLog.classWork,s6Step83EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step83EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step83EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step83EarlyControl_classOwned : ([769, 786, 867] : List Wire).toFinset⊆s6Step83EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step83EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step83EarlyControl_positiveBorrow : s6Step83EarlyControlZeroArena.checkBorrow (1) s6Step83EarlyControlLog.positiveWork=some s6Step83EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step83EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step83EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step83EarlyControlZeroArena s6Step83EarlyControlPositiveArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step83EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step83EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step83EarlyControl_class : compileHmrSourceClassLog s6Step83EarlyControlZeroArena false 769 s6Step83EarlyControlZeroPlan.top 0 867 s6Step83EarlyControlLog.positiveWork s6Step83EarlyControlLog.classWork=some s6Step83EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step83EarlyControlClassPlan s6Step83EarlyControlZeroArena false 769 s6Step83EarlyControlZeroPlan.top 0 867
  constructor
  · decide +kernel
  · exact s6Step83EarlyControl_classOwned
  · exact s6Step83EarlyControl_positiveBorrow
  · exact s6Step83EarlyControl_classEquality

private theorem s6Step83EarlyControl_entryRecordOwned : ([881, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step83EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step83EarlyControlArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step83EarlyControl_entrySigmaOwned : ([867, 254] : List Wire).toFinset⊆s6Step83EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step83EarlyControlArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step83EarlyControl_fitBorrow : s6Step83EarlyControlFlagArena.checkBorrow ((30-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).length)) s6Step83EarlyControlLog.recordFresh=some s6Step83EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step83EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step83EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step83EarlyControlFittedArena,s6Step83EarlyControlFlagArena,s6Step83EarlyControlLog,arenaWires]

private theorem s6Step83EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step83EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step83EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step83EarlyControl_fit : compileHmrRecordGrowLog s6Step83EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step83EarlyControlLog.recordFresh=some s6Step83EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step83EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step83EarlyControl_fitBorrow

private theorem s6Step83EarlyControl_flagsBorrow : s6Step83EarlyControlEqualityArena.checkBorrow (6) s6Step83EarlyControlLog.flagWork=some s6Step83EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step83EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step83EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step83EarlyControlEqualityArena s6Step83EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step83EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step83EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step83EarlyControl_flagsOwned : ([803, 253, 252, 251] : List Wire).toFinset⊆s6Step83EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step83EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step83EarlyControl_flags : compileHmrFlagsLog s6Step83EarlyControlClassPlan.equalityArena s6Step83EarlyControlClassPlan.equality.top 253 252 251 s6Step83EarlyControlLog.flagWork=some s6Step83EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step83EarlyControl_flagsOwned⟩
  · exact s6Step83EarlyControl_flagsBorrow

private theorem s6Step83EarlyControl_historyBorrow : s6Step83EarlyControlArena.checkBorrow ((30-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).length)) s6Step83EarlyControlLog.recordFresh=some s6Step83EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step83EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step83EarlyControlArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step83EarlyControlArena s6Step83EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step83EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step83EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step83EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step83EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step83EarlyControlArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step83EarlyControl_history : compileHmrRecordGrowLog s6Step83EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step83EarlyControlLog.recordFresh=some s6Step83EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step83EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step83EarlyControl_historyBorrow

private theorem s6Step83EarlyControl_sigmaOwned : ([254, 867] : List Wire).toFinset⊆s6Step83EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step83EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step83EarlyControl_sigmaReleaseOwned : ([867] : List Wire).toFinset⊆s6Step83EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step83EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step83EarlyControl_sigmaRelease : s6Step83EarlyControlHistoryArena.release {867} (fun _ => false)=some s6Step83EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step83EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step83EarlyControlHistoryArena s6Step83EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [867] rfl rfl
    decide +kernel

private theorem s6Step83EarlyControl_sigma : compileHmrSigmaDropLog s6Step83EarlyControlHistoryArena false 0 0 254 867 []=some s6Step83EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step83EarlyControl_sigmaOwned⟩
  · exact s6Step83EarlyControl_sigmaRelease

private theorem s6Step83EarlyControl_zeroBorrow : s6Step83EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step83EarlyControlLog.zeroWork=some s6Step83EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step83EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step83EarlyControlArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step83EarlyControlArena s6Step83EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step83EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step83EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step83EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step83EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step83EarlyControlArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step83EarlyControl_zero : compileHmrEqualityLog s6Step83EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step83EarlyControlLog.zeroWork=some (s6Step83EarlyControlZeroArena,s6Step83EarlyControlLog.zeroWork,s6Step83EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step83EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step83EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step83EarlyControl_logged : s6Step83EarlyControlPlan.Logged s6Step83EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 867 254 253 252 251 881 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step83EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step83EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step83EarlyControl_zero
  · exact s6Step83EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step83EarlyControl_flags
  · exact s6Step83EarlyControl_fit
  · exact s6Step83EarlyControl_history
  · exact s6Step83EarlyControl_sigma
  · exact s6Step83EarlyControl_branch

private theorem s6Step83EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step83EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 867 254 253 252 251 881 30 s6Step83EarlyControlLog=some s6Step83EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step83EarlyControlPlan s6Step83EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 867 254 253 252 251 881 30 s6Step83EarlyControl_logged

private def s6Step83EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step83EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482],795⟩

private def s6Step83EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862],776⟩

private def s6Step83EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226],777⟩

private def s6Step83EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869],775⟩

private def s6Step83FrontBank : WindowBank := ⟨s6Step83EntryFRow,s6Step83EntryGRow,s6Step83EntryFvRow,s6Step83EntryGvRow⟩

private def s6Step83Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 855, 795]

private def s6Step83Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 877, 777]

private def s6Step83Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 776]

private def s6Step83Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 794, 775]

private theorem s6Step83Counter_apart : Disjoint s6Step83HeadFvAfter.live s6Step83CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step83HeadFvAfter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step83Counter_borrowed : s6Step83HeadFvAfter.checkBorrow 4 s6Step83CounterWork=some s6Step83CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step83HeadFvAfter s6Step83CounterDuring s6Step83CounterWork.toFinset s6Step83Counter_bounded s6Step83Counter_apart rfl

private theorem s6Step83Counter_owned : (867::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step83HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step83HeadFvAfter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step83Counter_checked : compileHmrCounterStepLog s6Step83HeadFvAfter true 867 [774, 773, 772, 771, 770, 769] s6Step83CounterWork=some s6Step83CounterDuring := by
  have owned : ∀q∈867::[774, 773, 772, 771, 770, 769],q∈s6Step83HeadFvAfter.live := fun q hq => s6Step83Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step83Counter_borrowed

private def s6Step83EntryFAfter : Arena := s6Step83EntryFBefore

private theorem s6Step83EntryBank_incomingDistinct : ([s6Step83EntryFRow,s6Step83EntryGRow,s6Step83EntryFvRow,s6Step83EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step83EntryF_Incoming : rowsOwned s6Step83EntryFBefore [s6Step83EntryFRow,s6Step83EntryGRow,s6Step83EntryFvRow,s6Step83EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step83EntryFRow,s6Step83EntryGRow,s6Step83EntryFvRow,s6Step83EntryGvRow] 0 s6Step83EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step83EntryFBefore (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step83EntryBank_outgoingOwned : rowsOwned s6Step83EntryGvAfter [s6Step83EntryFOut,s6Step83EntryGOut,s6Step83EntryFvOut,s6Step83EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step83EntryGvAfter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step83EntryF_Outgoing : rowsOwned s6Step83EntryGvAfter [s6Step83EntryFOut,s6Step83EntryGOut,s6Step83EntryFvOut,s6Step83EntryGvOut] :=
  hmrRows_owned_drop s6Step83EntryGvAfter [s6Step83EntryFOut,s6Step83EntryGOut,s6Step83EntryFvOut,s6Step83EntryGvOut] 0 s6Step83EntryBank_outgoingOwned

private theorem s6Step83EntryF_distinct : (s6Step83EntryFRow.sign::s6Step83EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step83EntryF_owned : (s6Step83EntryFRow.sign::s6Step83EntryFRow.payload).toFinset⊆s6Step83EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step83EntryFBefore (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step83EntryF_reserved : s6Step83EntryFBefore.reserve s6Step83EntryFFresh.toFinset=some s6Step83EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step83EntryFFresh,arenaWires]
  · norm_num [s6Step83EntryFBefore,s6Step83EntryFFresh,arenaWires]
  · simp only [s6Step83EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step83EntryF_checked : planRowResizeLog s6Step83EntryFBefore s6Step83EntryFRow 227 s6Step83EntryFFresh=
    some (s6Step83EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482],795⟩,growRow 795 s6Step83EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step83EntryFBefore s6Step83EntryFAfter s6Step83EntryFRow 227 s6Step83EntryFFresh
    s6Step83EntryF_distinct s6Step83EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step83EntryF_reserved
  have rowEq : WindowRow.mk (s6Step83EntryFRow.payload++s6Step83EntryFFresh) s6Step83EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step83EntryFvAfter : Arena := s6Step83EntryFBefore

private def s6Step83EntryFvBefore : Arena := s6Step83EntryFBefore

private theorem s6Step83EntryFv_Incoming : rowsOwned s6Step83EntryFvBefore [s6Step83EntryFvRow,s6Step83EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step83EntryFRow,s6Step83EntryGRow,s6Step83EntryFvRow,s6Step83EntryGvRow] 2 s6Step83EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step83EntryFvBefore (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step83EntryFv_Outgoing : rowsOwned s6Step83EntryGvAfter [s6Step83EntryFvOut,s6Step83EntryGvOut] :=
  hmrRows_owned_drop s6Step83EntryGvAfter [s6Step83EntryFOut,s6Step83EntryGOut,s6Step83EntryFvOut,s6Step83EntryGvOut] 2 s6Step83EntryBank_outgoingOwned

private theorem s6Step83EntryFv_distinct : (s6Step83EntryFvRow.sign::s6Step83EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step83EntryFv_owned : (s6Step83EntryFvRow.sign::s6Step83EntryFvRow.payload).toFinset⊆s6Step83EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step83EntryFvBefore (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step83EntryFv_reserved : s6Step83EntryFvBefore.reserve s6Step83EntryFvFresh.toFinset=some s6Step83EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step83EntryFvFresh,arenaWires]
  · norm_num [s6Step83EntryFvBefore,s6Step83EntryFBefore,s6Step83EntryFvFresh,arenaWires]
  · simp only [s6Step83EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step83EntryFv_checked : planRowResizeLog s6Step83EntryFvBefore s6Step83EntryFvRow 55 s6Step83EntryFvFresh=
    some (s6Step83EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862],776⟩,growRow 776 s6Step83EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step83EntryFvBefore s6Step83EntryFvAfter s6Step83EntryFvRow 55 s6Step83EntryFvFresh
    s6Step83EntryFv_distinct s6Step83EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step83EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step83EntryFvRow.payload++s6Step83EntryFvFresh) s6Step83EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step83EntryGAfter : Arena := s6Step83EntryFBefore

private def s6Step83EntryGBefore : Arena := s6Step83EntryFBefore

private theorem s6Step83EntryG_Incoming : rowsOwned s6Step83EntryGBefore [s6Step83EntryGRow,s6Step83EntryFvRow,s6Step83EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step83EntryFRow,s6Step83EntryGRow,s6Step83EntryFvRow,s6Step83EntryGvRow] 1 s6Step83EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step83EntryGBefore (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step83EntryG_Outgoing : rowsOwned s6Step83EntryGvAfter [s6Step83EntryGOut,s6Step83EntryFvOut,s6Step83EntryGvOut] :=
  hmrRows_owned_drop s6Step83EntryGvAfter [s6Step83EntryFOut,s6Step83EntryGOut,s6Step83EntryFvOut,s6Step83EntryGvOut] 1 s6Step83EntryBank_outgoingOwned

private theorem s6Step83EntryG_distinct : (s6Step83EntryGRow.sign::s6Step83EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step83EntryG_owned : (s6Step83EntryGRow.sign::s6Step83EntryGRow.payload).toFinset⊆s6Step83EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step83EntryGBefore (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step83EntryG_reserved : s6Step83EntryGBefore.reserve s6Step83EntryGFresh.toFinset=some s6Step83EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step83EntryGFresh,arenaWires]
  · norm_num [s6Step83EntryGBefore,s6Step83EntryFBefore,s6Step83EntryGFresh,arenaWires]
  · simp only [s6Step83EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step83EntryG_checked : planRowResizeLog s6Step83EntryGBefore s6Step83EntryGRow 227 s6Step83EntryGFresh=
    some (s6Step83EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226],777⟩,growRow 777 s6Step83EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step83EntryGBefore s6Step83EntryGAfter s6Step83EntryGRow 227 s6Step83EntryGFresh
    s6Step83EntryG_distinct s6Step83EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step83EntryG_reserved
  have rowEq : WindowRow.mk (s6Step83EntryGRow.payload++s6Step83EntryGFresh) s6Step83EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step83EntryGvBefore : Arena := s6Step83EntryFBefore

private theorem s6Step83EntryGv_Incoming : rowsOwned s6Step83EntryGvBefore [s6Step83EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step83EntryFRow,s6Step83EntryGRow,s6Step83EntryFvRow,s6Step83EntryGvRow] 3 s6Step83EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step83EntryGvBefore (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step83EntryGv_Outgoing : rowsOwned s6Step83EntryGvAfter [s6Step83EntryGvOut] :=
  hmrRows_owned_drop s6Step83EntryGvAfter [s6Step83EntryFOut,s6Step83EntryGOut,s6Step83EntryFvOut,s6Step83EntryGvOut] 3 s6Step83EntryBank_outgoingOwned

private theorem s6Step83EntryGv_distinct : (s6Step83EntryGvRow.sign::s6Step83EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step83EntryGv_owned : (s6Step83EntryGvRow.sign::s6Step83EntryGvRow.payload).toFinset⊆s6Step83EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step83EntryGvBefore (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step83EntryGv_reserved : s6Step83EntryGvBefore.reserve s6Step83EntryGvFresh.toFinset=some s6Step83EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step83EntryGvFresh,arenaWires]
  · norm_num [s6Step83EntryGvBefore,s6Step83EntryFBefore,s6Step83EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step83EntryGvBefore s6Step83EntryGvAfter (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step83EntryGvFresh rfl rfl
    · norm_num [s6Step83EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step83EntryGv_checked : planRowResizeLog s6Step83EntryGvBefore s6Step83EntryGvRow 55 s6Step83EntryGvFresh=
    some (s6Step83EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768],775⟩,growRow 775 s6Step83EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step83EntryGvBefore s6Step83EntryGvAfter s6Step83EntryGvRow 55 s6Step83EntryGvFresh
    s6Step83EntryGv_distinct s6Step83EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step83EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step83EntryGvRow.payload++s6Step83EntryGvFresh) s6Step83EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step83EntryBank_rows : planWindowRowsLog s6Step83EntryFBefore [(s6Step83EntryFRow,227),(s6Step83EntryGRow,227),(s6Step83EntryFvRow,55),(s6Step83EntryGvRow,55)] [s6Step83EntryFFresh,s6Step83EntryGFresh,s6Step83EntryFvFresh,s6Step83EntryGvFresh]=
    some (s6Step83EntryGvAfter,[s6Step83EntryFOut,s6Step83EntryGOut,s6Step83EntryFvOut,s6Step83EntryGvOut],(growRow 795 s6Step83EntryFFresh ++ (growRow 777 s6Step83EntryGFresh ++ (growRow 776 s6Step83EntryFvFresh ++ (growRow 775 s6Step83EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step83EntryGvAfter [] []=some (s6Step83EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step83EntryGvBefore s6Step83EntryGvAfter s6Step83EntryGvAfter
    s6Step83EntryGvRow s6Step83EntryGvOut 55 s6Step83EntryGvFresh [] [] []
    (growRow 775 s6Step83EntryGvFresh) ([]) s6Step83EntryGv_Incoming s6Step83EntryGv_checked h4 s6Step83EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step83EntryFvBefore s6Step83EntryFvAfter s6Step83EntryGvAfter
    s6Step83EntryFvRow s6Step83EntryFvOut 55 s6Step83EntryFvFresh [(s6Step83EntryGvRow,55)] [s6Step83EntryGvFresh] [s6Step83EntryGvOut]
    (growRow 776 s6Step83EntryFvFresh) ((growRow 775 s6Step83EntryGvFresh ++ [])) s6Step83EntryFv_Incoming s6Step83EntryFv_checked h3 s6Step83EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step83EntryGBefore s6Step83EntryGAfter s6Step83EntryGvAfter
    s6Step83EntryGRow s6Step83EntryGOut 227 s6Step83EntryGFresh [(s6Step83EntryFvRow,55),(s6Step83EntryGvRow,55)] [s6Step83EntryFvFresh,s6Step83EntryGvFresh] [s6Step83EntryFvOut,s6Step83EntryGvOut]
    (growRow 777 s6Step83EntryGFresh) ((growRow 776 s6Step83EntryFvFresh ++ (growRow 775 s6Step83EntryGvFresh ++ []))) s6Step83EntryG_Incoming s6Step83EntryG_checked h2 s6Step83EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step83EntryFBefore s6Step83EntryFAfter s6Step83EntryGvAfter
    s6Step83EntryFRow s6Step83EntryFOut 227 s6Step83EntryFFresh [(s6Step83EntryGRow,227),(s6Step83EntryFvRow,55),(s6Step83EntryGvRow,55)] [s6Step83EntryGFresh,s6Step83EntryFvFresh,s6Step83EntryGvFresh] [s6Step83EntryGOut,s6Step83EntryFvOut,s6Step83EntryGvOut]
    (growRow 795 s6Step83EntryFFresh) ((growRow 777 s6Step83EntryGFresh ++ (growRow 776 s6Step83EntryFvFresh ++ (growRow 775 s6Step83EntryGvFresh ++ [])))) s6Step83EntryF_Incoming s6Step83EntryF_checked h1 s6Step83EntryF_Outgoing
  exact h0

private theorem s6Step83EntryBank_checked : compileHmrBankResizeLog .entry s6Step83EntryFBefore ⟨s6Step83EntryFRow,s6Step83EntryGRow,s6Step83EntryFvRow,s6Step83EntryGvRow⟩ ⟨227,227,55,55⟩ [s6Step83EntryFFresh,s6Step83EntryGFresh,s6Step83EntryFvFresh,s6Step83EntryGvFresh]=
    some (s6Step83EntryGvAfter,⟨s6Step83EntryFOut,s6Step83EntryGOut,s6Step83EntryFvOut,s6Step83EntryGvOut⟩,(growRow 795 s6Step83EntryFFresh ++ (growRow 777 s6Step83EntryGFresh ++ (growRow 776 s6Step83EntryFvFresh ++ (growRow 775 s6Step83EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step83EntryBank_rows]
  rfl

private def s6Step83ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,226),(227,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step83ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,226),(227,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step83ExitFBefore : Arena := s6Step83ExitGAfter

private def s6Step83ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 855],795⟩

private def s6Step83ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860],776⟩

private def s6Step83ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 877],777⟩

private def s6Step83ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 794],775⟩

private theorem s6Step83ExitBank_incomingDistinct : ([s6Step83ExitGRow,s6Step83ExitFRow,s6Step83ExitFvRow,s6Step83ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step83ExitF_Incoming : rowsOwned s6Step83ExitFBefore [s6Step83ExitFRow,s6Step83ExitFvRow,s6Step83ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step83ExitGRow,s6Step83ExitFRow,s6Step83ExitFvRow,s6Step83ExitGvRow] 1 s6Step83ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step83ExitFBefore (fun q => ([(0,226),(227,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step83ExitBank_outgoingOwned : rowsOwned s6Step83ExitGvAfter [s6Step83ExitGOut,s6Step83ExitFOut,s6Step83ExitFvOut,s6Step83ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step83ExitGvAfter (fun q => ([(0,226),(227,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step83ExitF_Outgoing : rowsOwned s6Step83ExitGvAfter [s6Step83ExitFOut,s6Step83ExitFvOut,s6Step83ExitGvOut] :=
  hmrRows_owned_drop s6Step83ExitGvAfter [s6Step83ExitGOut,s6Step83ExitFOut,s6Step83ExitFvOut,s6Step83ExitGvOut] 1 s6Step83ExitBank_outgoingOwned

private theorem s6Step83ExitF_distinct : (s6Step83ExitFRow.sign::s6Step83ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step83ExitF_owned : (s6Step83ExitFRow.sign::s6Step83ExitFRow.payload).toFinset⊆s6Step83ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step83ExitFBefore (fun q => ([(0,226),(227,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step83ExitF_retired : s6Step83ExitFBefore.retireSet s6Step83ExitFExtra.toFinset=s6Step83ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step83ExitFBefore s6Step83ExitFAfter s6Step83ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step83ExitFBefore s6Step83ExitFAfter (fun q => ([(0,226),(227,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,226),(227,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step83ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step83ExitF_checked : planRowResizeLog s6Step83ExitFBefore s6Step83ExitFRow 227 []=
    some (s6Step83ExitFAfter,s6Step83ExitFOut,shrinkRow 795 s6Step83ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step83ExitFBefore s6Step83ExitFRow 227 s6Step83ExitF_distinct s6Step83ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step83ExitFRow.payload.take 227) s6Step83ExitFRow.sign=s6Step83ExitFOut := by decide +kernel
  have hi : s6Step83ExitFRow.payload.drop 227=s6Step83ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step83ExitF_retired] at result
  exact result

private def s6Step83ExitFvAfter : Arena := s6Step83ExitFAfter

private def s6Step83ExitFvBefore : Arena := s6Step83ExitFAfter

private theorem s6Step83ExitFv_Incoming : rowsOwned s6Step83ExitFvBefore [s6Step83ExitFvRow,s6Step83ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step83ExitGRow,s6Step83ExitFRow,s6Step83ExitFvRow,s6Step83ExitGvRow] 2 s6Step83ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step83ExitFvBefore (fun q => ([(0,226),(227,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step83ExitFv_Outgoing : rowsOwned s6Step83ExitGvAfter [s6Step83ExitFvOut,s6Step83ExitGvOut] :=
  hmrRows_owned_drop s6Step83ExitGvAfter [s6Step83ExitGOut,s6Step83ExitFOut,s6Step83ExitFvOut,s6Step83ExitGvOut] 2 s6Step83ExitBank_outgoingOwned

private theorem s6Step83ExitFv_distinct : (s6Step83ExitFvRow.sign::s6Step83ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step83ExitFv_owned : (s6Step83ExitFvRow.sign::s6Step83ExitFvRow.payload).toFinset⊆s6Step83ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step83ExitFvBefore (fun q => ([(0,226),(227,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step83ExitFv_reserved : s6Step83ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step83ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step83ExitFv_checked : planRowResizeLog s6Step83ExitFvBefore s6Step83ExitFvRow 56 []=
    some (s6Step83ExitFvAfter,s6Step83ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step83ExitFvBefore s6Step83ExitFvAfter s6Step83ExitFvRow 56 []
    s6Step83ExitFv_distinct s6Step83ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step83ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step83ExitFvRow.payload++[]) s6Step83ExitFvRow.sign=s6Step83ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step83ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step83ExitG_Incoming : rowsOwned s6Step83ExitGBefore [s6Step83ExitGRow,s6Step83ExitFRow,s6Step83ExitFvRow,s6Step83ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step83ExitGRow,s6Step83ExitFRow,s6Step83ExitFvRow,s6Step83ExitGvRow] 0 s6Step83ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step83ExitGBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step83ExitG_Outgoing : rowsOwned s6Step83ExitGvAfter [s6Step83ExitGOut,s6Step83ExitFOut,s6Step83ExitFvOut,s6Step83ExitGvOut] :=
  hmrRows_owned_drop s6Step83ExitGvAfter [s6Step83ExitGOut,s6Step83ExitFOut,s6Step83ExitFvOut,s6Step83ExitGvOut] 0 s6Step83ExitBank_outgoingOwned

private theorem s6Step83ExitG_distinct : (s6Step83ExitGRow.sign::s6Step83ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step83ExitG_owned : (s6Step83ExitGRow.sign::s6Step83ExitGRow.payload).toFinset⊆s6Step83ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step83ExitGBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step83ExitG_retired : s6Step83ExitGBefore.retireSet s6Step83ExitGExtra.toFinset=s6Step83ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step83ExitGBefore s6Step83ExitGAfter s6Step83ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step83ExitGBefore s6Step83ExitGAfter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,226),(227,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step83ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step83ExitG_checked : planRowResizeLog s6Step83ExitGBefore s6Step83ExitGRow 226 []=
    some (s6Step83ExitGAfter,s6Step83ExitGOut,shrinkRow 777 s6Step83ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step83ExitGBefore s6Step83ExitGRow 226 s6Step83ExitG_distinct s6Step83ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step83ExitGRow.payload.take 226) s6Step83ExitGRow.sign=s6Step83ExitGOut := by decide +kernel
  have hi : s6Step83ExitGRow.payload.drop 226=s6Step83ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step83ExitG_retired] at result
  exact result

private def s6Step83ExitGvBefore : Arena := s6Step83ExitFAfter

private theorem s6Step83ExitGv_Incoming : rowsOwned s6Step83ExitGvBefore [s6Step83ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step83ExitGRow,s6Step83ExitFRow,s6Step83ExitFvRow,s6Step83ExitGvRow] 3 s6Step83ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step83ExitGvBefore (fun q => ([(0,226),(227,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step83ExitGv_Outgoing : rowsOwned s6Step83ExitGvAfter [s6Step83ExitGvOut] :=
  hmrRows_owned_drop s6Step83ExitGvAfter [s6Step83ExitGOut,s6Step83ExitFOut,s6Step83ExitFvOut,s6Step83ExitGvOut] 3 s6Step83ExitBank_outgoingOwned

private theorem s6Step83ExitGv_distinct : (s6Step83ExitGvRow.sign::s6Step83ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step83ExitGv_owned : (s6Step83ExitGvRow.sign::s6Step83ExitGvRow.payload).toFinset⊆s6Step83ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step83ExitGvBefore (fun q => ([(0,226),(227,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step83ExitGv_retired : s6Step83ExitGvBefore.retireSet s6Step83ExitGvExtra.toFinset=s6Step83ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step83ExitGvBefore s6Step83ExitGvAfter s6Step83ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step83ExitGvBefore s6Step83ExitGvAfter (fun q => ([(0,226),(227,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,226),(227,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step83ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step83ExitGv_checked : planRowResizeLog s6Step83ExitGvBefore s6Step83ExitGvRow 55 []=
    some (s6Step83ExitGvAfter,s6Step83ExitGvOut,shrinkRow 775 s6Step83ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step83ExitGvBefore s6Step83ExitGvRow 55 s6Step83ExitGv_distinct s6Step83ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step83ExitGvRow.payload.take 55) s6Step83ExitGvRow.sign=s6Step83ExitGvOut := by decide +kernel
  have hi : s6Step83ExitGvRow.payload.drop 55=s6Step83ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step83ExitGv_retired] at result
  exact result

private theorem s6Step83ExitBank_rows : planWindowRowsLog s6Step83ExitGBefore [(s6Step83ExitGRow,226),(s6Step83ExitFRow,227),(s6Step83ExitFvRow,56),(s6Step83ExitGvRow,55)] [[],[],[],[]]=
    some (s6Step83ExitGvAfter,[s6Step83ExitGOut,s6Step83ExitFOut,s6Step83ExitFvOut,s6Step83ExitGvOut],(shrinkRow 777 s6Step83ExitGExtra ++ (shrinkRow 795 s6Step83ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step83ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step83ExitGvAfter [] []=some (s6Step83ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step83ExitGvBefore s6Step83ExitGvAfter s6Step83ExitGvAfter
    s6Step83ExitGvRow s6Step83ExitGvOut 55 [] [] [] []
    (shrinkRow 775 s6Step83ExitGvExtra) ([]) s6Step83ExitGv_Incoming s6Step83ExitGv_checked h4 s6Step83ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step83ExitFvBefore s6Step83ExitFvAfter s6Step83ExitGvAfter
    s6Step83ExitFvRow s6Step83ExitFvOut 56 [] [(s6Step83ExitGvRow,55)] [[]] [s6Step83ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step83ExitGvExtra ++ [])) s6Step83ExitFv_Incoming s6Step83ExitFv_checked h3 s6Step83ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step83ExitFBefore s6Step83ExitFAfter s6Step83ExitGvAfter
    s6Step83ExitFRow s6Step83ExitFOut 227 [] [(s6Step83ExitFvRow,56),(s6Step83ExitGvRow,55)] [[],[]] [s6Step83ExitFvOut,s6Step83ExitGvOut]
    (shrinkRow 795 s6Step83ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step83ExitGvExtra ++ []))) s6Step83ExitF_Incoming s6Step83ExitF_checked h2 s6Step83ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step83ExitGBefore s6Step83ExitGAfter s6Step83ExitGvAfter
    s6Step83ExitGRow s6Step83ExitGOut 226 [] [(s6Step83ExitFRow,227),(s6Step83ExitFvRow,56),(s6Step83ExitGvRow,55)] [[],[],[]] [s6Step83ExitFOut,s6Step83ExitFvOut,s6Step83ExitGvOut]
    (shrinkRow 777 s6Step83ExitGExtra) ((shrinkRow 795 s6Step83ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step83ExitGvExtra ++ [])))) s6Step83ExitG_Incoming s6Step83ExitG_checked h1 s6Step83ExitG_Outgoing
  exact h0

private theorem s6Step83ExitBank_checked : compileHmrBankResizeLog .exit s6Step83ExitGBefore ⟨s6Step83ExitFRow,s6Step83ExitGRow,s6Step83ExitFvRow,s6Step83ExitGvRow⟩ ⟨227,226,56,55⟩ [[],[],[],[]]=
    some (s6Step83ExitGvAfter,⟨s6Step83ExitFOut,s6Step83ExitGOut,s6Step83ExitFvOut,s6Step83ExitGvOut⟩,(shrinkRow 777 s6Step83ExitGExtra ++ (shrinkRow 795 s6Step83ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step83ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step83ExitBank_rows]
  rfl

private theorem s6Step83Add0_apart : Disjoint s6Step83Add0Arena.live s6Step83Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step83Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step83Add0_card : s6Step83Add0Arena.live.card=868 := by
  decide +kernel

private theorem s6Step83Add0_borrowed : s6Step83Add0Arena.checkBorrow (hmrHybridCount s6Step83Add0Arena s6Step83Add0B.length) s6Step83Add0Work=some s6Step83Add0During := by
  have len : s6Step83Add0Work.length=hmrHybridCount s6Step83Add0Arena s6Step83Add0B.length := by
    rw [hmrHybridCount,s6Step83Add0_card]
    decide +kernel
  have nd : s6Step83Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step83Add0Arena s6Step83Add0During s6Step83Add0Work.toFinset s6Step83Add0_bounded s6Step83Add0_apart rfl

private theorem s6Step83Add0_distinct : (786::881::780::(s6Step83Add0A++s6Step83Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step83Add0_owned : (786::881::780::(s6Step83Add0A++s6Step83Add0B)).toFinset⊆s6Step83Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step83Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step83Add0_checked : compileHmrHybridCinLog s6Step83Add0Arena 881 786 780 s6Step83Add0A s6Step83Add0B s6Step83Add0Work=some s6Step83Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step83Add0Arena s6Step83Add0During 881 786 780 s6Step83Add0A s6Step83Add0B s6Step83Add0Work
    (by decide +kernel) (by decide +kernel) s6Step83Add0_distinct
    (fun q hq => s6Step83Add0_owned (List.mem_toFinset.mpr hq)) s6Step83Add0_borrowed

private theorem s6Step83Add1_apart : Disjoint s6Step83Add1Arena.live s6Step83Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step83Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step83Add1_card : s6Step83Add1Arena.live.card=868 := by
  decide +kernel

private theorem s6Step83Add1_borrowed : s6Step83Add1Arena.checkBorrow (hmrHybridCount s6Step83Add1Arena s6Step83Add1B.length) s6Step83Add1Work=some s6Step83Add1During := by
  have len : s6Step83Add1Work.length=hmrHybridCount s6Step83Add1Arena s6Step83Add1B.length := by
    rw [hmrHybridCount,s6Step83Add1_card]
    decide +kernel
  have nd : s6Step83Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step83Add1Arena s6Step83Add1During s6Step83Add1Work.toFinset s6Step83Add1_bounded s6Step83Add1_apart rfl

private theorem s6Step83Add1_distinct : (786::881::780::(s6Step83Add1A++s6Step83Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step83Add1_owned : (786::881::780::(s6Step83Add1A++s6Step83Add1B)).toFinset⊆s6Step83Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step83Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step83Add1_checked : compileHmrHybridCinLog s6Step83Add1Arena 881 786 780 s6Step83Add1A s6Step83Add1B s6Step83Add1Work=some s6Step83Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step83Add1Arena s6Step83Add1During 881 786 780 s6Step83Add1A s6Step83Add1B s6Step83Add1Work
    (by decide +kernel) (by decide +kernel) s6Step83Add1_distinct
    (fun q hq => s6Step83Add1_owned (List.mem_toFinset.mpr hq)) s6Step83Add1_borrowed

private theorem s6Step83F4_apart : Disjoint (s6Step83Add0A++s6Step83Add0B).toFinset (s6Step83Add1A++s6Step83Add1B).toFinset := by
  have nd : ((s6Step83Add0A++s6Step83Add0B)++(s6Step83Add1A++s6Step83Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step83F4_carry : s6Step83F4FlagArena.checkBorrow 1 [780]=some s6Step83Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step83F4FlagArena,s6Step83HeadFvAfter,arenaWires]
  · change s6Step83Add0Arena.live=(s6Step83HeadFvAfter.live∪{786})∪{780}
    apply hmrArena_union_pair_of_filter_check s6Step83HeadFvAfter s6Step83Add0Arena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 786 780 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step83F4_distinct : (867::881::786::780::((s6Step83Add0A++s6Step83Add1A)++(s6Step83Add0B++s6Step83Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step83F4_flag : s6Step83HeadFvAfter.checkBorrow 1 [786]=some s6Step83F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step83HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step83F4_owned : (867::881::((s6Step83Add0A++s6Step83Add1A)++(s6Step83Add0B++s6Step83Add1B))).toFinset⊆s6Step83HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step83HeadFvAfter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step83F4_checked : compileHmrHybridF4Log s6Step83HeadFvAfter 867 881 s6Step83Add0A s6Step83Add0B s6Step83Add1A s6Step83Add1B [786] [780] s6Step83Add0Work s6Step83Add1Work=some s6Step83F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step83HeadFvAfter s6Step83F4FlagArena s6Step83Add0Arena s6Step83Add0During s6Step83Add1During 867 881
    s6Step83Add0A s6Step83Add0B s6Step83Add1A s6Step83Add1B [786] [780] s6Step83Add0Work s6Step83Add1Work
    (fun q hq => s6Step83F4_owned (List.mem_toFinset.mpr hq)) s6Step83F4_flag s6Step83F4_carry
    s6Step83F4_distinct s6Step83F4_apart s6Step83Add0_checked s6Step83Add1_checked

private theorem s6Step83Front_branch : s6Step83FrontSigmaArena.checkBorrow 1 [881]=some s6Step83HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step83FrontSigmaArena,s6Step83EntryGvAfter,arenaWires]
  · change s6Step83HeadGBefore.live=(s6Step83EntryGvAfter.live∪{867})∪{881}
    apply hmrArena_union_pair_of_filter_check s6Step83EntryGvAfter s6Step83HeadGBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 867 881 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step83Front_entry : HmrFrontEntryValid s6Step83EntryFBefore s6Step83FrontBank 227 55 ⟨227,226,56,55⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step83FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step83EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step83EntryFBefore (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step83FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step83Front_sigma : s6Step83EntryGvAfter.checkBorrow 1 [867]=some s6Step83FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step83EntryGvAfter,arenaWires]
  · rfl

private def s6Step83HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,860),(861,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step83HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step83HeadFBefore : Arena := s6Step83HeadGAfter

private def s6Step83HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482],795⟩

private def s6Step83HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862],776⟩

private def s6Step83HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226],777⟩

private def s6Step83HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768],775⟩

private theorem s6Step83HeadBank_incomingDistinct : ([s6Step83HeadGRow,s6Step83HeadFRow,s6Step83HeadGvRow,s6Step83HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step83HeadF_Incoming : rowsOwned s6Step83HeadFBefore [s6Step83HeadFRow,s6Step83HeadGvRow,s6Step83HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step83HeadGRow,s6Step83HeadFRow,s6Step83HeadGvRow,s6Step83HeadFvRow] 1 s6Step83HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step83HeadFBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step83HeadBank_outgoingOwned : rowsOwned s6Step83HeadFvAfter [s6Step83HeadGOut,s6Step83HeadFOut,s6Step83HeadGvOut,s6Step83HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step83HeadFvAfter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step83HeadF_Outgoing : rowsOwned s6Step83HeadFvAfter [s6Step83HeadFOut,s6Step83HeadGvOut,s6Step83HeadFvOut] :=
  hmrRows_owned_drop s6Step83HeadFvAfter [s6Step83HeadGOut,s6Step83HeadFOut,s6Step83HeadGvOut,s6Step83HeadFvOut] 1 s6Step83HeadBank_outgoingOwned

private theorem s6Step83HeadF_distinct : (s6Step83HeadFRow.sign::s6Step83HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step83HeadF_owned : (s6Step83HeadFRow.sign::s6Step83HeadFRow.payload).toFinset⊆s6Step83HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step83HeadFBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step83HeadF_reserved : s6Step83HeadFBefore.reserve s6Step83HeadFFresh.toFinset=some s6Step83HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step83HeadFFresh,arenaWires]
  · norm_num [s6Step83HeadFBefore,s6Step83HeadGAfter,s6Step83HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step83HeadFBefore s6Step83HeadFAfter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,860),(861,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step83HeadFFresh rfl rfl
    · norm_num [s6Step83HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step83HeadF_checked : planRowResizeLog s6Step83HeadFBefore s6Step83HeadFRow 228 s6Step83HeadFFresh=
    some (s6Step83HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 855],795⟩,growRow 795 s6Step83HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step83HeadFBefore s6Step83HeadFAfter s6Step83HeadFRow 228 s6Step83HeadFFresh
    s6Step83HeadF_distinct s6Step83HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step83HeadF_reserved
  have rowEq : WindowRow.mk (s6Step83HeadFRow.payload++s6Step83HeadFFresh) s6Step83HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 855],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step83HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,860),(861,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step83HeadFvBefore : Arena := s6Step83HeadGvAfter

private theorem s6Step83HeadFv_Incoming : rowsOwned s6Step83HeadFvBefore [s6Step83HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step83HeadGRow,s6Step83HeadFRow,s6Step83HeadGvRow,s6Step83HeadFvRow] 3 s6Step83HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step83HeadFvBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,860),(861,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step83HeadFv_Outgoing : rowsOwned s6Step83HeadFvAfter [s6Step83HeadFvOut] :=
  hmrRows_owned_drop s6Step83HeadFvAfter [s6Step83HeadGOut,s6Step83HeadFOut,s6Step83HeadGvOut,s6Step83HeadFvOut] 3 s6Step83HeadBank_outgoingOwned

private theorem s6Step83HeadFv_distinct : (s6Step83HeadFvRow.sign::s6Step83HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step83HeadFv_owned : (s6Step83HeadFvRow.sign::s6Step83HeadFvRow.payload).toFinset⊆s6Step83HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step83HeadFvBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,860),(861,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step83HeadFv_reserved : s6Step83HeadFvBefore.reserve s6Step83HeadFvFresh.toFinset=some s6Step83HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step83HeadFvFresh,arenaWires]
  · norm_num [s6Step83HeadFvBefore,s6Step83HeadGvAfter,s6Step83HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step83HeadFvBefore s6Step83HeadFvAfter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,860),(861,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step83HeadFvFresh rfl rfl
    · norm_num [s6Step83HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step83HeadFv_checked : planRowResizeLog s6Step83HeadFvBefore s6Step83HeadFvRow 56 s6Step83HeadFvFresh=
    some (s6Step83HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860],776⟩,growRow 776 s6Step83HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step83HeadFvBefore s6Step83HeadFvAfter s6Step83HeadFvRow 56 s6Step83HeadFvFresh
    s6Step83HeadFv_distinct s6Step83HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step83HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step83HeadFvRow.payload++s6Step83HeadFvFresh) s6Step83HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step83HeadG_Incoming : rowsOwned s6Step83HeadGBefore [s6Step83HeadGRow,s6Step83HeadFRow,s6Step83HeadGvRow,s6Step83HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step83HeadGRow,s6Step83HeadFRow,s6Step83HeadGvRow,s6Step83HeadFvRow] 0 s6Step83HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step83HeadGBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step83HeadG_Outgoing : rowsOwned s6Step83HeadFvAfter [s6Step83HeadGOut,s6Step83HeadFOut,s6Step83HeadGvOut,s6Step83HeadFvOut] :=
  hmrRows_owned_drop s6Step83HeadFvAfter [s6Step83HeadGOut,s6Step83HeadFOut,s6Step83HeadGvOut,s6Step83HeadFvOut] 0 s6Step83HeadBank_outgoingOwned

private theorem s6Step83HeadG_distinct : (s6Step83HeadGRow.sign::s6Step83HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step83HeadG_owned : (s6Step83HeadGRow.sign::s6Step83HeadGRow.payload).toFinset⊆s6Step83HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step83HeadGBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step83HeadG_reserved : s6Step83HeadGBefore.reserve s6Step83HeadGFresh.toFinset=some s6Step83HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step83HeadGFresh,arenaWires]
  · norm_num [s6Step83HeadGBefore,s6Step83HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step83HeadGBefore s6Step83HeadGAfter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step83HeadGFresh rfl rfl
    · norm_num [s6Step83HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step83HeadG_checked : planRowResizeLog s6Step83HeadGBefore s6Step83HeadGRow 228 s6Step83HeadGFresh=
    some (s6Step83HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 877],777⟩,growRow 777 s6Step83HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step83HeadGBefore s6Step83HeadGAfter s6Step83HeadGRow 228 s6Step83HeadGFresh
    s6Step83HeadG_distinct s6Step83HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step83HeadG_reserved
  have rowEq : WindowRow.mk (s6Step83HeadGRow.payload++s6Step83HeadGFresh) s6Step83HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 877],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step83HeadGvBefore : Arena := s6Step83HeadFAfter

private theorem s6Step83HeadGv_Incoming : rowsOwned s6Step83HeadGvBefore [s6Step83HeadGvRow,s6Step83HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step83HeadGRow,s6Step83HeadFRow,s6Step83HeadGvRow,s6Step83HeadFvRow] 2 s6Step83HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step83HeadGvBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,860),(861,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step83HeadGv_Outgoing : rowsOwned s6Step83HeadFvAfter [s6Step83HeadGvOut,s6Step83HeadFvOut] :=
  hmrRows_owned_drop s6Step83HeadFvAfter [s6Step83HeadGOut,s6Step83HeadFOut,s6Step83HeadGvOut,s6Step83HeadFvOut] 2 s6Step83HeadBank_outgoingOwned

private theorem s6Step83HeadGv_distinct : (s6Step83HeadGvRow.sign::s6Step83HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step83HeadGv_owned : (s6Step83HeadGvRow.sign::s6Step83HeadGvRow.payload).toFinset⊆s6Step83HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step83HeadGvBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,860),(861,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step83HeadGv_reserved : s6Step83HeadGvBefore.reserve s6Step83HeadGvFresh.toFinset=some s6Step83HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step83HeadGvFresh,arenaWires]
  · norm_num [s6Step83HeadGvBefore,s6Step83HeadFAfter,s6Step83HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step83HeadGvBefore s6Step83HeadGvAfter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,860),(861,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,860),(861,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step83HeadGvFresh rfl rfl
    · norm_num [s6Step83HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step83HeadGv_checked : planRowResizeLog s6Step83HeadGvBefore s6Step83HeadGvRow 56 s6Step83HeadGvFresh=
    some (s6Step83HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 794],775⟩,growRow 775 s6Step83HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step83HeadGvBefore s6Step83HeadGvAfter s6Step83HeadGvRow 56 s6Step83HeadGvFresh
    s6Step83HeadGv_distinct s6Step83HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step83HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step83HeadGvRow.payload++s6Step83HeadGvFresh) s6Step83HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 794],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step83HeadBank_rows : planWindowRowsLog s6Step83HeadGBefore [(s6Step83HeadGRow,228),(s6Step83HeadFRow,228),(s6Step83HeadGvRow,56),(s6Step83HeadFvRow,56)] [s6Step83HeadGFresh,s6Step83HeadFFresh,s6Step83HeadGvFresh,s6Step83HeadFvFresh]=
    some (s6Step83HeadFvAfter,[s6Step83HeadGOut,s6Step83HeadFOut,s6Step83HeadGvOut,s6Step83HeadFvOut],(growRow 777 s6Step83HeadGFresh ++ (growRow 795 s6Step83HeadFFresh ++ (growRow 775 s6Step83HeadGvFresh ++ (growRow 776 s6Step83HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step83HeadFvAfter [] []=some (s6Step83HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step83HeadFvBefore s6Step83HeadFvAfter s6Step83HeadFvAfter
    s6Step83HeadFvRow s6Step83HeadFvOut 56 s6Step83HeadFvFresh [] [] []
    (growRow 776 s6Step83HeadFvFresh) ([]) s6Step83HeadFv_Incoming s6Step83HeadFv_checked h4 s6Step83HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step83HeadGvBefore s6Step83HeadGvAfter s6Step83HeadFvAfter
    s6Step83HeadGvRow s6Step83HeadGvOut 56 s6Step83HeadGvFresh [(s6Step83HeadFvRow,56)] [s6Step83HeadFvFresh] [s6Step83HeadFvOut]
    (growRow 775 s6Step83HeadGvFresh) ((growRow 776 s6Step83HeadFvFresh ++ [])) s6Step83HeadGv_Incoming s6Step83HeadGv_checked h3 s6Step83HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step83HeadFBefore s6Step83HeadFAfter s6Step83HeadFvAfter
    s6Step83HeadFRow s6Step83HeadFOut 228 s6Step83HeadFFresh [(s6Step83HeadGvRow,56),(s6Step83HeadFvRow,56)] [s6Step83HeadGvFresh,s6Step83HeadFvFresh] [s6Step83HeadGvOut,s6Step83HeadFvOut]
    (growRow 795 s6Step83HeadFFresh) ((growRow 775 s6Step83HeadGvFresh ++ (growRow 776 s6Step83HeadFvFresh ++ []))) s6Step83HeadF_Incoming s6Step83HeadF_checked h2 s6Step83HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step83HeadGBefore s6Step83HeadGAfter s6Step83HeadFvAfter
    s6Step83HeadGRow s6Step83HeadGOut 228 s6Step83HeadGFresh [(s6Step83HeadFRow,228),(s6Step83HeadGvRow,56),(s6Step83HeadFvRow,56)] [s6Step83HeadFFresh,s6Step83HeadGvFresh,s6Step83HeadFvFresh] [s6Step83HeadFOut,s6Step83HeadGvOut,s6Step83HeadFvOut]
    (growRow 777 s6Step83HeadGFresh) ((growRow 795 s6Step83HeadFFresh ++ (growRow 775 s6Step83HeadGvFresh ++ (growRow 776 s6Step83HeadFvFresh ++ [])))) s6Step83HeadG_Incoming s6Step83HeadG_checked h1 s6Step83HeadG_Outgoing
  exact h0

private theorem s6Step83HeadBank_checked : compileHmrBankResizeLog .headroom s6Step83HeadGBefore ⟨s6Step83HeadFRow,s6Step83HeadGRow,s6Step83HeadFvRow,s6Step83HeadGvRow⟩ ⟨228,228,56,56⟩ [s6Step83HeadGFresh,s6Step83HeadFFresh,s6Step83HeadGvFresh,s6Step83HeadFvFresh]=
    some (s6Step83HeadFvAfter,⟨s6Step83HeadFOut,s6Step83HeadGOut,s6Step83HeadFvOut,s6Step83HeadGvOut⟩,(growRow 777 s6Step83HeadGFresh ++ (growRow 795 s6Step83HeadFFresh ++ (growRow 775 s6Step83HeadGvFresh ++ (growRow 776 s6Step83HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step83HeadBank_rows]
  rfl

private theorem s6Step83Front_checked : compileHmrSourceFrontLog s6Step83EntryFBefore s6Step83FrontBank 227 55 ⟨227,226,56,55⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step83FrontLog=some s6Step83FrontPlan := by
  have pairEq : s6Step83FrontPair=⟨s6Step83HeadFRow,s6Step83HeadGRow,s6Step83HeadFvRow,s6Step83HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step83FrontHead=⟨s6Step83ExitFRow,s6Step83ExitGRow,s6Step83ExitFvRow,s6Step83ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step83Add0A=s6Step83FrontHead.f.wires := by decide +kernel
  have gEq : s6Step83Add0B=s6Step83FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step83Add1A=s6Step83FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step83Add1B=s6Step83FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step83EntryFBefore s6Step83FrontBank 227 55 ⟨227,226,56,55⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step83FrontLog s6Step83FrontPlan
  · exact s6Step83Front_entry
  · exact s6Step83EntryBank_checked
  · exact s6Step83Front_sigma
  · rfl
  · exact s6Step83Front_branch
  · rfl
  · simpa only [s6Step83FrontPlan,pairEq] using s6Step83HeadBank_checked
  · simpa only [s6Step83FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step83F4_checked
  · exact s6Step83Counter_checked
  · rfl
  · simpa only [s6Step83FrontPlan,headEq] using s6Step83ExitBank_checked

private theorem s6Step83Complete_explicit_checked : compileHmrEarlyStepLog s6Step83EntryFBefore s6Step83FrontBank 227 55 ⟨227,226,56,55⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step83CompleteLog=some s6Step83CompletePlan := by
  let Q := s6Step83EarlyControlPlan
  have hq := s6Step83EarlyControl_plan_checked
  have fv1 : s6Step83CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step83CompleteOut.fv.payload[2]?.getD s6Step83CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step83CompleteOut.fv.payload[3]?.getD s6Step83CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step83CompleteOut.fv.payload[4]?.getD s6Step83CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step83EntryFBefore s6Step83EarlyControlArena s6Step83FrontBank 227 55 ⟨227,226,56,55⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step83CompleteLog s6Step83FrontPlan Q
    s6Step83Front_checked s6Step83Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step83Complete_owned s6Step83Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step83EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 867 s6Step83CompleteOut.fv.second (s6Step83CompleteOut.fv.payload[2]?.getD s6Step83CompleteOut.fv.sign) (s6Step83CompleteOut.fv.payload[3]?.getD s6Step83CompleteOut.fv.sign) (s6Step83CompleteOut.fv.payload[4]?.getD s6Step83CompleteOut.fv.sign) 881 30 s6Step83EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep83Arena : Arena := s6Step83EntryFBefore
def s6PrivateStep83Bank : WindowBank := s6Step83FrontBank
def s6PrivateStep83Spec : HmrSourceWalkStepLog := ⟨227,55,⟨227,226,56,55⟩,30,.early s6Step83CompleteLog⟩
def s6PrivateStep83Plan : HmrSourceStepPlan := .early s6Step83CompletePlan
theorem s6PrivateStep83_source : s6PrivateStep83Spec=s6ObservedLogs80[3] := rfl
theorem s6PrivateStep83_checked : compileHmrSourceStepLog s6PrivateStep83Arena s6PrivateStep83Bank
    s6PrivateStep83Spec.fgWidth s6PrivateStep83Spec.vWidth s6PrivateStep83Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902]
    6 498 83 s6PrivateStep83Spec.need none s6PrivateStep83Spec.log=some s6PrivateStep83Plan := by
  change compileHmrSourceStepLog s6Step83EntryFBefore s6Step83FrontBank 227 55 ⟨227,226,56,55⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 6 498 83 30 none (.early s6Step83CompleteLog)=some (.early s6Step83CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 83<498)]
  rw [s6Step83Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
