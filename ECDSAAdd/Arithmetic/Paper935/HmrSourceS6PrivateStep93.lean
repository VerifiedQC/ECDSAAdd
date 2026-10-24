import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep91
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

private def s6Step93CompleteMoves : List (Wire × Wire) := []

private def s6Step93EarlyControlLog : HmrEarlyControlLog := ⟨[858, 874, 813, 859, 877],[876],[881],[803, 922, 879, 784, 891, 903],[]⟩

private def s6Step93FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [874], [], []],[[813], [858], [887], [908]],[[], [], [], []]⟩,[857],[890],[859],[877],[876, 881, 803, 922, 879, 784, 891, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[876, 881, 803, 922, 879, 784, 891, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930],[859, 877, 876, 881]⟩

private def s6Step93CompleteLog : HmrEarlyStepLog := ⟨s6Step93FrontLog,s6Step93CompleteMoves,s6Step93EarlyControlLog⟩

private def s6Step93ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477],795⟩

private def s6Step93ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908],776⟩

private def s6Step93ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220],777⟩

private def s6Step93ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887],775⟩

private def s6Step93FrontOut : WindowBank := ⟨s6Step93ExitFOut,s6Step93ExitGOut,s6Step93ExitFvOut,s6Step93ExitGvOut⟩

private def s6Step93CompleteOut : WindowBank := s6Step93FrontOut.repacked s6Step93CompleteMoves

private def s6Step93EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step93EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step93EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step93EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step93EarlyControlPositiveArena,[876],s6Step93EarlyControlEqualityArena,[881],⟨⟨857,false⟩,[⟨⟨876,false⟩,881⟩]⟩⟩

private def s6Step93EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step93EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step93EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step93EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step93EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step93EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step93EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,858⟩,⟨⟨772,false⟩,874⟩,⟨⟨771,false⟩,813⟩,⟨⟨770,false⟩,859⟩,⟨⟨769,false⟩,877⟩]⟩

private def s6Step93EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step93EarlyControlZeroArena,s6Step93EarlyControlZeroPlan,s6Step93EarlyControlClassPlan,s6Step93EarlyControlFlagArena,s6Step93EarlyControlFittedArena,s6Step93EarlyControlHistoryArena,s6Step93EarlyControlSigmaArena,s6Step93EarlyControlOutputArena,s6Step93EarlyControlLog⟩

private def s6Step93CounterWork : List Wire := [859, 877, 876, 881]

private theorem s6Step93Counter_bounded : s6Step93CounterWork.toFinset⊆arenaWires := by norm_num [s6Step93CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step93HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step93CounterDuring : Arena := ⟨s6Step93HeadFvAfter.live∪s6Step93CounterWork.toFinset,Finset.union_subset s6Step93HeadFvAfter.bounded s6Step93Counter_bounded⟩

private def s6Step93EntryFFresh : List Wire := []

private def s6Step93EntryFvFresh : List Wire := []

private def s6Step93EntryGFresh : List Wire := [874]

private def s6Step93EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step93EntryGvAfter : Arena := s6Step93EntryGAfter

private def s6Step93EntryGvFresh : List Wire := []

private def s6Step93ExitFExtra : List Wire := [858]

private def s6Step93ExitGExtra : List Wire := [874, 813]

private def s6Step93ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step93ExitGvAfter : Arena := s6Step93ExitFAfter

private def s6Step93Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step93Add0Work : List Wire := [876, 881, 803, 922, 879, 784, 891, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step93Add0_bounded : s6Step93Add0Work.toFinset⊆arenaWires := by
  have h : s6Step93Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step93Add0During : Arena := ⟨s6Step93Add0Arena.live∪s6Step93Add0Work.toFinset,Finset.union_subset s6Step93Add0Arena.bounded s6Step93Add0_bounded⟩

private def s6Step93Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step93Add1Work : List Wire := [876, 881, 803, 922, 879, 784, 891, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930]

private theorem s6Step93Add1_bounded : s6Step93Add1Work.toFinset⊆arenaWires := by
  have h : s6Step93Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step93Add1During : Arena := ⟨s6Step93Add1Arena.live∪s6Step93Add1Work.toFinset,Finset.union_subset s6Step93Add1Arena.bounded s6Step93Add1_bounded⟩

private def s6Step93F4FlagArena : Arena := ⟨s6Step93HeadFvAfter.live∪{859},Finset.union_subset s6Step93HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step93F4Plan : HmrHybridF4Plan := ⟨s6Step93F4FlagArena,[859],s6Step93Add0Arena,[877],s6Step93Add0During,s6Step93Add0Work,s6Step93Add1During,s6Step93Add1Work⟩

private def s6Step93HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 858],795⟩

private def s6Step93HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908],776⟩

private def s6Step93HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 874, 813],777⟩

private def s6Step93HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887],775⟩

private def s6Step93FrontHead : WindowBank := ⟨s6Step93HeadFOut,s6Step93HeadGOut,s6Step93HeadFvOut,s6Step93HeadGvOut⟩

private def s6Step93EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477],795⟩

private def s6Step93EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780],776⟩

private def s6Step93EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 874],777⟩

private def s6Step93EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794],775⟩

private def s6Step93FrontPair : WindowBank := ⟨s6Step93EntryFOut,s6Step93EntryGOut,s6Step93EntryFvOut,s6Step93EntryGvOut⟩

private def s6Step93FrontSigmaArena : Arena := ⟨s6Step93EntryGvAfter.live∪{857},Finset.union_subset s6Step93EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step93HeadFFresh : List Wire := [858]

private def s6Step93HeadFvFresh : List Wire := [908]

private def s6Step93HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step93HeadGFresh : List Wire := [813]

private def s6Step93HeadGvFresh : List Wire := [887]

private def s6Step93FrontPlan : HmrSourceFront := ⟨s6Step93EntryGvAfter,s6Step93FrontPair,(growRow 795 s6Step93EntryFFresh ++ (growRow 777 s6Step93EntryGFresh ++ (growRow 776 s6Step93EntryFvFresh ++ (growRow 775 s6Step93EntryGvFresh ++ [])))),s6Step93FrontSigmaArena,[857],s6Step93HeadGBefore,[890],
  s6Step93HeadFvAfter,s6Step93FrontHead,(growRow 777 s6Step93HeadGFresh ++ (growRow 795 s6Step93HeadFFresh ++ (growRow 775 s6Step93HeadGvFresh ++ (growRow 776 s6Step93HeadFvFresh ++ [])))),s6Step93F4Plan,s6Step93CounterDuring,s6Step93CounterWork,s6Step93ExitGvAfter,s6Step93FrontOut,(shrinkRow 777 s6Step93ExitGExtra ++ (shrinkRow 795 s6Step93ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))⟩

private def s6Step93CompletePlan : HmrEarlyStepPlan := ⟨s6Step93FrontPlan,s6Step93EarlyControlArena,s6Step93EarlyControlPlan,s6Step93CompleteMoves⟩

private theorem s6Step93Complete_apart : List.Disjoint (s6Step93CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [857, 890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] := by
  have nd : ((s6Step93CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[857, 890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step93Complete_owned : (s6Step93CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step93EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step93EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step93Complete_repack : s6Step93ExitGvAfter.checkRepack s6Step93CompleteMoves=some s6Step93EarlyControlArena := by rfl

private theorem s6Step93EarlyControl_branchOwned : ([890] : List Wire).toFinset⊆s6Step93EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step93EarlyControlSigmaArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step93EarlyControl_branch : compileHmrBranchRetirement s6Step93EarlyControlSigmaArena 890=some s6Step93EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step93EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step93EarlyControlSigmaArena s6Step93EarlyControlOutputArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [890] rfl rfl
    decide +kernel

private theorem s6Step93EarlyControl_classEqualityBorrow : s6Step93EarlyControlPositiveArena.checkBorrow (([857, 876] : List Wire).length-1) s6Step93EarlyControlLog.classWork=some s6Step93EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step93EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step93EarlyControlPositiveArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step93EarlyControlPositiveArena s6Step93EarlyControlEqualityArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step93EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step93EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step93EarlyControl_classEqualityOwned : ([857, 876] : List Wire).toFinset⊆s6Step93EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step93EarlyControlPositiveArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step93EarlyControl_classEquality : compileHmrEqualityLog s6Step93EarlyControlPositiveArena [857, 876] 0 s6Step93EarlyControlLog.classWork=some (s6Step93EarlyControlEqualityArena,s6Step93EarlyControlLog.classWork,s6Step93EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step93EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step93EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step93EarlyControl_classOwned : ([769, 877, 857] : List Wire).toFinset⊆s6Step93EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step93EarlyControlZeroArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step93EarlyControl_positiveBorrow : s6Step93EarlyControlZeroArena.checkBorrow (1) s6Step93EarlyControlLog.positiveWork=some s6Step93EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step93EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step93EarlyControlZeroArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step93EarlyControlZeroArena s6Step93EarlyControlPositiveArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step93EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step93EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step93EarlyControl_class : compileHmrSourceClassLog s6Step93EarlyControlZeroArena false 769 s6Step93EarlyControlZeroPlan.top 0 857 s6Step93EarlyControlLog.positiveWork s6Step93EarlyControlLog.classWork=some s6Step93EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step93EarlyControlClassPlan s6Step93EarlyControlZeroArena false 769 s6Step93EarlyControlZeroPlan.top 0 857
  constructor
  · decide +kernel
  · exact s6Step93EarlyControl_classOwned
  · exact s6Step93EarlyControl_positiveBorrow
  · exact s6Step93EarlyControl_classEquality

private theorem s6Step93EarlyControl_entryRecordOwned : ([890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).toFinset⊆s6Step93EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step93EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step93EarlyControl_entrySigmaOwned : ([857, 254] : List Wire).toFinset⊆s6Step93EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step93EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step93EarlyControl_fitBorrow : s6Step93EarlyControlFlagArena.checkBorrow ((34-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).length)) s6Step93EarlyControlLog.recordFresh=some s6Step93EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step93EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step93EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step93EarlyControlFittedArena,s6Step93EarlyControlFlagArena,s6Step93EarlyControlLog,arenaWires]

private theorem s6Step93EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).toFinset⊆s6Step93EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step93EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step93EarlyControl_fit : compileHmrRecordGrowLog s6Step93EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 34 s6Step93EarlyControlLog.recordFresh=some s6Step93EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step93EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step93EarlyControl_fitBorrow

private theorem s6Step93EarlyControl_flagsBorrow : s6Step93EarlyControlEqualityArena.checkBorrow (6) s6Step93EarlyControlLog.flagWork=some s6Step93EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step93EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step93EarlyControlEqualityArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step93EarlyControlEqualityArena s6Step93EarlyControlFlagArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step93EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step93EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step93EarlyControl_flagsOwned : ([881, 253, 252, 251] : List Wire).toFinset⊆s6Step93EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step93EarlyControlEqualityArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step93EarlyControl_flags : compileHmrFlagsLog s6Step93EarlyControlClassPlan.equalityArena s6Step93EarlyControlClassPlan.equality.top 253 252 251 s6Step93EarlyControlLog.flagWork=some s6Step93EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step93EarlyControl_flagsOwned⟩
  · exact s6Step93EarlyControl_flagsBorrow

private theorem s6Step93EarlyControl_historyBorrow : s6Step93EarlyControlArena.checkBorrow ((34-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).length)) s6Step93EarlyControlLog.recordFresh=some s6Step93EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step93EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step93EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step93EarlyControlArena s6Step93EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step93EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step93EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step93EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).toFinset⊆s6Step93EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step93EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step93EarlyControl_history : compileHmrRecordGrowLog s6Step93EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 34 s6Step93EarlyControlLog.recordFresh=some s6Step93EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step93EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step93EarlyControl_historyBorrow

private theorem s6Step93EarlyControl_sigmaOwned : ([254, 857] : List Wire).toFinset⊆s6Step93EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step93EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step93EarlyControl_sigmaReleaseOwned : ([857] : List Wire).toFinset⊆s6Step93EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step93EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step93EarlyControl_sigmaRelease : s6Step93EarlyControlHistoryArena.release {857} (fun _ => false)=some s6Step93EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step93EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step93EarlyControlHistoryArena s6Step93EarlyControlSigmaArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [857] rfl rfl
    decide +kernel

private theorem s6Step93EarlyControl_sigma : compileHmrSigmaDropLog s6Step93EarlyControlHistoryArena false 0 0 254 857 []=some s6Step93EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step93EarlyControl_sigmaOwned⟩
  · exact s6Step93EarlyControl_sigmaRelease

private theorem s6Step93EarlyControl_zeroBorrow : s6Step93EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step93EarlyControlLog.zeroWork=some s6Step93EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step93EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step93EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step93EarlyControlArena s6Step93EarlyControlZeroArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step93EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step93EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step93EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step93EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step93EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step93EarlyControl_zero : compileHmrEqualityLog s6Step93EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step93EarlyControlLog.zeroWork=some (s6Step93EarlyControlZeroArena,s6Step93EarlyControlLog.zeroWork,s6Step93EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step93EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step93EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step93EarlyControl_logged : s6Step93EarlyControlPlan.Logged s6Step93EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 857 254 253 252 251 890 34 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step93EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step93EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step93EarlyControl_zero
  · exact s6Step93EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step93EarlyControl_flags
  · exact s6Step93EarlyControl_fit
  · exact s6Step93EarlyControl_history
  · exact s6Step93EarlyControl_sigma
  · exact s6Step93EarlyControl_branch

private theorem s6Step93EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step93EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 857 254 253 252 251 890 34 s6Step93EarlyControlLog=some s6Step93EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step93EarlyControlPlan s6Step93EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 857 254 253 252 251 890 34 s6Step93EarlyControl_logged

private def s6Step93EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step93EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477],795⟩

private def s6Step93EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780],776⟩

private def s6Step93EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220],777⟩

private def s6Step93EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794],775⟩

private def s6Step93FrontBank : WindowBank := ⟨s6Step93EntryFRow,s6Step93EntryGRow,s6Step93EntryFvRow,s6Step93EntryGvRow⟩

private def s6Step93Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 858, 795]

private def s6Step93Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 874, 813, 777]

private def s6Step93Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 776]

private def s6Step93Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 775]

private theorem s6Step93Counter_apart : Disjoint s6Step93HeadFvAfter.live s6Step93CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step93HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step93Counter_borrowed : s6Step93HeadFvAfter.checkBorrow 4 s6Step93CounterWork=some s6Step93CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step93HeadFvAfter s6Step93CounterDuring s6Step93CounterWork.toFinset s6Step93Counter_bounded s6Step93Counter_apart rfl

private theorem s6Step93Counter_owned : (857::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step93HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step93HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step93Counter_checked : compileHmrCounterStepLog s6Step93HeadFvAfter true 857 [774, 773, 772, 771, 770, 769] s6Step93CounterWork=some s6Step93CounterDuring := by
  have owned : ∀q∈857::[774, 773, 772, 771, 770, 769],q∈s6Step93HeadFvAfter.live := fun q hq => s6Step93Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step93Counter_borrowed

private def s6Step93EntryFAfter : Arena := s6Step93EntryFBefore

private theorem s6Step93EntryBank_incomingDistinct : ([s6Step93EntryFRow,s6Step93EntryGRow,s6Step93EntryFvRow,s6Step93EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step93EntryF_Incoming : rowsOwned s6Step93EntryFBefore [s6Step93EntryFRow,s6Step93EntryGRow,s6Step93EntryFvRow,s6Step93EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step93EntryFRow,s6Step93EntryGRow,s6Step93EntryFvRow,s6Step93EntryGvRow] 0 s6Step93EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step93EntryFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step93EntryBank_outgoingOwned : rowsOwned s6Step93EntryGvAfter [s6Step93EntryFOut,s6Step93EntryGOut,s6Step93EntryFvOut,s6Step93EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step93EntryGvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step93EntryF_Outgoing : rowsOwned s6Step93EntryGvAfter [s6Step93EntryFOut,s6Step93EntryGOut,s6Step93EntryFvOut,s6Step93EntryGvOut] :=
  hmrRows_owned_drop s6Step93EntryGvAfter [s6Step93EntryFOut,s6Step93EntryGOut,s6Step93EntryFvOut,s6Step93EntryGvOut] 0 s6Step93EntryBank_outgoingOwned

private theorem s6Step93EntryF_distinct : (s6Step93EntryFRow.sign::s6Step93EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step93EntryF_owned : (s6Step93EntryFRow.sign::s6Step93EntryFRow.payload).toFinset⊆s6Step93EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step93EntryFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step93EntryF_reserved : s6Step93EntryFBefore.reserve s6Step93EntryFFresh.toFinset=some s6Step93EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step93EntryFFresh,arenaWires]
  · norm_num [s6Step93EntryFBefore,s6Step93EntryFFresh,arenaWires]
  · simp only [s6Step93EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step93EntryF_checked : planRowResizeLog s6Step93EntryFBefore s6Step93EntryFRow 222 s6Step93EntryFFresh=
    some (s6Step93EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477],795⟩,growRow 795 s6Step93EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step93EntryFBefore s6Step93EntryFAfter s6Step93EntryFRow 222 s6Step93EntryFFresh
    s6Step93EntryF_distinct s6Step93EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step93EntryF_reserved
  have rowEq : WindowRow.mk (s6Step93EntryFRow.payload++s6Step93EntryFFresh) s6Step93EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step93EntryFvAfter : Arena := s6Step93EntryGAfter

private def s6Step93EntryFvBefore : Arena := s6Step93EntryGAfter

private theorem s6Step93EntryFv_Incoming : rowsOwned s6Step93EntryFvBefore [s6Step93EntryFvRow,s6Step93EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step93EntryFRow,s6Step93EntryGRow,s6Step93EntryFvRow,s6Step93EntryGvRow] 2 s6Step93EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step93EntryFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step93EntryFv_Outgoing : rowsOwned s6Step93EntryGvAfter [s6Step93EntryFvOut,s6Step93EntryGvOut] :=
  hmrRows_owned_drop s6Step93EntryGvAfter [s6Step93EntryFOut,s6Step93EntryGOut,s6Step93EntryFvOut,s6Step93EntryGvOut] 2 s6Step93EntryBank_outgoingOwned

private theorem s6Step93EntryFv_distinct : (s6Step93EntryFvRow.sign::s6Step93EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step93EntryFv_owned : (s6Step93EntryFvRow.sign::s6Step93EntryFvRow.payload).toFinset⊆s6Step93EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step93EntryFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step93EntryFv_reserved : s6Step93EntryFvBefore.reserve s6Step93EntryFvFresh.toFinset=some s6Step93EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step93EntryFvFresh,arenaWires]
  · norm_num [s6Step93EntryFvBefore,s6Step93EntryGAfter,s6Step93EntryFvFresh,arenaWires]
  · simp only [s6Step93EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step93EntryFv_checked : planRowResizeLog s6Step93EntryFvBefore s6Step93EntryFvRow 59 s6Step93EntryFvFresh=
    some (s6Step93EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780],776⟩,growRow 776 s6Step93EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step93EntryFvBefore s6Step93EntryFvAfter s6Step93EntryFvRow 59 s6Step93EntryFvFresh
    s6Step93EntryFv_distinct s6Step93EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step93EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step93EntryFvRow.payload++s6Step93EntryFvFresh) s6Step93EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step93EntryGBefore : Arena := s6Step93EntryFBefore

private theorem s6Step93EntryG_Incoming : rowsOwned s6Step93EntryGBefore [s6Step93EntryGRow,s6Step93EntryFvRow,s6Step93EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step93EntryFRow,s6Step93EntryGRow,s6Step93EntryFvRow,s6Step93EntryGvRow] 1 s6Step93EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step93EntryGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step93EntryG_Outgoing : rowsOwned s6Step93EntryGvAfter [s6Step93EntryGOut,s6Step93EntryFvOut,s6Step93EntryGvOut] :=
  hmrRows_owned_drop s6Step93EntryGvAfter [s6Step93EntryFOut,s6Step93EntryGOut,s6Step93EntryFvOut,s6Step93EntryGvOut] 1 s6Step93EntryBank_outgoingOwned

private theorem s6Step93EntryG_distinct : (s6Step93EntryGRow.sign::s6Step93EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step93EntryG_owned : (s6Step93EntryGRow.sign::s6Step93EntryGRow.payload).toFinset⊆s6Step93EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step93EntryGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step93EntryG_reserved : s6Step93EntryGBefore.reserve s6Step93EntryGFresh.toFinset=some s6Step93EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step93EntryGFresh,arenaWires]
  · norm_num [s6Step93EntryGBefore,s6Step93EntryFBefore,s6Step93EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step93EntryGBefore s6Step93EntryGAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step93EntryGFresh rfl rfl
    · norm_num [s6Step93EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step93EntryG_checked : planRowResizeLog s6Step93EntryGBefore s6Step93EntryGRow 222 s6Step93EntryGFresh=
    some (s6Step93EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 874],777⟩,growRow 777 s6Step93EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step93EntryGBefore s6Step93EntryGAfter s6Step93EntryGRow 222 s6Step93EntryGFresh
    s6Step93EntryG_distinct s6Step93EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step93EntryG_reserved
  have rowEq : WindowRow.mk (s6Step93EntryGRow.payload++s6Step93EntryGFresh) s6Step93EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 874],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step93EntryGvBefore : Arena := s6Step93EntryGAfter

private theorem s6Step93EntryGv_Incoming : rowsOwned s6Step93EntryGvBefore [s6Step93EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step93EntryFRow,s6Step93EntryGRow,s6Step93EntryFvRow,s6Step93EntryGvRow] 3 s6Step93EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step93EntryGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step93EntryGv_Outgoing : rowsOwned s6Step93EntryGvAfter [s6Step93EntryGvOut] :=
  hmrRows_owned_drop s6Step93EntryGvAfter [s6Step93EntryFOut,s6Step93EntryGOut,s6Step93EntryFvOut,s6Step93EntryGvOut] 3 s6Step93EntryBank_outgoingOwned

private theorem s6Step93EntryGv_distinct : (s6Step93EntryGvRow.sign::s6Step93EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step93EntryGv_owned : (s6Step93EntryGvRow.sign::s6Step93EntryGvRow.payload).toFinset⊆s6Step93EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step93EntryGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step93EntryGv_reserved : s6Step93EntryGvBefore.reserve s6Step93EntryGvFresh.toFinset=some s6Step93EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step93EntryGvFresh,arenaWires]
  · norm_num [s6Step93EntryGvBefore,s6Step93EntryGAfter,s6Step93EntryGvFresh,arenaWires]
  · simp only [s6Step93EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step93EntryGv_checked : planRowResizeLog s6Step93EntryGvBefore s6Step93EntryGvRow 59 s6Step93EntryGvFresh=
    some (s6Step93EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794],775⟩,growRow 775 s6Step93EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step93EntryGvBefore s6Step93EntryGvAfter s6Step93EntryGvRow 59 s6Step93EntryGvFresh
    s6Step93EntryGv_distinct s6Step93EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step93EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step93EntryGvRow.payload++s6Step93EntryGvFresh) s6Step93EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step93EntryBank_rows : planWindowRowsLog s6Step93EntryFBefore [(s6Step93EntryFRow,222),(s6Step93EntryGRow,222),(s6Step93EntryFvRow,59),(s6Step93EntryGvRow,59)] [s6Step93EntryFFresh,s6Step93EntryGFresh,s6Step93EntryFvFresh,s6Step93EntryGvFresh]=
    some (s6Step93EntryGvAfter,[s6Step93EntryFOut,s6Step93EntryGOut,s6Step93EntryFvOut,s6Step93EntryGvOut],(growRow 795 s6Step93EntryFFresh ++ (growRow 777 s6Step93EntryGFresh ++ (growRow 776 s6Step93EntryFvFresh ++ (growRow 775 s6Step93EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step93EntryGvAfter [] []=some (s6Step93EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step93EntryGvBefore s6Step93EntryGvAfter s6Step93EntryGvAfter
    s6Step93EntryGvRow s6Step93EntryGvOut 59 s6Step93EntryGvFresh [] [] []
    (growRow 775 s6Step93EntryGvFresh) ([]) s6Step93EntryGv_Incoming s6Step93EntryGv_checked h4 s6Step93EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step93EntryFvBefore s6Step93EntryFvAfter s6Step93EntryGvAfter
    s6Step93EntryFvRow s6Step93EntryFvOut 59 s6Step93EntryFvFresh [(s6Step93EntryGvRow,59)] [s6Step93EntryGvFresh] [s6Step93EntryGvOut]
    (growRow 776 s6Step93EntryFvFresh) ((growRow 775 s6Step93EntryGvFresh ++ [])) s6Step93EntryFv_Incoming s6Step93EntryFv_checked h3 s6Step93EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step93EntryGBefore s6Step93EntryGAfter s6Step93EntryGvAfter
    s6Step93EntryGRow s6Step93EntryGOut 222 s6Step93EntryGFresh [(s6Step93EntryFvRow,59),(s6Step93EntryGvRow,59)] [s6Step93EntryFvFresh,s6Step93EntryGvFresh] [s6Step93EntryFvOut,s6Step93EntryGvOut]
    (growRow 777 s6Step93EntryGFresh) ((growRow 776 s6Step93EntryFvFresh ++ (growRow 775 s6Step93EntryGvFresh ++ []))) s6Step93EntryG_Incoming s6Step93EntryG_checked h2 s6Step93EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step93EntryFBefore s6Step93EntryFAfter s6Step93EntryGvAfter
    s6Step93EntryFRow s6Step93EntryFOut 222 s6Step93EntryFFresh [(s6Step93EntryGRow,222),(s6Step93EntryFvRow,59),(s6Step93EntryGvRow,59)] [s6Step93EntryGFresh,s6Step93EntryFvFresh,s6Step93EntryGvFresh] [s6Step93EntryGOut,s6Step93EntryFvOut,s6Step93EntryGvOut]
    (growRow 795 s6Step93EntryFFresh) ((growRow 777 s6Step93EntryGFresh ++ (growRow 776 s6Step93EntryFvFresh ++ (growRow 775 s6Step93EntryGvFresh ++ [])))) s6Step93EntryF_Incoming s6Step93EntryF_checked h1 s6Step93EntryF_Outgoing
  exact h0

private theorem s6Step93EntryBank_checked : compileHmrBankResizeLog .entry s6Step93EntryFBefore ⟨s6Step93EntryFRow,s6Step93EntryGRow,s6Step93EntryFvRow,s6Step93EntryGvRow⟩ ⟨222,222,59,59⟩ [s6Step93EntryFFresh,s6Step93EntryGFresh,s6Step93EntryFvFresh,s6Step93EntryGvFresh]=
    some (s6Step93EntryGvAfter,⟨s6Step93EntryFOut,s6Step93EntryGOut,s6Step93EntryFvOut,s6Step93EntryGvOut⟩,(growRow 795 s6Step93EntryFFresh ++ (growRow 777 s6Step93EntryGFresh ++ (growRow 776 s6Step93EntryFvFresh ++ (growRow 775 s6Step93EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step93EntryBank_rows]
  rfl

private def s6Step93ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step93ExitFBefore : Arena := s6Step93ExitGAfter

private def s6Step93ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 858],795⟩

private def s6Step93ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908],776⟩

private def s6Step93ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 874, 813],777⟩

private def s6Step93ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887],775⟩

private theorem s6Step93ExitBank_incomingDistinct : ([s6Step93ExitGRow,s6Step93ExitFRow,s6Step93ExitFvRow,s6Step93ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step93ExitF_Incoming : rowsOwned s6Step93ExitFBefore [s6Step93ExitFRow,s6Step93ExitFvRow,s6Step93ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step93ExitGRow,s6Step93ExitFRow,s6Step93ExitFvRow,s6Step93ExitGvRow] 1 s6Step93ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step93ExitFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step93ExitBank_outgoingOwned : rowsOwned s6Step93ExitGvAfter [s6Step93ExitGOut,s6Step93ExitFOut,s6Step93ExitFvOut,s6Step93ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step93ExitGvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step93ExitF_Outgoing : rowsOwned s6Step93ExitGvAfter [s6Step93ExitFOut,s6Step93ExitFvOut,s6Step93ExitGvOut] :=
  hmrRows_owned_drop s6Step93ExitGvAfter [s6Step93ExitGOut,s6Step93ExitFOut,s6Step93ExitFvOut,s6Step93ExitGvOut] 1 s6Step93ExitBank_outgoingOwned

private theorem s6Step93ExitF_distinct : (s6Step93ExitFRow.sign::s6Step93ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step93ExitF_owned : (s6Step93ExitFRow.sign::s6Step93ExitFRow.payload).toFinset⊆s6Step93ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step93ExitFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step93ExitF_retired : s6Step93ExitFBefore.retireSet s6Step93ExitFExtra.toFinset=s6Step93ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step93ExitFBefore s6Step93ExitFAfter s6Step93ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step93ExitFBefore s6Step93ExitFAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step93ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step93ExitF_checked : planRowResizeLog s6Step93ExitFBefore s6Step93ExitFRow 222 []=
    some (s6Step93ExitFAfter,s6Step93ExitFOut,shrinkRow 795 s6Step93ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step93ExitFBefore s6Step93ExitFRow 222 s6Step93ExitF_distinct s6Step93ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step93ExitFRow.payload.take 222) s6Step93ExitFRow.sign=s6Step93ExitFOut := by decide +kernel
  have hi : s6Step93ExitFRow.payload.drop 222=s6Step93ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step93ExitF_retired] at result
  exact result

private def s6Step93ExitFvAfter : Arena := s6Step93ExitFAfter

private def s6Step93ExitFvBefore : Arena := s6Step93ExitFAfter

private theorem s6Step93ExitFv_Incoming : rowsOwned s6Step93ExitFvBefore [s6Step93ExitFvRow,s6Step93ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step93ExitGRow,s6Step93ExitFRow,s6Step93ExitFvRow,s6Step93ExitGvRow] 2 s6Step93ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step93ExitFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step93ExitFv_Outgoing : rowsOwned s6Step93ExitGvAfter [s6Step93ExitFvOut,s6Step93ExitGvOut] :=
  hmrRows_owned_drop s6Step93ExitGvAfter [s6Step93ExitGOut,s6Step93ExitFOut,s6Step93ExitFvOut,s6Step93ExitGvOut] 2 s6Step93ExitBank_outgoingOwned

private theorem s6Step93ExitFv_distinct : (s6Step93ExitFvRow.sign::s6Step93ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step93ExitFv_owned : (s6Step93ExitFvRow.sign::s6Step93ExitFvRow.payload).toFinset⊆s6Step93ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step93ExitFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step93ExitFv_reserved : s6Step93ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step93ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step93ExitFv_checked : planRowResizeLog s6Step93ExitFvBefore s6Step93ExitFvRow 60 []=
    some (s6Step93ExitFvAfter,s6Step93ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step93ExitFvBefore s6Step93ExitFvAfter s6Step93ExitFvRow 60 []
    s6Step93ExitFv_distinct s6Step93ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step93ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step93ExitFvRow.payload++[]) s6Step93ExitFvRow.sign=s6Step93ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step93ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step93ExitG_Incoming : rowsOwned s6Step93ExitGBefore [s6Step93ExitGRow,s6Step93ExitFRow,s6Step93ExitFvRow,s6Step93ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step93ExitGRow,s6Step93ExitFRow,s6Step93ExitFvRow,s6Step93ExitGvRow] 0 s6Step93ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step93ExitGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step93ExitG_Outgoing : rowsOwned s6Step93ExitGvAfter [s6Step93ExitGOut,s6Step93ExitFOut,s6Step93ExitFvOut,s6Step93ExitGvOut] :=
  hmrRows_owned_drop s6Step93ExitGvAfter [s6Step93ExitGOut,s6Step93ExitFOut,s6Step93ExitFvOut,s6Step93ExitGvOut] 0 s6Step93ExitBank_outgoingOwned

private theorem s6Step93ExitG_distinct : (s6Step93ExitGRow.sign::s6Step93ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step93ExitG_owned : (s6Step93ExitGRow.sign::s6Step93ExitGRow.payload).toFinset⊆s6Step93ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step93ExitGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step93ExitG_retired : s6Step93ExitGBefore.retireSet s6Step93ExitGExtra.toFinset=s6Step93ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step93ExitGBefore s6Step93ExitGAfter s6Step93ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step93ExitGBefore s6Step93ExitGAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step93ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step93ExitG_checked : planRowResizeLog s6Step93ExitGBefore s6Step93ExitGRow 221 []=
    some (s6Step93ExitGAfter,s6Step93ExitGOut,shrinkRow 777 s6Step93ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step93ExitGBefore s6Step93ExitGRow 221 s6Step93ExitG_distinct s6Step93ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step93ExitGRow.payload.take 221) s6Step93ExitGRow.sign=s6Step93ExitGOut := by decide +kernel
  have hi : s6Step93ExitGRow.payload.drop 221=s6Step93ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step93ExitG_retired] at result
  exact result

private def s6Step93ExitGvBefore : Arena := s6Step93ExitFAfter

private theorem s6Step93ExitGv_Incoming : rowsOwned s6Step93ExitGvBefore [s6Step93ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step93ExitGRow,s6Step93ExitFRow,s6Step93ExitFvRow,s6Step93ExitGvRow] 3 s6Step93ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step93ExitGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step93ExitGv_Outgoing : rowsOwned s6Step93ExitGvAfter [s6Step93ExitGvOut] :=
  hmrRows_owned_drop s6Step93ExitGvAfter [s6Step93ExitGOut,s6Step93ExitFOut,s6Step93ExitFvOut,s6Step93ExitGvOut] 3 s6Step93ExitBank_outgoingOwned

private theorem s6Step93ExitGv_distinct : (s6Step93ExitGvRow.sign::s6Step93ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step93ExitGv_owned : (s6Step93ExitGvRow.sign::s6Step93ExitGvRow.payload).toFinset⊆s6Step93ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step93ExitGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step93ExitGv_reserved : s6Step93ExitGvBefore.reserve (∅ : Finset Wire)=some s6Step93ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step93ExitGv_checked : planRowResizeLog s6Step93ExitGvBefore s6Step93ExitGvRow 60 []=
    some (s6Step93ExitGvAfter,s6Step93ExitGvOut,growRow 775 []) := by
  have result := planRowResizeLog_of_growth s6Step93ExitGvBefore s6Step93ExitGvAfter s6Step93ExitGvRow 60 []
    s6Step93ExitGv_distinct s6Step93ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step93ExitGv_reserved
  have rowEq : WindowRow.mk (s6Step93ExitGvRow.payload++[]) s6Step93ExitGvRow.sign=s6Step93ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step93ExitBank_rows : planWindowRowsLog s6Step93ExitGBefore [(s6Step93ExitGRow,221),(s6Step93ExitFRow,222),(s6Step93ExitFvRow,60),(s6Step93ExitGvRow,60)] [[],[],[],[]]=
    some (s6Step93ExitGvAfter,[s6Step93ExitGOut,s6Step93ExitFOut,s6Step93ExitFvOut,s6Step93ExitGvOut],(shrinkRow 777 s6Step93ExitGExtra ++ (shrinkRow 795 s6Step93ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  have h4 : planWindowRowsLog s6Step93ExitGvAfter [] []=some (s6Step93ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step93ExitGvBefore s6Step93ExitGvAfter s6Step93ExitGvAfter
    s6Step93ExitGvRow s6Step93ExitGvOut 60 [] [] [] []
    (growRow 775 []) ([]) s6Step93ExitGv_Incoming s6Step93ExitGv_checked h4 s6Step93ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step93ExitFvBefore s6Step93ExitFvAfter s6Step93ExitGvAfter
    s6Step93ExitFvRow s6Step93ExitFvOut 60 [] [(s6Step93ExitGvRow,60)] [[]] [s6Step93ExitGvOut]
    (growRow 776 []) ((growRow 775 [] ++ [])) s6Step93ExitFv_Incoming s6Step93ExitFv_checked h3 s6Step93ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step93ExitFBefore s6Step93ExitFAfter s6Step93ExitGvAfter
    s6Step93ExitFRow s6Step93ExitFOut 222 [] [(s6Step93ExitFvRow,60),(s6Step93ExitGvRow,60)] [[],[]] [s6Step93ExitFvOut,s6Step93ExitGvOut]
    (shrinkRow 795 s6Step93ExitFExtra) ((growRow 776 [] ++ (growRow 775 [] ++ []))) s6Step93ExitF_Incoming s6Step93ExitF_checked h2 s6Step93ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step93ExitGBefore s6Step93ExitGAfter s6Step93ExitGvAfter
    s6Step93ExitGRow s6Step93ExitGOut 221 [] [(s6Step93ExitFRow,222),(s6Step93ExitFvRow,60),(s6Step93ExitGvRow,60)] [[],[],[]] [s6Step93ExitFOut,s6Step93ExitFvOut,s6Step93ExitGvOut]
    (shrinkRow 777 s6Step93ExitGExtra) ((shrinkRow 795 s6Step93ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ [])))) s6Step93ExitG_Incoming s6Step93ExitG_checked h1 s6Step93ExitG_Outgoing
  exact h0

private theorem s6Step93ExitBank_checked : compileHmrBankResizeLog .exit s6Step93ExitGBefore ⟨s6Step93ExitFRow,s6Step93ExitGRow,s6Step93ExitFvRow,s6Step93ExitGvRow⟩ ⟨222,221,60,60⟩ [[],[],[],[]]=
    some (s6Step93ExitGvAfter,⟨s6Step93ExitFOut,s6Step93ExitGOut,s6Step93ExitFvOut,s6Step93ExitGvOut⟩,(shrinkRow 777 s6Step93ExitGExtra ++ (shrinkRow 795 s6Step93ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step93ExitBank_rows]
  rfl

private theorem s6Step93Add0_apart : Disjoint s6Step93Add0Arena.live s6Step93Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step93Add0Arena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step93Add0_card : s6Step93Add0Arena.live.card=870 := by
  decide +kernel

private theorem s6Step93Add0_borrowed : s6Step93Add0Arena.checkBorrow (hmrHybridCount s6Step93Add0Arena s6Step93Add0B.length) s6Step93Add0Work=some s6Step93Add0During := by
  have len : s6Step93Add0Work.length=hmrHybridCount s6Step93Add0Arena s6Step93Add0B.length := by
    rw [hmrHybridCount,s6Step93Add0_card]
    decide +kernel
  have nd : s6Step93Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step93Add0Arena s6Step93Add0During s6Step93Add0Work.toFinset s6Step93Add0_bounded s6Step93Add0_apart rfl

private theorem s6Step93Add0_distinct : (859::890::877::(s6Step93Add0A++s6Step93Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step93Add0_owned : (859::890::877::(s6Step93Add0A++s6Step93Add0B)).toFinset⊆s6Step93Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step93Add0Arena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step93Add0_checked : compileHmrHybridCinLog s6Step93Add0Arena 890 859 877 s6Step93Add0A s6Step93Add0B s6Step93Add0Work=some s6Step93Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step93Add0Arena s6Step93Add0During 890 859 877 s6Step93Add0A s6Step93Add0B s6Step93Add0Work
    (by decide +kernel) (by decide +kernel) s6Step93Add0_distinct
    (fun q hq => s6Step93Add0_owned (List.mem_toFinset.mpr hq)) s6Step93Add0_borrowed

private theorem s6Step93Add1_apart : Disjoint s6Step93Add1Arena.live s6Step93Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step93Add1Arena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step93Add1_card : s6Step93Add1Arena.live.card=870 := by
  decide +kernel

private theorem s6Step93Add1_borrowed : s6Step93Add1Arena.checkBorrow (hmrHybridCount s6Step93Add1Arena s6Step93Add1B.length) s6Step93Add1Work=some s6Step93Add1During := by
  have len : s6Step93Add1Work.length=hmrHybridCount s6Step93Add1Arena s6Step93Add1B.length := by
    rw [hmrHybridCount,s6Step93Add1_card]
    decide +kernel
  have nd : s6Step93Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step93Add1Arena s6Step93Add1During s6Step93Add1Work.toFinset s6Step93Add1_bounded s6Step93Add1_apart rfl

private theorem s6Step93Add1_distinct : (859::890::877::(s6Step93Add1A++s6Step93Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step93Add1_owned : (859::890::877::(s6Step93Add1A++s6Step93Add1B)).toFinset⊆s6Step93Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step93Add1Arena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step93Add1_checked : compileHmrHybridCinLog s6Step93Add1Arena 890 859 877 s6Step93Add1A s6Step93Add1B s6Step93Add1Work=some s6Step93Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step93Add1Arena s6Step93Add1During 890 859 877 s6Step93Add1A s6Step93Add1B s6Step93Add1Work
    (by decide +kernel) (by decide +kernel) s6Step93Add1_distinct
    (fun q hq => s6Step93Add1_owned (List.mem_toFinset.mpr hq)) s6Step93Add1_borrowed

private theorem s6Step93F4_apart : Disjoint (s6Step93Add0A++s6Step93Add0B).toFinset (s6Step93Add1A++s6Step93Add1B).toFinset := by
  have nd : ((s6Step93Add0A++s6Step93Add0B)++(s6Step93Add1A++s6Step93Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step93F4_carry : s6Step93F4FlagArena.checkBorrow 1 [877]=some s6Step93Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step93F4FlagArena,s6Step93HeadFvAfter,arenaWires]
  · change s6Step93Add0Arena.live=(s6Step93HeadFvAfter.live∪{859})∪{877}
    apply hmrArena_union_pair_of_filter_check s6Step93HeadFvAfter s6Step93Add0Arena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 859 877 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step93F4_distinct : (857::890::859::877::((s6Step93Add0A++s6Step93Add1A)++(s6Step93Add0B++s6Step93Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step93F4_flag : s6Step93HeadFvAfter.checkBorrow 1 [859]=some s6Step93F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step93HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step93F4_owned : (857::890::((s6Step93Add0A++s6Step93Add1A)++(s6Step93Add0B++s6Step93Add1B))).toFinset⊆s6Step93HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step93HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step93F4_checked : compileHmrHybridF4Log s6Step93HeadFvAfter 857 890 s6Step93Add0A s6Step93Add0B s6Step93Add1A s6Step93Add1B [859] [877] s6Step93Add0Work s6Step93Add1Work=some s6Step93F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step93HeadFvAfter s6Step93F4FlagArena s6Step93Add0Arena s6Step93Add0During s6Step93Add1During 857 890
    s6Step93Add0A s6Step93Add0B s6Step93Add1A s6Step93Add1B [859] [877] s6Step93Add0Work s6Step93Add1Work
    (fun q hq => s6Step93F4_owned (List.mem_toFinset.mpr hq)) s6Step93F4_flag s6Step93F4_carry
    s6Step93F4_distinct s6Step93F4_apart s6Step93Add0_checked s6Step93Add1_checked

private theorem s6Step93Front_branch : s6Step93FrontSigmaArena.checkBorrow 1 [890]=some s6Step93HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step93FrontSigmaArena,s6Step93EntryGvAfter,s6Step93EntryGAfter,arenaWires]
  · change s6Step93HeadGBefore.live=(s6Step93EntryGvAfter.live∪{857})∪{890}
    apply hmrArena_union_pair_of_filter_check s6Step93EntryGvAfter s6Step93HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 857 890 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step93Front_entry : HmrFrontEntryValid s6Step93EntryFBefore s6Step93FrontBank 222 59 ⟨222,221,60,60⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step93FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step93EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step93EntryFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,887),(888,890),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step93FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step93Front_sigma : s6Step93EntryGvAfter.checkBorrow 1 [857]=some s6Step93FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step93EntryGvAfter,s6Step93EntryGAfter,arenaWires]
  · rfl

private def s6Step93HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step93HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step93HeadFBefore : Arena := s6Step93HeadGAfter

private def s6Step93HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477],795⟩

private def s6Step93HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780],776⟩

private def s6Step93HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 874],777⟩

private def s6Step93HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794],775⟩

private theorem s6Step93HeadBank_incomingDistinct : ([s6Step93HeadGRow,s6Step93HeadFRow,s6Step93HeadGvRow,s6Step93HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step93HeadF_Incoming : rowsOwned s6Step93HeadFBefore [s6Step93HeadFRow,s6Step93HeadGvRow,s6Step93HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step93HeadGRow,s6Step93HeadFRow,s6Step93HeadGvRow,s6Step93HeadFvRow] 1 s6Step93HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step93HeadFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step93HeadBank_outgoingOwned : rowsOwned s6Step93HeadFvAfter [s6Step93HeadGOut,s6Step93HeadFOut,s6Step93HeadGvOut,s6Step93HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step93HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step93HeadF_Outgoing : rowsOwned s6Step93HeadFvAfter [s6Step93HeadFOut,s6Step93HeadGvOut,s6Step93HeadFvOut] :=
  hmrRows_owned_drop s6Step93HeadFvAfter [s6Step93HeadGOut,s6Step93HeadFOut,s6Step93HeadGvOut,s6Step93HeadFvOut] 1 s6Step93HeadBank_outgoingOwned

private theorem s6Step93HeadF_distinct : (s6Step93HeadFRow.sign::s6Step93HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step93HeadF_owned : (s6Step93HeadFRow.sign::s6Step93HeadFRow.payload).toFinset⊆s6Step93HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step93HeadFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step93HeadF_reserved : s6Step93HeadFBefore.reserve s6Step93HeadFFresh.toFinset=some s6Step93HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step93HeadFFresh,arenaWires]
  · norm_num [s6Step93HeadFBefore,s6Step93HeadGAfter,s6Step93HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step93HeadFBefore s6Step93HeadFAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step93HeadFFresh rfl rfl
    · norm_num [s6Step93HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step93HeadF_checked : planRowResizeLog s6Step93HeadFBefore s6Step93HeadFRow 223 s6Step93HeadFFresh=
    some (s6Step93HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 858],795⟩,growRow 795 s6Step93HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step93HeadFBefore s6Step93HeadFAfter s6Step93HeadFRow 223 s6Step93HeadFFresh
    s6Step93HeadF_distinct s6Step93HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step93HeadF_reserved
  have rowEq : WindowRow.mk (s6Step93HeadFRow.payload++s6Step93HeadFFresh) s6Step93HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 858],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step93HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step93HeadFvBefore : Arena := s6Step93HeadGvAfter

private theorem s6Step93HeadFv_Incoming : rowsOwned s6Step93HeadFvBefore [s6Step93HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step93HeadGRow,s6Step93HeadFRow,s6Step93HeadGvRow,s6Step93HeadFvRow] 3 s6Step93HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step93HeadFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step93HeadFv_Outgoing : rowsOwned s6Step93HeadFvAfter [s6Step93HeadFvOut] :=
  hmrRows_owned_drop s6Step93HeadFvAfter [s6Step93HeadGOut,s6Step93HeadFOut,s6Step93HeadGvOut,s6Step93HeadFvOut] 3 s6Step93HeadBank_outgoingOwned

private theorem s6Step93HeadFv_distinct : (s6Step93HeadFvRow.sign::s6Step93HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step93HeadFv_owned : (s6Step93HeadFvRow.sign::s6Step93HeadFvRow.payload).toFinset⊆s6Step93HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step93HeadFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step93HeadFv_reserved : s6Step93HeadFvBefore.reserve s6Step93HeadFvFresh.toFinset=some s6Step93HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step93HeadFvFresh,arenaWires]
  · norm_num [s6Step93HeadFvBefore,s6Step93HeadGvAfter,s6Step93HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step93HeadFvBefore s6Step93HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step93HeadFvFresh rfl rfl
    · norm_num [s6Step93HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step93HeadFv_checked : planRowResizeLog s6Step93HeadFvBefore s6Step93HeadFvRow 60 s6Step93HeadFvFresh=
    some (s6Step93HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908],776⟩,growRow 776 s6Step93HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step93HeadFvBefore s6Step93HeadFvAfter s6Step93HeadFvRow 60 s6Step93HeadFvFresh
    s6Step93HeadFv_distinct s6Step93HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step93HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step93HeadFvRow.payload++s6Step93HeadFvFresh) s6Step93HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step93HeadG_Incoming : rowsOwned s6Step93HeadGBefore [s6Step93HeadGRow,s6Step93HeadFRow,s6Step93HeadGvRow,s6Step93HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step93HeadGRow,s6Step93HeadFRow,s6Step93HeadGvRow,s6Step93HeadFvRow] 0 s6Step93HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step93HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step93HeadG_Outgoing : rowsOwned s6Step93HeadFvAfter [s6Step93HeadGOut,s6Step93HeadFOut,s6Step93HeadGvOut,s6Step93HeadFvOut] :=
  hmrRows_owned_drop s6Step93HeadFvAfter [s6Step93HeadGOut,s6Step93HeadFOut,s6Step93HeadGvOut,s6Step93HeadFvOut] 0 s6Step93HeadBank_outgoingOwned

private theorem s6Step93HeadG_distinct : (s6Step93HeadGRow.sign::s6Step93HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step93HeadG_owned : (s6Step93HeadGRow.sign::s6Step93HeadGRow.payload).toFinset⊆s6Step93HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step93HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step93HeadG_reserved : s6Step93HeadGBefore.reserve s6Step93HeadGFresh.toFinset=some s6Step93HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step93HeadGFresh,arenaWires]
  · norm_num [s6Step93HeadGBefore,s6Step93HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step93HeadGBefore s6Step93HeadGAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,858),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step93HeadGFresh rfl rfl
    · norm_num [s6Step93HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step93HeadG_checked : planRowResizeLog s6Step93HeadGBefore s6Step93HeadGRow 223 s6Step93HeadGFresh=
    some (s6Step93HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 874, 813],777⟩,growRow 777 s6Step93HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step93HeadGBefore s6Step93HeadGAfter s6Step93HeadGRow 223 s6Step93HeadGFresh
    s6Step93HeadG_distinct s6Step93HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step93HeadG_reserved
  have rowEq : WindowRow.mk (s6Step93HeadGRow.payload++s6Step93HeadGFresh) s6Step93HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 874, 813],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step93HeadGvBefore : Arena := s6Step93HeadFAfter

private theorem s6Step93HeadGv_Incoming : rowsOwned s6Step93HeadGvBefore [s6Step93HeadGvRow,s6Step93HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step93HeadGRow,s6Step93HeadFRow,s6Step93HeadGvRow,s6Step93HeadFvRow] 2 s6Step93HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step93HeadGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step93HeadGv_Outgoing : rowsOwned s6Step93HeadFvAfter [s6Step93HeadGvOut,s6Step93HeadFvOut] :=
  hmrRows_owned_drop s6Step93HeadFvAfter [s6Step93HeadGOut,s6Step93HeadFOut,s6Step93HeadGvOut,s6Step93HeadFvOut] 2 s6Step93HeadBank_outgoingOwned

private theorem s6Step93HeadGv_distinct : (s6Step93HeadGvRow.sign::s6Step93HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step93HeadGv_owned : (s6Step93HeadGvRow.sign::s6Step93HeadGvRow.payload).toFinset⊆s6Step93HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step93HeadGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step93HeadGv_reserved : s6Step93HeadGvBefore.reserve s6Step93HeadGvFresh.toFinset=some s6Step93HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step93HeadGvFresh,arenaWires]
  · norm_num [s6Step93HeadGvBefore,s6Step93HeadFAfter,s6Step93HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step93HeadGvBefore s6Step93HeadGvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,887),(888,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step93HeadGvFresh rfl rfl
    · norm_num [s6Step93HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step93HeadGv_checked : planRowResizeLog s6Step93HeadGvBefore s6Step93HeadGvRow 60 s6Step93HeadGvFresh=
    some (s6Step93HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887],775⟩,growRow 775 s6Step93HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step93HeadGvBefore s6Step93HeadGvAfter s6Step93HeadGvRow 60 s6Step93HeadGvFresh
    s6Step93HeadGv_distinct s6Step93HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step93HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step93HeadGvRow.payload++s6Step93HeadGvFresh) s6Step93HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step93HeadBank_rows : planWindowRowsLog s6Step93HeadGBefore [(s6Step93HeadGRow,223),(s6Step93HeadFRow,223),(s6Step93HeadGvRow,60),(s6Step93HeadFvRow,60)] [s6Step93HeadGFresh,s6Step93HeadFFresh,s6Step93HeadGvFresh,s6Step93HeadFvFresh]=
    some (s6Step93HeadFvAfter,[s6Step93HeadGOut,s6Step93HeadFOut,s6Step93HeadGvOut,s6Step93HeadFvOut],(growRow 777 s6Step93HeadGFresh ++ (growRow 795 s6Step93HeadFFresh ++ (growRow 775 s6Step93HeadGvFresh ++ (growRow 776 s6Step93HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step93HeadFvAfter [] []=some (s6Step93HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step93HeadFvBefore s6Step93HeadFvAfter s6Step93HeadFvAfter
    s6Step93HeadFvRow s6Step93HeadFvOut 60 s6Step93HeadFvFresh [] [] []
    (growRow 776 s6Step93HeadFvFresh) ([]) s6Step93HeadFv_Incoming s6Step93HeadFv_checked h4 s6Step93HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step93HeadGvBefore s6Step93HeadGvAfter s6Step93HeadFvAfter
    s6Step93HeadGvRow s6Step93HeadGvOut 60 s6Step93HeadGvFresh [(s6Step93HeadFvRow,60)] [s6Step93HeadFvFresh] [s6Step93HeadFvOut]
    (growRow 775 s6Step93HeadGvFresh) ((growRow 776 s6Step93HeadFvFresh ++ [])) s6Step93HeadGv_Incoming s6Step93HeadGv_checked h3 s6Step93HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step93HeadFBefore s6Step93HeadFAfter s6Step93HeadFvAfter
    s6Step93HeadFRow s6Step93HeadFOut 223 s6Step93HeadFFresh [(s6Step93HeadGvRow,60),(s6Step93HeadFvRow,60)] [s6Step93HeadGvFresh,s6Step93HeadFvFresh] [s6Step93HeadGvOut,s6Step93HeadFvOut]
    (growRow 795 s6Step93HeadFFresh) ((growRow 775 s6Step93HeadGvFresh ++ (growRow 776 s6Step93HeadFvFresh ++ []))) s6Step93HeadF_Incoming s6Step93HeadF_checked h2 s6Step93HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step93HeadGBefore s6Step93HeadGAfter s6Step93HeadFvAfter
    s6Step93HeadGRow s6Step93HeadGOut 223 s6Step93HeadGFresh [(s6Step93HeadFRow,223),(s6Step93HeadGvRow,60),(s6Step93HeadFvRow,60)] [s6Step93HeadFFresh,s6Step93HeadGvFresh,s6Step93HeadFvFresh] [s6Step93HeadFOut,s6Step93HeadGvOut,s6Step93HeadFvOut]
    (growRow 777 s6Step93HeadGFresh) ((growRow 795 s6Step93HeadFFresh ++ (growRow 775 s6Step93HeadGvFresh ++ (growRow 776 s6Step93HeadFvFresh ++ [])))) s6Step93HeadG_Incoming s6Step93HeadG_checked h1 s6Step93HeadG_Outgoing
  exact h0

private theorem s6Step93HeadBank_checked : compileHmrBankResizeLog .headroom s6Step93HeadGBefore ⟨s6Step93HeadFRow,s6Step93HeadGRow,s6Step93HeadFvRow,s6Step93HeadGvRow⟩ ⟨223,223,60,60⟩ [s6Step93HeadGFresh,s6Step93HeadFFresh,s6Step93HeadGvFresh,s6Step93HeadFvFresh]=
    some (s6Step93HeadFvAfter,⟨s6Step93HeadFOut,s6Step93HeadGOut,s6Step93HeadFvOut,s6Step93HeadGvOut⟩,(growRow 777 s6Step93HeadGFresh ++ (growRow 795 s6Step93HeadFFresh ++ (growRow 775 s6Step93HeadGvFresh ++ (growRow 776 s6Step93HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step93HeadBank_rows]
  rfl

private theorem s6Step93Front_checked : compileHmrSourceFrontLog s6Step93EntryFBefore s6Step93FrontBank 222 59 ⟨222,221,60,60⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step93FrontLog=some s6Step93FrontPlan := by
  have pairEq : s6Step93FrontPair=⟨s6Step93HeadFRow,s6Step93HeadGRow,s6Step93HeadFvRow,s6Step93HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step93FrontHead=⟨s6Step93ExitFRow,s6Step93ExitGRow,s6Step93ExitFvRow,s6Step93ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step93Add0A=s6Step93FrontHead.f.wires := by decide +kernel
  have gEq : s6Step93Add0B=s6Step93FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step93Add1A=s6Step93FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step93Add1B=s6Step93FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step93EntryFBefore s6Step93FrontBank 222 59 ⟨222,221,60,60⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step93FrontLog s6Step93FrontPlan
  · exact s6Step93Front_entry
  · exact s6Step93EntryBank_checked
  · exact s6Step93Front_sigma
  · rfl
  · exact s6Step93Front_branch
  · rfl
  · simpa only [s6Step93FrontPlan,pairEq] using s6Step93HeadBank_checked
  · simpa only [s6Step93FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step93F4_checked
  · exact s6Step93Counter_checked
  · rfl
  · simpa only [s6Step93FrontPlan,headEq] using s6Step93ExitBank_checked

private theorem s6Step93Complete_explicit_checked : compileHmrEarlyStepLog s6Step93EntryFBefore s6Step93FrontBank 222 59 ⟨222,221,60,60⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 34 s6Step93CompleteLog=some s6Step93CompletePlan := by
  let Q := s6Step93EarlyControlPlan
  have hq := s6Step93EarlyControl_plan_checked
  have fv1 : s6Step93CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step93CompleteOut.fv.payload[2]?.getD s6Step93CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step93CompleteOut.fv.payload[3]?.getD s6Step93CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step93CompleteOut.fv.payload[4]?.getD s6Step93CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step93EntryFBefore s6Step93EarlyControlArena s6Step93FrontBank 222 59 ⟨222,221,60,60⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 34 s6Step93CompleteLog s6Step93FrontPlan Q
    s6Step93Front_checked s6Step93Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step93Complete_owned s6Step93Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step93EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 857 s6Step93CompleteOut.fv.second (s6Step93CompleteOut.fv.payload[2]?.getD s6Step93CompleteOut.fv.sign) (s6Step93CompleteOut.fv.payload[3]?.getD s6Step93CompleteOut.fv.sign) (s6Step93CompleteOut.fv.payload[4]?.getD s6Step93CompleteOut.fv.sign) 890 34 s6Step93EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep93Arena : Arena := s6Step93EntryFBefore
def s6PrivateStep93Bank : WindowBank := s6Step93FrontBank
def s6PrivateStep93Spec : HmrSourceWalkStepLog := ⟨222,59,⟨222,221,60,60⟩,34,.early s6Step93CompleteLog⟩
def s6PrivateStep93Plan : HmrSourceStepPlan := .early s6Step93CompletePlan
theorem s6PrivateStep93_source : s6PrivateStep93Spec=s6ObservedLogs80[13] := rfl
theorem s6PrivateStep93_checked : compileHmrSourceStepLog s6PrivateStep93Arena s6PrivateStep93Bank
    s6PrivateStep93Spec.fgWidth s6PrivateStep93Spec.vWidth s6PrivateStep93Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847]
    6 498 93 s6PrivateStep93Spec.need none s6PrivateStep93Spec.log=some s6PrivateStep93Plan := by
  change compileHmrSourceStepLog s6Step93EntryFBefore s6Step93FrontBank 222 59 ⟨222,221,60,60⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 6 498 93 34 none (.early s6Step93CompleteLog)=some (.early s6Step93CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 93<498)]
  rw [s6Step93Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
