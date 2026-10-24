import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep79
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

private def s6Step81CompleteMoves : List (Wire × Wire) := [(768,484)]

private def s6Step81EarlyControlLog : HmrEarlyControlLog := ⟨[768, 860, 855, 877, 862],[786],[780],[803, 922, 879, 784, 891, 783],[]⟩

private def s6Step81FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [862, 786], [], []],[[780], [877], [860], [855]],[[], [], [], []]⟩,[867],[794],[803],[922],[879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800],[803, 922, 879, 784]⟩

private def s6Step81CompleteLog : HmrEarlyStepLog := ⟨s6Step81FrontLog,s6Step81CompleteMoves,s6Step81EarlyControlLog⟩

private def s6Step81ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483],795⟩

private def s6Step81ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807],776⟩

private def s6Step81ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226],777⟩

private def s6Step81ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869],775⟩

private def s6Step81FrontOut : WindowBank := ⟨s6Step81ExitFOut,s6Step81ExitGOut,s6Step81ExitFvOut,s6Step81ExitGvOut⟩

private def s6Step81CompleteOut : WindowBank := s6Step81FrontOut.repacked s6Step81CompleteMoves

private def s6Step81EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step81EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step81EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step81EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step81EarlyControlPositiveArena,[786],s6Step81EarlyControlEqualityArena,[780],⟨⟨867,false⟩,[⟨⟨786,false⟩,780⟩]⟩⟩

private def s6Step81EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step81EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step81EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step81EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step81EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step81EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step81EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,768⟩,⟨⟨772,false⟩,860⟩,⟨⟨771,false⟩,855⟩,⟨⟨770,false⟩,877⟩,⟨⟨769,false⟩,862⟩]⟩

private def s6Step81EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step81EarlyControlZeroArena,s6Step81EarlyControlZeroPlan,s6Step81EarlyControlClassPlan,s6Step81EarlyControlFlagArena,s6Step81EarlyControlFittedArena,s6Step81EarlyControlHistoryArena,s6Step81EarlyControlSigmaArena,s6Step81EarlyControlOutputArena,s6Step81EarlyControlLog⟩

private def s6Step81CounterWork : List Wire := [803, 922, 879, 784]

private theorem s6Step81Counter_bounded : s6Step81CounterWork.toFinset⊆arenaWires := by norm_num [s6Step81CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step81HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step81CounterDuring : Arena := ⟨s6Step81HeadFvAfter.live∪s6Step81CounterWork.toFinset,Finset.union_subset s6Step81HeadFvAfter.bounded s6Step81Counter_bounded⟩

private def s6Step81EntryFFresh : List Wire := []

private def s6Step81EntryFvFresh : List Wire := []

private def s6Step81EntryGFresh : List Wire := [862, 786]

private def s6Step81EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step81EntryGvAfter : Arena := s6Step81EntryGAfter

private def s6Step81EntryGvFresh : List Wire := []

private def s6Step81ExitFExtra : List Wire := [484, 877]

private def s6Step81ExitFvExtra : List Wire := [855]

private def s6Step81ExitGExtra : List Wire := [862, 786, 780]

private def s6Step81ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,484),(485,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step81ExitGvExtra : List Wire := [860]

private def s6Step81Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step81Add0Work : List Wire := [879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step81Add0_bounded : s6Step81Add0Work.toFinset⊆arenaWires := by
  have h : s6Step81Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step81Add0During : Arena := ⟨s6Step81Add0Arena.live∪s6Step81Add0Work.toFinset,Finset.union_subset s6Step81Add0Arena.bounded s6Step81Add0_bounded⟩

private def s6Step81Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step81Add1Work : List Wire := [879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800]

private theorem s6Step81Add1_bounded : s6Step81Add1Work.toFinset⊆arenaWires := by
  have h : s6Step81Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step81Add1During : Arena := ⟨s6Step81Add1Arena.live∪s6Step81Add1Work.toFinset,Finset.union_subset s6Step81Add1Arena.bounded s6Step81Add1_bounded⟩

private def s6Step81F4FlagArena : Arena := ⟨s6Step81HeadFvAfter.live∪{803},Finset.union_subset s6Step81HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step81F4Plan : HmrHybridF4Plan := ⟨s6Step81F4FlagArena,[803],s6Step81Add0Arena,[922],s6Step81Add0During,s6Step81Add0Work,s6Step81Add1During,s6Step81Add1Work⟩

private def s6Step81HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 877],795⟩

private def s6Step81HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 855],776⟩

private def s6Step81HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 862, 786, 780],777⟩

private def s6Step81HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 860],775⟩

private def s6Step81FrontHead : WindowBank := ⟨s6Step81HeadFOut,s6Step81HeadGOut,s6Step81HeadFvOut,s6Step81HeadGvOut⟩

private def s6Step81EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484],795⟩

private def s6Step81EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807],776⟩

private def s6Step81EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 862, 786],777⟩

private def s6Step81EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869],775⟩

private def s6Step81FrontPair : WindowBank := ⟨s6Step81EntryFOut,s6Step81EntryGOut,s6Step81EntryFvOut,s6Step81EntryGvOut⟩

private def s6Step81FrontSigmaArena : Arena := ⟨s6Step81EntryGvAfter.live∪{867},Finset.union_subset s6Step81EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step81HeadFFresh : List Wire := [877]

private def s6Step81HeadFvFresh : List Wire := [855]

private def s6Step81HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step81HeadGFresh : List Wire := [780]

private def s6Step81HeadGvFresh : List Wire := [860]

private def s6Step81FrontPlan : HmrSourceFront := ⟨s6Step81EntryGvAfter,s6Step81FrontPair,(growRow 795 s6Step81EntryFFresh ++ (growRow 777 s6Step81EntryGFresh ++ (growRow 776 s6Step81EntryFvFresh ++ (growRow 775 s6Step81EntryGvFresh ++ [])))),s6Step81FrontSigmaArena,[867],s6Step81HeadGBefore,[794],
  s6Step81HeadFvAfter,s6Step81FrontHead,(growRow 777 s6Step81HeadGFresh ++ (growRow 795 s6Step81HeadFFresh ++ (growRow 775 s6Step81HeadGvFresh ++ (growRow 776 s6Step81HeadFvFresh ++ [])))),s6Step81F4Plan,s6Step81CounterDuring,s6Step81CounterWork,s6Step81ExitGvAfter,s6Step81FrontOut,(shrinkRow 777 s6Step81ExitGExtra ++ (shrinkRow 795 s6Step81ExitFExtra ++ (shrinkRow 776 s6Step81ExitFvExtra ++ (shrinkRow 775 s6Step81ExitGvExtra ++ []))))⟩

private def s6Step81CompletePlan : HmrEarlyStepPlan := ⟨s6Step81FrontPlan,s6Step81EarlyControlArena,s6Step81EarlyControlPlan,s6Step81CompleteMoves⟩

private theorem s6Step81Complete_apart : List.Disjoint (s6Step81CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [867, 794, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] := by
  have nd : ((s6Step81CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[867, 794, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step81Complete_owned : (s6Step81CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step81EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step81EarlyControlArena (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step81CompleteRelocationMove0Borrowed : Arena := ⟨s6Step81ExitGvAfter.live∪{484},Finset.union_subset s6Step81ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step81CompleteRelocation_move0_owned : 768∈s6Step81ExitGvAfter.live := by norm_num [s6Step81ExitGvAfter,arenaWires]

private theorem s6Step81CompleteRelocation_move0_reserve : s6Step81ExitGvAfter.reserve {484}=some s6Step81CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step81ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step81CompleteRelocation_move0_retire : s6Step81CompleteRelocationMove0Borrowed.retireSet {768}=s6Step81EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step81CompleteRelocationMove0Borrowed s6Step81EarlyControlArena {768}
  change s6Step81EarlyControlArena.live=(s6Step81ExitGvAfter.live∪{484})\{768}
  apply hmrArena_update_of_filter_check s6Step81ExitGvAfter s6Step81EarlyControlArena (fun q => ([(0,484),(485,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [484] [768] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step81CompleteRelocation_checked : s6Step81ExitGvAfter.checkRepack [(768,484)]=some s6Step81EarlyControlArena := by
  have tail1 : s6Step81EarlyControlArena.checkRepack []=some s6Step81EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step81ExitGvAfter s6Step81CompleteRelocationMove0Borrowed s6Step81EarlyControlArena s6Step81EarlyControlArena 768 484 []
    s6Step81CompleteRelocation_move0_owned s6Step81CompleteRelocation_move0_reserve s6Step81CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step81Complete_repack : s6Step81ExitGvAfter.checkRepack s6Step81CompleteMoves=some s6Step81EarlyControlArena := by
  simpa only [s6Step81CompleteMoves] using s6Step81CompleteRelocation_checked

private theorem s6Step81EarlyControl_branchOwned : ([794] : List Wire).toFinset⊆s6Step81EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step81EarlyControlSigmaArena (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step81EarlyControl_branch : compileHmrBranchRetirement s6Step81EarlyControlSigmaArena 794=some s6Step81EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step81EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step81EarlyControlSigmaArena s6Step81EarlyControlOutputArena (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [794] rfl rfl
    decide +kernel

private theorem s6Step81EarlyControl_classEqualityBorrow : s6Step81EarlyControlPositiveArena.checkBorrow (([867, 786] : List Wire).length-1) s6Step81EarlyControlLog.classWork=some s6Step81EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step81EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step81EarlyControlPositiveArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step81EarlyControlPositiveArena s6Step81EarlyControlEqualityArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step81EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step81EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step81EarlyControl_classEqualityOwned : ([867, 786] : List Wire).toFinset⊆s6Step81EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step81EarlyControlPositiveArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step81EarlyControl_classEquality : compileHmrEqualityLog s6Step81EarlyControlPositiveArena [867, 786] 0 s6Step81EarlyControlLog.classWork=some (s6Step81EarlyControlEqualityArena,s6Step81EarlyControlLog.classWork,s6Step81EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step81EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step81EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step81EarlyControl_classOwned : ([769, 862, 867] : List Wire).toFinset⊆s6Step81EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step81EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step81EarlyControl_positiveBorrow : s6Step81EarlyControlZeroArena.checkBorrow (1) s6Step81EarlyControlLog.positiveWork=some s6Step81EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step81EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step81EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step81EarlyControlZeroArena s6Step81EarlyControlPositiveArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step81EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step81EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step81EarlyControl_class : compileHmrSourceClassLog s6Step81EarlyControlZeroArena false 769 s6Step81EarlyControlZeroPlan.top 0 867 s6Step81EarlyControlLog.positiveWork s6Step81EarlyControlLog.classWork=some s6Step81EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step81EarlyControlClassPlan s6Step81EarlyControlZeroArena false 769 s6Step81EarlyControlZeroPlan.top 0 867
  constructor
  · decide +kernel
  · exact s6Step81EarlyControl_classOwned
  · exact s6Step81EarlyControl_positiveBorrow
  · exact s6Step81EarlyControl_classEquality

private theorem s6Step81EarlyControl_entryRecordOwned : ([794, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step81EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step81EarlyControlArena (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step81EarlyControl_entrySigmaOwned : ([867, 254] : List Wire).toFinset⊆s6Step81EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step81EarlyControlArena (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step81EarlyControl_fitBorrow : s6Step81EarlyControlFlagArena.checkBorrow ((30-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).length)) s6Step81EarlyControlLog.recordFresh=some s6Step81EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step81EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step81EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step81EarlyControlFittedArena,s6Step81EarlyControlFlagArena,s6Step81EarlyControlLog,arenaWires]

private theorem s6Step81EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step81EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step81EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step81EarlyControl_fit : compileHmrRecordGrowLog s6Step81EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step81EarlyControlLog.recordFresh=some s6Step81EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step81EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step81EarlyControl_fitBorrow

private theorem s6Step81EarlyControl_flagsBorrow : s6Step81EarlyControlEqualityArena.checkBorrow (6) s6Step81EarlyControlLog.flagWork=some s6Step81EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step81EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step81EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step81EarlyControlEqualityArena s6Step81EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step81EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step81EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step81EarlyControl_flagsOwned : ([780, 253, 252, 251] : List Wire).toFinset⊆s6Step81EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step81EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step81EarlyControl_flags : compileHmrFlagsLog s6Step81EarlyControlClassPlan.equalityArena s6Step81EarlyControlClassPlan.equality.top 253 252 251 s6Step81EarlyControlLog.flagWork=some s6Step81EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step81EarlyControl_flagsOwned⟩
  · exact s6Step81EarlyControl_flagsBorrow

private theorem s6Step81EarlyControl_historyBorrow : s6Step81EarlyControlArena.checkBorrow ((30-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).length)) s6Step81EarlyControlLog.recordFresh=some s6Step81EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step81EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step81EarlyControlArena (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step81EarlyControlArena s6Step81EarlyControlHistoryArena (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step81EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step81EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step81EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step81EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step81EarlyControlArena (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step81EarlyControl_history : compileHmrRecordGrowLog s6Step81EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step81EarlyControlLog.recordFresh=some s6Step81EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step81EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step81EarlyControl_historyBorrow

private theorem s6Step81EarlyControl_sigmaOwned : ([254, 867] : List Wire).toFinset⊆s6Step81EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step81EarlyControlHistoryArena (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step81EarlyControl_sigmaReleaseOwned : ([867] : List Wire).toFinset⊆s6Step81EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step81EarlyControlHistoryArena (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step81EarlyControl_sigmaRelease : s6Step81EarlyControlHistoryArena.release {867} (fun _ => false)=some s6Step81EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step81EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step81EarlyControlHistoryArena s6Step81EarlyControlSigmaArena (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [867] rfl rfl
    decide +kernel

private theorem s6Step81EarlyControl_sigma : compileHmrSigmaDropLog s6Step81EarlyControlHistoryArena false 0 0 254 867 []=some s6Step81EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step81EarlyControl_sigmaOwned⟩
  · exact s6Step81EarlyControl_sigmaRelease

private theorem s6Step81EarlyControl_zeroBorrow : s6Step81EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step81EarlyControlLog.zeroWork=some s6Step81EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step81EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step81EarlyControlArena (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step81EarlyControlArena s6Step81EarlyControlZeroArena (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step81EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step81EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step81EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step81EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step81EarlyControlArena (fun q => ([(0,768),(769,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step81EarlyControl_zero : compileHmrEqualityLog s6Step81EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step81EarlyControlLog.zeroWork=some (s6Step81EarlyControlZeroArena,s6Step81EarlyControlLog.zeroWork,s6Step81EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step81EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step81EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step81EarlyControl_logged : s6Step81EarlyControlPlan.Logged s6Step81EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 867 254 253 252 251 794 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step81EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step81EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step81EarlyControl_zero
  · exact s6Step81EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step81EarlyControl_flags
  · exact s6Step81EarlyControl_fit
  · exact s6Step81EarlyControl_history
  · exact s6Step81EarlyControl_sigma
  · exact s6Step81EarlyControl_branch

private theorem s6Step81EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step81EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 867 254 253 252 251 794 30 s6Step81EarlyControlLog=some s6Step81EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step81EarlyControlPlan s6Step81EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 867 254 253 252 251 794 30 s6Step81EarlyControl_logged

private def s6Step81EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step81EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484],795⟩

private def s6Step81EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807],776⟩

private def s6Step81EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226],777⟩

private def s6Step81EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869],775⟩

private def s6Step81FrontBank : WindowBank := ⟨s6Step81EntryFRow,s6Step81EntryGRow,s6Step81EntryFvRow,s6Step81EntryGvRow⟩

private def s6Step81Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 877, 795]

private def s6Step81Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 862, 786, 780, 777]

private def s6Step81Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 855, 776]

private def s6Step81Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 860, 775]

private theorem s6Step81Counter_apart : Disjoint s6Step81HeadFvAfter.live s6Step81CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step81HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step81Counter_borrowed : s6Step81HeadFvAfter.checkBorrow 4 s6Step81CounterWork=some s6Step81CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step81HeadFvAfter s6Step81CounterDuring s6Step81CounterWork.toFinset s6Step81Counter_bounded s6Step81Counter_apart rfl

private theorem s6Step81Counter_owned : (867::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step81HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step81HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step81Counter_checked : compileHmrCounterStepLog s6Step81HeadFvAfter true 867 [774, 773, 772, 771, 770, 769] s6Step81CounterWork=some s6Step81CounterDuring := by
  have owned : ∀q∈867::[774, 773, 772, 771, 770, 769],q∈s6Step81HeadFvAfter.live := fun q hq => s6Step81Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step81Counter_borrowed

private def s6Step81EntryFAfter : Arena := s6Step81EntryFBefore

private theorem s6Step81EntryBank_incomingDistinct : ([s6Step81EntryFRow,s6Step81EntryGRow,s6Step81EntryFvRow,s6Step81EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step81EntryF_Incoming : rowsOwned s6Step81EntryFBefore [s6Step81EntryFRow,s6Step81EntryGRow,s6Step81EntryFvRow,s6Step81EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step81EntryFRow,s6Step81EntryGRow,s6Step81EntryFvRow,s6Step81EntryGvRow] 0 s6Step81EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step81EntryFBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step81EntryBank_outgoingOwned : rowsOwned s6Step81EntryGvAfter [s6Step81EntryFOut,s6Step81EntryGOut,s6Step81EntryFvOut,s6Step81EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step81EntryGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step81EntryF_Outgoing : rowsOwned s6Step81EntryGvAfter [s6Step81EntryFOut,s6Step81EntryGOut,s6Step81EntryFvOut,s6Step81EntryGvOut] :=
  hmrRows_owned_drop s6Step81EntryGvAfter [s6Step81EntryFOut,s6Step81EntryGOut,s6Step81EntryFvOut,s6Step81EntryGvOut] 0 s6Step81EntryBank_outgoingOwned

private theorem s6Step81EntryF_distinct : (s6Step81EntryFRow.sign::s6Step81EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step81EntryF_owned : (s6Step81EntryFRow.sign::s6Step81EntryFRow.payload).toFinset⊆s6Step81EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step81EntryFBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step81EntryF_reserved : s6Step81EntryFBefore.reserve s6Step81EntryFFresh.toFinset=some s6Step81EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step81EntryFFresh,arenaWires]
  · norm_num [s6Step81EntryFBefore,s6Step81EntryFFresh,arenaWires]
  · simp only [s6Step81EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step81EntryF_checked : planRowResizeLog s6Step81EntryFBefore s6Step81EntryFRow 229 s6Step81EntryFFresh=
    some (s6Step81EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484],795⟩,growRow 795 s6Step81EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step81EntryFBefore s6Step81EntryFAfter s6Step81EntryFRow 229 s6Step81EntryFFresh
    s6Step81EntryF_distinct s6Step81EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step81EntryF_reserved
  have rowEq : WindowRow.mk (s6Step81EntryFRow.payload++s6Step81EntryFFresh) s6Step81EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step81EntryFvAfter : Arena := s6Step81EntryGAfter

private def s6Step81EntryFvBefore : Arena := s6Step81EntryGAfter

private theorem s6Step81EntryFv_Incoming : rowsOwned s6Step81EntryFvBefore [s6Step81EntryFvRow,s6Step81EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step81EntryFRow,s6Step81EntryGRow,s6Step81EntryFvRow,s6Step81EntryGvRow] 2 s6Step81EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step81EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step81EntryFv_Outgoing : rowsOwned s6Step81EntryGvAfter [s6Step81EntryFvOut,s6Step81EntryGvOut] :=
  hmrRows_owned_drop s6Step81EntryGvAfter [s6Step81EntryFOut,s6Step81EntryGOut,s6Step81EntryFvOut,s6Step81EntryGvOut] 2 s6Step81EntryBank_outgoingOwned

private theorem s6Step81EntryFv_distinct : (s6Step81EntryFvRow.sign::s6Step81EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step81EntryFv_owned : (s6Step81EntryFvRow.sign::s6Step81EntryFvRow.payload).toFinset⊆s6Step81EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step81EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step81EntryFv_reserved : s6Step81EntryFvBefore.reserve s6Step81EntryFvFresh.toFinset=some s6Step81EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step81EntryFvFresh,arenaWires]
  · norm_num [s6Step81EntryFvBefore,s6Step81EntryGAfter,s6Step81EntryFvFresh,arenaWires]
  · simp only [s6Step81EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step81EntryFv_checked : planRowResizeLog s6Step81EntryFvBefore s6Step81EntryFvRow 54 s6Step81EntryFvFresh=
    some (s6Step81EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807],776⟩,growRow 776 s6Step81EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step81EntryFvBefore s6Step81EntryFvAfter s6Step81EntryFvRow 54 s6Step81EntryFvFresh
    s6Step81EntryFv_distinct s6Step81EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step81EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step81EntryFvRow.payload++s6Step81EntryFvFresh) s6Step81EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step81EntryGBefore : Arena := s6Step81EntryFBefore

private theorem s6Step81EntryG_Incoming : rowsOwned s6Step81EntryGBefore [s6Step81EntryGRow,s6Step81EntryFvRow,s6Step81EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step81EntryFRow,s6Step81EntryGRow,s6Step81EntryFvRow,s6Step81EntryGvRow] 1 s6Step81EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step81EntryGBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step81EntryG_Outgoing : rowsOwned s6Step81EntryGvAfter [s6Step81EntryGOut,s6Step81EntryFvOut,s6Step81EntryGvOut] :=
  hmrRows_owned_drop s6Step81EntryGvAfter [s6Step81EntryFOut,s6Step81EntryGOut,s6Step81EntryFvOut,s6Step81EntryGvOut] 1 s6Step81EntryBank_outgoingOwned

private theorem s6Step81EntryG_distinct : (s6Step81EntryGRow.sign::s6Step81EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step81EntryG_owned : (s6Step81EntryGRow.sign::s6Step81EntryGRow.payload).toFinset⊆s6Step81EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step81EntryGBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step81EntryG_reserved : s6Step81EntryGBefore.reserve s6Step81EntryGFresh.toFinset=some s6Step81EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step81EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step81EntryGBefore,s6Step81EntryFBefore,s6Step81EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step81EntryGBefore s6Step81EntryGAfter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step81EntryGFresh rfl rfl
    · norm_num [s6Step81EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step81EntryG_checked : planRowResizeLog s6Step81EntryGBefore s6Step81EntryGRow 229 s6Step81EntryGFresh=
    some (s6Step81EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 862, 786],777⟩,growRow 777 s6Step81EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step81EntryGBefore s6Step81EntryGAfter s6Step81EntryGRow 229 s6Step81EntryGFresh
    s6Step81EntryG_distinct s6Step81EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step81EntryG_reserved
  have rowEq : WindowRow.mk (s6Step81EntryGRow.payload++s6Step81EntryGFresh) s6Step81EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 862, 786],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step81EntryGvBefore : Arena := s6Step81EntryGAfter

private theorem s6Step81EntryGv_Incoming : rowsOwned s6Step81EntryGvBefore [s6Step81EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step81EntryFRow,s6Step81EntryGRow,s6Step81EntryFvRow,s6Step81EntryGvRow] 3 s6Step81EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step81EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step81EntryGv_Outgoing : rowsOwned s6Step81EntryGvAfter [s6Step81EntryGvOut] :=
  hmrRows_owned_drop s6Step81EntryGvAfter [s6Step81EntryFOut,s6Step81EntryGOut,s6Step81EntryFvOut,s6Step81EntryGvOut] 3 s6Step81EntryBank_outgoingOwned

private theorem s6Step81EntryGv_distinct : (s6Step81EntryGvRow.sign::s6Step81EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step81EntryGv_owned : (s6Step81EntryGvRow.sign::s6Step81EntryGvRow.payload).toFinset⊆s6Step81EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step81EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step81EntryGv_reserved : s6Step81EntryGvBefore.reserve s6Step81EntryGvFresh.toFinset=some s6Step81EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step81EntryGvFresh,arenaWires]
  · norm_num [s6Step81EntryGvBefore,s6Step81EntryGAfter,s6Step81EntryGvFresh,arenaWires]
  · simp only [s6Step81EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step81EntryGv_checked : planRowResizeLog s6Step81EntryGvBefore s6Step81EntryGvRow 54 s6Step81EntryGvFresh=
    some (s6Step81EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869],775⟩,growRow 775 s6Step81EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step81EntryGvBefore s6Step81EntryGvAfter s6Step81EntryGvRow 54 s6Step81EntryGvFresh
    s6Step81EntryGv_distinct s6Step81EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step81EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step81EntryGvRow.payload++s6Step81EntryGvFresh) s6Step81EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step81EntryBank_rows : planWindowRowsLog s6Step81EntryFBefore [(s6Step81EntryFRow,229),(s6Step81EntryGRow,229),(s6Step81EntryFvRow,54),(s6Step81EntryGvRow,54)] [s6Step81EntryFFresh,s6Step81EntryGFresh,s6Step81EntryFvFresh,s6Step81EntryGvFresh]=
    some (s6Step81EntryGvAfter,[s6Step81EntryFOut,s6Step81EntryGOut,s6Step81EntryFvOut,s6Step81EntryGvOut],(growRow 795 s6Step81EntryFFresh ++ (growRow 777 s6Step81EntryGFresh ++ (growRow 776 s6Step81EntryFvFresh ++ (growRow 775 s6Step81EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step81EntryGvAfter [] []=some (s6Step81EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step81EntryGvBefore s6Step81EntryGvAfter s6Step81EntryGvAfter
    s6Step81EntryGvRow s6Step81EntryGvOut 54 s6Step81EntryGvFresh [] [] []
    (growRow 775 s6Step81EntryGvFresh) ([]) s6Step81EntryGv_Incoming s6Step81EntryGv_checked h4 s6Step81EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step81EntryFvBefore s6Step81EntryFvAfter s6Step81EntryGvAfter
    s6Step81EntryFvRow s6Step81EntryFvOut 54 s6Step81EntryFvFresh [(s6Step81EntryGvRow,54)] [s6Step81EntryGvFresh] [s6Step81EntryGvOut]
    (growRow 776 s6Step81EntryFvFresh) ((growRow 775 s6Step81EntryGvFresh ++ [])) s6Step81EntryFv_Incoming s6Step81EntryFv_checked h3 s6Step81EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step81EntryGBefore s6Step81EntryGAfter s6Step81EntryGvAfter
    s6Step81EntryGRow s6Step81EntryGOut 229 s6Step81EntryGFresh [(s6Step81EntryFvRow,54),(s6Step81EntryGvRow,54)] [s6Step81EntryFvFresh,s6Step81EntryGvFresh] [s6Step81EntryFvOut,s6Step81EntryGvOut]
    (growRow 777 s6Step81EntryGFresh) ((growRow 776 s6Step81EntryFvFresh ++ (growRow 775 s6Step81EntryGvFresh ++ []))) s6Step81EntryG_Incoming s6Step81EntryG_checked h2 s6Step81EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step81EntryFBefore s6Step81EntryFAfter s6Step81EntryGvAfter
    s6Step81EntryFRow s6Step81EntryFOut 229 s6Step81EntryFFresh [(s6Step81EntryGRow,229),(s6Step81EntryFvRow,54),(s6Step81EntryGvRow,54)] [s6Step81EntryGFresh,s6Step81EntryFvFresh,s6Step81EntryGvFresh] [s6Step81EntryGOut,s6Step81EntryFvOut,s6Step81EntryGvOut]
    (growRow 795 s6Step81EntryFFresh) ((growRow 777 s6Step81EntryGFresh ++ (growRow 776 s6Step81EntryFvFresh ++ (growRow 775 s6Step81EntryGvFresh ++ [])))) s6Step81EntryF_Incoming s6Step81EntryF_checked h1 s6Step81EntryF_Outgoing
  exact h0

private theorem s6Step81EntryBank_checked : compileHmrBankResizeLog .entry s6Step81EntryFBefore ⟨s6Step81EntryFRow,s6Step81EntryGRow,s6Step81EntryFvRow,s6Step81EntryGvRow⟩ ⟨229,229,54,54⟩ [s6Step81EntryFFresh,s6Step81EntryGFresh,s6Step81EntryFvFresh,s6Step81EntryGvFresh]=
    some (s6Step81EntryGvAfter,⟨s6Step81EntryFOut,s6Step81EntryGOut,s6Step81EntryFvOut,s6Step81EntryGvOut⟩,(growRow 795 s6Step81EntryFFresh ++ (growRow 777 s6Step81EntryGFresh ++ (growRow 776 s6Step81EntryFvFresh ++ (growRow 775 s6Step81EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step81EntryBank_rows]
  rfl

private def s6Step81ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,484),(485,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step81ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,862),(863,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step81ExitFBefore : Arena := s6Step81ExitGAfter

private def s6Step81ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 877],795⟩

private def s6Step81ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 855],776⟩

private def s6Step81ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 862, 786, 780],777⟩

private def s6Step81ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 860],775⟩

private theorem s6Step81ExitBank_incomingDistinct : ([s6Step81ExitGRow,s6Step81ExitFRow,s6Step81ExitFvRow,s6Step81ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step81ExitF_Incoming : rowsOwned s6Step81ExitFBefore [s6Step81ExitFRow,s6Step81ExitFvRow,s6Step81ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step81ExitGRow,s6Step81ExitFRow,s6Step81ExitFvRow,s6Step81ExitGvRow] 1 s6Step81ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step81ExitFBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,862),(863,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step81ExitBank_outgoingOwned : rowsOwned s6Step81ExitGvAfter [s6Step81ExitGOut,s6Step81ExitFOut,s6Step81ExitFvOut,s6Step81ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step81ExitGvAfter (fun q => ([(0,484),(485,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step81ExitF_Outgoing : rowsOwned s6Step81ExitGvAfter [s6Step81ExitFOut,s6Step81ExitFvOut,s6Step81ExitGvOut] :=
  hmrRows_owned_drop s6Step81ExitGvAfter [s6Step81ExitGOut,s6Step81ExitFOut,s6Step81ExitFvOut,s6Step81ExitGvOut] 1 s6Step81ExitBank_outgoingOwned

private theorem s6Step81ExitF_distinct : (s6Step81ExitFRow.sign::s6Step81ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step81ExitF_owned : (s6Step81ExitFRow.sign::s6Step81ExitFRow.payload).toFinset⊆s6Step81ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step81ExitFBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,862),(863,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step81ExitF_retired : s6Step81ExitFBefore.retireSet s6Step81ExitFExtra.toFinset=s6Step81ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step81ExitFBefore s6Step81ExitFAfter s6Step81ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step81ExitFBefore s6Step81ExitFAfter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,862),(863,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,484),(485,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step81ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step81ExitF_checked : planRowResizeLog s6Step81ExitFBefore s6Step81ExitFRow 228 []=
    some (s6Step81ExitFAfter,s6Step81ExitFOut,shrinkRow 795 s6Step81ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step81ExitFBefore s6Step81ExitFRow 228 s6Step81ExitF_distinct s6Step81ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step81ExitFRow.payload.take 228) s6Step81ExitFRow.sign=s6Step81ExitFOut := by decide +kernel
  have hi : s6Step81ExitFRow.payload.drop 228=s6Step81ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step81ExitF_retired] at result
  exact result

private def s6Step81ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,484),(485,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step81ExitFvBefore : Arena := s6Step81ExitFAfter

private theorem s6Step81ExitFv_Incoming : rowsOwned s6Step81ExitFvBefore [s6Step81ExitFvRow,s6Step81ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step81ExitGRow,s6Step81ExitFRow,s6Step81ExitFvRow,s6Step81ExitGvRow] 2 s6Step81ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step81ExitFvBefore (fun q => ([(0,484),(485,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step81ExitFv_Outgoing : rowsOwned s6Step81ExitGvAfter [s6Step81ExitFvOut,s6Step81ExitGvOut] :=
  hmrRows_owned_drop s6Step81ExitGvAfter [s6Step81ExitGOut,s6Step81ExitFOut,s6Step81ExitFvOut,s6Step81ExitGvOut] 2 s6Step81ExitBank_outgoingOwned

private theorem s6Step81ExitFv_distinct : (s6Step81ExitFvRow.sign::s6Step81ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step81ExitFv_owned : (s6Step81ExitFvRow.sign::s6Step81ExitFvRow.payload).toFinset⊆s6Step81ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step81ExitFvBefore (fun q => ([(0,484),(485,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step81ExitFv_retired : s6Step81ExitFvBefore.retireSet s6Step81ExitFvExtra.toFinset=s6Step81ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step81ExitFvBefore s6Step81ExitFvAfter s6Step81ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step81ExitFvBefore s6Step81ExitFvAfter (fun q => ([(0,484),(485,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,484),(485,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step81ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step81ExitFv_checked : planRowResizeLog s6Step81ExitFvBefore s6Step81ExitFvRow 54 []=
    some (s6Step81ExitFvAfter,s6Step81ExitFvOut,shrinkRow 776 s6Step81ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step81ExitFvBefore s6Step81ExitFvRow 54 s6Step81ExitFv_distinct s6Step81ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step81ExitFvRow.payload.take 54) s6Step81ExitFvRow.sign=s6Step81ExitFvOut := by decide +kernel
  have hi : s6Step81ExitFvRow.payload.drop 54=s6Step81ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step81ExitFv_retired] at result
  exact result

private def s6Step81ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step81ExitG_Incoming : rowsOwned s6Step81ExitGBefore [s6Step81ExitGRow,s6Step81ExitFRow,s6Step81ExitFvRow,s6Step81ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step81ExitGRow,s6Step81ExitFRow,s6Step81ExitFvRow,s6Step81ExitGvRow] 0 s6Step81ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step81ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step81ExitG_Outgoing : rowsOwned s6Step81ExitGvAfter [s6Step81ExitGOut,s6Step81ExitFOut,s6Step81ExitFvOut,s6Step81ExitGvOut] :=
  hmrRows_owned_drop s6Step81ExitGvAfter [s6Step81ExitGOut,s6Step81ExitFOut,s6Step81ExitFvOut,s6Step81ExitGvOut] 0 s6Step81ExitBank_outgoingOwned

private theorem s6Step81ExitG_distinct : (s6Step81ExitGRow.sign::s6Step81ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step81ExitG_owned : (s6Step81ExitGRow.sign::s6Step81ExitGRow.payload).toFinset⊆s6Step81ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step81ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step81ExitG_retired : s6Step81ExitGBefore.retireSet s6Step81ExitGExtra.toFinset=s6Step81ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step81ExitGBefore s6Step81ExitGAfter s6Step81ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step81ExitGBefore s6Step81ExitGAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,862),(863,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step81ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step81ExitG_checked : planRowResizeLog s6Step81ExitGBefore s6Step81ExitGRow 227 []=
    some (s6Step81ExitGAfter,s6Step81ExitGOut,shrinkRow 777 s6Step81ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step81ExitGBefore s6Step81ExitGRow 227 s6Step81ExitG_distinct s6Step81ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step81ExitGRow.payload.take 227) s6Step81ExitGRow.sign=s6Step81ExitGOut := by decide +kernel
  have hi : s6Step81ExitGRow.payload.drop 227=s6Step81ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step81ExitG_retired] at result
  exact result

private def s6Step81ExitGvBefore : Arena := s6Step81ExitFvAfter

private theorem s6Step81ExitGv_Incoming : rowsOwned s6Step81ExitGvBefore [s6Step81ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step81ExitGRow,s6Step81ExitFRow,s6Step81ExitFvRow,s6Step81ExitGvRow] 3 s6Step81ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step81ExitGvBefore (fun q => ([(0,484),(485,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step81ExitGv_Outgoing : rowsOwned s6Step81ExitGvAfter [s6Step81ExitGvOut] :=
  hmrRows_owned_drop s6Step81ExitGvAfter [s6Step81ExitGOut,s6Step81ExitFOut,s6Step81ExitFvOut,s6Step81ExitGvOut] 3 s6Step81ExitBank_outgoingOwned

private theorem s6Step81ExitGv_distinct : (s6Step81ExitGvRow.sign::s6Step81ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step81ExitGv_owned : (s6Step81ExitGvRow.sign::s6Step81ExitGvRow.payload).toFinset⊆s6Step81ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step81ExitGvBefore (fun q => ([(0,484),(485,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step81ExitGv_retired : s6Step81ExitGvBefore.retireSet s6Step81ExitGvExtra.toFinset=s6Step81ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step81ExitGvBefore s6Step81ExitGvAfter s6Step81ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step81ExitGvBefore s6Step81ExitGvAfter (fun q => ([(0,484),(485,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,484),(485,780),(781,782),(785,786),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step81ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step81ExitGv_checked : planRowResizeLog s6Step81ExitGvBefore s6Step81ExitGvRow 54 []=
    some (s6Step81ExitGvAfter,s6Step81ExitGvOut,shrinkRow 775 s6Step81ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step81ExitGvBefore s6Step81ExitGvRow 54 s6Step81ExitGv_distinct s6Step81ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step81ExitGvRow.payload.take 54) s6Step81ExitGvRow.sign=s6Step81ExitGvOut := by decide +kernel
  have hi : s6Step81ExitGvRow.payload.drop 54=s6Step81ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step81ExitGv_retired] at result
  exact result

private theorem s6Step81ExitBank_rows : planWindowRowsLog s6Step81ExitGBefore [(s6Step81ExitGRow,227),(s6Step81ExitFRow,228),(s6Step81ExitFvRow,54),(s6Step81ExitGvRow,54)] [[],[],[],[]]=
    some (s6Step81ExitGvAfter,[s6Step81ExitGOut,s6Step81ExitFOut,s6Step81ExitFvOut,s6Step81ExitGvOut],(shrinkRow 777 s6Step81ExitGExtra ++ (shrinkRow 795 s6Step81ExitFExtra ++ (shrinkRow 776 s6Step81ExitFvExtra ++ (shrinkRow 775 s6Step81ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step81ExitGvAfter [] []=some (s6Step81ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step81ExitGvBefore s6Step81ExitGvAfter s6Step81ExitGvAfter
    s6Step81ExitGvRow s6Step81ExitGvOut 54 [] [] [] []
    (shrinkRow 775 s6Step81ExitGvExtra) ([]) s6Step81ExitGv_Incoming s6Step81ExitGv_checked h4 s6Step81ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step81ExitFvBefore s6Step81ExitFvAfter s6Step81ExitGvAfter
    s6Step81ExitFvRow s6Step81ExitFvOut 54 [] [(s6Step81ExitGvRow,54)] [[]] [s6Step81ExitGvOut]
    (shrinkRow 776 s6Step81ExitFvExtra) ((shrinkRow 775 s6Step81ExitGvExtra ++ [])) s6Step81ExitFv_Incoming s6Step81ExitFv_checked h3 s6Step81ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step81ExitFBefore s6Step81ExitFAfter s6Step81ExitGvAfter
    s6Step81ExitFRow s6Step81ExitFOut 228 [] [(s6Step81ExitFvRow,54),(s6Step81ExitGvRow,54)] [[],[]] [s6Step81ExitFvOut,s6Step81ExitGvOut]
    (shrinkRow 795 s6Step81ExitFExtra) ((shrinkRow 776 s6Step81ExitFvExtra ++ (shrinkRow 775 s6Step81ExitGvExtra ++ []))) s6Step81ExitF_Incoming s6Step81ExitF_checked h2 s6Step81ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step81ExitGBefore s6Step81ExitGAfter s6Step81ExitGvAfter
    s6Step81ExitGRow s6Step81ExitGOut 227 [] [(s6Step81ExitFRow,228),(s6Step81ExitFvRow,54),(s6Step81ExitGvRow,54)] [[],[],[]] [s6Step81ExitFOut,s6Step81ExitFvOut,s6Step81ExitGvOut]
    (shrinkRow 777 s6Step81ExitGExtra) ((shrinkRow 795 s6Step81ExitFExtra ++ (shrinkRow 776 s6Step81ExitFvExtra ++ (shrinkRow 775 s6Step81ExitGvExtra ++ [])))) s6Step81ExitG_Incoming s6Step81ExitG_checked h1 s6Step81ExitG_Outgoing
  exact h0

private theorem s6Step81ExitBank_checked : compileHmrBankResizeLog .exit s6Step81ExitGBefore ⟨s6Step81ExitFRow,s6Step81ExitGRow,s6Step81ExitFvRow,s6Step81ExitGvRow⟩ ⟨228,227,54,54⟩ [[],[],[],[]]=
    some (s6Step81ExitGvAfter,⟨s6Step81ExitFOut,s6Step81ExitGOut,s6Step81ExitFvOut,s6Step81ExitGvOut⟩,(shrinkRow 777 s6Step81ExitGExtra ++ (shrinkRow 795 s6Step81ExitFExtra ++ (shrinkRow 776 s6Step81ExitFvExtra ++ (shrinkRow 775 s6Step81ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step81ExitBank_rows]
  rfl

private theorem s6Step81Add0_apart : Disjoint s6Step81Add0Arena.live s6Step81Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step81Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step81Add0_card : s6Step81Add0Arena.live.card=870 := by
  decide +kernel

private theorem s6Step81Add0_borrowed : s6Step81Add0Arena.checkBorrow (hmrHybridCount s6Step81Add0Arena s6Step81Add0B.length) s6Step81Add0Work=some s6Step81Add0During := by
  have len : s6Step81Add0Work.length=hmrHybridCount s6Step81Add0Arena s6Step81Add0B.length := by
    rw [hmrHybridCount,s6Step81Add0_card]
    decide +kernel
  have nd : s6Step81Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step81Add0Arena s6Step81Add0During s6Step81Add0Work.toFinset s6Step81Add0_bounded s6Step81Add0_apart rfl

private theorem s6Step81Add0_distinct : (803::794::922::(s6Step81Add0A++s6Step81Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step81Add0_owned : (803::794::922::(s6Step81Add0A++s6Step81Add0B)).toFinset⊆s6Step81Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step81Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step81Add0_checked : compileHmrHybridCinLog s6Step81Add0Arena 794 803 922 s6Step81Add0A s6Step81Add0B s6Step81Add0Work=some s6Step81Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step81Add0Arena s6Step81Add0During 794 803 922 s6Step81Add0A s6Step81Add0B s6Step81Add0Work
    (by decide +kernel) (by decide +kernel) s6Step81Add0_distinct
    (fun q hq => s6Step81Add0_owned (List.mem_toFinset.mpr hq)) s6Step81Add0_borrowed

private theorem s6Step81Add1_apart : Disjoint s6Step81Add1Arena.live s6Step81Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step81Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step81Add1_card : s6Step81Add1Arena.live.card=870 := by
  decide +kernel

private theorem s6Step81Add1_borrowed : s6Step81Add1Arena.checkBorrow (hmrHybridCount s6Step81Add1Arena s6Step81Add1B.length) s6Step81Add1Work=some s6Step81Add1During := by
  have len : s6Step81Add1Work.length=hmrHybridCount s6Step81Add1Arena s6Step81Add1B.length := by
    rw [hmrHybridCount,s6Step81Add1_card]
    decide +kernel
  have nd : s6Step81Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step81Add1Arena s6Step81Add1During s6Step81Add1Work.toFinset s6Step81Add1_bounded s6Step81Add1_apart rfl

private theorem s6Step81Add1_distinct : (803::794::922::(s6Step81Add1A++s6Step81Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step81Add1_owned : (803::794::922::(s6Step81Add1A++s6Step81Add1B)).toFinset⊆s6Step81Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step81Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step81Add1_checked : compileHmrHybridCinLog s6Step81Add1Arena 794 803 922 s6Step81Add1A s6Step81Add1B s6Step81Add1Work=some s6Step81Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step81Add1Arena s6Step81Add1During 794 803 922 s6Step81Add1A s6Step81Add1B s6Step81Add1Work
    (by decide +kernel) (by decide +kernel) s6Step81Add1_distinct
    (fun q hq => s6Step81Add1_owned (List.mem_toFinset.mpr hq)) s6Step81Add1_borrowed

private theorem s6Step81F4_apart : Disjoint (s6Step81Add0A++s6Step81Add0B).toFinset (s6Step81Add1A++s6Step81Add1B).toFinset := by
  have nd : ((s6Step81Add0A++s6Step81Add0B)++(s6Step81Add1A++s6Step81Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step81F4_carry : s6Step81F4FlagArena.checkBorrow 1 [922]=some s6Step81Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step81F4FlagArena,s6Step81HeadFvAfter,arenaWires]
  · change s6Step81Add0Arena.live=(s6Step81HeadFvAfter.live∪{803})∪{922}
    apply hmrArena_union_pair_of_filter_check s6Step81HeadFvAfter s6Step81Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 803 922 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step81F4_distinct : (867::794::803::922::((s6Step81Add0A++s6Step81Add1A)++(s6Step81Add0B++s6Step81Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step81F4_flag : s6Step81HeadFvAfter.checkBorrow 1 [803]=some s6Step81F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step81HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step81F4_owned : (867::794::((s6Step81Add0A++s6Step81Add1A)++(s6Step81Add0B++s6Step81Add1B))).toFinset⊆s6Step81HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step81HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step81F4_checked : compileHmrHybridF4Log s6Step81HeadFvAfter 867 794 s6Step81Add0A s6Step81Add0B s6Step81Add1A s6Step81Add1B [803] [922] s6Step81Add0Work s6Step81Add1Work=some s6Step81F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step81HeadFvAfter s6Step81F4FlagArena s6Step81Add0Arena s6Step81Add0During s6Step81Add1During 867 794
    s6Step81Add0A s6Step81Add0B s6Step81Add1A s6Step81Add1B [803] [922] s6Step81Add0Work s6Step81Add1Work
    (fun q hq => s6Step81F4_owned (List.mem_toFinset.mpr hq)) s6Step81F4_flag s6Step81F4_carry
    s6Step81F4_distinct s6Step81F4_apart s6Step81Add0_checked s6Step81Add1_checked

private theorem s6Step81Front_branch : s6Step81FrontSigmaArena.checkBorrow 1 [794]=some s6Step81HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step81FrontSigmaArena,s6Step81EntryGvAfter,s6Step81EntryGAfter,arenaWires]
  · change s6Step81HeadGBefore.live=(s6Step81EntryGvAfter.live∪{867})∪{794}
    apply hmrArena_union_pair_of_filter_check s6Step81EntryGvAfter s6Step81HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 867 794 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step81Front_entry : HmrFrontEntryValid s6Step81EntryFBefore s6Step81FrontBank 229 54 ⟨228,227,54,54⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step81FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step81EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step81EntryFBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step81FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step81Front_sigma : s6Step81EntryGvAfter.checkBorrow 1 [867]=some s6Step81FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step81EntryGvAfter,s6Step81EntryGAfter,arenaWires]
  · rfl

private def s6Step81HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step81HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step81HeadFBefore : Arena := s6Step81HeadGAfter

private def s6Step81HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484],795⟩

private def s6Step81HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807],776⟩

private def s6Step81HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 862, 786],777⟩

private def s6Step81HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869],775⟩

private theorem s6Step81HeadBank_incomingDistinct : ([s6Step81HeadGRow,s6Step81HeadFRow,s6Step81HeadGvRow,s6Step81HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step81HeadF_Incoming : rowsOwned s6Step81HeadFBefore [s6Step81HeadFRow,s6Step81HeadGvRow,s6Step81HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step81HeadGRow,s6Step81HeadFRow,s6Step81HeadGvRow,s6Step81HeadFvRow] 1 s6Step81HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step81HeadFBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step81HeadBank_outgoingOwned : rowsOwned s6Step81HeadFvAfter [s6Step81HeadGOut,s6Step81HeadFOut,s6Step81HeadGvOut,s6Step81HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step81HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step81HeadF_Outgoing : rowsOwned s6Step81HeadFvAfter [s6Step81HeadFOut,s6Step81HeadGvOut,s6Step81HeadFvOut] :=
  hmrRows_owned_drop s6Step81HeadFvAfter [s6Step81HeadGOut,s6Step81HeadFOut,s6Step81HeadGvOut,s6Step81HeadFvOut] 1 s6Step81HeadBank_outgoingOwned

private theorem s6Step81HeadF_distinct : (s6Step81HeadFRow.sign::s6Step81HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step81HeadF_owned : (s6Step81HeadFRow.sign::s6Step81HeadFRow.payload).toFinset⊆s6Step81HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step81HeadFBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step81HeadF_reserved : s6Step81HeadFBefore.reserve s6Step81HeadFFresh.toFinset=some s6Step81HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step81HeadFFresh,arenaWires]
  · norm_num [s6Step81HeadFBefore,s6Step81HeadGAfter,s6Step81HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step81HeadFBefore s6Step81HeadFAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step81HeadFFresh rfl rfl
    · norm_num [s6Step81HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step81HeadF_checked : planRowResizeLog s6Step81HeadFBefore s6Step81HeadFRow 230 s6Step81HeadFFresh=
    some (s6Step81HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 877],795⟩,growRow 795 s6Step81HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step81HeadFBefore s6Step81HeadFAfter s6Step81HeadFRow 230 s6Step81HeadFFresh
    s6Step81HeadF_distinct s6Step81HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step81HeadF_reserved
  have rowEq : WindowRow.mk (s6Step81HeadFRow.payload++s6Step81HeadFFresh) s6Step81HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 877],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step81HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step81HeadFvBefore : Arena := s6Step81HeadGvAfter

private theorem s6Step81HeadFv_Incoming : rowsOwned s6Step81HeadFvBefore [s6Step81HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step81HeadGRow,s6Step81HeadFRow,s6Step81HeadGvRow,s6Step81HeadFvRow] 3 s6Step81HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step81HeadFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step81HeadFv_Outgoing : rowsOwned s6Step81HeadFvAfter [s6Step81HeadFvOut] :=
  hmrRows_owned_drop s6Step81HeadFvAfter [s6Step81HeadGOut,s6Step81HeadFOut,s6Step81HeadGvOut,s6Step81HeadFvOut] 3 s6Step81HeadBank_outgoingOwned

private theorem s6Step81HeadFv_distinct : (s6Step81HeadFvRow.sign::s6Step81HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step81HeadFv_owned : (s6Step81HeadFvRow.sign::s6Step81HeadFvRow.payload).toFinset⊆s6Step81HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step81HeadFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step81HeadFv_reserved : s6Step81HeadFvBefore.reserve s6Step81HeadFvFresh.toFinset=some s6Step81HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step81HeadFvFresh,arenaWires]
  · norm_num [s6Step81HeadFvBefore,s6Step81HeadGvAfter,s6Step81HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step81HeadFvBefore s6Step81HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step81HeadFvFresh rfl rfl
    · norm_num [s6Step81HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step81HeadFv_checked : planRowResizeLog s6Step81HeadFvBefore s6Step81HeadFvRow 55 s6Step81HeadFvFresh=
    some (s6Step81HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 855],776⟩,growRow 776 s6Step81HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step81HeadFvBefore s6Step81HeadFvAfter s6Step81HeadFvRow 55 s6Step81HeadFvFresh
    s6Step81HeadFv_distinct s6Step81HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step81HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step81HeadFvRow.payload++s6Step81HeadFvFresh) s6Step81HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 855],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step81HeadG_Incoming : rowsOwned s6Step81HeadGBefore [s6Step81HeadGRow,s6Step81HeadFRow,s6Step81HeadGvRow,s6Step81HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step81HeadGRow,s6Step81HeadFRow,s6Step81HeadGvRow,s6Step81HeadFvRow] 0 s6Step81HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step81HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step81HeadG_Outgoing : rowsOwned s6Step81HeadFvAfter [s6Step81HeadGOut,s6Step81HeadFOut,s6Step81HeadGvOut,s6Step81HeadFvOut] :=
  hmrRows_owned_drop s6Step81HeadFvAfter [s6Step81HeadGOut,s6Step81HeadFOut,s6Step81HeadGvOut,s6Step81HeadFvOut] 0 s6Step81HeadBank_outgoingOwned

private theorem s6Step81HeadG_distinct : (s6Step81HeadGRow.sign::s6Step81HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step81HeadG_owned : (s6Step81HeadGRow.sign::s6Step81HeadGRow.payload).toFinset⊆s6Step81HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step81HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step81HeadG_reserved : s6Step81HeadGBefore.reserve s6Step81HeadGFresh.toFinset=some s6Step81HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step81HeadGFresh,arenaWires]
  · norm_num [s6Step81HeadGBefore,s6Step81HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step81HeadGBefore s6Step81HeadGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step81HeadGFresh rfl rfl
    · norm_num [s6Step81HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step81HeadG_checked : planRowResizeLog s6Step81HeadGBefore s6Step81HeadGRow 230 s6Step81HeadGFresh=
    some (s6Step81HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 862, 786, 780],777⟩,growRow 777 s6Step81HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step81HeadGBefore s6Step81HeadGAfter s6Step81HeadGRow 230 s6Step81HeadGFresh
    s6Step81HeadG_distinct s6Step81HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step81HeadG_reserved
  have rowEq : WindowRow.mk (s6Step81HeadGRow.payload++s6Step81HeadGFresh) s6Step81HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 862, 786, 780],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step81HeadGvBefore : Arena := s6Step81HeadFAfter

private theorem s6Step81HeadGv_Incoming : rowsOwned s6Step81HeadGvBefore [s6Step81HeadGvRow,s6Step81HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step81HeadGRow,s6Step81HeadFRow,s6Step81HeadGvRow,s6Step81HeadFvRow] 2 s6Step81HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step81HeadGvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step81HeadGv_Outgoing : rowsOwned s6Step81HeadFvAfter [s6Step81HeadGvOut,s6Step81HeadFvOut] :=
  hmrRows_owned_drop s6Step81HeadFvAfter [s6Step81HeadGOut,s6Step81HeadFOut,s6Step81HeadGvOut,s6Step81HeadFvOut] 2 s6Step81HeadBank_outgoingOwned

private theorem s6Step81HeadGv_distinct : (s6Step81HeadGvRow.sign::s6Step81HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step81HeadGv_owned : (s6Step81HeadGvRow.sign::s6Step81HeadGvRow.payload).toFinset⊆s6Step81HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step81HeadGvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step81HeadGv_reserved : s6Step81HeadGvBefore.reserve s6Step81HeadGvFresh.toFinset=some s6Step81HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step81HeadGvFresh,arenaWires]
  · norm_num [s6Step81HeadGvBefore,s6Step81HeadFAfter,s6Step81HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step81HeadGvBefore s6Step81HeadGvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step81HeadGvFresh rfl rfl
    · norm_num [s6Step81HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step81HeadGv_checked : planRowResizeLog s6Step81HeadGvBefore s6Step81HeadGvRow 55 s6Step81HeadGvFresh=
    some (s6Step81HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 860],775⟩,growRow 775 s6Step81HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step81HeadGvBefore s6Step81HeadGvAfter s6Step81HeadGvRow 55 s6Step81HeadGvFresh
    s6Step81HeadGv_distinct s6Step81HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step81HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step81HeadGvRow.payload++s6Step81HeadGvFresh) s6Step81HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 860],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step81HeadBank_rows : planWindowRowsLog s6Step81HeadGBefore [(s6Step81HeadGRow,230),(s6Step81HeadFRow,230),(s6Step81HeadGvRow,55),(s6Step81HeadFvRow,55)] [s6Step81HeadGFresh,s6Step81HeadFFresh,s6Step81HeadGvFresh,s6Step81HeadFvFresh]=
    some (s6Step81HeadFvAfter,[s6Step81HeadGOut,s6Step81HeadFOut,s6Step81HeadGvOut,s6Step81HeadFvOut],(growRow 777 s6Step81HeadGFresh ++ (growRow 795 s6Step81HeadFFresh ++ (growRow 775 s6Step81HeadGvFresh ++ (growRow 776 s6Step81HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step81HeadFvAfter [] []=some (s6Step81HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step81HeadFvBefore s6Step81HeadFvAfter s6Step81HeadFvAfter
    s6Step81HeadFvRow s6Step81HeadFvOut 55 s6Step81HeadFvFresh [] [] []
    (growRow 776 s6Step81HeadFvFresh) ([]) s6Step81HeadFv_Incoming s6Step81HeadFv_checked h4 s6Step81HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step81HeadGvBefore s6Step81HeadGvAfter s6Step81HeadFvAfter
    s6Step81HeadGvRow s6Step81HeadGvOut 55 s6Step81HeadGvFresh [(s6Step81HeadFvRow,55)] [s6Step81HeadFvFresh] [s6Step81HeadFvOut]
    (growRow 775 s6Step81HeadGvFresh) ((growRow 776 s6Step81HeadFvFresh ++ [])) s6Step81HeadGv_Incoming s6Step81HeadGv_checked h3 s6Step81HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step81HeadFBefore s6Step81HeadFAfter s6Step81HeadFvAfter
    s6Step81HeadFRow s6Step81HeadFOut 230 s6Step81HeadFFresh [(s6Step81HeadGvRow,55),(s6Step81HeadFvRow,55)] [s6Step81HeadGvFresh,s6Step81HeadFvFresh] [s6Step81HeadGvOut,s6Step81HeadFvOut]
    (growRow 795 s6Step81HeadFFresh) ((growRow 775 s6Step81HeadGvFresh ++ (growRow 776 s6Step81HeadFvFresh ++ []))) s6Step81HeadF_Incoming s6Step81HeadF_checked h2 s6Step81HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step81HeadGBefore s6Step81HeadGAfter s6Step81HeadFvAfter
    s6Step81HeadGRow s6Step81HeadGOut 230 s6Step81HeadGFresh [(s6Step81HeadFRow,230),(s6Step81HeadGvRow,55),(s6Step81HeadFvRow,55)] [s6Step81HeadFFresh,s6Step81HeadGvFresh,s6Step81HeadFvFresh] [s6Step81HeadFOut,s6Step81HeadGvOut,s6Step81HeadFvOut]
    (growRow 777 s6Step81HeadGFresh) ((growRow 795 s6Step81HeadFFresh ++ (growRow 775 s6Step81HeadGvFresh ++ (growRow 776 s6Step81HeadFvFresh ++ [])))) s6Step81HeadG_Incoming s6Step81HeadG_checked h1 s6Step81HeadG_Outgoing
  exact h0

private theorem s6Step81HeadBank_checked : compileHmrBankResizeLog .headroom s6Step81HeadGBefore ⟨s6Step81HeadFRow,s6Step81HeadGRow,s6Step81HeadFvRow,s6Step81HeadGvRow⟩ ⟨230,230,55,55⟩ [s6Step81HeadGFresh,s6Step81HeadFFresh,s6Step81HeadGvFresh,s6Step81HeadFvFresh]=
    some (s6Step81HeadFvAfter,⟨s6Step81HeadFOut,s6Step81HeadGOut,s6Step81HeadFvOut,s6Step81HeadGvOut⟩,(growRow 777 s6Step81HeadGFresh ++ (growRow 795 s6Step81HeadFFresh ++ (growRow 775 s6Step81HeadGvFresh ++ (growRow 776 s6Step81HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step81HeadBank_rows]
  rfl

private theorem s6Step81Front_checked : compileHmrSourceFrontLog s6Step81EntryFBefore s6Step81FrontBank 229 54 ⟨228,227,54,54⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step81FrontLog=some s6Step81FrontPlan := by
  have pairEq : s6Step81FrontPair=⟨s6Step81HeadFRow,s6Step81HeadGRow,s6Step81HeadFvRow,s6Step81HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step81FrontHead=⟨s6Step81ExitFRow,s6Step81ExitGRow,s6Step81ExitFvRow,s6Step81ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step81Add0A=s6Step81FrontHead.f.wires := by decide +kernel
  have gEq : s6Step81Add0B=s6Step81FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step81Add1A=s6Step81FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step81Add1B=s6Step81FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step81EntryFBefore s6Step81FrontBank 229 54 ⟨228,227,54,54⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step81FrontLog s6Step81FrontPlan
  · exact s6Step81Front_entry
  · exact s6Step81EntryBank_checked
  · exact s6Step81Front_sigma
  · rfl
  · exact s6Step81Front_branch
  · rfl
  · simpa only [s6Step81FrontPlan,pairEq] using s6Step81HeadBank_checked
  · simpa only [s6Step81FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step81F4_checked
  · exact s6Step81Counter_checked
  · rfl
  · simpa only [s6Step81FrontPlan,headEq] using s6Step81ExitBank_checked

private theorem s6Step81Complete_explicit_checked : compileHmrEarlyStepLog s6Step81EntryFBefore s6Step81FrontBank 229 54 ⟨228,227,54,54⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step81CompleteLog=some s6Step81CompletePlan := by
  let Q := s6Step81EarlyControlPlan
  have hq := s6Step81EarlyControl_plan_checked
  have fv1 : s6Step81CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step81CompleteOut.fv.payload[2]?.getD s6Step81CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step81CompleteOut.fv.payload[3]?.getD s6Step81CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step81CompleteOut.fv.payload[4]?.getD s6Step81CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step81EntryFBefore s6Step81EarlyControlArena s6Step81FrontBank 229 54 ⟨228,227,54,54⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step81CompleteLog s6Step81FrontPlan Q
    s6Step81Front_checked s6Step81Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step81Complete_owned s6Step81Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step81EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 867 s6Step81CompleteOut.fv.second (s6Step81CompleteOut.fv.payload[2]?.getD s6Step81CompleteOut.fv.sign) (s6Step81CompleteOut.fv.payload[3]?.getD s6Step81CompleteOut.fv.sign) (s6Step81CompleteOut.fv.payload[4]?.getD s6Step81CompleteOut.fv.sign) 794 30 s6Step81EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep81Arena : Arena := s6Step81EntryFBefore
def s6PrivateStep81Bank : WindowBank := s6Step81FrontBank
def s6PrivateStep81Spec : HmrSourceWalkStepLog := ⟨229,54,⟨228,227,54,54⟩,30,.early s6Step81CompleteLog⟩
def s6PrivateStep81Plan : HmrSourceStepPlan := .early s6Step81CompletePlan
theorem s6PrivateStep81_source : s6PrivateStep81Spec=s6ObservedLogs80[1] := rfl
theorem s6PrivateStep81_checked : compileHmrSourceStepLog s6PrivateStep81Arena s6PrivateStep81Bank
    s6PrivateStep81Spec.fgWidth s6PrivateStep81Spec.vWidth s6PrivateStep81Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902]
    6 498 81 s6PrivateStep81Spec.need none s6PrivateStep81Spec.log=some s6PrivateStep81Plan := by
  change compileHmrSourceStepLog s6Step81EntryFBefore s6Step81FrontBank 229 54 ⟨228,227,54,54⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 6 498 81 30 none (.early s6Step81CompleteLog)=some (.early s6Step81CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 81<498)]
  rw [s6Step81Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
