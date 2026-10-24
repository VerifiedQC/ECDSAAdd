import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep92
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

private def s6Step94CompleteMoves : List (Wire × Wire) := [(907,477)]

private def s6Step94EarlyControlLog : HmrEarlyControlLog := ⟨[907, 859, 813, 890, 874],[876],[881],[803, 922, 879, 784, 891, 903],[]⟩

private def s6Step94FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [890], [], []],[[874], [813], [859], [877]],[[], [], [], []]⟩,[857],[858],[876],[881],[803, 922, 879, 784, 891, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[803, 922, 879, 784, 891, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933],[876, 881, 803, 922]⟩

private def s6Step94CompleteLog : HmrEarlyStepLog := ⟨s6Step94FrontLog,s6Step94CompleteMoves,s6Step94EarlyControlLog⟩

private def s6Step94ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476],795⟩

private def s6Step94ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877],776⟩

private def s6Step94ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220],777⟩

private def s6Step94ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887],775⟩

private def s6Step94FrontOut : WindowBank := ⟨s6Step94ExitFOut,s6Step94ExitGOut,s6Step94ExitFvOut,s6Step94ExitGvOut⟩

private def s6Step94CompleteOut : WindowBank := s6Step94FrontOut.repacked s6Step94CompleteMoves

private def s6Step94EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step94EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step94EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step94EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step94EarlyControlPositiveArena,[876],s6Step94EarlyControlEqualityArena,[881],⟨⟨857,false⟩,[⟨⟨876,false⟩,881⟩]⟩⟩

private def s6Step94EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step94EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step94EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step94EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step94EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step94EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step94EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,907⟩,⟨⟨772,false⟩,859⟩,⟨⟨771,false⟩,813⟩,⟨⟨770,false⟩,890⟩,⟨⟨769,false⟩,874⟩]⟩

private def s6Step94EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step94EarlyControlZeroArena,s6Step94EarlyControlZeroPlan,s6Step94EarlyControlClassPlan,s6Step94EarlyControlFlagArena,s6Step94EarlyControlFittedArena,s6Step94EarlyControlHistoryArena,s6Step94EarlyControlSigmaArena,s6Step94EarlyControlOutputArena,s6Step94EarlyControlLog⟩

private def s6Step94CounterWork : List Wire := [876, 881, 803, 922]

private theorem s6Step94Counter_bounded : s6Step94CounterWork.toFinset⊆arenaWires := by norm_num [s6Step94CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step94HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step94CounterDuring : Arena := ⟨s6Step94HeadFvAfter.live∪s6Step94CounterWork.toFinset,Finset.union_subset s6Step94HeadFvAfter.bounded s6Step94Counter_bounded⟩

private def s6Step94EntryFFresh : List Wire := []

private def s6Step94EntryFvFresh : List Wire := []

private def s6Step94EntryGFresh : List Wire := [890]

private def s6Step94EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step94EntryGvAfter : Arena := s6Step94EntryGAfter

private def s6Step94EntryGvFresh : List Wire := []

private def s6Step94ExitFExtra : List Wire := [477, 813]

private def s6Step94ExitGExtra : List Wire := [890, 874]

private def s6Step94ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,477),(478,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step94ExitGvExtra : List Wire := [859]

private def s6Step94Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step94Add0Work : List Wire := [803, 922, 879, 784, 891, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step94Add0_bounded : s6Step94Add0Work.toFinset⊆arenaWires := by
  have h : s6Step94Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step94Add0During : Arena := ⟨s6Step94Add0Arena.live∪s6Step94Add0Work.toFinset,Finset.union_subset s6Step94Add0Arena.bounded s6Step94Add0_bounded⟩

private def s6Step94Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step94Add1Work : List Wire := [803, 922, 879, 784, 891, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933]

private theorem s6Step94Add1_bounded : s6Step94Add1Work.toFinset⊆arenaWires := by
  have h : s6Step94Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step94Add1During : Arena := ⟨s6Step94Add1Arena.live∪s6Step94Add1Work.toFinset,Finset.union_subset s6Step94Add1Arena.bounded s6Step94Add1_bounded⟩

private def s6Step94F4FlagArena : Arena := ⟨s6Step94HeadFvAfter.live∪{876},Finset.union_subset s6Step94HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step94F4Plan : HmrHybridF4Plan := ⟨s6Step94F4FlagArena,[876],s6Step94Add0Arena,[881],s6Step94Add0During,s6Step94Add0Work,s6Step94Add1During,s6Step94Add1Work⟩

private def s6Step94HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 813],795⟩

private def s6Step94HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877],776⟩

private def s6Step94HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 890, 874],777⟩

private def s6Step94HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 859],775⟩

private def s6Step94FrontHead : WindowBank := ⟨s6Step94HeadFOut,s6Step94HeadGOut,s6Step94HeadFvOut,s6Step94HeadGvOut⟩

private def s6Step94EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477],795⟩

private def s6Step94EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908],776⟩

private def s6Step94EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 890],777⟩

private def s6Step94EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887],775⟩

private def s6Step94FrontPair : WindowBank := ⟨s6Step94EntryFOut,s6Step94EntryGOut,s6Step94EntryFvOut,s6Step94EntryGvOut⟩

private def s6Step94FrontSigmaArena : Arena := ⟨s6Step94EntryGvAfter.live∪{857},Finset.union_subset s6Step94EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step94HeadFFresh : List Wire := [813]

private def s6Step94HeadFvFresh : List Wire := [877]

private def s6Step94HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step94HeadGFresh : List Wire := [874]

private def s6Step94HeadGvFresh : List Wire := [859]

private def s6Step94FrontPlan : HmrSourceFront := ⟨s6Step94EntryGvAfter,s6Step94FrontPair,(growRow 795 s6Step94EntryFFresh ++ (growRow 777 s6Step94EntryGFresh ++ (growRow 776 s6Step94EntryFvFresh ++ (growRow 775 s6Step94EntryGvFresh ++ [])))),s6Step94FrontSigmaArena,[857],s6Step94HeadGBefore,[858],
  s6Step94HeadFvAfter,s6Step94FrontHead,(growRow 777 s6Step94HeadGFresh ++ (growRow 795 s6Step94HeadFFresh ++ (growRow 775 s6Step94HeadGvFresh ++ (growRow 776 s6Step94HeadFvFresh ++ [])))),s6Step94F4Plan,s6Step94CounterDuring,s6Step94CounterWork,s6Step94ExitGvAfter,s6Step94FrontOut,(shrinkRow 777 s6Step94ExitGExtra ++ (shrinkRow 795 s6Step94ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step94ExitGvExtra ++ []))))⟩

private def s6Step94CompletePlan : HmrEarlyStepPlan := ⟨s6Step94FrontPlan,s6Step94EarlyControlArena,s6Step94EarlyControlPlan,s6Step94CompleteMoves⟩

private theorem s6Step94Complete_apart : List.Disjoint (s6Step94CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [857, 858, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] := by
  have nd : ((s6Step94CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[857, 858, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step94Complete_owned : (s6Step94CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step94EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step94EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step94CompleteRelocationMove0Borrowed : Arena := ⟨s6Step94ExitGvAfter.live∪{477},Finset.union_subset s6Step94ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step94CompleteRelocation_move0_owned : 907∈s6Step94ExitGvAfter.live := by norm_num [s6Step94ExitGvAfter,arenaWires]

private theorem s6Step94CompleteRelocation_move0_reserve : s6Step94ExitGvAfter.reserve {477}=some s6Step94CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step94ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step94CompleteRelocation_move0_retire : s6Step94CompleteRelocationMove0Borrowed.retireSet {907}=s6Step94EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step94CompleteRelocationMove0Borrowed s6Step94EarlyControlArena {907}
  change s6Step94EarlyControlArena.live=(s6Step94ExitGvAfter.live∪{477})\{907}
  apply hmrArena_update_of_filter_check s6Step94ExitGvAfter s6Step94EarlyControlArena (fun q => ([(0,477),(478,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [477] [907] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step94CompleteRelocation_checked : s6Step94ExitGvAfter.checkRepack [(907,477)]=some s6Step94EarlyControlArena := by
  have tail1 : s6Step94EarlyControlArena.checkRepack []=some s6Step94EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step94ExitGvAfter s6Step94CompleteRelocationMove0Borrowed s6Step94EarlyControlArena s6Step94EarlyControlArena 907 477 []
    s6Step94CompleteRelocation_move0_owned s6Step94CompleteRelocation_move0_reserve s6Step94CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step94Complete_repack : s6Step94ExitGvAfter.checkRepack s6Step94CompleteMoves=some s6Step94EarlyControlArena := by
  simpa only [s6Step94CompleteMoves] using s6Step94CompleteRelocation_checked

private theorem s6Step94EarlyControl_branchOwned : ([858] : List Wire).toFinset⊆s6Step94EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step94EarlyControlSigmaArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step94EarlyControl_branch : compileHmrBranchRetirement s6Step94EarlyControlSigmaArena 858=some s6Step94EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step94EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step94EarlyControlSigmaArena s6Step94EarlyControlOutputArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [858] rfl rfl
    decide +kernel

private theorem s6Step94EarlyControl_classEqualityBorrow : s6Step94EarlyControlPositiveArena.checkBorrow (([857, 876] : List Wire).length-1) s6Step94EarlyControlLog.classWork=some s6Step94EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step94EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step94EarlyControlPositiveArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step94EarlyControlPositiveArena s6Step94EarlyControlEqualityArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step94EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step94EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step94EarlyControl_classEqualityOwned : ([857, 876] : List Wire).toFinset⊆s6Step94EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step94EarlyControlPositiveArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step94EarlyControl_classEquality : compileHmrEqualityLog s6Step94EarlyControlPositiveArena [857, 876] 0 s6Step94EarlyControlLog.classWork=some (s6Step94EarlyControlEqualityArena,s6Step94EarlyControlLog.classWork,s6Step94EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step94EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step94EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step94EarlyControl_classOwned : ([769, 874, 857] : List Wire).toFinset⊆s6Step94EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step94EarlyControlZeroArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step94EarlyControl_positiveBorrow : s6Step94EarlyControlZeroArena.checkBorrow (1) s6Step94EarlyControlLog.positiveWork=some s6Step94EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step94EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step94EarlyControlZeroArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step94EarlyControlZeroArena s6Step94EarlyControlPositiveArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step94EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step94EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step94EarlyControl_class : compileHmrSourceClassLog s6Step94EarlyControlZeroArena false 769 s6Step94EarlyControlZeroPlan.top 0 857 s6Step94EarlyControlLog.positiveWork s6Step94EarlyControlLog.classWork=some s6Step94EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step94EarlyControlClassPlan s6Step94EarlyControlZeroArena false 769 s6Step94EarlyControlZeroPlan.top 0 857
  constructor
  · decide +kernel
  · exact s6Step94EarlyControl_classOwned
  · exact s6Step94EarlyControl_positiveBorrow
  · exact s6Step94EarlyControl_classEquality

private theorem s6Step94EarlyControl_entryRecordOwned : ([858, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).toFinset⊆s6Step94EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step94EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step94EarlyControl_entrySigmaOwned : ([857, 254] : List Wire).toFinset⊆s6Step94EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step94EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step94EarlyControl_fitBorrow : s6Step94EarlyControlFlagArena.checkBorrow ((34-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).length)) s6Step94EarlyControlLog.recordFresh=some s6Step94EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step94EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step94EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step94EarlyControlFittedArena,s6Step94EarlyControlFlagArena,s6Step94EarlyControlLog,arenaWires]

private theorem s6Step94EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).toFinset⊆s6Step94EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step94EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step94EarlyControl_fit : compileHmrRecordGrowLog s6Step94EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 34 s6Step94EarlyControlLog.recordFresh=some s6Step94EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step94EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step94EarlyControl_fitBorrow

private theorem s6Step94EarlyControl_flagsBorrow : s6Step94EarlyControlEqualityArena.checkBorrow (6) s6Step94EarlyControlLog.flagWork=some s6Step94EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step94EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step94EarlyControlEqualityArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step94EarlyControlEqualityArena s6Step94EarlyControlFlagArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step94EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step94EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step94EarlyControl_flagsOwned : ([881, 253, 252, 251] : List Wire).toFinset⊆s6Step94EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step94EarlyControlEqualityArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step94EarlyControl_flags : compileHmrFlagsLog s6Step94EarlyControlClassPlan.equalityArena s6Step94EarlyControlClassPlan.equality.top 253 252 251 s6Step94EarlyControlLog.flagWork=some s6Step94EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step94EarlyControl_flagsOwned⟩
  · exact s6Step94EarlyControl_flagsBorrow

private theorem s6Step94EarlyControl_historyBorrow : s6Step94EarlyControlArena.checkBorrow ((34-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).length)) s6Step94EarlyControlLog.recordFresh=some s6Step94EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step94EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step94EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step94EarlyControlArena s6Step94EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step94EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step94EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step94EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).toFinset⊆s6Step94EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step94EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step94EarlyControl_history : compileHmrRecordGrowLog s6Step94EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 34 s6Step94EarlyControlLog.recordFresh=some s6Step94EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step94EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step94EarlyControl_historyBorrow

private theorem s6Step94EarlyControl_sigmaOwned : ([254, 857] : List Wire).toFinset⊆s6Step94EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step94EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step94EarlyControl_sigmaReleaseOwned : ([857] : List Wire).toFinset⊆s6Step94EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step94EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step94EarlyControl_sigmaRelease : s6Step94EarlyControlHistoryArena.release {857} (fun _ => false)=some s6Step94EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step94EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step94EarlyControlHistoryArena s6Step94EarlyControlSigmaArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [857] rfl rfl
    decide +kernel

private theorem s6Step94EarlyControl_sigma : compileHmrSigmaDropLog s6Step94EarlyControlHistoryArena false 0 0 254 857 []=some s6Step94EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step94EarlyControl_sigmaOwned⟩
  · exact s6Step94EarlyControl_sigmaRelease

private theorem s6Step94EarlyControl_zeroBorrow : s6Step94EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step94EarlyControlLog.zeroWork=some s6Step94EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step94EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step94EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step94EarlyControlArena s6Step94EarlyControlZeroArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step94EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step94EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step94EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step94EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step94EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step94EarlyControl_zero : compileHmrEqualityLog s6Step94EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step94EarlyControlLog.zeroWork=some (s6Step94EarlyControlZeroArena,s6Step94EarlyControlLog.zeroWork,s6Step94EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step94EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step94EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step94EarlyControl_logged : s6Step94EarlyControlPlan.Logged s6Step94EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 857 254 253 252 251 858 34 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step94EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step94EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step94EarlyControl_zero
  · exact s6Step94EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step94EarlyControl_flags
  · exact s6Step94EarlyControl_fit
  · exact s6Step94EarlyControl_history
  · exact s6Step94EarlyControl_sigma
  · exact s6Step94EarlyControl_branch

private theorem s6Step94EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step94EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 857 254 253 252 251 858 34 s6Step94EarlyControlLog=some s6Step94EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step94EarlyControlPlan s6Step94EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 857 254 253 252 251 858 34 s6Step94EarlyControl_logged

private def s6Step94EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step94EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477],795⟩

private def s6Step94EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908],776⟩

private def s6Step94EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220],777⟩

private def s6Step94EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887],775⟩

private def s6Step94FrontBank : WindowBank := ⟨s6Step94EntryFRow,s6Step94EntryGRow,s6Step94EntryFvRow,s6Step94EntryGvRow⟩

private def s6Step94Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 813, 795]

private def s6Step94Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 890, 874, 777]

private def s6Step94Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 776]

private def s6Step94Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 859, 775]

private theorem s6Step94Counter_apart : Disjoint s6Step94HeadFvAfter.live s6Step94CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step94HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step94Counter_borrowed : s6Step94HeadFvAfter.checkBorrow 4 s6Step94CounterWork=some s6Step94CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step94HeadFvAfter s6Step94CounterDuring s6Step94CounterWork.toFinset s6Step94Counter_bounded s6Step94Counter_apart rfl

private theorem s6Step94Counter_owned : (857::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step94HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step94HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step94Counter_checked : compileHmrCounterStepLog s6Step94HeadFvAfter true 857 [774, 773, 772, 771, 770, 769] s6Step94CounterWork=some s6Step94CounterDuring := by
  have owned : ∀q∈857::[774, 773, 772, 771, 770, 769],q∈s6Step94HeadFvAfter.live := fun q hq => s6Step94Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step94Counter_borrowed

private def s6Step94EntryFAfter : Arena := s6Step94EntryFBefore

private theorem s6Step94EntryBank_incomingDistinct : ([s6Step94EntryFRow,s6Step94EntryGRow,s6Step94EntryFvRow,s6Step94EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step94EntryF_Incoming : rowsOwned s6Step94EntryFBefore [s6Step94EntryFRow,s6Step94EntryGRow,s6Step94EntryFvRow,s6Step94EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step94EntryFRow,s6Step94EntryGRow,s6Step94EntryFvRow,s6Step94EntryGvRow] 0 s6Step94EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step94EntryFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step94EntryBank_outgoingOwned : rowsOwned s6Step94EntryGvAfter [s6Step94EntryFOut,s6Step94EntryGOut,s6Step94EntryFvOut,s6Step94EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step94EntryGvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step94EntryF_Outgoing : rowsOwned s6Step94EntryGvAfter [s6Step94EntryFOut,s6Step94EntryGOut,s6Step94EntryFvOut,s6Step94EntryGvOut] :=
  hmrRows_owned_drop s6Step94EntryGvAfter [s6Step94EntryFOut,s6Step94EntryGOut,s6Step94EntryFvOut,s6Step94EntryGvOut] 0 s6Step94EntryBank_outgoingOwned

private theorem s6Step94EntryF_distinct : (s6Step94EntryFRow.sign::s6Step94EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step94EntryF_owned : (s6Step94EntryFRow.sign::s6Step94EntryFRow.payload).toFinset⊆s6Step94EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step94EntryFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step94EntryF_reserved : s6Step94EntryFBefore.reserve s6Step94EntryFFresh.toFinset=some s6Step94EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step94EntryFFresh,arenaWires]
  · norm_num [s6Step94EntryFBefore,s6Step94EntryFFresh,arenaWires]
  · simp only [s6Step94EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step94EntryF_checked : planRowResizeLog s6Step94EntryFBefore s6Step94EntryFRow 222 s6Step94EntryFFresh=
    some (s6Step94EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477],795⟩,growRow 795 s6Step94EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step94EntryFBefore s6Step94EntryFAfter s6Step94EntryFRow 222 s6Step94EntryFFresh
    s6Step94EntryF_distinct s6Step94EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step94EntryF_reserved
  have rowEq : WindowRow.mk (s6Step94EntryFRow.payload++s6Step94EntryFFresh) s6Step94EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step94EntryFvAfter : Arena := s6Step94EntryGAfter

private def s6Step94EntryFvBefore : Arena := s6Step94EntryGAfter

private theorem s6Step94EntryFv_Incoming : rowsOwned s6Step94EntryFvBefore [s6Step94EntryFvRow,s6Step94EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step94EntryFRow,s6Step94EntryGRow,s6Step94EntryFvRow,s6Step94EntryGvRow] 2 s6Step94EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step94EntryFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step94EntryFv_Outgoing : rowsOwned s6Step94EntryGvAfter [s6Step94EntryFvOut,s6Step94EntryGvOut] :=
  hmrRows_owned_drop s6Step94EntryGvAfter [s6Step94EntryFOut,s6Step94EntryGOut,s6Step94EntryFvOut,s6Step94EntryGvOut] 2 s6Step94EntryBank_outgoingOwned

private theorem s6Step94EntryFv_distinct : (s6Step94EntryFvRow.sign::s6Step94EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step94EntryFv_owned : (s6Step94EntryFvRow.sign::s6Step94EntryFvRow.payload).toFinset⊆s6Step94EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step94EntryFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step94EntryFv_reserved : s6Step94EntryFvBefore.reserve s6Step94EntryFvFresh.toFinset=some s6Step94EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step94EntryFvFresh,arenaWires]
  · norm_num [s6Step94EntryFvBefore,s6Step94EntryGAfter,s6Step94EntryFvFresh,arenaWires]
  · simp only [s6Step94EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step94EntryFv_checked : planRowResizeLog s6Step94EntryFvBefore s6Step94EntryFvRow 60 s6Step94EntryFvFresh=
    some (s6Step94EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908],776⟩,growRow 776 s6Step94EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step94EntryFvBefore s6Step94EntryFvAfter s6Step94EntryFvRow 60 s6Step94EntryFvFresh
    s6Step94EntryFv_distinct s6Step94EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step94EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step94EntryFvRow.payload++s6Step94EntryFvFresh) s6Step94EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step94EntryGBefore : Arena := s6Step94EntryFBefore

private theorem s6Step94EntryG_Incoming : rowsOwned s6Step94EntryGBefore [s6Step94EntryGRow,s6Step94EntryFvRow,s6Step94EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step94EntryFRow,s6Step94EntryGRow,s6Step94EntryFvRow,s6Step94EntryGvRow] 1 s6Step94EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step94EntryGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step94EntryG_Outgoing : rowsOwned s6Step94EntryGvAfter [s6Step94EntryGOut,s6Step94EntryFvOut,s6Step94EntryGvOut] :=
  hmrRows_owned_drop s6Step94EntryGvAfter [s6Step94EntryFOut,s6Step94EntryGOut,s6Step94EntryFvOut,s6Step94EntryGvOut] 1 s6Step94EntryBank_outgoingOwned

private theorem s6Step94EntryG_distinct : (s6Step94EntryGRow.sign::s6Step94EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step94EntryG_owned : (s6Step94EntryGRow.sign::s6Step94EntryGRow.payload).toFinset⊆s6Step94EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step94EntryGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step94EntryG_reserved : s6Step94EntryGBefore.reserve s6Step94EntryGFresh.toFinset=some s6Step94EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step94EntryGFresh,arenaWires]
  · norm_num [s6Step94EntryGBefore,s6Step94EntryFBefore,s6Step94EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step94EntryGBefore s6Step94EntryGAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step94EntryGFresh rfl rfl
    · norm_num [s6Step94EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step94EntryG_checked : planRowResizeLog s6Step94EntryGBefore s6Step94EntryGRow 222 s6Step94EntryGFresh=
    some (s6Step94EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 890],777⟩,growRow 777 s6Step94EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step94EntryGBefore s6Step94EntryGAfter s6Step94EntryGRow 222 s6Step94EntryGFresh
    s6Step94EntryG_distinct s6Step94EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step94EntryG_reserved
  have rowEq : WindowRow.mk (s6Step94EntryGRow.payload++s6Step94EntryGFresh) s6Step94EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 890],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step94EntryGvBefore : Arena := s6Step94EntryGAfter

private theorem s6Step94EntryGv_Incoming : rowsOwned s6Step94EntryGvBefore [s6Step94EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step94EntryFRow,s6Step94EntryGRow,s6Step94EntryFvRow,s6Step94EntryGvRow] 3 s6Step94EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step94EntryGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step94EntryGv_Outgoing : rowsOwned s6Step94EntryGvAfter [s6Step94EntryGvOut] :=
  hmrRows_owned_drop s6Step94EntryGvAfter [s6Step94EntryFOut,s6Step94EntryGOut,s6Step94EntryFvOut,s6Step94EntryGvOut] 3 s6Step94EntryBank_outgoingOwned

private theorem s6Step94EntryGv_distinct : (s6Step94EntryGvRow.sign::s6Step94EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step94EntryGv_owned : (s6Step94EntryGvRow.sign::s6Step94EntryGvRow.payload).toFinset⊆s6Step94EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step94EntryGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step94EntryGv_reserved : s6Step94EntryGvBefore.reserve s6Step94EntryGvFresh.toFinset=some s6Step94EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step94EntryGvFresh,arenaWires]
  · norm_num [s6Step94EntryGvBefore,s6Step94EntryGAfter,s6Step94EntryGvFresh,arenaWires]
  · simp only [s6Step94EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step94EntryGv_checked : planRowResizeLog s6Step94EntryGvBefore s6Step94EntryGvRow 60 s6Step94EntryGvFresh=
    some (s6Step94EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887],775⟩,growRow 775 s6Step94EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step94EntryGvBefore s6Step94EntryGvAfter s6Step94EntryGvRow 60 s6Step94EntryGvFresh
    s6Step94EntryGv_distinct s6Step94EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step94EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step94EntryGvRow.payload++s6Step94EntryGvFresh) s6Step94EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step94EntryBank_rows : planWindowRowsLog s6Step94EntryFBefore [(s6Step94EntryFRow,222),(s6Step94EntryGRow,222),(s6Step94EntryFvRow,60),(s6Step94EntryGvRow,60)] [s6Step94EntryFFresh,s6Step94EntryGFresh,s6Step94EntryFvFresh,s6Step94EntryGvFresh]=
    some (s6Step94EntryGvAfter,[s6Step94EntryFOut,s6Step94EntryGOut,s6Step94EntryFvOut,s6Step94EntryGvOut],(growRow 795 s6Step94EntryFFresh ++ (growRow 777 s6Step94EntryGFresh ++ (growRow 776 s6Step94EntryFvFresh ++ (growRow 775 s6Step94EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step94EntryGvAfter [] []=some (s6Step94EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step94EntryGvBefore s6Step94EntryGvAfter s6Step94EntryGvAfter
    s6Step94EntryGvRow s6Step94EntryGvOut 60 s6Step94EntryGvFresh [] [] []
    (growRow 775 s6Step94EntryGvFresh) ([]) s6Step94EntryGv_Incoming s6Step94EntryGv_checked h4 s6Step94EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step94EntryFvBefore s6Step94EntryFvAfter s6Step94EntryGvAfter
    s6Step94EntryFvRow s6Step94EntryFvOut 60 s6Step94EntryFvFresh [(s6Step94EntryGvRow,60)] [s6Step94EntryGvFresh] [s6Step94EntryGvOut]
    (growRow 776 s6Step94EntryFvFresh) ((growRow 775 s6Step94EntryGvFresh ++ [])) s6Step94EntryFv_Incoming s6Step94EntryFv_checked h3 s6Step94EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step94EntryGBefore s6Step94EntryGAfter s6Step94EntryGvAfter
    s6Step94EntryGRow s6Step94EntryGOut 222 s6Step94EntryGFresh [(s6Step94EntryFvRow,60),(s6Step94EntryGvRow,60)] [s6Step94EntryFvFresh,s6Step94EntryGvFresh] [s6Step94EntryFvOut,s6Step94EntryGvOut]
    (growRow 777 s6Step94EntryGFresh) ((growRow 776 s6Step94EntryFvFresh ++ (growRow 775 s6Step94EntryGvFresh ++ []))) s6Step94EntryG_Incoming s6Step94EntryG_checked h2 s6Step94EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step94EntryFBefore s6Step94EntryFAfter s6Step94EntryGvAfter
    s6Step94EntryFRow s6Step94EntryFOut 222 s6Step94EntryFFresh [(s6Step94EntryGRow,222),(s6Step94EntryFvRow,60),(s6Step94EntryGvRow,60)] [s6Step94EntryGFresh,s6Step94EntryFvFresh,s6Step94EntryGvFresh] [s6Step94EntryGOut,s6Step94EntryFvOut,s6Step94EntryGvOut]
    (growRow 795 s6Step94EntryFFresh) ((growRow 777 s6Step94EntryGFresh ++ (growRow 776 s6Step94EntryFvFresh ++ (growRow 775 s6Step94EntryGvFresh ++ [])))) s6Step94EntryF_Incoming s6Step94EntryF_checked h1 s6Step94EntryF_Outgoing
  exact h0

private theorem s6Step94EntryBank_checked : compileHmrBankResizeLog .entry s6Step94EntryFBefore ⟨s6Step94EntryFRow,s6Step94EntryGRow,s6Step94EntryFvRow,s6Step94EntryGvRow⟩ ⟨222,222,60,60⟩ [s6Step94EntryFFresh,s6Step94EntryGFresh,s6Step94EntryFvFresh,s6Step94EntryGvFresh]=
    some (s6Step94EntryGvAfter,⟨s6Step94EntryFOut,s6Step94EntryGOut,s6Step94EntryFvOut,s6Step94EntryGvOut⟩,(growRow 795 s6Step94EntryFFresh ++ (growRow 777 s6Step94EntryGFresh ++ (growRow 776 s6Step94EntryFvFresh ++ (growRow 775 s6Step94EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step94EntryBank_rows]
  rfl

private def s6Step94ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,477),(478,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step94ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step94ExitFBefore : Arena := s6Step94ExitGAfter

private def s6Step94ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 813],795⟩

private def s6Step94ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877],776⟩

private def s6Step94ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 890, 874],777⟩

private def s6Step94ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 859],775⟩

private theorem s6Step94ExitBank_incomingDistinct : ([s6Step94ExitGRow,s6Step94ExitFRow,s6Step94ExitFvRow,s6Step94ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step94ExitF_Incoming : rowsOwned s6Step94ExitFBefore [s6Step94ExitFRow,s6Step94ExitFvRow,s6Step94ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step94ExitGRow,s6Step94ExitFRow,s6Step94ExitFvRow,s6Step94ExitGvRow] 1 s6Step94ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step94ExitFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step94ExitBank_outgoingOwned : rowsOwned s6Step94ExitGvAfter [s6Step94ExitGOut,s6Step94ExitFOut,s6Step94ExitFvOut,s6Step94ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step94ExitGvAfter (fun q => ([(0,477),(478,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step94ExitF_Outgoing : rowsOwned s6Step94ExitGvAfter [s6Step94ExitFOut,s6Step94ExitFvOut,s6Step94ExitGvOut] :=
  hmrRows_owned_drop s6Step94ExitGvAfter [s6Step94ExitGOut,s6Step94ExitFOut,s6Step94ExitFvOut,s6Step94ExitGvOut] 1 s6Step94ExitBank_outgoingOwned

private theorem s6Step94ExitF_distinct : (s6Step94ExitFRow.sign::s6Step94ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step94ExitF_owned : (s6Step94ExitFRow.sign::s6Step94ExitFRow.payload).toFinset⊆s6Step94ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step94ExitFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step94ExitF_retired : s6Step94ExitFBefore.retireSet s6Step94ExitFExtra.toFinset=s6Step94ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step94ExitFBefore s6Step94ExitFAfter s6Step94ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step94ExitFBefore s6Step94ExitFAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,477),(478,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step94ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step94ExitF_checked : planRowResizeLog s6Step94ExitFBefore s6Step94ExitFRow 221 []=
    some (s6Step94ExitFAfter,s6Step94ExitFOut,shrinkRow 795 s6Step94ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step94ExitFBefore s6Step94ExitFRow 221 s6Step94ExitF_distinct s6Step94ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step94ExitFRow.payload.take 221) s6Step94ExitFRow.sign=s6Step94ExitFOut := by decide +kernel
  have hi : s6Step94ExitFRow.payload.drop 221=s6Step94ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step94ExitF_retired] at result
  exact result

private def s6Step94ExitFvAfter : Arena := s6Step94ExitFAfter

private def s6Step94ExitFvBefore : Arena := s6Step94ExitFAfter

private theorem s6Step94ExitFv_Incoming : rowsOwned s6Step94ExitFvBefore [s6Step94ExitFvRow,s6Step94ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step94ExitGRow,s6Step94ExitFRow,s6Step94ExitFvRow,s6Step94ExitGvRow] 2 s6Step94ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step94ExitFvBefore (fun q => ([(0,477),(478,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step94ExitFv_Outgoing : rowsOwned s6Step94ExitGvAfter [s6Step94ExitFvOut,s6Step94ExitGvOut] :=
  hmrRows_owned_drop s6Step94ExitGvAfter [s6Step94ExitGOut,s6Step94ExitFOut,s6Step94ExitFvOut,s6Step94ExitGvOut] 2 s6Step94ExitBank_outgoingOwned

private theorem s6Step94ExitFv_distinct : (s6Step94ExitFvRow.sign::s6Step94ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step94ExitFv_owned : (s6Step94ExitFvRow.sign::s6Step94ExitFvRow.payload).toFinset⊆s6Step94ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step94ExitFvBefore (fun q => ([(0,477),(478,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step94ExitFv_reserved : s6Step94ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step94ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step94ExitFv_checked : planRowResizeLog s6Step94ExitFvBefore s6Step94ExitFvRow 61 []=
    some (s6Step94ExitFvAfter,s6Step94ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step94ExitFvBefore s6Step94ExitFvAfter s6Step94ExitFvRow 61 []
    s6Step94ExitFv_distinct s6Step94ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step94ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step94ExitFvRow.payload++[]) s6Step94ExitFvRow.sign=s6Step94ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step94ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step94ExitG_Incoming : rowsOwned s6Step94ExitGBefore [s6Step94ExitGRow,s6Step94ExitFRow,s6Step94ExitFvRow,s6Step94ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step94ExitGRow,s6Step94ExitFRow,s6Step94ExitFvRow,s6Step94ExitGvRow] 0 s6Step94ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step94ExitGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step94ExitG_Outgoing : rowsOwned s6Step94ExitGvAfter [s6Step94ExitGOut,s6Step94ExitFOut,s6Step94ExitFvOut,s6Step94ExitGvOut] :=
  hmrRows_owned_drop s6Step94ExitGvAfter [s6Step94ExitGOut,s6Step94ExitFOut,s6Step94ExitFvOut,s6Step94ExitGvOut] 0 s6Step94ExitBank_outgoingOwned

private theorem s6Step94ExitG_distinct : (s6Step94ExitGRow.sign::s6Step94ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step94ExitG_owned : (s6Step94ExitGRow.sign::s6Step94ExitGRow.payload).toFinset⊆s6Step94ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step94ExitGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step94ExitG_retired : s6Step94ExitGBefore.retireSet s6Step94ExitGExtra.toFinset=s6Step94ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step94ExitGBefore s6Step94ExitGAfter s6Step94ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step94ExitGBefore s6Step94ExitGAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step94ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step94ExitG_checked : planRowResizeLog s6Step94ExitGBefore s6Step94ExitGRow 221 []=
    some (s6Step94ExitGAfter,s6Step94ExitGOut,shrinkRow 777 s6Step94ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step94ExitGBefore s6Step94ExitGRow 221 s6Step94ExitG_distinct s6Step94ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step94ExitGRow.payload.take 221) s6Step94ExitGRow.sign=s6Step94ExitGOut := by decide +kernel
  have hi : s6Step94ExitGRow.payload.drop 221=s6Step94ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step94ExitG_retired] at result
  exact result

private def s6Step94ExitGvBefore : Arena := s6Step94ExitFAfter

private theorem s6Step94ExitGv_Incoming : rowsOwned s6Step94ExitGvBefore [s6Step94ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step94ExitGRow,s6Step94ExitFRow,s6Step94ExitFvRow,s6Step94ExitGvRow] 3 s6Step94ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step94ExitGvBefore (fun q => ([(0,477),(478,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step94ExitGv_Outgoing : rowsOwned s6Step94ExitGvAfter [s6Step94ExitGvOut] :=
  hmrRows_owned_drop s6Step94ExitGvAfter [s6Step94ExitGOut,s6Step94ExitFOut,s6Step94ExitFvOut,s6Step94ExitGvOut] 3 s6Step94ExitBank_outgoingOwned

private theorem s6Step94ExitGv_distinct : (s6Step94ExitGvRow.sign::s6Step94ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step94ExitGv_owned : (s6Step94ExitGvRow.sign::s6Step94ExitGvRow.payload).toFinset⊆s6Step94ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step94ExitGvBefore (fun q => ([(0,477),(478,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step94ExitGv_retired : s6Step94ExitGvBefore.retireSet s6Step94ExitGvExtra.toFinset=s6Step94ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step94ExitGvBefore s6Step94ExitGvAfter s6Step94ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step94ExitGvBefore s6Step94ExitGvAfter (fun q => ([(0,477),(478,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,477),(478,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(877,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step94ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step94ExitGv_checked : planRowResizeLog s6Step94ExitGvBefore s6Step94ExitGvRow 60 []=
    some (s6Step94ExitGvAfter,s6Step94ExitGvOut,shrinkRow 775 s6Step94ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step94ExitGvBefore s6Step94ExitGvRow 60 s6Step94ExitGv_distinct s6Step94ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step94ExitGvRow.payload.take 60) s6Step94ExitGvRow.sign=s6Step94ExitGvOut := by decide +kernel
  have hi : s6Step94ExitGvRow.payload.drop 60=s6Step94ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step94ExitGv_retired] at result
  exact result

private theorem s6Step94ExitBank_rows : planWindowRowsLog s6Step94ExitGBefore [(s6Step94ExitGRow,221),(s6Step94ExitFRow,221),(s6Step94ExitFvRow,61),(s6Step94ExitGvRow,60)] [[],[],[],[]]=
    some (s6Step94ExitGvAfter,[s6Step94ExitGOut,s6Step94ExitFOut,s6Step94ExitFvOut,s6Step94ExitGvOut],(shrinkRow 777 s6Step94ExitGExtra ++ (shrinkRow 795 s6Step94ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step94ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step94ExitGvAfter [] []=some (s6Step94ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step94ExitGvBefore s6Step94ExitGvAfter s6Step94ExitGvAfter
    s6Step94ExitGvRow s6Step94ExitGvOut 60 [] [] [] []
    (shrinkRow 775 s6Step94ExitGvExtra) ([]) s6Step94ExitGv_Incoming s6Step94ExitGv_checked h4 s6Step94ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step94ExitFvBefore s6Step94ExitFvAfter s6Step94ExitGvAfter
    s6Step94ExitFvRow s6Step94ExitFvOut 61 [] [(s6Step94ExitGvRow,60)] [[]] [s6Step94ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step94ExitGvExtra ++ [])) s6Step94ExitFv_Incoming s6Step94ExitFv_checked h3 s6Step94ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step94ExitFBefore s6Step94ExitFAfter s6Step94ExitGvAfter
    s6Step94ExitFRow s6Step94ExitFOut 221 [] [(s6Step94ExitFvRow,61),(s6Step94ExitGvRow,60)] [[],[]] [s6Step94ExitFvOut,s6Step94ExitGvOut]
    (shrinkRow 795 s6Step94ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step94ExitGvExtra ++ []))) s6Step94ExitF_Incoming s6Step94ExitF_checked h2 s6Step94ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step94ExitGBefore s6Step94ExitGAfter s6Step94ExitGvAfter
    s6Step94ExitGRow s6Step94ExitGOut 221 [] [(s6Step94ExitFRow,221),(s6Step94ExitFvRow,61),(s6Step94ExitGvRow,60)] [[],[],[]] [s6Step94ExitFOut,s6Step94ExitFvOut,s6Step94ExitGvOut]
    (shrinkRow 777 s6Step94ExitGExtra) ((shrinkRow 795 s6Step94ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step94ExitGvExtra ++ [])))) s6Step94ExitG_Incoming s6Step94ExitG_checked h1 s6Step94ExitG_Outgoing
  exact h0

private theorem s6Step94ExitBank_checked : compileHmrBankResizeLog .exit s6Step94ExitGBefore ⟨s6Step94ExitFRow,s6Step94ExitGRow,s6Step94ExitFvRow,s6Step94ExitGvRow⟩ ⟨221,221,61,60⟩ [[],[],[],[]]=
    some (s6Step94ExitGvAfter,⟨s6Step94ExitFOut,s6Step94ExitGOut,s6Step94ExitFvOut,s6Step94ExitGvOut⟩,(shrinkRow 777 s6Step94ExitGExtra ++ (shrinkRow 795 s6Step94ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step94ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step94ExitBank_rows]
  rfl

private theorem s6Step94Add0_apart : Disjoint s6Step94Add0Arena.live s6Step94Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step94Add0Arena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step94Add0_card : s6Step94Add0Arena.live.card=872 := by
  decide +kernel

private theorem s6Step94Add0_borrowed : s6Step94Add0Arena.checkBorrow (hmrHybridCount s6Step94Add0Arena s6Step94Add0B.length) s6Step94Add0Work=some s6Step94Add0During := by
  have len : s6Step94Add0Work.length=hmrHybridCount s6Step94Add0Arena s6Step94Add0B.length := by
    rw [hmrHybridCount,s6Step94Add0_card]
    decide +kernel
  have nd : s6Step94Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step94Add0Arena s6Step94Add0During s6Step94Add0Work.toFinset s6Step94Add0_bounded s6Step94Add0_apart rfl

private theorem s6Step94Add0_distinct : (876::858::881::(s6Step94Add0A++s6Step94Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step94Add0_owned : (876::858::881::(s6Step94Add0A++s6Step94Add0B)).toFinset⊆s6Step94Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step94Add0Arena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step94Add0_checked : compileHmrHybridCinLog s6Step94Add0Arena 858 876 881 s6Step94Add0A s6Step94Add0B s6Step94Add0Work=some s6Step94Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step94Add0Arena s6Step94Add0During 858 876 881 s6Step94Add0A s6Step94Add0B s6Step94Add0Work
    (by decide +kernel) (by decide +kernel) s6Step94Add0_distinct
    (fun q hq => s6Step94Add0_owned (List.mem_toFinset.mpr hq)) s6Step94Add0_borrowed

private theorem s6Step94Add1_apart : Disjoint s6Step94Add1Arena.live s6Step94Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step94Add1Arena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step94Add1_card : s6Step94Add1Arena.live.card=872 := by
  decide +kernel

private theorem s6Step94Add1_borrowed : s6Step94Add1Arena.checkBorrow (hmrHybridCount s6Step94Add1Arena s6Step94Add1B.length) s6Step94Add1Work=some s6Step94Add1During := by
  have len : s6Step94Add1Work.length=hmrHybridCount s6Step94Add1Arena s6Step94Add1B.length := by
    rw [hmrHybridCount,s6Step94Add1_card]
    decide +kernel
  have nd : s6Step94Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step94Add1Arena s6Step94Add1During s6Step94Add1Work.toFinset s6Step94Add1_bounded s6Step94Add1_apart rfl

private theorem s6Step94Add1_distinct : (876::858::881::(s6Step94Add1A++s6Step94Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step94Add1_owned : (876::858::881::(s6Step94Add1A++s6Step94Add1B)).toFinset⊆s6Step94Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step94Add1Arena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step94Add1_checked : compileHmrHybridCinLog s6Step94Add1Arena 858 876 881 s6Step94Add1A s6Step94Add1B s6Step94Add1Work=some s6Step94Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step94Add1Arena s6Step94Add1During 858 876 881 s6Step94Add1A s6Step94Add1B s6Step94Add1Work
    (by decide +kernel) (by decide +kernel) s6Step94Add1_distinct
    (fun q hq => s6Step94Add1_owned (List.mem_toFinset.mpr hq)) s6Step94Add1_borrowed

private theorem s6Step94F4_apart : Disjoint (s6Step94Add0A++s6Step94Add0B).toFinset (s6Step94Add1A++s6Step94Add1B).toFinset := by
  have nd : ((s6Step94Add0A++s6Step94Add0B)++(s6Step94Add1A++s6Step94Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step94F4_carry : s6Step94F4FlagArena.checkBorrow 1 [881]=some s6Step94Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step94F4FlagArena,s6Step94HeadFvAfter,arenaWires]
  · change s6Step94Add0Arena.live=(s6Step94HeadFvAfter.live∪{876})∪{881}
    apply hmrArena_union_pair_of_filter_check s6Step94HeadFvAfter s6Step94Add0Arena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 876 881 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step94F4_distinct : (857::858::876::881::((s6Step94Add0A++s6Step94Add1A)++(s6Step94Add0B++s6Step94Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step94F4_flag : s6Step94HeadFvAfter.checkBorrow 1 [876]=some s6Step94F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step94HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step94F4_owned : (857::858::((s6Step94Add0A++s6Step94Add1A)++(s6Step94Add0B++s6Step94Add1B))).toFinset⊆s6Step94HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step94HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step94F4_checked : compileHmrHybridF4Log s6Step94HeadFvAfter 857 858 s6Step94Add0A s6Step94Add0B s6Step94Add1A s6Step94Add1B [876] [881] s6Step94Add0Work s6Step94Add1Work=some s6Step94F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step94HeadFvAfter s6Step94F4FlagArena s6Step94Add0Arena s6Step94Add0During s6Step94Add1During 857 858
    s6Step94Add0A s6Step94Add0B s6Step94Add1A s6Step94Add1B [876] [881] s6Step94Add0Work s6Step94Add1Work
    (fun q hq => s6Step94F4_owned (List.mem_toFinset.mpr hq)) s6Step94F4_flag s6Step94F4_carry
    s6Step94F4_distinct s6Step94F4_apart s6Step94Add0_checked s6Step94Add1_checked

private theorem s6Step94Front_branch : s6Step94FrontSigmaArena.checkBorrow 1 [858]=some s6Step94HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step94FrontSigmaArena,s6Step94EntryGvAfter,s6Step94EntryGAfter,arenaWires]
  · change s6Step94HeadGBefore.live=(s6Step94EntryGvAfter.live∪{857})∪{858}
    apply hmrArena_union_pair_of_filter_check s6Step94EntryGvAfter s6Step94HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 857 858 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step94Front_entry : HmrFrontEntryValid s6Step94EntryFBefore s6Step94FrontBank 222 60 ⟨221,221,61,60⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step94FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step94EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step94EntryFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(860,874),(875,876),(878,879),(880,881),(882,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step94FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step94Front_sigma : s6Step94EntryGvAfter.checkBorrow 1 [857]=some s6Step94FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step94EntryGvAfter,s6Step94EntryGAfter,arenaWires]
  · rfl

private def s6Step94HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step94HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step94HeadFBefore : Arena := s6Step94HeadGAfter

private def s6Step94HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477],795⟩

private def s6Step94HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908],776⟩

private def s6Step94HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 890],777⟩

private def s6Step94HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887],775⟩

private theorem s6Step94HeadBank_incomingDistinct : ([s6Step94HeadGRow,s6Step94HeadFRow,s6Step94HeadGvRow,s6Step94HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step94HeadF_Incoming : rowsOwned s6Step94HeadFBefore [s6Step94HeadFRow,s6Step94HeadGvRow,s6Step94HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step94HeadGRow,s6Step94HeadFRow,s6Step94HeadGvRow,s6Step94HeadFvRow] 1 s6Step94HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step94HeadFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step94HeadBank_outgoingOwned : rowsOwned s6Step94HeadFvAfter [s6Step94HeadGOut,s6Step94HeadFOut,s6Step94HeadGvOut,s6Step94HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step94HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step94HeadF_Outgoing : rowsOwned s6Step94HeadFvAfter [s6Step94HeadFOut,s6Step94HeadGvOut,s6Step94HeadFvOut] :=
  hmrRows_owned_drop s6Step94HeadFvAfter [s6Step94HeadGOut,s6Step94HeadFOut,s6Step94HeadGvOut,s6Step94HeadFvOut] 1 s6Step94HeadBank_outgoingOwned

private theorem s6Step94HeadF_distinct : (s6Step94HeadFRow.sign::s6Step94HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step94HeadF_owned : (s6Step94HeadFRow.sign::s6Step94HeadFRow.payload).toFinset⊆s6Step94HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step94HeadFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step94HeadF_reserved : s6Step94HeadFBefore.reserve s6Step94HeadFFresh.toFinset=some s6Step94HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step94HeadFFresh,arenaWires]
  · norm_num [s6Step94HeadFBefore,s6Step94HeadGAfter,s6Step94HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step94HeadFBefore s6Step94HeadFAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step94HeadFFresh rfl rfl
    · norm_num [s6Step94HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step94HeadF_checked : planRowResizeLog s6Step94HeadFBefore s6Step94HeadFRow 223 s6Step94HeadFFresh=
    some (s6Step94HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 813],795⟩,growRow 795 s6Step94HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step94HeadFBefore s6Step94HeadFAfter s6Step94HeadFRow 223 s6Step94HeadFFresh
    s6Step94HeadF_distinct s6Step94HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step94HeadF_reserved
  have rowEq : WindowRow.mk (s6Step94HeadFRow.payload++s6Step94HeadFFresh) s6Step94HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 813],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step94HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step94HeadFvBefore : Arena := s6Step94HeadGvAfter

private theorem s6Step94HeadFv_Incoming : rowsOwned s6Step94HeadFvBefore [s6Step94HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step94HeadGRow,s6Step94HeadFRow,s6Step94HeadGvRow,s6Step94HeadFvRow] 3 s6Step94HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step94HeadFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step94HeadFv_Outgoing : rowsOwned s6Step94HeadFvAfter [s6Step94HeadFvOut] :=
  hmrRows_owned_drop s6Step94HeadFvAfter [s6Step94HeadGOut,s6Step94HeadFOut,s6Step94HeadGvOut,s6Step94HeadFvOut] 3 s6Step94HeadBank_outgoingOwned

private theorem s6Step94HeadFv_distinct : (s6Step94HeadFvRow.sign::s6Step94HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step94HeadFv_owned : (s6Step94HeadFvRow.sign::s6Step94HeadFvRow.payload).toFinset⊆s6Step94HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step94HeadFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step94HeadFv_reserved : s6Step94HeadFvBefore.reserve s6Step94HeadFvFresh.toFinset=some s6Step94HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step94HeadFvFresh,arenaWires]
  · norm_num [s6Step94HeadFvBefore,s6Step94HeadGvAfter,s6Step94HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step94HeadFvBefore s6Step94HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(877,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step94HeadFvFresh rfl rfl
    · norm_num [s6Step94HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step94HeadFv_checked : planRowResizeLog s6Step94HeadFvBefore s6Step94HeadFvRow 61 s6Step94HeadFvFresh=
    some (s6Step94HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877],776⟩,growRow 776 s6Step94HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step94HeadFvBefore s6Step94HeadFvAfter s6Step94HeadFvRow 61 s6Step94HeadFvFresh
    s6Step94HeadFv_distinct s6Step94HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step94HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step94HeadFvRow.payload++s6Step94HeadFvFresh) s6Step94HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step94HeadG_Incoming : rowsOwned s6Step94HeadGBefore [s6Step94HeadGRow,s6Step94HeadFRow,s6Step94HeadGvRow,s6Step94HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step94HeadGRow,s6Step94HeadFRow,s6Step94HeadGvRow,s6Step94HeadFvRow] 0 s6Step94HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step94HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step94HeadG_Outgoing : rowsOwned s6Step94HeadFvAfter [s6Step94HeadGOut,s6Step94HeadFOut,s6Step94HeadGvOut,s6Step94HeadFvOut] :=
  hmrRows_owned_drop s6Step94HeadFvAfter [s6Step94HeadGOut,s6Step94HeadFOut,s6Step94HeadGvOut,s6Step94HeadFvOut] 0 s6Step94HeadBank_outgoingOwned

private theorem s6Step94HeadG_distinct : (s6Step94HeadGRow.sign::s6Step94HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step94HeadG_owned : (s6Step94HeadGRow.sign::s6Step94HeadGRow.payload).toFinset⊆s6Step94HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step94HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step94HeadG_reserved : s6Step94HeadGBefore.reserve s6Step94HeadGFresh.toFinset=some s6Step94HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step94HeadGFresh,arenaWires]
  · norm_num [s6Step94HeadGBefore,s6Step94HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step94HeadGBefore s6Step94HeadGAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,874),(875,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step94HeadGFresh rfl rfl
    · norm_num [s6Step94HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step94HeadG_checked : planRowResizeLog s6Step94HeadGBefore s6Step94HeadGRow 223 s6Step94HeadGFresh=
    some (s6Step94HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 890, 874],777⟩,growRow 777 s6Step94HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step94HeadGBefore s6Step94HeadGAfter s6Step94HeadGRow 223 s6Step94HeadGFresh
    s6Step94HeadG_distinct s6Step94HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step94HeadG_reserved
  have rowEq : WindowRow.mk (s6Step94HeadGRow.payload++s6Step94HeadGFresh) s6Step94HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 890, 874],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step94HeadGvBefore : Arena := s6Step94HeadFAfter

private theorem s6Step94HeadGv_Incoming : rowsOwned s6Step94HeadGvBefore [s6Step94HeadGvRow,s6Step94HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step94HeadGRow,s6Step94HeadFRow,s6Step94HeadGvRow,s6Step94HeadFvRow] 2 s6Step94HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step94HeadGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step94HeadGv_Outgoing : rowsOwned s6Step94HeadFvAfter [s6Step94HeadGvOut,s6Step94HeadFvOut] :=
  hmrRows_owned_drop s6Step94HeadFvAfter [s6Step94HeadGOut,s6Step94HeadFOut,s6Step94HeadGvOut,s6Step94HeadFvOut] 2 s6Step94HeadBank_outgoingOwned

private theorem s6Step94HeadGv_distinct : (s6Step94HeadGvRow.sign::s6Step94HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step94HeadGv_owned : (s6Step94HeadGvRow.sign::s6Step94HeadGvRow.payload).toFinset⊆s6Step94HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step94HeadGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step94HeadGv_reserved : s6Step94HeadGvBefore.reserve s6Step94HeadGvFresh.toFinset=some s6Step94HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step94HeadGvFresh,arenaWires]
  · norm_num [s6Step94HeadGvBefore,s6Step94HeadFAfter,s6Step94HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step94HeadGvBefore s6Step94HeadGvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,859),(860,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,876),(878,879),(880,881),(882,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step94HeadGvFresh rfl rfl
    · norm_num [s6Step94HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step94HeadGv_checked : planRowResizeLog s6Step94HeadGvBefore s6Step94HeadGvRow 61 s6Step94HeadGvFresh=
    some (s6Step94HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 859],775⟩,growRow 775 s6Step94HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step94HeadGvBefore s6Step94HeadGvAfter s6Step94HeadGvRow 61 s6Step94HeadGvFresh
    s6Step94HeadGv_distinct s6Step94HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step94HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step94HeadGvRow.payload++s6Step94HeadGvFresh) s6Step94HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 859],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step94HeadBank_rows : planWindowRowsLog s6Step94HeadGBefore [(s6Step94HeadGRow,223),(s6Step94HeadFRow,223),(s6Step94HeadGvRow,61),(s6Step94HeadFvRow,61)] [s6Step94HeadGFresh,s6Step94HeadFFresh,s6Step94HeadGvFresh,s6Step94HeadFvFresh]=
    some (s6Step94HeadFvAfter,[s6Step94HeadGOut,s6Step94HeadFOut,s6Step94HeadGvOut,s6Step94HeadFvOut],(growRow 777 s6Step94HeadGFresh ++ (growRow 795 s6Step94HeadFFresh ++ (growRow 775 s6Step94HeadGvFresh ++ (growRow 776 s6Step94HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step94HeadFvAfter [] []=some (s6Step94HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step94HeadFvBefore s6Step94HeadFvAfter s6Step94HeadFvAfter
    s6Step94HeadFvRow s6Step94HeadFvOut 61 s6Step94HeadFvFresh [] [] []
    (growRow 776 s6Step94HeadFvFresh) ([]) s6Step94HeadFv_Incoming s6Step94HeadFv_checked h4 s6Step94HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step94HeadGvBefore s6Step94HeadGvAfter s6Step94HeadFvAfter
    s6Step94HeadGvRow s6Step94HeadGvOut 61 s6Step94HeadGvFresh [(s6Step94HeadFvRow,61)] [s6Step94HeadFvFresh] [s6Step94HeadFvOut]
    (growRow 775 s6Step94HeadGvFresh) ((growRow 776 s6Step94HeadFvFresh ++ [])) s6Step94HeadGv_Incoming s6Step94HeadGv_checked h3 s6Step94HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step94HeadFBefore s6Step94HeadFAfter s6Step94HeadFvAfter
    s6Step94HeadFRow s6Step94HeadFOut 223 s6Step94HeadFFresh [(s6Step94HeadGvRow,61),(s6Step94HeadFvRow,61)] [s6Step94HeadGvFresh,s6Step94HeadFvFresh] [s6Step94HeadGvOut,s6Step94HeadFvOut]
    (growRow 795 s6Step94HeadFFresh) ((growRow 775 s6Step94HeadGvFresh ++ (growRow 776 s6Step94HeadFvFresh ++ []))) s6Step94HeadF_Incoming s6Step94HeadF_checked h2 s6Step94HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step94HeadGBefore s6Step94HeadGAfter s6Step94HeadFvAfter
    s6Step94HeadGRow s6Step94HeadGOut 223 s6Step94HeadGFresh [(s6Step94HeadFRow,223),(s6Step94HeadGvRow,61),(s6Step94HeadFvRow,61)] [s6Step94HeadFFresh,s6Step94HeadGvFresh,s6Step94HeadFvFresh] [s6Step94HeadFOut,s6Step94HeadGvOut,s6Step94HeadFvOut]
    (growRow 777 s6Step94HeadGFresh) ((growRow 795 s6Step94HeadFFresh ++ (growRow 775 s6Step94HeadGvFresh ++ (growRow 776 s6Step94HeadFvFresh ++ [])))) s6Step94HeadG_Incoming s6Step94HeadG_checked h1 s6Step94HeadG_Outgoing
  exact h0

private theorem s6Step94HeadBank_checked : compileHmrBankResizeLog .headroom s6Step94HeadGBefore ⟨s6Step94HeadFRow,s6Step94HeadGRow,s6Step94HeadFvRow,s6Step94HeadGvRow⟩ ⟨223,223,61,61⟩ [s6Step94HeadGFresh,s6Step94HeadFFresh,s6Step94HeadGvFresh,s6Step94HeadFvFresh]=
    some (s6Step94HeadFvAfter,⟨s6Step94HeadFOut,s6Step94HeadGOut,s6Step94HeadFvOut,s6Step94HeadGvOut⟩,(growRow 777 s6Step94HeadGFresh ++ (growRow 795 s6Step94HeadFFresh ++ (growRow 775 s6Step94HeadGvFresh ++ (growRow 776 s6Step94HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step94HeadBank_rows]
  rfl

private theorem s6Step94Front_checked : compileHmrSourceFrontLog s6Step94EntryFBefore s6Step94FrontBank 222 60 ⟨221,221,61,60⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step94FrontLog=some s6Step94FrontPlan := by
  have pairEq : s6Step94FrontPair=⟨s6Step94HeadFRow,s6Step94HeadGRow,s6Step94HeadFvRow,s6Step94HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step94FrontHead=⟨s6Step94ExitFRow,s6Step94ExitGRow,s6Step94ExitFvRow,s6Step94ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step94Add0A=s6Step94FrontHead.f.wires := by decide +kernel
  have gEq : s6Step94Add0B=s6Step94FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step94Add1A=s6Step94FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step94Add1B=s6Step94FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step94EntryFBefore s6Step94FrontBank 222 60 ⟨221,221,61,60⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step94FrontLog s6Step94FrontPlan
  · exact s6Step94Front_entry
  · exact s6Step94EntryBank_checked
  · exact s6Step94Front_sigma
  · rfl
  · exact s6Step94Front_branch
  · rfl
  · simpa only [s6Step94FrontPlan,pairEq] using s6Step94HeadBank_checked
  · simpa only [s6Step94FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step94F4_checked
  · exact s6Step94Counter_checked
  · rfl
  · simpa only [s6Step94FrontPlan,headEq] using s6Step94ExitBank_checked

private theorem s6Step94Complete_explicit_checked : compileHmrEarlyStepLog s6Step94EntryFBefore s6Step94FrontBank 222 60 ⟨221,221,61,60⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 34 s6Step94CompleteLog=some s6Step94CompletePlan := by
  let Q := s6Step94EarlyControlPlan
  have hq := s6Step94EarlyControl_plan_checked
  have fv1 : s6Step94CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step94CompleteOut.fv.payload[2]?.getD s6Step94CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step94CompleteOut.fv.payload[3]?.getD s6Step94CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step94CompleteOut.fv.payload[4]?.getD s6Step94CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step94EntryFBefore s6Step94EarlyControlArena s6Step94FrontBank 222 60 ⟨221,221,61,60⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 34 s6Step94CompleteLog s6Step94FrontPlan Q
    s6Step94Front_checked s6Step94Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step94Complete_owned s6Step94Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step94EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 857 s6Step94CompleteOut.fv.second (s6Step94CompleteOut.fv.payload[2]?.getD s6Step94CompleteOut.fv.sign) (s6Step94CompleteOut.fv.payload[3]?.getD s6Step94CompleteOut.fv.sign) (s6Step94CompleteOut.fv.payload[4]?.getD s6Step94CompleteOut.fv.sign) 858 34 s6Step94EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep94Arena : Arena := s6Step94EntryFBefore
def s6PrivateStep94Bank : WindowBank := s6Step94FrontBank
def s6PrivateStep94Spec : HmrSourceWalkStepLog := ⟨222,60,⟨221,221,61,60⟩,34,.early s6Step94CompleteLog⟩
def s6PrivateStep94Plan : HmrSourceStepPlan := .early s6Step94CompletePlan
theorem s6PrivateStep94_source : s6PrivateStep94Spec=s6ObservedLogs80[14] := rfl
theorem s6PrivateStep94_checked : compileHmrSourceStepLog s6PrivateStep94Arena s6PrivateStep94Bank
    s6PrivateStep94Spec.fgWidth s6PrivateStep94Spec.vWidth s6PrivateStep94Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847]
    6 498 94 s6PrivateStep94Spec.need none s6PrivateStep94Spec.log=some s6PrivateStep94Plan := by
  change compileHmrSourceStepLog s6Step94EntryFBefore s6Step94FrontBank 222 60 ⟨221,221,61,60⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 6 498 94 34 none (.early s6Step94CompleteLog)=some (.early s6Step94CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 94<498)]
  rw [s6Step94Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
