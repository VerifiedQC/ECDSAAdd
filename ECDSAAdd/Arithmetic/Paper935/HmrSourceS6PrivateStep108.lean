import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep106
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

private def s6Step108CompleteMoves : List (Wire × Wire) := [(789,214),(882,470)]

private def s6Step108EarlyControlLog : HmrEarlyControlLog := ⟨[882, 789, 864, 823, 818],[907],[803],[813, 879, 865, 796, 891, 903],[]⟩

private def s6Step108FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[818], [823], [864], [876]],[[], [], [], []]⟩,[890],[793],[907],[803],[813, 879, 865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[813, 879, 865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[907, 803, 813, 879]⟩

private def s6Step108CompleteLog : HmrEarlyStepLog := ⟨s6Step108FrontLog,s6Step108CompleteMoves,s6Step108EarlyControlLog⟩

private def s6Step108ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469],795⟩

private def s6Step108ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876],776⟩

private def s6Step108ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213],777⟩

private def s6Step108ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828],775⟩

private def s6Step108FrontOut : WindowBank := ⟨s6Step108ExitFOut,s6Step108ExitGOut,s6Step108ExitFvOut,s6Step108ExitGvOut⟩

private def s6Step108CompleteOut : WindowBank := s6Step108FrontOut.repacked s6Step108CompleteMoves

private def s6Step108EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step108EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step108EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step108EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step108EarlyControlPositiveArena,[907],s6Step108EarlyControlEqualityArena,[803],⟨⟨890,false⟩,[⟨⟨907,false⟩,803⟩]⟩⟩

private def s6Step108EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step108EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step108EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step108EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step108EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step108EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step108EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,882⟩,⟨⟨772,false⟩,789⟩,⟨⟨771,false⟩,864⟩,⟨⟨770,false⟩,823⟩,⟨⟨769,false⟩,818⟩]⟩

private def s6Step108EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step108EarlyControlZeroArena,s6Step108EarlyControlZeroPlan,s6Step108EarlyControlClassPlan,s6Step108EarlyControlFlagArena,s6Step108EarlyControlFittedArena,s6Step108EarlyControlHistoryArena,s6Step108EarlyControlSigmaArena,s6Step108EarlyControlOutputArena,s6Step108EarlyControlLog⟩

private def s6Step108CounterWork : List Wire := [907, 803, 813, 879]

private theorem s6Step108Counter_bounded : s6Step108CounterWork.toFinset⊆arenaWires := by norm_num [s6Step108CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step108HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step108CounterDuring : Arena := ⟨s6Step108HeadFvAfter.live∪s6Step108CounterWork.toFinset,Finset.union_subset s6Step108HeadFvAfter.bounded s6Step108Counter_bounded⟩

private def s6Step108EntryFFresh : List Wire := []

private def s6Step108EntryFvFresh : List Wire := []

private def s6Step108EntryGFresh : List Wire := []

private def s6Step108EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step108EntryGvAfter : Arena := s6Step108EntryFBefore

private def s6Step108EntryGvFresh : List Wire := []

private def s6Step108ExitFExtra : List Wire := [470, 823]

private def s6Step108ExitGExtra : List Wire := [214, 818]

private def s6Step108ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,214),(215,470),(471,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step108ExitGvExtra : List Wire := [864]

private def s6Step108Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step108Add0Work : List Wire := [813, 879, 865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step108Add0_bounded : s6Step108Add0Work.toFinset⊆arenaWires := by
  have h : s6Step108Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step108Add0During : Arena := ⟨s6Step108Add0Arena.live∪s6Step108Add0Work.toFinset,Finset.union_subset s6Step108Add0Arena.bounded s6Step108Add0_bounded⟩

private def s6Step108Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step108Add1Work : List Wire := [813, 879, 865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step108Add1_bounded : s6Step108Add1Work.toFinset⊆arenaWires := by
  have h : s6Step108Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step108Add1During : Arena := ⟨s6Step108Add1Arena.live∪s6Step108Add1Work.toFinset,Finset.union_subset s6Step108Add1Arena.bounded s6Step108Add1_bounded⟩

private def s6Step108F4FlagArena : Arena := ⟨s6Step108HeadFvAfter.live∪{907},Finset.union_subset s6Step108HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step108F4Plan : HmrHybridF4Plan := ⟨s6Step108F4FlagArena,[907],s6Step108Add0Arena,[803],s6Step108Add0During,s6Step108Add0Work,s6Step108Add1During,s6Step108Add1Work⟩

private def s6Step108HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 823],795⟩

private def s6Step108HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876],776⟩

private def s6Step108HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 818],777⟩

private def s6Step108HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 864],775⟩

private def s6Step108FrontHead : WindowBank := ⟨s6Step108HeadFOut,s6Step108HeadGOut,s6Step108HeadFvOut,s6Step108HeadGvOut⟩

private def s6Step108EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470],795⟩

private def s6Step108EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863],776⟩

private def s6Step108EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214],777⟩

private def s6Step108EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828],775⟩

private def s6Step108FrontPair : WindowBank := ⟨s6Step108EntryFOut,s6Step108EntryGOut,s6Step108EntryFvOut,s6Step108EntryGvOut⟩

private def s6Step108FrontSigmaArena : Arena := ⟨s6Step108EntryGvAfter.live∪{890},Finset.union_subset s6Step108EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step108HeadFFresh : List Wire := [823]

private def s6Step108HeadFvFresh : List Wire := [876]

private def s6Step108HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step108HeadGFresh : List Wire := [818]

private def s6Step108HeadGvFresh : List Wire := [864]

private def s6Step108FrontPlan : HmrSourceFront := ⟨s6Step108EntryGvAfter,s6Step108FrontPair,(growRow 795 s6Step108EntryFFresh ++ (growRow 777 s6Step108EntryGFresh ++ (growRow 776 s6Step108EntryFvFresh ++ (growRow 775 s6Step108EntryGvFresh ++ [])))),s6Step108FrontSigmaArena,[890],s6Step108HeadGBefore,[793],
  s6Step108HeadFvAfter,s6Step108FrontHead,(growRow 777 s6Step108HeadGFresh ++ (growRow 795 s6Step108HeadFFresh ++ (growRow 775 s6Step108HeadGvFresh ++ (growRow 776 s6Step108HeadFvFresh ++ [])))),s6Step108F4Plan,s6Step108CounterDuring,s6Step108CounterWork,s6Step108ExitGvAfter,s6Step108FrontOut,(shrinkRow 777 s6Step108ExitGExtra ++ (shrinkRow 795 s6Step108ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step108ExitGvExtra ++ []))))⟩

private def s6Step108CompletePlan : HmrEarlyStepPlan := ⟨s6Step108FrontPlan,s6Step108EarlyControlArena,s6Step108EarlyControlPlan,s6Step108CompleteMoves⟩

private theorem s6Step108Complete_apart : List.Disjoint (s6Step108CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [890, 793, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] := by
  have nd : ((s6Step108CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[890, 793, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step108Complete_owned : (s6Step108CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step108EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step108EarlyControlArena (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step108CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,470),(471,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step108CompleteRelocationMove0Borrowed : Arena := ⟨s6Step108ExitGvAfter.live∪{214},Finset.union_subset s6Step108ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step108CompleteRelocationMove1Borrowed : Arena := ⟨s6Step108CompleteRelocationMove0After.live∪{470},Finset.union_subset s6Step108CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step108CompleteRelocation_move0_owned : 789∈s6Step108ExitGvAfter.live := by norm_num [s6Step108ExitGvAfter,arenaWires]

private theorem s6Step108CompleteRelocation_move0_reserve : s6Step108ExitGvAfter.reserve {214}=some s6Step108CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step108ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step108CompleteRelocation_move0_retire : s6Step108CompleteRelocationMove0Borrowed.retireSet {789}=s6Step108CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step108CompleteRelocationMove0Borrowed s6Step108CompleteRelocationMove0After {789}
  change s6Step108CompleteRelocationMove0After.live=(s6Step108ExitGvAfter.live∪{214})\{789}
  apply hmrArena_update_of_filter_check s6Step108ExitGvAfter s6Step108CompleteRelocationMove0After (fun q => ([(0,214),(215,470),(471,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,470),(471,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [214] [789] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step108CompleteRelocation_move1_owned : 882∈s6Step108CompleteRelocationMove0After.live := by norm_num [s6Step108CompleteRelocationMove0After,arenaWires]

private theorem s6Step108CompleteRelocation_move1_reserve : s6Step108CompleteRelocationMove0After.reserve {470}=some s6Step108CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step108CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step108CompleteRelocation_move1_retire : s6Step108CompleteRelocationMove1Borrowed.retireSet {882}=s6Step108EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step108CompleteRelocationMove1Borrowed s6Step108EarlyControlArena {882}
  change s6Step108EarlyControlArena.live=(s6Step108CompleteRelocationMove0After.live∪{470})\{882}
  apply hmrArena_update_of_filter_check s6Step108CompleteRelocationMove0After s6Step108EarlyControlArena (fun q => ([(0,470),(471,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [470] [882] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step108CompleteRelocation_checked : s6Step108ExitGvAfter.checkRepack [(789,214),(882,470)]=some s6Step108EarlyControlArena := by
  have tail2 : s6Step108EarlyControlArena.checkRepack []=some s6Step108EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step108CompleteRelocationMove0After s6Step108CompleteRelocationMove1Borrowed s6Step108EarlyControlArena s6Step108EarlyControlArena 882 470 []
    s6Step108CompleteRelocation_move1_owned s6Step108CompleteRelocation_move1_reserve s6Step108CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step108ExitGvAfter s6Step108CompleteRelocationMove0Borrowed s6Step108CompleteRelocationMove0After s6Step108EarlyControlArena 789 214 [(882,470)]
    s6Step108CompleteRelocation_move0_owned s6Step108CompleteRelocation_move0_reserve s6Step108CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step108Complete_repack : s6Step108ExitGvAfter.checkRepack s6Step108CompleteMoves=some s6Step108EarlyControlArena := by
  simpa only [s6Step108CompleteMoves] using s6Step108CompleteRelocation_checked

private theorem s6Step108EarlyControl_branchOwned : ([793] : List Wire).toFinset⊆s6Step108EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step108EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step108EarlyControl_branch : compileHmrBranchRetirement s6Step108EarlyControlSigmaArena 793=some s6Step108EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step108EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step108EarlyControlSigmaArena s6Step108EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [793] rfl rfl
    decide +kernel

private theorem s6Step108EarlyControl_classEqualityBorrow : s6Step108EarlyControlPositiveArena.checkBorrow (([890, 907] : List Wire).length-1) s6Step108EarlyControlLog.classWork=some s6Step108EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step108EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step108EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step108EarlyControlPositiveArena s6Step108EarlyControlEqualityArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step108EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step108EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step108EarlyControl_classEqualityOwned : ([890, 907] : List Wire).toFinset⊆s6Step108EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step108EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step108EarlyControl_classEquality : compileHmrEqualityLog s6Step108EarlyControlPositiveArena [890, 907] 0 s6Step108EarlyControlLog.classWork=some (s6Step108EarlyControlEqualityArena,s6Step108EarlyControlLog.classWork,s6Step108EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step108EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step108EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step108EarlyControl_classOwned : ([769, 818, 890] : List Wire).toFinset⊆s6Step108EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step108EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step108EarlyControl_positiveBorrow : s6Step108EarlyControlZeroArena.checkBorrow (1) s6Step108EarlyControlLog.positiveWork=some s6Step108EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step108EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step108EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step108EarlyControlZeroArena s6Step108EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step108EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step108EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step108EarlyControl_class : compileHmrSourceClassLog s6Step108EarlyControlZeroArena false 769 s6Step108EarlyControlZeroPlan.top 0 890 s6Step108EarlyControlLog.positiveWork s6Step108EarlyControlLog.classWork=some s6Step108EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step108EarlyControlClassPlan s6Step108EarlyControlZeroArena false 769 s6Step108EarlyControlZeroPlan.top 0 890
  constructor
  · decide +kernel
  · exact s6Step108EarlyControl_classOwned
  · exact s6Step108EarlyControl_positiveBorrow
  · exact s6Step108EarlyControl_classEquality

private theorem s6Step108EarlyControl_entryRecordOwned : ([793, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).toFinset⊆s6Step108EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step108EarlyControlArena (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step108EarlyControl_entrySigmaOwned : ([890, 254] : List Wire).toFinset⊆s6Step108EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step108EarlyControlArena (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step108EarlyControl_fitBorrow : s6Step108EarlyControlFlagArena.checkBorrow ((35-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).length)) s6Step108EarlyControlLog.recordFresh=some s6Step108EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step108EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step108EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step108EarlyControlFittedArena,s6Step108EarlyControlFlagArena,s6Step108EarlyControlLog,arenaWires]

private theorem s6Step108EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).toFinset⊆s6Step108EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step108EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step108EarlyControl_fit : compileHmrRecordGrowLog s6Step108EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step108EarlyControlLog.recordFresh=some s6Step108EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step108EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step108EarlyControl_fitBorrow

private theorem s6Step108EarlyControl_flagsBorrow : s6Step108EarlyControlEqualityArena.checkBorrow (6) s6Step108EarlyControlLog.flagWork=some s6Step108EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step108EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step108EarlyControlEqualityArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step108EarlyControlEqualityArena s6Step108EarlyControlFlagArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step108EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step108EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step108EarlyControl_flagsOwned : ([803, 253, 252, 251] : List Wire).toFinset⊆s6Step108EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step108EarlyControlEqualityArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step108EarlyControl_flags : compileHmrFlagsLog s6Step108EarlyControlClassPlan.equalityArena s6Step108EarlyControlClassPlan.equality.top 253 252 251 s6Step108EarlyControlLog.flagWork=some s6Step108EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step108EarlyControl_flagsOwned⟩
  · exact s6Step108EarlyControl_flagsBorrow

private theorem s6Step108EarlyControl_historyBorrow : s6Step108EarlyControlArena.checkBorrow ((35-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).length)) s6Step108EarlyControlLog.recordFresh=some s6Step108EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step108EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step108EarlyControlArena (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step108EarlyControlArena s6Step108EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step108EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step108EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step108EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).toFinset⊆s6Step108EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step108EarlyControlArena (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step108EarlyControl_history : compileHmrRecordGrowLog s6Step108EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step108EarlyControlLog.recordFresh=some s6Step108EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step108EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step108EarlyControl_historyBorrow

private theorem s6Step108EarlyControl_sigmaOwned : ([254, 890] : List Wire).toFinset⊆s6Step108EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step108EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step108EarlyControl_sigmaReleaseOwned : ([890] : List Wire).toFinset⊆s6Step108EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step108EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step108EarlyControl_sigmaRelease : s6Step108EarlyControlHistoryArena.release {890} (fun _ => false)=some s6Step108EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step108EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step108EarlyControlHistoryArena s6Step108EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [890] rfl rfl
    decide +kernel

private theorem s6Step108EarlyControl_sigma : compileHmrSigmaDropLog s6Step108EarlyControlHistoryArena false 0 0 254 890 []=some s6Step108EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step108EarlyControl_sigmaOwned⟩
  · exact s6Step108EarlyControl_sigmaRelease

private theorem s6Step108EarlyControl_zeroBorrow : s6Step108EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step108EarlyControlLog.zeroWork=some s6Step108EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step108EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step108EarlyControlArena (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step108EarlyControlArena s6Step108EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step108EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step108EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step108EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step108EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step108EarlyControlArena (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step108EarlyControl_zero : compileHmrEqualityLog s6Step108EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step108EarlyControlLog.zeroWork=some (s6Step108EarlyControlZeroArena,s6Step108EarlyControlLog.zeroWork,s6Step108EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step108EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step108EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step108EarlyControl_logged : s6Step108EarlyControlPlan.Logged s6Step108EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 890 254 253 252 251 793 35 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step108EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step108EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step108EarlyControl_zero
  · exact s6Step108EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step108EarlyControl_flags
  · exact s6Step108EarlyControl_fit
  · exact s6Step108EarlyControl_history
  · exact s6Step108EarlyControl_sigma
  · exact s6Step108EarlyControl_branch

private theorem s6Step108EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step108EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 890 254 253 252 251 793 35 s6Step108EarlyControlLog=some s6Step108EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step108EarlyControlPlan s6Step108EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 890 254 253 252 251 793 35 s6Step108EarlyControl_logged

private def s6Step108EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470],795⟩

private def s6Step108EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863],776⟩

private def s6Step108EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214],777⟩

private def s6Step108EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828],775⟩

private def s6Step108FrontBank : WindowBank := ⟨s6Step108EntryFRow,s6Step108EntryGRow,s6Step108EntryFvRow,s6Step108EntryGvRow⟩

private def s6Step108Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 823, 795]

private def s6Step108Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 818, 777]

private def s6Step108Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 776]

private def s6Step108Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 864, 775]

private theorem s6Step108Counter_apart : Disjoint s6Step108HeadFvAfter.live s6Step108CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step108HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step108Counter_borrowed : s6Step108HeadFvAfter.checkBorrow 4 s6Step108CounterWork=some s6Step108CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step108HeadFvAfter s6Step108CounterDuring s6Step108CounterWork.toFinset s6Step108Counter_bounded s6Step108Counter_apart rfl

private theorem s6Step108Counter_owned : (890::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step108HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step108HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step108Counter_checked : compileHmrCounterStepLog s6Step108HeadFvAfter true 890 [774, 773, 772, 771, 770, 769] s6Step108CounterWork=some s6Step108CounterDuring := by
  have owned : ∀q∈890::[774, 773, 772, 771, 770, 769],q∈s6Step108HeadFvAfter.live := fun q hq => s6Step108Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step108Counter_borrowed

private def s6Step108EntryFAfter : Arena := s6Step108EntryFBefore

private theorem s6Step108EntryBank_incomingDistinct : ([s6Step108EntryFRow,s6Step108EntryGRow,s6Step108EntryFvRow,s6Step108EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step108EntryF_Incoming : rowsOwned s6Step108EntryFBefore [s6Step108EntryFRow,s6Step108EntryGRow,s6Step108EntryFvRow,s6Step108EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step108EntryFRow,s6Step108EntryGRow,s6Step108EntryFvRow,s6Step108EntryGvRow] 0 s6Step108EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step108EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step108EntryBank_outgoingOwned : rowsOwned s6Step108EntryGvAfter [s6Step108EntryFOut,s6Step108EntryGOut,s6Step108EntryFvOut,s6Step108EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step108EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step108EntryF_Outgoing : rowsOwned s6Step108EntryGvAfter [s6Step108EntryFOut,s6Step108EntryGOut,s6Step108EntryFvOut,s6Step108EntryGvOut] :=
  hmrRows_owned_drop s6Step108EntryGvAfter [s6Step108EntryFOut,s6Step108EntryGOut,s6Step108EntryFvOut,s6Step108EntryGvOut] 0 s6Step108EntryBank_outgoingOwned

private theorem s6Step108EntryF_distinct : (s6Step108EntryFRow.sign::s6Step108EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step108EntryF_owned : (s6Step108EntryFRow.sign::s6Step108EntryFRow.payload).toFinset⊆s6Step108EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step108EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step108EntryF_reserved : s6Step108EntryFBefore.reserve s6Step108EntryFFresh.toFinset=some s6Step108EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step108EntryFFresh,arenaWires]
  · norm_num [s6Step108EntryFBefore,s6Step108EntryFFresh,arenaWires]
  · simp only [s6Step108EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step108EntryF_checked : planRowResizeLog s6Step108EntryFBefore s6Step108EntryFRow 215 s6Step108EntryFFresh=
    some (s6Step108EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470],795⟩,growRow 795 s6Step108EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step108EntryFBefore s6Step108EntryFAfter s6Step108EntryFRow 215 s6Step108EntryFFresh
    s6Step108EntryF_distinct s6Step108EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step108EntryF_reserved
  have rowEq : WindowRow.mk (s6Step108EntryFRow.payload++s6Step108EntryFFresh) s6Step108EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step108EntryFvAfter : Arena := s6Step108EntryFBefore

private def s6Step108EntryFvBefore : Arena := s6Step108EntryFBefore

private theorem s6Step108EntryFv_Incoming : rowsOwned s6Step108EntryFvBefore [s6Step108EntryFvRow,s6Step108EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step108EntryFRow,s6Step108EntryGRow,s6Step108EntryFvRow,s6Step108EntryGvRow] 2 s6Step108EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step108EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step108EntryFv_Outgoing : rowsOwned s6Step108EntryGvAfter [s6Step108EntryFvOut,s6Step108EntryGvOut] :=
  hmrRows_owned_drop s6Step108EntryGvAfter [s6Step108EntryFOut,s6Step108EntryGOut,s6Step108EntryFvOut,s6Step108EntryGvOut] 2 s6Step108EntryBank_outgoingOwned

private theorem s6Step108EntryFv_distinct : (s6Step108EntryFvRow.sign::s6Step108EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step108EntryFv_owned : (s6Step108EntryFvRow.sign::s6Step108EntryFvRow.payload).toFinset⊆s6Step108EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step108EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step108EntryFv_reserved : s6Step108EntryFvBefore.reserve s6Step108EntryFvFresh.toFinset=some s6Step108EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step108EntryFvFresh,arenaWires]
  · norm_num [s6Step108EntryFvBefore,s6Step108EntryFBefore,s6Step108EntryFvFresh,arenaWires]
  · simp only [s6Step108EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step108EntryFv_checked : planRowResizeLog s6Step108EntryFvBefore s6Step108EntryFvRow 67 s6Step108EntryFvFresh=
    some (s6Step108EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863],776⟩,growRow 776 s6Step108EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step108EntryFvBefore s6Step108EntryFvAfter s6Step108EntryFvRow 67 s6Step108EntryFvFresh
    s6Step108EntryFv_distinct s6Step108EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step108EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step108EntryFvRow.payload++s6Step108EntryFvFresh) s6Step108EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step108EntryGAfter : Arena := s6Step108EntryFBefore

private def s6Step108EntryGBefore : Arena := s6Step108EntryFBefore

private theorem s6Step108EntryG_Incoming : rowsOwned s6Step108EntryGBefore [s6Step108EntryGRow,s6Step108EntryFvRow,s6Step108EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step108EntryFRow,s6Step108EntryGRow,s6Step108EntryFvRow,s6Step108EntryGvRow] 1 s6Step108EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step108EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step108EntryG_Outgoing : rowsOwned s6Step108EntryGvAfter [s6Step108EntryGOut,s6Step108EntryFvOut,s6Step108EntryGvOut] :=
  hmrRows_owned_drop s6Step108EntryGvAfter [s6Step108EntryFOut,s6Step108EntryGOut,s6Step108EntryFvOut,s6Step108EntryGvOut] 1 s6Step108EntryBank_outgoingOwned

private theorem s6Step108EntryG_distinct : (s6Step108EntryGRow.sign::s6Step108EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step108EntryG_owned : (s6Step108EntryGRow.sign::s6Step108EntryGRow.payload).toFinset⊆s6Step108EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step108EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step108EntryG_reserved : s6Step108EntryGBefore.reserve s6Step108EntryGFresh.toFinset=some s6Step108EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step108EntryGFresh,arenaWires]
  · norm_num [s6Step108EntryGBefore,s6Step108EntryFBefore,s6Step108EntryGFresh,arenaWires]
  · simp only [s6Step108EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step108EntryG_checked : planRowResizeLog s6Step108EntryGBefore s6Step108EntryGRow 215 s6Step108EntryGFresh=
    some (s6Step108EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214],777⟩,growRow 777 s6Step108EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step108EntryGBefore s6Step108EntryGAfter s6Step108EntryGRow 215 s6Step108EntryGFresh
    s6Step108EntryG_distinct s6Step108EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step108EntryG_reserved
  have rowEq : WindowRow.mk (s6Step108EntryGRow.payload++s6Step108EntryGFresh) s6Step108EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step108EntryGvBefore : Arena := s6Step108EntryFBefore

private theorem s6Step108EntryGv_Incoming : rowsOwned s6Step108EntryGvBefore [s6Step108EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step108EntryFRow,s6Step108EntryGRow,s6Step108EntryFvRow,s6Step108EntryGvRow] 3 s6Step108EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step108EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step108EntryGv_Outgoing : rowsOwned s6Step108EntryGvAfter [s6Step108EntryGvOut] :=
  hmrRows_owned_drop s6Step108EntryGvAfter [s6Step108EntryFOut,s6Step108EntryGOut,s6Step108EntryFvOut,s6Step108EntryGvOut] 3 s6Step108EntryBank_outgoingOwned

private theorem s6Step108EntryGv_distinct : (s6Step108EntryGvRow.sign::s6Step108EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step108EntryGv_owned : (s6Step108EntryGvRow.sign::s6Step108EntryGvRow.payload).toFinset⊆s6Step108EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step108EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step108EntryGv_reserved : s6Step108EntryGvBefore.reserve s6Step108EntryGvFresh.toFinset=some s6Step108EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step108EntryGvFresh,arenaWires]
  · norm_num [s6Step108EntryGvBefore,s6Step108EntryFBefore,s6Step108EntryGvFresh,arenaWires]
  · simp only [s6Step108EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step108EntryGv_checked : planRowResizeLog s6Step108EntryGvBefore s6Step108EntryGvRow 67 s6Step108EntryGvFresh=
    some (s6Step108EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828],775⟩,growRow 775 s6Step108EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step108EntryGvBefore s6Step108EntryGvAfter s6Step108EntryGvRow 67 s6Step108EntryGvFresh
    s6Step108EntryGv_distinct s6Step108EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step108EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step108EntryGvRow.payload++s6Step108EntryGvFresh) s6Step108EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step108EntryBank_rows : planWindowRowsLog s6Step108EntryFBefore [(s6Step108EntryFRow,215),(s6Step108EntryGRow,215),(s6Step108EntryFvRow,67),(s6Step108EntryGvRow,67)] [s6Step108EntryFFresh,s6Step108EntryGFresh,s6Step108EntryFvFresh,s6Step108EntryGvFresh]=
    some (s6Step108EntryGvAfter,[s6Step108EntryFOut,s6Step108EntryGOut,s6Step108EntryFvOut,s6Step108EntryGvOut],(growRow 795 s6Step108EntryFFresh ++ (growRow 777 s6Step108EntryGFresh ++ (growRow 776 s6Step108EntryFvFresh ++ (growRow 775 s6Step108EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step108EntryGvAfter [] []=some (s6Step108EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step108EntryGvBefore s6Step108EntryGvAfter s6Step108EntryGvAfter
    s6Step108EntryGvRow s6Step108EntryGvOut 67 s6Step108EntryGvFresh [] [] []
    (growRow 775 s6Step108EntryGvFresh) ([]) s6Step108EntryGv_Incoming s6Step108EntryGv_checked h4 s6Step108EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step108EntryFvBefore s6Step108EntryFvAfter s6Step108EntryGvAfter
    s6Step108EntryFvRow s6Step108EntryFvOut 67 s6Step108EntryFvFresh [(s6Step108EntryGvRow,67)] [s6Step108EntryGvFresh] [s6Step108EntryGvOut]
    (growRow 776 s6Step108EntryFvFresh) ((growRow 775 s6Step108EntryGvFresh ++ [])) s6Step108EntryFv_Incoming s6Step108EntryFv_checked h3 s6Step108EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step108EntryGBefore s6Step108EntryGAfter s6Step108EntryGvAfter
    s6Step108EntryGRow s6Step108EntryGOut 215 s6Step108EntryGFresh [(s6Step108EntryFvRow,67),(s6Step108EntryGvRow,67)] [s6Step108EntryFvFresh,s6Step108EntryGvFresh] [s6Step108EntryFvOut,s6Step108EntryGvOut]
    (growRow 777 s6Step108EntryGFresh) ((growRow 776 s6Step108EntryFvFresh ++ (growRow 775 s6Step108EntryGvFresh ++ []))) s6Step108EntryG_Incoming s6Step108EntryG_checked h2 s6Step108EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step108EntryFBefore s6Step108EntryFAfter s6Step108EntryGvAfter
    s6Step108EntryFRow s6Step108EntryFOut 215 s6Step108EntryFFresh [(s6Step108EntryGRow,215),(s6Step108EntryFvRow,67),(s6Step108EntryGvRow,67)] [s6Step108EntryGFresh,s6Step108EntryFvFresh,s6Step108EntryGvFresh] [s6Step108EntryGOut,s6Step108EntryFvOut,s6Step108EntryGvOut]
    (growRow 795 s6Step108EntryFFresh) ((growRow 777 s6Step108EntryGFresh ++ (growRow 776 s6Step108EntryFvFresh ++ (growRow 775 s6Step108EntryGvFresh ++ [])))) s6Step108EntryF_Incoming s6Step108EntryF_checked h1 s6Step108EntryF_Outgoing
  exact h0

private theorem s6Step108EntryBank_checked : compileHmrBankResizeLog .entry s6Step108EntryFBefore ⟨s6Step108EntryFRow,s6Step108EntryGRow,s6Step108EntryFvRow,s6Step108EntryGvRow⟩ ⟨215,215,67,67⟩ [s6Step108EntryFFresh,s6Step108EntryGFresh,s6Step108EntryFvFresh,s6Step108EntryGvFresh]=
    some (s6Step108EntryGvAfter,⟨s6Step108EntryFOut,s6Step108EntryGOut,s6Step108EntryFvOut,s6Step108EntryGvOut⟩,(growRow 795 s6Step108EntryFFresh ++ (growRow 777 s6Step108EntryGFresh ++ (growRow 776 s6Step108EntryFvFresh ++ (growRow 775 s6Step108EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step108EntryBank_rows]
  rfl

private def s6Step108ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,214),(215,470),(471,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step108ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,214),(215,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step108ExitFBefore : Arena := s6Step108ExitGAfter

private def s6Step108ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 823],795⟩

private def s6Step108ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876],776⟩

private def s6Step108ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 818],777⟩

private def s6Step108ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 864],775⟩

private theorem s6Step108ExitBank_incomingDistinct : ([s6Step108ExitGRow,s6Step108ExitFRow,s6Step108ExitFvRow,s6Step108ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step108ExitF_Incoming : rowsOwned s6Step108ExitFBefore [s6Step108ExitFRow,s6Step108ExitFvRow,s6Step108ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step108ExitGRow,s6Step108ExitFRow,s6Step108ExitFvRow,s6Step108ExitGvRow] 1 s6Step108ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step108ExitFBefore (fun q => ([(0,214),(215,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step108ExitBank_outgoingOwned : rowsOwned s6Step108ExitGvAfter [s6Step108ExitGOut,s6Step108ExitFOut,s6Step108ExitFvOut,s6Step108ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step108ExitGvAfter (fun q => ([(0,214),(215,470),(471,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step108ExitF_Outgoing : rowsOwned s6Step108ExitGvAfter [s6Step108ExitFOut,s6Step108ExitFvOut,s6Step108ExitGvOut] :=
  hmrRows_owned_drop s6Step108ExitGvAfter [s6Step108ExitGOut,s6Step108ExitFOut,s6Step108ExitFvOut,s6Step108ExitGvOut] 1 s6Step108ExitBank_outgoingOwned

private theorem s6Step108ExitF_distinct : (s6Step108ExitFRow.sign::s6Step108ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step108ExitF_owned : (s6Step108ExitFRow.sign::s6Step108ExitFRow.payload).toFinset⊆s6Step108ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step108ExitFBefore (fun q => ([(0,214),(215,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step108ExitF_retired : s6Step108ExitFBefore.retireSet s6Step108ExitFExtra.toFinset=s6Step108ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step108ExitFBefore s6Step108ExitFAfter s6Step108ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step108ExitFBefore s6Step108ExitFAfter (fun q => ([(0,214),(215,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,214),(215,470),(471,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step108ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step108ExitF_checked : planRowResizeLog s6Step108ExitFBefore s6Step108ExitFRow 214 []=
    some (s6Step108ExitFAfter,s6Step108ExitFOut,shrinkRow 795 s6Step108ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step108ExitFBefore s6Step108ExitFRow 214 s6Step108ExitF_distinct s6Step108ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step108ExitFRow.payload.take 214) s6Step108ExitFRow.sign=s6Step108ExitFOut := by decide +kernel
  have hi : s6Step108ExitFRow.payload.drop 214=s6Step108ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step108ExitF_retired] at result
  exact result

private def s6Step108ExitFvAfter : Arena := s6Step108ExitFAfter

private def s6Step108ExitFvBefore : Arena := s6Step108ExitFAfter

private theorem s6Step108ExitFv_Incoming : rowsOwned s6Step108ExitFvBefore [s6Step108ExitFvRow,s6Step108ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step108ExitGRow,s6Step108ExitFRow,s6Step108ExitFvRow,s6Step108ExitGvRow] 2 s6Step108ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step108ExitFvBefore (fun q => ([(0,214),(215,470),(471,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step108ExitFv_Outgoing : rowsOwned s6Step108ExitGvAfter [s6Step108ExitFvOut,s6Step108ExitGvOut] :=
  hmrRows_owned_drop s6Step108ExitGvAfter [s6Step108ExitGOut,s6Step108ExitFOut,s6Step108ExitFvOut,s6Step108ExitGvOut] 2 s6Step108ExitBank_outgoingOwned

private theorem s6Step108ExitFv_distinct : (s6Step108ExitFvRow.sign::s6Step108ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step108ExitFv_owned : (s6Step108ExitFvRow.sign::s6Step108ExitFvRow.payload).toFinset⊆s6Step108ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step108ExitFvBefore (fun q => ([(0,214),(215,470),(471,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step108ExitFv_reserved : s6Step108ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step108ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step108ExitFv_checked : planRowResizeLog s6Step108ExitFvBefore s6Step108ExitFvRow 68 []=
    some (s6Step108ExitFvAfter,s6Step108ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step108ExitFvBefore s6Step108ExitFvAfter s6Step108ExitFvRow 68 []
    s6Step108ExitFv_distinct s6Step108ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step108ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step108ExitFvRow.payload++[]) s6Step108ExitFvRow.sign=s6Step108ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step108ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step108ExitG_Incoming : rowsOwned s6Step108ExitGBefore [s6Step108ExitGRow,s6Step108ExitFRow,s6Step108ExitFvRow,s6Step108ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step108ExitGRow,s6Step108ExitFRow,s6Step108ExitFvRow,s6Step108ExitGvRow] 0 s6Step108ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step108ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step108ExitG_Outgoing : rowsOwned s6Step108ExitGvAfter [s6Step108ExitGOut,s6Step108ExitFOut,s6Step108ExitFvOut,s6Step108ExitGvOut] :=
  hmrRows_owned_drop s6Step108ExitGvAfter [s6Step108ExitGOut,s6Step108ExitFOut,s6Step108ExitFvOut,s6Step108ExitGvOut] 0 s6Step108ExitBank_outgoingOwned

private theorem s6Step108ExitG_distinct : (s6Step108ExitGRow.sign::s6Step108ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step108ExitG_owned : (s6Step108ExitGRow.sign::s6Step108ExitGRow.payload).toFinset⊆s6Step108ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step108ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step108ExitG_retired : s6Step108ExitGBefore.retireSet s6Step108ExitGExtra.toFinset=s6Step108ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step108ExitGBefore s6Step108ExitGAfter s6Step108ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step108ExitGBefore s6Step108ExitGAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,214),(215,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step108ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step108ExitG_checked : planRowResizeLog s6Step108ExitGBefore s6Step108ExitGRow 214 []=
    some (s6Step108ExitGAfter,s6Step108ExitGOut,shrinkRow 777 s6Step108ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step108ExitGBefore s6Step108ExitGRow 214 s6Step108ExitG_distinct s6Step108ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step108ExitGRow.payload.take 214) s6Step108ExitGRow.sign=s6Step108ExitGOut := by decide +kernel
  have hi : s6Step108ExitGRow.payload.drop 214=s6Step108ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step108ExitG_retired] at result
  exact result

private def s6Step108ExitGvBefore : Arena := s6Step108ExitFAfter

private theorem s6Step108ExitGv_Incoming : rowsOwned s6Step108ExitGvBefore [s6Step108ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step108ExitGRow,s6Step108ExitFRow,s6Step108ExitFvRow,s6Step108ExitGvRow] 3 s6Step108ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step108ExitGvBefore (fun q => ([(0,214),(215,470),(471,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step108ExitGv_Outgoing : rowsOwned s6Step108ExitGvAfter [s6Step108ExitGvOut] :=
  hmrRows_owned_drop s6Step108ExitGvAfter [s6Step108ExitGOut,s6Step108ExitFOut,s6Step108ExitFvOut,s6Step108ExitGvOut] 3 s6Step108ExitBank_outgoingOwned

private theorem s6Step108ExitGv_distinct : (s6Step108ExitGvRow.sign::s6Step108ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step108ExitGv_owned : (s6Step108ExitGvRow.sign::s6Step108ExitGvRow.payload).toFinset⊆s6Step108ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step108ExitGvBefore (fun q => ([(0,214),(215,470),(471,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step108ExitGv_retired : s6Step108ExitGvBefore.retireSet s6Step108ExitGvExtra.toFinset=s6Step108ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step108ExitGvBefore s6Step108ExitGvAfter s6Step108ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step108ExitGvBefore s6Step108ExitGvAfter (fun q => ([(0,214),(215,470),(471,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,214),(215,470),(471,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step108ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step108ExitGv_checked : planRowResizeLog s6Step108ExitGvBefore s6Step108ExitGvRow 67 []=
    some (s6Step108ExitGvAfter,s6Step108ExitGvOut,shrinkRow 775 s6Step108ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step108ExitGvBefore s6Step108ExitGvRow 67 s6Step108ExitGv_distinct s6Step108ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step108ExitGvRow.payload.take 67) s6Step108ExitGvRow.sign=s6Step108ExitGvOut := by decide +kernel
  have hi : s6Step108ExitGvRow.payload.drop 67=s6Step108ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step108ExitGv_retired] at result
  exact result

private theorem s6Step108ExitBank_rows : planWindowRowsLog s6Step108ExitGBefore [(s6Step108ExitGRow,214),(s6Step108ExitFRow,214),(s6Step108ExitFvRow,68),(s6Step108ExitGvRow,67)] [[],[],[],[]]=
    some (s6Step108ExitGvAfter,[s6Step108ExitGOut,s6Step108ExitFOut,s6Step108ExitFvOut,s6Step108ExitGvOut],(shrinkRow 777 s6Step108ExitGExtra ++ (shrinkRow 795 s6Step108ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step108ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step108ExitGvAfter [] []=some (s6Step108ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step108ExitGvBefore s6Step108ExitGvAfter s6Step108ExitGvAfter
    s6Step108ExitGvRow s6Step108ExitGvOut 67 [] [] [] []
    (shrinkRow 775 s6Step108ExitGvExtra) ([]) s6Step108ExitGv_Incoming s6Step108ExitGv_checked h4 s6Step108ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step108ExitFvBefore s6Step108ExitFvAfter s6Step108ExitGvAfter
    s6Step108ExitFvRow s6Step108ExitFvOut 68 [] [(s6Step108ExitGvRow,67)] [[]] [s6Step108ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step108ExitGvExtra ++ [])) s6Step108ExitFv_Incoming s6Step108ExitFv_checked h3 s6Step108ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step108ExitFBefore s6Step108ExitFAfter s6Step108ExitGvAfter
    s6Step108ExitFRow s6Step108ExitFOut 214 [] [(s6Step108ExitFvRow,68),(s6Step108ExitGvRow,67)] [[],[]] [s6Step108ExitFvOut,s6Step108ExitGvOut]
    (shrinkRow 795 s6Step108ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step108ExitGvExtra ++ []))) s6Step108ExitF_Incoming s6Step108ExitF_checked h2 s6Step108ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step108ExitGBefore s6Step108ExitGAfter s6Step108ExitGvAfter
    s6Step108ExitGRow s6Step108ExitGOut 214 [] [(s6Step108ExitFRow,214),(s6Step108ExitFvRow,68),(s6Step108ExitGvRow,67)] [[],[],[]] [s6Step108ExitFOut,s6Step108ExitFvOut,s6Step108ExitGvOut]
    (shrinkRow 777 s6Step108ExitGExtra) ((shrinkRow 795 s6Step108ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step108ExitGvExtra ++ [])))) s6Step108ExitG_Incoming s6Step108ExitG_checked h1 s6Step108ExitG_Outgoing
  exact h0

private theorem s6Step108ExitBank_checked : compileHmrBankResizeLog .exit s6Step108ExitGBefore ⟨s6Step108ExitFRow,s6Step108ExitGRow,s6Step108ExitFvRow,s6Step108ExitGvRow⟩ ⟨214,214,68,67⟩ [[],[],[],[]]=
    some (s6Step108ExitGvAfter,⟨s6Step108ExitFOut,s6Step108ExitGOut,s6Step108ExitFvOut,s6Step108ExitGvOut⟩,(shrinkRow 777 s6Step108ExitGExtra ++ (shrinkRow 795 s6Step108ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step108ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step108ExitBank_rows]
  rfl

private theorem s6Step108Add0_apart : Disjoint s6Step108Add0Arena.live s6Step108Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step108Add0Arena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step108Add0_card : s6Step108Add0Arena.live.card=873 := by
  decide +kernel

private theorem s6Step108Add0_borrowed : s6Step108Add0Arena.checkBorrow (hmrHybridCount s6Step108Add0Arena s6Step108Add0B.length) s6Step108Add0Work=some s6Step108Add0During := by
  have len : s6Step108Add0Work.length=hmrHybridCount s6Step108Add0Arena s6Step108Add0B.length := by
    rw [hmrHybridCount,s6Step108Add0_card]
    decide +kernel
  have nd : s6Step108Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step108Add0Arena s6Step108Add0During s6Step108Add0Work.toFinset s6Step108Add0_bounded s6Step108Add0_apart rfl

private theorem s6Step108Add0_distinct : (907::793::803::(s6Step108Add0A++s6Step108Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step108Add0_owned : (907::793::803::(s6Step108Add0A++s6Step108Add0B)).toFinset⊆s6Step108Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step108Add0Arena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step108Add0_checked : compileHmrHybridCinLog s6Step108Add0Arena 793 907 803 s6Step108Add0A s6Step108Add0B s6Step108Add0Work=some s6Step108Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step108Add0Arena s6Step108Add0During 793 907 803 s6Step108Add0A s6Step108Add0B s6Step108Add0Work
    (by decide +kernel) (by decide +kernel) s6Step108Add0_distinct
    (fun q hq => s6Step108Add0_owned (List.mem_toFinset.mpr hq)) s6Step108Add0_borrowed

private theorem s6Step108Add1_apart : Disjoint s6Step108Add1Arena.live s6Step108Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step108Add1Arena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step108Add1_card : s6Step108Add1Arena.live.card=873 := by
  decide +kernel

private theorem s6Step108Add1_borrowed : s6Step108Add1Arena.checkBorrow (hmrHybridCount s6Step108Add1Arena s6Step108Add1B.length) s6Step108Add1Work=some s6Step108Add1During := by
  have len : s6Step108Add1Work.length=hmrHybridCount s6Step108Add1Arena s6Step108Add1B.length := by
    rw [hmrHybridCount,s6Step108Add1_card]
    decide +kernel
  have nd : s6Step108Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step108Add1Arena s6Step108Add1During s6Step108Add1Work.toFinset s6Step108Add1_bounded s6Step108Add1_apart rfl

private theorem s6Step108Add1_distinct : (907::793::803::(s6Step108Add1A++s6Step108Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step108Add1_owned : (907::793::803::(s6Step108Add1A++s6Step108Add1B)).toFinset⊆s6Step108Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step108Add1Arena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step108Add1_checked : compileHmrHybridCinLog s6Step108Add1Arena 793 907 803 s6Step108Add1A s6Step108Add1B s6Step108Add1Work=some s6Step108Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step108Add1Arena s6Step108Add1During 793 907 803 s6Step108Add1A s6Step108Add1B s6Step108Add1Work
    (by decide +kernel) (by decide +kernel) s6Step108Add1_distinct
    (fun q hq => s6Step108Add1_owned (List.mem_toFinset.mpr hq)) s6Step108Add1_borrowed

private theorem s6Step108F4_apart : Disjoint (s6Step108Add0A++s6Step108Add0B).toFinset (s6Step108Add1A++s6Step108Add1B).toFinset := by
  have nd : ((s6Step108Add0A++s6Step108Add0B)++(s6Step108Add1A++s6Step108Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step108F4_carry : s6Step108F4FlagArena.checkBorrow 1 [803]=some s6Step108Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step108F4FlagArena,s6Step108HeadFvAfter,arenaWires]
  · change s6Step108Add0Arena.live=(s6Step108HeadFvAfter.live∪{907})∪{803}
    apply hmrArena_union_pair_of_filter_check s6Step108HeadFvAfter s6Step108Add0Arena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 907 803 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step108F4_distinct : (890::793::907::803::((s6Step108Add0A++s6Step108Add1A)++(s6Step108Add0B++s6Step108Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step108F4_flag : s6Step108HeadFvAfter.checkBorrow 1 [907]=some s6Step108F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step108HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step108F4_owned : (890::793::((s6Step108Add0A++s6Step108Add1A)++(s6Step108Add0B++s6Step108Add1B))).toFinset⊆s6Step108HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step108HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step108F4_checked : compileHmrHybridF4Log s6Step108HeadFvAfter 890 793 s6Step108Add0A s6Step108Add0B s6Step108Add1A s6Step108Add1B [907] [803] s6Step108Add0Work s6Step108Add1Work=some s6Step108F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step108HeadFvAfter s6Step108F4FlagArena s6Step108Add0Arena s6Step108Add0During s6Step108Add1During 890 793
    s6Step108Add0A s6Step108Add0B s6Step108Add1A s6Step108Add1B [907] [803] s6Step108Add0Work s6Step108Add1Work
    (fun q hq => s6Step108F4_owned (List.mem_toFinset.mpr hq)) s6Step108F4_flag s6Step108F4_carry
    s6Step108F4_distinct s6Step108F4_apart s6Step108Add0_checked s6Step108Add1_checked

private theorem s6Step108Front_branch : s6Step108FrontSigmaArena.checkBorrow 1 [793]=some s6Step108HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step108FrontSigmaArena,s6Step108EntryGvAfter,s6Step108EntryFBefore,arenaWires]
  · change s6Step108HeadGBefore.live=(s6Step108EntryGvAfter.live∪{890})∪{793}
    apply hmrArena_union_pair_of_filter_check s6Step108EntryGvAfter s6Step108HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 890 793 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step108Front_entry : HmrFrontEntryValid s6Step108EntryFBefore s6Step108FrontBank 215 67 ⟨214,214,68,67⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step108FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step108EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step108EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step108FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step108Front_sigma : s6Step108EntryGvAfter.checkBorrow 1 [890]=some s6Step108FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step108EntryGvAfter,s6Step108EntryFBefore,arenaWires]
  · rfl

private def s6Step108HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step108HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step108HeadFBefore : Arena := s6Step108HeadGAfter

private def s6Step108HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470],795⟩

private def s6Step108HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863],776⟩

private def s6Step108HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214],777⟩

private def s6Step108HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828],775⟩

private theorem s6Step108HeadBank_incomingDistinct : ([s6Step108HeadGRow,s6Step108HeadFRow,s6Step108HeadGvRow,s6Step108HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step108HeadF_Incoming : rowsOwned s6Step108HeadFBefore [s6Step108HeadFRow,s6Step108HeadGvRow,s6Step108HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step108HeadGRow,s6Step108HeadFRow,s6Step108HeadGvRow,s6Step108HeadFvRow] 1 s6Step108HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step108HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step108HeadBank_outgoingOwned : rowsOwned s6Step108HeadFvAfter [s6Step108HeadGOut,s6Step108HeadFOut,s6Step108HeadGvOut,s6Step108HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step108HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step108HeadF_Outgoing : rowsOwned s6Step108HeadFvAfter [s6Step108HeadFOut,s6Step108HeadGvOut,s6Step108HeadFvOut] :=
  hmrRows_owned_drop s6Step108HeadFvAfter [s6Step108HeadGOut,s6Step108HeadFOut,s6Step108HeadGvOut,s6Step108HeadFvOut] 1 s6Step108HeadBank_outgoingOwned

private theorem s6Step108HeadF_distinct : (s6Step108HeadFRow.sign::s6Step108HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step108HeadF_owned : (s6Step108HeadFRow.sign::s6Step108HeadFRow.payload).toFinset⊆s6Step108HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step108HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step108HeadF_reserved : s6Step108HeadFBefore.reserve s6Step108HeadFFresh.toFinset=some s6Step108HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step108HeadFFresh,arenaWires]
  · norm_num [s6Step108HeadFBefore,s6Step108HeadGAfter,s6Step108HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step108HeadFBefore s6Step108HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step108HeadFFresh rfl rfl
    · norm_num [s6Step108HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step108HeadF_checked : planRowResizeLog s6Step108HeadFBefore s6Step108HeadFRow 216 s6Step108HeadFFresh=
    some (s6Step108HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 823],795⟩,growRow 795 s6Step108HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step108HeadFBefore s6Step108HeadFAfter s6Step108HeadFRow 216 s6Step108HeadFFresh
    s6Step108HeadF_distinct s6Step108HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step108HeadF_reserved
  have rowEq : WindowRow.mk (s6Step108HeadFRow.payload++s6Step108HeadFFresh) s6Step108HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 823],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step108HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step108HeadFvBefore : Arena := s6Step108HeadGvAfter

private theorem s6Step108HeadFv_Incoming : rowsOwned s6Step108HeadFvBefore [s6Step108HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step108HeadGRow,s6Step108HeadFRow,s6Step108HeadGvRow,s6Step108HeadFvRow] 3 s6Step108HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step108HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step108HeadFv_Outgoing : rowsOwned s6Step108HeadFvAfter [s6Step108HeadFvOut] :=
  hmrRows_owned_drop s6Step108HeadFvAfter [s6Step108HeadGOut,s6Step108HeadFOut,s6Step108HeadGvOut,s6Step108HeadFvOut] 3 s6Step108HeadBank_outgoingOwned

private theorem s6Step108HeadFv_distinct : (s6Step108HeadFvRow.sign::s6Step108HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step108HeadFv_owned : (s6Step108HeadFvRow.sign::s6Step108HeadFvRow.payload).toFinset⊆s6Step108HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step108HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step108HeadFv_reserved : s6Step108HeadFvBefore.reserve s6Step108HeadFvFresh.toFinset=some s6Step108HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step108HeadFvFresh,arenaWires]
  · norm_num [s6Step108HeadFvBefore,s6Step108HeadGvAfter,s6Step108HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step108HeadFvBefore s6Step108HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step108HeadFvFresh rfl rfl
    · norm_num [s6Step108HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step108HeadFv_checked : planRowResizeLog s6Step108HeadFvBefore s6Step108HeadFvRow 68 s6Step108HeadFvFresh=
    some (s6Step108HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876],776⟩,growRow 776 s6Step108HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step108HeadFvBefore s6Step108HeadFvAfter s6Step108HeadFvRow 68 s6Step108HeadFvFresh
    s6Step108HeadFv_distinct s6Step108HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step108HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step108HeadFvRow.payload++s6Step108HeadFvFresh) s6Step108HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step108HeadG_Incoming : rowsOwned s6Step108HeadGBefore [s6Step108HeadGRow,s6Step108HeadFRow,s6Step108HeadGvRow,s6Step108HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step108HeadGRow,s6Step108HeadFRow,s6Step108HeadGvRow,s6Step108HeadFvRow] 0 s6Step108HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step108HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step108HeadG_Outgoing : rowsOwned s6Step108HeadFvAfter [s6Step108HeadGOut,s6Step108HeadFOut,s6Step108HeadGvOut,s6Step108HeadFvOut] :=
  hmrRows_owned_drop s6Step108HeadFvAfter [s6Step108HeadGOut,s6Step108HeadFOut,s6Step108HeadGvOut,s6Step108HeadFvOut] 0 s6Step108HeadBank_outgoingOwned

private theorem s6Step108HeadG_distinct : (s6Step108HeadGRow.sign::s6Step108HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step108HeadG_owned : (s6Step108HeadGRow.sign::s6Step108HeadGRow.payload).toFinset⊆s6Step108HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step108HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step108HeadG_reserved : s6Step108HeadGBefore.reserve s6Step108HeadGFresh.toFinset=some s6Step108HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step108HeadGFresh,arenaWires]
  · norm_num [s6Step108HeadGBefore,s6Step108HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step108HeadGBefore s6Step108HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step108HeadGFresh rfl rfl
    · norm_num [s6Step108HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step108HeadG_checked : planRowResizeLog s6Step108HeadGBefore s6Step108HeadGRow 216 s6Step108HeadGFresh=
    some (s6Step108HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 818],777⟩,growRow 777 s6Step108HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step108HeadGBefore s6Step108HeadGAfter s6Step108HeadGRow 216 s6Step108HeadGFresh
    s6Step108HeadG_distinct s6Step108HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step108HeadG_reserved
  have rowEq : WindowRow.mk (s6Step108HeadGRow.payload++s6Step108HeadGFresh) s6Step108HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 818],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step108HeadGvBefore : Arena := s6Step108HeadFAfter

private theorem s6Step108HeadGv_Incoming : rowsOwned s6Step108HeadGvBefore [s6Step108HeadGvRow,s6Step108HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step108HeadGRow,s6Step108HeadFRow,s6Step108HeadGvRow,s6Step108HeadFvRow] 2 s6Step108HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step108HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step108HeadGv_Outgoing : rowsOwned s6Step108HeadFvAfter [s6Step108HeadGvOut,s6Step108HeadFvOut] :=
  hmrRows_owned_drop s6Step108HeadFvAfter [s6Step108HeadGOut,s6Step108HeadFOut,s6Step108HeadGvOut,s6Step108HeadFvOut] 2 s6Step108HeadBank_outgoingOwned

private theorem s6Step108HeadGv_distinct : (s6Step108HeadGvRow.sign::s6Step108HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step108HeadGv_owned : (s6Step108HeadGvRow.sign::s6Step108HeadGvRow.payload).toFinset⊆s6Step108HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step108HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step108HeadGv_reserved : s6Step108HeadGvBefore.reserve s6Step108HeadGvFresh.toFinset=some s6Step108HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step108HeadGvFresh,arenaWires]
  · norm_num [s6Step108HeadGvBefore,s6Step108HeadFAfter,s6Step108HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step108HeadGvBefore s6Step108HeadGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step108HeadGvFresh rfl rfl
    · norm_num [s6Step108HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step108HeadGv_checked : planRowResizeLog s6Step108HeadGvBefore s6Step108HeadGvRow 68 s6Step108HeadGvFresh=
    some (s6Step108HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 864],775⟩,growRow 775 s6Step108HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step108HeadGvBefore s6Step108HeadGvAfter s6Step108HeadGvRow 68 s6Step108HeadGvFresh
    s6Step108HeadGv_distinct s6Step108HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step108HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step108HeadGvRow.payload++s6Step108HeadGvFresh) s6Step108HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 864],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step108HeadBank_rows : planWindowRowsLog s6Step108HeadGBefore [(s6Step108HeadGRow,216),(s6Step108HeadFRow,216),(s6Step108HeadGvRow,68),(s6Step108HeadFvRow,68)] [s6Step108HeadGFresh,s6Step108HeadFFresh,s6Step108HeadGvFresh,s6Step108HeadFvFresh]=
    some (s6Step108HeadFvAfter,[s6Step108HeadGOut,s6Step108HeadFOut,s6Step108HeadGvOut,s6Step108HeadFvOut],(growRow 777 s6Step108HeadGFresh ++ (growRow 795 s6Step108HeadFFresh ++ (growRow 775 s6Step108HeadGvFresh ++ (growRow 776 s6Step108HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step108HeadFvAfter [] []=some (s6Step108HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step108HeadFvBefore s6Step108HeadFvAfter s6Step108HeadFvAfter
    s6Step108HeadFvRow s6Step108HeadFvOut 68 s6Step108HeadFvFresh [] [] []
    (growRow 776 s6Step108HeadFvFresh) ([]) s6Step108HeadFv_Incoming s6Step108HeadFv_checked h4 s6Step108HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step108HeadGvBefore s6Step108HeadGvAfter s6Step108HeadFvAfter
    s6Step108HeadGvRow s6Step108HeadGvOut 68 s6Step108HeadGvFresh [(s6Step108HeadFvRow,68)] [s6Step108HeadFvFresh] [s6Step108HeadFvOut]
    (growRow 775 s6Step108HeadGvFresh) ((growRow 776 s6Step108HeadFvFresh ++ [])) s6Step108HeadGv_Incoming s6Step108HeadGv_checked h3 s6Step108HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step108HeadFBefore s6Step108HeadFAfter s6Step108HeadFvAfter
    s6Step108HeadFRow s6Step108HeadFOut 216 s6Step108HeadFFresh [(s6Step108HeadGvRow,68),(s6Step108HeadFvRow,68)] [s6Step108HeadGvFresh,s6Step108HeadFvFresh] [s6Step108HeadGvOut,s6Step108HeadFvOut]
    (growRow 795 s6Step108HeadFFresh) ((growRow 775 s6Step108HeadGvFresh ++ (growRow 776 s6Step108HeadFvFresh ++ []))) s6Step108HeadF_Incoming s6Step108HeadF_checked h2 s6Step108HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step108HeadGBefore s6Step108HeadGAfter s6Step108HeadFvAfter
    s6Step108HeadGRow s6Step108HeadGOut 216 s6Step108HeadGFresh [(s6Step108HeadFRow,216),(s6Step108HeadGvRow,68),(s6Step108HeadFvRow,68)] [s6Step108HeadFFresh,s6Step108HeadGvFresh,s6Step108HeadFvFresh] [s6Step108HeadFOut,s6Step108HeadGvOut,s6Step108HeadFvOut]
    (growRow 777 s6Step108HeadGFresh) ((growRow 795 s6Step108HeadFFresh ++ (growRow 775 s6Step108HeadGvFresh ++ (growRow 776 s6Step108HeadFvFresh ++ [])))) s6Step108HeadG_Incoming s6Step108HeadG_checked h1 s6Step108HeadG_Outgoing
  exact h0

private theorem s6Step108HeadBank_checked : compileHmrBankResizeLog .headroom s6Step108HeadGBefore ⟨s6Step108HeadFRow,s6Step108HeadGRow,s6Step108HeadFvRow,s6Step108HeadGvRow⟩ ⟨216,216,68,68⟩ [s6Step108HeadGFresh,s6Step108HeadFFresh,s6Step108HeadGvFresh,s6Step108HeadFvFresh]=
    some (s6Step108HeadFvAfter,⟨s6Step108HeadFOut,s6Step108HeadGOut,s6Step108HeadFvOut,s6Step108HeadGvOut⟩,(growRow 777 s6Step108HeadGFresh ++ (growRow 795 s6Step108HeadFFresh ++ (growRow 775 s6Step108HeadGvFresh ++ (growRow 776 s6Step108HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step108HeadBank_rows]
  rfl

private theorem s6Step108Front_checked : compileHmrSourceFrontLog s6Step108EntryFBefore s6Step108FrontBank 215 67 ⟨214,214,68,67⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step108FrontLog=some s6Step108FrontPlan := by
  have pairEq : s6Step108FrontPair=⟨s6Step108HeadFRow,s6Step108HeadGRow,s6Step108HeadFvRow,s6Step108HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step108FrontHead=⟨s6Step108ExitFRow,s6Step108ExitGRow,s6Step108ExitFvRow,s6Step108ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step108Add0A=s6Step108FrontHead.f.wires := by decide +kernel
  have gEq : s6Step108Add0B=s6Step108FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step108Add1A=s6Step108FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step108Add1B=s6Step108FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step108EntryFBefore s6Step108FrontBank 215 67 ⟨214,214,68,67⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step108FrontLog s6Step108FrontPlan
  · exact s6Step108Front_entry
  · exact s6Step108EntryBank_checked
  · exact s6Step108Front_sigma
  · rfl
  · exact s6Step108Front_branch
  · rfl
  · simpa only [s6Step108FrontPlan,pairEq] using s6Step108HeadBank_checked
  · simpa only [s6Step108FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step108F4_checked
  · exact s6Step108Counter_checked
  · rfl
  · simpa only [s6Step108FrontPlan,headEq] using s6Step108ExitBank_checked

private theorem s6Step108Complete_explicit_checked : compileHmrEarlyStepLog s6Step108EntryFBefore s6Step108FrontBank 215 67 ⟨214,214,68,67⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step108CompleteLog=some s6Step108CompletePlan := by
  let Q := s6Step108EarlyControlPlan
  have hq := s6Step108EarlyControl_plan_checked
  have fv1 : s6Step108CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step108CompleteOut.fv.payload[2]?.getD s6Step108CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step108CompleteOut.fv.payload[3]?.getD s6Step108CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step108CompleteOut.fv.payload[4]?.getD s6Step108CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step108EntryFBefore s6Step108EarlyControlArena s6Step108FrontBank 215 67 ⟨214,214,68,67⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step108CompleteLog s6Step108FrontPlan Q
    s6Step108Front_checked s6Step108Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step108Complete_owned s6Step108Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step108EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 890 s6Step108CompleteOut.fv.second (s6Step108CompleteOut.fv.payload[2]?.getD s6Step108CompleteOut.fv.sign) (s6Step108CompleteOut.fv.payload[3]?.getD s6Step108CompleteOut.fv.sign) (s6Step108CompleteOut.fv.payload[4]?.getD s6Step108CompleteOut.fv.sign) 793 35 s6Step108EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep108Arena : Arena := s6Step108EntryFBefore
def s6PrivateStep108Bank : WindowBank := s6Step108FrontBank
def s6PrivateStep108Spec : HmrSourceWalkStepLog := ⟨215,67,⟨214,214,68,67⟩,35,.early s6Step108CompleteLog⟩
def s6PrivateStep108Plan : HmrSourceStepPlan := .early s6Step108CompletePlan
theorem s6PrivateStep108_source : s6PrivateStep108Spec=s6ObservedLogs96[12] := rfl
theorem s6PrivateStep108_checked : compileHmrSourceStepLog s6PrivateStep108Arena s6PrivateStep108Bank
    s6PrivateStep108Spec.fgWidth s6PrivateStep108Spec.vWidth s6PrivateStep108Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840]
    6 498 108 s6PrivateStep108Spec.need none s6PrivateStep108Spec.log=some s6PrivateStep108Plan := by
  change compileHmrSourceStepLog s6Step108EntryFBefore s6Step108FrontBank 215 67 ⟨214,214,68,67⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 6 498 108 35 none (.early s6Step108CompleteLog)=some (.early s6Step108CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 108<498)]
  rw [s6Step108Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
