import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep83
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

private def s6Step85CompleteMoves : List (Wire × Wire) := [(876,225)]

private def s6Step85EarlyControlLog : HmrEarlyControlLog := ⟨[876, 780, 877, 786, 927],[881],[855],[803, 922, 879, 784, 891, 783],[]⟩

private def s6Step85FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[927], [786], [780], [877]],[[], [], [], []]⟩,[794],[813],[881],[855],[803, 922, 879, 784, 891, 783, 919, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[803, 922, 879, 784, 891, 783, 919, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918],[881, 855, 803, 922]⟩

private def s6Step85CompleteLog : HmrEarlyStepLog := ⟨s6Step85FrontLog,s6Step85CompleteMoves,s6Step85EarlyControlLog⟩

private def s6Step85ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481],795⟩

private def s6Step85ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860],776⟩

private def s6Step85ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224],777⟩

private def s6Step85ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867],775⟩

private def s6Step85FrontOut : WindowBank := ⟨s6Step85ExitFOut,s6Step85ExitGOut,s6Step85ExitFvOut,s6Step85ExitGvOut⟩

private def s6Step85CompleteOut : WindowBank := s6Step85FrontOut.repacked s6Step85CompleteMoves

private def s6Step85EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step85EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step85EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step85EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step85EarlyControlPositiveArena,[881],s6Step85EarlyControlEqualityArena,[855],⟨⟨794,false⟩,[⟨⟨881,false⟩,855⟩]⟩⟩

private def s6Step85EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step85EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step85EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step85EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step85EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step85EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step85EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,876⟩,⟨⟨772,false⟩,780⟩,⟨⟨771,false⟩,877⟩,⟨⟨770,false⟩,786⟩,⟨⟨769,false⟩,927⟩]⟩

private def s6Step85EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step85EarlyControlZeroArena,s6Step85EarlyControlZeroPlan,s6Step85EarlyControlClassPlan,s6Step85EarlyControlFlagArena,s6Step85EarlyControlFittedArena,s6Step85EarlyControlHistoryArena,s6Step85EarlyControlSigmaArena,s6Step85EarlyControlOutputArena,s6Step85EarlyControlLog⟩

private def s6Step85CounterWork : List Wire := [881, 855, 803, 922]

private theorem s6Step85Counter_bounded : s6Step85CounterWork.toFinset⊆arenaWires := by norm_num [s6Step85CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step85HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step85CounterDuring : Arena := ⟨s6Step85HeadFvAfter.live∪s6Step85CounterWork.toFinset,Finset.union_subset s6Step85HeadFvAfter.bounded s6Step85Counter_bounded⟩

private def s6Step85EntryFFresh : List Wire := []

private def s6Step85EntryFvFresh : List Wire := []

private def s6Step85EntryGFresh : List Wire := []

private def s6Step85EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step85EntryGvAfter : Arena := s6Step85EntryFBefore

private def s6Step85EntryGvFresh : List Wire := []

private def s6Step85ExitFExtra : List Wire := [786]

private def s6Step85ExitFvExtra : List Wire := [877]

private def s6Step85ExitGExtra : List Wire := [225, 927]

private def s6Step85ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,225),(226,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step85ExitGvExtra : List Wire := [780]

private def s6Step85Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step85Add0Work : List Wire := [803, 922, 879, 784, 891, 783, 919, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step85Add0_bounded : s6Step85Add0Work.toFinset⊆arenaWires := by
  have h : s6Step85Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step85Add0During : Arena := ⟨s6Step85Add0Arena.live∪s6Step85Add0Work.toFinset,Finset.union_subset s6Step85Add0Arena.bounded s6Step85Add0_bounded⟩

private def s6Step85Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step85Add1Work : List Wire := [803, 922, 879, 784, 891, 783, 919, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918]

private theorem s6Step85Add1_bounded : s6Step85Add1Work.toFinset⊆arenaWires := by
  have h : s6Step85Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step85Add1During : Arena := ⟨s6Step85Add1Arena.live∪s6Step85Add1Work.toFinset,Finset.union_subset s6Step85Add1Arena.bounded s6Step85Add1_bounded⟩

private def s6Step85F4FlagArena : Arena := ⟨s6Step85HeadFvAfter.live∪{881},Finset.union_subset s6Step85HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step85F4Plan : HmrHybridF4Plan := ⟨s6Step85F4FlagArena,[881],s6Step85Add0Arena,[855],s6Step85Add0During,s6Step85Add0Work,s6Step85Add1During,s6Step85Add1Work⟩

private def s6Step85HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 786],795⟩

private def s6Step85HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 877],776⟩

private def s6Step85HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 927],777⟩

private def s6Step85HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 780],775⟩

private def s6Step85FrontHead : WindowBank := ⟨s6Step85HeadFOut,s6Step85HeadGOut,s6Step85HeadFvOut,s6Step85HeadGvOut⟩

private def s6Step85EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481],795⟩

private def s6Step85EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860],776⟩

private def s6Step85EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225],777⟩

private def s6Step85EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867],775⟩

private def s6Step85FrontPair : WindowBank := ⟨s6Step85EntryFOut,s6Step85EntryGOut,s6Step85EntryFvOut,s6Step85EntryGvOut⟩

private def s6Step85FrontSigmaArena : Arena := ⟨s6Step85EntryGvAfter.live∪{794},Finset.union_subset s6Step85EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step85HeadFFresh : List Wire := [786]

private def s6Step85HeadFvFresh : List Wire := [877]

private def s6Step85HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step85HeadGFresh : List Wire := [927]

private def s6Step85HeadGvFresh : List Wire := [780]

private def s6Step85FrontPlan : HmrSourceFront := ⟨s6Step85EntryGvAfter,s6Step85FrontPair,(growRow 795 s6Step85EntryFFresh ++ (growRow 777 s6Step85EntryGFresh ++ (growRow 776 s6Step85EntryFvFresh ++ (growRow 775 s6Step85EntryGvFresh ++ [])))),s6Step85FrontSigmaArena,[794],s6Step85HeadGBefore,[813],
  s6Step85HeadFvAfter,s6Step85FrontHead,(growRow 777 s6Step85HeadGFresh ++ (growRow 795 s6Step85HeadFFresh ++ (growRow 775 s6Step85HeadGvFresh ++ (growRow 776 s6Step85HeadFvFresh ++ [])))),s6Step85F4Plan,s6Step85CounterDuring,s6Step85CounterWork,s6Step85ExitGvAfter,s6Step85FrontOut,(shrinkRow 777 s6Step85ExitGExtra ++ (shrinkRow 795 s6Step85ExitFExtra ++ (shrinkRow 776 s6Step85ExitFvExtra ++ (shrinkRow 775 s6Step85ExitGvExtra ++ []))))⟩

private def s6Step85CompletePlan : HmrEarlyStepPlan := ⟨s6Step85FrontPlan,s6Step85EarlyControlArena,s6Step85EarlyControlPlan,s6Step85CompleteMoves⟩

private theorem s6Step85Complete_apart : List.Disjoint (s6Step85CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [794, 813, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] := by
  have nd : ((s6Step85CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[794, 813, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step85Complete_owned : (s6Step85CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step85EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step85EarlyControlArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step85CompleteRelocationMove0Borrowed : Arena := ⟨s6Step85ExitGvAfter.live∪{225},Finset.union_subset s6Step85ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step85CompleteRelocation_move0_owned : 876∈s6Step85ExitGvAfter.live := by norm_num [s6Step85ExitGvAfter,arenaWires]

private theorem s6Step85CompleteRelocation_move0_reserve : s6Step85ExitGvAfter.reserve {225}=some s6Step85CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step85ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step85CompleteRelocation_move0_retire : s6Step85CompleteRelocationMove0Borrowed.retireSet {876}=s6Step85EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step85CompleteRelocationMove0Borrowed s6Step85EarlyControlArena {876}
  change s6Step85EarlyControlArena.live=(s6Step85ExitGvAfter.live∪{225})\{876}
  apply hmrArena_update_of_filter_check s6Step85ExitGvAfter s6Step85EarlyControlArena (fun q => ([(0,225),(226,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [225] [876] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step85CompleteRelocation_checked : s6Step85ExitGvAfter.checkRepack [(876,225)]=some s6Step85EarlyControlArena := by
  have tail1 : s6Step85EarlyControlArena.checkRepack []=some s6Step85EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step85ExitGvAfter s6Step85CompleteRelocationMove0Borrowed s6Step85EarlyControlArena s6Step85EarlyControlArena 876 225 []
    s6Step85CompleteRelocation_move0_owned s6Step85CompleteRelocation_move0_reserve s6Step85CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step85Complete_repack : s6Step85ExitGvAfter.checkRepack s6Step85CompleteMoves=some s6Step85EarlyControlArena := by
  simpa only [s6Step85CompleteMoves] using s6Step85CompleteRelocation_checked

private theorem s6Step85EarlyControl_branchOwned : ([813] : List Wire).toFinset⊆s6Step85EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step85EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step85EarlyControl_branch : compileHmrBranchRetirement s6Step85EarlyControlSigmaArena 813=some s6Step85EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step85EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step85EarlyControlSigmaArena s6Step85EarlyControlOutputArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [813] rfl rfl
    decide +kernel

private theorem s6Step85EarlyControl_classEqualityBorrow : s6Step85EarlyControlPositiveArena.checkBorrow (([794, 881] : List Wire).length-1) s6Step85EarlyControlLog.classWork=some s6Step85EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step85EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step85EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step85EarlyControlPositiveArena s6Step85EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step85EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step85EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step85EarlyControl_classEqualityOwned : ([794, 881] : List Wire).toFinset⊆s6Step85EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step85EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step85EarlyControl_classEquality : compileHmrEqualityLog s6Step85EarlyControlPositiveArena [794, 881] 0 s6Step85EarlyControlLog.classWork=some (s6Step85EarlyControlEqualityArena,s6Step85EarlyControlLog.classWork,s6Step85EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step85EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step85EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step85EarlyControl_classOwned : ([769, 927, 794] : List Wire).toFinset⊆s6Step85EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step85EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step85EarlyControl_positiveBorrow : s6Step85EarlyControlZeroArena.checkBorrow (1) s6Step85EarlyControlLog.positiveWork=some s6Step85EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step85EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step85EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step85EarlyControlZeroArena s6Step85EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step85EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step85EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step85EarlyControl_class : compileHmrSourceClassLog s6Step85EarlyControlZeroArena false 769 s6Step85EarlyControlZeroPlan.top 0 794 s6Step85EarlyControlLog.positiveWork s6Step85EarlyControlLog.classWork=some s6Step85EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step85EarlyControlClassPlan s6Step85EarlyControlZeroArena false 769 s6Step85EarlyControlZeroPlan.top 0 794
  constructor
  · decide +kernel
  · exact s6Step85EarlyControl_classOwned
  · exact s6Step85EarlyControl_positiveBorrow
  · exact s6Step85EarlyControl_classEquality

private theorem s6Step85EarlyControl_entryRecordOwned : ([813, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] : List Wire).toFinset⊆s6Step85EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step85EarlyControlArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step85EarlyControl_entrySigmaOwned : ([794, 254] : List Wire).toFinset⊆s6Step85EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step85EarlyControlArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step85EarlyControl_fitBorrow : s6Step85EarlyControlFlagArena.checkBorrow ((31-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] : List Wire).length)) s6Step85EarlyControlLog.recordFresh=some s6Step85EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step85EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step85EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step85EarlyControlFittedArena,s6Step85EarlyControlFlagArena,s6Step85EarlyControlLog,arenaWires]

private theorem s6Step85EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] : List Wire).toFinset⊆s6Step85EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step85EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step85EarlyControl_fit : compileHmrRecordGrowLog s6Step85EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] 31 s6Step85EarlyControlLog.recordFresh=some s6Step85EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step85EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step85EarlyControl_fitBorrow

private theorem s6Step85EarlyControl_flagsBorrow : s6Step85EarlyControlEqualityArena.checkBorrow (6) s6Step85EarlyControlLog.flagWork=some s6Step85EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step85EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step85EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step85EarlyControlEqualityArena s6Step85EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step85EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step85EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step85EarlyControl_flagsOwned : ([855, 253, 252, 251] : List Wire).toFinset⊆s6Step85EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step85EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step85EarlyControl_flags : compileHmrFlagsLog s6Step85EarlyControlClassPlan.equalityArena s6Step85EarlyControlClassPlan.equality.top 253 252 251 s6Step85EarlyControlLog.flagWork=some s6Step85EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step85EarlyControl_flagsOwned⟩
  · exact s6Step85EarlyControl_flagsBorrow

private theorem s6Step85EarlyControl_historyBorrow : s6Step85EarlyControlArena.checkBorrow ((31-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] : List Wire).length)) s6Step85EarlyControlLog.recordFresh=some s6Step85EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step85EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step85EarlyControlArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step85EarlyControlArena s6Step85EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step85EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step85EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step85EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] : List Wire).toFinset⊆s6Step85EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step85EarlyControlArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step85EarlyControl_history : compileHmrRecordGrowLog s6Step85EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] 31 s6Step85EarlyControlLog.recordFresh=some s6Step85EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step85EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step85EarlyControl_historyBorrow

private theorem s6Step85EarlyControl_sigmaOwned : ([254, 794] : List Wire).toFinset⊆s6Step85EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step85EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step85EarlyControl_sigmaReleaseOwned : ([794] : List Wire).toFinset⊆s6Step85EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step85EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step85EarlyControl_sigmaRelease : s6Step85EarlyControlHistoryArena.release {794} (fun _ => false)=some s6Step85EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step85EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step85EarlyControlHistoryArena s6Step85EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [794] rfl rfl
    decide +kernel

private theorem s6Step85EarlyControl_sigma : compileHmrSigmaDropLog s6Step85EarlyControlHistoryArena false 0 0 254 794 []=some s6Step85EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step85EarlyControl_sigmaOwned⟩
  · exact s6Step85EarlyControl_sigmaRelease

private theorem s6Step85EarlyControl_zeroBorrow : s6Step85EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step85EarlyControlLog.zeroWork=some s6Step85EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step85EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step85EarlyControlArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step85EarlyControlArena s6Step85EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step85EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step85EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step85EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step85EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step85EarlyControlArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step85EarlyControl_zero : compileHmrEqualityLog s6Step85EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step85EarlyControlLog.zeroWork=some (s6Step85EarlyControlZeroArena,s6Step85EarlyControlLog.zeroWork,s6Step85EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step85EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step85EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step85EarlyControl_logged : s6Step85EarlyControlPlan.Logged s6Step85EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] 769 794 254 253 252 251 813 31 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step85EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step85EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step85EarlyControl_zero
  · exact s6Step85EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step85EarlyControl_flags
  · exact s6Step85EarlyControl_fit
  · exact s6Step85EarlyControl_history
  · exact s6Step85EarlyControl_sigma
  · exact s6Step85EarlyControl_branch

private theorem s6Step85EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step85EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] 769 794 254 253 252 251 813 31 s6Step85EarlyControlLog=some s6Step85EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step85EarlyControlPlan s6Step85EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] 769 794 254 253 252 251 813 31 s6Step85EarlyControl_logged

private def s6Step85EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481],795⟩

private def s6Step85EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860],776⟩

private def s6Step85EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225],777⟩

private def s6Step85EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867],775⟩

private def s6Step85FrontBank : WindowBank := ⟨s6Step85EntryFRow,s6Step85EntryGRow,s6Step85EntryFvRow,s6Step85EntryGvRow⟩

private def s6Step85Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 786, 795]

private def s6Step85Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 927, 777]

private def s6Step85Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 877, 776]

private def s6Step85Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 780, 775]

private theorem s6Step85Counter_apart : Disjoint s6Step85HeadFvAfter.live s6Step85CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step85HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step85Counter_borrowed : s6Step85HeadFvAfter.checkBorrow 4 s6Step85CounterWork=some s6Step85CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step85HeadFvAfter s6Step85CounterDuring s6Step85CounterWork.toFinset s6Step85Counter_bounded s6Step85Counter_apart rfl

private theorem s6Step85Counter_owned : (794::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step85HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step85HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step85Counter_checked : compileHmrCounterStepLog s6Step85HeadFvAfter true 794 [774, 773, 772, 771, 770, 769] s6Step85CounterWork=some s6Step85CounterDuring := by
  have owned : ∀q∈794::[774, 773, 772, 771, 770, 769],q∈s6Step85HeadFvAfter.live := fun q hq => s6Step85Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step85Counter_borrowed

private def s6Step85EntryFAfter : Arena := s6Step85EntryFBefore

private theorem s6Step85EntryBank_incomingDistinct : ([s6Step85EntryFRow,s6Step85EntryGRow,s6Step85EntryFvRow,s6Step85EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step85EntryF_Incoming : rowsOwned s6Step85EntryFBefore [s6Step85EntryFRow,s6Step85EntryGRow,s6Step85EntryFvRow,s6Step85EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step85EntryFRow,s6Step85EntryGRow,s6Step85EntryFvRow,s6Step85EntryGvRow] 0 s6Step85EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step85EntryFBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step85EntryBank_outgoingOwned : rowsOwned s6Step85EntryGvAfter [s6Step85EntryFOut,s6Step85EntryGOut,s6Step85EntryFvOut,s6Step85EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step85EntryGvAfter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step85EntryF_Outgoing : rowsOwned s6Step85EntryGvAfter [s6Step85EntryFOut,s6Step85EntryGOut,s6Step85EntryFvOut,s6Step85EntryGvOut] :=
  hmrRows_owned_drop s6Step85EntryGvAfter [s6Step85EntryFOut,s6Step85EntryGOut,s6Step85EntryFvOut,s6Step85EntryGvOut] 0 s6Step85EntryBank_outgoingOwned

private theorem s6Step85EntryF_distinct : (s6Step85EntryFRow.sign::s6Step85EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step85EntryF_owned : (s6Step85EntryFRow.sign::s6Step85EntryFRow.payload).toFinset⊆s6Step85EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step85EntryFBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step85EntryF_reserved : s6Step85EntryFBefore.reserve s6Step85EntryFFresh.toFinset=some s6Step85EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step85EntryFFresh,arenaWires]
  · norm_num [s6Step85EntryFBefore,s6Step85EntryFFresh,arenaWires]
  · simp only [s6Step85EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step85EntryF_checked : planRowResizeLog s6Step85EntryFBefore s6Step85EntryFRow 226 s6Step85EntryFFresh=
    some (s6Step85EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481],795⟩,growRow 795 s6Step85EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step85EntryFBefore s6Step85EntryFAfter s6Step85EntryFRow 226 s6Step85EntryFFresh
    s6Step85EntryF_distinct s6Step85EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step85EntryF_reserved
  have rowEq : WindowRow.mk (s6Step85EntryFRow.payload++s6Step85EntryFFresh) s6Step85EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step85EntryFvAfter : Arena := s6Step85EntryFBefore

private def s6Step85EntryFvBefore : Arena := s6Step85EntryFBefore

private theorem s6Step85EntryFv_Incoming : rowsOwned s6Step85EntryFvBefore [s6Step85EntryFvRow,s6Step85EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step85EntryFRow,s6Step85EntryGRow,s6Step85EntryFvRow,s6Step85EntryGvRow] 2 s6Step85EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step85EntryFvBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step85EntryFv_Outgoing : rowsOwned s6Step85EntryGvAfter [s6Step85EntryFvOut,s6Step85EntryGvOut] :=
  hmrRows_owned_drop s6Step85EntryGvAfter [s6Step85EntryFOut,s6Step85EntryGOut,s6Step85EntryFvOut,s6Step85EntryGvOut] 2 s6Step85EntryBank_outgoingOwned

private theorem s6Step85EntryFv_distinct : (s6Step85EntryFvRow.sign::s6Step85EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step85EntryFv_owned : (s6Step85EntryFvRow.sign::s6Step85EntryFvRow.payload).toFinset⊆s6Step85EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step85EntryFvBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step85EntryFv_reserved : s6Step85EntryFvBefore.reserve s6Step85EntryFvFresh.toFinset=some s6Step85EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step85EntryFvFresh,arenaWires]
  · norm_num [s6Step85EntryFvBefore,s6Step85EntryFBefore,s6Step85EntryFvFresh,arenaWires]
  · simp only [s6Step85EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step85EntryFv_checked : planRowResizeLog s6Step85EntryFvBefore s6Step85EntryFvRow 56 s6Step85EntryFvFresh=
    some (s6Step85EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860],776⟩,growRow 776 s6Step85EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step85EntryFvBefore s6Step85EntryFvAfter s6Step85EntryFvRow 56 s6Step85EntryFvFresh
    s6Step85EntryFv_distinct s6Step85EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step85EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step85EntryFvRow.payload++s6Step85EntryFvFresh) s6Step85EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step85EntryGAfter : Arena := s6Step85EntryFBefore

private def s6Step85EntryGBefore : Arena := s6Step85EntryFBefore

private theorem s6Step85EntryG_Incoming : rowsOwned s6Step85EntryGBefore [s6Step85EntryGRow,s6Step85EntryFvRow,s6Step85EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step85EntryFRow,s6Step85EntryGRow,s6Step85EntryFvRow,s6Step85EntryGvRow] 1 s6Step85EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step85EntryGBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step85EntryG_Outgoing : rowsOwned s6Step85EntryGvAfter [s6Step85EntryGOut,s6Step85EntryFvOut,s6Step85EntryGvOut] :=
  hmrRows_owned_drop s6Step85EntryGvAfter [s6Step85EntryFOut,s6Step85EntryGOut,s6Step85EntryFvOut,s6Step85EntryGvOut] 1 s6Step85EntryBank_outgoingOwned

private theorem s6Step85EntryG_distinct : (s6Step85EntryGRow.sign::s6Step85EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step85EntryG_owned : (s6Step85EntryGRow.sign::s6Step85EntryGRow.payload).toFinset⊆s6Step85EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step85EntryGBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step85EntryG_reserved : s6Step85EntryGBefore.reserve s6Step85EntryGFresh.toFinset=some s6Step85EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step85EntryGFresh,arenaWires]
  · norm_num [s6Step85EntryGBefore,s6Step85EntryFBefore,s6Step85EntryGFresh,arenaWires]
  · simp only [s6Step85EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step85EntryG_checked : planRowResizeLog s6Step85EntryGBefore s6Step85EntryGRow 226 s6Step85EntryGFresh=
    some (s6Step85EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225],777⟩,growRow 777 s6Step85EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step85EntryGBefore s6Step85EntryGAfter s6Step85EntryGRow 226 s6Step85EntryGFresh
    s6Step85EntryG_distinct s6Step85EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step85EntryG_reserved
  have rowEq : WindowRow.mk (s6Step85EntryGRow.payload++s6Step85EntryGFresh) s6Step85EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step85EntryGvBefore : Arena := s6Step85EntryFBefore

private theorem s6Step85EntryGv_Incoming : rowsOwned s6Step85EntryGvBefore [s6Step85EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step85EntryFRow,s6Step85EntryGRow,s6Step85EntryFvRow,s6Step85EntryGvRow] 3 s6Step85EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step85EntryGvBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step85EntryGv_Outgoing : rowsOwned s6Step85EntryGvAfter [s6Step85EntryGvOut] :=
  hmrRows_owned_drop s6Step85EntryGvAfter [s6Step85EntryFOut,s6Step85EntryGOut,s6Step85EntryFvOut,s6Step85EntryGvOut] 3 s6Step85EntryBank_outgoingOwned

private theorem s6Step85EntryGv_distinct : (s6Step85EntryGvRow.sign::s6Step85EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step85EntryGv_owned : (s6Step85EntryGvRow.sign::s6Step85EntryGvRow.payload).toFinset⊆s6Step85EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step85EntryGvBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step85EntryGv_reserved : s6Step85EntryGvBefore.reserve s6Step85EntryGvFresh.toFinset=some s6Step85EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step85EntryGvFresh,arenaWires]
  · norm_num [s6Step85EntryGvBefore,s6Step85EntryFBefore,s6Step85EntryGvFresh,arenaWires]
  · simp only [s6Step85EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step85EntryGv_checked : planRowResizeLog s6Step85EntryGvBefore s6Step85EntryGvRow 56 s6Step85EntryGvFresh=
    some (s6Step85EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867],775⟩,growRow 775 s6Step85EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step85EntryGvBefore s6Step85EntryGvAfter s6Step85EntryGvRow 56 s6Step85EntryGvFresh
    s6Step85EntryGv_distinct s6Step85EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step85EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step85EntryGvRow.payload++s6Step85EntryGvFresh) s6Step85EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step85EntryBank_rows : planWindowRowsLog s6Step85EntryFBefore [(s6Step85EntryFRow,226),(s6Step85EntryGRow,226),(s6Step85EntryFvRow,56),(s6Step85EntryGvRow,56)] [s6Step85EntryFFresh,s6Step85EntryGFresh,s6Step85EntryFvFresh,s6Step85EntryGvFresh]=
    some (s6Step85EntryGvAfter,[s6Step85EntryFOut,s6Step85EntryGOut,s6Step85EntryFvOut,s6Step85EntryGvOut],(growRow 795 s6Step85EntryFFresh ++ (growRow 777 s6Step85EntryGFresh ++ (growRow 776 s6Step85EntryFvFresh ++ (growRow 775 s6Step85EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step85EntryGvAfter [] []=some (s6Step85EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step85EntryGvBefore s6Step85EntryGvAfter s6Step85EntryGvAfter
    s6Step85EntryGvRow s6Step85EntryGvOut 56 s6Step85EntryGvFresh [] [] []
    (growRow 775 s6Step85EntryGvFresh) ([]) s6Step85EntryGv_Incoming s6Step85EntryGv_checked h4 s6Step85EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step85EntryFvBefore s6Step85EntryFvAfter s6Step85EntryGvAfter
    s6Step85EntryFvRow s6Step85EntryFvOut 56 s6Step85EntryFvFresh [(s6Step85EntryGvRow,56)] [s6Step85EntryGvFresh] [s6Step85EntryGvOut]
    (growRow 776 s6Step85EntryFvFresh) ((growRow 775 s6Step85EntryGvFresh ++ [])) s6Step85EntryFv_Incoming s6Step85EntryFv_checked h3 s6Step85EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step85EntryGBefore s6Step85EntryGAfter s6Step85EntryGvAfter
    s6Step85EntryGRow s6Step85EntryGOut 226 s6Step85EntryGFresh [(s6Step85EntryFvRow,56),(s6Step85EntryGvRow,56)] [s6Step85EntryFvFresh,s6Step85EntryGvFresh] [s6Step85EntryFvOut,s6Step85EntryGvOut]
    (growRow 777 s6Step85EntryGFresh) ((growRow 776 s6Step85EntryFvFresh ++ (growRow 775 s6Step85EntryGvFresh ++ []))) s6Step85EntryG_Incoming s6Step85EntryG_checked h2 s6Step85EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step85EntryFBefore s6Step85EntryFAfter s6Step85EntryGvAfter
    s6Step85EntryFRow s6Step85EntryFOut 226 s6Step85EntryFFresh [(s6Step85EntryGRow,226),(s6Step85EntryFvRow,56),(s6Step85EntryGvRow,56)] [s6Step85EntryGFresh,s6Step85EntryFvFresh,s6Step85EntryGvFresh] [s6Step85EntryGOut,s6Step85EntryFvOut,s6Step85EntryGvOut]
    (growRow 795 s6Step85EntryFFresh) ((growRow 777 s6Step85EntryGFresh ++ (growRow 776 s6Step85EntryFvFresh ++ (growRow 775 s6Step85EntryGvFresh ++ [])))) s6Step85EntryF_Incoming s6Step85EntryF_checked h1 s6Step85EntryF_Outgoing
  exact h0

private theorem s6Step85EntryBank_checked : compileHmrBankResizeLog .entry s6Step85EntryFBefore ⟨s6Step85EntryFRow,s6Step85EntryGRow,s6Step85EntryFvRow,s6Step85EntryGvRow⟩ ⟨226,226,56,56⟩ [s6Step85EntryFFresh,s6Step85EntryGFresh,s6Step85EntryFvFresh,s6Step85EntryGvFresh]=
    some (s6Step85EntryGvAfter,⟨s6Step85EntryFOut,s6Step85EntryGOut,s6Step85EntryFvOut,s6Step85EntryGvOut⟩,(growRow 795 s6Step85EntryFFresh ++ (growRow 777 s6Step85EntryGFresh ++ (growRow 776 s6Step85EntryFvFresh ++ (growRow 775 s6Step85EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step85EntryBank_rows]
  rfl

private def s6Step85ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,225),(226,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step85ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,225),(226,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step85ExitFBefore : Arena := s6Step85ExitGAfter

private def s6Step85ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 786],795⟩

private def s6Step85ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 877],776⟩

private def s6Step85ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 927],777⟩

private def s6Step85ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 780],775⟩

private theorem s6Step85ExitBank_incomingDistinct : ([s6Step85ExitGRow,s6Step85ExitFRow,s6Step85ExitFvRow,s6Step85ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step85ExitF_Incoming : rowsOwned s6Step85ExitFBefore [s6Step85ExitFRow,s6Step85ExitFvRow,s6Step85ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step85ExitGRow,s6Step85ExitFRow,s6Step85ExitFvRow,s6Step85ExitGvRow] 1 s6Step85ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step85ExitFBefore (fun q => ([(0,225),(226,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step85ExitBank_outgoingOwned : rowsOwned s6Step85ExitGvAfter [s6Step85ExitGOut,s6Step85ExitFOut,s6Step85ExitFvOut,s6Step85ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step85ExitGvAfter (fun q => ([(0,225),(226,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step85ExitF_Outgoing : rowsOwned s6Step85ExitGvAfter [s6Step85ExitFOut,s6Step85ExitFvOut,s6Step85ExitGvOut] :=
  hmrRows_owned_drop s6Step85ExitGvAfter [s6Step85ExitGOut,s6Step85ExitFOut,s6Step85ExitFvOut,s6Step85ExitGvOut] 1 s6Step85ExitBank_outgoingOwned

private theorem s6Step85ExitF_distinct : (s6Step85ExitFRow.sign::s6Step85ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step85ExitF_owned : (s6Step85ExitFRow.sign::s6Step85ExitFRow.payload).toFinset⊆s6Step85ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step85ExitFBefore (fun q => ([(0,225),(226,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step85ExitF_retired : s6Step85ExitFBefore.retireSet s6Step85ExitFExtra.toFinset=s6Step85ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step85ExitFBefore s6Step85ExitFAfter s6Step85ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step85ExitFBefore s6Step85ExitFAfter (fun q => ([(0,225),(226,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,225),(226,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step85ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step85ExitF_checked : planRowResizeLog s6Step85ExitFBefore s6Step85ExitFRow 226 []=
    some (s6Step85ExitFAfter,s6Step85ExitFOut,shrinkRow 795 s6Step85ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step85ExitFBefore s6Step85ExitFRow 226 s6Step85ExitF_distinct s6Step85ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step85ExitFRow.payload.take 226) s6Step85ExitFRow.sign=s6Step85ExitFOut := by decide +kernel
  have hi : s6Step85ExitFRow.payload.drop 226=s6Step85ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step85ExitF_retired] at result
  exact result

private def s6Step85ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,225),(226,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step85ExitFvBefore : Arena := s6Step85ExitFAfter

private theorem s6Step85ExitFv_Incoming : rowsOwned s6Step85ExitFvBefore [s6Step85ExitFvRow,s6Step85ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step85ExitGRow,s6Step85ExitFRow,s6Step85ExitFvRow,s6Step85ExitGvRow] 2 s6Step85ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step85ExitFvBefore (fun q => ([(0,225),(226,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step85ExitFv_Outgoing : rowsOwned s6Step85ExitGvAfter [s6Step85ExitFvOut,s6Step85ExitGvOut] :=
  hmrRows_owned_drop s6Step85ExitGvAfter [s6Step85ExitGOut,s6Step85ExitFOut,s6Step85ExitFvOut,s6Step85ExitGvOut] 2 s6Step85ExitBank_outgoingOwned

private theorem s6Step85ExitFv_distinct : (s6Step85ExitFvRow.sign::s6Step85ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step85ExitFv_owned : (s6Step85ExitFvRow.sign::s6Step85ExitFvRow.payload).toFinset⊆s6Step85ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step85ExitFvBefore (fun q => ([(0,225),(226,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step85ExitFv_retired : s6Step85ExitFvBefore.retireSet s6Step85ExitFvExtra.toFinset=s6Step85ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step85ExitFvBefore s6Step85ExitFvAfter s6Step85ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step85ExitFvBefore s6Step85ExitFvAfter (fun q => ([(0,225),(226,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,225),(226,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step85ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step85ExitFv_checked : planRowResizeLog s6Step85ExitFvBefore s6Step85ExitFvRow 56 []=
    some (s6Step85ExitFvAfter,s6Step85ExitFvOut,shrinkRow 776 s6Step85ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step85ExitFvBefore s6Step85ExitFvRow 56 s6Step85ExitFv_distinct s6Step85ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step85ExitFvRow.payload.take 56) s6Step85ExitFvRow.sign=s6Step85ExitFvOut := by decide +kernel
  have hi : s6Step85ExitFvRow.payload.drop 56=s6Step85ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step85ExitFv_retired] at result
  exact result

private def s6Step85ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step85ExitG_Incoming : rowsOwned s6Step85ExitGBefore [s6Step85ExitGRow,s6Step85ExitFRow,s6Step85ExitFvRow,s6Step85ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step85ExitGRow,s6Step85ExitFRow,s6Step85ExitFvRow,s6Step85ExitGvRow] 0 s6Step85ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step85ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step85ExitG_Outgoing : rowsOwned s6Step85ExitGvAfter [s6Step85ExitGOut,s6Step85ExitFOut,s6Step85ExitFvOut,s6Step85ExitGvOut] :=
  hmrRows_owned_drop s6Step85ExitGvAfter [s6Step85ExitGOut,s6Step85ExitFOut,s6Step85ExitFvOut,s6Step85ExitGvOut] 0 s6Step85ExitBank_outgoingOwned

private theorem s6Step85ExitG_distinct : (s6Step85ExitGRow.sign::s6Step85ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step85ExitG_owned : (s6Step85ExitGRow.sign::s6Step85ExitGRow.payload).toFinset⊆s6Step85ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step85ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step85ExitG_retired : s6Step85ExitGBefore.retireSet s6Step85ExitGExtra.toFinset=s6Step85ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step85ExitGBefore s6Step85ExitGAfter s6Step85ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step85ExitGBefore s6Step85ExitGAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,225),(226,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step85ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step85ExitG_checked : planRowResizeLog s6Step85ExitGBefore s6Step85ExitGRow 225 []=
    some (s6Step85ExitGAfter,s6Step85ExitGOut,shrinkRow 777 s6Step85ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step85ExitGBefore s6Step85ExitGRow 225 s6Step85ExitG_distinct s6Step85ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step85ExitGRow.payload.take 225) s6Step85ExitGRow.sign=s6Step85ExitGOut := by decide +kernel
  have hi : s6Step85ExitGRow.payload.drop 225=s6Step85ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step85ExitG_retired] at result
  exact result

private def s6Step85ExitGvBefore : Arena := s6Step85ExitFvAfter

private theorem s6Step85ExitGv_Incoming : rowsOwned s6Step85ExitGvBefore [s6Step85ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step85ExitGRow,s6Step85ExitFRow,s6Step85ExitFvRow,s6Step85ExitGvRow] 3 s6Step85ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step85ExitGvBefore (fun q => ([(0,225),(226,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step85ExitGv_Outgoing : rowsOwned s6Step85ExitGvAfter [s6Step85ExitGvOut] :=
  hmrRows_owned_drop s6Step85ExitGvAfter [s6Step85ExitGOut,s6Step85ExitFOut,s6Step85ExitFvOut,s6Step85ExitGvOut] 3 s6Step85ExitBank_outgoingOwned

private theorem s6Step85ExitGv_distinct : (s6Step85ExitGvRow.sign::s6Step85ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step85ExitGv_owned : (s6Step85ExitGvRow.sign::s6Step85ExitGvRow.payload).toFinset⊆s6Step85ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step85ExitGvBefore (fun q => ([(0,225),(226,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step85ExitGv_retired : s6Step85ExitGvBefore.retireSet s6Step85ExitGvExtra.toFinset=s6Step85ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step85ExitGvBefore s6Step85ExitGvAfter s6Step85ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step85ExitGvBefore s6Step85ExitGvAfter (fun q => ([(0,225),(226,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,225),(226,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step85ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step85ExitGv_checked : planRowResizeLog s6Step85ExitGvBefore s6Step85ExitGvRow 56 []=
    some (s6Step85ExitGvAfter,s6Step85ExitGvOut,shrinkRow 775 s6Step85ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step85ExitGvBefore s6Step85ExitGvRow 56 s6Step85ExitGv_distinct s6Step85ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step85ExitGvRow.payload.take 56) s6Step85ExitGvRow.sign=s6Step85ExitGvOut := by decide +kernel
  have hi : s6Step85ExitGvRow.payload.drop 56=s6Step85ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step85ExitGv_retired] at result
  exact result

private theorem s6Step85ExitBank_rows : planWindowRowsLog s6Step85ExitGBefore [(s6Step85ExitGRow,225),(s6Step85ExitFRow,226),(s6Step85ExitFvRow,56),(s6Step85ExitGvRow,56)] [[],[],[],[]]=
    some (s6Step85ExitGvAfter,[s6Step85ExitGOut,s6Step85ExitFOut,s6Step85ExitFvOut,s6Step85ExitGvOut],(shrinkRow 777 s6Step85ExitGExtra ++ (shrinkRow 795 s6Step85ExitFExtra ++ (shrinkRow 776 s6Step85ExitFvExtra ++ (shrinkRow 775 s6Step85ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step85ExitGvAfter [] []=some (s6Step85ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step85ExitGvBefore s6Step85ExitGvAfter s6Step85ExitGvAfter
    s6Step85ExitGvRow s6Step85ExitGvOut 56 [] [] [] []
    (shrinkRow 775 s6Step85ExitGvExtra) ([]) s6Step85ExitGv_Incoming s6Step85ExitGv_checked h4 s6Step85ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step85ExitFvBefore s6Step85ExitFvAfter s6Step85ExitGvAfter
    s6Step85ExitFvRow s6Step85ExitFvOut 56 [] [(s6Step85ExitGvRow,56)] [[]] [s6Step85ExitGvOut]
    (shrinkRow 776 s6Step85ExitFvExtra) ((shrinkRow 775 s6Step85ExitGvExtra ++ [])) s6Step85ExitFv_Incoming s6Step85ExitFv_checked h3 s6Step85ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step85ExitFBefore s6Step85ExitFAfter s6Step85ExitGvAfter
    s6Step85ExitFRow s6Step85ExitFOut 226 [] [(s6Step85ExitFvRow,56),(s6Step85ExitGvRow,56)] [[],[]] [s6Step85ExitFvOut,s6Step85ExitGvOut]
    (shrinkRow 795 s6Step85ExitFExtra) ((shrinkRow 776 s6Step85ExitFvExtra ++ (shrinkRow 775 s6Step85ExitGvExtra ++ []))) s6Step85ExitF_Incoming s6Step85ExitF_checked h2 s6Step85ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step85ExitGBefore s6Step85ExitGAfter s6Step85ExitGvAfter
    s6Step85ExitGRow s6Step85ExitGOut 225 [] [(s6Step85ExitFRow,226),(s6Step85ExitFvRow,56),(s6Step85ExitGvRow,56)] [[],[],[]] [s6Step85ExitFOut,s6Step85ExitFvOut,s6Step85ExitGvOut]
    (shrinkRow 777 s6Step85ExitGExtra) ((shrinkRow 795 s6Step85ExitFExtra ++ (shrinkRow 776 s6Step85ExitFvExtra ++ (shrinkRow 775 s6Step85ExitGvExtra ++ [])))) s6Step85ExitG_Incoming s6Step85ExitG_checked h1 s6Step85ExitG_Outgoing
  exact h0

private theorem s6Step85ExitBank_checked : compileHmrBankResizeLog .exit s6Step85ExitGBefore ⟨s6Step85ExitFRow,s6Step85ExitGRow,s6Step85ExitFvRow,s6Step85ExitGvRow⟩ ⟨226,225,56,56⟩ [[],[],[],[]]=
    some (s6Step85ExitGvAfter,⟨s6Step85ExitFOut,s6Step85ExitGOut,s6Step85ExitFvOut,s6Step85ExitGvOut⟩,(shrinkRow 777 s6Step85ExitGExtra ++ (shrinkRow 795 s6Step85ExitFExtra ++ (shrinkRow 776 s6Step85ExitFvExtra ++ (shrinkRow 775 s6Step85ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step85ExitBank_rows]
  rfl

private theorem s6Step85Add0_apart : Disjoint s6Step85Add0Arena.live s6Step85Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step85Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step85Add0_card : s6Step85Add0Arena.live.card=869 := by
  decide +kernel

private theorem s6Step85Add0_borrowed : s6Step85Add0Arena.checkBorrow (hmrHybridCount s6Step85Add0Arena s6Step85Add0B.length) s6Step85Add0Work=some s6Step85Add0During := by
  have len : s6Step85Add0Work.length=hmrHybridCount s6Step85Add0Arena s6Step85Add0B.length := by
    rw [hmrHybridCount,s6Step85Add0_card]
    decide +kernel
  have nd : s6Step85Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step85Add0Arena s6Step85Add0During s6Step85Add0Work.toFinset s6Step85Add0_bounded s6Step85Add0_apart rfl

private theorem s6Step85Add0_distinct : (881::813::855::(s6Step85Add0A++s6Step85Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step85Add0_owned : (881::813::855::(s6Step85Add0A++s6Step85Add0B)).toFinset⊆s6Step85Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step85Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step85Add0_checked : compileHmrHybridCinLog s6Step85Add0Arena 813 881 855 s6Step85Add0A s6Step85Add0B s6Step85Add0Work=some s6Step85Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step85Add0Arena s6Step85Add0During 813 881 855 s6Step85Add0A s6Step85Add0B s6Step85Add0Work
    (by decide +kernel) (by decide +kernel) s6Step85Add0_distinct
    (fun q hq => s6Step85Add0_owned (List.mem_toFinset.mpr hq)) s6Step85Add0_borrowed

private theorem s6Step85Add1_apart : Disjoint s6Step85Add1Arena.live s6Step85Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step85Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step85Add1_card : s6Step85Add1Arena.live.card=869 := by
  decide +kernel

private theorem s6Step85Add1_borrowed : s6Step85Add1Arena.checkBorrow (hmrHybridCount s6Step85Add1Arena s6Step85Add1B.length) s6Step85Add1Work=some s6Step85Add1During := by
  have len : s6Step85Add1Work.length=hmrHybridCount s6Step85Add1Arena s6Step85Add1B.length := by
    rw [hmrHybridCount,s6Step85Add1_card]
    decide +kernel
  have nd : s6Step85Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step85Add1Arena s6Step85Add1During s6Step85Add1Work.toFinset s6Step85Add1_bounded s6Step85Add1_apart rfl

private theorem s6Step85Add1_distinct : (881::813::855::(s6Step85Add1A++s6Step85Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step85Add1_owned : (881::813::855::(s6Step85Add1A++s6Step85Add1B)).toFinset⊆s6Step85Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step85Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step85Add1_checked : compileHmrHybridCinLog s6Step85Add1Arena 813 881 855 s6Step85Add1A s6Step85Add1B s6Step85Add1Work=some s6Step85Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step85Add1Arena s6Step85Add1During 813 881 855 s6Step85Add1A s6Step85Add1B s6Step85Add1Work
    (by decide +kernel) (by decide +kernel) s6Step85Add1_distinct
    (fun q hq => s6Step85Add1_owned (List.mem_toFinset.mpr hq)) s6Step85Add1_borrowed

private theorem s6Step85F4_apart : Disjoint (s6Step85Add0A++s6Step85Add0B).toFinset (s6Step85Add1A++s6Step85Add1B).toFinset := by
  have nd : ((s6Step85Add0A++s6Step85Add0B)++(s6Step85Add1A++s6Step85Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step85F4_carry : s6Step85F4FlagArena.checkBorrow 1 [855]=some s6Step85Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step85F4FlagArena,s6Step85HeadFvAfter,arenaWires]
  · change s6Step85Add0Arena.live=(s6Step85HeadFvAfter.live∪{881})∪{855}
    apply hmrArena_union_pair_of_filter_check s6Step85HeadFvAfter s6Step85Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 881 855 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step85F4_distinct : (794::813::881::855::((s6Step85Add0A++s6Step85Add1A)++(s6Step85Add0B++s6Step85Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step85F4_flag : s6Step85HeadFvAfter.checkBorrow 1 [881]=some s6Step85F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step85HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step85F4_owned : (794::813::((s6Step85Add0A++s6Step85Add1A)++(s6Step85Add0B++s6Step85Add1B))).toFinset⊆s6Step85HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step85HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step85F4_checked : compileHmrHybridF4Log s6Step85HeadFvAfter 794 813 s6Step85Add0A s6Step85Add0B s6Step85Add1A s6Step85Add1B [881] [855] s6Step85Add0Work s6Step85Add1Work=some s6Step85F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step85HeadFvAfter s6Step85F4FlagArena s6Step85Add0Arena s6Step85Add0During s6Step85Add1During 794 813
    s6Step85Add0A s6Step85Add0B s6Step85Add1A s6Step85Add1B [881] [855] s6Step85Add0Work s6Step85Add1Work
    (fun q hq => s6Step85F4_owned (List.mem_toFinset.mpr hq)) s6Step85F4_flag s6Step85F4_carry
    s6Step85F4_distinct s6Step85F4_apart s6Step85Add0_checked s6Step85Add1_checked

private theorem s6Step85Front_branch : s6Step85FrontSigmaArena.checkBorrow 1 [813]=some s6Step85HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step85FrontSigmaArena,s6Step85EntryGvAfter,s6Step85EntryFBefore,arenaWires]
  · change s6Step85HeadGBefore.live=(s6Step85EntryGvAfter.live∪{794})∪{813}
    apply hmrArena_union_pair_of_filter_check s6Step85EntryGvAfter s6Step85HeadGBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 794 813 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step85Front_entry : HmrFrontEntryValid s6Step85EntryFBefore s6Step85FrontBank 226 56 ⟨226,225,56,56⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step85FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step85EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step85EntryFBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step85FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step85Front_sigma : s6Step85EntryGvAfter.checkBorrow 1 [794]=some s6Step85FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step85EntryGvAfter,s6Step85EntryFBefore,arenaWires]
  · rfl

private def s6Step85HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step85HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step85HeadFBefore : Arena := s6Step85HeadGAfter

private def s6Step85HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481],795⟩

private def s6Step85HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860],776⟩

private def s6Step85HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225],777⟩

private def s6Step85HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867],775⟩

private theorem s6Step85HeadBank_incomingDistinct : ([s6Step85HeadGRow,s6Step85HeadFRow,s6Step85HeadGvRow,s6Step85HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step85HeadF_Incoming : rowsOwned s6Step85HeadFBefore [s6Step85HeadFRow,s6Step85HeadGvRow,s6Step85HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step85HeadGRow,s6Step85HeadFRow,s6Step85HeadGvRow,s6Step85HeadFvRow] 1 s6Step85HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step85HeadFBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step85HeadBank_outgoingOwned : rowsOwned s6Step85HeadFvAfter [s6Step85HeadGOut,s6Step85HeadFOut,s6Step85HeadGvOut,s6Step85HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step85HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step85HeadF_Outgoing : rowsOwned s6Step85HeadFvAfter [s6Step85HeadFOut,s6Step85HeadGvOut,s6Step85HeadFvOut] :=
  hmrRows_owned_drop s6Step85HeadFvAfter [s6Step85HeadGOut,s6Step85HeadFOut,s6Step85HeadGvOut,s6Step85HeadFvOut] 1 s6Step85HeadBank_outgoingOwned

private theorem s6Step85HeadF_distinct : (s6Step85HeadFRow.sign::s6Step85HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step85HeadF_owned : (s6Step85HeadFRow.sign::s6Step85HeadFRow.payload).toFinset⊆s6Step85HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step85HeadFBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step85HeadF_reserved : s6Step85HeadFBefore.reserve s6Step85HeadFFresh.toFinset=some s6Step85HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step85HeadFFresh,arenaWires]
  · norm_num [s6Step85HeadFBefore,s6Step85HeadGAfter,s6Step85HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step85HeadFBefore s6Step85HeadFAfter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step85HeadFFresh rfl rfl
    · norm_num [s6Step85HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step85HeadF_checked : planRowResizeLog s6Step85HeadFBefore s6Step85HeadFRow 227 s6Step85HeadFFresh=
    some (s6Step85HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 786],795⟩,growRow 795 s6Step85HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step85HeadFBefore s6Step85HeadFAfter s6Step85HeadFRow 227 s6Step85HeadFFresh
    s6Step85HeadF_distinct s6Step85HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step85HeadF_reserved
  have rowEq : WindowRow.mk (s6Step85HeadFRow.payload++s6Step85HeadFFresh) s6Step85HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 786],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step85HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step85HeadFvBefore : Arena := s6Step85HeadGvAfter

private theorem s6Step85HeadFv_Incoming : rowsOwned s6Step85HeadFvBefore [s6Step85HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step85HeadGRow,s6Step85HeadFRow,s6Step85HeadGvRow,s6Step85HeadFvRow] 3 s6Step85HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step85HeadFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step85HeadFv_Outgoing : rowsOwned s6Step85HeadFvAfter [s6Step85HeadFvOut] :=
  hmrRows_owned_drop s6Step85HeadFvAfter [s6Step85HeadGOut,s6Step85HeadFOut,s6Step85HeadGvOut,s6Step85HeadFvOut] 3 s6Step85HeadBank_outgoingOwned

private theorem s6Step85HeadFv_distinct : (s6Step85HeadFvRow.sign::s6Step85HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step85HeadFv_owned : (s6Step85HeadFvRow.sign::s6Step85HeadFvRow.payload).toFinset⊆s6Step85HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step85HeadFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step85HeadFv_reserved : s6Step85HeadFvBefore.reserve s6Step85HeadFvFresh.toFinset=some s6Step85HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step85HeadFvFresh,arenaWires]
  · norm_num [s6Step85HeadFvBefore,s6Step85HeadGvAfter,s6Step85HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step85HeadFvBefore s6Step85HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step85HeadFvFresh rfl rfl
    · norm_num [s6Step85HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step85HeadFv_checked : planRowResizeLog s6Step85HeadFvBefore s6Step85HeadFvRow 57 s6Step85HeadFvFresh=
    some (s6Step85HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 877],776⟩,growRow 776 s6Step85HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step85HeadFvBefore s6Step85HeadFvAfter s6Step85HeadFvRow 57 s6Step85HeadFvFresh
    s6Step85HeadFv_distinct s6Step85HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step85HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step85HeadFvRow.payload++s6Step85HeadFvFresh) s6Step85HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 877],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step85HeadG_Incoming : rowsOwned s6Step85HeadGBefore [s6Step85HeadGRow,s6Step85HeadFRow,s6Step85HeadGvRow,s6Step85HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step85HeadGRow,s6Step85HeadFRow,s6Step85HeadGvRow,s6Step85HeadFvRow] 0 s6Step85HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step85HeadGBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step85HeadG_Outgoing : rowsOwned s6Step85HeadFvAfter [s6Step85HeadGOut,s6Step85HeadFOut,s6Step85HeadGvOut,s6Step85HeadFvOut] :=
  hmrRows_owned_drop s6Step85HeadFvAfter [s6Step85HeadGOut,s6Step85HeadFOut,s6Step85HeadGvOut,s6Step85HeadFvOut] 0 s6Step85HeadBank_outgoingOwned

private theorem s6Step85HeadG_distinct : (s6Step85HeadGRow.sign::s6Step85HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step85HeadG_owned : (s6Step85HeadGRow.sign::s6Step85HeadGRow.payload).toFinset⊆s6Step85HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step85HeadGBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step85HeadG_reserved : s6Step85HeadGBefore.reserve s6Step85HeadGFresh.toFinset=some s6Step85HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step85HeadGFresh,arenaWires]
  · norm_num [s6Step85HeadGBefore,s6Step85HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step85HeadGBefore s6Step85HeadGAfter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step85HeadGFresh rfl rfl
    · norm_num [s6Step85HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step85HeadG_checked : planRowResizeLog s6Step85HeadGBefore s6Step85HeadGRow 227 s6Step85HeadGFresh=
    some (s6Step85HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 927],777⟩,growRow 777 s6Step85HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step85HeadGBefore s6Step85HeadGAfter s6Step85HeadGRow 227 s6Step85HeadGFresh
    s6Step85HeadG_distinct s6Step85HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step85HeadG_reserved
  have rowEq : WindowRow.mk (s6Step85HeadGRow.payload++s6Step85HeadGFresh) s6Step85HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 927],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step85HeadGvBefore : Arena := s6Step85HeadFAfter

private theorem s6Step85HeadGv_Incoming : rowsOwned s6Step85HeadGvBefore [s6Step85HeadGvRow,s6Step85HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step85HeadGRow,s6Step85HeadFRow,s6Step85HeadGvRow,s6Step85HeadFvRow] 2 s6Step85HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step85HeadGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step85HeadGv_Outgoing : rowsOwned s6Step85HeadFvAfter [s6Step85HeadGvOut,s6Step85HeadFvOut] :=
  hmrRows_owned_drop s6Step85HeadFvAfter [s6Step85HeadGOut,s6Step85HeadFOut,s6Step85HeadGvOut,s6Step85HeadFvOut] 2 s6Step85HeadBank_outgoingOwned

private theorem s6Step85HeadGv_distinct : (s6Step85HeadGvRow.sign::s6Step85HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step85HeadGv_owned : (s6Step85HeadGvRow.sign::s6Step85HeadGvRow.payload).toFinset⊆s6Step85HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step85HeadGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step85HeadGv_reserved : s6Step85HeadGvBefore.reserve s6Step85HeadGvFresh.toFinset=some s6Step85HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step85HeadGvFresh,arenaWires]
  · norm_num [s6Step85HeadGvBefore,s6Step85HeadFAfter,s6Step85HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step85HeadGvBefore s6Step85HeadGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step85HeadGvFresh rfl rfl
    · norm_num [s6Step85HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step85HeadGv_checked : planRowResizeLog s6Step85HeadGvBefore s6Step85HeadGvRow 57 s6Step85HeadGvFresh=
    some (s6Step85HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 780],775⟩,growRow 775 s6Step85HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step85HeadGvBefore s6Step85HeadGvAfter s6Step85HeadGvRow 57 s6Step85HeadGvFresh
    s6Step85HeadGv_distinct s6Step85HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step85HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step85HeadGvRow.payload++s6Step85HeadGvFresh) s6Step85HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 780],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step85HeadBank_rows : planWindowRowsLog s6Step85HeadGBefore [(s6Step85HeadGRow,227),(s6Step85HeadFRow,227),(s6Step85HeadGvRow,57),(s6Step85HeadFvRow,57)] [s6Step85HeadGFresh,s6Step85HeadFFresh,s6Step85HeadGvFresh,s6Step85HeadFvFresh]=
    some (s6Step85HeadFvAfter,[s6Step85HeadGOut,s6Step85HeadFOut,s6Step85HeadGvOut,s6Step85HeadFvOut],(growRow 777 s6Step85HeadGFresh ++ (growRow 795 s6Step85HeadFFresh ++ (growRow 775 s6Step85HeadGvFresh ++ (growRow 776 s6Step85HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step85HeadFvAfter [] []=some (s6Step85HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step85HeadFvBefore s6Step85HeadFvAfter s6Step85HeadFvAfter
    s6Step85HeadFvRow s6Step85HeadFvOut 57 s6Step85HeadFvFresh [] [] []
    (growRow 776 s6Step85HeadFvFresh) ([]) s6Step85HeadFv_Incoming s6Step85HeadFv_checked h4 s6Step85HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step85HeadGvBefore s6Step85HeadGvAfter s6Step85HeadFvAfter
    s6Step85HeadGvRow s6Step85HeadGvOut 57 s6Step85HeadGvFresh [(s6Step85HeadFvRow,57)] [s6Step85HeadFvFresh] [s6Step85HeadFvOut]
    (growRow 775 s6Step85HeadGvFresh) ((growRow 776 s6Step85HeadFvFresh ++ [])) s6Step85HeadGv_Incoming s6Step85HeadGv_checked h3 s6Step85HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step85HeadFBefore s6Step85HeadFAfter s6Step85HeadFvAfter
    s6Step85HeadFRow s6Step85HeadFOut 227 s6Step85HeadFFresh [(s6Step85HeadGvRow,57),(s6Step85HeadFvRow,57)] [s6Step85HeadGvFresh,s6Step85HeadFvFresh] [s6Step85HeadGvOut,s6Step85HeadFvOut]
    (growRow 795 s6Step85HeadFFresh) ((growRow 775 s6Step85HeadGvFresh ++ (growRow 776 s6Step85HeadFvFresh ++ []))) s6Step85HeadF_Incoming s6Step85HeadF_checked h2 s6Step85HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step85HeadGBefore s6Step85HeadGAfter s6Step85HeadFvAfter
    s6Step85HeadGRow s6Step85HeadGOut 227 s6Step85HeadGFresh [(s6Step85HeadFRow,227),(s6Step85HeadGvRow,57),(s6Step85HeadFvRow,57)] [s6Step85HeadFFresh,s6Step85HeadGvFresh,s6Step85HeadFvFresh] [s6Step85HeadFOut,s6Step85HeadGvOut,s6Step85HeadFvOut]
    (growRow 777 s6Step85HeadGFresh) ((growRow 795 s6Step85HeadFFresh ++ (growRow 775 s6Step85HeadGvFresh ++ (growRow 776 s6Step85HeadFvFresh ++ [])))) s6Step85HeadG_Incoming s6Step85HeadG_checked h1 s6Step85HeadG_Outgoing
  exact h0

private theorem s6Step85HeadBank_checked : compileHmrBankResizeLog .headroom s6Step85HeadGBefore ⟨s6Step85HeadFRow,s6Step85HeadGRow,s6Step85HeadFvRow,s6Step85HeadGvRow⟩ ⟨227,227,57,57⟩ [s6Step85HeadGFresh,s6Step85HeadFFresh,s6Step85HeadGvFresh,s6Step85HeadFvFresh]=
    some (s6Step85HeadFvAfter,⟨s6Step85HeadFOut,s6Step85HeadGOut,s6Step85HeadFvOut,s6Step85HeadGvOut⟩,(growRow 777 s6Step85HeadGFresh ++ (growRow 795 s6Step85HeadFFresh ++ (growRow 775 s6Step85HeadGvFresh ++ (growRow 776 s6Step85HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step85HeadBank_rows]
  rfl

private theorem s6Step85Front_checked : compileHmrSourceFrontLog s6Step85EntryFBefore s6Step85FrontBank 226 56 ⟨226,225,56,56⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step85FrontLog=some s6Step85FrontPlan := by
  have pairEq : s6Step85FrontPair=⟨s6Step85HeadFRow,s6Step85HeadGRow,s6Step85HeadFvRow,s6Step85HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step85FrontHead=⟨s6Step85ExitFRow,s6Step85ExitGRow,s6Step85ExitFvRow,s6Step85ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step85Add0A=s6Step85FrontHead.f.wires := by decide +kernel
  have gEq : s6Step85Add0B=s6Step85FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step85Add1A=s6Step85FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step85Add1B=s6Step85FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step85EntryFBefore s6Step85FrontBank 226 56 ⟨226,225,56,56⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step85FrontLog s6Step85FrontPlan
  · exact s6Step85Front_entry
  · exact s6Step85EntryBank_checked
  · exact s6Step85Front_sigma
  · rfl
  · exact s6Step85Front_branch
  · rfl
  · simpa only [s6Step85FrontPlan,pairEq] using s6Step85HeadBank_checked
  · simpa only [s6Step85FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step85F4_checked
  · exact s6Step85Counter_checked
  · rfl
  · simpa only [s6Step85FrontPlan,headEq] using s6Step85ExitBank_checked

private theorem s6Step85Complete_explicit_checked : compileHmrEarlyStepLog s6Step85EntryFBefore s6Step85FrontBank 226 56 ⟨226,225,56,56⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] 31 s6Step85CompleteLog=some s6Step85CompletePlan := by
  let Q := s6Step85EarlyControlPlan
  have hq := s6Step85EarlyControl_plan_checked
  have fv1 : s6Step85CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step85CompleteOut.fv.payload[2]?.getD s6Step85CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step85CompleteOut.fv.payload[3]?.getD s6Step85CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step85CompleteOut.fv.payload[4]?.getD s6Step85CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step85EntryFBefore s6Step85EarlyControlArena s6Step85FrontBank 226 56 ⟨226,225,56,56⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] 31 s6Step85CompleteLog s6Step85FrontPlan Q
    s6Step85Front_checked s6Step85Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step85Complete_owned s6Step85Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step85EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] 769 794 s6Step85CompleteOut.fv.second (s6Step85CompleteOut.fv.payload[2]?.getD s6Step85CompleteOut.fv.sign) (s6Step85CompleteOut.fv.payload[3]?.getD s6Step85CompleteOut.fv.sign) (s6Step85CompleteOut.fv.payload[4]?.getD s6Step85CompleteOut.fv.sign) 813 31 s6Step85EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep85Arena : Arena := s6Step85EntryFBefore
def s6PrivateStep85Bank : WindowBank := s6Step85FrontBank
def s6PrivateStep85Spec : HmrSourceWalkStepLog := ⟨226,56,⟨226,225,56,56⟩,31,.early s6Step85CompleteLog⟩
def s6PrivateStep85Plan : HmrSourceStepPlan := .early s6Step85CompletePlan
theorem s6PrivateStep85_source : s6PrivateStep85Spec=s6ObservedLogs80[5] := rfl
theorem s6PrivateStep85_checked : compileHmrSourceStepLog s6PrivateStep85Arena s6PrivateStep85Bank
    s6PrivateStep85Spec.fgWidth s6PrivateStep85Spec.vWidth s6PrivateStep85Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884]
    6 498 85 s6PrivateStep85Spec.need none s6PrivateStep85Spec.log=some s6PrivateStep85Plan := by
  change compileHmrSourceStepLog s6Step85EntryFBefore s6Step85FrontBank 226 56 ⟨226,225,56,56⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] 6 498 85 31 none (.early s6Step85CompleteLog)=some (.early s6Step85CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 85<498)]
  rw [s6Step85Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
