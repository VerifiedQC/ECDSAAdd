import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep82
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

private def s6Step84CompleteMoves : List (Wire × Wire) := [(927,482)]

private def s6Step84EarlyControlLog : HmrEarlyControlLog := ⟨[927, 786, 780, 877, 881],[855],[803],[922, 879, 784, 891, 783, 919],[884]⟩

private def s6Step84FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [881], [], [867]],[[855], [877], [786], [780]],[[], [], [], []]⟩,[813],[794],[803],[922],[879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797],[803, 922, 879, 784]⟩

private def s6Step84CompleteLog : HmrEarlyStepLog := ⟨s6Step84FrontLog,s6Step84CompleteMoves,s6Step84EarlyControlLog⟩

private def s6Step84ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481],795⟩

private def s6Step84ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860],776⟩

private def s6Step84ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225],777⟩

private def s6Step84ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867],775⟩

private def s6Step84FrontOut : WindowBank := ⟨s6Step84ExitFOut,s6Step84ExitGOut,s6Step84ExitFvOut,s6Step84ExitGvOut⟩

private def s6Step84CompleteOut : WindowBank := s6Step84FrontOut.repacked s6Step84CompleteMoves

private def s6Step84EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step84EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step84EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step84EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step84EarlyControlPositiveArena,[855],s6Step84EarlyControlEqualityArena,[803],⟨⟨813,false⟩,[⟨⟨855,false⟩,803⟩]⟩⟩

private def s6Step84EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step84EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step84EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step84EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step84EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step84EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step84EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,927⟩,⟨⟨772,false⟩,786⟩,⟨⟨771,false⟩,780⟩,⟨⟨770,false⟩,877⟩,⟨⟨769,false⟩,881⟩]⟩

private def s6Step84EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step84EarlyControlZeroArena,s6Step84EarlyControlZeroPlan,s6Step84EarlyControlClassPlan,s6Step84EarlyControlFlagArena,s6Step84EarlyControlFittedArena,s6Step84EarlyControlHistoryArena,s6Step84EarlyControlSigmaArena,s6Step84EarlyControlOutputArena,s6Step84EarlyControlLog⟩

private def s6Step84CounterWork : List Wire := [803, 922, 879, 784]

private theorem s6Step84Counter_bounded : s6Step84CounterWork.toFinset⊆arenaWires := by norm_num [s6Step84CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step84HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step84CounterDuring : Arena := ⟨s6Step84HeadFvAfter.live∪s6Step84CounterWork.toFinset,Finset.union_subset s6Step84HeadFvAfter.bounded s6Step84Counter_bounded⟩

private def s6Step84EntryFFresh : List Wire := []

private def s6Step84EntryFvFresh : List Wire := []

private def s6Step84EntryGFresh : List Wire := [881]

private def s6Step84EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step84EntryGvFresh : List Wire := [867]

private def s6Step84ExitFExtra : List Wire := [482, 877]

private def s6Step84ExitFvExtra : List Wire := [780]

private def s6Step84ExitGExtra : List Wire := [881, 855]

private def s6Step84ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,482),(483,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step84ExitGvExtra : List Wire := [786]

private def s6Step84Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step84Add0Work : List Wire := [879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step84Add0_bounded : s6Step84Add0Work.toFinset⊆arenaWires := by
  have h : s6Step84Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step84Add0During : Arena := ⟨s6Step84Add0Arena.live∪s6Step84Add0Work.toFinset,Finset.union_subset s6Step84Add0Arena.bounded s6Step84Add0_bounded⟩

private def s6Step84Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step84Add1Work : List Wire := [879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797]

private theorem s6Step84Add1_bounded : s6Step84Add1Work.toFinset⊆arenaWires := by
  have h : s6Step84Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step84Add1During : Arena := ⟨s6Step84Add1Arena.live∪s6Step84Add1Work.toFinset,Finset.union_subset s6Step84Add1Arena.bounded s6Step84Add1_bounded⟩

private def s6Step84F4FlagArena : Arena := ⟨s6Step84HeadFvAfter.live∪{803},Finset.union_subset s6Step84HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step84F4Plan : HmrHybridF4Plan := ⟨s6Step84F4FlagArena,[803],s6Step84Add0Arena,[922],s6Step84Add0During,s6Step84Add0Work,s6Step84Add1During,s6Step84Add1Work⟩

private def s6Step84HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 877],795⟩

private def s6Step84HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 780],776⟩

private def s6Step84HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 881, 855],777⟩

private def s6Step84HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786],775⟩

private def s6Step84FrontHead : WindowBank := ⟨s6Step84HeadFOut,s6Step84HeadGOut,s6Step84HeadFvOut,s6Step84HeadGvOut⟩

private def s6Step84EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482],795⟩

private def s6Step84EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860],776⟩

private def s6Step84EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 881],777⟩

private def s6Step84EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867],775⟩

private def s6Step84FrontPair : WindowBank := ⟨s6Step84EntryFOut,s6Step84EntryGOut,s6Step84EntryFvOut,s6Step84EntryGvOut⟩

private def s6Step84FrontSigmaArena : Arena := ⟨s6Step84EntryGvAfter.live∪{813},Finset.union_subset s6Step84EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step84HeadFFresh : List Wire := [877]

private def s6Step84HeadFvFresh : List Wire := [780]

private def s6Step84HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step84HeadGFresh : List Wire := [855]

private def s6Step84HeadGvFresh : List Wire := [786]

private def s6Step84FrontPlan : HmrSourceFront := ⟨s6Step84EntryGvAfter,s6Step84FrontPair,(growRow 795 s6Step84EntryFFresh ++ (growRow 777 s6Step84EntryGFresh ++ (growRow 776 s6Step84EntryFvFresh ++ (growRow 775 s6Step84EntryGvFresh ++ [])))),s6Step84FrontSigmaArena,[813],s6Step84HeadGBefore,[794],
  s6Step84HeadFvAfter,s6Step84FrontHead,(growRow 777 s6Step84HeadGFresh ++ (growRow 795 s6Step84HeadFFresh ++ (growRow 775 s6Step84HeadGvFresh ++ (growRow 776 s6Step84HeadFvFresh ++ [])))),s6Step84F4Plan,s6Step84CounterDuring,s6Step84CounterWork,s6Step84ExitGvAfter,s6Step84FrontOut,(shrinkRow 777 s6Step84ExitGExtra ++ (shrinkRow 795 s6Step84ExitFExtra ++ (shrinkRow 776 s6Step84ExitFvExtra ++ (shrinkRow 775 s6Step84ExitGvExtra ++ []))))⟩

private def s6Step84CompletePlan : HmrEarlyStepPlan := ⟨s6Step84FrontPlan,s6Step84EarlyControlArena,s6Step84EarlyControlPlan,s6Step84CompleteMoves⟩

private theorem s6Step84Complete_apart : List.Disjoint (s6Step84CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [813, 794, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] := by
  have nd : ((s6Step84CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[813, 794, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step84Complete_owned : (s6Step84CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step84EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step84EarlyControlArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step84CompleteRelocationMove0Borrowed : Arena := ⟨s6Step84ExitGvAfter.live∪{482},Finset.union_subset s6Step84ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step84CompleteRelocation_move0_owned : 927∈s6Step84ExitGvAfter.live := by norm_num [s6Step84ExitGvAfter,arenaWires]

private theorem s6Step84CompleteRelocation_move0_reserve : s6Step84ExitGvAfter.reserve {482}=some s6Step84CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step84ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step84CompleteRelocation_move0_retire : s6Step84CompleteRelocationMove0Borrowed.retireSet {927}=s6Step84EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step84CompleteRelocationMove0Borrowed s6Step84EarlyControlArena {927}
  change s6Step84EarlyControlArena.live=(s6Step84ExitGvAfter.live∪{482})\{927}
  apply hmrArena_update_of_filter_check s6Step84ExitGvAfter s6Step84EarlyControlArena (fun q => ([(0,482),(483,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [482] [927] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step84CompleteRelocation_checked : s6Step84ExitGvAfter.checkRepack [(927,482)]=some s6Step84EarlyControlArena := by
  have tail1 : s6Step84EarlyControlArena.checkRepack []=some s6Step84EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step84ExitGvAfter s6Step84CompleteRelocationMove0Borrowed s6Step84EarlyControlArena s6Step84EarlyControlArena 927 482 []
    s6Step84CompleteRelocation_move0_owned s6Step84CompleteRelocation_move0_reserve s6Step84CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step84Complete_repack : s6Step84ExitGvAfter.checkRepack s6Step84CompleteMoves=some s6Step84EarlyControlArena := by
  simpa only [s6Step84CompleteMoves] using s6Step84CompleteRelocation_checked

private theorem s6Step84EarlyControl_branchOwned : ([794] : List Wire).toFinset⊆s6Step84EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step84EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step84EarlyControl_branch : compileHmrBranchRetirement s6Step84EarlyControlSigmaArena 794=some s6Step84EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step84EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step84EarlyControlSigmaArena s6Step84EarlyControlOutputArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [794] rfl rfl
    decide +kernel

private theorem s6Step84EarlyControl_classEqualityBorrow : s6Step84EarlyControlPositiveArena.checkBorrow (([813, 855] : List Wire).length-1) s6Step84EarlyControlLog.classWork=some s6Step84EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step84EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step84EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step84EarlyControlPositiveArena s6Step84EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step84EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step84EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step84EarlyControl_classEqualityOwned : ([813, 855] : List Wire).toFinset⊆s6Step84EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step84EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step84EarlyControl_classEquality : compileHmrEqualityLog s6Step84EarlyControlPositiveArena [813, 855] 0 s6Step84EarlyControlLog.classWork=some (s6Step84EarlyControlEqualityArena,s6Step84EarlyControlLog.classWork,s6Step84EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step84EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step84EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step84EarlyControl_classOwned : ([769, 881, 813] : List Wire).toFinset⊆s6Step84EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step84EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step84EarlyControl_positiveBorrow : s6Step84EarlyControlZeroArena.checkBorrow (1) s6Step84EarlyControlLog.positiveWork=some s6Step84EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step84EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step84EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step84EarlyControlZeroArena s6Step84EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step84EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step84EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step84EarlyControl_class : compileHmrSourceClassLog s6Step84EarlyControlZeroArena false 769 s6Step84EarlyControlZeroPlan.top 0 813 s6Step84EarlyControlLog.positiveWork s6Step84EarlyControlLog.classWork=some s6Step84EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step84EarlyControlClassPlan s6Step84EarlyControlZeroArena false 769 s6Step84EarlyControlZeroPlan.top 0 813
  constructor
  · decide +kernel
  · exact s6Step84EarlyControl_classOwned
  · exact s6Step84EarlyControl_positiveBorrow
  · exact s6Step84EarlyControl_classEquality

private theorem s6Step84EarlyControl_entryRecordOwned : ([794, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step84EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step84EarlyControlArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step84EarlyControl_entrySigmaOwned : ([813, 254] : List Wire).toFinset⊆s6Step84EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step84EarlyControlArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step84EarlyControl_fitBorrow : s6Step84EarlyControlFlagArena.checkBorrow ((31-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).length)) s6Step84EarlyControlLog.recordFresh=some s6Step84EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step84EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step84EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step84EarlyControlFittedArena,s6Step84EarlyControlFlagArena,s6Step84EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step84EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step84EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step84EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step84EarlyControl_fit : compileHmrRecordGrowLog s6Step84EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 31 s6Step84EarlyControlLog.recordFresh=some s6Step84EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step84EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step84EarlyControl_fitBorrow

private theorem s6Step84EarlyControl_flagsBorrow : s6Step84EarlyControlEqualityArena.checkBorrow (6) s6Step84EarlyControlLog.flagWork=some s6Step84EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step84EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step84EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step84EarlyControlEqualityArena s6Step84EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step84EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step84EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step84EarlyControl_flagsOwned : ([803, 253, 252, 251] : List Wire).toFinset⊆s6Step84EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step84EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step84EarlyControl_flags : compileHmrFlagsLog s6Step84EarlyControlClassPlan.equalityArena s6Step84EarlyControlClassPlan.equality.top 253 252 251 s6Step84EarlyControlLog.flagWork=some s6Step84EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step84EarlyControl_flagsOwned⟩
  · exact s6Step84EarlyControl_flagsBorrow

private theorem s6Step84EarlyControl_historyBorrow : s6Step84EarlyControlArena.checkBorrow ((31-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).length)) s6Step84EarlyControlLog.recordFresh=some s6Step84EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step84EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step84EarlyControlArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step84EarlyControlArena s6Step84EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step84EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step84EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step84EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step84EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step84EarlyControlArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step84EarlyControl_history : compileHmrRecordGrowLog s6Step84EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 31 s6Step84EarlyControlLog.recordFresh=some s6Step84EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step84EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step84EarlyControl_historyBorrow

private theorem s6Step84EarlyControl_sigmaOwned : ([254, 813] : List Wire).toFinset⊆s6Step84EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step84EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step84EarlyControl_sigmaReleaseOwned : ([813] : List Wire).toFinset⊆s6Step84EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step84EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step84EarlyControl_sigmaRelease : s6Step84EarlyControlHistoryArena.release {813} (fun _ => false)=some s6Step84EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step84EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step84EarlyControlHistoryArena s6Step84EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [813] rfl rfl
    decide +kernel

private theorem s6Step84EarlyControl_sigma : compileHmrSigmaDropLog s6Step84EarlyControlHistoryArena false 0 0 254 813 []=some s6Step84EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step84EarlyControl_sigmaOwned⟩
  · exact s6Step84EarlyControl_sigmaRelease

private theorem s6Step84EarlyControl_zeroBorrow : s6Step84EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step84EarlyControlLog.zeroWork=some s6Step84EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step84EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step84EarlyControlArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step84EarlyControlArena s6Step84EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step84EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step84EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step84EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step84EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step84EarlyControlArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step84EarlyControl_zero : compileHmrEqualityLog s6Step84EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step84EarlyControlLog.zeroWork=some (s6Step84EarlyControlZeroArena,s6Step84EarlyControlLog.zeroWork,s6Step84EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step84EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step84EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step84EarlyControl_logged : s6Step84EarlyControlPlan.Logged s6Step84EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 813 254 253 252 251 794 31 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step84EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step84EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step84EarlyControl_zero
  · exact s6Step84EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step84EarlyControl_flags
  · exact s6Step84EarlyControl_fit
  · exact s6Step84EarlyControl_history
  · exact s6Step84EarlyControl_sigma
  · exact s6Step84EarlyControl_branch

private theorem s6Step84EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step84EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 813 254 253 252 251 794 31 s6Step84EarlyControlLog=some s6Step84EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step84EarlyControlPlan s6Step84EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 813 254 253 252 251 794 31 s6Step84EarlyControl_logged

private def s6Step84EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,867),(868,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step84EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482],795⟩

private def s6Step84EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860],776⟩

private def s6Step84EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225],777⟩

private def s6Step84EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768],775⟩

private def s6Step84FrontBank : WindowBank := ⟨s6Step84EntryFRow,s6Step84EntryGRow,s6Step84EntryFvRow,s6Step84EntryGvRow⟩

private def s6Step84Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 877, 795]

private def s6Step84Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 881, 855, 777]

private def s6Step84Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 780, 776]

private def s6Step84Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 775]

private theorem s6Step84Counter_apart : Disjoint s6Step84HeadFvAfter.live s6Step84CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step84HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step84Counter_borrowed : s6Step84HeadFvAfter.checkBorrow 4 s6Step84CounterWork=some s6Step84CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step84HeadFvAfter s6Step84CounterDuring s6Step84CounterWork.toFinset s6Step84Counter_bounded s6Step84Counter_apart rfl

private theorem s6Step84Counter_owned : (813::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step84HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step84HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step84Counter_checked : compileHmrCounterStepLog s6Step84HeadFvAfter true 813 [774, 773, 772, 771, 770, 769] s6Step84CounterWork=some s6Step84CounterDuring := by
  have owned : ∀q∈813::[774, 773, 772, 771, 770, 769],q∈s6Step84HeadFvAfter.live := fun q hq => s6Step84Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step84Counter_borrowed

private def s6Step84EntryFAfter : Arena := s6Step84EntryFBefore

private theorem s6Step84EntryBank_incomingDistinct : ([s6Step84EntryFRow,s6Step84EntryGRow,s6Step84EntryFvRow,s6Step84EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step84EntryF_Incoming : rowsOwned s6Step84EntryFBefore [s6Step84EntryFRow,s6Step84EntryGRow,s6Step84EntryFvRow,s6Step84EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step84EntryFRow,s6Step84EntryGRow,s6Step84EntryFvRow,s6Step84EntryGvRow] 0 s6Step84EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step84EntryFBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,867),(868,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step84EntryBank_outgoingOwned : rowsOwned s6Step84EntryGvAfter [s6Step84EntryFOut,s6Step84EntryGOut,s6Step84EntryFvOut,s6Step84EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step84EntryGvAfter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step84EntryF_Outgoing : rowsOwned s6Step84EntryGvAfter [s6Step84EntryFOut,s6Step84EntryGOut,s6Step84EntryFvOut,s6Step84EntryGvOut] :=
  hmrRows_owned_drop s6Step84EntryGvAfter [s6Step84EntryFOut,s6Step84EntryGOut,s6Step84EntryFvOut,s6Step84EntryGvOut] 0 s6Step84EntryBank_outgoingOwned

private theorem s6Step84EntryF_distinct : (s6Step84EntryFRow.sign::s6Step84EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step84EntryF_owned : (s6Step84EntryFRow.sign::s6Step84EntryFRow.payload).toFinset⊆s6Step84EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step84EntryFBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,867),(868,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step84EntryF_reserved : s6Step84EntryFBefore.reserve s6Step84EntryFFresh.toFinset=some s6Step84EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step84EntryFFresh,arenaWires]
  · norm_num [s6Step84EntryFBefore,s6Step84EntryFFresh,arenaWires]
  · simp only [s6Step84EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step84EntryF_checked : planRowResizeLog s6Step84EntryFBefore s6Step84EntryFRow 227 s6Step84EntryFFresh=
    some (s6Step84EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482],795⟩,growRow 795 s6Step84EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step84EntryFBefore s6Step84EntryFAfter s6Step84EntryFRow 227 s6Step84EntryFFresh
    s6Step84EntryF_distinct s6Step84EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step84EntryF_reserved
  have rowEq : WindowRow.mk (s6Step84EntryFRow.payload++s6Step84EntryFFresh) s6Step84EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step84EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step84EntryFvAfter : Arena := s6Step84EntryGAfter

private def s6Step84EntryFvBefore : Arena := s6Step84EntryGAfter

private theorem s6Step84EntryFv_Incoming : rowsOwned s6Step84EntryFvBefore [s6Step84EntryFvRow,s6Step84EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step84EntryFRow,s6Step84EntryGRow,s6Step84EntryFvRow,s6Step84EntryGvRow] 2 s6Step84EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step84EntryFvBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step84EntryFv_Outgoing : rowsOwned s6Step84EntryGvAfter [s6Step84EntryFvOut,s6Step84EntryGvOut] :=
  hmrRows_owned_drop s6Step84EntryGvAfter [s6Step84EntryFOut,s6Step84EntryGOut,s6Step84EntryFvOut,s6Step84EntryGvOut] 2 s6Step84EntryBank_outgoingOwned

private theorem s6Step84EntryFv_distinct : (s6Step84EntryFvRow.sign::s6Step84EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step84EntryFv_owned : (s6Step84EntryFvRow.sign::s6Step84EntryFvRow.payload).toFinset⊆s6Step84EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step84EntryFvBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step84EntryFv_reserved : s6Step84EntryFvBefore.reserve s6Step84EntryFvFresh.toFinset=some s6Step84EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step84EntryFvFresh,arenaWires]
  · norm_num [s6Step84EntryFvBefore,s6Step84EntryGAfter,s6Step84EntryFvFresh,arenaWires]
  · simp only [s6Step84EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step84EntryFv_checked : planRowResizeLog s6Step84EntryFvBefore s6Step84EntryFvRow 56 s6Step84EntryFvFresh=
    some (s6Step84EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860],776⟩,growRow 776 s6Step84EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step84EntryFvBefore s6Step84EntryFvAfter s6Step84EntryFvRow 56 s6Step84EntryFvFresh
    s6Step84EntryFv_distinct s6Step84EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step84EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step84EntryFvRow.payload++s6Step84EntryFvFresh) s6Step84EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step84EntryGBefore : Arena := s6Step84EntryFBefore

private theorem s6Step84EntryG_Incoming : rowsOwned s6Step84EntryGBefore [s6Step84EntryGRow,s6Step84EntryFvRow,s6Step84EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step84EntryFRow,s6Step84EntryGRow,s6Step84EntryFvRow,s6Step84EntryGvRow] 1 s6Step84EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step84EntryGBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,867),(868,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step84EntryG_Outgoing : rowsOwned s6Step84EntryGvAfter [s6Step84EntryGOut,s6Step84EntryFvOut,s6Step84EntryGvOut] :=
  hmrRows_owned_drop s6Step84EntryGvAfter [s6Step84EntryFOut,s6Step84EntryGOut,s6Step84EntryFvOut,s6Step84EntryGvOut] 1 s6Step84EntryBank_outgoingOwned

private theorem s6Step84EntryG_distinct : (s6Step84EntryGRow.sign::s6Step84EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step84EntryG_owned : (s6Step84EntryGRow.sign::s6Step84EntryGRow.payload).toFinset⊆s6Step84EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step84EntryGBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,867),(868,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step84EntryG_reserved : s6Step84EntryGBefore.reserve s6Step84EntryGFresh.toFinset=some s6Step84EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step84EntryGFresh,arenaWires]
  · norm_num [s6Step84EntryGBefore,s6Step84EntryFBefore,s6Step84EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step84EntryGBefore s6Step84EntryGAfter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,867),(868,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step84EntryGFresh rfl rfl
    · norm_num [s6Step84EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step84EntryG_checked : planRowResizeLog s6Step84EntryGBefore s6Step84EntryGRow 227 s6Step84EntryGFresh=
    some (s6Step84EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 881],777⟩,growRow 777 s6Step84EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step84EntryGBefore s6Step84EntryGAfter s6Step84EntryGRow 227 s6Step84EntryGFresh
    s6Step84EntryG_distinct s6Step84EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step84EntryG_reserved
  have rowEq : WindowRow.mk (s6Step84EntryGRow.payload++s6Step84EntryGFresh) s6Step84EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 881],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step84EntryGvBefore : Arena := s6Step84EntryGAfter

private theorem s6Step84EntryGv_Incoming : rowsOwned s6Step84EntryGvBefore [s6Step84EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step84EntryFRow,s6Step84EntryGRow,s6Step84EntryFvRow,s6Step84EntryGvRow] 3 s6Step84EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step84EntryGvBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step84EntryGv_Outgoing : rowsOwned s6Step84EntryGvAfter [s6Step84EntryGvOut] :=
  hmrRows_owned_drop s6Step84EntryGvAfter [s6Step84EntryFOut,s6Step84EntryGOut,s6Step84EntryFvOut,s6Step84EntryGvOut] 3 s6Step84EntryBank_outgoingOwned

private theorem s6Step84EntryGv_distinct : (s6Step84EntryGvRow.sign::s6Step84EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step84EntryGv_owned : (s6Step84EntryGvRow.sign::s6Step84EntryGvRow.payload).toFinset⊆s6Step84EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step84EntryGvBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step84EntryGv_reserved : s6Step84EntryGvBefore.reserve s6Step84EntryGvFresh.toFinset=some s6Step84EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step84EntryGvFresh,arenaWires]
  · norm_num [s6Step84EntryGvBefore,s6Step84EntryGAfter,s6Step84EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step84EntryGvBefore s6Step84EntryGvAfter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step84EntryGvFresh rfl rfl
    · norm_num [s6Step84EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step84EntryGv_checked : planRowResizeLog s6Step84EntryGvBefore s6Step84EntryGvRow 56 s6Step84EntryGvFresh=
    some (s6Step84EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867],775⟩,growRow 775 s6Step84EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step84EntryGvBefore s6Step84EntryGvAfter s6Step84EntryGvRow 56 s6Step84EntryGvFresh
    s6Step84EntryGv_distinct s6Step84EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step84EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step84EntryGvRow.payload++s6Step84EntryGvFresh) s6Step84EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step84EntryBank_rows : planWindowRowsLog s6Step84EntryFBefore [(s6Step84EntryFRow,227),(s6Step84EntryGRow,227),(s6Step84EntryFvRow,56),(s6Step84EntryGvRow,56)] [s6Step84EntryFFresh,s6Step84EntryGFresh,s6Step84EntryFvFresh,s6Step84EntryGvFresh]=
    some (s6Step84EntryGvAfter,[s6Step84EntryFOut,s6Step84EntryGOut,s6Step84EntryFvOut,s6Step84EntryGvOut],(growRow 795 s6Step84EntryFFresh ++ (growRow 777 s6Step84EntryGFresh ++ (growRow 776 s6Step84EntryFvFresh ++ (growRow 775 s6Step84EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step84EntryGvAfter [] []=some (s6Step84EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step84EntryGvBefore s6Step84EntryGvAfter s6Step84EntryGvAfter
    s6Step84EntryGvRow s6Step84EntryGvOut 56 s6Step84EntryGvFresh [] [] []
    (growRow 775 s6Step84EntryGvFresh) ([]) s6Step84EntryGv_Incoming s6Step84EntryGv_checked h4 s6Step84EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step84EntryFvBefore s6Step84EntryFvAfter s6Step84EntryGvAfter
    s6Step84EntryFvRow s6Step84EntryFvOut 56 s6Step84EntryFvFresh [(s6Step84EntryGvRow,56)] [s6Step84EntryGvFresh] [s6Step84EntryGvOut]
    (growRow 776 s6Step84EntryFvFresh) ((growRow 775 s6Step84EntryGvFresh ++ [])) s6Step84EntryFv_Incoming s6Step84EntryFv_checked h3 s6Step84EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step84EntryGBefore s6Step84EntryGAfter s6Step84EntryGvAfter
    s6Step84EntryGRow s6Step84EntryGOut 227 s6Step84EntryGFresh [(s6Step84EntryFvRow,56),(s6Step84EntryGvRow,56)] [s6Step84EntryFvFresh,s6Step84EntryGvFresh] [s6Step84EntryFvOut,s6Step84EntryGvOut]
    (growRow 777 s6Step84EntryGFresh) ((growRow 776 s6Step84EntryFvFresh ++ (growRow 775 s6Step84EntryGvFresh ++ []))) s6Step84EntryG_Incoming s6Step84EntryG_checked h2 s6Step84EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step84EntryFBefore s6Step84EntryFAfter s6Step84EntryGvAfter
    s6Step84EntryFRow s6Step84EntryFOut 227 s6Step84EntryFFresh [(s6Step84EntryGRow,227),(s6Step84EntryFvRow,56),(s6Step84EntryGvRow,56)] [s6Step84EntryGFresh,s6Step84EntryFvFresh,s6Step84EntryGvFresh] [s6Step84EntryGOut,s6Step84EntryFvOut,s6Step84EntryGvOut]
    (growRow 795 s6Step84EntryFFresh) ((growRow 777 s6Step84EntryGFresh ++ (growRow 776 s6Step84EntryFvFresh ++ (growRow 775 s6Step84EntryGvFresh ++ [])))) s6Step84EntryF_Incoming s6Step84EntryF_checked h1 s6Step84EntryF_Outgoing
  exact h0

private theorem s6Step84EntryBank_checked : compileHmrBankResizeLog .entry s6Step84EntryFBefore ⟨s6Step84EntryFRow,s6Step84EntryGRow,s6Step84EntryFvRow,s6Step84EntryGvRow⟩ ⟨227,227,56,56⟩ [s6Step84EntryFFresh,s6Step84EntryGFresh,s6Step84EntryFvFresh,s6Step84EntryGvFresh]=
    some (s6Step84EntryGvAfter,⟨s6Step84EntryFOut,s6Step84EntryGOut,s6Step84EntryFvOut,s6Step84EntryGvOut⟩,(growRow 795 s6Step84EntryFFresh ++ (growRow 777 s6Step84EntryGFresh ++ (growRow 776 s6Step84EntryFvFresh ++ (growRow 775 s6Step84EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step84EntryBank_rows]
  rfl

private def s6Step84ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,482),(483,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step84ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step84ExitFBefore : Arena := s6Step84ExitGAfter

private def s6Step84ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 877],795⟩

private def s6Step84ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 780],776⟩

private def s6Step84ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 881, 855],777⟩

private def s6Step84ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786],775⟩

private theorem s6Step84ExitBank_incomingDistinct : ([s6Step84ExitGRow,s6Step84ExitFRow,s6Step84ExitFvRow,s6Step84ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step84ExitF_Incoming : rowsOwned s6Step84ExitFBefore [s6Step84ExitFRow,s6Step84ExitFvRow,s6Step84ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step84ExitGRow,s6Step84ExitFRow,s6Step84ExitFvRow,s6Step84ExitGvRow] 1 s6Step84ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step84ExitFBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step84ExitBank_outgoingOwned : rowsOwned s6Step84ExitGvAfter [s6Step84ExitGOut,s6Step84ExitFOut,s6Step84ExitFvOut,s6Step84ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step84ExitGvAfter (fun q => ([(0,482),(483,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step84ExitF_Outgoing : rowsOwned s6Step84ExitGvAfter [s6Step84ExitFOut,s6Step84ExitFvOut,s6Step84ExitGvOut] :=
  hmrRows_owned_drop s6Step84ExitGvAfter [s6Step84ExitGOut,s6Step84ExitFOut,s6Step84ExitFvOut,s6Step84ExitGvOut] 1 s6Step84ExitBank_outgoingOwned

private theorem s6Step84ExitF_distinct : (s6Step84ExitFRow.sign::s6Step84ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step84ExitF_owned : (s6Step84ExitFRow.sign::s6Step84ExitFRow.payload).toFinset⊆s6Step84ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step84ExitFBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step84ExitF_retired : s6Step84ExitFBefore.retireSet s6Step84ExitFExtra.toFinset=s6Step84ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step84ExitFBefore s6Step84ExitFAfter s6Step84ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step84ExitFBefore s6Step84ExitFAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,482),(483,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step84ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step84ExitF_checked : planRowResizeLog s6Step84ExitFBefore s6Step84ExitFRow 226 []=
    some (s6Step84ExitFAfter,s6Step84ExitFOut,shrinkRow 795 s6Step84ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step84ExitFBefore s6Step84ExitFRow 226 s6Step84ExitF_distinct s6Step84ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step84ExitFRow.payload.take 226) s6Step84ExitFRow.sign=s6Step84ExitFOut := by decide +kernel
  have hi : s6Step84ExitFRow.payload.drop 226=s6Step84ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step84ExitF_retired] at result
  exact result

private def s6Step84ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,482),(483,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step84ExitFvBefore : Arena := s6Step84ExitFAfter

private theorem s6Step84ExitFv_Incoming : rowsOwned s6Step84ExitFvBefore [s6Step84ExitFvRow,s6Step84ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step84ExitGRow,s6Step84ExitFRow,s6Step84ExitFvRow,s6Step84ExitGvRow] 2 s6Step84ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step84ExitFvBefore (fun q => ([(0,482),(483,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step84ExitFv_Outgoing : rowsOwned s6Step84ExitGvAfter [s6Step84ExitFvOut,s6Step84ExitGvOut] :=
  hmrRows_owned_drop s6Step84ExitGvAfter [s6Step84ExitGOut,s6Step84ExitFOut,s6Step84ExitFvOut,s6Step84ExitGvOut] 2 s6Step84ExitBank_outgoingOwned

private theorem s6Step84ExitFv_distinct : (s6Step84ExitFvRow.sign::s6Step84ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step84ExitFv_owned : (s6Step84ExitFvRow.sign::s6Step84ExitFvRow.payload).toFinset⊆s6Step84ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step84ExitFvBefore (fun q => ([(0,482),(483,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step84ExitFv_retired : s6Step84ExitFvBefore.retireSet s6Step84ExitFvExtra.toFinset=s6Step84ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step84ExitFvBefore s6Step84ExitFvAfter s6Step84ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step84ExitFvBefore s6Step84ExitFvAfter (fun q => ([(0,482),(483,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,482),(483,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step84ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step84ExitFv_checked : planRowResizeLog s6Step84ExitFvBefore s6Step84ExitFvRow 56 []=
    some (s6Step84ExitFvAfter,s6Step84ExitFvOut,shrinkRow 776 s6Step84ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step84ExitFvBefore s6Step84ExitFvRow 56 s6Step84ExitFv_distinct s6Step84ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step84ExitFvRow.payload.take 56) s6Step84ExitFvRow.sign=s6Step84ExitFvOut := by decide +kernel
  have hi : s6Step84ExitFvRow.payload.drop 56=s6Step84ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step84ExitFv_retired] at result
  exact result

private def s6Step84ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step84ExitG_Incoming : rowsOwned s6Step84ExitGBefore [s6Step84ExitGRow,s6Step84ExitFRow,s6Step84ExitFvRow,s6Step84ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step84ExitGRow,s6Step84ExitFRow,s6Step84ExitFvRow,s6Step84ExitGvRow] 0 s6Step84ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step84ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step84ExitG_Outgoing : rowsOwned s6Step84ExitGvAfter [s6Step84ExitGOut,s6Step84ExitFOut,s6Step84ExitFvOut,s6Step84ExitGvOut] :=
  hmrRows_owned_drop s6Step84ExitGvAfter [s6Step84ExitGOut,s6Step84ExitFOut,s6Step84ExitFvOut,s6Step84ExitGvOut] 0 s6Step84ExitBank_outgoingOwned

private theorem s6Step84ExitG_distinct : (s6Step84ExitGRow.sign::s6Step84ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step84ExitG_owned : (s6Step84ExitGRow.sign::s6Step84ExitGRow.payload).toFinset⊆s6Step84ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step84ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step84ExitG_retired : s6Step84ExitGBefore.retireSet s6Step84ExitGExtra.toFinset=s6Step84ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step84ExitGBefore s6Step84ExitGAfter s6Step84ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step84ExitGBefore s6Step84ExitGAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step84ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step84ExitG_checked : planRowResizeLog s6Step84ExitGBefore s6Step84ExitGRow 226 []=
    some (s6Step84ExitGAfter,s6Step84ExitGOut,shrinkRow 777 s6Step84ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step84ExitGBefore s6Step84ExitGRow 226 s6Step84ExitG_distinct s6Step84ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step84ExitGRow.payload.take 226) s6Step84ExitGRow.sign=s6Step84ExitGOut := by decide +kernel
  have hi : s6Step84ExitGRow.payload.drop 226=s6Step84ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step84ExitG_retired] at result
  exact result

private def s6Step84ExitGvBefore : Arena := s6Step84ExitFvAfter

private theorem s6Step84ExitGv_Incoming : rowsOwned s6Step84ExitGvBefore [s6Step84ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step84ExitGRow,s6Step84ExitFRow,s6Step84ExitFvRow,s6Step84ExitGvRow] 3 s6Step84ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step84ExitGvBefore (fun q => ([(0,482),(483,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step84ExitGv_Outgoing : rowsOwned s6Step84ExitGvAfter [s6Step84ExitGvOut] :=
  hmrRows_owned_drop s6Step84ExitGvAfter [s6Step84ExitGOut,s6Step84ExitFOut,s6Step84ExitFvOut,s6Step84ExitGvOut] 3 s6Step84ExitBank_outgoingOwned

private theorem s6Step84ExitGv_distinct : (s6Step84ExitGvRow.sign::s6Step84ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step84ExitGv_owned : (s6Step84ExitGvRow.sign::s6Step84ExitGvRow.payload).toFinset⊆s6Step84ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step84ExitGvBefore (fun q => ([(0,482),(483,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step84ExitGv_retired : s6Step84ExitGvBefore.retireSet s6Step84ExitGvExtra.toFinset=s6Step84ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step84ExitGvBefore s6Step84ExitGvAfter s6Step84ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step84ExitGvBefore s6Step84ExitGvAfter (fun q => ([(0,482),(483,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,482),(483,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step84ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step84ExitGv_checked : planRowResizeLog s6Step84ExitGvBefore s6Step84ExitGvRow 56 []=
    some (s6Step84ExitGvAfter,s6Step84ExitGvOut,shrinkRow 775 s6Step84ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step84ExitGvBefore s6Step84ExitGvRow 56 s6Step84ExitGv_distinct s6Step84ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step84ExitGvRow.payload.take 56) s6Step84ExitGvRow.sign=s6Step84ExitGvOut := by decide +kernel
  have hi : s6Step84ExitGvRow.payload.drop 56=s6Step84ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step84ExitGv_retired] at result
  exact result

private theorem s6Step84ExitBank_rows : planWindowRowsLog s6Step84ExitGBefore [(s6Step84ExitGRow,226),(s6Step84ExitFRow,226),(s6Step84ExitFvRow,56),(s6Step84ExitGvRow,56)] [[],[],[],[]]=
    some (s6Step84ExitGvAfter,[s6Step84ExitGOut,s6Step84ExitFOut,s6Step84ExitFvOut,s6Step84ExitGvOut],(shrinkRow 777 s6Step84ExitGExtra ++ (shrinkRow 795 s6Step84ExitFExtra ++ (shrinkRow 776 s6Step84ExitFvExtra ++ (shrinkRow 775 s6Step84ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step84ExitGvAfter [] []=some (s6Step84ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step84ExitGvBefore s6Step84ExitGvAfter s6Step84ExitGvAfter
    s6Step84ExitGvRow s6Step84ExitGvOut 56 [] [] [] []
    (shrinkRow 775 s6Step84ExitGvExtra) ([]) s6Step84ExitGv_Incoming s6Step84ExitGv_checked h4 s6Step84ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step84ExitFvBefore s6Step84ExitFvAfter s6Step84ExitGvAfter
    s6Step84ExitFvRow s6Step84ExitFvOut 56 [] [(s6Step84ExitGvRow,56)] [[]] [s6Step84ExitGvOut]
    (shrinkRow 776 s6Step84ExitFvExtra) ((shrinkRow 775 s6Step84ExitGvExtra ++ [])) s6Step84ExitFv_Incoming s6Step84ExitFv_checked h3 s6Step84ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step84ExitFBefore s6Step84ExitFAfter s6Step84ExitGvAfter
    s6Step84ExitFRow s6Step84ExitFOut 226 [] [(s6Step84ExitFvRow,56),(s6Step84ExitGvRow,56)] [[],[]] [s6Step84ExitFvOut,s6Step84ExitGvOut]
    (shrinkRow 795 s6Step84ExitFExtra) ((shrinkRow 776 s6Step84ExitFvExtra ++ (shrinkRow 775 s6Step84ExitGvExtra ++ []))) s6Step84ExitF_Incoming s6Step84ExitF_checked h2 s6Step84ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step84ExitGBefore s6Step84ExitGAfter s6Step84ExitGvAfter
    s6Step84ExitGRow s6Step84ExitGOut 226 [] [(s6Step84ExitFRow,226),(s6Step84ExitFvRow,56),(s6Step84ExitGvRow,56)] [[],[],[]] [s6Step84ExitFOut,s6Step84ExitFvOut,s6Step84ExitGvOut]
    (shrinkRow 777 s6Step84ExitGExtra) ((shrinkRow 795 s6Step84ExitFExtra ++ (shrinkRow 776 s6Step84ExitFvExtra ++ (shrinkRow 775 s6Step84ExitGvExtra ++ [])))) s6Step84ExitG_Incoming s6Step84ExitG_checked h1 s6Step84ExitG_Outgoing
  exact h0

private theorem s6Step84ExitBank_checked : compileHmrBankResizeLog .exit s6Step84ExitGBefore ⟨s6Step84ExitFRow,s6Step84ExitGRow,s6Step84ExitFvRow,s6Step84ExitGvRow⟩ ⟨226,226,56,56⟩ [[],[],[],[]]=
    some (s6Step84ExitGvAfter,⟨s6Step84ExitFOut,s6Step84ExitGOut,s6Step84ExitFvOut,s6Step84ExitGvOut⟩,(shrinkRow 777 s6Step84ExitGExtra ++ (shrinkRow 795 s6Step84ExitFExtra ++ (shrinkRow 776 s6Step84ExitFvExtra ++ (shrinkRow 775 s6Step84ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step84ExitBank_rows]
  rfl

private theorem s6Step84Add0_apart : Disjoint s6Step84Add0Arena.live s6Step84Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step84Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step84Add0_card : s6Step84Add0Arena.live.card=870 := by
  decide +kernel

private theorem s6Step84Add0_borrowed : s6Step84Add0Arena.checkBorrow (hmrHybridCount s6Step84Add0Arena s6Step84Add0B.length) s6Step84Add0Work=some s6Step84Add0During := by
  have len : s6Step84Add0Work.length=hmrHybridCount s6Step84Add0Arena s6Step84Add0B.length := by
    rw [hmrHybridCount,s6Step84Add0_card]
    decide +kernel
  have nd : s6Step84Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step84Add0Arena s6Step84Add0During s6Step84Add0Work.toFinset s6Step84Add0_bounded s6Step84Add0_apart rfl

private theorem s6Step84Add0_distinct : (803::794::922::(s6Step84Add0A++s6Step84Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step84Add0_owned : (803::794::922::(s6Step84Add0A++s6Step84Add0B)).toFinset⊆s6Step84Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step84Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step84Add0_checked : compileHmrHybridCinLog s6Step84Add0Arena 794 803 922 s6Step84Add0A s6Step84Add0B s6Step84Add0Work=some s6Step84Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step84Add0Arena s6Step84Add0During 794 803 922 s6Step84Add0A s6Step84Add0B s6Step84Add0Work
    (by decide +kernel) (by decide +kernel) s6Step84Add0_distinct
    (fun q hq => s6Step84Add0_owned (List.mem_toFinset.mpr hq)) s6Step84Add0_borrowed

private theorem s6Step84Add1_apart : Disjoint s6Step84Add1Arena.live s6Step84Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step84Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step84Add1_card : s6Step84Add1Arena.live.card=870 := by
  decide +kernel

private theorem s6Step84Add1_borrowed : s6Step84Add1Arena.checkBorrow (hmrHybridCount s6Step84Add1Arena s6Step84Add1B.length) s6Step84Add1Work=some s6Step84Add1During := by
  have len : s6Step84Add1Work.length=hmrHybridCount s6Step84Add1Arena s6Step84Add1B.length := by
    rw [hmrHybridCount,s6Step84Add1_card]
    decide +kernel
  have nd : s6Step84Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step84Add1Arena s6Step84Add1During s6Step84Add1Work.toFinset s6Step84Add1_bounded s6Step84Add1_apart rfl

private theorem s6Step84Add1_distinct : (803::794::922::(s6Step84Add1A++s6Step84Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step84Add1_owned : (803::794::922::(s6Step84Add1A++s6Step84Add1B)).toFinset⊆s6Step84Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step84Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step84Add1_checked : compileHmrHybridCinLog s6Step84Add1Arena 794 803 922 s6Step84Add1A s6Step84Add1B s6Step84Add1Work=some s6Step84Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step84Add1Arena s6Step84Add1During 794 803 922 s6Step84Add1A s6Step84Add1B s6Step84Add1Work
    (by decide +kernel) (by decide +kernel) s6Step84Add1_distinct
    (fun q hq => s6Step84Add1_owned (List.mem_toFinset.mpr hq)) s6Step84Add1_borrowed

private theorem s6Step84F4_apart : Disjoint (s6Step84Add0A++s6Step84Add0B).toFinset (s6Step84Add1A++s6Step84Add1B).toFinset := by
  have nd : ((s6Step84Add0A++s6Step84Add0B)++(s6Step84Add1A++s6Step84Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step84F4_carry : s6Step84F4FlagArena.checkBorrow 1 [922]=some s6Step84Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step84F4FlagArena,s6Step84HeadFvAfter,arenaWires]
  · change s6Step84Add0Arena.live=(s6Step84HeadFvAfter.live∪{803})∪{922}
    apply hmrArena_union_pair_of_filter_check s6Step84HeadFvAfter s6Step84Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 803 922 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step84F4_distinct : (813::794::803::922::((s6Step84Add0A++s6Step84Add1A)++(s6Step84Add0B++s6Step84Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step84F4_flag : s6Step84HeadFvAfter.checkBorrow 1 [803]=some s6Step84F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step84HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step84F4_owned : (813::794::((s6Step84Add0A++s6Step84Add1A)++(s6Step84Add0B++s6Step84Add1B))).toFinset⊆s6Step84HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step84HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step84F4_checked : compileHmrHybridF4Log s6Step84HeadFvAfter 813 794 s6Step84Add0A s6Step84Add0B s6Step84Add1A s6Step84Add1B [803] [922] s6Step84Add0Work s6Step84Add1Work=some s6Step84F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step84HeadFvAfter s6Step84F4FlagArena s6Step84Add0Arena s6Step84Add0During s6Step84Add1During 813 794
    s6Step84Add0A s6Step84Add0B s6Step84Add1A s6Step84Add1B [803] [922] s6Step84Add0Work s6Step84Add1Work
    (fun q hq => s6Step84F4_owned (List.mem_toFinset.mpr hq)) s6Step84F4_flag s6Step84F4_carry
    s6Step84F4_distinct s6Step84F4_apart s6Step84Add0_checked s6Step84Add1_checked

private theorem s6Step84Front_branch : s6Step84FrontSigmaArena.checkBorrow 1 [794]=some s6Step84HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step84FrontSigmaArena,s6Step84EntryGvAfter,arenaWires]
  · change s6Step84HeadGBefore.live=(s6Step84EntryGvAfter.live∪{813})∪{794}
    apply hmrArena_union_pair_of_filter_check s6Step84EntryGvAfter s6Step84HeadGBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 813 794 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step84Front_entry : HmrFrontEntryValid s6Step84EntryFBefore s6Step84FrontBank 227 56 ⟨226,226,56,56⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step84FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step84EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step84EntryFBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,867),(868,877),(878,879),(880,881),(882,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step84FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step84Front_sigma : s6Step84EntryGvAfter.checkBorrow 1 [813]=some s6Step84FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step84EntryGvAfter,arenaWires]
  · rfl

private def s6Step84HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step84HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step84HeadFBefore : Arena := s6Step84HeadGAfter

private def s6Step84HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482],795⟩

private def s6Step84HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860],776⟩

private def s6Step84HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 881],777⟩

private def s6Step84HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867],775⟩

private theorem s6Step84HeadBank_incomingDistinct : ([s6Step84HeadGRow,s6Step84HeadFRow,s6Step84HeadGvRow,s6Step84HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step84HeadF_Incoming : rowsOwned s6Step84HeadFBefore [s6Step84HeadFRow,s6Step84HeadGvRow,s6Step84HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step84HeadGRow,s6Step84HeadFRow,s6Step84HeadGvRow,s6Step84HeadFvRow] 1 s6Step84HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step84HeadFBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step84HeadBank_outgoingOwned : rowsOwned s6Step84HeadFvAfter [s6Step84HeadGOut,s6Step84HeadFOut,s6Step84HeadGvOut,s6Step84HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step84HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step84HeadF_Outgoing : rowsOwned s6Step84HeadFvAfter [s6Step84HeadFOut,s6Step84HeadGvOut,s6Step84HeadFvOut] :=
  hmrRows_owned_drop s6Step84HeadFvAfter [s6Step84HeadGOut,s6Step84HeadFOut,s6Step84HeadGvOut,s6Step84HeadFvOut] 1 s6Step84HeadBank_outgoingOwned

private theorem s6Step84HeadF_distinct : (s6Step84HeadFRow.sign::s6Step84HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step84HeadF_owned : (s6Step84HeadFRow.sign::s6Step84HeadFRow.payload).toFinset⊆s6Step84HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step84HeadFBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step84HeadF_reserved : s6Step84HeadFBefore.reserve s6Step84HeadFFresh.toFinset=some s6Step84HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step84HeadFFresh,arenaWires]
  · norm_num [s6Step84HeadFBefore,s6Step84HeadGAfter,s6Step84HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step84HeadFBefore s6Step84HeadFAfter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step84HeadFFresh rfl rfl
    · norm_num [s6Step84HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step84HeadF_checked : planRowResizeLog s6Step84HeadFBefore s6Step84HeadFRow 228 s6Step84HeadFFresh=
    some (s6Step84HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 877],795⟩,growRow 795 s6Step84HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step84HeadFBefore s6Step84HeadFAfter s6Step84HeadFRow 228 s6Step84HeadFFresh
    s6Step84HeadF_distinct s6Step84HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step84HeadF_reserved
  have rowEq : WindowRow.mk (s6Step84HeadFRow.payload++s6Step84HeadFFresh) s6Step84HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 877],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step84HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step84HeadFvBefore : Arena := s6Step84HeadGvAfter

private theorem s6Step84HeadFv_Incoming : rowsOwned s6Step84HeadFvBefore [s6Step84HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step84HeadGRow,s6Step84HeadFRow,s6Step84HeadGvRow,s6Step84HeadFvRow] 3 s6Step84HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step84HeadFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step84HeadFv_Outgoing : rowsOwned s6Step84HeadFvAfter [s6Step84HeadFvOut] :=
  hmrRows_owned_drop s6Step84HeadFvAfter [s6Step84HeadGOut,s6Step84HeadFOut,s6Step84HeadGvOut,s6Step84HeadFvOut] 3 s6Step84HeadBank_outgoingOwned

private theorem s6Step84HeadFv_distinct : (s6Step84HeadFvRow.sign::s6Step84HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step84HeadFv_owned : (s6Step84HeadFvRow.sign::s6Step84HeadFvRow.payload).toFinset⊆s6Step84HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step84HeadFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step84HeadFv_reserved : s6Step84HeadFvBefore.reserve s6Step84HeadFvFresh.toFinset=some s6Step84HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step84HeadFvFresh,arenaWires]
  · norm_num [s6Step84HeadFvBefore,s6Step84HeadGvAfter,s6Step84HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step84HeadFvBefore s6Step84HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step84HeadFvFresh rfl rfl
    · norm_num [s6Step84HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step84HeadFv_checked : planRowResizeLog s6Step84HeadFvBefore s6Step84HeadFvRow 57 s6Step84HeadFvFresh=
    some (s6Step84HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 780],776⟩,growRow 776 s6Step84HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step84HeadFvBefore s6Step84HeadFvAfter s6Step84HeadFvRow 57 s6Step84HeadFvFresh
    s6Step84HeadFv_distinct s6Step84HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step84HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step84HeadFvRow.payload++s6Step84HeadFvFresh) s6Step84HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 780],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step84HeadG_Incoming : rowsOwned s6Step84HeadGBefore [s6Step84HeadGRow,s6Step84HeadFRow,s6Step84HeadGvRow,s6Step84HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step84HeadGRow,s6Step84HeadFRow,s6Step84HeadGvRow,s6Step84HeadFvRow] 0 s6Step84HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step84HeadGBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step84HeadG_Outgoing : rowsOwned s6Step84HeadFvAfter [s6Step84HeadGOut,s6Step84HeadFOut,s6Step84HeadGvOut,s6Step84HeadFvOut] :=
  hmrRows_owned_drop s6Step84HeadFvAfter [s6Step84HeadGOut,s6Step84HeadFOut,s6Step84HeadGvOut,s6Step84HeadFvOut] 0 s6Step84HeadBank_outgoingOwned

private theorem s6Step84HeadG_distinct : (s6Step84HeadGRow.sign::s6Step84HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step84HeadG_owned : (s6Step84HeadGRow.sign::s6Step84HeadGRow.payload).toFinset⊆s6Step84HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step84HeadGBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step84HeadG_reserved : s6Step84HeadGBefore.reserve s6Step84HeadGFresh.toFinset=some s6Step84HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step84HeadGFresh,arenaWires]
  · norm_num [s6Step84HeadGBefore,s6Step84HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step84HeadGBefore s6Step84HeadGAfter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step84HeadGFresh rfl rfl
    · norm_num [s6Step84HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step84HeadG_checked : planRowResizeLog s6Step84HeadGBefore s6Step84HeadGRow 228 s6Step84HeadGFresh=
    some (s6Step84HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 881, 855],777⟩,growRow 777 s6Step84HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step84HeadGBefore s6Step84HeadGAfter s6Step84HeadGRow 228 s6Step84HeadGFresh
    s6Step84HeadG_distinct s6Step84HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step84HeadG_reserved
  have rowEq : WindowRow.mk (s6Step84HeadGRow.payload++s6Step84HeadGFresh) s6Step84HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 881, 855],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step84HeadGvBefore : Arena := s6Step84HeadFAfter

private theorem s6Step84HeadGv_Incoming : rowsOwned s6Step84HeadGvBefore [s6Step84HeadGvRow,s6Step84HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step84HeadGRow,s6Step84HeadFRow,s6Step84HeadGvRow,s6Step84HeadFvRow] 2 s6Step84HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step84HeadGvBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step84HeadGv_Outgoing : rowsOwned s6Step84HeadFvAfter [s6Step84HeadGvOut,s6Step84HeadFvOut] :=
  hmrRows_owned_drop s6Step84HeadFvAfter [s6Step84HeadGOut,s6Step84HeadFOut,s6Step84HeadGvOut,s6Step84HeadFvOut] 2 s6Step84HeadBank_outgoingOwned

private theorem s6Step84HeadGv_distinct : (s6Step84HeadGvRow.sign::s6Step84HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step84HeadGv_owned : (s6Step84HeadGvRow.sign::s6Step84HeadGvRow.payload).toFinset⊆s6Step84HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step84HeadGvBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step84HeadGv_reserved : s6Step84HeadGvBefore.reserve s6Step84HeadGvFresh.toFinset=some s6Step84HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step84HeadGvFresh,arenaWires]
  · norm_num [s6Step84HeadGvBefore,s6Step84HeadFAfter,s6Step84HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step84HeadGvBefore s6Step84HeadGvAfter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step84HeadGvFresh rfl rfl
    · norm_num [s6Step84HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step84HeadGv_checked : planRowResizeLog s6Step84HeadGvBefore s6Step84HeadGvRow 57 s6Step84HeadGvFresh=
    some (s6Step84HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786],775⟩,growRow 775 s6Step84HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step84HeadGvBefore s6Step84HeadGvAfter s6Step84HeadGvRow 57 s6Step84HeadGvFresh
    s6Step84HeadGv_distinct s6Step84HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step84HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step84HeadGvRow.payload++s6Step84HeadGvFresh) s6Step84HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step84HeadBank_rows : planWindowRowsLog s6Step84HeadGBefore [(s6Step84HeadGRow,228),(s6Step84HeadFRow,228),(s6Step84HeadGvRow,57),(s6Step84HeadFvRow,57)] [s6Step84HeadGFresh,s6Step84HeadFFresh,s6Step84HeadGvFresh,s6Step84HeadFvFresh]=
    some (s6Step84HeadFvAfter,[s6Step84HeadGOut,s6Step84HeadFOut,s6Step84HeadGvOut,s6Step84HeadFvOut],(growRow 777 s6Step84HeadGFresh ++ (growRow 795 s6Step84HeadFFresh ++ (growRow 775 s6Step84HeadGvFresh ++ (growRow 776 s6Step84HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step84HeadFvAfter [] []=some (s6Step84HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step84HeadFvBefore s6Step84HeadFvAfter s6Step84HeadFvAfter
    s6Step84HeadFvRow s6Step84HeadFvOut 57 s6Step84HeadFvFresh [] [] []
    (growRow 776 s6Step84HeadFvFresh) ([]) s6Step84HeadFv_Incoming s6Step84HeadFv_checked h4 s6Step84HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step84HeadGvBefore s6Step84HeadGvAfter s6Step84HeadFvAfter
    s6Step84HeadGvRow s6Step84HeadGvOut 57 s6Step84HeadGvFresh [(s6Step84HeadFvRow,57)] [s6Step84HeadFvFresh] [s6Step84HeadFvOut]
    (growRow 775 s6Step84HeadGvFresh) ((growRow 776 s6Step84HeadFvFresh ++ [])) s6Step84HeadGv_Incoming s6Step84HeadGv_checked h3 s6Step84HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step84HeadFBefore s6Step84HeadFAfter s6Step84HeadFvAfter
    s6Step84HeadFRow s6Step84HeadFOut 228 s6Step84HeadFFresh [(s6Step84HeadGvRow,57),(s6Step84HeadFvRow,57)] [s6Step84HeadGvFresh,s6Step84HeadFvFresh] [s6Step84HeadGvOut,s6Step84HeadFvOut]
    (growRow 795 s6Step84HeadFFresh) ((growRow 775 s6Step84HeadGvFresh ++ (growRow 776 s6Step84HeadFvFresh ++ []))) s6Step84HeadF_Incoming s6Step84HeadF_checked h2 s6Step84HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step84HeadGBefore s6Step84HeadGAfter s6Step84HeadFvAfter
    s6Step84HeadGRow s6Step84HeadGOut 228 s6Step84HeadGFresh [(s6Step84HeadFRow,228),(s6Step84HeadGvRow,57),(s6Step84HeadFvRow,57)] [s6Step84HeadFFresh,s6Step84HeadGvFresh,s6Step84HeadFvFresh] [s6Step84HeadFOut,s6Step84HeadGvOut,s6Step84HeadFvOut]
    (growRow 777 s6Step84HeadGFresh) ((growRow 795 s6Step84HeadFFresh ++ (growRow 775 s6Step84HeadGvFresh ++ (growRow 776 s6Step84HeadFvFresh ++ [])))) s6Step84HeadG_Incoming s6Step84HeadG_checked h1 s6Step84HeadG_Outgoing
  exact h0

private theorem s6Step84HeadBank_checked : compileHmrBankResizeLog .headroom s6Step84HeadGBefore ⟨s6Step84HeadFRow,s6Step84HeadGRow,s6Step84HeadFvRow,s6Step84HeadGvRow⟩ ⟨228,228,57,57⟩ [s6Step84HeadGFresh,s6Step84HeadFFresh,s6Step84HeadGvFresh,s6Step84HeadFvFresh]=
    some (s6Step84HeadFvAfter,⟨s6Step84HeadFOut,s6Step84HeadGOut,s6Step84HeadFvOut,s6Step84HeadGvOut⟩,(growRow 777 s6Step84HeadGFresh ++ (growRow 795 s6Step84HeadFFresh ++ (growRow 775 s6Step84HeadGvFresh ++ (growRow 776 s6Step84HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step84HeadBank_rows]
  rfl

private theorem s6Step84Front_checked : compileHmrSourceFrontLog s6Step84EntryFBefore s6Step84FrontBank 227 56 ⟨226,226,56,56⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step84FrontLog=some s6Step84FrontPlan := by
  have pairEq : s6Step84FrontPair=⟨s6Step84HeadFRow,s6Step84HeadGRow,s6Step84HeadFvRow,s6Step84HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step84FrontHead=⟨s6Step84ExitFRow,s6Step84ExitGRow,s6Step84ExitFvRow,s6Step84ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step84Add0A=s6Step84FrontHead.f.wires := by decide +kernel
  have gEq : s6Step84Add0B=s6Step84FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step84Add1A=s6Step84FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step84Add1B=s6Step84FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step84EntryFBefore s6Step84FrontBank 227 56 ⟨226,226,56,56⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step84FrontLog s6Step84FrontPlan
  · exact s6Step84Front_entry
  · exact s6Step84EntryBank_checked
  · exact s6Step84Front_sigma
  · rfl
  · exact s6Step84Front_branch
  · rfl
  · simpa only [s6Step84FrontPlan,pairEq] using s6Step84HeadBank_checked
  · simpa only [s6Step84FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step84F4_checked
  · exact s6Step84Counter_checked
  · rfl
  · simpa only [s6Step84FrontPlan,headEq] using s6Step84ExitBank_checked

private theorem s6Step84Complete_explicit_checked : compileHmrEarlyStepLog s6Step84EntryFBefore s6Step84FrontBank 227 56 ⟨226,226,56,56⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 31 s6Step84CompleteLog=some s6Step84CompletePlan := by
  let Q := s6Step84EarlyControlPlan
  have hq := s6Step84EarlyControl_plan_checked
  have fv1 : s6Step84CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step84CompleteOut.fv.payload[2]?.getD s6Step84CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step84CompleteOut.fv.payload[3]?.getD s6Step84CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step84CompleteOut.fv.payload[4]?.getD s6Step84CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step84EntryFBefore s6Step84EarlyControlArena s6Step84FrontBank 227 56 ⟨226,226,56,56⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 31 s6Step84CompleteLog s6Step84FrontPlan Q
    s6Step84Front_checked s6Step84Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step84Complete_owned s6Step84Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step84EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 813 s6Step84CompleteOut.fv.second (s6Step84CompleteOut.fv.payload[2]?.getD s6Step84CompleteOut.fv.sign) (s6Step84CompleteOut.fv.payload[3]?.getD s6Step84CompleteOut.fv.sign) (s6Step84CompleteOut.fv.payload[4]?.getD s6Step84CompleteOut.fv.sign) 794 31 s6Step84EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep84Arena : Arena := s6Step84EntryFBefore
def s6PrivateStep84Bank : WindowBank := s6Step84FrontBank
def s6PrivateStep84Spec : HmrSourceWalkStepLog := ⟨227,56,⟨226,226,56,56⟩,31,.early s6Step84CompleteLog⟩
def s6PrivateStep84Plan : HmrSourceStepPlan := .early s6Step84CompletePlan
theorem s6PrivateStep84_source : s6PrivateStep84Spec=s6ObservedLogs80[4] := rfl
theorem s6PrivateStep84_checked : compileHmrSourceStepLog s6PrivateStep84Arena s6PrivateStep84Bank
    s6PrivateStep84Spec.fgWidth s6PrivateStep84Spec.vWidth s6PrivateStep84Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902]
    6 498 84 s6PrivateStep84Spec.need none s6PrivateStep84Spec.log=some s6PrivateStep84Plan := by
  change compileHmrSourceStepLog s6Step84EntryFBefore s6Step84FrontBank 227 56 ⟨226,226,56,56⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 6 498 84 31 none (.early s6Step84CompleteLog)=some (.early s6Step84CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 84<498)]
  rw [s6Step84Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
