import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep104
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

private def s6Step106CompleteMoves : List (Wire × Wire) := [(793,215)]

private def s6Step106EarlyControlLog : HmrEarlyControlLog := ⟨[793, 890, 803, 876, 823],[864],[813],[879, 865, 796, 891, 903, 885],[]⟩

private def s6Step106FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[876], [803], [890], [863]],[[], [], [], []]⟩,[828],[907],[823],[864],[813, 879, 865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[813, 879, 865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[823, 864, 813, 879]⟩

private def s6Step106CompleteLog : HmrEarlyStepLog := ⟨s6Step106FrontLog,s6Step106CompleteMoves,s6Step106EarlyControlLog⟩

private def s6Step106ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471],795⟩

private def s6Step106ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863],776⟩

private def s6Step106ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214],777⟩

private def s6Step106ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784],775⟩

private def s6Step106FrontOut : WindowBank := ⟨s6Step106ExitFOut,s6Step106ExitGOut,s6Step106ExitFvOut,s6Step106ExitGvOut⟩

private def s6Step106CompleteOut : WindowBank := s6Step106FrontOut.repacked s6Step106CompleteMoves

private def s6Step106EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step106EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step106EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step106EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step106EarlyControlPositiveArena,[864],s6Step106EarlyControlEqualityArena,[813],⟨⟨828,false⟩,[⟨⟨864,false⟩,813⟩]⟩⟩

private def s6Step106EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step106EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step106EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step106EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step106EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step106EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step106EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,793⟩,⟨⟨772,false⟩,890⟩,⟨⟨771,false⟩,803⟩,⟨⟨770,false⟩,876⟩,⟨⟨769,false⟩,823⟩]⟩

private def s6Step106EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step106EarlyControlZeroArena,s6Step106EarlyControlZeroPlan,s6Step106EarlyControlClassPlan,s6Step106EarlyControlFlagArena,s6Step106EarlyControlFittedArena,s6Step106EarlyControlHistoryArena,s6Step106EarlyControlSigmaArena,s6Step106EarlyControlOutputArena,s6Step106EarlyControlLog⟩

private def s6Step106CounterWork : List Wire := [823, 864, 813, 879]

private theorem s6Step106Counter_bounded : s6Step106CounterWork.toFinset⊆arenaWires := by norm_num [s6Step106CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step106HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step106CounterDuring : Arena := ⟨s6Step106HeadFvAfter.live∪s6Step106CounterWork.toFinset,Finset.union_subset s6Step106HeadFvAfter.bounded s6Step106Counter_bounded⟩

private def s6Step106EntryFFresh : List Wire := []

private def s6Step106EntryFvFresh : List Wire := []

private def s6Step106EntryGFresh : List Wire := []

private def s6Step106EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step106EntryGvAfter : Arena := s6Step106EntryFBefore

private def s6Step106EntryGvFresh : List Wire := []

private def s6Step106ExitFExtra : List Wire := [803]

private def s6Step106ExitGExtra : List Wire := [215, 876]

private def s6Step106ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,215),(216,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step106ExitGvExtra : List Wire := [890]

private def s6Step106Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step106Add0Work : List Wire := [813, 879, 865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step106Add0_bounded : s6Step106Add0Work.toFinset⊆arenaWires := by
  have h : s6Step106Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step106Add0During : Arena := ⟨s6Step106Add0Arena.live∪s6Step106Add0Work.toFinset,Finset.union_subset s6Step106Add0Arena.bounded s6Step106Add0_bounded⟩

private def s6Step106Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step106Add1Work : List Wire := [813, 879, 865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step106Add1_bounded : s6Step106Add1Work.toFinset⊆arenaWires := by
  have h : s6Step106Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step106Add1During : Arena := ⟨s6Step106Add1Arena.live∪s6Step106Add1Work.toFinset,Finset.union_subset s6Step106Add1Arena.bounded s6Step106Add1_bounded⟩

private def s6Step106F4FlagArena : Arena := ⟨s6Step106HeadFvAfter.live∪{823},Finset.union_subset s6Step106HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step106F4Plan : HmrHybridF4Plan := ⟨s6Step106F4FlagArena,[823],s6Step106Add0Arena,[864],s6Step106Add0During,s6Step106Add0Work,s6Step106Add1During,s6Step106Add1Work⟩

private def s6Step106HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 803],795⟩

private def s6Step106HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863],776⟩

private def s6Step106HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 876],777⟩

private def s6Step106HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 890],775⟩

private def s6Step106FrontHead : WindowBank := ⟨s6Step106HeadFOut,s6Step106HeadGOut,s6Step106HeadFvOut,s6Step106HeadGvOut⟩

private def s6Step106EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471],795⟩

private def s6Step106EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845],776⟩

private def s6Step106EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215],777⟩

private def s6Step106EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784],775⟩

private def s6Step106FrontPair : WindowBank := ⟨s6Step106EntryFOut,s6Step106EntryGOut,s6Step106EntryFvOut,s6Step106EntryGvOut⟩

private def s6Step106FrontSigmaArena : Arena := ⟨s6Step106EntryGvAfter.live∪{828},Finset.union_subset s6Step106EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step106HeadFFresh : List Wire := [803]

private def s6Step106HeadFvFresh : List Wire := [863]

private def s6Step106HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step106HeadGFresh : List Wire := [876]

private def s6Step106HeadGvFresh : List Wire := [890]

private def s6Step106FrontPlan : HmrSourceFront := ⟨s6Step106EntryGvAfter,s6Step106FrontPair,(growRow 795 s6Step106EntryFFresh ++ (growRow 777 s6Step106EntryGFresh ++ (growRow 776 s6Step106EntryFvFresh ++ (growRow 775 s6Step106EntryGvFresh ++ [])))),s6Step106FrontSigmaArena,[828],s6Step106HeadGBefore,[907],
  s6Step106HeadFvAfter,s6Step106FrontHead,(growRow 777 s6Step106HeadGFresh ++ (growRow 795 s6Step106HeadFFresh ++ (growRow 775 s6Step106HeadGvFresh ++ (growRow 776 s6Step106HeadFvFresh ++ [])))),s6Step106F4Plan,s6Step106CounterDuring,s6Step106CounterWork,s6Step106ExitGvAfter,s6Step106FrontOut,(shrinkRow 777 s6Step106ExitGExtra ++ (shrinkRow 795 s6Step106ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step106ExitGvExtra ++ []))))⟩

private def s6Step106CompletePlan : HmrEarlyStepPlan := ⟨s6Step106FrontPlan,s6Step106EarlyControlArena,s6Step106EarlyControlPlan,s6Step106CompleteMoves⟩

private theorem s6Step106Complete_apart : List.Disjoint (s6Step106CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [828, 907, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] := by
  have nd : ((s6Step106CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[828, 907, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step106Complete_owned : (s6Step106CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step106EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step106EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step106CompleteRelocationMove0Borrowed : Arena := ⟨s6Step106ExitGvAfter.live∪{215},Finset.union_subset s6Step106ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step106CompleteRelocation_move0_owned : 793∈s6Step106ExitGvAfter.live := by norm_num [s6Step106ExitGvAfter,arenaWires]

private theorem s6Step106CompleteRelocation_move0_reserve : s6Step106ExitGvAfter.reserve {215}=some s6Step106CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step106ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step106CompleteRelocation_move0_retire : s6Step106CompleteRelocationMove0Borrowed.retireSet {793}=s6Step106EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step106CompleteRelocationMove0Borrowed s6Step106EarlyControlArena {793}
  change s6Step106EarlyControlArena.live=(s6Step106ExitGvAfter.live∪{215})\{793}
  apply hmrArena_update_of_filter_check s6Step106ExitGvAfter s6Step106EarlyControlArena (fun q => ([(0,215),(216,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [215] [793] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step106CompleteRelocation_checked : s6Step106ExitGvAfter.checkRepack [(793,215)]=some s6Step106EarlyControlArena := by
  have tail1 : s6Step106EarlyControlArena.checkRepack []=some s6Step106EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step106ExitGvAfter s6Step106CompleteRelocationMove0Borrowed s6Step106EarlyControlArena s6Step106EarlyControlArena 793 215 []
    s6Step106CompleteRelocation_move0_owned s6Step106CompleteRelocation_move0_reserve s6Step106CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step106Complete_repack : s6Step106ExitGvAfter.checkRepack s6Step106CompleteMoves=some s6Step106EarlyControlArena := by
  simpa only [s6Step106CompleteMoves] using s6Step106CompleteRelocation_checked

private theorem s6Step106EarlyControl_branchOwned : ([907] : List Wire).toFinset⊆s6Step106EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step106EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step106EarlyControl_branch : compileHmrBranchRetirement s6Step106EarlyControlSigmaArena 907=some s6Step106EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step106EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step106EarlyControlSigmaArena s6Step106EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [907] rfl rfl
    decide +kernel

private theorem s6Step106EarlyControl_classEqualityBorrow : s6Step106EarlyControlPositiveArena.checkBorrow (([828, 864] : List Wire).length-1) s6Step106EarlyControlLog.classWork=some s6Step106EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step106EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step106EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step106EarlyControlPositiveArena s6Step106EarlyControlEqualityArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step106EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step106EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step106EarlyControl_classEqualityOwned : ([828, 864] : List Wire).toFinset⊆s6Step106EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step106EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step106EarlyControl_classEquality : compileHmrEqualityLog s6Step106EarlyControlPositiveArena [828, 864] 0 s6Step106EarlyControlLog.classWork=some (s6Step106EarlyControlEqualityArena,s6Step106EarlyControlLog.classWork,s6Step106EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step106EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step106EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step106EarlyControl_classOwned : ([769, 823, 828] : List Wire).toFinset⊆s6Step106EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step106EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step106EarlyControl_positiveBorrow : s6Step106EarlyControlZeroArena.checkBorrow (1) s6Step106EarlyControlLog.positiveWork=some s6Step106EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step106EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step106EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step106EarlyControlZeroArena s6Step106EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step106EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step106EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step106EarlyControl_class : compileHmrSourceClassLog s6Step106EarlyControlZeroArena false 769 s6Step106EarlyControlZeroPlan.top 0 828 s6Step106EarlyControlLog.positiveWork s6Step106EarlyControlLog.classWork=some s6Step106EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step106EarlyControlClassPlan s6Step106EarlyControlZeroArena false 769 s6Step106EarlyControlZeroPlan.top 0 828
  constructor
  · decide +kernel
  · exact s6Step106EarlyControl_classOwned
  · exact s6Step106EarlyControl_positiveBorrow
  · exact s6Step106EarlyControl_classEquality

private theorem s6Step106EarlyControl_entryRecordOwned : ([907, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).toFinset⊆s6Step106EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step106EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step106EarlyControl_entrySigmaOwned : ([828, 254] : List Wire).toFinset⊆s6Step106EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step106EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step106EarlyControl_fitBorrow : s6Step106EarlyControlFlagArena.checkBorrow ((35-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).length)) s6Step106EarlyControlLog.recordFresh=some s6Step106EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step106EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step106EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step106EarlyControlFittedArena,s6Step106EarlyControlFlagArena,s6Step106EarlyControlLog,arenaWires]

private theorem s6Step106EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).toFinset⊆s6Step106EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step106EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step106EarlyControl_fit : compileHmrRecordGrowLog s6Step106EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step106EarlyControlLog.recordFresh=some s6Step106EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step106EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step106EarlyControl_fitBorrow

private theorem s6Step106EarlyControl_flagsBorrow : s6Step106EarlyControlEqualityArena.checkBorrow (6) s6Step106EarlyControlLog.flagWork=some s6Step106EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step106EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step106EarlyControlEqualityArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step106EarlyControlEqualityArena s6Step106EarlyControlFlagArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step106EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step106EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step106EarlyControl_flagsOwned : ([813, 253, 252, 251] : List Wire).toFinset⊆s6Step106EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step106EarlyControlEqualityArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step106EarlyControl_flags : compileHmrFlagsLog s6Step106EarlyControlClassPlan.equalityArena s6Step106EarlyControlClassPlan.equality.top 253 252 251 s6Step106EarlyControlLog.flagWork=some s6Step106EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step106EarlyControl_flagsOwned⟩
  · exact s6Step106EarlyControl_flagsBorrow

private theorem s6Step106EarlyControl_historyBorrow : s6Step106EarlyControlArena.checkBorrow ((35-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).length)) s6Step106EarlyControlLog.recordFresh=some s6Step106EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step106EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step106EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step106EarlyControlArena s6Step106EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step106EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step106EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step106EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).toFinset⊆s6Step106EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step106EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step106EarlyControl_history : compileHmrRecordGrowLog s6Step106EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step106EarlyControlLog.recordFresh=some s6Step106EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step106EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step106EarlyControl_historyBorrow

private theorem s6Step106EarlyControl_sigmaOwned : ([254, 828] : List Wire).toFinset⊆s6Step106EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step106EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step106EarlyControl_sigmaReleaseOwned : ([828] : List Wire).toFinset⊆s6Step106EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step106EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step106EarlyControl_sigmaRelease : s6Step106EarlyControlHistoryArena.release {828} (fun _ => false)=some s6Step106EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step106EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step106EarlyControlHistoryArena s6Step106EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [828] rfl rfl
    decide +kernel

private theorem s6Step106EarlyControl_sigma : compileHmrSigmaDropLog s6Step106EarlyControlHistoryArena false 0 0 254 828 []=some s6Step106EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step106EarlyControl_sigmaOwned⟩
  · exact s6Step106EarlyControl_sigmaRelease

private theorem s6Step106EarlyControl_zeroBorrow : s6Step106EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step106EarlyControlLog.zeroWork=some s6Step106EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step106EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step106EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step106EarlyControlArena s6Step106EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step106EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step106EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step106EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step106EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step106EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step106EarlyControl_zero : compileHmrEqualityLog s6Step106EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step106EarlyControlLog.zeroWork=some (s6Step106EarlyControlZeroArena,s6Step106EarlyControlLog.zeroWork,s6Step106EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step106EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step106EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step106EarlyControl_logged : s6Step106EarlyControlPlan.Logged s6Step106EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 828 254 253 252 251 907 35 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step106EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step106EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step106EarlyControl_zero
  · exact s6Step106EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step106EarlyControl_flags
  · exact s6Step106EarlyControl_fit
  · exact s6Step106EarlyControl_history
  · exact s6Step106EarlyControl_sigma
  · exact s6Step106EarlyControl_branch

private theorem s6Step106EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step106EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 828 254 253 252 251 907 35 s6Step106EarlyControlLog=some s6Step106EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step106EarlyControlPlan s6Step106EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 828 254 253 252 251 907 35 s6Step106EarlyControl_logged

private def s6Step106EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471],795⟩

private def s6Step106EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845],776⟩

private def s6Step106EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215],777⟩

private def s6Step106EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784],775⟩

private def s6Step106FrontBank : WindowBank := ⟨s6Step106EntryFRow,s6Step106EntryGRow,s6Step106EntryFvRow,s6Step106EntryGvRow⟩

private def s6Step106Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 803, 795]

private def s6Step106Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 876, 777]

private def s6Step106Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 776]

private def s6Step106Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 890, 775]

private theorem s6Step106Counter_apart : Disjoint s6Step106HeadFvAfter.live s6Step106CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step106HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step106Counter_borrowed : s6Step106HeadFvAfter.checkBorrow 4 s6Step106CounterWork=some s6Step106CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step106HeadFvAfter s6Step106CounterDuring s6Step106CounterWork.toFinset s6Step106Counter_bounded s6Step106Counter_apart rfl

private theorem s6Step106Counter_owned : (828::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step106HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step106HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step106Counter_checked : compileHmrCounterStepLog s6Step106HeadFvAfter true 828 [774, 773, 772, 771, 770, 769] s6Step106CounterWork=some s6Step106CounterDuring := by
  have owned : ∀q∈828::[774, 773, 772, 771, 770, 769],q∈s6Step106HeadFvAfter.live := fun q hq => s6Step106Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step106Counter_borrowed

private def s6Step106EntryFAfter : Arena := s6Step106EntryFBefore

private theorem s6Step106EntryBank_incomingDistinct : ([s6Step106EntryFRow,s6Step106EntryGRow,s6Step106EntryFvRow,s6Step106EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step106EntryF_Incoming : rowsOwned s6Step106EntryFBefore [s6Step106EntryFRow,s6Step106EntryGRow,s6Step106EntryFvRow,s6Step106EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step106EntryFRow,s6Step106EntryGRow,s6Step106EntryFvRow,s6Step106EntryGvRow] 0 s6Step106EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step106EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step106EntryBank_outgoingOwned : rowsOwned s6Step106EntryGvAfter [s6Step106EntryFOut,s6Step106EntryGOut,s6Step106EntryFvOut,s6Step106EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step106EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step106EntryF_Outgoing : rowsOwned s6Step106EntryGvAfter [s6Step106EntryFOut,s6Step106EntryGOut,s6Step106EntryFvOut,s6Step106EntryGvOut] :=
  hmrRows_owned_drop s6Step106EntryGvAfter [s6Step106EntryFOut,s6Step106EntryGOut,s6Step106EntryFvOut,s6Step106EntryGvOut] 0 s6Step106EntryBank_outgoingOwned

private theorem s6Step106EntryF_distinct : (s6Step106EntryFRow.sign::s6Step106EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step106EntryF_owned : (s6Step106EntryFRow.sign::s6Step106EntryFRow.payload).toFinset⊆s6Step106EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step106EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step106EntryF_reserved : s6Step106EntryFBefore.reserve s6Step106EntryFFresh.toFinset=some s6Step106EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step106EntryFFresh,arenaWires]
  · norm_num [s6Step106EntryFBefore,s6Step106EntryFFresh,arenaWires]
  · simp only [s6Step106EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step106EntryF_checked : planRowResizeLog s6Step106EntryFBefore s6Step106EntryFRow 216 s6Step106EntryFFresh=
    some (s6Step106EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471],795⟩,growRow 795 s6Step106EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step106EntryFBefore s6Step106EntryFAfter s6Step106EntryFRow 216 s6Step106EntryFFresh
    s6Step106EntryF_distinct s6Step106EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step106EntryF_reserved
  have rowEq : WindowRow.mk (s6Step106EntryFRow.payload++s6Step106EntryFFresh) s6Step106EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step106EntryFvAfter : Arena := s6Step106EntryFBefore

private def s6Step106EntryFvBefore : Arena := s6Step106EntryFBefore

private theorem s6Step106EntryFv_Incoming : rowsOwned s6Step106EntryFvBefore [s6Step106EntryFvRow,s6Step106EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step106EntryFRow,s6Step106EntryGRow,s6Step106EntryFvRow,s6Step106EntryGvRow] 2 s6Step106EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step106EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step106EntryFv_Outgoing : rowsOwned s6Step106EntryGvAfter [s6Step106EntryFvOut,s6Step106EntryGvOut] :=
  hmrRows_owned_drop s6Step106EntryGvAfter [s6Step106EntryFOut,s6Step106EntryGOut,s6Step106EntryFvOut,s6Step106EntryGvOut] 2 s6Step106EntryBank_outgoingOwned

private theorem s6Step106EntryFv_distinct : (s6Step106EntryFvRow.sign::s6Step106EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step106EntryFv_owned : (s6Step106EntryFvRow.sign::s6Step106EntryFvRow.payload).toFinset⊆s6Step106EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step106EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step106EntryFv_reserved : s6Step106EntryFvBefore.reserve s6Step106EntryFvFresh.toFinset=some s6Step106EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step106EntryFvFresh,arenaWires]
  · norm_num [s6Step106EntryFvBefore,s6Step106EntryFBefore,s6Step106EntryFvFresh,arenaWires]
  · simp only [s6Step106EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step106EntryFv_checked : planRowResizeLog s6Step106EntryFvBefore s6Step106EntryFvRow 66 s6Step106EntryFvFresh=
    some (s6Step106EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845],776⟩,growRow 776 s6Step106EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step106EntryFvBefore s6Step106EntryFvAfter s6Step106EntryFvRow 66 s6Step106EntryFvFresh
    s6Step106EntryFv_distinct s6Step106EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step106EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step106EntryFvRow.payload++s6Step106EntryFvFresh) s6Step106EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step106EntryGAfter : Arena := s6Step106EntryFBefore

private def s6Step106EntryGBefore : Arena := s6Step106EntryFBefore

private theorem s6Step106EntryG_Incoming : rowsOwned s6Step106EntryGBefore [s6Step106EntryGRow,s6Step106EntryFvRow,s6Step106EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step106EntryFRow,s6Step106EntryGRow,s6Step106EntryFvRow,s6Step106EntryGvRow] 1 s6Step106EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step106EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step106EntryG_Outgoing : rowsOwned s6Step106EntryGvAfter [s6Step106EntryGOut,s6Step106EntryFvOut,s6Step106EntryGvOut] :=
  hmrRows_owned_drop s6Step106EntryGvAfter [s6Step106EntryFOut,s6Step106EntryGOut,s6Step106EntryFvOut,s6Step106EntryGvOut] 1 s6Step106EntryBank_outgoingOwned

private theorem s6Step106EntryG_distinct : (s6Step106EntryGRow.sign::s6Step106EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step106EntryG_owned : (s6Step106EntryGRow.sign::s6Step106EntryGRow.payload).toFinset⊆s6Step106EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step106EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step106EntryG_reserved : s6Step106EntryGBefore.reserve s6Step106EntryGFresh.toFinset=some s6Step106EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step106EntryGFresh,arenaWires]
  · norm_num [s6Step106EntryGBefore,s6Step106EntryFBefore,s6Step106EntryGFresh,arenaWires]
  · simp only [s6Step106EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step106EntryG_checked : planRowResizeLog s6Step106EntryGBefore s6Step106EntryGRow 216 s6Step106EntryGFresh=
    some (s6Step106EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215],777⟩,growRow 777 s6Step106EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step106EntryGBefore s6Step106EntryGAfter s6Step106EntryGRow 216 s6Step106EntryGFresh
    s6Step106EntryG_distinct s6Step106EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step106EntryG_reserved
  have rowEq : WindowRow.mk (s6Step106EntryGRow.payload++s6Step106EntryGFresh) s6Step106EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step106EntryGvBefore : Arena := s6Step106EntryFBefore

private theorem s6Step106EntryGv_Incoming : rowsOwned s6Step106EntryGvBefore [s6Step106EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step106EntryFRow,s6Step106EntryGRow,s6Step106EntryFvRow,s6Step106EntryGvRow] 3 s6Step106EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step106EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step106EntryGv_Outgoing : rowsOwned s6Step106EntryGvAfter [s6Step106EntryGvOut] :=
  hmrRows_owned_drop s6Step106EntryGvAfter [s6Step106EntryFOut,s6Step106EntryGOut,s6Step106EntryFvOut,s6Step106EntryGvOut] 3 s6Step106EntryBank_outgoingOwned

private theorem s6Step106EntryGv_distinct : (s6Step106EntryGvRow.sign::s6Step106EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step106EntryGv_owned : (s6Step106EntryGvRow.sign::s6Step106EntryGvRow.payload).toFinset⊆s6Step106EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step106EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step106EntryGv_reserved : s6Step106EntryGvBefore.reserve s6Step106EntryGvFresh.toFinset=some s6Step106EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step106EntryGvFresh,arenaWires]
  · norm_num [s6Step106EntryGvBefore,s6Step106EntryFBefore,s6Step106EntryGvFresh,arenaWires]
  · simp only [s6Step106EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step106EntryGv_checked : planRowResizeLog s6Step106EntryGvBefore s6Step106EntryGvRow 66 s6Step106EntryGvFresh=
    some (s6Step106EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784],775⟩,growRow 775 s6Step106EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step106EntryGvBefore s6Step106EntryGvAfter s6Step106EntryGvRow 66 s6Step106EntryGvFresh
    s6Step106EntryGv_distinct s6Step106EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step106EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step106EntryGvRow.payload++s6Step106EntryGvFresh) s6Step106EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step106EntryBank_rows : planWindowRowsLog s6Step106EntryFBefore [(s6Step106EntryFRow,216),(s6Step106EntryGRow,216),(s6Step106EntryFvRow,66),(s6Step106EntryGvRow,66)] [s6Step106EntryFFresh,s6Step106EntryGFresh,s6Step106EntryFvFresh,s6Step106EntryGvFresh]=
    some (s6Step106EntryGvAfter,[s6Step106EntryFOut,s6Step106EntryGOut,s6Step106EntryFvOut,s6Step106EntryGvOut],(growRow 795 s6Step106EntryFFresh ++ (growRow 777 s6Step106EntryGFresh ++ (growRow 776 s6Step106EntryFvFresh ++ (growRow 775 s6Step106EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step106EntryGvAfter [] []=some (s6Step106EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step106EntryGvBefore s6Step106EntryGvAfter s6Step106EntryGvAfter
    s6Step106EntryGvRow s6Step106EntryGvOut 66 s6Step106EntryGvFresh [] [] []
    (growRow 775 s6Step106EntryGvFresh) ([]) s6Step106EntryGv_Incoming s6Step106EntryGv_checked h4 s6Step106EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step106EntryFvBefore s6Step106EntryFvAfter s6Step106EntryGvAfter
    s6Step106EntryFvRow s6Step106EntryFvOut 66 s6Step106EntryFvFresh [(s6Step106EntryGvRow,66)] [s6Step106EntryGvFresh] [s6Step106EntryGvOut]
    (growRow 776 s6Step106EntryFvFresh) ((growRow 775 s6Step106EntryGvFresh ++ [])) s6Step106EntryFv_Incoming s6Step106EntryFv_checked h3 s6Step106EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step106EntryGBefore s6Step106EntryGAfter s6Step106EntryGvAfter
    s6Step106EntryGRow s6Step106EntryGOut 216 s6Step106EntryGFresh [(s6Step106EntryFvRow,66),(s6Step106EntryGvRow,66)] [s6Step106EntryFvFresh,s6Step106EntryGvFresh] [s6Step106EntryFvOut,s6Step106EntryGvOut]
    (growRow 777 s6Step106EntryGFresh) ((growRow 776 s6Step106EntryFvFresh ++ (growRow 775 s6Step106EntryGvFresh ++ []))) s6Step106EntryG_Incoming s6Step106EntryG_checked h2 s6Step106EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step106EntryFBefore s6Step106EntryFAfter s6Step106EntryGvAfter
    s6Step106EntryFRow s6Step106EntryFOut 216 s6Step106EntryFFresh [(s6Step106EntryGRow,216),(s6Step106EntryFvRow,66),(s6Step106EntryGvRow,66)] [s6Step106EntryGFresh,s6Step106EntryFvFresh,s6Step106EntryGvFresh] [s6Step106EntryGOut,s6Step106EntryFvOut,s6Step106EntryGvOut]
    (growRow 795 s6Step106EntryFFresh) ((growRow 777 s6Step106EntryGFresh ++ (growRow 776 s6Step106EntryFvFresh ++ (growRow 775 s6Step106EntryGvFresh ++ [])))) s6Step106EntryF_Incoming s6Step106EntryF_checked h1 s6Step106EntryF_Outgoing
  exact h0

private theorem s6Step106EntryBank_checked : compileHmrBankResizeLog .entry s6Step106EntryFBefore ⟨s6Step106EntryFRow,s6Step106EntryGRow,s6Step106EntryFvRow,s6Step106EntryGvRow⟩ ⟨216,216,66,66⟩ [s6Step106EntryFFresh,s6Step106EntryGFresh,s6Step106EntryFvFresh,s6Step106EntryGvFresh]=
    some (s6Step106EntryGvAfter,⟨s6Step106EntryFOut,s6Step106EntryGOut,s6Step106EntryFvOut,s6Step106EntryGvOut⟩,(growRow 795 s6Step106EntryFFresh ++ (growRow 777 s6Step106EntryGFresh ++ (growRow 776 s6Step106EntryFvFresh ++ (growRow 775 s6Step106EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step106EntryBank_rows]
  rfl

private def s6Step106ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,215),(216,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step106ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,215),(216,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step106ExitFBefore : Arena := s6Step106ExitGAfter

private def s6Step106ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 803],795⟩

private def s6Step106ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863],776⟩

private def s6Step106ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 876],777⟩

private def s6Step106ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 890],775⟩

private theorem s6Step106ExitBank_incomingDistinct : ([s6Step106ExitGRow,s6Step106ExitFRow,s6Step106ExitFvRow,s6Step106ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step106ExitF_Incoming : rowsOwned s6Step106ExitFBefore [s6Step106ExitFRow,s6Step106ExitFvRow,s6Step106ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step106ExitGRow,s6Step106ExitFRow,s6Step106ExitFvRow,s6Step106ExitGvRow] 1 s6Step106ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step106ExitFBefore (fun q => ([(0,215),(216,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step106ExitBank_outgoingOwned : rowsOwned s6Step106ExitGvAfter [s6Step106ExitGOut,s6Step106ExitFOut,s6Step106ExitFvOut,s6Step106ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step106ExitGvAfter (fun q => ([(0,215),(216,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step106ExitF_Outgoing : rowsOwned s6Step106ExitGvAfter [s6Step106ExitFOut,s6Step106ExitFvOut,s6Step106ExitGvOut] :=
  hmrRows_owned_drop s6Step106ExitGvAfter [s6Step106ExitGOut,s6Step106ExitFOut,s6Step106ExitFvOut,s6Step106ExitGvOut] 1 s6Step106ExitBank_outgoingOwned

private theorem s6Step106ExitF_distinct : (s6Step106ExitFRow.sign::s6Step106ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step106ExitF_owned : (s6Step106ExitFRow.sign::s6Step106ExitFRow.payload).toFinset⊆s6Step106ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step106ExitFBefore (fun q => ([(0,215),(216,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step106ExitF_retired : s6Step106ExitFBefore.retireSet s6Step106ExitFExtra.toFinset=s6Step106ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step106ExitFBefore s6Step106ExitFAfter s6Step106ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step106ExitFBefore s6Step106ExitFAfter (fun q => ([(0,215),(216,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,215),(216,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step106ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step106ExitF_checked : planRowResizeLog s6Step106ExitFBefore s6Step106ExitFRow 216 []=
    some (s6Step106ExitFAfter,s6Step106ExitFOut,shrinkRow 795 s6Step106ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step106ExitFBefore s6Step106ExitFRow 216 s6Step106ExitF_distinct s6Step106ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step106ExitFRow.payload.take 216) s6Step106ExitFRow.sign=s6Step106ExitFOut := by decide +kernel
  have hi : s6Step106ExitFRow.payload.drop 216=s6Step106ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step106ExitF_retired] at result
  exact result

private def s6Step106ExitFvAfter : Arena := s6Step106ExitFAfter

private def s6Step106ExitFvBefore : Arena := s6Step106ExitFAfter

private theorem s6Step106ExitFv_Incoming : rowsOwned s6Step106ExitFvBefore [s6Step106ExitFvRow,s6Step106ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step106ExitGRow,s6Step106ExitFRow,s6Step106ExitFvRow,s6Step106ExitGvRow] 2 s6Step106ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step106ExitFvBefore (fun q => ([(0,215),(216,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step106ExitFv_Outgoing : rowsOwned s6Step106ExitGvAfter [s6Step106ExitFvOut,s6Step106ExitGvOut] :=
  hmrRows_owned_drop s6Step106ExitGvAfter [s6Step106ExitGOut,s6Step106ExitFOut,s6Step106ExitFvOut,s6Step106ExitGvOut] 2 s6Step106ExitBank_outgoingOwned

private theorem s6Step106ExitFv_distinct : (s6Step106ExitFvRow.sign::s6Step106ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step106ExitFv_owned : (s6Step106ExitFvRow.sign::s6Step106ExitFvRow.payload).toFinset⊆s6Step106ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step106ExitFvBefore (fun q => ([(0,215),(216,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step106ExitFv_reserved : s6Step106ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step106ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step106ExitFv_checked : planRowResizeLog s6Step106ExitFvBefore s6Step106ExitFvRow 67 []=
    some (s6Step106ExitFvAfter,s6Step106ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step106ExitFvBefore s6Step106ExitFvAfter s6Step106ExitFvRow 67 []
    s6Step106ExitFv_distinct s6Step106ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step106ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step106ExitFvRow.payload++[]) s6Step106ExitFvRow.sign=s6Step106ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step106ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step106ExitG_Incoming : rowsOwned s6Step106ExitGBefore [s6Step106ExitGRow,s6Step106ExitFRow,s6Step106ExitFvRow,s6Step106ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step106ExitGRow,s6Step106ExitFRow,s6Step106ExitFvRow,s6Step106ExitGvRow] 0 s6Step106ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step106ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step106ExitG_Outgoing : rowsOwned s6Step106ExitGvAfter [s6Step106ExitGOut,s6Step106ExitFOut,s6Step106ExitFvOut,s6Step106ExitGvOut] :=
  hmrRows_owned_drop s6Step106ExitGvAfter [s6Step106ExitGOut,s6Step106ExitFOut,s6Step106ExitFvOut,s6Step106ExitGvOut] 0 s6Step106ExitBank_outgoingOwned

private theorem s6Step106ExitG_distinct : (s6Step106ExitGRow.sign::s6Step106ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step106ExitG_owned : (s6Step106ExitGRow.sign::s6Step106ExitGRow.payload).toFinset⊆s6Step106ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step106ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step106ExitG_retired : s6Step106ExitGBefore.retireSet s6Step106ExitGExtra.toFinset=s6Step106ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step106ExitGBefore s6Step106ExitGAfter s6Step106ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step106ExitGBefore s6Step106ExitGAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,215),(216,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step106ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step106ExitG_checked : planRowResizeLog s6Step106ExitGBefore s6Step106ExitGRow 215 []=
    some (s6Step106ExitGAfter,s6Step106ExitGOut,shrinkRow 777 s6Step106ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step106ExitGBefore s6Step106ExitGRow 215 s6Step106ExitG_distinct s6Step106ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step106ExitGRow.payload.take 215) s6Step106ExitGRow.sign=s6Step106ExitGOut := by decide +kernel
  have hi : s6Step106ExitGRow.payload.drop 215=s6Step106ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step106ExitG_retired] at result
  exact result

private def s6Step106ExitGvBefore : Arena := s6Step106ExitFAfter

private theorem s6Step106ExitGv_Incoming : rowsOwned s6Step106ExitGvBefore [s6Step106ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step106ExitGRow,s6Step106ExitFRow,s6Step106ExitFvRow,s6Step106ExitGvRow] 3 s6Step106ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step106ExitGvBefore (fun q => ([(0,215),(216,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step106ExitGv_Outgoing : rowsOwned s6Step106ExitGvAfter [s6Step106ExitGvOut] :=
  hmrRows_owned_drop s6Step106ExitGvAfter [s6Step106ExitGOut,s6Step106ExitFOut,s6Step106ExitFvOut,s6Step106ExitGvOut] 3 s6Step106ExitBank_outgoingOwned

private theorem s6Step106ExitGv_distinct : (s6Step106ExitGvRow.sign::s6Step106ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step106ExitGv_owned : (s6Step106ExitGvRow.sign::s6Step106ExitGvRow.payload).toFinset⊆s6Step106ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step106ExitGvBefore (fun q => ([(0,215),(216,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step106ExitGv_retired : s6Step106ExitGvBefore.retireSet s6Step106ExitGvExtra.toFinset=s6Step106ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step106ExitGvBefore s6Step106ExitGvAfter s6Step106ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step106ExitGvBefore s6Step106ExitGvAfter (fun q => ([(0,215),(216,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,215),(216,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step106ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step106ExitGv_checked : planRowResizeLog s6Step106ExitGvBefore s6Step106ExitGvRow 66 []=
    some (s6Step106ExitGvAfter,s6Step106ExitGvOut,shrinkRow 775 s6Step106ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step106ExitGvBefore s6Step106ExitGvRow 66 s6Step106ExitGv_distinct s6Step106ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step106ExitGvRow.payload.take 66) s6Step106ExitGvRow.sign=s6Step106ExitGvOut := by decide +kernel
  have hi : s6Step106ExitGvRow.payload.drop 66=s6Step106ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step106ExitGv_retired] at result
  exact result

private theorem s6Step106ExitBank_rows : planWindowRowsLog s6Step106ExitGBefore [(s6Step106ExitGRow,215),(s6Step106ExitFRow,216),(s6Step106ExitFvRow,67),(s6Step106ExitGvRow,66)] [[],[],[],[]]=
    some (s6Step106ExitGvAfter,[s6Step106ExitGOut,s6Step106ExitFOut,s6Step106ExitFvOut,s6Step106ExitGvOut],(shrinkRow 777 s6Step106ExitGExtra ++ (shrinkRow 795 s6Step106ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step106ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step106ExitGvAfter [] []=some (s6Step106ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step106ExitGvBefore s6Step106ExitGvAfter s6Step106ExitGvAfter
    s6Step106ExitGvRow s6Step106ExitGvOut 66 [] [] [] []
    (shrinkRow 775 s6Step106ExitGvExtra) ([]) s6Step106ExitGv_Incoming s6Step106ExitGv_checked h4 s6Step106ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step106ExitFvBefore s6Step106ExitFvAfter s6Step106ExitGvAfter
    s6Step106ExitFvRow s6Step106ExitFvOut 67 [] [(s6Step106ExitGvRow,66)] [[]] [s6Step106ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step106ExitGvExtra ++ [])) s6Step106ExitFv_Incoming s6Step106ExitFv_checked h3 s6Step106ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step106ExitFBefore s6Step106ExitFAfter s6Step106ExitGvAfter
    s6Step106ExitFRow s6Step106ExitFOut 216 [] [(s6Step106ExitFvRow,67),(s6Step106ExitGvRow,66)] [[],[]] [s6Step106ExitFvOut,s6Step106ExitGvOut]
    (shrinkRow 795 s6Step106ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step106ExitGvExtra ++ []))) s6Step106ExitF_Incoming s6Step106ExitF_checked h2 s6Step106ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step106ExitGBefore s6Step106ExitGAfter s6Step106ExitGvAfter
    s6Step106ExitGRow s6Step106ExitGOut 215 [] [(s6Step106ExitFRow,216),(s6Step106ExitFvRow,67),(s6Step106ExitGvRow,66)] [[],[],[]] [s6Step106ExitFOut,s6Step106ExitFvOut,s6Step106ExitGvOut]
    (shrinkRow 777 s6Step106ExitGExtra) ((shrinkRow 795 s6Step106ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step106ExitGvExtra ++ [])))) s6Step106ExitG_Incoming s6Step106ExitG_checked h1 s6Step106ExitG_Outgoing
  exact h0

private theorem s6Step106ExitBank_checked : compileHmrBankResizeLog .exit s6Step106ExitGBefore ⟨s6Step106ExitFRow,s6Step106ExitGRow,s6Step106ExitFvRow,s6Step106ExitGvRow⟩ ⟨216,215,67,66⟩ [[],[],[],[]]=
    some (s6Step106ExitGvAfter,⟨s6Step106ExitFOut,s6Step106ExitGOut,s6Step106ExitFvOut,s6Step106ExitGvOut⟩,(shrinkRow 777 s6Step106ExitGExtra ++ (shrinkRow 795 s6Step106ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step106ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step106ExitBank_rows]
  rfl

private theorem s6Step106Add0_apart : Disjoint s6Step106Add0Arena.live s6Step106Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step106Add0Arena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step106Add0_card : s6Step106Add0Arena.live.card=873 := by
  decide +kernel

private theorem s6Step106Add0_borrowed : s6Step106Add0Arena.checkBorrow (hmrHybridCount s6Step106Add0Arena s6Step106Add0B.length) s6Step106Add0Work=some s6Step106Add0During := by
  have len : s6Step106Add0Work.length=hmrHybridCount s6Step106Add0Arena s6Step106Add0B.length := by
    rw [hmrHybridCount,s6Step106Add0_card]
    decide +kernel
  have nd : s6Step106Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step106Add0Arena s6Step106Add0During s6Step106Add0Work.toFinset s6Step106Add0_bounded s6Step106Add0_apart rfl

private theorem s6Step106Add0_distinct : (823::907::864::(s6Step106Add0A++s6Step106Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step106Add0_owned : (823::907::864::(s6Step106Add0A++s6Step106Add0B)).toFinset⊆s6Step106Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step106Add0Arena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step106Add0_checked : compileHmrHybridCinLog s6Step106Add0Arena 907 823 864 s6Step106Add0A s6Step106Add0B s6Step106Add0Work=some s6Step106Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step106Add0Arena s6Step106Add0During 907 823 864 s6Step106Add0A s6Step106Add0B s6Step106Add0Work
    (by decide +kernel) (by decide +kernel) s6Step106Add0_distinct
    (fun q hq => s6Step106Add0_owned (List.mem_toFinset.mpr hq)) s6Step106Add0_borrowed

private theorem s6Step106Add1_apart : Disjoint s6Step106Add1Arena.live s6Step106Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step106Add1Arena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step106Add1_card : s6Step106Add1Arena.live.card=873 := by
  decide +kernel

private theorem s6Step106Add1_borrowed : s6Step106Add1Arena.checkBorrow (hmrHybridCount s6Step106Add1Arena s6Step106Add1B.length) s6Step106Add1Work=some s6Step106Add1During := by
  have len : s6Step106Add1Work.length=hmrHybridCount s6Step106Add1Arena s6Step106Add1B.length := by
    rw [hmrHybridCount,s6Step106Add1_card]
    decide +kernel
  have nd : s6Step106Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step106Add1Arena s6Step106Add1During s6Step106Add1Work.toFinset s6Step106Add1_bounded s6Step106Add1_apart rfl

private theorem s6Step106Add1_distinct : (823::907::864::(s6Step106Add1A++s6Step106Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step106Add1_owned : (823::907::864::(s6Step106Add1A++s6Step106Add1B)).toFinset⊆s6Step106Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step106Add1Arena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step106Add1_checked : compileHmrHybridCinLog s6Step106Add1Arena 907 823 864 s6Step106Add1A s6Step106Add1B s6Step106Add1Work=some s6Step106Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step106Add1Arena s6Step106Add1During 907 823 864 s6Step106Add1A s6Step106Add1B s6Step106Add1Work
    (by decide +kernel) (by decide +kernel) s6Step106Add1_distinct
    (fun q hq => s6Step106Add1_owned (List.mem_toFinset.mpr hq)) s6Step106Add1_borrowed

private theorem s6Step106F4_apart : Disjoint (s6Step106Add0A++s6Step106Add0B).toFinset (s6Step106Add1A++s6Step106Add1B).toFinset := by
  have nd : ((s6Step106Add0A++s6Step106Add0B)++(s6Step106Add1A++s6Step106Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step106F4_carry : s6Step106F4FlagArena.checkBorrow 1 [864]=some s6Step106Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step106F4FlagArena,s6Step106HeadFvAfter,arenaWires]
  · change s6Step106Add0Arena.live=(s6Step106HeadFvAfter.live∪{823})∪{864}
    apply hmrArena_union_pair_of_filter_check s6Step106HeadFvAfter s6Step106Add0Arena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 823 864 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step106F4_distinct : (828::907::823::864::((s6Step106Add0A++s6Step106Add1A)++(s6Step106Add0B++s6Step106Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step106F4_flag : s6Step106HeadFvAfter.checkBorrow 1 [823]=some s6Step106F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step106HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step106F4_owned : (828::907::((s6Step106Add0A++s6Step106Add1A)++(s6Step106Add0B++s6Step106Add1B))).toFinset⊆s6Step106HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step106HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step106F4_checked : compileHmrHybridF4Log s6Step106HeadFvAfter 828 907 s6Step106Add0A s6Step106Add0B s6Step106Add1A s6Step106Add1B [823] [864] s6Step106Add0Work s6Step106Add1Work=some s6Step106F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step106HeadFvAfter s6Step106F4FlagArena s6Step106Add0Arena s6Step106Add0During s6Step106Add1During 828 907
    s6Step106Add0A s6Step106Add0B s6Step106Add1A s6Step106Add1B [823] [864] s6Step106Add0Work s6Step106Add1Work
    (fun q hq => s6Step106F4_owned (List.mem_toFinset.mpr hq)) s6Step106F4_flag s6Step106F4_carry
    s6Step106F4_distinct s6Step106F4_apart s6Step106Add0_checked s6Step106Add1_checked

private theorem s6Step106Front_branch : s6Step106FrontSigmaArena.checkBorrow 1 [907]=some s6Step106HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step106FrontSigmaArena,s6Step106EntryGvAfter,s6Step106EntryFBefore,arenaWires]
  · change s6Step106HeadGBefore.live=(s6Step106EntryGvAfter.live∪{828})∪{907}
    apply hmrArena_union_pair_of_filter_check s6Step106EntryGvAfter s6Step106HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 828 907 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step106Front_entry : HmrFrontEntryValid s6Step106EntryFBefore s6Step106FrontBank 216 66 ⟨216,215,67,66⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step106FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step106EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step106EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step106FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step106Front_sigma : s6Step106EntryGvAfter.checkBorrow 1 [828]=some s6Step106FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step106EntryGvAfter,s6Step106EntryFBefore,arenaWires]
  · rfl

private def s6Step106HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step106HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step106HeadFBefore : Arena := s6Step106HeadGAfter

private def s6Step106HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471],795⟩

private def s6Step106HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845],776⟩

private def s6Step106HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215],777⟩

private def s6Step106HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784],775⟩

private theorem s6Step106HeadBank_incomingDistinct : ([s6Step106HeadGRow,s6Step106HeadFRow,s6Step106HeadGvRow,s6Step106HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step106HeadF_Incoming : rowsOwned s6Step106HeadFBefore [s6Step106HeadFRow,s6Step106HeadGvRow,s6Step106HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step106HeadGRow,s6Step106HeadFRow,s6Step106HeadGvRow,s6Step106HeadFvRow] 1 s6Step106HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step106HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step106HeadBank_outgoingOwned : rowsOwned s6Step106HeadFvAfter [s6Step106HeadGOut,s6Step106HeadFOut,s6Step106HeadGvOut,s6Step106HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step106HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step106HeadF_Outgoing : rowsOwned s6Step106HeadFvAfter [s6Step106HeadFOut,s6Step106HeadGvOut,s6Step106HeadFvOut] :=
  hmrRows_owned_drop s6Step106HeadFvAfter [s6Step106HeadGOut,s6Step106HeadFOut,s6Step106HeadGvOut,s6Step106HeadFvOut] 1 s6Step106HeadBank_outgoingOwned

private theorem s6Step106HeadF_distinct : (s6Step106HeadFRow.sign::s6Step106HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step106HeadF_owned : (s6Step106HeadFRow.sign::s6Step106HeadFRow.payload).toFinset⊆s6Step106HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step106HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step106HeadF_reserved : s6Step106HeadFBefore.reserve s6Step106HeadFFresh.toFinset=some s6Step106HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step106HeadFFresh,arenaWires]
  · norm_num [s6Step106HeadFBefore,s6Step106HeadGAfter,s6Step106HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step106HeadFBefore s6Step106HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step106HeadFFresh rfl rfl
    · norm_num [s6Step106HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step106HeadF_checked : planRowResizeLog s6Step106HeadFBefore s6Step106HeadFRow 217 s6Step106HeadFFresh=
    some (s6Step106HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 803],795⟩,growRow 795 s6Step106HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step106HeadFBefore s6Step106HeadFAfter s6Step106HeadFRow 217 s6Step106HeadFFresh
    s6Step106HeadF_distinct s6Step106HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step106HeadF_reserved
  have rowEq : WindowRow.mk (s6Step106HeadFRow.payload++s6Step106HeadFFresh) s6Step106HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 803],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step106HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step106HeadFvBefore : Arena := s6Step106HeadGvAfter

private theorem s6Step106HeadFv_Incoming : rowsOwned s6Step106HeadFvBefore [s6Step106HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step106HeadGRow,s6Step106HeadFRow,s6Step106HeadGvRow,s6Step106HeadFvRow] 3 s6Step106HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step106HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step106HeadFv_Outgoing : rowsOwned s6Step106HeadFvAfter [s6Step106HeadFvOut] :=
  hmrRows_owned_drop s6Step106HeadFvAfter [s6Step106HeadGOut,s6Step106HeadFOut,s6Step106HeadGvOut,s6Step106HeadFvOut] 3 s6Step106HeadBank_outgoingOwned

private theorem s6Step106HeadFv_distinct : (s6Step106HeadFvRow.sign::s6Step106HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step106HeadFv_owned : (s6Step106HeadFvRow.sign::s6Step106HeadFvRow.payload).toFinset⊆s6Step106HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step106HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step106HeadFv_reserved : s6Step106HeadFvBefore.reserve s6Step106HeadFvFresh.toFinset=some s6Step106HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step106HeadFvFresh,arenaWires]
  · norm_num [s6Step106HeadFvBefore,s6Step106HeadGvAfter,s6Step106HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step106HeadFvBefore s6Step106HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step106HeadFvFresh rfl rfl
    · norm_num [s6Step106HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step106HeadFv_checked : planRowResizeLog s6Step106HeadFvBefore s6Step106HeadFvRow 67 s6Step106HeadFvFresh=
    some (s6Step106HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863],776⟩,growRow 776 s6Step106HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step106HeadFvBefore s6Step106HeadFvAfter s6Step106HeadFvRow 67 s6Step106HeadFvFresh
    s6Step106HeadFv_distinct s6Step106HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step106HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step106HeadFvRow.payload++s6Step106HeadFvFresh) s6Step106HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step106HeadG_Incoming : rowsOwned s6Step106HeadGBefore [s6Step106HeadGRow,s6Step106HeadFRow,s6Step106HeadGvRow,s6Step106HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step106HeadGRow,s6Step106HeadFRow,s6Step106HeadGvRow,s6Step106HeadFvRow] 0 s6Step106HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step106HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step106HeadG_Outgoing : rowsOwned s6Step106HeadFvAfter [s6Step106HeadGOut,s6Step106HeadFOut,s6Step106HeadGvOut,s6Step106HeadFvOut] :=
  hmrRows_owned_drop s6Step106HeadFvAfter [s6Step106HeadGOut,s6Step106HeadFOut,s6Step106HeadGvOut,s6Step106HeadFvOut] 0 s6Step106HeadBank_outgoingOwned

private theorem s6Step106HeadG_distinct : (s6Step106HeadGRow.sign::s6Step106HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step106HeadG_owned : (s6Step106HeadGRow.sign::s6Step106HeadGRow.payload).toFinset⊆s6Step106HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step106HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step106HeadG_reserved : s6Step106HeadGBefore.reserve s6Step106HeadGFresh.toFinset=some s6Step106HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step106HeadGFresh,arenaWires]
  · norm_num [s6Step106HeadGBefore,s6Step106HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step106HeadGBefore s6Step106HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step106HeadGFresh rfl rfl
    · norm_num [s6Step106HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step106HeadG_checked : planRowResizeLog s6Step106HeadGBefore s6Step106HeadGRow 217 s6Step106HeadGFresh=
    some (s6Step106HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 876],777⟩,growRow 777 s6Step106HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step106HeadGBefore s6Step106HeadGAfter s6Step106HeadGRow 217 s6Step106HeadGFresh
    s6Step106HeadG_distinct s6Step106HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step106HeadG_reserved
  have rowEq : WindowRow.mk (s6Step106HeadGRow.payload++s6Step106HeadGFresh) s6Step106HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 876],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step106HeadGvBefore : Arena := s6Step106HeadFAfter

private theorem s6Step106HeadGv_Incoming : rowsOwned s6Step106HeadGvBefore [s6Step106HeadGvRow,s6Step106HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step106HeadGRow,s6Step106HeadFRow,s6Step106HeadGvRow,s6Step106HeadFvRow] 2 s6Step106HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step106HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step106HeadGv_Outgoing : rowsOwned s6Step106HeadFvAfter [s6Step106HeadGvOut,s6Step106HeadFvOut] :=
  hmrRows_owned_drop s6Step106HeadFvAfter [s6Step106HeadGOut,s6Step106HeadFOut,s6Step106HeadGvOut,s6Step106HeadFvOut] 2 s6Step106HeadBank_outgoingOwned

private theorem s6Step106HeadGv_distinct : (s6Step106HeadGvRow.sign::s6Step106HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step106HeadGv_owned : (s6Step106HeadGvRow.sign::s6Step106HeadGvRow.payload).toFinset⊆s6Step106HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step106HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step106HeadGv_reserved : s6Step106HeadGvBefore.reserve s6Step106HeadGvFresh.toFinset=some s6Step106HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step106HeadGvFresh,arenaWires]
  · norm_num [s6Step106HeadGvBefore,s6Step106HeadFAfter,s6Step106HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step106HeadGvBefore s6Step106HeadGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step106HeadGvFresh rfl rfl
    · norm_num [s6Step106HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step106HeadGv_checked : planRowResizeLog s6Step106HeadGvBefore s6Step106HeadGvRow 67 s6Step106HeadGvFresh=
    some (s6Step106HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 890],775⟩,growRow 775 s6Step106HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step106HeadGvBefore s6Step106HeadGvAfter s6Step106HeadGvRow 67 s6Step106HeadGvFresh
    s6Step106HeadGv_distinct s6Step106HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step106HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step106HeadGvRow.payload++s6Step106HeadGvFresh) s6Step106HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 890],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step106HeadBank_rows : planWindowRowsLog s6Step106HeadGBefore [(s6Step106HeadGRow,217),(s6Step106HeadFRow,217),(s6Step106HeadGvRow,67),(s6Step106HeadFvRow,67)] [s6Step106HeadGFresh,s6Step106HeadFFresh,s6Step106HeadGvFresh,s6Step106HeadFvFresh]=
    some (s6Step106HeadFvAfter,[s6Step106HeadGOut,s6Step106HeadFOut,s6Step106HeadGvOut,s6Step106HeadFvOut],(growRow 777 s6Step106HeadGFresh ++ (growRow 795 s6Step106HeadFFresh ++ (growRow 775 s6Step106HeadGvFresh ++ (growRow 776 s6Step106HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step106HeadFvAfter [] []=some (s6Step106HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step106HeadFvBefore s6Step106HeadFvAfter s6Step106HeadFvAfter
    s6Step106HeadFvRow s6Step106HeadFvOut 67 s6Step106HeadFvFresh [] [] []
    (growRow 776 s6Step106HeadFvFresh) ([]) s6Step106HeadFv_Incoming s6Step106HeadFv_checked h4 s6Step106HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step106HeadGvBefore s6Step106HeadGvAfter s6Step106HeadFvAfter
    s6Step106HeadGvRow s6Step106HeadGvOut 67 s6Step106HeadGvFresh [(s6Step106HeadFvRow,67)] [s6Step106HeadFvFresh] [s6Step106HeadFvOut]
    (growRow 775 s6Step106HeadGvFresh) ((growRow 776 s6Step106HeadFvFresh ++ [])) s6Step106HeadGv_Incoming s6Step106HeadGv_checked h3 s6Step106HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step106HeadFBefore s6Step106HeadFAfter s6Step106HeadFvAfter
    s6Step106HeadFRow s6Step106HeadFOut 217 s6Step106HeadFFresh [(s6Step106HeadGvRow,67),(s6Step106HeadFvRow,67)] [s6Step106HeadGvFresh,s6Step106HeadFvFresh] [s6Step106HeadGvOut,s6Step106HeadFvOut]
    (growRow 795 s6Step106HeadFFresh) ((growRow 775 s6Step106HeadGvFresh ++ (growRow 776 s6Step106HeadFvFresh ++ []))) s6Step106HeadF_Incoming s6Step106HeadF_checked h2 s6Step106HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step106HeadGBefore s6Step106HeadGAfter s6Step106HeadFvAfter
    s6Step106HeadGRow s6Step106HeadGOut 217 s6Step106HeadGFresh [(s6Step106HeadFRow,217),(s6Step106HeadGvRow,67),(s6Step106HeadFvRow,67)] [s6Step106HeadFFresh,s6Step106HeadGvFresh,s6Step106HeadFvFresh] [s6Step106HeadFOut,s6Step106HeadGvOut,s6Step106HeadFvOut]
    (growRow 777 s6Step106HeadGFresh) ((growRow 795 s6Step106HeadFFresh ++ (growRow 775 s6Step106HeadGvFresh ++ (growRow 776 s6Step106HeadFvFresh ++ [])))) s6Step106HeadG_Incoming s6Step106HeadG_checked h1 s6Step106HeadG_Outgoing
  exact h0

private theorem s6Step106HeadBank_checked : compileHmrBankResizeLog .headroom s6Step106HeadGBefore ⟨s6Step106HeadFRow,s6Step106HeadGRow,s6Step106HeadFvRow,s6Step106HeadGvRow⟩ ⟨217,217,67,67⟩ [s6Step106HeadGFresh,s6Step106HeadFFresh,s6Step106HeadGvFresh,s6Step106HeadFvFresh]=
    some (s6Step106HeadFvAfter,⟨s6Step106HeadFOut,s6Step106HeadGOut,s6Step106HeadFvOut,s6Step106HeadGvOut⟩,(growRow 777 s6Step106HeadGFresh ++ (growRow 795 s6Step106HeadFFresh ++ (growRow 775 s6Step106HeadGvFresh ++ (growRow 776 s6Step106HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step106HeadBank_rows]
  rfl

private theorem s6Step106Front_checked : compileHmrSourceFrontLog s6Step106EntryFBefore s6Step106FrontBank 216 66 ⟨216,215,67,66⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step106FrontLog=some s6Step106FrontPlan := by
  have pairEq : s6Step106FrontPair=⟨s6Step106HeadFRow,s6Step106HeadGRow,s6Step106HeadFvRow,s6Step106HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step106FrontHead=⟨s6Step106ExitFRow,s6Step106ExitGRow,s6Step106ExitFvRow,s6Step106ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step106Add0A=s6Step106FrontHead.f.wires := by decide +kernel
  have gEq : s6Step106Add0B=s6Step106FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step106Add1A=s6Step106FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step106Add1B=s6Step106FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step106EntryFBefore s6Step106FrontBank 216 66 ⟨216,215,67,66⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step106FrontLog s6Step106FrontPlan
  · exact s6Step106Front_entry
  · exact s6Step106EntryBank_checked
  · exact s6Step106Front_sigma
  · rfl
  · exact s6Step106Front_branch
  · rfl
  · simpa only [s6Step106FrontPlan,pairEq] using s6Step106HeadBank_checked
  · simpa only [s6Step106FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step106F4_checked
  · exact s6Step106Counter_checked
  · rfl
  · simpa only [s6Step106FrontPlan,headEq] using s6Step106ExitBank_checked

private theorem s6Step106Complete_explicit_checked : compileHmrEarlyStepLog s6Step106EntryFBefore s6Step106FrontBank 216 66 ⟨216,215,67,66⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step106CompleteLog=some s6Step106CompletePlan := by
  let Q := s6Step106EarlyControlPlan
  have hq := s6Step106EarlyControl_plan_checked
  have fv1 : s6Step106CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step106CompleteOut.fv.payload[2]?.getD s6Step106CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step106CompleteOut.fv.payload[3]?.getD s6Step106CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step106CompleteOut.fv.payload[4]?.getD s6Step106CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step106EntryFBefore s6Step106EarlyControlArena s6Step106FrontBank 216 66 ⟨216,215,67,66⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step106CompleteLog s6Step106FrontPlan Q
    s6Step106Front_checked s6Step106Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step106Complete_owned s6Step106Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step106EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 828 s6Step106CompleteOut.fv.second (s6Step106CompleteOut.fv.payload[2]?.getD s6Step106CompleteOut.fv.sign) (s6Step106CompleteOut.fv.payload[3]?.getD s6Step106CompleteOut.fv.sign) (s6Step106CompleteOut.fv.payload[4]?.getD s6Step106CompleteOut.fv.sign) 907 35 s6Step106EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep106Arena : Arena := s6Step106EntryFBefore
def s6PrivateStep106Bank : WindowBank := s6Step106FrontBank
def s6PrivateStep106Spec : HmrSourceWalkStepLog := ⟨216,66,⟨216,215,67,66⟩,35,.early s6Step106CompleteLog⟩
def s6PrivateStep106Plan : HmrSourceStepPlan := .early s6Step106CompletePlan
theorem s6PrivateStep106_source : s6PrivateStep106Spec=s6ObservedLogs96[10] := rfl
theorem s6PrivateStep106_checked : compileHmrSourceStepLog s6PrivateStep106Arena s6PrivateStep106Bank
    s6PrivateStep106Spec.fgWidth s6PrivateStep106Spec.vWidth s6PrivateStep106Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840]
    6 498 106 s6PrivateStep106Spec.need none s6PrivateStep106Spec.log=some s6PrivateStep106Plan := by
  change compileHmrSourceStepLog s6Step106EntryFBefore s6Step106FrontBank 216 66 ⟨216,215,67,66⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 6 498 106 35 none (.early s6Step106CompleteLog)=some (.early s6Step106CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 106<498)]
  rw [s6Step106Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
