import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep84
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

private def s6Step86CompleteMoves : List (Wire × Wire) := [(859,224)]

private def s6Step86EarlyControlLog : HmrEarlyControlLog := ⟨[859, 877, 813, 780, 881],[855],[803],[922, 879, 784, 891, 783, 919],[]⟩

private def s6Step86FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [813], [], []],[[780], [877], [786], [927]],[[], [], [], []]⟩,[794],[876],[881],[855],[803, 922, 879, 784, 891, 783, 919, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[803, 922, 879, 784, 891, 783, 919, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918],[881, 855, 803, 922]⟩

private def s6Step86CompleteLog : HmrEarlyStepLog := ⟨s6Step86FrontLog,s6Step86CompleteMoves,s6Step86EarlyControlLog⟩

private def s6Step86ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481],795⟩

private def s6Step86ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927],776⟩

private def s6Step86ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223],777⟩

private def s6Step86ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786],775⟩

private def s6Step86FrontOut : WindowBank := ⟨s6Step86ExitFOut,s6Step86ExitGOut,s6Step86ExitFvOut,s6Step86ExitGvOut⟩

private def s6Step86CompleteOut : WindowBank := s6Step86FrontOut.repacked s6Step86CompleteMoves

private def s6Step86EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step86EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step86EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step86EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step86EarlyControlPositiveArena,[855],s6Step86EarlyControlEqualityArena,[803],⟨⟨794,false⟩,[⟨⟨855,false⟩,803⟩]⟩⟩

private def s6Step86EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step86EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step86EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step86EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step86EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step86EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step86EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,859⟩,⟨⟨772,false⟩,877⟩,⟨⟨771,false⟩,813⟩,⟨⟨770,false⟩,780⟩,⟨⟨769,false⟩,881⟩]⟩

private def s6Step86EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step86EarlyControlZeroArena,s6Step86EarlyControlZeroPlan,s6Step86EarlyControlClassPlan,s6Step86EarlyControlFlagArena,s6Step86EarlyControlFittedArena,s6Step86EarlyControlHistoryArena,s6Step86EarlyControlSigmaArena,s6Step86EarlyControlOutputArena,s6Step86EarlyControlLog⟩

private def s6Step86CounterWork : List Wire := [881, 855, 803, 922]

private theorem s6Step86Counter_bounded : s6Step86CounterWork.toFinset⊆arenaWires := by norm_num [s6Step86CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step86HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step86CounterDuring : Arena := ⟨s6Step86HeadFvAfter.live∪s6Step86CounterWork.toFinset,Finset.union_subset s6Step86HeadFvAfter.bounded s6Step86Counter_bounded⟩

private def s6Step86EntryFFresh : List Wire := []

private def s6Step86EntryFvFresh : List Wire := []

private def s6Step86EntryGFresh : List Wire := [813]

private def s6Step86EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step86EntryGvAfter : Arena := s6Step86EntryGAfter

private def s6Step86EntryGvFresh : List Wire := []

private def s6Step86ExitFExtra : List Wire := [877]

private def s6Step86ExitGExtra : List Wire := [224, 813, 780]

private def s6Step86ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,224),(225,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step86ExitGvAfter : Arena := s6Step86ExitFAfter

private def s6Step86Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step86Add0Work : List Wire := [803, 922, 879, 784, 891, 783, 919, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step86Add0_bounded : s6Step86Add0Work.toFinset⊆arenaWires := by
  have h : s6Step86Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step86Add0During : Arena := ⟨s6Step86Add0Arena.live∪s6Step86Add0Work.toFinset,Finset.union_subset s6Step86Add0Arena.bounded s6Step86Add0_bounded⟩

private def s6Step86Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step86Add1Work : List Wire := [803, 922, 879, 784, 891, 783, 919, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918]

private theorem s6Step86Add1_bounded : s6Step86Add1Work.toFinset⊆arenaWires := by
  have h : s6Step86Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step86Add1During : Arena := ⟨s6Step86Add1Arena.live∪s6Step86Add1Work.toFinset,Finset.union_subset s6Step86Add1Arena.bounded s6Step86Add1_bounded⟩

private def s6Step86F4FlagArena : Arena := ⟨s6Step86HeadFvAfter.live∪{881},Finset.union_subset s6Step86HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step86F4Plan : HmrHybridF4Plan := ⟨s6Step86F4FlagArena,[881],s6Step86Add0Arena,[855],s6Step86Add0During,s6Step86Add0Work,s6Step86Add1During,s6Step86Add1Work⟩

private def s6Step86HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 877],795⟩

private def s6Step86HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927],776⟩

private def s6Step86HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 813, 780],777⟩

private def s6Step86HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786],775⟩

private def s6Step86FrontHead : WindowBank := ⟨s6Step86HeadFOut,s6Step86HeadGOut,s6Step86HeadFvOut,s6Step86HeadGvOut⟩

private def s6Step86EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481],795⟩

private def s6Step86EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860],776⟩

private def s6Step86EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 813],777⟩

private def s6Step86EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867],775⟩

private def s6Step86FrontPair : WindowBank := ⟨s6Step86EntryFOut,s6Step86EntryGOut,s6Step86EntryFvOut,s6Step86EntryGvOut⟩

private def s6Step86FrontSigmaArena : Arena := ⟨s6Step86EntryGvAfter.live∪{794},Finset.union_subset s6Step86EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step86HeadFFresh : List Wire := [877]

private def s6Step86HeadFvFresh : List Wire := [927]

private def s6Step86HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step86HeadGFresh : List Wire := [780]

private def s6Step86HeadGvFresh : List Wire := [786]

private def s6Step86FrontPlan : HmrSourceFront := ⟨s6Step86EntryGvAfter,s6Step86FrontPair,(growRow 795 s6Step86EntryFFresh ++ (growRow 777 s6Step86EntryGFresh ++ (growRow 776 s6Step86EntryFvFresh ++ (growRow 775 s6Step86EntryGvFresh ++ [])))),s6Step86FrontSigmaArena,[794],s6Step86HeadGBefore,[876],
  s6Step86HeadFvAfter,s6Step86FrontHead,(growRow 777 s6Step86HeadGFresh ++ (growRow 795 s6Step86HeadFFresh ++ (growRow 775 s6Step86HeadGvFresh ++ (growRow 776 s6Step86HeadFvFresh ++ [])))),s6Step86F4Plan,s6Step86CounterDuring,s6Step86CounterWork,s6Step86ExitGvAfter,s6Step86FrontOut,(shrinkRow 777 s6Step86ExitGExtra ++ (shrinkRow 795 s6Step86ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))⟩

private def s6Step86CompletePlan : HmrEarlyStepPlan := ⟨s6Step86FrontPlan,s6Step86EarlyControlArena,s6Step86EarlyControlPlan,s6Step86CompleteMoves⟩

private theorem s6Step86Complete_apart : List.Disjoint (s6Step86CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [794, 876, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] := by
  have nd : ((s6Step86CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[794, 876, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step86Complete_owned : (s6Step86CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step86EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step86EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step86CompleteRelocationMove0Borrowed : Arena := ⟨s6Step86ExitGvAfter.live∪{224},Finset.union_subset s6Step86ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step86CompleteRelocation_move0_owned : 859∈s6Step86ExitGvAfter.live := by norm_num [s6Step86ExitGvAfter,s6Step86ExitFAfter,arenaWires]

private theorem s6Step86CompleteRelocation_move0_reserve : s6Step86ExitGvAfter.reserve {224}=some s6Step86CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step86ExitGvAfter,s6Step86ExitFAfter,arenaWires]
  · rfl

private theorem s6Step86CompleteRelocation_move0_retire : s6Step86CompleteRelocationMove0Borrowed.retireSet {859}=s6Step86EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step86CompleteRelocationMove0Borrowed s6Step86EarlyControlArena {859}
  change s6Step86EarlyControlArena.live=(s6Step86ExitGvAfter.live∪{224})\{859}
  apply hmrArena_update_of_filter_check s6Step86ExitGvAfter s6Step86EarlyControlArena (fun q => ([(0,224),(225,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [224] [859] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step86CompleteRelocation_checked : s6Step86ExitGvAfter.checkRepack [(859,224)]=some s6Step86EarlyControlArena := by
  have tail1 : s6Step86EarlyControlArena.checkRepack []=some s6Step86EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step86ExitGvAfter s6Step86CompleteRelocationMove0Borrowed s6Step86EarlyControlArena s6Step86EarlyControlArena 859 224 []
    s6Step86CompleteRelocation_move0_owned s6Step86CompleteRelocation_move0_reserve s6Step86CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step86Complete_repack : s6Step86ExitGvAfter.checkRepack s6Step86CompleteMoves=some s6Step86EarlyControlArena := by
  simpa only [s6Step86CompleteMoves] using s6Step86CompleteRelocation_checked

private theorem s6Step86EarlyControl_branchOwned : ([876] : List Wire).toFinset⊆s6Step86EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step86EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step86EarlyControl_branch : compileHmrBranchRetirement s6Step86EarlyControlSigmaArena 876=some s6Step86EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step86EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step86EarlyControlSigmaArena s6Step86EarlyControlOutputArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [876] rfl rfl
    decide +kernel

private theorem s6Step86EarlyControl_classEqualityBorrow : s6Step86EarlyControlPositiveArena.checkBorrow (([794, 855] : List Wire).length-1) s6Step86EarlyControlLog.classWork=some s6Step86EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step86EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step86EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step86EarlyControlPositiveArena s6Step86EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step86EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step86EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step86EarlyControl_classEqualityOwned : ([794, 855] : List Wire).toFinset⊆s6Step86EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step86EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step86EarlyControl_classEquality : compileHmrEqualityLog s6Step86EarlyControlPositiveArena [794, 855] 0 s6Step86EarlyControlLog.classWork=some (s6Step86EarlyControlEqualityArena,s6Step86EarlyControlLog.classWork,s6Step86EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step86EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step86EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step86EarlyControl_classOwned : ([769, 881, 794] : List Wire).toFinset⊆s6Step86EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step86EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step86EarlyControl_positiveBorrow : s6Step86EarlyControlZeroArena.checkBorrow (1) s6Step86EarlyControlLog.positiveWork=some s6Step86EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step86EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step86EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step86EarlyControlZeroArena s6Step86EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step86EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step86EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step86EarlyControl_class : compileHmrSourceClassLog s6Step86EarlyControlZeroArena false 769 s6Step86EarlyControlZeroPlan.top 0 794 s6Step86EarlyControlLog.positiveWork s6Step86EarlyControlLog.classWork=some s6Step86EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step86EarlyControlClassPlan s6Step86EarlyControlZeroArena false 769 s6Step86EarlyControlZeroPlan.top 0 794
  constructor
  · decide +kernel
  · exact s6Step86EarlyControl_classOwned
  · exact s6Step86EarlyControl_positiveBorrow
  · exact s6Step86EarlyControl_classEquality

private theorem s6Step86EarlyControl_entryRecordOwned : ([876, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] : List Wire).toFinset⊆s6Step86EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step86EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step86EarlyControl_entrySigmaOwned : ([794, 254] : List Wire).toFinset⊆s6Step86EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step86EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step86EarlyControl_fitBorrow : s6Step86EarlyControlFlagArena.checkBorrow ((31-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] : List Wire).length)) s6Step86EarlyControlLog.recordFresh=some s6Step86EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step86EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step86EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step86EarlyControlFittedArena,s6Step86EarlyControlFlagArena,s6Step86EarlyControlLog,arenaWires]

private theorem s6Step86EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] : List Wire).toFinset⊆s6Step86EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step86EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step86EarlyControl_fit : compileHmrRecordGrowLog s6Step86EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] 31 s6Step86EarlyControlLog.recordFresh=some s6Step86EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step86EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step86EarlyControl_fitBorrow

private theorem s6Step86EarlyControl_flagsBorrow : s6Step86EarlyControlEqualityArena.checkBorrow (6) s6Step86EarlyControlLog.flagWork=some s6Step86EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step86EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step86EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step86EarlyControlEqualityArena s6Step86EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step86EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step86EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step86EarlyControl_flagsOwned : ([803, 253, 252, 251] : List Wire).toFinset⊆s6Step86EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step86EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step86EarlyControl_flags : compileHmrFlagsLog s6Step86EarlyControlClassPlan.equalityArena s6Step86EarlyControlClassPlan.equality.top 253 252 251 s6Step86EarlyControlLog.flagWork=some s6Step86EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step86EarlyControl_flagsOwned⟩
  · exact s6Step86EarlyControl_flagsBorrow

private theorem s6Step86EarlyControl_historyBorrow : s6Step86EarlyControlArena.checkBorrow ((31-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] : List Wire).length)) s6Step86EarlyControlLog.recordFresh=some s6Step86EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step86EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step86EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step86EarlyControlArena s6Step86EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step86EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step86EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step86EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] : List Wire).toFinset⊆s6Step86EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step86EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step86EarlyControl_history : compileHmrRecordGrowLog s6Step86EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] 31 s6Step86EarlyControlLog.recordFresh=some s6Step86EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step86EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step86EarlyControl_historyBorrow

private theorem s6Step86EarlyControl_sigmaOwned : ([254, 794] : List Wire).toFinset⊆s6Step86EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step86EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step86EarlyControl_sigmaReleaseOwned : ([794] : List Wire).toFinset⊆s6Step86EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step86EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step86EarlyControl_sigmaRelease : s6Step86EarlyControlHistoryArena.release {794} (fun _ => false)=some s6Step86EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step86EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step86EarlyControlHistoryArena s6Step86EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [794] rfl rfl
    decide +kernel

private theorem s6Step86EarlyControl_sigma : compileHmrSigmaDropLog s6Step86EarlyControlHistoryArena false 0 0 254 794 []=some s6Step86EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step86EarlyControl_sigmaOwned⟩
  · exact s6Step86EarlyControl_sigmaRelease

private theorem s6Step86EarlyControl_zeroBorrow : s6Step86EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step86EarlyControlLog.zeroWork=some s6Step86EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step86EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step86EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step86EarlyControlArena s6Step86EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step86EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step86EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step86EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step86EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step86EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step86EarlyControl_zero : compileHmrEqualityLog s6Step86EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step86EarlyControlLog.zeroWork=some (s6Step86EarlyControlZeroArena,s6Step86EarlyControlLog.zeroWork,s6Step86EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step86EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step86EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step86EarlyControl_logged : s6Step86EarlyControlPlan.Logged s6Step86EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] 769 794 254 253 252 251 876 31 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step86EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step86EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step86EarlyControl_zero
  · exact s6Step86EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step86EarlyControl_flags
  · exact s6Step86EarlyControl_fit
  · exact s6Step86EarlyControl_history
  · exact s6Step86EarlyControl_sigma
  · exact s6Step86EarlyControl_branch

private theorem s6Step86EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step86EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] 769 794 254 253 252 251 876 31 s6Step86EarlyControlLog=some s6Step86EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step86EarlyControlPlan s6Step86EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] 769 794 254 253 252 251 876 31 s6Step86EarlyControl_logged

private def s6Step86EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step86EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481],795⟩

private def s6Step86EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860],776⟩

private def s6Step86EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224],777⟩

private def s6Step86EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867],775⟩

private def s6Step86FrontBank : WindowBank := ⟨s6Step86EntryFRow,s6Step86EntryGRow,s6Step86EntryFvRow,s6Step86EntryGvRow⟩

private def s6Step86Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 877, 795]

private def s6Step86Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 813, 780, 777]

private def s6Step86Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 776]

private def s6Step86Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 775]

private theorem s6Step86Counter_apart : Disjoint s6Step86HeadFvAfter.live s6Step86CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step86HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step86Counter_borrowed : s6Step86HeadFvAfter.checkBorrow 4 s6Step86CounterWork=some s6Step86CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step86HeadFvAfter s6Step86CounterDuring s6Step86CounterWork.toFinset s6Step86Counter_bounded s6Step86Counter_apart rfl

private theorem s6Step86Counter_owned : (794::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step86HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step86HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step86Counter_checked : compileHmrCounterStepLog s6Step86HeadFvAfter true 794 [774, 773, 772, 771, 770, 769] s6Step86CounterWork=some s6Step86CounterDuring := by
  have owned : ∀q∈794::[774, 773, 772, 771, 770, 769],q∈s6Step86HeadFvAfter.live := fun q hq => s6Step86Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step86Counter_borrowed

private def s6Step86EntryFAfter : Arena := s6Step86EntryFBefore

private theorem s6Step86EntryBank_incomingDistinct : ([s6Step86EntryFRow,s6Step86EntryGRow,s6Step86EntryFvRow,s6Step86EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step86EntryF_Incoming : rowsOwned s6Step86EntryFBefore [s6Step86EntryFRow,s6Step86EntryGRow,s6Step86EntryFvRow,s6Step86EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step86EntryFRow,s6Step86EntryGRow,s6Step86EntryFvRow,s6Step86EntryGvRow] 0 s6Step86EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step86EntryFBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step86EntryBank_outgoingOwned : rowsOwned s6Step86EntryGvAfter [s6Step86EntryFOut,s6Step86EntryGOut,s6Step86EntryFvOut,s6Step86EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step86EntryGvAfter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step86EntryF_Outgoing : rowsOwned s6Step86EntryGvAfter [s6Step86EntryFOut,s6Step86EntryGOut,s6Step86EntryFvOut,s6Step86EntryGvOut] :=
  hmrRows_owned_drop s6Step86EntryGvAfter [s6Step86EntryFOut,s6Step86EntryGOut,s6Step86EntryFvOut,s6Step86EntryGvOut] 0 s6Step86EntryBank_outgoingOwned

private theorem s6Step86EntryF_distinct : (s6Step86EntryFRow.sign::s6Step86EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step86EntryF_owned : (s6Step86EntryFRow.sign::s6Step86EntryFRow.payload).toFinset⊆s6Step86EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step86EntryFBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step86EntryF_reserved : s6Step86EntryFBefore.reserve s6Step86EntryFFresh.toFinset=some s6Step86EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step86EntryFFresh,arenaWires]
  · norm_num [s6Step86EntryFBefore,s6Step86EntryFFresh,arenaWires]
  · simp only [s6Step86EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step86EntryF_checked : planRowResizeLog s6Step86EntryFBefore s6Step86EntryFRow 226 s6Step86EntryFFresh=
    some (s6Step86EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481],795⟩,growRow 795 s6Step86EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step86EntryFBefore s6Step86EntryFAfter s6Step86EntryFRow 226 s6Step86EntryFFresh
    s6Step86EntryF_distinct s6Step86EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step86EntryF_reserved
  have rowEq : WindowRow.mk (s6Step86EntryFRow.payload++s6Step86EntryFFresh) s6Step86EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step86EntryFvAfter : Arena := s6Step86EntryGAfter

private def s6Step86EntryFvBefore : Arena := s6Step86EntryGAfter

private theorem s6Step86EntryFv_Incoming : rowsOwned s6Step86EntryFvBefore [s6Step86EntryFvRow,s6Step86EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step86EntryFRow,s6Step86EntryGRow,s6Step86EntryFvRow,s6Step86EntryGvRow] 2 s6Step86EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step86EntryFvBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step86EntryFv_Outgoing : rowsOwned s6Step86EntryGvAfter [s6Step86EntryFvOut,s6Step86EntryGvOut] :=
  hmrRows_owned_drop s6Step86EntryGvAfter [s6Step86EntryFOut,s6Step86EntryGOut,s6Step86EntryFvOut,s6Step86EntryGvOut] 2 s6Step86EntryBank_outgoingOwned

private theorem s6Step86EntryFv_distinct : (s6Step86EntryFvRow.sign::s6Step86EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step86EntryFv_owned : (s6Step86EntryFvRow.sign::s6Step86EntryFvRow.payload).toFinset⊆s6Step86EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step86EntryFvBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step86EntryFv_reserved : s6Step86EntryFvBefore.reserve s6Step86EntryFvFresh.toFinset=some s6Step86EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step86EntryFvFresh,arenaWires]
  · norm_num [s6Step86EntryFvBefore,s6Step86EntryGAfter,s6Step86EntryFvFresh,arenaWires]
  · simp only [s6Step86EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step86EntryFv_checked : planRowResizeLog s6Step86EntryFvBefore s6Step86EntryFvRow 56 s6Step86EntryFvFresh=
    some (s6Step86EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860],776⟩,growRow 776 s6Step86EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step86EntryFvBefore s6Step86EntryFvAfter s6Step86EntryFvRow 56 s6Step86EntryFvFresh
    s6Step86EntryFv_distinct s6Step86EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step86EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step86EntryFvRow.payload++s6Step86EntryFvFresh) s6Step86EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step86EntryGBefore : Arena := s6Step86EntryFBefore

private theorem s6Step86EntryG_Incoming : rowsOwned s6Step86EntryGBefore [s6Step86EntryGRow,s6Step86EntryFvRow,s6Step86EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step86EntryFRow,s6Step86EntryGRow,s6Step86EntryFvRow,s6Step86EntryGvRow] 1 s6Step86EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step86EntryGBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step86EntryG_Outgoing : rowsOwned s6Step86EntryGvAfter [s6Step86EntryGOut,s6Step86EntryFvOut,s6Step86EntryGvOut] :=
  hmrRows_owned_drop s6Step86EntryGvAfter [s6Step86EntryFOut,s6Step86EntryGOut,s6Step86EntryFvOut,s6Step86EntryGvOut] 1 s6Step86EntryBank_outgoingOwned

private theorem s6Step86EntryG_distinct : (s6Step86EntryGRow.sign::s6Step86EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step86EntryG_owned : (s6Step86EntryGRow.sign::s6Step86EntryGRow.payload).toFinset⊆s6Step86EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step86EntryGBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step86EntryG_reserved : s6Step86EntryGBefore.reserve s6Step86EntryGFresh.toFinset=some s6Step86EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step86EntryGFresh,arenaWires]
  · norm_num [s6Step86EntryGBefore,s6Step86EntryFBefore,s6Step86EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step86EntryGBefore s6Step86EntryGAfter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step86EntryGFresh rfl rfl
    · norm_num [s6Step86EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step86EntryG_checked : planRowResizeLog s6Step86EntryGBefore s6Step86EntryGRow 226 s6Step86EntryGFresh=
    some (s6Step86EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 813],777⟩,growRow 777 s6Step86EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step86EntryGBefore s6Step86EntryGAfter s6Step86EntryGRow 226 s6Step86EntryGFresh
    s6Step86EntryG_distinct s6Step86EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step86EntryG_reserved
  have rowEq : WindowRow.mk (s6Step86EntryGRow.payload++s6Step86EntryGFresh) s6Step86EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 813],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step86EntryGvBefore : Arena := s6Step86EntryGAfter

private theorem s6Step86EntryGv_Incoming : rowsOwned s6Step86EntryGvBefore [s6Step86EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step86EntryFRow,s6Step86EntryGRow,s6Step86EntryFvRow,s6Step86EntryGvRow] 3 s6Step86EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step86EntryGvBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step86EntryGv_Outgoing : rowsOwned s6Step86EntryGvAfter [s6Step86EntryGvOut] :=
  hmrRows_owned_drop s6Step86EntryGvAfter [s6Step86EntryFOut,s6Step86EntryGOut,s6Step86EntryFvOut,s6Step86EntryGvOut] 3 s6Step86EntryBank_outgoingOwned

private theorem s6Step86EntryGv_distinct : (s6Step86EntryGvRow.sign::s6Step86EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step86EntryGv_owned : (s6Step86EntryGvRow.sign::s6Step86EntryGvRow.payload).toFinset⊆s6Step86EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step86EntryGvBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step86EntryGv_reserved : s6Step86EntryGvBefore.reserve s6Step86EntryGvFresh.toFinset=some s6Step86EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step86EntryGvFresh,arenaWires]
  · norm_num [s6Step86EntryGvBefore,s6Step86EntryGAfter,s6Step86EntryGvFresh,arenaWires]
  · simp only [s6Step86EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step86EntryGv_checked : planRowResizeLog s6Step86EntryGvBefore s6Step86EntryGvRow 56 s6Step86EntryGvFresh=
    some (s6Step86EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867],775⟩,growRow 775 s6Step86EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step86EntryGvBefore s6Step86EntryGvAfter s6Step86EntryGvRow 56 s6Step86EntryGvFresh
    s6Step86EntryGv_distinct s6Step86EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step86EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step86EntryGvRow.payload++s6Step86EntryGvFresh) s6Step86EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step86EntryBank_rows : planWindowRowsLog s6Step86EntryFBefore [(s6Step86EntryFRow,226),(s6Step86EntryGRow,226),(s6Step86EntryFvRow,56),(s6Step86EntryGvRow,56)] [s6Step86EntryFFresh,s6Step86EntryGFresh,s6Step86EntryFvFresh,s6Step86EntryGvFresh]=
    some (s6Step86EntryGvAfter,[s6Step86EntryFOut,s6Step86EntryGOut,s6Step86EntryFvOut,s6Step86EntryGvOut],(growRow 795 s6Step86EntryFFresh ++ (growRow 777 s6Step86EntryGFresh ++ (growRow 776 s6Step86EntryFvFresh ++ (growRow 775 s6Step86EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step86EntryGvAfter [] []=some (s6Step86EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step86EntryGvBefore s6Step86EntryGvAfter s6Step86EntryGvAfter
    s6Step86EntryGvRow s6Step86EntryGvOut 56 s6Step86EntryGvFresh [] [] []
    (growRow 775 s6Step86EntryGvFresh) ([]) s6Step86EntryGv_Incoming s6Step86EntryGv_checked h4 s6Step86EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step86EntryFvBefore s6Step86EntryFvAfter s6Step86EntryGvAfter
    s6Step86EntryFvRow s6Step86EntryFvOut 56 s6Step86EntryFvFresh [(s6Step86EntryGvRow,56)] [s6Step86EntryGvFresh] [s6Step86EntryGvOut]
    (growRow 776 s6Step86EntryFvFresh) ((growRow 775 s6Step86EntryGvFresh ++ [])) s6Step86EntryFv_Incoming s6Step86EntryFv_checked h3 s6Step86EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step86EntryGBefore s6Step86EntryGAfter s6Step86EntryGvAfter
    s6Step86EntryGRow s6Step86EntryGOut 226 s6Step86EntryGFresh [(s6Step86EntryFvRow,56),(s6Step86EntryGvRow,56)] [s6Step86EntryFvFresh,s6Step86EntryGvFresh] [s6Step86EntryFvOut,s6Step86EntryGvOut]
    (growRow 777 s6Step86EntryGFresh) ((growRow 776 s6Step86EntryFvFresh ++ (growRow 775 s6Step86EntryGvFresh ++ []))) s6Step86EntryG_Incoming s6Step86EntryG_checked h2 s6Step86EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step86EntryFBefore s6Step86EntryFAfter s6Step86EntryGvAfter
    s6Step86EntryFRow s6Step86EntryFOut 226 s6Step86EntryFFresh [(s6Step86EntryGRow,226),(s6Step86EntryFvRow,56),(s6Step86EntryGvRow,56)] [s6Step86EntryGFresh,s6Step86EntryFvFresh,s6Step86EntryGvFresh] [s6Step86EntryGOut,s6Step86EntryFvOut,s6Step86EntryGvOut]
    (growRow 795 s6Step86EntryFFresh) ((growRow 777 s6Step86EntryGFresh ++ (growRow 776 s6Step86EntryFvFresh ++ (growRow 775 s6Step86EntryGvFresh ++ [])))) s6Step86EntryF_Incoming s6Step86EntryF_checked h1 s6Step86EntryF_Outgoing
  exact h0

private theorem s6Step86EntryBank_checked : compileHmrBankResizeLog .entry s6Step86EntryFBefore ⟨s6Step86EntryFRow,s6Step86EntryGRow,s6Step86EntryFvRow,s6Step86EntryGvRow⟩ ⟨226,226,56,56⟩ [s6Step86EntryFFresh,s6Step86EntryGFresh,s6Step86EntryFvFresh,s6Step86EntryGvFresh]=
    some (s6Step86EntryGvAfter,⟨s6Step86EntryFOut,s6Step86EntryGOut,s6Step86EntryFvOut,s6Step86EntryGvOut⟩,(growRow 795 s6Step86EntryFFresh ++ (growRow 777 s6Step86EntryGFresh ++ (growRow 776 s6Step86EntryFvFresh ++ (growRow 775 s6Step86EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step86EntryBank_rows]
  rfl

private def s6Step86ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,224),(225,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step86ExitFBefore : Arena := s6Step86ExitGAfter

private def s6Step86ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 877],795⟩

private def s6Step86ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927],776⟩

private def s6Step86ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 813, 780],777⟩

private def s6Step86ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786],775⟩

private theorem s6Step86ExitBank_incomingDistinct : ([s6Step86ExitGRow,s6Step86ExitFRow,s6Step86ExitFvRow,s6Step86ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step86ExitF_Incoming : rowsOwned s6Step86ExitFBefore [s6Step86ExitFRow,s6Step86ExitFvRow,s6Step86ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step86ExitGRow,s6Step86ExitFRow,s6Step86ExitFvRow,s6Step86ExitGvRow] 1 s6Step86ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step86ExitFBefore (fun q => ([(0,224),(225,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step86ExitBank_outgoingOwned : rowsOwned s6Step86ExitGvAfter [s6Step86ExitGOut,s6Step86ExitFOut,s6Step86ExitFvOut,s6Step86ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step86ExitGvAfter (fun q => ([(0,224),(225,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step86ExitF_Outgoing : rowsOwned s6Step86ExitGvAfter [s6Step86ExitFOut,s6Step86ExitFvOut,s6Step86ExitGvOut] :=
  hmrRows_owned_drop s6Step86ExitGvAfter [s6Step86ExitGOut,s6Step86ExitFOut,s6Step86ExitFvOut,s6Step86ExitGvOut] 1 s6Step86ExitBank_outgoingOwned

private theorem s6Step86ExitF_distinct : (s6Step86ExitFRow.sign::s6Step86ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step86ExitF_owned : (s6Step86ExitFRow.sign::s6Step86ExitFRow.payload).toFinset⊆s6Step86ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step86ExitFBefore (fun q => ([(0,224),(225,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step86ExitF_retired : s6Step86ExitFBefore.retireSet s6Step86ExitFExtra.toFinset=s6Step86ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step86ExitFBefore s6Step86ExitFAfter s6Step86ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step86ExitFBefore s6Step86ExitFAfter (fun q => ([(0,224),(225,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,224),(225,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step86ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step86ExitF_checked : planRowResizeLog s6Step86ExitFBefore s6Step86ExitFRow 226 []=
    some (s6Step86ExitFAfter,s6Step86ExitFOut,shrinkRow 795 s6Step86ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step86ExitFBefore s6Step86ExitFRow 226 s6Step86ExitF_distinct s6Step86ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step86ExitFRow.payload.take 226) s6Step86ExitFRow.sign=s6Step86ExitFOut := by decide +kernel
  have hi : s6Step86ExitFRow.payload.drop 226=s6Step86ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step86ExitF_retired] at result
  exact result

private def s6Step86ExitFvAfter : Arena := s6Step86ExitFAfter

private def s6Step86ExitFvBefore : Arena := s6Step86ExitFAfter

private theorem s6Step86ExitFv_Incoming : rowsOwned s6Step86ExitFvBefore [s6Step86ExitFvRow,s6Step86ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step86ExitGRow,s6Step86ExitFRow,s6Step86ExitFvRow,s6Step86ExitGvRow] 2 s6Step86ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step86ExitFvBefore (fun q => ([(0,224),(225,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step86ExitFv_Outgoing : rowsOwned s6Step86ExitGvAfter [s6Step86ExitFvOut,s6Step86ExitGvOut] :=
  hmrRows_owned_drop s6Step86ExitGvAfter [s6Step86ExitGOut,s6Step86ExitFOut,s6Step86ExitFvOut,s6Step86ExitGvOut] 2 s6Step86ExitBank_outgoingOwned

private theorem s6Step86ExitFv_distinct : (s6Step86ExitFvRow.sign::s6Step86ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step86ExitFv_owned : (s6Step86ExitFvRow.sign::s6Step86ExitFvRow.payload).toFinset⊆s6Step86ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step86ExitFvBefore (fun q => ([(0,224),(225,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step86ExitFv_reserved : s6Step86ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step86ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step86ExitFv_checked : planRowResizeLog s6Step86ExitFvBefore s6Step86ExitFvRow 57 []=
    some (s6Step86ExitFvAfter,s6Step86ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step86ExitFvBefore s6Step86ExitFvAfter s6Step86ExitFvRow 57 []
    s6Step86ExitFv_distinct s6Step86ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step86ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step86ExitFvRow.payload++[]) s6Step86ExitFvRow.sign=s6Step86ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step86ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step86ExitG_Incoming : rowsOwned s6Step86ExitGBefore [s6Step86ExitGRow,s6Step86ExitFRow,s6Step86ExitFvRow,s6Step86ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step86ExitGRow,s6Step86ExitFRow,s6Step86ExitFvRow,s6Step86ExitGvRow] 0 s6Step86ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step86ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step86ExitG_Outgoing : rowsOwned s6Step86ExitGvAfter [s6Step86ExitGOut,s6Step86ExitFOut,s6Step86ExitFvOut,s6Step86ExitGvOut] :=
  hmrRows_owned_drop s6Step86ExitGvAfter [s6Step86ExitGOut,s6Step86ExitFOut,s6Step86ExitFvOut,s6Step86ExitGvOut] 0 s6Step86ExitBank_outgoingOwned

private theorem s6Step86ExitG_distinct : (s6Step86ExitGRow.sign::s6Step86ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step86ExitG_owned : (s6Step86ExitGRow.sign::s6Step86ExitGRow.payload).toFinset⊆s6Step86ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step86ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step86ExitG_retired : s6Step86ExitGBefore.retireSet s6Step86ExitGExtra.toFinset=s6Step86ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step86ExitGBefore s6Step86ExitGAfter s6Step86ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step86ExitGBefore s6Step86ExitGAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,224),(225,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step86ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step86ExitG_checked : planRowResizeLog s6Step86ExitGBefore s6Step86ExitGRow 224 []=
    some (s6Step86ExitGAfter,s6Step86ExitGOut,shrinkRow 777 s6Step86ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step86ExitGBefore s6Step86ExitGRow 224 s6Step86ExitG_distinct s6Step86ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step86ExitGRow.payload.take 224) s6Step86ExitGRow.sign=s6Step86ExitGOut := by decide +kernel
  have hi : s6Step86ExitGRow.payload.drop 224=s6Step86ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step86ExitG_retired] at result
  exact result

private def s6Step86ExitGvBefore : Arena := s6Step86ExitFAfter

private theorem s6Step86ExitGv_Incoming : rowsOwned s6Step86ExitGvBefore [s6Step86ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step86ExitGRow,s6Step86ExitFRow,s6Step86ExitFvRow,s6Step86ExitGvRow] 3 s6Step86ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step86ExitGvBefore (fun q => ([(0,224),(225,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step86ExitGv_Outgoing : rowsOwned s6Step86ExitGvAfter [s6Step86ExitGvOut] :=
  hmrRows_owned_drop s6Step86ExitGvAfter [s6Step86ExitGOut,s6Step86ExitFOut,s6Step86ExitFvOut,s6Step86ExitGvOut] 3 s6Step86ExitBank_outgoingOwned

private theorem s6Step86ExitGv_distinct : (s6Step86ExitGvRow.sign::s6Step86ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step86ExitGv_owned : (s6Step86ExitGvRow.sign::s6Step86ExitGvRow.payload).toFinset⊆s6Step86ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step86ExitGvBefore (fun q => ([(0,224),(225,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step86ExitGv_reserved : s6Step86ExitGvBefore.reserve (∅ : Finset Wire)=some s6Step86ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step86ExitGv_checked : planRowResizeLog s6Step86ExitGvBefore s6Step86ExitGvRow 57 []=
    some (s6Step86ExitGvAfter,s6Step86ExitGvOut,growRow 775 []) := by
  have result := planRowResizeLog_of_growth s6Step86ExitGvBefore s6Step86ExitGvAfter s6Step86ExitGvRow 57 []
    s6Step86ExitGv_distinct s6Step86ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step86ExitGv_reserved
  have rowEq : WindowRow.mk (s6Step86ExitGvRow.payload++[]) s6Step86ExitGvRow.sign=s6Step86ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step86ExitBank_rows : planWindowRowsLog s6Step86ExitGBefore [(s6Step86ExitGRow,224),(s6Step86ExitFRow,226),(s6Step86ExitFvRow,57),(s6Step86ExitGvRow,57)] [[],[],[],[]]=
    some (s6Step86ExitGvAfter,[s6Step86ExitGOut,s6Step86ExitFOut,s6Step86ExitFvOut,s6Step86ExitGvOut],(shrinkRow 777 s6Step86ExitGExtra ++ (shrinkRow 795 s6Step86ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  have h4 : planWindowRowsLog s6Step86ExitGvAfter [] []=some (s6Step86ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step86ExitGvBefore s6Step86ExitGvAfter s6Step86ExitGvAfter
    s6Step86ExitGvRow s6Step86ExitGvOut 57 [] [] [] []
    (growRow 775 []) ([]) s6Step86ExitGv_Incoming s6Step86ExitGv_checked h4 s6Step86ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step86ExitFvBefore s6Step86ExitFvAfter s6Step86ExitGvAfter
    s6Step86ExitFvRow s6Step86ExitFvOut 57 [] [(s6Step86ExitGvRow,57)] [[]] [s6Step86ExitGvOut]
    (growRow 776 []) ((growRow 775 [] ++ [])) s6Step86ExitFv_Incoming s6Step86ExitFv_checked h3 s6Step86ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step86ExitFBefore s6Step86ExitFAfter s6Step86ExitGvAfter
    s6Step86ExitFRow s6Step86ExitFOut 226 [] [(s6Step86ExitFvRow,57),(s6Step86ExitGvRow,57)] [[],[]] [s6Step86ExitFvOut,s6Step86ExitGvOut]
    (shrinkRow 795 s6Step86ExitFExtra) ((growRow 776 [] ++ (growRow 775 [] ++ []))) s6Step86ExitF_Incoming s6Step86ExitF_checked h2 s6Step86ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step86ExitGBefore s6Step86ExitGAfter s6Step86ExitGvAfter
    s6Step86ExitGRow s6Step86ExitGOut 224 [] [(s6Step86ExitFRow,226),(s6Step86ExitFvRow,57),(s6Step86ExitGvRow,57)] [[],[],[]] [s6Step86ExitFOut,s6Step86ExitFvOut,s6Step86ExitGvOut]
    (shrinkRow 777 s6Step86ExitGExtra) ((shrinkRow 795 s6Step86ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ [])))) s6Step86ExitG_Incoming s6Step86ExitG_checked h1 s6Step86ExitG_Outgoing
  exact h0

private theorem s6Step86ExitBank_checked : compileHmrBankResizeLog .exit s6Step86ExitGBefore ⟨s6Step86ExitFRow,s6Step86ExitGRow,s6Step86ExitFvRow,s6Step86ExitGvRow⟩ ⟨226,224,57,57⟩ [[],[],[],[]]=
    some (s6Step86ExitGvAfter,⟨s6Step86ExitFOut,s6Step86ExitGOut,s6Step86ExitFvOut,s6Step86ExitGvOut⟩,(shrinkRow 777 s6Step86ExitGExtra ++ (shrinkRow 795 s6Step86ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step86ExitBank_rows]
  rfl

private theorem s6Step86Add0_apart : Disjoint s6Step86Add0Arena.live s6Step86Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step86Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step86Add0_card : s6Step86Add0Arena.live.card=869 := by
  decide +kernel

private theorem s6Step86Add0_borrowed : s6Step86Add0Arena.checkBorrow (hmrHybridCount s6Step86Add0Arena s6Step86Add0B.length) s6Step86Add0Work=some s6Step86Add0During := by
  have len : s6Step86Add0Work.length=hmrHybridCount s6Step86Add0Arena s6Step86Add0B.length := by
    rw [hmrHybridCount,s6Step86Add0_card]
    decide +kernel
  have nd : s6Step86Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step86Add0Arena s6Step86Add0During s6Step86Add0Work.toFinset s6Step86Add0_bounded s6Step86Add0_apart rfl

private theorem s6Step86Add0_distinct : (881::876::855::(s6Step86Add0A++s6Step86Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step86Add0_owned : (881::876::855::(s6Step86Add0A++s6Step86Add0B)).toFinset⊆s6Step86Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step86Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step86Add0_checked : compileHmrHybridCinLog s6Step86Add0Arena 876 881 855 s6Step86Add0A s6Step86Add0B s6Step86Add0Work=some s6Step86Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step86Add0Arena s6Step86Add0During 876 881 855 s6Step86Add0A s6Step86Add0B s6Step86Add0Work
    (by decide +kernel) (by decide +kernel) s6Step86Add0_distinct
    (fun q hq => s6Step86Add0_owned (List.mem_toFinset.mpr hq)) s6Step86Add0_borrowed

private theorem s6Step86Add1_apart : Disjoint s6Step86Add1Arena.live s6Step86Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step86Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step86Add1_card : s6Step86Add1Arena.live.card=869 := by
  decide +kernel

private theorem s6Step86Add1_borrowed : s6Step86Add1Arena.checkBorrow (hmrHybridCount s6Step86Add1Arena s6Step86Add1B.length) s6Step86Add1Work=some s6Step86Add1During := by
  have len : s6Step86Add1Work.length=hmrHybridCount s6Step86Add1Arena s6Step86Add1B.length := by
    rw [hmrHybridCount,s6Step86Add1_card]
    decide +kernel
  have nd : s6Step86Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step86Add1Arena s6Step86Add1During s6Step86Add1Work.toFinset s6Step86Add1_bounded s6Step86Add1_apart rfl

private theorem s6Step86Add1_distinct : (881::876::855::(s6Step86Add1A++s6Step86Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step86Add1_owned : (881::876::855::(s6Step86Add1A++s6Step86Add1B)).toFinset⊆s6Step86Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step86Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step86Add1_checked : compileHmrHybridCinLog s6Step86Add1Arena 876 881 855 s6Step86Add1A s6Step86Add1B s6Step86Add1Work=some s6Step86Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step86Add1Arena s6Step86Add1During 876 881 855 s6Step86Add1A s6Step86Add1B s6Step86Add1Work
    (by decide +kernel) (by decide +kernel) s6Step86Add1_distinct
    (fun q hq => s6Step86Add1_owned (List.mem_toFinset.mpr hq)) s6Step86Add1_borrowed

private theorem s6Step86F4_apart : Disjoint (s6Step86Add0A++s6Step86Add0B).toFinset (s6Step86Add1A++s6Step86Add1B).toFinset := by
  have nd : ((s6Step86Add0A++s6Step86Add0B)++(s6Step86Add1A++s6Step86Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step86F4_carry : s6Step86F4FlagArena.checkBorrow 1 [855]=some s6Step86Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step86F4FlagArena,s6Step86HeadFvAfter,arenaWires]
  · change s6Step86Add0Arena.live=(s6Step86HeadFvAfter.live∪{881})∪{855}
    apply hmrArena_union_pair_of_filter_check s6Step86HeadFvAfter s6Step86Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 881 855 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step86F4_distinct : (794::876::881::855::((s6Step86Add0A++s6Step86Add1A)++(s6Step86Add0B++s6Step86Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step86F4_flag : s6Step86HeadFvAfter.checkBorrow 1 [881]=some s6Step86F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step86HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step86F4_owned : (794::876::((s6Step86Add0A++s6Step86Add1A)++(s6Step86Add0B++s6Step86Add1B))).toFinset⊆s6Step86HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step86HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step86F4_checked : compileHmrHybridF4Log s6Step86HeadFvAfter 794 876 s6Step86Add0A s6Step86Add0B s6Step86Add1A s6Step86Add1B [881] [855] s6Step86Add0Work s6Step86Add1Work=some s6Step86F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step86HeadFvAfter s6Step86F4FlagArena s6Step86Add0Arena s6Step86Add0During s6Step86Add1During 794 876
    s6Step86Add0A s6Step86Add0B s6Step86Add1A s6Step86Add1B [881] [855] s6Step86Add0Work s6Step86Add1Work
    (fun q hq => s6Step86F4_owned (List.mem_toFinset.mpr hq)) s6Step86F4_flag s6Step86F4_carry
    s6Step86F4_distinct s6Step86F4_apart s6Step86Add0_checked s6Step86Add1_checked

private theorem s6Step86Front_branch : s6Step86FrontSigmaArena.checkBorrow 1 [876]=some s6Step86HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step86FrontSigmaArena,s6Step86EntryGvAfter,s6Step86EntryGAfter,arenaWires]
  · change s6Step86HeadGBefore.live=(s6Step86EntryGvAfter.live∪{794})∪{876}
    apply hmrArena_union_pair_of_filter_check s6Step86EntryGvAfter s6Step86HeadGBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 794 876 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step86Front_entry : HmrFrontEntryValid s6Step86EntryFBefore s6Step86FrontBank 226 56 ⟨226,224,57,57⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step86FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step86EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step86EntryFBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step86FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step86Front_sigma : s6Step86EntryGvAfter.checkBorrow 1 [794]=some s6Step86FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step86EntryGvAfter,s6Step86EntryGAfter,arenaWires]
  · rfl

private def s6Step86HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step86HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step86HeadFBefore : Arena := s6Step86HeadGAfter

private def s6Step86HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481],795⟩

private def s6Step86HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860],776⟩

private def s6Step86HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 813],777⟩

private def s6Step86HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867],775⟩

private theorem s6Step86HeadBank_incomingDistinct : ([s6Step86HeadGRow,s6Step86HeadFRow,s6Step86HeadGvRow,s6Step86HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step86HeadF_Incoming : rowsOwned s6Step86HeadFBefore [s6Step86HeadFRow,s6Step86HeadGvRow,s6Step86HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step86HeadGRow,s6Step86HeadFRow,s6Step86HeadGvRow,s6Step86HeadFvRow] 1 s6Step86HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step86HeadFBefore (fun q => ([(0,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step86HeadBank_outgoingOwned : rowsOwned s6Step86HeadFvAfter [s6Step86HeadGOut,s6Step86HeadFOut,s6Step86HeadGvOut,s6Step86HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step86HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step86HeadF_Outgoing : rowsOwned s6Step86HeadFvAfter [s6Step86HeadFOut,s6Step86HeadGvOut,s6Step86HeadFvOut] :=
  hmrRows_owned_drop s6Step86HeadFvAfter [s6Step86HeadGOut,s6Step86HeadFOut,s6Step86HeadGvOut,s6Step86HeadFvOut] 1 s6Step86HeadBank_outgoingOwned

private theorem s6Step86HeadF_distinct : (s6Step86HeadFRow.sign::s6Step86HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step86HeadF_owned : (s6Step86HeadFRow.sign::s6Step86HeadFRow.payload).toFinset⊆s6Step86HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step86HeadFBefore (fun q => ([(0,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step86HeadF_reserved : s6Step86HeadFBefore.reserve s6Step86HeadFFresh.toFinset=some s6Step86HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step86HeadFFresh,arenaWires]
  · norm_num [s6Step86HeadFBefore,s6Step86HeadGAfter,s6Step86HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step86HeadFBefore s6Step86HeadFAfter (fun q => ([(0,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step86HeadFFresh rfl rfl
    · norm_num [s6Step86HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step86HeadF_checked : planRowResizeLog s6Step86HeadFBefore s6Step86HeadFRow 227 s6Step86HeadFFresh=
    some (s6Step86HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 877],795⟩,growRow 795 s6Step86HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step86HeadFBefore s6Step86HeadFAfter s6Step86HeadFRow 227 s6Step86HeadFFresh
    s6Step86HeadF_distinct s6Step86HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step86HeadF_reserved
  have rowEq : WindowRow.mk (s6Step86HeadFRow.payload++s6Step86HeadFFresh) s6Step86HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 877],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step86HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step86HeadFvBefore : Arena := s6Step86HeadGvAfter

private theorem s6Step86HeadFv_Incoming : rowsOwned s6Step86HeadFvBefore [s6Step86HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step86HeadGRow,s6Step86HeadFRow,s6Step86HeadGvRow,s6Step86HeadFvRow] 3 s6Step86HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step86HeadFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step86HeadFv_Outgoing : rowsOwned s6Step86HeadFvAfter [s6Step86HeadFvOut] :=
  hmrRows_owned_drop s6Step86HeadFvAfter [s6Step86HeadGOut,s6Step86HeadFOut,s6Step86HeadGvOut,s6Step86HeadFvOut] 3 s6Step86HeadBank_outgoingOwned

private theorem s6Step86HeadFv_distinct : (s6Step86HeadFvRow.sign::s6Step86HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step86HeadFv_owned : (s6Step86HeadFvRow.sign::s6Step86HeadFvRow.payload).toFinset⊆s6Step86HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step86HeadFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step86HeadFv_reserved : s6Step86HeadFvBefore.reserve s6Step86HeadFvFresh.toFinset=some s6Step86HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step86HeadFvFresh,arenaWires]
  · norm_num [s6Step86HeadFvBefore,s6Step86HeadGvAfter,s6Step86HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step86HeadFvBefore s6Step86HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step86HeadFvFresh rfl rfl
    · norm_num [s6Step86HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step86HeadFv_checked : planRowResizeLog s6Step86HeadFvBefore s6Step86HeadFvRow 57 s6Step86HeadFvFresh=
    some (s6Step86HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927],776⟩,growRow 776 s6Step86HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step86HeadFvBefore s6Step86HeadFvAfter s6Step86HeadFvRow 57 s6Step86HeadFvFresh
    s6Step86HeadFv_distinct s6Step86HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step86HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step86HeadFvRow.payload++s6Step86HeadFvFresh) s6Step86HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step86HeadG_Incoming : rowsOwned s6Step86HeadGBefore [s6Step86HeadGRow,s6Step86HeadFRow,s6Step86HeadGvRow,s6Step86HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step86HeadGRow,s6Step86HeadFRow,s6Step86HeadGvRow,s6Step86HeadFvRow] 0 s6Step86HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step86HeadGBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step86HeadG_Outgoing : rowsOwned s6Step86HeadFvAfter [s6Step86HeadGOut,s6Step86HeadFOut,s6Step86HeadGvOut,s6Step86HeadFvOut] :=
  hmrRows_owned_drop s6Step86HeadFvAfter [s6Step86HeadGOut,s6Step86HeadFOut,s6Step86HeadGvOut,s6Step86HeadFvOut] 0 s6Step86HeadBank_outgoingOwned

private theorem s6Step86HeadG_distinct : (s6Step86HeadGRow.sign::s6Step86HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step86HeadG_owned : (s6Step86HeadGRow.sign::s6Step86HeadGRow.payload).toFinset⊆s6Step86HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step86HeadGBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step86HeadG_reserved : s6Step86HeadGBefore.reserve s6Step86HeadGFresh.toFinset=some s6Step86HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step86HeadGFresh,arenaWires]
  · norm_num [s6Step86HeadGBefore,s6Step86HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step86HeadGBefore s6Step86HeadGAfter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step86HeadGFresh rfl rfl
    · norm_num [s6Step86HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step86HeadG_checked : planRowResizeLog s6Step86HeadGBefore s6Step86HeadGRow 227 s6Step86HeadGFresh=
    some (s6Step86HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 813, 780],777⟩,growRow 777 s6Step86HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step86HeadGBefore s6Step86HeadGAfter s6Step86HeadGRow 227 s6Step86HeadGFresh
    s6Step86HeadG_distinct s6Step86HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step86HeadG_reserved
  have rowEq : WindowRow.mk (s6Step86HeadGRow.payload++s6Step86HeadGFresh) s6Step86HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 813, 780],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step86HeadGvBefore : Arena := s6Step86HeadFAfter

private theorem s6Step86HeadGv_Incoming : rowsOwned s6Step86HeadGvBefore [s6Step86HeadGvRow,s6Step86HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step86HeadGRow,s6Step86HeadFRow,s6Step86HeadGvRow,s6Step86HeadFvRow] 2 s6Step86HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step86HeadGvBefore (fun q => ([(0,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step86HeadGv_Outgoing : rowsOwned s6Step86HeadFvAfter [s6Step86HeadGvOut,s6Step86HeadFvOut] :=
  hmrRows_owned_drop s6Step86HeadFvAfter [s6Step86HeadGOut,s6Step86HeadFOut,s6Step86HeadGvOut,s6Step86HeadFvOut] 2 s6Step86HeadBank_outgoingOwned

private theorem s6Step86HeadGv_distinct : (s6Step86HeadGvRow.sign::s6Step86HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step86HeadGv_owned : (s6Step86HeadGvRow.sign::s6Step86HeadGvRow.payload).toFinset⊆s6Step86HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step86HeadGvBefore (fun q => ([(0,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step86HeadGv_reserved : s6Step86HeadGvBefore.reserve s6Step86HeadGvFresh.toFinset=some s6Step86HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step86HeadGvFresh,arenaWires]
  · norm_num [s6Step86HeadGvBefore,s6Step86HeadFAfter,s6Step86HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step86HeadGvBefore s6Step86HeadGvAfter (fun q => ([(0,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step86HeadGvFresh rfl rfl
    · norm_num [s6Step86HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step86HeadGv_checked : planRowResizeLog s6Step86HeadGvBefore s6Step86HeadGvRow 57 s6Step86HeadGvFresh=
    some (s6Step86HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786],775⟩,growRow 775 s6Step86HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step86HeadGvBefore s6Step86HeadGvAfter s6Step86HeadGvRow 57 s6Step86HeadGvFresh
    s6Step86HeadGv_distinct s6Step86HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step86HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step86HeadGvRow.payload++s6Step86HeadGvFresh) s6Step86HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step86HeadBank_rows : planWindowRowsLog s6Step86HeadGBefore [(s6Step86HeadGRow,227),(s6Step86HeadFRow,227),(s6Step86HeadGvRow,57),(s6Step86HeadFvRow,57)] [s6Step86HeadGFresh,s6Step86HeadFFresh,s6Step86HeadGvFresh,s6Step86HeadFvFresh]=
    some (s6Step86HeadFvAfter,[s6Step86HeadGOut,s6Step86HeadFOut,s6Step86HeadGvOut,s6Step86HeadFvOut],(growRow 777 s6Step86HeadGFresh ++ (growRow 795 s6Step86HeadFFresh ++ (growRow 775 s6Step86HeadGvFresh ++ (growRow 776 s6Step86HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step86HeadFvAfter [] []=some (s6Step86HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step86HeadFvBefore s6Step86HeadFvAfter s6Step86HeadFvAfter
    s6Step86HeadFvRow s6Step86HeadFvOut 57 s6Step86HeadFvFresh [] [] []
    (growRow 776 s6Step86HeadFvFresh) ([]) s6Step86HeadFv_Incoming s6Step86HeadFv_checked h4 s6Step86HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step86HeadGvBefore s6Step86HeadGvAfter s6Step86HeadFvAfter
    s6Step86HeadGvRow s6Step86HeadGvOut 57 s6Step86HeadGvFresh [(s6Step86HeadFvRow,57)] [s6Step86HeadFvFresh] [s6Step86HeadFvOut]
    (growRow 775 s6Step86HeadGvFresh) ((growRow 776 s6Step86HeadFvFresh ++ [])) s6Step86HeadGv_Incoming s6Step86HeadGv_checked h3 s6Step86HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step86HeadFBefore s6Step86HeadFAfter s6Step86HeadFvAfter
    s6Step86HeadFRow s6Step86HeadFOut 227 s6Step86HeadFFresh [(s6Step86HeadGvRow,57),(s6Step86HeadFvRow,57)] [s6Step86HeadGvFresh,s6Step86HeadFvFresh] [s6Step86HeadGvOut,s6Step86HeadFvOut]
    (growRow 795 s6Step86HeadFFresh) ((growRow 775 s6Step86HeadGvFresh ++ (growRow 776 s6Step86HeadFvFresh ++ []))) s6Step86HeadF_Incoming s6Step86HeadF_checked h2 s6Step86HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step86HeadGBefore s6Step86HeadGAfter s6Step86HeadFvAfter
    s6Step86HeadGRow s6Step86HeadGOut 227 s6Step86HeadGFresh [(s6Step86HeadFRow,227),(s6Step86HeadGvRow,57),(s6Step86HeadFvRow,57)] [s6Step86HeadFFresh,s6Step86HeadGvFresh,s6Step86HeadFvFresh] [s6Step86HeadFOut,s6Step86HeadGvOut,s6Step86HeadFvOut]
    (growRow 777 s6Step86HeadGFresh) ((growRow 795 s6Step86HeadFFresh ++ (growRow 775 s6Step86HeadGvFresh ++ (growRow 776 s6Step86HeadFvFresh ++ [])))) s6Step86HeadG_Incoming s6Step86HeadG_checked h1 s6Step86HeadG_Outgoing
  exact h0

private theorem s6Step86HeadBank_checked : compileHmrBankResizeLog .headroom s6Step86HeadGBefore ⟨s6Step86HeadFRow,s6Step86HeadGRow,s6Step86HeadFvRow,s6Step86HeadGvRow⟩ ⟨227,227,57,57⟩ [s6Step86HeadGFresh,s6Step86HeadFFresh,s6Step86HeadGvFresh,s6Step86HeadFvFresh]=
    some (s6Step86HeadFvAfter,⟨s6Step86HeadFOut,s6Step86HeadGOut,s6Step86HeadFvOut,s6Step86HeadGvOut⟩,(growRow 777 s6Step86HeadGFresh ++ (growRow 795 s6Step86HeadFFresh ++ (growRow 775 s6Step86HeadGvFresh ++ (growRow 776 s6Step86HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step86HeadBank_rows]
  rfl

private theorem s6Step86Front_checked : compileHmrSourceFrontLog s6Step86EntryFBefore s6Step86FrontBank 226 56 ⟨226,224,57,57⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step86FrontLog=some s6Step86FrontPlan := by
  have pairEq : s6Step86FrontPair=⟨s6Step86HeadFRow,s6Step86HeadGRow,s6Step86HeadFvRow,s6Step86HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step86FrontHead=⟨s6Step86ExitFRow,s6Step86ExitGRow,s6Step86ExitFvRow,s6Step86ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step86Add0A=s6Step86FrontHead.f.wires := by decide +kernel
  have gEq : s6Step86Add0B=s6Step86FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step86Add1A=s6Step86FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step86Add1B=s6Step86FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step86EntryFBefore s6Step86FrontBank 226 56 ⟨226,224,57,57⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step86FrontLog s6Step86FrontPlan
  · exact s6Step86Front_entry
  · exact s6Step86EntryBank_checked
  · exact s6Step86Front_sigma
  · rfl
  · exact s6Step86Front_branch
  · rfl
  · simpa only [s6Step86FrontPlan,pairEq] using s6Step86HeadBank_checked
  · simpa only [s6Step86FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step86F4_checked
  · exact s6Step86Counter_checked
  · rfl
  · simpa only [s6Step86FrontPlan,headEq] using s6Step86ExitBank_checked

private theorem s6Step86Complete_explicit_checked : compileHmrEarlyStepLog s6Step86EntryFBefore s6Step86FrontBank 226 56 ⟨226,224,57,57⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] 31 s6Step86CompleteLog=some s6Step86CompletePlan := by
  let Q := s6Step86EarlyControlPlan
  have hq := s6Step86EarlyControl_plan_checked
  have fv1 : s6Step86CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step86CompleteOut.fv.payload[2]?.getD s6Step86CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step86CompleteOut.fv.payload[3]?.getD s6Step86CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step86CompleteOut.fv.payload[4]?.getD s6Step86CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step86EntryFBefore s6Step86EarlyControlArena s6Step86FrontBank 226 56 ⟨226,224,57,57⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] 31 s6Step86CompleteLog s6Step86FrontPlan Q
    s6Step86Front_checked s6Step86Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step86Complete_owned s6Step86Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step86EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] 769 794 s6Step86CompleteOut.fv.second (s6Step86CompleteOut.fv.payload[2]?.getD s6Step86CompleteOut.fv.sign) (s6Step86CompleteOut.fv.payload[3]?.getD s6Step86CompleteOut.fv.sign) (s6Step86CompleteOut.fv.payload[4]?.getD s6Step86CompleteOut.fv.sign) 876 31 s6Step86EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep86Arena : Arena := s6Step86EntryFBefore
def s6PrivateStep86Bank : WindowBank := s6Step86FrontBank
def s6PrivateStep86Spec : HmrSourceWalkStepLog := ⟨226,56,⟨226,224,57,57⟩,31,.early s6Step86CompleteLog⟩
def s6PrivateStep86Plan : HmrSourceStepPlan := .early s6Step86CompletePlan
theorem s6PrivateStep86_source : s6PrivateStep86Spec=s6ObservedLogs80[6] := rfl
theorem s6PrivateStep86_checked : compileHmrSourceStepLog s6PrivateStep86Arena s6PrivateStep86Bank
    s6PrivateStep86Spec.fgWidth s6PrivateStep86Spec.vWidth s6PrivateStep86Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884]
    6 498 86 s6PrivateStep86Spec.need none s6PrivateStep86Spec.log=some s6PrivateStep86Plan := by
  change compileHmrSourceStepLog s6Step86EntryFBefore s6Step86FrontBank 226 56 ⟨226,224,57,57⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] 6 498 86 31 none (.early s6Step86CompleteLog)=some (.early s6Step86CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 86<498)]
  rw [s6Step86Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
