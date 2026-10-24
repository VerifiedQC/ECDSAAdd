import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep103
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

private def s6Step105CompleteMoves : List (Wire × Wire) := []

private def s6Step105EarlyControlLog : HmrEarlyControlLog := ⟨[876, 803, 890, 863, 823],[864],[813],[879, 865, 796, 891, 903, 885],[]⟩

private def s6Step105FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [845], []],[[863], [890], [876], [803]],[[], [], [], []]⟩,[907],[828],[823],[864],[813, 879, 865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[813, 879, 865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[823, 864, 813, 879]⟩

private def s6Step105CompleteLog : HmrEarlyStepLog := ⟨s6Step105FrontLog,s6Step105CompleteMoves,s6Step105EarlyControlLog⟩

private def s6Step105ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471],795⟩

private def s6Step105ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845],776⟩

private def s6Step105ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215],777⟩

private def s6Step105ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784],775⟩

private def s6Step105FrontOut : WindowBank := ⟨s6Step105ExitFOut,s6Step105ExitGOut,s6Step105ExitFvOut,s6Step105ExitGvOut⟩

private def s6Step105CompleteOut : WindowBank := s6Step105FrontOut.repacked s6Step105CompleteMoves

private def s6Step105EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step105EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step105EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step105EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step105EarlyControlPositiveArena,[864],s6Step105EarlyControlEqualityArena,[813],⟨⟨907,false⟩,[⟨⟨864,false⟩,813⟩]⟩⟩

private def s6Step105EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step105EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step105EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step105EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step105EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step105EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step105EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,876⟩,⟨⟨772,false⟩,803⟩,⟨⟨771,false⟩,890⟩,⟨⟨770,false⟩,863⟩,⟨⟨769,false⟩,823⟩]⟩

private def s6Step105EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step105EarlyControlZeroArena,s6Step105EarlyControlZeroPlan,s6Step105EarlyControlClassPlan,s6Step105EarlyControlFlagArena,s6Step105EarlyControlFittedArena,s6Step105EarlyControlHistoryArena,s6Step105EarlyControlSigmaArena,s6Step105EarlyControlOutputArena,s6Step105EarlyControlLog⟩

private def s6Step105CounterWork : List Wire := [823, 864, 813, 879]

private theorem s6Step105Counter_bounded : s6Step105CounterWork.toFinset⊆arenaWires := by norm_num [s6Step105CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step105HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step105CounterDuring : Arena := ⟨s6Step105HeadFvAfter.live∪s6Step105CounterWork.toFinset,Finset.union_subset s6Step105HeadFvAfter.bounded s6Step105Counter_bounded⟩

private def s6Step105EntryFFresh : List Wire := []

private def s6Step105EntryFvFresh : List Wire := [845]

private def s6Step105EntryGFresh : List Wire := []

private def s6Step105EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step105EntryGvAfter : Arena := s6Step105EntryFvAfter

private def s6Step105EntryGvFresh : List Wire := []

private def s6Step105ExitFExtra : List Wire := [890]

private def s6Step105ExitFvExtra : List Wire := [803]

private def s6Step105ExitGExtra : List Wire := [863]

private def s6Step105ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step105ExitGvExtra : List Wire := [876]

private def s6Step105Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step105Add0Work : List Wire := [813, 879, 865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step105Add0_bounded : s6Step105Add0Work.toFinset⊆arenaWires := by
  have h : s6Step105Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step105Add0During : Arena := ⟨s6Step105Add0Arena.live∪s6Step105Add0Work.toFinset,Finset.union_subset s6Step105Add0Arena.bounded s6Step105Add0_bounded⟩

private def s6Step105Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step105Add1Work : List Wire := [813, 879, 865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step105Add1_bounded : s6Step105Add1Work.toFinset⊆arenaWires := by
  have h : s6Step105Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step105Add1During : Arena := ⟨s6Step105Add1Arena.live∪s6Step105Add1Work.toFinset,Finset.union_subset s6Step105Add1Arena.bounded s6Step105Add1_bounded⟩

private def s6Step105F4FlagArena : Arena := ⟨s6Step105HeadFvAfter.live∪{823},Finset.union_subset s6Step105HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step105F4Plan : HmrHybridF4Plan := ⟨s6Step105F4FlagArena,[823],s6Step105Add0Arena,[864],s6Step105Add0During,s6Step105Add0Work,s6Step105Add1During,s6Step105Add1Work⟩

private def s6Step105HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 890],795⟩

private def s6Step105HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 803],776⟩

private def s6Step105HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 863],777⟩

private def s6Step105HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 876],775⟩

private def s6Step105FrontHead : WindowBank := ⟨s6Step105HeadFOut,s6Step105HeadGOut,s6Step105HeadFvOut,s6Step105HeadGvOut⟩

private def s6Step105EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471],795⟩

private def s6Step105EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845],776⟩

private def s6Step105EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215],777⟩

private def s6Step105EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784],775⟩

private def s6Step105FrontPair : WindowBank := ⟨s6Step105EntryFOut,s6Step105EntryGOut,s6Step105EntryFvOut,s6Step105EntryGvOut⟩

private def s6Step105FrontSigmaArena : Arena := ⟨s6Step105EntryGvAfter.live∪{907},Finset.union_subset s6Step105EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step105HeadFFresh : List Wire := [890]

private def s6Step105HeadFvFresh : List Wire := [803]

private def s6Step105HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step105HeadGFresh : List Wire := [863]

private def s6Step105HeadGvFresh : List Wire := [876]

private def s6Step105FrontPlan : HmrSourceFront := ⟨s6Step105EntryGvAfter,s6Step105FrontPair,(growRow 795 s6Step105EntryFFresh ++ (growRow 777 s6Step105EntryGFresh ++ (growRow 776 s6Step105EntryFvFresh ++ (growRow 775 s6Step105EntryGvFresh ++ [])))),s6Step105FrontSigmaArena,[907],s6Step105HeadGBefore,[828],
  s6Step105HeadFvAfter,s6Step105FrontHead,(growRow 777 s6Step105HeadGFresh ++ (growRow 795 s6Step105HeadFFresh ++ (growRow 775 s6Step105HeadGvFresh ++ (growRow 776 s6Step105HeadFvFresh ++ [])))),s6Step105F4Plan,s6Step105CounterDuring,s6Step105CounterWork,s6Step105ExitGvAfter,s6Step105FrontOut,(shrinkRow 777 s6Step105ExitGExtra ++ (shrinkRow 795 s6Step105ExitFExtra ++ (shrinkRow 776 s6Step105ExitFvExtra ++ (shrinkRow 775 s6Step105ExitGvExtra ++ []))))⟩

private def s6Step105CompletePlan : HmrEarlyStepPlan := ⟨s6Step105FrontPlan,s6Step105EarlyControlArena,s6Step105EarlyControlPlan,s6Step105CompleteMoves⟩

private theorem s6Step105Complete_apart : List.Disjoint (s6Step105CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [907, 828, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] := by
  have nd : ((s6Step105CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[907, 828, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step105Complete_owned : (s6Step105CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step105EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step105EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step105Complete_repack : s6Step105ExitGvAfter.checkRepack s6Step105CompleteMoves=some s6Step105EarlyControlArena := by rfl

private theorem s6Step105EarlyControl_branchOwned : ([828] : List Wire).toFinset⊆s6Step105EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step105EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step105EarlyControl_branch : compileHmrBranchRetirement s6Step105EarlyControlSigmaArena 828=some s6Step105EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step105EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step105EarlyControlSigmaArena s6Step105EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [828] rfl rfl
    decide +kernel

private theorem s6Step105EarlyControl_classEqualityBorrow : s6Step105EarlyControlPositiveArena.checkBorrow (([907, 864] : List Wire).length-1) s6Step105EarlyControlLog.classWork=some s6Step105EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step105EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step105EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step105EarlyControlPositiveArena s6Step105EarlyControlEqualityArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step105EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step105EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step105EarlyControl_classEqualityOwned : ([907, 864] : List Wire).toFinset⊆s6Step105EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step105EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step105EarlyControl_classEquality : compileHmrEqualityLog s6Step105EarlyControlPositiveArena [907, 864] 0 s6Step105EarlyControlLog.classWork=some (s6Step105EarlyControlEqualityArena,s6Step105EarlyControlLog.classWork,s6Step105EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step105EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step105EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step105EarlyControl_classOwned : ([769, 823, 907] : List Wire).toFinset⊆s6Step105EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step105EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step105EarlyControl_positiveBorrow : s6Step105EarlyControlZeroArena.checkBorrow (1) s6Step105EarlyControlLog.positiveWork=some s6Step105EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step105EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step105EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step105EarlyControlZeroArena s6Step105EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step105EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step105EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step105EarlyControl_class : compileHmrSourceClassLog s6Step105EarlyControlZeroArena false 769 s6Step105EarlyControlZeroPlan.top 0 907 s6Step105EarlyControlLog.positiveWork s6Step105EarlyControlLog.classWork=some s6Step105EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step105EarlyControlClassPlan s6Step105EarlyControlZeroArena false 769 s6Step105EarlyControlZeroPlan.top 0 907
  constructor
  · decide +kernel
  · exact s6Step105EarlyControl_classOwned
  · exact s6Step105EarlyControl_positiveBorrow
  · exact s6Step105EarlyControl_classEquality

private theorem s6Step105EarlyControl_entryRecordOwned : ([828, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).toFinset⊆s6Step105EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step105EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step105EarlyControl_entrySigmaOwned : ([907, 254] : List Wire).toFinset⊆s6Step105EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step105EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step105EarlyControl_fitBorrow : s6Step105EarlyControlFlagArena.checkBorrow ((35-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).length)) s6Step105EarlyControlLog.recordFresh=some s6Step105EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step105EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step105EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step105EarlyControlFittedArena,s6Step105EarlyControlFlagArena,s6Step105EarlyControlLog,arenaWires]

private theorem s6Step105EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).toFinset⊆s6Step105EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step105EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step105EarlyControl_fit : compileHmrRecordGrowLog s6Step105EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step105EarlyControlLog.recordFresh=some s6Step105EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step105EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step105EarlyControl_fitBorrow

private theorem s6Step105EarlyControl_flagsBorrow : s6Step105EarlyControlEqualityArena.checkBorrow (6) s6Step105EarlyControlLog.flagWork=some s6Step105EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step105EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step105EarlyControlEqualityArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step105EarlyControlEqualityArena s6Step105EarlyControlFlagArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step105EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step105EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step105EarlyControl_flagsOwned : ([813, 253, 252, 251] : List Wire).toFinset⊆s6Step105EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step105EarlyControlEqualityArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step105EarlyControl_flags : compileHmrFlagsLog s6Step105EarlyControlClassPlan.equalityArena s6Step105EarlyControlClassPlan.equality.top 253 252 251 s6Step105EarlyControlLog.flagWork=some s6Step105EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step105EarlyControl_flagsOwned⟩
  · exact s6Step105EarlyControl_flagsBorrow

private theorem s6Step105EarlyControl_historyBorrow : s6Step105EarlyControlArena.checkBorrow ((35-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).length)) s6Step105EarlyControlLog.recordFresh=some s6Step105EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step105EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step105EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step105EarlyControlArena s6Step105EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step105EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step105EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step105EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).toFinset⊆s6Step105EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step105EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step105EarlyControl_history : compileHmrRecordGrowLog s6Step105EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step105EarlyControlLog.recordFresh=some s6Step105EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step105EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step105EarlyControl_historyBorrow

private theorem s6Step105EarlyControl_sigmaOwned : ([254, 907] : List Wire).toFinset⊆s6Step105EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step105EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step105EarlyControl_sigmaReleaseOwned : ([907] : List Wire).toFinset⊆s6Step105EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step105EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step105EarlyControl_sigmaRelease : s6Step105EarlyControlHistoryArena.release {907} (fun _ => false)=some s6Step105EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step105EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step105EarlyControlHistoryArena s6Step105EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [907] rfl rfl
    decide +kernel

private theorem s6Step105EarlyControl_sigma : compileHmrSigmaDropLog s6Step105EarlyControlHistoryArena false 0 0 254 907 []=some s6Step105EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step105EarlyControl_sigmaOwned⟩
  · exact s6Step105EarlyControl_sigmaRelease

private theorem s6Step105EarlyControl_zeroBorrow : s6Step105EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step105EarlyControlLog.zeroWork=some s6Step105EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step105EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step105EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step105EarlyControlArena s6Step105EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step105EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step105EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step105EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step105EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step105EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step105EarlyControl_zero : compileHmrEqualityLog s6Step105EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step105EarlyControlLog.zeroWork=some (s6Step105EarlyControlZeroArena,s6Step105EarlyControlLog.zeroWork,s6Step105EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step105EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step105EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step105EarlyControl_logged : s6Step105EarlyControlPlan.Logged s6Step105EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 907 254 253 252 251 828 35 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step105EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step105EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step105EarlyControl_zero
  · exact s6Step105EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step105EarlyControl_flags
  · exact s6Step105EarlyControl_fit
  · exact s6Step105EarlyControl_history
  · exact s6Step105EarlyControl_sigma
  · exact s6Step105EarlyControl_branch

private theorem s6Step105EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step105EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 907 254 253 252 251 828 35 s6Step105EarlyControlLog=some s6Step105EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step105EarlyControlPlan s6Step105EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 907 254 253 252 251 828 35 s6Step105EarlyControl_logged

private def s6Step105EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step105EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471],795⟩

private def s6Step105EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857],776⟩

private def s6Step105EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215],777⟩

private def s6Step105EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784],775⟩

private def s6Step105FrontBank : WindowBank := ⟨s6Step105EntryFRow,s6Step105EntryGRow,s6Step105EntryFvRow,s6Step105EntryGvRow⟩

private def s6Step105Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 890, 795]

private def s6Step105Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 863, 777]

private def s6Step105Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 803, 776]

private def s6Step105Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 876, 775]

private theorem s6Step105Counter_apart : Disjoint s6Step105HeadFvAfter.live s6Step105CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step105HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step105Counter_borrowed : s6Step105HeadFvAfter.checkBorrow 4 s6Step105CounterWork=some s6Step105CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step105HeadFvAfter s6Step105CounterDuring s6Step105CounterWork.toFinset s6Step105Counter_bounded s6Step105Counter_apart rfl

private theorem s6Step105Counter_owned : (907::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step105HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step105HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step105Counter_checked : compileHmrCounterStepLog s6Step105HeadFvAfter true 907 [774, 773, 772, 771, 770, 769] s6Step105CounterWork=some s6Step105CounterDuring := by
  have owned : ∀q∈907::[774, 773, 772, 771, 770, 769],q∈s6Step105HeadFvAfter.live := fun q hq => s6Step105Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step105Counter_borrowed

private def s6Step105EntryFAfter : Arena := s6Step105EntryFBefore

private theorem s6Step105EntryBank_incomingDistinct : ([s6Step105EntryFRow,s6Step105EntryGRow,s6Step105EntryFvRow,s6Step105EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step105EntryF_Incoming : rowsOwned s6Step105EntryFBefore [s6Step105EntryFRow,s6Step105EntryGRow,s6Step105EntryFvRow,s6Step105EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step105EntryFRow,s6Step105EntryGRow,s6Step105EntryFvRow,s6Step105EntryGvRow] 0 s6Step105EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step105EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step105EntryBank_outgoingOwned : rowsOwned s6Step105EntryGvAfter [s6Step105EntryFOut,s6Step105EntryGOut,s6Step105EntryFvOut,s6Step105EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step105EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step105EntryF_Outgoing : rowsOwned s6Step105EntryGvAfter [s6Step105EntryFOut,s6Step105EntryGOut,s6Step105EntryFvOut,s6Step105EntryGvOut] :=
  hmrRows_owned_drop s6Step105EntryGvAfter [s6Step105EntryFOut,s6Step105EntryGOut,s6Step105EntryFvOut,s6Step105EntryGvOut] 0 s6Step105EntryBank_outgoingOwned

private theorem s6Step105EntryF_distinct : (s6Step105EntryFRow.sign::s6Step105EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step105EntryF_owned : (s6Step105EntryFRow.sign::s6Step105EntryFRow.payload).toFinset⊆s6Step105EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step105EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step105EntryF_reserved : s6Step105EntryFBefore.reserve s6Step105EntryFFresh.toFinset=some s6Step105EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step105EntryFFresh,arenaWires]
  · norm_num [s6Step105EntryFBefore,s6Step105EntryFFresh,arenaWires]
  · simp only [s6Step105EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step105EntryF_checked : planRowResizeLog s6Step105EntryFBefore s6Step105EntryFRow 216 s6Step105EntryFFresh=
    some (s6Step105EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471],795⟩,growRow 795 s6Step105EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step105EntryFBefore s6Step105EntryFAfter s6Step105EntryFRow 216 s6Step105EntryFFresh
    s6Step105EntryF_distinct s6Step105EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step105EntryF_reserved
  have rowEq : WindowRow.mk (s6Step105EntryFRow.payload++s6Step105EntryFFresh) s6Step105EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step105EntryFvBefore : Arena := s6Step105EntryFBefore

private theorem s6Step105EntryFv_Incoming : rowsOwned s6Step105EntryFvBefore [s6Step105EntryFvRow,s6Step105EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step105EntryFRow,s6Step105EntryGRow,s6Step105EntryFvRow,s6Step105EntryGvRow] 2 s6Step105EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step105EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step105EntryFv_Outgoing : rowsOwned s6Step105EntryGvAfter [s6Step105EntryFvOut,s6Step105EntryGvOut] :=
  hmrRows_owned_drop s6Step105EntryGvAfter [s6Step105EntryFOut,s6Step105EntryGOut,s6Step105EntryFvOut,s6Step105EntryGvOut] 2 s6Step105EntryBank_outgoingOwned

private theorem s6Step105EntryFv_distinct : (s6Step105EntryFvRow.sign::s6Step105EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step105EntryFv_owned : (s6Step105EntryFvRow.sign::s6Step105EntryFvRow.payload).toFinset⊆s6Step105EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step105EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step105EntryFv_reserved : s6Step105EntryFvBefore.reserve s6Step105EntryFvFresh.toFinset=some s6Step105EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step105EntryFvFresh,arenaWires]
  · norm_num [s6Step105EntryFvBefore,s6Step105EntryFBefore,s6Step105EntryFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step105EntryFvBefore s6Step105EntryFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step105EntryFvFresh rfl rfl
    · norm_num [s6Step105EntryFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step105EntryFv_checked : planRowResizeLog s6Step105EntryFvBefore s6Step105EntryFvRow 66 s6Step105EntryFvFresh=
    some (s6Step105EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845],776⟩,growRow 776 s6Step105EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step105EntryFvBefore s6Step105EntryFvAfter s6Step105EntryFvRow 66 s6Step105EntryFvFresh
    s6Step105EntryFv_distinct s6Step105EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step105EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step105EntryFvRow.payload++s6Step105EntryFvFresh) s6Step105EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step105EntryGAfter : Arena := s6Step105EntryFBefore

private def s6Step105EntryGBefore : Arena := s6Step105EntryFBefore

private theorem s6Step105EntryG_Incoming : rowsOwned s6Step105EntryGBefore [s6Step105EntryGRow,s6Step105EntryFvRow,s6Step105EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step105EntryFRow,s6Step105EntryGRow,s6Step105EntryFvRow,s6Step105EntryGvRow] 1 s6Step105EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step105EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step105EntryG_Outgoing : rowsOwned s6Step105EntryGvAfter [s6Step105EntryGOut,s6Step105EntryFvOut,s6Step105EntryGvOut] :=
  hmrRows_owned_drop s6Step105EntryGvAfter [s6Step105EntryFOut,s6Step105EntryGOut,s6Step105EntryFvOut,s6Step105EntryGvOut] 1 s6Step105EntryBank_outgoingOwned

private theorem s6Step105EntryG_distinct : (s6Step105EntryGRow.sign::s6Step105EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step105EntryG_owned : (s6Step105EntryGRow.sign::s6Step105EntryGRow.payload).toFinset⊆s6Step105EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step105EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step105EntryG_reserved : s6Step105EntryGBefore.reserve s6Step105EntryGFresh.toFinset=some s6Step105EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step105EntryGFresh,arenaWires]
  · norm_num [s6Step105EntryGBefore,s6Step105EntryFBefore,s6Step105EntryGFresh,arenaWires]
  · simp only [s6Step105EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step105EntryG_checked : planRowResizeLog s6Step105EntryGBefore s6Step105EntryGRow 216 s6Step105EntryGFresh=
    some (s6Step105EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215],777⟩,growRow 777 s6Step105EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step105EntryGBefore s6Step105EntryGAfter s6Step105EntryGRow 216 s6Step105EntryGFresh
    s6Step105EntryG_distinct s6Step105EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step105EntryG_reserved
  have rowEq : WindowRow.mk (s6Step105EntryGRow.payload++s6Step105EntryGFresh) s6Step105EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step105EntryGvBefore : Arena := s6Step105EntryFvAfter

private theorem s6Step105EntryGv_Incoming : rowsOwned s6Step105EntryGvBefore [s6Step105EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step105EntryFRow,s6Step105EntryGRow,s6Step105EntryFvRow,s6Step105EntryGvRow] 3 s6Step105EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step105EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step105EntryGv_Outgoing : rowsOwned s6Step105EntryGvAfter [s6Step105EntryGvOut] :=
  hmrRows_owned_drop s6Step105EntryGvAfter [s6Step105EntryFOut,s6Step105EntryGOut,s6Step105EntryFvOut,s6Step105EntryGvOut] 3 s6Step105EntryBank_outgoingOwned

private theorem s6Step105EntryGv_distinct : (s6Step105EntryGvRow.sign::s6Step105EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step105EntryGv_owned : (s6Step105EntryGvRow.sign::s6Step105EntryGvRow.payload).toFinset⊆s6Step105EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step105EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step105EntryGv_reserved : s6Step105EntryGvBefore.reserve s6Step105EntryGvFresh.toFinset=some s6Step105EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step105EntryGvFresh,arenaWires]
  · norm_num [s6Step105EntryGvBefore,s6Step105EntryFvAfter,s6Step105EntryGvFresh,arenaWires]
  · simp only [s6Step105EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step105EntryGv_checked : planRowResizeLog s6Step105EntryGvBefore s6Step105EntryGvRow 66 s6Step105EntryGvFresh=
    some (s6Step105EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784],775⟩,growRow 775 s6Step105EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step105EntryGvBefore s6Step105EntryGvAfter s6Step105EntryGvRow 66 s6Step105EntryGvFresh
    s6Step105EntryGv_distinct s6Step105EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step105EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step105EntryGvRow.payload++s6Step105EntryGvFresh) s6Step105EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step105EntryBank_rows : planWindowRowsLog s6Step105EntryFBefore [(s6Step105EntryFRow,216),(s6Step105EntryGRow,216),(s6Step105EntryFvRow,66),(s6Step105EntryGvRow,66)] [s6Step105EntryFFresh,s6Step105EntryGFresh,s6Step105EntryFvFresh,s6Step105EntryGvFresh]=
    some (s6Step105EntryGvAfter,[s6Step105EntryFOut,s6Step105EntryGOut,s6Step105EntryFvOut,s6Step105EntryGvOut],(growRow 795 s6Step105EntryFFresh ++ (growRow 777 s6Step105EntryGFresh ++ (growRow 776 s6Step105EntryFvFresh ++ (growRow 775 s6Step105EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step105EntryGvAfter [] []=some (s6Step105EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step105EntryGvBefore s6Step105EntryGvAfter s6Step105EntryGvAfter
    s6Step105EntryGvRow s6Step105EntryGvOut 66 s6Step105EntryGvFresh [] [] []
    (growRow 775 s6Step105EntryGvFresh) ([]) s6Step105EntryGv_Incoming s6Step105EntryGv_checked h4 s6Step105EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step105EntryFvBefore s6Step105EntryFvAfter s6Step105EntryGvAfter
    s6Step105EntryFvRow s6Step105EntryFvOut 66 s6Step105EntryFvFresh [(s6Step105EntryGvRow,66)] [s6Step105EntryGvFresh] [s6Step105EntryGvOut]
    (growRow 776 s6Step105EntryFvFresh) ((growRow 775 s6Step105EntryGvFresh ++ [])) s6Step105EntryFv_Incoming s6Step105EntryFv_checked h3 s6Step105EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step105EntryGBefore s6Step105EntryGAfter s6Step105EntryGvAfter
    s6Step105EntryGRow s6Step105EntryGOut 216 s6Step105EntryGFresh [(s6Step105EntryFvRow,66),(s6Step105EntryGvRow,66)] [s6Step105EntryFvFresh,s6Step105EntryGvFresh] [s6Step105EntryFvOut,s6Step105EntryGvOut]
    (growRow 777 s6Step105EntryGFresh) ((growRow 776 s6Step105EntryFvFresh ++ (growRow 775 s6Step105EntryGvFresh ++ []))) s6Step105EntryG_Incoming s6Step105EntryG_checked h2 s6Step105EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step105EntryFBefore s6Step105EntryFAfter s6Step105EntryGvAfter
    s6Step105EntryFRow s6Step105EntryFOut 216 s6Step105EntryFFresh [(s6Step105EntryGRow,216),(s6Step105EntryFvRow,66),(s6Step105EntryGvRow,66)] [s6Step105EntryGFresh,s6Step105EntryFvFresh,s6Step105EntryGvFresh] [s6Step105EntryGOut,s6Step105EntryFvOut,s6Step105EntryGvOut]
    (growRow 795 s6Step105EntryFFresh) ((growRow 777 s6Step105EntryGFresh ++ (growRow 776 s6Step105EntryFvFresh ++ (growRow 775 s6Step105EntryGvFresh ++ [])))) s6Step105EntryF_Incoming s6Step105EntryF_checked h1 s6Step105EntryF_Outgoing
  exact h0

private theorem s6Step105EntryBank_checked : compileHmrBankResizeLog .entry s6Step105EntryFBefore ⟨s6Step105EntryFRow,s6Step105EntryGRow,s6Step105EntryFvRow,s6Step105EntryGvRow⟩ ⟨216,216,66,66⟩ [s6Step105EntryFFresh,s6Step105EntryGFresh,s6Step105EntryFvFresh,s6Step105EntryGvFresh]=
    some (s6Step105EntryGvAfter,⟨s6Step105EntryFOut,s6Step105EntryGOut,s6Step105EntryFvOut,s6Step105EntryGvOut⟩,(growRow 795 s6Step105EntryFFresh ++ (growRow 777 s6Step105EntryGFresh ++ (growRow 776 s6Step105EntryFvFresh ++ (growRow 775 s6Step105EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step105EntryBank_rows]
  rfl

private def s6Step105ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step105ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step105ExitFBefore : Arena := s6Step105ExitGAfter

private def s6Step105ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 890],795⟩

private def s6Step105ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 803],776⟩

private def s6Step105ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 863],777⟩

private def s6Step105ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 876],775⟩

private theorem s6Step105ExitBank_incomingDistinct : ([s6Step105ExitGRow,s6Step105ExitFRow,s6Step105ExitFvRow,s6Step105ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step105ExitF_Incoming : rowsOwned s6Step105ExitFBefore [s6Step105ExitFRow,s6Step105ExitFvRow,s6Step105ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step105ExitGRow,s6Step105ExitFRow,s6Step105ExitFvRow,s6Step105ExitGvRow] 1 s6Step105ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step105ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step105ExitBank_outgoingOwned : rowsOwned s6Step105ExitGvAfter [s6Step105ExitGOut,s6Step105ExitFOut,s6Step105ExitFvOut,s6Step105ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step105ExitGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step105ExitF_Outgoing : rowsOwned s6Step105ExitGvAfter [s6Step105ExitFOut,s6Step105ExitFvOut,s6Step105ExitGvOut] :=
  hmrRows_owned_drop s6Step105ExitGvAfter [s6Step105ExitGOut,s6Step105ExitFOut,s6Step105ExitFvOut,s6Step105ExitGvOut] 1 s6Step105ExitBank_outgoingOwned

private theorem s6Step105ExitF_distinct : (s6Step105ExitFRow.sign::s6Step105ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step105ExitF_owned : (s6Step105ExitFRow.sign::s6Step105ExitFRow.payload).toFinset⊆s6Step105ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step105ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step105ExitF_retired : s6Step105ExitFBefore.retireSet s6Step105ExitFExtra.toFinset=s6Step105ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step105ExitFBefore s6Step105ExitFAfter s6Step105ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step105ExitFBefore s6Step105ExitFAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step105ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step105ExitF_checked : planRowResizeLog s6Step105ExitFBefore s6Step105ExitFRow 216 []=
    some (s6Step105ExitFAfter,s6Step105ExitFOut,shrinkRow 795 s6Step105ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step105ExitFBefore s6Step105ExitFRow 216 s6Step105ExitF_distinct s6Step105ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step105ExitFRow.payload.take 216) s6Step105ExitFRow.sign=s6Step105ExitFOut := by decide +kernel
  have hi : s6Step105ExitFRow.payload.drop 216=s6Step105ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step105ExitF_retired] at result
  exact result

private def s6Step105ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step105ExitFvBefore : Arena := s6Step105ExitFAfter

private theorem s6Step105ExitFv_Incoming : rowsOwned s6Step105ExitFvBefore [s6Step105ExitFvRow,s6Step105ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step105ExitGRow,s6Step105ExitFRow,s6Step105ExitFvRow,s6Step105ExitGvRow] 2 s6Step105ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step105ExitFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step105ExitFv_Outgoing : rowsOwned s6Step105ExitGvAfter [s6Step105ExitFvOut,s6Step105ExitGvOut] :=
  hmrRows_owned_drop s6Step105ExitGvAfter [s6Step105ExitGOut,s6Step105ExitFOut,s6Step105ExitFvOut,s6Step105ExitGvOut] 2 s6Step105ExitBank_outgoingOwned

private theorem s6Step105ExitFv_distinct : (s6Step105ExitFvRow.sign::s6Step105ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step105ExitFv_owned : (s6Step105ExitFvRow.sign::s6Step105ExitFvRow.payload).toFinset⊆s6Step105ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step105ExitFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step105ExitFv_retired : s6Step105ExitFvBefore.retireSet s6Step105ExitFvExtra.toFinset=s6Step105ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step105ExitFvBefore s6Step105ExitFvAfter s6Step105ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step105ExitFvBefore s6Step105ExitFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step105ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step105ExitFv_checked : planRowResizeLog s6Step105ExitFvBefore s6Step105ExitFvRow 66 []=
    some (s6Step105ExitFvAfter,s6Step105ExitFvOut,shrinkRow 776 s6Step105ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step105ExitFvBefore s6Step105ExitFvRow 66 s6Step105ExitFv_distinct s6Step105ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step105ExitFvRow.payload.take 66) s6Step105ExitFvRow.sign=s6Step105ExitFvOut := by decide +kernel
  have hi : s6Step105ExitFvRow.payload.drop 66=s6Step105ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step105ExitFv_retired] at result
  exact result

private def s6Step105ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step105ExitG_Incoming : rowsOwned s6Step105ExitGBefore [s6Step105ExitGRow,s6Step105ExitFRow,s6Step105ExitFvRow,s6Step105ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step105ExitGRow,s6Step105ExitFRow,s6Step105ExitFvRow,s6Step105ExitGvRow] 0 s6Step105ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step105ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step105ExitG_Outgoing : rowsOwned s6Step105ExitGvAfter [s6Step105ExitGOut,s6Step105ExitFOut,s6Step105ExitFvOut,s6Step105ExitGvOut] :=
  hmrRows_owned_drop s6Step105ExitGvAfter [s6Step105ExitGOut,s6Step105ExitFOut,s6Step105ExitFvOut,s6Step105ExitGvOut] 0 s6Step105ExitBank_outgoingOwned

private theorem s6Step105ExitG_distinct : (s6Step105ExitGRow.sign::s6Step105ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step105ExitG_owned : (s6Step105ExitGRow.sign::s6Step105ExitGRow.payload).toFinset⊆s6Step105ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step105ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step105ExitG_retired : s6Step105ExitGBefore.retireSet s6Step105ExitGExtra.toFinset=s6Step105ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step105ExitGBefore s6Step105ExitGAfter s6Step105ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step105ExitGBefore s6Step105ExitGAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step105ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step105ExitG_checked : planRowResizeLog s6Step105ExitGBefore s6Step105ExitGRow 216 []=
    some (s6Step105ExitGAfter,s6Step105ExitGOut,shrinkRow 777 s6Step105ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step105ExitGBefore s6Step105ExitGRow 216 s6Step105ExitG_distinct s6Step105ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step105ExitGRow.payload.take 216) s6Step105ExitGRow.sign=s6Step105ExitGOut := by decide +kernel
  have hi : s6Step105ExitGRow.payload.drop 216=s6Step105ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step105ExitG_retired] at result
  exact result

private def s6Step105ExitGvBefore : Arena := s6Step105ExitFvAfter

private theorem s6Step105ExitGv_Incoming : rowsOwned s6Step105ExitGvBefore [s6Step105ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step105ExitGRow,s6Step105ExitFRow,s6Step105ExitFvRow,s6Step105ExitGvRow] 3 s6Step105ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step105ExitGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step105ExitGv_Outgoing : rowsOwned s6Step105ExitGvAfter [s6Step105ExitGvOut] :=
  hmrRows_owned_drop s6Step105ExitGvAfter [s6Step105ExitGOut,s6Step105ExitFOut,s6Step105ExitFvOut,s6Step105ExitGvOut] 3 s6Step105ExitBank_outgoingOwned

private theorem s6Step105ExitGv_distinct : (s6Step105ExitGvRow.sign::s6Step105ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step105ExitGv_owned : (s6Step105ExitGvRow.sign::s6Step105ExitGvRow.payload).toFinset⊆s6Step105ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step105ExitGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step105ExitGv_retired : s6Step105ExitGvBefore.retireSet s6Step105ExitGvExtra.toFinset=s6Step105ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step105ExitGvBefore s6Step105ExitGvAfter s6Step105ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step105ExitGvBefore s6Step105ExitGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step105ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step105ExitGv_checked : planRowResizeLog s6Step105ExitGvBefore s6Step105ExitGvRow 66 []=
    some (s6Step105ExitGvAfter,s6Step105ExitGvOut,shrinkRow 775 s6Step105ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step105ExitGvBefore s6Step105ExitGvRow 66 s6Step105ExitGv_distinct s6Step105ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step105ExitGvRow.payload.take 66) s6Step105ExitGvRow.sign=s6Step105ExitGvOut := by decide +kernel
  have hi : s6Step105ExitGvRow.payload.drop 66=s6Step105ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step105ExitGv_retired] at result
  exact result

private theorem s6Step105ExitBank_rows : planWindowRowsLog s6Step105ExitGBefore [(s6Step105ExitGRow,216),(s6Step105ExitFRow,216),(s6Step105ExitFvRow,66),(s6Step105ExitGvRow,66)] [[],[],[],[]]=
    some (s6Step105ExitGvAfter,[s6Step105ExitGOut,s6Step105ExitFOut,s6Step105ExitFvOut,s6Step105ExitGvOut],(shrinkRow 777 s6Step105ExitGExtra ++ (shrinkRow 795 s6Step105ExitFExtra ++ (shrinkRow 776 s6Step105ExitFvExtra ++ (shrinkRow 775 s6Step105ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step105ExitGvAfter [] []=some (s6Step105ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step105ExitGvBefore s6Step105ExitGvAfter s6Step105ExitGvAfter
    s6Step105ExitGvRow s6Step105ExitGvOut 66 [] [] [] []
    (shrinkRow 775 s6Step105ExitGvExtra) ([]) s6Step105ExitGv_Incoming s6Step105ExitGv_checked h4 s6Step105ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step105ExitFvBefore s6Step105ExitFvAfter s6Step105ExitGvAfter
    s6Step105ExitFvRow s6Step105ExitFvOut 66 [] [(s6Step105ExitGvRow,66)] [[]] [s6Step105ExitGvOut]
    (shrinkRow 776 s6Step105ExitFvExtra) ((shrinkRow 775 s6Step105ExitGvExtra ++ [])) s6Step105ExitFv_Incoming s6Step105ExitFv_checked h3 s6Step105ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step105ExitFBefore s6Step105ExitFAfter s6Step105ExitGvAfter
    s6Step105ExitFRow s6Step105ExitFOut 216 [] [(s6Step105ExitFvRow,66),(s6Step105ExitGvRow,66)] [[],[]] [s6Step105ExitFvOut,s6Step105ExitGvOut]
    (shrinkRow 795 s6Step105ExitFExtra) ((shrinkRow 776 s6Step105ExitFvExtra ++ (shrinkRow 775 s6Step105ExitGvExtra ++ []))) s6Step105ExitF_Incoming s6Step105ExitF_checked h2 s6Step105ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step105ExitGBefore s6Step105ExitGAfter s6Step105ExitGvAfter
    s6Step105ExitGRow s6Step105ExitGOut 216 [] [(s6Step105ExitFRow,216),(s6Step105ExitFvRow,66),(s6Step105ExitGvRow,66)] [[],[],[]] [s6Step105ExitFOut,s6Step105ExitFvOut,s6Step105ExitGvOut]
    (shrinkRow 777 s6Step105ExitGExtra) ((shrinkRow 795 s6Step105ExitFExtra ++ (shrinkRow 776 s6Step105ExitFvExtra ++ (shrinkRow 775 s6Step105ExitGvExtra ++ [])))) s6Step105ExitG_Incoming s6Step105ExitG_checked h1 s6Step105ExitG_Outgoing
  exact h0

private theorem s6Step105ExitBank_checked : compileHmrBankResizeLog .exit s6Step105ExitGBefore ⟨s6Step105ExitFRow,s6Step105ExitGRow,s6Step105ExitFvRow,s6Step105ExitGvRow⟩ ⟨216,216,66,66⟩ [[],[],[],[]]=
    some (s6Step105ExitGvAfter,⟨s6Step105ExitFOut,s6Step105ExitGOut,s6Step105ExitFvOut,s6Step105ExitGvOut⟩,(shrinkRow 777 s6Step105ExitGExtra ++ (shrinkRow 795 s6Step105ExitFExtra ++ (shrinkRow 776 s6Step105ExitFvExtra ++ (shrinkRow 775 s6Step105ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step105ExitBank_rows]
  rfl

private theorem s6Step105Add0_apart : Disjoint s6Step105Add0Arena.live s6Step105Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step105Add0Arena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step105Add0_card : s6Step105Add0Arena.live.card=873 := by
  decide +kernel

private theorem s6Step105Add0_borrowed : s6Step105Add0Arena.checkBorrow (hmrHybridCount s6Step105Add0Arena s6Step105Add0B.length) s6Step105Add0Work=some s6Step105Add0During := by
  have len : s6Step105Add0Work.length=hmrHybridCount s6Step105Add0Arena s6Step105Add0B.length := by
    rw [hmrHybridCount,s6Step105Add0_card]
    decide +kernel
  have nd : s6Step105Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step105Add0Arena s6Step105Add0During s6Step105Add0Work.toFinset s6Step105Add0_bounded s6Step105Add0_apart rfl

private theorem s6Step105Add0_distinct : (823::828::864::(s6Step105Add0A++s6Step105Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step105Add0_owned : (823::828::864::(s6Step105Add0A++s6Step105Add0B)).toFinset⊆s6Step105Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step105Add0Arena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step105Add0_checked : compileHmrHybridCinLog s6Step105Add0Arena 828 823 864 s6Step105Add0A s6Step105Add0B s6Step105Add0Work=some s6Step105Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step105Add0Arena s6Step105Add0During 828 823 864 s6Step105Add0A s6Step105Add0B s6Step105Add0Work
    (by decide +kernel) (by decide +kernel) s6Step105Add0_distinct
    (fun q hq => s6Step105Add0_owned (List.mem_toFinset.mpr hq)) s6Step105Add0_borrowed

private theorem s6Step105Add1_apart : Disjoint s6Step105Add1Arena.live s6Step105Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step105Add1Arena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step105Add1_card : s6Step105Add1Arena.live.card=873 := by
  decide +kernel

private theorem s6Step105Add1_borrowed : s6Step105Add1Arena.checkBorrow (hmrHybridCount s6Step105Add1Arena s6Step105Add1B.length) s6Step105Add1Work=some s6Step105Add1During := by
  have len : s6Step105Add1Work.length=hmrHybridCount s6Step105Add1Arena s6Step105Add1B.length := by
    rw [hmrHybridCount,s6Step105Add1_card]
    decide +kernel
  have nd : s6Step105Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step105Add1Arena s6Step105Add1During s6Step105Add1Work.toFinset s6Step105Add1_bounded s6Step105Add1_apart rfl

private theorem s6Step105Add1_distinct : (823::828::864::(s6Step105Add1A++s6Step105Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step105Add1_owned : (823::828::864::(s6Step105Add1A++s6Step105Add1B)).toFinset⊆s6Step105Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step105Add1Arena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step105Add1_checked : compileHmrHybridCinLog s6Step105Add1Arena 828 823 864 s6Step105Add1A s6Step105Add1B s6Step105Add1Work=some s6Step105Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step105Add1Arena s6Step105Add1During 828 823 864 s6Step105Add1A s6Step105Add1B s6Step105Add1Work
    (by decide +kernel) (by decide +kernel) s6Step105Add1_distinct
    (fun q hq => s6Step105Add1_owned (List.mem_toFinset.mpr hq)) s6Step105Add1_borrowed

private theorem s6Step105F4_apart : Disjoint (s6Step105Add0A++s6Step105Add0B).toFinset (s6Step105Add1A++s6Step105Add1B).toFinset := by
  have nd : ((s6Step105Add0A++s6Step105Add0B)++(s6Step105Add1A++s6Step105Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step105F4_carry : s6Step105F4FlagArena.checkBorrow 1 [864]=some s6Step105Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step105F4FlagArena,s6Step105HeadFvAfter,arenaWires]
  · change s6Step105Add0Arena.live=(s6Step105HeadFvAfter.live∪{823})∪{864}
    apply hmrArena_union_pair_of_filter_check s6Step105HeadFvAfter s6Step105Add0Arena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 823 864 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step105F4_distinct : (907::828::823::864::((s6Step105Add0A++s6Step105Add1A)++(s6Step105Add0B++s6Step105Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step105F4_flag : s6Step105HeadFvAfter.checkBorrow 1 [823]=some s6Step105F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step105HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step105F4_owned : (907::828::((s6Step105Add0A++s6Step105Add1A)++(s6Step105Add0B++s6Step105Add1B))).toFinset⊆s6Step105HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step105HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step105F4_checked : compileHmrHybridF4Log s6Step105HeadFvAfter 907 828 s6Step105Add0A s6Step105Add0B s6Step105Add1A s6Step105Add1B [823] [864] s6Step105Add0Work s6Step105Add1Work=some s6Step105F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step105HeadFvAfter s6Step105F4FlagArena s6Step105Add0Arena s6Step105Add0During s6Step105Add1During 907 828
    s6Step105Add0A s6Step105Add0B s6Step105Add1A s6Step105Add1B [823] [864] s6Step105Add0Work s6Step105Add1Work
    (fun q hq => s6Step105F4_owned (List.mem_toFinset.mpr hq)) s6Step105F4_flag s6Step105F4_carry
    s6Step105F4_distinct s6Step105F4_apart s6Step105Add0_checked s6Step105Add1_checked

private theorem s6Step105Front_branch : s6Step105FrontSigmaArena.checkBorrow 1 [828]=some s6Step105HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step105FrontSigmaArena,s6Step105EntryGvAfter,s6Step105EntryFvAfter,arenaWires]
  · change s6Step105HeadGBefore.live=(s6Step105EntryGvAfter.live∪{907})∪{828}
    apply hmrArena_union_pair_of_filter_check s6Step105EntryGvAfter s6Step105HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 907 828 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step105Front_entry : HmrFrontEntryValid s6Step105EntryFBefore s6Step105FrontBank 216 66 ⟨216,216,66,66⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step105FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step105EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step105EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step105FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step105Front_sigma : s6Step105EntryGvAfter.checkBorrow 1 [907]=some s6Step105FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step105EntryGvAfter,s6Step105EntryFvAfter,arenaWires]
  · rfl

private def s6Step105HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step105HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step105HeadFBefore : Arena := s6Step105HeadGAfter

private def s6Step105HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471],795⟩

private def s6Step105HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845],776⟩

private def s6Step105HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215],777⟩

private def s6Step105HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784],775⟩

private theorem s6Step105HeadBank_incomingDistinct : ([s6Step105HeadGRow,s6Step105HeadFRow,s6Step105HeadGvRow,s6Step105HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step105HeadF_Incoming : rowsOwned s6Step105HeadFBefore [s6Step105HeadFRow,s6Step105HeadGvRow,s6Step105HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step105HeadGRow,s6Step105HeadFRow,s6Step105HeadGvRow,s6Step105HeadFvRow] 1 s6Step105HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step105HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step105HeadBank_outgoingOwned : rowsOwned s6Step105HeadFvAfter [s6Step105HeadGOut,s6Step105HeadFOut,s6Step105HeadGvOut,s6Step105HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step105HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step105HeadF_Outgoing : rowsOwned s6Step105HeadFvAfter [s6Step105HeadFOut,s6Step105HeadGvOut,s6Step105HeadFvOut] :=
  hmrRows_owned_drop s6Step105HeadFvAfter [s6Step105HeadGOut,s6Step105HeadFOut,s6Step105HeadGvOut,s6Step105HeadFvOut] 1 s6Step105HeadBank_outgoingOwned

private theorem s6Step105HeadF_distinct : (s6Step105HeadFRow.sign::s6Step105HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step105HeadF_owned : (s6Step105HeadFRow.sign::s6Step105HeadFRow.payload).toFinset⊆s6Step105HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step105HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step105HeadF_reserved : s6Step105HeadFBefore.reserve s6Step105HeadFFresh.toFinset=some s6Step105HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step105HeadFFresh,arenaWires]
  · norm_num [s6Step105HeadFBefore,s6Step105HeadGAfter,s6Step105HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step105HeadFBefore s6Step105HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step105HeadFFresh rfl rfl
    · norm_num [s6Step105HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step105HeadF_checked : planRowResizeLog s6Step105HeadFBefore s6Step105HeadFRow 217 s6Step105HeadFFresh=
    some (s6Step105HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 890],795⟩,growRow 795 s6Step105HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step105HeadFBefore s6Step105HeadFAfter s6Step105HeadFRow 217 s6Step105HeadFFresh
    s6Step105HeadF_distinct s6Step105HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step105HeadF_reserved
  have rowEq : WindowRow.mk (s6Step105HeadFRow.payload++s6Step105HeadFFresh) s6Step105HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 890],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step105HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step105HeadFvBefore : Arena := s6Step105HeadGvAfter

private theorem s6Step105HeadFv_Incoming : rowsOwned s6Step105HeadFvBefore [s6Step105HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step105HeadGRow,s6Step105HeadFRow,s6Step105HeadGvRow,s6Step105HeadFvRow] 3 s6Step105HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step105HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step105HeadFv_Outgoing : rowsOwned s6Step105HeadFvAfter [s6Step105HeadFvOut] :=
  hmrRows_owned_drop s6Step105HeadFvAfter [s6Step105HeadGOut,s6Step105HeadFOut,s6Step105HeadGvOut,s6Step105HeadFvOut] 3 s6Step105HeadBank_outgoingOwned

private theorem s6Step105HeadFv_distinct : (s6Step105HeadFvRow.sign::s6Step105HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step105HeadFv_owned : (s6Step105HeadFvRow.sign::s6Step105HeadFvRow.payload).toFinset⊆s6Step105HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step105HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step105HeadFv_reserved : s6Step105HeadFvBefore.reserve s6Step105HeadFvFresh.toFinset=some s6Step105HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step105HeadFvFresh,arenaWires]
  · norm_num [s6Step105HeadFvBefore,s6Step105HeadGvAfter,s6Step105HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step105HeadFvBefore s6Step105HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step105HeadFvFresh rfl rfl
    · norm_num [s6Step105HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step105HeadFv_checked : planRowResizeLog s6Step105HeadFvBefore s6Step105HeadFvRow 67 s6Step105HeadFvFresh=
    some (s6Step105HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 803],776⟩,growRow 776 s6Step105HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step105HeadFvBefore s6Step105HeadFvAfter s6Step105HeadFvRow 67 s6Step105HeadFvFresh
    s6Step105HeadFv_distinct s6Step105HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step105HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step105HeadFvRow.payload++s6Step105HeadFvFresh) s6Step105HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 803],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step105HeadG_Incoming : rowsOwned s6Step105HeadGBefore [s6Step105HeadGRow,s6Step105HeadFRow,s6Step105HeadGvRow,s6Step105HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step105HeadGRow,s6Step105HeadFRow,s6Step105HeadGvRow,s6Step105HeadFvRow] 0 s6Step105HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step105HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step105HeadG_Outgoing : rowsOwned s6Step105HeadFvAfter [s6Step105HeadGOut,s6Step105HeadFOut,s6Step105HeadGvOut,s6Step105HeadFvOut] :=
  hmrRows_owned_drop s6Step105HeadFvAfter [s6Step105HeadGOut,s6Step105HeadFOut,s6Step105HeadGvOut,s6Step105HeadFvOut] 0 s6Step105HeadBank_outgoingOwned

private theorem s6Step105HeadG_distinct : (s6Step105HeadGRow.sign::s6Step105HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step105HeadG_owned : (s6Step105HeadGRow.sign::s6Step105HeadGRow.payload).toFinset⊆s6Step105HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step105HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step105HeadG_reserved : s6Step105HeadGBefore.reserve s6Step105HeadGFresh.toFinset=some s6Step105HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step105HeadGFresh,arenaWires]
  · norm_num [s6Step105HeadGBefore,s6Step105HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step105HeadGBefore s6Step105HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step105HeadGFresh rfl rfl
    · norm_num [s6Step105HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step105HeadG_checked : planRowResizeLog s6Step105HeadGBefore s6Step105HeadGRow 217 s6Step105HeadGFresh=
    some (s6Step105HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 863],777⟩,growRow 777 s6Step105HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step105HeadGBefore s6Step105HeadGAfter s6Step105HeadGRow 217 s6Step105HeadGFresh
    s6Step105HeadG_distinct s6Step105HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step105HeadG_reserved
  have rowEq : WindowRow.mk (s6Step105HeadGRow.payload++s6Step105HeadGFresh) s6Step105HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 863],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step105HeadGvBefore : Arena := s6Step105HeadFAfter

private theorem s6Step105HeadGv_Incoming : rowsOwned s6Step105HeadGvBefore [s6Step105HeadGvRow,s6Step105HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step105HeadGRow,s6Step105HeadFRow,s6Step105HeadGvRow,s6Step105HeadFvRow] 2 s6Step105HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step105HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step105HeadGv_Outgoing : rowsOwned s6Step105HeadFvAfter [s6Step105HeadGvOut,s6Step105HeadFvOut] :=
  hmrRows_owned_drop s6Step105HeadFvAfter [s6Step105HeadGOut,s6Step105HeadFOut,s6Step105HeadGvOut,s6Step105HeadFvOut] 2 s6Step105HeadBank_outgoingOwned

private theorem s6Step105HeadGv_distinct : (s6Step105HeadGvRow.sign::s6Step105HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step105HeadGv_owned : (s6Step105HeadGvRow.sign::s6Step105HeadGvRow.payload).toFinset⊆s6Step105HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step105HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step105HeadGv_reserved : s6Step105HeadGvBefore.reserve s6Step105HeadGvFresh.toFinset=some s6Step105HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step105HeadGvFresh,arenaWires]
  · norm_num [s6Step105HeadGvBefore,s6Step105HeadFAfter,s6Step105HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step105HeadGvBefore s6Step105HeadGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step105HeadGvFresh rfl rfl
    · norm_num [s6Step105HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step105HeadGv_checked : planRowResizeLog s6Step105HeadGvBefore s6Step105HeadGvRow 67 s6Step105HeadGvFresh=
    some (s6Step105HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 876],775⟩,growRow 775 s6Step105HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step105HeadGvBefore s6Step105HeadGvAfter s6Step105HeadGvRow 67 s6Step105HeadGvFresh
    s6Step105HeadGv_distinct s6Step105HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step105HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step105HeadGvRow.payload++s6Step105HeadGvFresh) s6Step105HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 876],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step105HeadBank_rows : planWindowRowsLog s6Step105HeadGBefore [(s6Step105HeadGRow,217),(s6Step105HeadFRow,217),(s6Step105HeadGvRow,67),(s6Step105HeadFvRow,67)] [s6Step105HeadGFresh,s6Step105HeadFFresh,s6Step105HeadGvFresh,s6Step105HeadFvFresh]=
    some (s6Step105HeadFvAfter,[s6Step105HeadGOut,s6Step105HeadFOut,s6Step105HeadGvOut,s6Step105HeadFvOut],(growRow 777 s6Step105HeadGFresh ++ (growRow 795 s6Step105HeadFFresh ++ (growRow 775 s6Step105HeadGvFresh ++ (growRow 776 s6Step105HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step105HeadFvAfter [] []=some (s6Step105HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step105HeadFvBefore s6Step105HeadFvAfter s6Step105HeadFvAfter
    s6Step105HeadFvRow s6Step105HeadFvOut 67 s6Step105HeadFvFresh [] [] []
    (growRow 776 s6Step105HeadFvFresh) ([]) s6Step105HeadFv_Incoming s6Step105HeadFv_checked h4 s6Step105HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step105HeadGvBefore s6Step105HeadGvAfter s6Step105HeadFvAfter
    s6Step105HeadGvRow s6Step105HeadGvOut 67 s6Step105HeadGvFresh [(s6Step105HeadFvRow,67)] [s6Step105HeadFvFresh] [s6Step105HeadFvOut]
    (growRow 775 s6Step105HeadGvFresh) ((growRow 776 s6Step105HeadFvFresh ++ [])) s6Step105HeadGv_Incoming s6Step105HeadGv_checked h3 s6Step105HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step105HeadFBefore s6Step105HeadFAfter s6Step105HeadFvAfter
    s6Step105HeadFRow s6Step105HeadFOut 217 s6Step105HeadFFresh [(s6Step105HeadGvRow,67),(s6Step105HeadFvRow,67)] [s6Step105HeadGvFresh,s6Step105HeadFvFresh] [s6Step105HeadGvOut,s6Step105HeadFvOut]
    (growRow 795 s6Step105HeadFFresh) ((growRow 775 s6Step105HeadGvFresh ++ (growRow 776 s6Step105HeadFvFresh ++ []))) s6Step105HeadF_Incoming s6Step105HeadF_checked h2 s6Step105HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step105HeadGBefore s6Step105HeadGAfter s6Step105HeadFvAfter
    s6Step105HeadGRow s6Step105HeadGOut 217 s6Step105HeadGFresh [(s6Step105HeadFRow,217),(s6Step105HeadGvRow,67),(s6Step105HeadFvRow,67)] [s6Step105HeadFFresh,s6Step105HeadGvFresh,s6Step105HeadFvFresh] [s6Step105HeadFOut,s6Step105HeadGvOut,s6Step105HeadFvOut]
    (growRow 777 s6Step105HeadGFresh) ((growRow 795 s6Step105HeadFFresh ++ (growRow 775 s6Step105HeadGvFresh ++ (growRow 776 s6Step105HeadFvFresh ++ [])))) s6Step105HeadG_Incoming s6Step105HeadG_checked h1 s6Step105HeadG_Outgoing
  exact h0

private theorem s6Step105HeadBank_checked : compileHmrBankResizeLog .headroom s6Step105HeadGBefore ⟨s6Step105HeadFRow,s6Step105HeadGRow,s6Step105HeadFvRow,s6Step105HeadGvRow⟩ ⟨217,217,67,67⟩ [s6Step105HeadGFresh,s6Step105HeadFFresh,s6Step105HeadGvFresh,s6Step105HeadFvFresh]=
    some (s6Step105HeadFvAfter,⟨s6Step105HeadFOut,s6Step105HeadGOut,s6Step105HeadFvOut,s6Step105HeadGvOut⟩,(growRow 777 s6Step105HeadGFresh ++ (growRow 795 s6Step105HeadFFresh ++ (growRow 775 s6Step105HeadGvFresh ++ (growRow 776 s6Step105HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step105HeadBank_rows]
  rfl

private theorem s6Step105Front_checked : compileHmrSourceFrontLog s6Step105EntryFBefore s6Step105FrontBank 216 66 ⟨216,216,66,66⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step105FrontLog=some s6Step105FrontPlan := by
  have pairEq : s6Step105FrontPair=⟨s6Step105HeadFRow,s6Step105HeadGRow,s6Step105HeadFvRow,s6Step105HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step105FrontHead=⟨s6Step105ExitFRow,s6Step105ExitGRow,s6Step105ExitFvRow,s6Step105ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step105Add0A=s6Step105FrontHead.f.wires := by decide +kernel
  have gEq : s6Step105Add0B=s6Step105FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step105Add1A=s6Step105FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step105Add1B=s6Step105FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step105EntryFBefore s6Step105FrontBank 216 66 ⟨216,216,66,66⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step105FrontLog s6Step105FrontPlan
  · exact s6Step105Front_entry
  · exact s6Step105EntryBank_checked
  · exact s6Step105Front_sigma
  · rfl
  · exact s6Step105Front_branch
  · rfl
  · simpa only [s6Step105FrontPlan,pairEq] using s6Step105HeadBank_checked
  · simpa only [s6Step105FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step105F4_checked
  · exact s6Step105Counter_checked
  · rfl
  · simpa only [s6Step105FrontPlan,headEq] using s6Step105ExitBank_checked

private theorem s6Step105Complete_explicit_checked : compileHmrEarlyStepLog s6Step105EntryFBefore s6Step105FrontBank 216 66 ⟨216,216,66,66⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step105CompleteLog=some s6Step105CompletePlan := by
  let Q := s6Step105EarlyControlPlan
  have hq := s6Step105EarlyControl_plan_checked
  have fv1 : s6Step105CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step105CompleteOut.fv.payload[2]?.getD s6Step105CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step105CompleteOut.fv.payload[3]?.getD s6Step105CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step105CompleteOut.fv.payload[4]?.getD s6Step105CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step105EntryFBefore s6Step105EarlyControlArena s6Step105FrontBank 216 66 ⟨216,216,66,66⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step105CompleteLog s6Step105FrontPlan Q
    s6Step105Front_checked s6Step105Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step105Complete_owned s6Step105Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step105EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 907 s6Step105CompleteOut.fv.second (s6Step105CompleteOut.fv.payload[2]?.getD s6Step105CompleteOut.fv.sign) (s6Step105CompleteOut.fv.payload[3]?.getD s6Step105CompleteOut.fv.sign) (s6Step105CompleteOut.fv.payload[4]?.getD s6Step105CompleteOut.fv.sign) 828 35 s6Step105EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep105Arena : Arena := s6Step105EntryFBefore
def s6PrivateStep105Bank : WindowBank := s6Step105FrontBank
def s6PrivateStep105Spec : HmrSourceWalkStepLog := ⟨216,66,⟨216,216,66,66⟩,35,.early s6Step105CompleteLog⟩
def s6PrivateStep105Plan : HmrSourceStepPlan := .early s6Step105CompletePlan
theorem s6PrivateStep105_source : s6PrivateStep105Spec=s6ObservedLogs96[9] := rfl
theorem s6PrivateStep105_checked : compileHmrSourceStepLog s6PrivateStep105Arena s6PrivateStep105Bank
    s6PrivateStep105Spec.fgWidth s6PrivateStep105Spec.vWidth s6PrivateStep105Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840]
    6 498 105 s6PrivateStep105Spec.need none s6PrivateStep105Spec.log=some s6PrivateStep105Plan := by
  change compileHmrSourceStepLog s6Step105EntryFBefore s6Step105FrontBank 216 66 ⟨216,216,66,66⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 6 498 105 35 none (.early s6Step105CompleteLog)=some (.early s6Step105CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 105<498)]
  rw [s6Step105Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
