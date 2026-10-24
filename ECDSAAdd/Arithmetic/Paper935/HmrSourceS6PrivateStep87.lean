import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep85
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

private def s6Step87CompleteMoves : List (Wire × Wire) := [(802,480),(857,481)]

private def s6Step87EarlyControlLog : HmrEarlyControlLog := ⟨[857, 802, 881, 780, 794],[813],[803],[922, 879, 784, 891, 783, 919],[]⟩

private def s6Step87FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [876, 794], [], []],[[813], [780], [881], [855]],[[], [], [], []]⟩,[859],[877],[803],[922],[879, 784, 891, 783, 919, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[879, 784, 891, 783, 919, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928],[803, 922, 879, 784]⟩

private def s6Step87CompleteLog : HmrEarlyStepLog := ⟨s6Step87FrontLog,s6Step87CompleteMoves,s6Step87EarlyControlLog⟩

private def s6Step87ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479],795⟩

private def s6Step87ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855],776⟩

private def s6Step87ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 876],777⟩

private def s6Step87ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786],775⟩

private def s6Step87FrontOut : WindowBank := ⟨s6Step87ExitFOut,s6Step87ExitGOut,s6Step87ExitFvOut,s6Step87ExitGvOut⟩

private def s6Step87CompleteOut : WindowBank := s6Step87FrontOut.repacked s6Step87CompleteMoves

private def s6Step87EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step87EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step87EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step87EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step87EarlyControlPositiveArena,[813],s6Step87EarlyControlEqualityArena,[803],⟨⟨859,false⟩,[⟨⟨813,false⟩,803⟩]⟩⟩

private def s6Step87EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step87EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step87EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step87EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,859),(860,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step87EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,859),(860,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step87EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step87EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,857⟩,⟨⟨772,false⟩,802⟩,⟨⟨771,false⟩,881⟩,⟨⟨770,false⟩,780⟩,⟨⟨769,false⟩,794⟩]⟩

private def s6Step87EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step87EarlyControlZeroArena,s6Step87EarlyControlZeroPlan,s6Step87EarlyControlClassPlan,s6Step87EarlyControlFlagArena,s6Step87EarlyControlFittedArena,s6Step87EarlyControlHistoryArena,s6Step87EarlyControlSigmaArena,s6Step87EarlyControlOutputArena,s6Step87EarlyControlLog⟩

private def s6Step87CounterWork : List Wire := [803, 922, 879, 784]

private theorem s6Step87Counter_bounded : s6Step87CounterWork.toFinset⊆arenaWires := by norm_num [s6Step87CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step87HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step87CounterDuring : Arena := ⟨s6Step87HeadFvAfter.live∪s6Step87CounterWork.toFinset,Finset.union_subset s6Step87HeadFvAfter.bounded s6Step87Counter_bounded⟩

private def s6Step87EntryFFresh : List Wire := []

private def s6Step87EntryFvFresh : List Wire := []

private def s6Step87EntryGFresh : List Wire := [876, 794]

private def s6Step87EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step87EntryGvAfter : Arena := s6Step87EntryGAfter

private def s6Step87EntryGvFresh : List Wire := []

private def s6Step87ExitFExtra : List Wire := [480, 481, 780]

private def s6Step87ExitGExtra : List Wire := [794, 813]

private def s6Step87ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,480),(482,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step87ExitGvExtra : List Wire := [881]

private def s6Step87Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step87Add0Work : List Wire := [879, 784, 891, 783, 919, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step87Add0_bounded : s6Step87Add0Work.toFinset⊆arenaWires := by
  have h : s6Step87Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step87Add0During : Arena := ⟨s6Step87Add0Arena.live∪s6Step87Add0Work.toFinset,Finset.union_subset s6Step87Add0Arena.bounded s6Step87Add0_bounded⟩

private def s6Step87Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step87Add1Work : List Wire := [879, 784, 891, 783, 919, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928]

private theorem s6Step87Add1_bounded : s6Step87Add1Work.toFinset⊆arenaWires := by
  have h : s6Step87Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step87Add1During : Arena := ⟨s6Step87Add1Arena.live∪s6Step87Add1Work.toFinset,Finset.union_subset s6Step87Add1Arena.bounded s6Step87Add1_bounded⟩

private def s6Step87F4FlagArena : Arena := ⟨s6Step87HeadFvAfter.live∪{803},Finset.union_subset s6Step87HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step87F4Plan : HmrHybridF4Plan := ⟨s6Step87F4FlagArena,[803],s6Step87Add0Arena,[922],s6Step87Add0During,s6Step87Add0Work,s6Step87Add1During,s6Step87Add1Work⟩

private def s6Step87HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 780],795⟩

private def s6Step87HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855],776⟩

private def s6Step87HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 876, 794, 813],777⟩

private def s6Step87HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 881],775⟩

private def s6Step87FrontHead : WindowBank := ⟨s6Step87HeadFOut,s6Step87HeadGOut,s6Step87HeadFvOut,s6Step87HeadGvOut⟩

private def s6Step87EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481],795⟩

private def s6Step87EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927],776⟩

private def s6Step87EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 876, 794],777⟩

private def s6Step87EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786],775⟩

private def s6Step87FrontPair : WindowBank := ⟨s6Step87EntryFOut,s6Step87EntryGOut,s6Step87EntryFvOut,s6Step87EntryGvOut⟩

private def s6Step87FrontSigmaArena : Arena := ⟨s6Step87EntryGvAfter.live∪{859},Finset.union_subset s6Step87EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step87HeadFFresh : List Wire := [780]

private def s6Step87HeadFvFresh : List Wire := [855]

private def s6Step87HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step87HeadGFresh : List Wire := [813]

private def s6Step87HeadGvFresh : List Wire := [881]

private def s6Step87FrontPlan : HmrSourceFront := ⟨s6Step87EntryGvAfter,s6Step87FrontPair,(growRow 795 s6Step87EntryFFresh ++ (growRow 777 s6Step87EntryGFresh ++ (growRow 776 s6Step87EntryFvFresh ++ (growRow 775 s6Step87EntryGvFresh ++ [])))),s6Step87FrontSigmaArena,[859],s6Step87HeadGBefore,[877],
  s6Step87HeadFvAfter,s6Step87FrontHead,(growRow 777 s6Step87HeadGFresh ++ (growRow 795 s6Step87HeadFFresh ++ (growRow 775 s6Step87HeadGvFresh ++ (growRow 776 s6Step87HeadFvFresh ++ [])))),s6Step87F4Plan,s6Step87CounterDuring,s6Step87CounterWork,s6Step87ExitGvAfter,s6Step87FrontOut,(shrinkRow 777 s6Step87ExitGExtra ++ (shrinkRow 795 s6Step87ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step87ExitGvExtra ++ []))))⟩

private def s6Step87CompletePlan : HmrEarlyStepPlan := ⟨s6Step87FrontPlan,s6Step87EarlyControlArena,s6Step87EarlyControlPlan,s6Step87CompleteMoves⟩

private theorem s6Step87Complete_apart : List.Disjoint (s6Step87CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [859, 877, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] := by
  have nd : ((s6Step87CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[859, 877, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step87Complete_owned : (s6Step87CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step87EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step87EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step87CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,481),(482,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step87CompleteRelocationMove0Borrowed : Arena := ⟨s6Step87ExitGvAfter.live∪{480},Finset.union_subset s6Step87ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step87CompleteRelocationMove1Borrowed : Arena := ⟨s6Step87CompleteRelocationMove0After.live∪{481},Finset.union_subset s6Step87CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step87CompleteRelocation_move0_owned : 802∈s6Step87ExitGvAfter.live := by norm_num [s6Step87ExitGvAfter,arenaWires]

private theorem s6Step87CompleteRelocation_move0_reserve : s6Step87ExitGvAfter.reserve {480}=some s6Step87CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step87ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step87CompleteRelocation_move0_retire : s6Step87CompleteRelocationMove0Borrowed.retireSet {802}=s6Step87CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step87CompleteRelocationMove0Borrowed s6Step87CompleteRelocationMove0After {802}
  change s6Step87CompleteRelocationMove0After.live=(s6Step87ExitGvAfter.live∪{480})\{802}
  apply hmrArena_update_of_filter_check s6Step87ExitGvAfter s6Step87CompleteRelocationMove0After (fun q => ([(0,480),(482,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,481),(482,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [480] [802] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step87CompleteRelocation_move1_owned : 857∈s6Step87CompleteRelocationMove0After.live := by norm_num [s6Step87CompleteRelocationMove0After,arenaWires]

private theorem s6Step87CompleteRelocation_move1_reserve : s6Step87CompleteRelocationMove0After.reserve {481}=some s6Step87CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step87CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step87CompleteRelocation_move1_retire : s6Step87CompleteRelocationMove1Borrowed.retireSet {857}=s6Step87EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step87CompleteRelocationMove1Borrowed s6Step87EarlyControlArena {857}
  change s6Step87EarlyControlArena.live=(s6Step87CompleteRelocationMove0After.live∪{481})\{857}
  apply hmrArena_update_of_filter_check s6Step87CompleteRelocationMove0After s6Step87EarlyControlArena (fun q => ([(0,481),(482,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [481] [857] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step87CompleteRelocation_checked : s6Step87ExitGvAfter.checkRepack [(802,480),(857,481)]=some s6Step87EarlyControlArena := by
  have tail2 : s6Step87EarlyControlArena.checkRepack []=some s6Step87EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step87CompleteRelocationMove0After s6Step87CompleteRelocationMove1Borrowed s6Step87EarlyControlArena s6Step87EarlyControlArena 857 481 []
    s6Step87CompleteRelocation_move1_owned s6Step87CompleteRelocation_move1_reserve s6Step87CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step87ExitGvAfter s6Step87CompleteRelocationMove0Borrowed s6Step87CompleteRelocationMove0After s6Step87EarlyControlArena 802 480 [(857,481)]
    s6Step87CompleteRelocation_move0_owned s6Step87CompleteRelocation_move0_reserve s6Step87CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step87Complete_repack : s6Step87ExitGvAfter.checkRepack s6Step87CompleteMoves=some s6Step87EarlyControlArena := by
  simpa only [s6Step87CompleteMoves] using s6Step87CompleteRelocation_checked

private theorem s6Step87EarlyControl_branchOwned : ([877] : List Wire).toFinset⊆s6Step87EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step87EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,859),(860,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step87EarlyControl_branch : compileHmrBranchRetirement s6Step87EarlyControlSigmaArena 877=some s6Step87EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step87EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step87EarlyControlSigmaArena s6Step87EarlyControlOutputArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,859),(860,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,859),(860,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [877] rfl rfl
    decide +kernel

private theorem s6Step87EarlyControl_classEqualityBorrow : s6Step87EarlyControlPositiveArena.checkBorrow (([859, 813] : List Wire).length-1) s6Step87EarlyControlLog.classWork=some s6Step87EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step87EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step87EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step87EarlyControlPositiveArena s6Step87EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step87EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step87EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step87EarlyControl_classEqualityOwned : ([859, 813] : List Wire).toFinset⊆s6Step87EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step87EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step87EarlyControl_classEquality : compileHmrEqualityLog s6Step87EarlyControlPositiveArena [859, 813] 0 s6Step87EarlyControlLog.classWork=some (s6Step87EarlyControlEqualityArena,s6Step87EarlyControlLog.classWork,s6Step87EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step87EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step87EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step87EarlyControl_classOwned : ([769, 794, 859] : List Wire).toFinset⊆s6Step87EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step87EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step87EarlyControl_positiveBorrow : s6Step87EarlyControlZeroArena.checkBorrow (1) s6Step87EarlyControlLog.positiveWork=some s6Step87EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step87EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step87EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step87EarlyControlZeroArena s6Step87EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step87EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step87EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step87EarlyControl_class : compileHmrSourceClassLog s6Step87EarlyControlZeroArena false 769 s6Step87EarlyControlZeroPlan.top 0 859 s6Step87EarlyControlLog.positiveWork s6Step87EarlyControlLog.classWork=some s6Step87EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step87EarlyControlClassPlan s6Step87EarlyControlZeroArena false 769 s6Step87EarlyControlZeroPlan.top 0 859
  constructor
  · decide +kernel
  · exact s6Step87EarlyControl_classOwned
  · exact s6Step87EarlyControl_positiveBorrow
  · exact s6Step87EarlyControl_classEquality

private theorem s6Step87EarlyControl_entryRecordOwned : ([877, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] : List Wire).toFinset⊆s6Step87EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step87EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step87EarlyControl_entrySigmaOwned : ([859, 254] : List Wire).toFinset⊆s6Step87EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step87EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step87EarlyControl_fitBorrow : s6Step87EarlyControlFlagArena.checkBorrow ((31-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] : List Wire).length)) s6Step87EarlyControlLog.recordFresh=some s6Step87EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step87EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step87EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step87EarlyControlFittedArena,s6Step87EarlyControlFlagArena,s6Step87EarlyControlLog,arenaWires]

private theorem s6Step87EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] : List Wire).toFinset⊆s6Step87EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step87EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step87EarlyControl_fit : compileHmrRecordGrowLog s6Step87EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] 31 s6Step87EarlyControlLog.recordFresh=some s6Step87EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step87EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step87EarlyControl_fitBorrow

private theorem s6Step87EarlyControl_flagsBorrow : s6Step87EarlyControlEqualityArena.checkBorrow (6) s6Step87EarlyControlLog.flagWork=some s6Step87EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step87EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step87EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step87EarlyControlEqualityArena s6Step87EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step87EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step87EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step87EarlyControl_flagsOwned : ([803, 253, 252, 251] : List Wire).toFinset⊆s6Step87EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step87EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step87EarlyControl_flags : compileHmrFlagsLog s6Step87EarlyControlClassPlan.equalityArena s6Step87EarlyControlClassPlan.equality.top 253 252 251 s6Step87EarlyControlLog.flagWork=some s6Step87EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step87EarlyControl_flagsOwned⟩
  · exact s6Step87EarlyControl_flagsBorrow

private theorem s6Step87EarlyControl_historyBorrow : s6Step87EarlyControlArena.checkBorrow ((31-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] : List Wire).length)) s6Step87EarlyControlLog.recordFresh=some s6Step87EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step87EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step87EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step87EarlyControlArena s6Step87EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step87EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step87EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step87EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] : List Wire).toFinset⊆s6Step87EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step87EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step87EarlyControl_history : compileHmrRecordGrowLog s6Step87EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] 31 s6Step87EarlyControlLog.recordFresh=some s6Step87EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step87EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step87EarlyControl_historyBorrow

private theorem s6Step87EarlyControl_sigmaOwned : ([254, 859] : List Wire).toFinset⊆s6Step87EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step87EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step87EarlyControl_sigmaReleaseOwned : ([859] : List Wire).toFinset⊆s6Step87EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step87EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step87EarlyControl_sigmaRelease : s6Step87EarlyControlHistoryArena.release {859} (fun _ => false)=some s6Step87EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step87EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step87EarlyControlHistoryArena s6Step87EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,859),(860,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [859] rfl rfl
    decide +kernel

private theorem s6Step87EarlyControl_sigma : compileHmrSigmaDropLog s6Step87EarlyControlHistoryArena false 0 0 254 859 []=some s6Step87EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step87EarlyControl_sigmaOwned⟩
  · exact s6Step87EarlyControl_sigmaRelease

private theorem s6Step87EarlyControl_zeroBorrow : s6Step87EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step87EarlyControlLog.zeroWork=some s6Step87EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step87EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step87EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step87EarlyControlArena s6Step87EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step87EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step87EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step87EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step87EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step87EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,857),(858,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step87EarlyControl_zero : compileHmrEqualityLog s6Step87EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step87EarlyControlLog.zeroWork=some (s6Step87EarlyControlZeroArena,s6Step87EarlyControlLog.zeroWork,s6Step87EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step87EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step87EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step87EarlyControl_logged : s6Step87EarlyControlPlan.Logged s6Step87EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] 769 859 254 253 252 251 877 31 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step87EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step87EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step87EarlyControl_zero
  · exact s6Step87EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step87EarlyControl_flags
  · exact s6Step87EarlyControl_fit
  · exact s6Step87EarlyControl_history
  · exact s6Step87EarlyControl_sigma
  · exact s6Step87EarlyControl_branch

private theorem s6Step87EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step87EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] 769 859 254 253 252 251 877 31 s6Step87EarlyControlLog=some s6Step87EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step87EarlyControlPlan s6Step87EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] 769 859 254 253 252 251 877 31 s6Step87EarlyControl_logged

private def s6Step87EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step87EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481],795⟩

private def s6Step87EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927],776⟩

private def s6Step87EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223],777⟩

private def s6Step87EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786],775⟩

private def s6Step87FrontBank : WindowBank := ⟨s6Step87EntryFRow,s6Step87EntryGRow,s6Step87EntryFvRow,s6Step87EntryGvRow⟩

private def s6Step87Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 780, 795]

private def s6Step87Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 876, 794, 813, 777]

private def s6Step87Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 776]

private def s6Step87Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 881, 775]

private theorem s6Step87Counter_apart : Disjoint s6Step87HeadFvAfter.live s6Step87CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step87HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step87Counter_borrowed : s6Step87HeadFvAfter.checkBorrow 4 s6Step87CounterWork=some s6Step87CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step87HeadFvAfter s6Step87CounterDuring s6Step87CounterWork.toFinset s6Step87Counter_bounded s6Step87Counter_apart rfl

private theorem s6Step87Counter_owned : (859::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step87HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step87HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step87Counter_checked : compileHmrCounterStepLog s6Step87HeadFvAfter true 859 [774, 773, 772, 771, 770, 769] s6Step87CounterWork=some s6Step87CounterDuring := by
  have owned : ∀q∈859::[774, 773, 772, 771, 770, 769],q∈s6Step87HeadFvAfter.live := fun q hq => s6Step87Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step87Counter_borrowed

private def s6Step87EntryFAfter : Arena := s6Step87EntryFBefore

private theorem s6Step87EntryBank_incomingDistinct : ([s6Step87EntryFRow,s6Step87EntryGRow,s6Step87EntryFvRow,s6Step87EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step87EntryF_Incoming : rowsOwned s6Step87EntryFBefore [s6Step87EntryFRow,s6Step87EntryGRow,s6Step87EntryFvRow,s6Step87EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step87EntryFRow,s6Step87EntryGRow,s6Step87EntryFvRow,s6Step87EntryGvRow] 0 s6Step87EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step87EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step87EntryBank_outgoingOwned : rowsOwned s6Step87EntryGvAfter [s6Step87EntryFOut,s6Step87EntryGOut,s6Step87EntryFvOut,s6Step87EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step87EntryGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step87EntryF_Outgoing : rowsOwned s6Step87EntryGvAfter [s6Step87EntryFOut,s6Step87EntryGOut,s6Step87EntryFvOut,s6Step87EntryGvOut] :=
  hmrRows_owned_drop s6Step87EntryGvAfter [s6Step87EntryFOut,s6Step87EntryGOut,s6Step87EntryFvOut,s6Step87EntryGvOut] 0 s6Step87EntryBank_outgoingOwned

private theorem s6Step87EntryF_distinct : (s6Step87EntryFRow.sign::s6Step87EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step87EntryF_owned : (s6Step87EntryFRow.sign::s6Step87EntryFRow.payload).toFinset⊆s6Step87EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step87EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step87EntryF_reserved : s6Step87EntryFBefore.reserve s6Step87EntryFFresh.toFinset=some s6Step87EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step87EntryFFresh,arenaWires]
  · norm_num [s6Step87EntryFBefore,s6Step87EntryFFresh,arenaWires]
  · simp only [s6Step87EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step87EntryF_checked : planRowResizeLog s6Step87EntryFBefore s6Step87EntryFRow 226 s6Step87EntryFFresh=
    some (s6Step87EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481],795⟩,growRow 795 s6Step87EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step87EntryFBefore s6Step87EntryFAfter s6Step87EntryFRow 226 s6Step87EntryFFresh
    s6Step87EntryF_distinct s6Step87EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step87EntryF_reserved
  have rowEq : WindowRow.mk (s6Step87EntryFRow.payload++s6Step87EntryFFresh) s6Step87EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step87EntryFvAfter : Arena := s6Step87EntryGAfter

private def s6Step87EntryFvBefore : Arena := s6Step87EntryGAfter

private theorem s6Step87EntryFv_Incoming : rowsOwned s6Step87EntryFvBefore [s6Step87EntryFvRow,s6Step87EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step87EntryFRow,s6Step87EntryGRow,s6Step87EntryFvRow,s6Step87EntryGvRow] 2 s6Step87EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step87EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step87EntryFv_Outgoing : rowsOwned s6Step87EntryGvAfter [s6Step87EntryFvOut,s6Step87EntryGvOut] :=
  hmrRows_owned_drop s6Step87EntryGvAfter [s6Step87EntryFOut,s6Step87EntryGOut,s6Step87EntryFvOut,s6Step87EntryGvOut] 2 s6Step87EntryBank_outgoingOwned

private theorem s6Step87EntryFv_distinct : (s6Step87EntryFvRow.sign::s6Step87EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step87EntryFv_owned : (s6Step87EntryFvRow.sign::s6Step87EntryFvRow.payload).toFinset⊆s6Step87EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step87EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step87EntryFv_reserved : s6Step87EntryFvBefore.reserve s6Step87EntryFvFresh.toFinset=some s6Step87EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step87EntryFvFresh,arenaWires]
  · norm_num [s6Step87EntryFvBefore,s6Step87EntryGAfter,s6Step87EntryFvFresh,arenaWires]
  · simp only [s6Step87EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step87EntryFv_checked : planRowResizeLog s6Step87EntryFvBefore s6Step87EntryFvRow 57 s6Step87EntryFvFresh=
    some (s6Step87EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927],776⟩,growRow 776 s6Step87EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step87EntryFvBefore s6Step87EntryFvAfter s6Step87EntryFvRow 57 s6Step87EntryFvFresh
    s6Step87EntryFv_distinct s6Step87EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step87EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step87EntryFvRow.payload++s6Step87EntryFvFresh) s6Step87EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step87EntryGBefore : Arena := s6Step87EntryFBefore

private theorem s6Step87EntryG_Incoming : rowsOwned s6Step87EntryGBefore [s6Step87EntryGRow,s6Step87EntryFvRow,s6Step87EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step87EntryFRow,s6Step87EntryGRow,s6Step87EntryFvRow,s6Step87EntryGvRow] 1 s6Step87EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step87EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step87EntryG_Outgoing : rowsOwned s6Step87EntryGvAfter [s6Step87EntryGOut,s6Step87EntryFvOut,s6Step87EntryGvOut] :=
  hmrRows_owned_drop s6Step87EntryGvAfter [s6Step87EntryFOut,s6Step87EntryGOut,s6Step87EntryFvOut,s6Step87EntryGvOut] 1 s6Step87EntryBank_outgoingOwned

private theorem s6Step87EntryG_distinct : (s6Step87EntryGRow.sign::s6Step87EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step87EntryG_owned : (s6Step87EntryGRow.sign::s6Step87EntryGRow.payload).toFinset⊆s6Step87EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step87EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step87EntryG_reserved : s6Step87EntryGBefore.reserve s6Step87EntryGFresh.toFinset=some s6Step87EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step87EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step87EntryGBefore,s6Step87EntryFBefore,s6Step87EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step87EntryGBefore s6Step87EntryGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step87EntryGFresh rfl rfl
    · norm_num [s6Step87EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step87EntryG_checked : planRowResizeLog s6Step87EntryGBefore s6Step87EntryGRow 226 s6Step87EntryGFresh=
    some (s6Step87EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 876, 794],777⟩,growRow 777 s6Step87EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step87EntryGBefore s6Step87EntryGAfter s6Step87EntryGRow 226 s6Step87EntryGFresh
    s6Step87EntryG_distinct s6Step87EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step87EntryG_reserved
  have rowEq : WindowRow.mk (s6Step87EntryGRow.payload++s6Step87EntryGFresh) s6Step87EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 876, 794],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step87EntryGvBefore : Arena := s6Step87EntryGAfter

private theorem s6Step87EntryGv_Incoming : rowsOwned s6Step87EntryGvBefore [s6Step87EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step87EntryFRow,s6Step87EntryGRow,s6Step87EntryFvRow,s6Step87EntryGvRow] 3 s6Step87EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step87EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step87EntryGv_Outgoing : rowsOwned s6Step87EntryGvAfter [s6Step87EntryGvOut] :=
  hmrRows_owned_drop s6Step87EntryGvAfter [s6Step87EntryFOut,s6Step87EntryGOut,s6Step87EntryFvOut,s6Step87EntryGvOut] 3 s6Step87EntryBank_outgoingOwned

private theorem s6Step87EntryGv_distinct : (s6Step87EntryGvRow.sign::s6Step87EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step87EntryGv_owned : (s6Step87EntryGvRow.sign::s6Step87EntryGvRow.payload).toFinset⊆s6Step87EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step87EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step87EntryGv_reserved : s6Step87EntryGvBefore.reserve s6Step87EntryGvFresh.toFinset=some s6Step87EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step87EntryGvFresh,arenaWires]
  · norm_num [s6Step87EntryGvBefore,s6Step87EntryGAfter,s6Step87EntryGvFresh,arenaWires]
  · simp only [s6Step87EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step87EntryGv_checked : planRowResizeLog s6Step87EntryGvBefore s6Step87EntryGvRow 57 s6Step87EntryGvFresh=
    some (s6Step87EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786],775⟩,growRow 775 s6Step87EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step87EntryGvBefore s6Step87EntryGvAfter s6Step87EntryGvRow 57 s6Step87EntryGvFresh
    s6Step87EntryGv_distinct s6Step87EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step87EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step87EntryGvRow.payload++s6Step87EntryGvFresh) s6Step87EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step87EntryBank_rows : planWindowRowsLog s6Step87EntryFBefore [(s6Step87EntryFRow,226),(s6Step87EntryGRow,226),(s6Step87EntryFvRow,57),(s6Step87EntryGvRow,57)] [s6Step87EntryFFresh,s6Step87EntryGFresh,s6Step87EntryFvFresh,s6Step87EntryGvFresh]=
    some (s6Step87EntryGvAfter,[s6Step87EntryFOut,s6Step87EntryGOut,s6Step87EntryFvOut,s6Step87EntryGvOut],(growRow 795 s6Step87EntryFFresh ++ (growRow 777 s6Step87EntryGFresh ++ (growRow 776 s6Step87EntryFvFresh ++ (growRow 775 s6Step87EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step87EntryGvAfter [] []=some (s6Step87EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step87EntryGvBefore s6Step87EntryGvAfter s6Step87EntryGvAfter
    s6Step87EntryGvRow s6Step87EntryGvOut 57 s6Step87EntryGvFresh [] [] []
    (growRow 775 s6Step87EntryGvFresh) ([]) s6Step87EntryGv_Incoming s6Step87EntryGv_checked h4 s6Step87EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step87EntryFvBefore s6Step87EntryFvAfter s6Step87EntryGvAfter
    s6Step87EntryFvRow s6Step87EntryFvOut 57 s6Step87EntryFvFresh [(s6Step87EntryGvRow,57)] [s6Step87EntryGvFresh] [s6Step87EntryGvOut]
    (growRow 776 s6Step87EntryFvFresh) ((growRow 775 s6Step87EntryGvFresh ++ [])) s6Step87EntryFv_Incoming s6Step87EntryFv_checked h3 s6Step87EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step87EntryGBefore s6Step87EntryGAfter s6Step87EntryGvAfter
    s6Step87EntryGRow s6Step87EntryGOut 226 s6Step87EntryGFresh [(s6Step87EntryFvRow,57),(s6Step87EntryGvRow,57)] [s6Step87EntryFvFresh,s6Step87EntryGvFresh] [s6Step87EntryFvOut,s6Step87EntryGvOut]
    (growRow 777 s6Step87EntryGFresh) ((growRow 776 s6Step87EntryFvFresh ++ (growRow 775 s6Step87EntryGvFresh ++ []))) s6Step87EntryG_Incoming s6Step87EntryG_checked h2 s6Step87EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step87EntryFBefore s6Step87EntryFAfter s6Step87EntryGvAfter
    s6Step87EntryFRow s6Step87EntryFOut 226 s6Step87EntryFFresh [(s6Step87EntryGRow,226),(s6Step87EntryFvRow,57),(s6Step87EntryGvRow,57)] [s6Step87EntryGFresh,s6Step87EntryFvFresh,s6Step87EntryGvFresh] [s6Step87EntryGOut,s6Step87EntryFvOut,s6Step87EntryGvOut]
    (growRow 795 s6Step87EntryFFresh) ((growRow 777 s6Step87EntryGFresh ++ (growRow 776 s6Step87EntryFvFresh ++ (growRow 775 s6Step87EntryGvFresh ++ [])))) s6Step87EntryF_Incoming s6Step87EntryF_checked h1 s6Step87EntryF_Outgoing
  exact h0

private theorem s6Step87EntryBank_checked : compileHmrBankResizeLog .entry s6Step87EntryFBefore ⟨s6Step87EntryFRow,s6Step87EntryGRow,s6Step87EntryFvRow,s6Step87EntryGvRow⟩ ⟨226,226,57,57⟩ [s6Step87EntryFFresh,s6Step87EntryGFresh,s6Step87EntryFvFresh,s6Step87EntryGvFresh]=
    some (s6Step87EntryGvAfter,⟨s6Step87EntryFOut,s6Step87EntryGOut,s6Step87EntryFvOut,s6Step87EntryGvOut⟩,(growRow 795 s6Step87EntryFFresh ++ (growRow 777 s6Step87EntryGFresh ++ (growRow 776 s6Step87EntryFvFresh ++ (growRow 775 s6Step87EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step87EntryBank_rows]
  rfl

private def s6Step87ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,480),(482,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step87ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step87ExitFBefore : Arena := s6Step87ExitGAfter

private def s6Step87ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 780],795⟩

private def s6Step87ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855],776⟩

private def s6Step87ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 876, 794, 813],777⟩

private def s6Step87ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 881],775⟩

private theorem s6Step87ExitBank_incomingDistinct : ([s6Step87ExitGRow,s6Step87ExitFRow,s6Step87ExitFvRow,s6Step87ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step87ExitF_Incoming : rowsOwned s6Step87ExitFBefore [s6Step87ExitFRow,s6Step87ExitFvRow,s6Step87ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step87ExitGRow,s6Step87ExitFRow,s6Step87ExitFvRow,s6Step87ExitGvRow] 1 s6Step87ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step87ExitFBefore (fun q => ([(0,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step87ExitBank_outgoingOwned : rowsOwned s6Step87ExitGvAfter [s6Step87ExitGOut,s6Step87ExitFOut,s6Step87ExitFvOut,s6Step87ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step87ExitGvAfter (fun q => ([(0,480),(482,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step87ExitF_Outgoing : rowsOwned s6Step87ExitGvAfter [s6Step87ExitFOut,s6Step87ExitFvOut,s6Step87ExitGvOut] :=
  hmrRows_owned_drop s6Step87ExitGvAfter [s6Step87ExitGOut,s6Step87ExitFOut,s6Step87ExitFvOut,s6Step87ExitGvOut] 1 s6Step87ExitBank_outgoingOwned

private theorem s6Step87ExitF_distinct : (s6Step87ExitFRow.sign::s6Step87ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step87ExitF_owned : (s6Step87ExitFRow.sign::s6Step87ExitFRow.payload).toFinset⊆s6Step87ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step87ExitFBefore (fun q => ([(0,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step87ExitF_retired : s6Step87ExitFBefore.retireSet s6Step87ExitFExtra.toFinset=s6Step87ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step87ExitFBefore s6Step87ExitFAfter s6Step87ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step87ExitFBefore s6Step87ExitFAfter (fun q => ([(0,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,480),(482,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step87ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step87ExitF_checked : planRowResizeLog s6Step87ExitFBefore s6Step87ExitFRow 224 []=
    some (s6Step87ExitFAfter,s6Step87ExitFOut,shrinkRow 795 s6Step87ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step87ExitFBefore s6Step87ExitFRow 224 s6Step87ExitF_distinct s6Step87ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step87ExitFRow.payload.take 224) s6Step87ExitFRow.sign=s6Step87ExitFOut := by decide +kernel
  have hi : s6Step87ExitFRow.payload.drop 224=s6Step87ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step87ExitF_retired] at result
  exact result

private def s6Step87ExitFvAfter : Arena := s6Step87ExitFAfter

private def s6Step87ExitFvBefore : Arena := s6Step87ExitFAfter

private theorem s6Step87ExitFv_Incoming : rowsOwned s6Step87ExitFvBefore [s6Step87ExitFvRow,s6Step87ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step87ExitGRow,s6Step87ExitFRow,s6Step87ExitFvRow,s6Step87ExitGvRow] 2 s6Step87ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step87ExitFvBefore (fun q => ([(0,480),(482,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step87ExitFv_Outgoing : rowsOwned s6Step87ExitGvAfter [s6Step87ExitFvOut,s6Step87ExitGvOut] :=
  hmrRows_owned_drop s6Step87ExitGvAfter [s6Step87ExitGOut,s6Step87ExitFOut,s6Step87ExitFvOut,s6Step87ExitGvOut] 2 s6Step87ExitBank_outgoingOwned

private theorem s6Step87ExitFv_distinct : (s6Step87ExitFvRow.sign::s6Step87ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step87ExitFv_owned : (s6Step87ExitFvRow.sign::s6Step87ExitFvRow.payload).toFinset⊆s6Step87ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step87ExitFvBefore (fun q => ([(0,480),(482,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step87ExitFv_reserved : s6Step87ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step87ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step87ExitFv_checked : planRowResizeLog s6Step87ExitFvBefore s6Step87ExitFvRow 58 []=
    some (s6Step87ExitFvAfter,s6Step87ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step87ExitFvBefore s6Step87ExitFvAfter s6Step87ExitFvRow 58 []
    s6Step87ExitFv_distinct s6Step87ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step87ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step87ExitFvRow.payload++[]) s6Step87ExitFvRow.sign=s6Step87ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step87ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step87ExitG_Incoming : rowsOwned s6Step87ExitGBefore [s6Step87ExitGRow,s6Step87ExitFRow,s6Step87ExitFvRow,s6Step87ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step87ExitGRow,s6Step87ExitFRow,s6Step87ExitFvRow,s6Step87ExitGvRow] 0 s6Step87ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step87ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step87ExitG_Outgoing : rowsOwned s6Step87ExitGvAfter [s6Step87ExitGOut,s6Step87ExitFOut,s6Step87ExitFvOut,s6Step87ExitGvOut] :=
  hmrRows_owned_drop s6Step87ExitGvAfter [s6Step87ExitGOut,s6Step87ExitFOut,s6Step87ExitFvOut,s6Step87ExitGvOut] 0 s6Step87ExitBank_outgoingOwned

private theorem s6Step87ExitG_distinct : (s6Step87ExitGRow.sign::s6Step87ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step87ExitG_owned : (s6Step87ExitGRow.sign::s6Step87ExitGRow.payload).toFinset⊆s6Step87ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step87ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step87ExitG_retired : s6Step87ExitGBefore.retireSet s6Step87ExitGExtra.toFinset=s6Step87ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step87ExitGBefore s6Step87ExitGAfter s6Step87ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step87ExitGBefore s6Step87ExitGAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step87ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step87ExitG_checked : planRowResizeLog s6Step87ExitGBefore s6Step87ExitGRow 225 []=
    some (s6Step87ExitGAfter,s6Step87ExitGOut,shrinkRow 777 s6Step87ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step87ExitGBefore s6Step87ExitGRow 225 s6Step87ExitG_distinct s6Step87ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step87ExitGRow.payload.take 225) s6Step87ExitGRow.sign=s6Step87ExitGOut := by decide +kernel
  have hi : s6Step87ExitGRow.payload.drop 225=s6Step87ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step87ExitG_retired] at result
  exact result

private def s6Step87ExitGvBefore : Arena := s6Step87ExitFAfter

private theorem s6Step87ExitGv_Incoming : rowsOwned s6Step87ExitGvBefore [s6Step87ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step87ExitGRow,s6Step87ExitFRow,s6Step87ExitFvRow,s6Step87ExitGvRow] 3 s6Step87ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step87ExitGvBefore (fun q => ([(0,480),(482,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step87ExitGv_Outgoing : rowsOwned s6Step87ExitGvAfter [s6Step87ExitGvOut] :=
  hmrRows_owned_drop s6Step87ExitGvAfter [s6Step87ExitGOut,s6Step87ExitFOut,s6Step87ExitFvOut,s6Step87ExitGvOut] 3 s6Step87ExitBank_outgoingOwned

private theorem s6Step87ExitGv_distinct : (s6Step87ExitGvRow.sign::s6Step87ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step87ExitGv_owned : (s6Step87ExitGvRow.sign::s6Step87ExitGvRow.payload).toFinset⊆s6Step87ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step87ExitGvBefore (fun q => ([(0,480),(482,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step87ExitGv_retired : s6Step87ExitGvBefore.retireSet s6Step87ExitGvExtra.toFinset=s6Step87ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step87ExitGvBefore s6Step87ExitGvAfter s6Step87ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step87ExitGvBefore s6Step87ExitGvAfter (fun q => ([(0,480),(482,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,480),(482,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step87ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step87ExitGv_checked : planRowResizeLog s6Step87ExitGvBefore s6Step87ExitGvRow 57 []=
    some (s6Step87ExitGvAfter,s6Step87ExitGvOut,shrinkRow 775 s6Step87ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step87ExitGvBefore s6Step87ExitGvRow 57 s6Step87ExitGv_distinct s6Step87ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step87ExitGvRow.payload.take 57) s6Step87ExitGvRow.sign=s6Step87ExitGvOut := by decide +kernel
  have hi : s6Step87ExitGvRow.payload.drop 57=s6Step87ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step87ExitGv_retired] at result
  exact result

private theorem s6Step87ExitBank_rows : planWindowRowsLog s6Step87ExitGBefore [(s6Step87ExitGRow,225),(s6Step87ExitFRow,224),(s6Step87ExitFvRow,58),(s6Step87ExitGvRow,57)] [[],[],[],[]]=
    some (s6Step87ExitGvAfter,[s6Step87ExitGOut,s6Step87ExitFOut,s6Step87ExitFvOut,s6Step87ExitGvOut],(shrinkRow 777 s6Step87ExitGExtra ++ (shrinkRow 795 s6Step87ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step87ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step87ExitGvAfter [] []=some (s6Step87ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step87ExitGvBefore s6Step87ExitGvAfter s6Step87ExitGvAfter
    s6Step87ExitGvRow s6Step87ExitGvOut 57 [] [] [] []
    (shrinkRow 775 s6Step87ExitGvExtra) ([]) s6Step87ExitGv_Incoming s6Step87ExitGv_checked h4 s6Step87ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step87ExitFvBefore s6Step87ExitFvAfter s6Step87ExitGvAfter
    s6Step87ExitFvRow s6Step87ExitFvOut 58 [] [(s6Step87ExitGvRow,57)] [[]] [s6Step87ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step87ExitGvExtra ++ [])) s6Step87ExitFv_Incoming s6Step87ExitFv_checked h3 s6Step87ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step87ExitFBefore s6Step87ExitFAfter s6Step87ExitGvAfter
    s6Step87ExitFRow s6Step87ExitFOut 224 [] [(s6Step87ExitFvRow,58),(s6Step87ExitGvRow,57)] [[],[]] [s6Step87ExitFvOut,s6Step87ExitGvOut]
    (shrinkRow 795 s6Step87ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step87ExitGvExtra ++ []))) s6Step87ExitF_Incoming s6Step87ExitF_checked h2 s6Step87ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step87ExitGBefore s6Step87ExitGAfter s6Step87ExitGvAfter
    s6Step87ExitGRow s6Step87ExitGOut 225 [] [(s6Step87ExitFRow,224),(s6Step87ExitFvRow,58),(s6Step87ExitGvRow,57)] [[],[],[]] [s6Step87ExitFOut,s6Step87ExitFvOut,s6Step87ExitGvOut]
    (shrinkRow 777 s6Step87ExitGExtra) ((shrinkRow 795 s6Step87ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step87ExitGvExtra ++ [])))) s6Step87ExitG_Incoming s6Step87ExitG_checked h1 s6Step87ExitG_Outgoing
  exact h0

private theorem s6Step87ExitBank_checked : compileHmrBankResizeLog .exit s6Step87ExitGBefore ⟨s6Step87ExitFRow,s6Step87ExitGRow,s6Step87ExitFvRow,s6Step87ExitGvRow⟩ ⟨224,225,58,57⟩ [[],[],[],[]]=
    some (s6Step87ExitGvAfter,⟨s6Step87ExitFOut,s6Step87ExitGOut,s6Step87ExitFvOut,s6Step87ExitGvOut⟩,(shrinkRow 777 s6Step87ExitGExtra ++ (shrinkRow 795 s6Step87ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step87ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step87ExitBank_rows]
  rfl

private theorem s6Step87Add0_apart : Disjoint s6Step87Add0Arena.live s6Step87Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step87Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step87Add0_card : s6Step87Add0Arena.live.card=871 := by
  decide +kernel

private theorem s6Step87Add0_borrowed : s6Step87Add0Arena.checkBorrow (hmrHybridCount s6Step87Add0Arena s6Step87Add0B.length) s6Step87Add0Work=some s6Step87Add0During := by
  have len : s6Step87Add0Work.length=hmrHybridCount s6Step87Add0Arena s6Step87Add0B.length := by
    rw [hmrHybridCount,s6Step87Add0_card]
    decide +kernel
  have nd : s6Step87Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step87Add0Arena s6Step87Add0During s6Step87Add0Work.toFinset s6Step87Add0_bounded s6Step87Add0_apart rfl

private theorem s6Step87Add0_distinct : (803::877::922::(s6Step87Add0A++s6Step87Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step87Add0_owned : (803::877::922::(s6Step87Add0A++s6Step87Add0B)).toFinset⊆s6Step87Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step87Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step87Add0_checked : compileHmrHybridCinLog s6Step87Add0Arena 877 803 922 s6Step87Add0A s6Step87Add0B s6Step87Add0Work=some s6Step87Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step87Add0Arena s6Step87Add0During 877 803 922 s6Step87Add0A s6Step87Add0B s6Step87Add0Work
    (by decide +kernel) (by decide +kernel) s6Step87Add0_distinct
    (fun q hq => s6Step87Add0_owned (List.mem_toFinset.mpr hq)) s6Step87Add0_borrowed

private theorem s6Step87Add1_apart : Disjoint s6Step87Add1Arena.live s6Step87Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step87Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step87Add1_card : s6Step87Add1Arena.live.card=871 := by
  decide +kernel

private theorem s6Step87Add1_borrowed : s6Step87Add1Arena.checkBorrow (hmrHybridCount s6Step87Add1Arena s6Step87Add1B.length) s6Step87Add1Work=some s6Step87Add1During := by
  have len : s6Step87Add1Work.length=hmrHybridCount s6Step87Add1Arena s6Step87Add1B.length := by
    rw [hmrHybridCount,s6Step87Add1_card]
    decide +kernel
  have nd : s6Step87Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step87Add1Arena s6Step87Add1During s6Step87Add1Work.toFinset s6Step87Add1_bounded s6Step87Add1_apart rfl

private theorem s6Step87Add1_distinct : (803::877::922::(s6Step87Add1A++s6Step87Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step87Add1_owned : (803::877::922::(s6Step87Add1A++s6Step87Add1B)).toFinset⊆s6Step87Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step87Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step87Add1_checked : compileHmrHybridCinLog s6Step87Add1Arena 877 803 922 s6Step87Add1A s6Step87Add1B s6Step87Add1Work=some s6Step87Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step87Add1Arena s6Step87Add1During 877 803 922 s6Step87Add1A s6Step87Add1B s6Step87Add1Work
    (by decide +kernel) (by decide +kernel) s6Step87Add1_distinct
    (fun q hq => s6Step87Add1_owned (List.mem_toFinset.mpr hq)) s6Step87Add1_borrowed

private theorem s6Step87F4_apart : Disjoint (s6Step87Add0A++s6Step87Add0B).toFinset (s6Step87Add1A++s6Step87Add1B).toFinset := by
  have nd : ((s6Step87Add0A++s6Step87Add0B)++(s6Step87Add1A++s6Step87Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step87F4_carry : s6Step87F4FlagArena.checkBorrow 1 [922]=some s6Step87Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step87F4FlagArena,s6Step87HeadFvAfter,arenaWires]
  · change s6Step87Add0Arena.live=(s6Step87HeadFvAfter.live∪{803})∪{922}
    apply hmrArena_union_pair_of_filter_check s6Step87HeadFvAfter s6Step87Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 803 922 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step87F4_distinct : (859::877::803::922::((s6Step87Add0A++s6Step87Add1A)++(s6Step87Add0B++s6Step87Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step87F4_flag : s6Step87HeadFvAfter.checkBorrow 1 [803]=some s6Step87F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step87HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step87F4_owned : (859::877::((s6Step87Add0A++s6Step87Add1A)++(s6Step87Add0B++s6Step87Add1B))).toFinset⊆s6Step87HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step87HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step87F4_checked : compileHmrHybridF4Log s6Step87HeadFvAfter 859 877 s6Step87Add0A s6Step87Add0B s6Step87Add1A s6Step87Add1B [803] [922] s6Step87Add0Work s6Step87Add1Work=some s6Step87F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step87HeadFvAfter s6Step87F4FlagArena s6Step87Add0Arena s6Step87Add0During s6Step87Add1During 859 877
    s6Step87Add0A s6Step87Add0B s6Step87Add1A s6Step87Add1B [803] [922] s6Step87Add0Work s6Step87Add1Work
    (fun q hq => s6Step87F4_owned (List.mem_toFinset.mpr hq)) s6Step87F4_flag s6Step87F4_carry
    s6Step87F4_distinct s6Step87F4_apart s6Step87Add0_checked s6Step87Add1_checked

private theorem s6Step87Front_branch : s6Step87FrontSigmaArena.checkBorrow 1 [877]=some s6Step87HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step87FrontSigmaArena,s6Step87EntryGvAfter,s6Step87EntryGAfter,arenaWires]
  · change s6Step87HeadGBefore.live=(s6Step87EntryGvAfter.live∪{859})∪{877}
    apply hmrArena_union_pair_of_filter_check s6Step87EntryGvAfter s6Step87HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,877),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 859 877 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step87Front_entry : HmrFrontEntryValid s6Step87EntryFBefore s6Step87FrontBank 226 57 ⟨224,225,58,57⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step87FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step87EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step87EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step87FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step87Front_sigma : s6Step87EntryGvAfter.checkBorrow 1 [859]=some s6Step87FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step87EntryGvAfter,s6Step87EntryGAfter,arenaWires]
  · rfl

private def s6Step87HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step87HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step87HeadFBefore : Arena := s6Step87HeadGAfter

private def s6Step87HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481],795⟩

private def s6Step87HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927],776⟩

private def s6Step87HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 876, 794],777⟩

private def s6Step87HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786],775⟩

private theorem s6Step87HeadBank_incomingDistinct : ([s6Step87HeadGRow,s6Step87HeadFRow,s6Step87HeadGvRow,s6Step87HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step87HeadF_Incoming : rowsOwned s6Step87HeadFBefore [s6Step87HeadFRow,s6Step87HeadGvRow,s6Step87HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step87HeadGRow,s6Step87HeadFRow,s6Step87HeadGvRow,s6Step87HeadFvRow] 1 s6Step87HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step87HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step87HeadBank_outgoingOwned : rowsOwned s6Step87HeadFvAfter [s6Step87HeadGOut,s6Step87HeadFOut,s6Step87HeadGvOut,s6Step87HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step87HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step87HeadF_Outgoing : rowsOwned s6Step87HeadFvAfter [s6Step87HeadFOut,s6Step87HeadGvOut,s6Step87HeadFvOut] :=
  hmrRows_owned_drop s6Step87HeadFvAfter [s6Step87HeadGOut,s6Step87HeadFOut,s6Step87HeadGvOut,s6Step87HeadFvOut] 1 s6Step87HeadBank_outgoingOwned

private theorem s6Step87HeadF_distinct : (s6Step87HeadFRow.sign::s6Step87HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step87HeadF_owned : (s6Step87HeadFRow.sign::s6Step87HeadFRow.payload).toFinset⊆s6Step87HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step87HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step87HeadF_reserved : s6Step87HeadFBefore.reserve s6Step87HeadFFresh.toFinset=some s6Step87HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step87HeadFFresh,arenaWires]
  · norm_num [s6Step87HeadFBefore,s6Step87HeadGAfter,s6Step87HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step87HeadFBefore s6Step87HeadFAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step87HeadFFresh rfl rfl
    · norm_num [s6Step87HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step87HeadF_checked : planRowResizeLog s6Step87HeadFBefore s6Step87HeadFRow 227 s6Step87HeadFFresh=
    some (s6Step87HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 780],795⟩,growRow 795 s6Step87HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step87HeadFBefore s6Step87HeadFAfter s6Step87HeadFRow 227 s6Step87HeadFFresh
    s6Step87HeadF_distinct s6Step87HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step87HeadF_reserved
  have rowEq : WindowRow.mk (s6Step87HeadFRow.payload++s6Step87HeadFFresh) s6Step87HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 780],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step87HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step87HeadFvBefore : Arena := s6Step87HeadGvAfter

private theorem s6Step87HeadFv_Incoming : rowsOwned s6Step87HeadFvBefore [s6Step87HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step87HeadGRow,s6Step87HeadFRow,s6Step87HeadGvRow,s6Step87HeadFvRow] 3 s6Step87HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step87HeadFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step87HeadFv_Outgoing : rowsOwned s6Step87HeadFvAfter [s6Step87HeadFvOut] :=
  hmrRows_owned_drop s6Step87HeadFvAfter [s6Step87HeadGOut,s6Step87HeadFOut,s6Step87HeadGvOut,s6Step87HeadFvOut] 3 s6Step87HeadBank_outgoingOwned

private theorem s6Step87HeadFv_distinct : (s6Step87HeadFvRow.sign::s6Step87HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step87HeadFv_owned : (s6Step87HeadFvRow.sign::s6Step87HeadFvRow.payload).toFinset⊆s6Step87HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step87HeadFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step87HeadFv_reserved : s6Step87HeadFvBefore.reserve s6Step87HeadFvFresh.toFinset=some s6Step87HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step87HeadFvFresh,arenaWires]
  · norm_num [s6Step87HeadFvBefore,s6Step87HeadGvAfter,s6Step87HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step87HeadFvBefore s6Step87HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step87HeadFvFresh rfl rfl
    · norm_num [s6Step87HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step87HeadFv_checked : planRowResizeLog s6Step87HeadFvBefore s6Step87HeadFvRow 58 s6Step87HeadFvFresh=
    some (s6Step87HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855],776⟩,growRow 776 s6Step87HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step87HeadFvBefore s6Step87HeadFvAfter s6Step87HeadFvRow 58 s6Step87HeadFvFresh
    s6Step87HeadFv_distinct s6Step87HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step87HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step87HeadFvRow.payload++s6Step87HeadFvFresh) s6Step87HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step87HeadG_Incoming : rowsOwned s6Step87HeadGBefore [s6Step87HeadGRow,s6Step87HeadFRow,s6Step87HeadGvRow,s6Step87HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step87HeadGRow,s6Step87HeadFRow,s6Step87HeadGvRow,s6Step87HeadFvRow] 0 s6Step87HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step87HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step87HeadG_Outgoing : rowsOwned s6Step87HeadFvAfter [s6Step87HeadGOut,s6Step87HeadFOut,s6Step87HeadGvOut,s6Step87HeadFvOut] :=
  hmrRows_owned_drop s6Step87HeadFvAfter [s6Step87HeadGOut,s6Step87HeadFOut,s6Step87HeadGvOut,s6Step87HeadFvOut] 0 s6Step87HeadBank_outgoingOwned

private theorem s6Step87HeadG_distinct : (s6Step87HeadGRow.sign::s6Step87HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step87HeadG_owned : (s6Step87HeadGRow.sign::s6Step87HeadGRow.payload).toFinset⊆s6Step87HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step87HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step87HeadG_reserved : s6Step87HeadGBefore.reserve s6Step87HeadGFresh.toFinset=some s6Step87HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step87HeadGFresh,arenaWires]
  · norm_num [s6Step87HeadGBefore,s6Step87HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step87HeadGBefore s6Step87HeadGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step87HeadGFresh rfl rfl
    · norm_num [s6Step87HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step87HeadG_checked : planRowResizeLog s6Step87HeadGBefore s6Step87HeadGRow 227 s6Step87HeadGFresh=
    some (s6Step87HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 876, 794, 813],777⟩,growRow 777 s6Step87HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step87HeadGBefore s6Step87HeadGAfter s6Step87HeadGRow 227 s6Step87HeadGFresh
    s6Step87HeadG_distinct s6Step87HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step87HeadG_reserved
  have rowEq : WindowRow.mk (s6Step87HeadGRow.payload++s6Step87HeadGFresh) s6Step87HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 876, 794, 813],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step87HeadGvBefore : Arena := s6Step87HeadFAfter

private theorem s6Step87HeadGv_Incoming : rowsOwned s6Step87HeadGvBefore [s6Step87HeadGvRow,s6Step87HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step87HeadGRow,s6Step87HeadFRow,s6Step87HeadGvRow,s6Step87HeadFvRow] 2 s6Step87HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step87HeadGvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step87HeadGv_Outgoing : rowsOwned s6Step87HeadFvAfter [s6Step87HeadGvOut,s6Step87HeadFvOut] :=
  hmrRows_owned_drop s6Step87HeadFvAfter [s6Step87HeadGOut,s6Step87HeadFOut,s6Step87HeadGvOut,s6Step87HeadFvOut] 2 s6Step87HeadBank_outgoingOwned

private theorem s6Step87HeadGv_distinct : (s6Step87HeadGvRow.sign::s6Step87HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step87HeadGv_owned : (s6Step87HeadGvRow.sign::s6Step87HeadGvRow.payload).toFinset⊆s6Step87HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step87HeadGvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step87HeadGv_reserved : s6Step87HeadGvBefore.reserve s6Step87HeadGvFresh.toFinset=some s6Step87HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step87HeadGvFresh,arenaWires]
  · norm_num [s6Step87HeadGvBefore,s6Step87HeadFAfter,s6Step87HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step87HeadGvBefore s6Step87HeadGvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step87HeadGvFresh rfl rfl
    · norm_num [s6Step87HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step87HeadGv_checked : planRowResizeLog s6Step87HeadGvBefore s6Step87HeadGvRow 58 s6Step87HeadGvFresh=
    some (s6Step87HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 881],775⟩,growRow 775 s6Step87HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step87HeadGvBefore s6Step87HeadGvAfter s6Step87HeadGvRow 58 s6Step87HeadGvFresh
    s6Step87HeadGv_distinct s6Step87HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step87HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step87HeadGvRow.payload++s6Step87HeadGvFresh) s6Step87HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 881],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step87HeadBank_rows : planWindowRowsLog s6Step87HeadGBefore [(s6Step87HeadGRow,227),(s6Step87HeadFRow,227),(s6Step87HeadGvRow,58),(s6Step87HeadFvRow,58)] [s6Step87HeadGFresh,s6Step87HeadFFresh,s6Step87HeadGvFresh,s6Step87HeadFvFresh]=
    some (s6Step87HeadFvAfter,[s6Step87HeadGOut,s6Step87HeadFOut,s6Step87HeadGvOut,s6Step87HeadFvOut],(growRow 777 s6Step87HeadGFresh ++ (growRow 795 s6Step87HeadFFresh ++ (growRow 775 s6Step87HeadGvFresh ++ (growRow 776 s6Step87HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step87HeadFvAfter [] []=some (s6Step87HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step87HeadFvBefore s6Step87HeadFvAfter s6Step87HeadFvAfter
    s6Step87HeadFvRow s6Step87HeadFvOut 58 s6Step87HeadFvFresh [] [] []
    (growRow 776 s6Step87HeadFvFresh) ([]) s6Step87HeadFv_Incoming s6Step87HeadFv_checked h4 s6Step87HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step87HeadGvBefore s6Step87HeadGvAfter s6Step87HeadFvAfter
    s6Step87HeadGvRow s6Step87HeadGvOut 58 s6Step87HeadGvFresh [(s6Step87HeadFvRow,58)] [s6Step87HeadFvFresh] [s6Step87HeadFvOut]
    (growRow 775 s6Step87HeadGvFresh) ((growRow 776 s6Step87HeadFvFresh ++ [])) s6Step87HeadGv_Incoming s6Step87HeadGv_checked h3 s6Step87HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step87HeadFBefore s6Step87HeadFAfter s6Step87HeadFvAfter
    s6Step87HeadFRow s6Step87HeadFOut 227 s6Step87HeadFFresh [(s6Step87HeadGvRow,58),(s6Step87HeadFvRow,58)] [s6Step87HeadGvFresh,s6Step87HeadFvFresh] [s6Step87HeadGvOut,s6Step87HeadFvOut]
    (growRow 795 s6Step87HeadFFresh) ((growRow 775 s6Step87HeadGvFresh ++ (growRow 776 s6Step87HeadFvFresh ++ []))) s6Step87HeadF_Incoming s6Step87HeadF_checked h2 s6Step87HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step87HeadGBefore s6Step87HeadGAfter s6Step87HeadFvAfter
    s6Step87HeadGRow s6Step87HeadGOut 227 s6Step87HeadGFresh [(s6Step87HeadFRow,227),(s6Step87HeadGvRow,58),(s6Step87HeadFvRow,58)] [s6Step87HeadFFresh,s6Step87HeadGvFresh,s6Step87HeadFvFresh] [s6Step87HeadFOut,s6Step87HeadGvOut,s6Step87HeadFvOut]
    (growRow 777 s6Step87HeadGFresh) ((growRow 795 s6Step87HeadFFresh ++ (growRow 775 s6Step87HeadGvFresh ++ (growRow 776 s6Step87HeadFvFresh ++ [])))) s6Step87HeadG_Incoming s6Step87HeadG_checked h1 s6Step87HeadG_Outgoing
  exact h0

private theorem s6Step87HeadBank_checked : compileHmrBankResizeLog .headroom s6Step87HeadGBefore ⟨s6Step87HeadFRow,s6Step87HeadGRow,s6Step87HeadFvRow,s6Step87HeadGvRow⟩ ⟨227,227,58,58⟩ [s6Step87HeadGFresh,s6Step87HeadFFresh,s6Step87HeadGvFresh,s6Step87HeadFvFresh]=
    some (s6Step87HeadFvAfter,⟨s6Step87HeadFOut,s6Step87HeadGOut,s6Step87HeadFvOut,s6Step87HeadGvOut⟩,(growRow 777 s6Step87HeadGFresh ++ (growRow 795 s6Step87HeadFFresh ++ (growRow 775 s6Step87HeadGvFresh ++ (growRow 776 s6Step87HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step87HeadBank_rows]
  rfl

private theorem s6Step87Front_checked : compileHmrSourceFrontLog s6Step87EntryFBefore s6Step87FrontBank 226 57 ⟨224,225,58,57⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step87FrontLog=some s6Step87FrontPlan := by
  have pairEq : s6Step87FrontPair=⟨s6Step87HeadFRow,s6Step87HeadGRow,s6Step87HeadFvRow,s6Step87HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step87FrontHead=⟨s6Step87ExitFRow,s6Step87ExitGRow,s6Step87ExitFvRow,s6Step87ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step87Add0A=s6Step87FrontHead.f.wires := by decide +kernel
  have gEq : s6Step87Add0B=s6Step87FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step87Add1A=s6Step87FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step87Add1B=s6Step87FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step87EntryFBefore s6Step87FrontBank 226 57 ⟨224,225,58,57⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step87FrontLog s6Step87FrontPlan
  · exact s6Step87Front_entry
  · exact s6Step87EntryBank_checked
  · exact s6Step87Front_sigma
  · rfl
  · exact s6Step87Front_branch
  · rfl
  · simpa only [s6Step87FrontPlan,pairEq] using s6Step87HeadBank_checked
  · simpa only [s6Step87FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step87F4_checked
  · exact s6Step87Counter_checked
  · rfl
  · simpa only [s6Step87FrontPlan,headEq] using s6Step87ExitBank_checked

private theorem s6Step87Complete_explicit_checked : compileHmrEarlyStepLog s6Step87EntryFBefore s6Step87FrontBank 226 57 ⟨224,225,58,57⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] 31 s6Step87CompleteLog=some s6Step87CompletePlan := by
  let Q := s6Step87EarlyControlPlan
  have hq := s6Step87EarlyControl_plan_checked
  have fv1 : s6Step87CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step87CompleteOut.fv.payload[2]?.getD s6Step87CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step87CompleteOut.fv.payload[3]?.getD s6Step87CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step87CompleteOut.fv.payload[4]?.getD s6Step87CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step87EntryFBefore s6Step87EarlyControlArena s6Step87FrontBank 226 57 ⟨224,225,58,57⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] 31 s6Step87CompleteLog s6Step87FrontPlan Q
    s6Step87Front_checked s6Step87Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step87Complete_owned s6Step87Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step87EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] 769 859 s6Step87CompleteOut.fv.second (s6Step87CompleteOut.fv.payload[2]?.getD s6Step87CompleteOut.fv.sign) (s6Step87CompleteOut.fv.payload[3]?.getD s6Step87CompleteOut.fv.sign) (s6Step87CompleteOut.fv.payload[4]?.getD s6Step87CompleteOut.fv.sign) 877 31 s6Step87EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep87Arena : Arena := s6Step87EntryFBefore
def s6PrivateStep87Bank : WindowBank := s6Step87FrontBank
def s6PrivateStep87Spec : HmrSourceWalkStepLog := ⟨226,57,⟨224,225,58,57⟩,31,.early s6Step87CompleteLog⟩
def s6PrivateStep87Plan : HmrSourceStepPlan := .early s6Step87CompletePlan
theorem s6PrivateStep87_source : s6PrivateStep87Spec=s6ObservedLogs80[7] := rfl
theorem s6PrivateStep87_checked : compileHmrSourceStepLog s6PrivateStep87Arena s6PrivateStep87Bank
    s6PrivateStep87Spec.fgWidth s6PrivateStep87Spec.vWidth s6PrivateStep87Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884]
    6 498 87 s6PrivateStep87Spec.need none s6PrivateStep87Spec.log=some s6PrivateStep87Plan := by
  change compileHmrSourceStepLog s6Step87EntryFBefore s6Step87FrontBank 226 57 ⟨224,225,58,57⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884] 6 498 87 31 none (.early s6Step87CompleteLog)=some (.early s6Step87CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 87<498)]
  rw [s6Step87Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
