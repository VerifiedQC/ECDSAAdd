import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep77
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

private def s6Step79CompleteMoves : List (Wire × Wire) := [(786,228)]

private def s6Step79EarlyControlLog : HmrEarlyControlLog := ⟨[786, 862, 855, 877, 794],[780],[803],[922, 879, 784, 891, 783, 919],[]⟩

private def s6Step79FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[877], [855], [869], [862]],[[], [], [], []]⟩,[807],[860],[794],[780],[803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790],[794, 780, 803, 922]⟩

private def s6Step79CompleteLog : HmrEarlyStepLog := ⟨s6Step79FrontLog,s6Step79CompleteMoves,s6Step79EarlyControlLog⟩

private def s6Step79ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484],795⟩

private def s6Step79ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843],776⟩

private def s6Step79ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227],777⟩

private def s6Step79ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869],775⟩

private def s6Step79FrontOut : WindowBank := ⟨s6Step79ExitFOut,s6Step79ExitGOut,s6Step79ExitFvOut,s6Step79ExitGvOut⟩

private def s6Step79CompleteOut : WindowBank := s6Step79FrontOut.repacked s6Step79CompleteMoves

private def s6Step79EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step79EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step79EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step79EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step79EarlyControlPositiveArena,[780],s6Step79EarlyControlEqualityArena,[803],⟨⟨807,false⟩,[⟨⟨780,false⟩,803⟩]⟩⟩

private def s6Step79EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step79EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step79EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step79EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step79EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step79EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step79EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,786⟩,⟨⟨772,false⟩,862⟩,⟨⟨771,false⟩,855⟩,⟨⟨770,false⟩,877⟩,⟨⟨769,false⟩,794⟩]⟩

private def s6Step79EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step79EarlyControlZeroArena,s6Step79EarlyControlZeroPlan,s6Step79EarlyControlClassPlan,s6Step79EarlyControlFlagArena,s6Step79EarlyControlFittedArena,s6Step79EarlyControlHistoryArena,s6Step79EarlyControlSigmaArena,s6Step79EarlyControlOutputArena,s6Step79EarlyControlLog⟩

private def s6Step79CounterWork : List Wire := [794, 780, 803, 922]

private theorem s6Step79Counter_bounded : s6Step79CounterWork.toFinset⊆arenaWires := by norm_num [s6Step79CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step79HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step79CounterDuring : Arena := ⟨s6Step79HeadFvAfter.live∪s6Step79CounterWork.toFinset,Finset.union_subset s6Step79HeadFvAfter.bounded s6Step79Counter_bounded⟩

private def s6Step79EntryFFresh : List Wire := []

private def s6Step79EntryFvFresh : List Wire := []

private def s6Step79EntryGFresh : List Wire := []

private def s6Step79EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step79EntryGvAfter : Arena := s6Step79EntryFBefore

private def s6Step79EntryGvFresh : List Wire := []

private def s6Step79ExitFExtra : List Wire := [855]

private def s6Step79ExitFvExtra : List Wire := [862]

private def s6Step79ExitGExtra : List Wire := [228, 877]

private def s6Step79ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,228),(229,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step79ExitGvAfter : Arena := s6Step79ExitFvAfter

private def s6Step79Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step79Add0Work : List Wire := [803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step79Add0_bounded : s6Step79Add0Work.toFinset⊆arenaWires := by
  have h : s6Step79Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step79Add0During : Arena := ⟨s6Step79Add0Arena.live∪s6Step79Add0Work.toFinset,Finset.union_subset s6Step79Add0Arena.bounded s6Step79Add0_bounded⟩

private def s6Step79Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step79Add1Work : List Wire := [803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790]

private theorem s6Step79Add1_bounded : s6Step79Add1Work.toFinset⊆arenaWires := by
  have h : s6Step79Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step79Add1During : Arena := ⟨s6Step79Add1Arena.live∪s6Step79Add1Work.toFinset,Finset.union_subset s6Step79Add1Arena.bounded s6Step79Add1_bounded⟩

private def s6Step79F4FlagArena : Arena := ⟨s6Step79HeadFvAfter.live∪{794},Finset.union_subset s6Step79HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step79F4Plan : HmrHybridF4Plan := ⟨s6Step79F4FlagArena,[794],s6Step79Add0Arena,[780],s6Step79Add0During,s6Step79Add0Work,s6Step79Add1During,s6Step79Add1Work⟩

private def s6Step79HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 855],795⟩

private def s6Step79HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 862],776⟩

private def s6Step79HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 877],777⟩

private def s6Step79HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869],775⟩

private def s6Step79FrontHead : WindowBank := ⟨s6Step79HeadFOut,s6Step79HeadGOut,s6Step79HeadFvOut,s6Step79HeadGvOut⟩

private def s6Step79EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484],795⟩

private def s6Step79EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843],776⟩

private def s6Step79EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228],777⟩

private def s6Step79EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853],775⟩

private def s6Step79FrontPair : WindowBank := ⟨s6Step79EntryFOut,s6Step79EntryGOut,s6Step79EntryFvOut,s6Step79EntryGvOut⟩

private def s6Step79FrontSigmaArena : Arena := ⟨s6Step79EntryGvAfter.live∪{807},Finset.union_subset s6Step79EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step79HeadFFresh : List Wire := [855]

private def s6Step79HeadFvFresh : List Wire := [862]

private def s6Step79HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step79HeadGFresh : List Wire := [877]

private def s6Step79HeadGvFresh : List Wire := [869]

private def s6Step79FrontPlan : HmrSourceFront := ⟨s6Step79EntryGvAfter,s6Step79FrontPair,(growRow 795 s6Step79EntryFFresh ++ (growRow 777 s6Step79EntryGFresh ++ (growRow 776 s6Step79EntryFvFresh ++ (growRow 775 s6Step79EntryGvFresh ++ [])))),s6Step79FrontSigmaArena,[807],s6Step79HeadGBefore,[860],
  s6Step79HeadFvAfter,s6Step79FrontHead,(growRow 777 s6Step79HeadGFresh ++ (growRow 795 s6Step79HeadFFresh ++ (growRow 775 s6Step79HeadGvFresh ++ (growRow 776 s6Step79HeadFvFresh ++ [])))),s6Step79F4Plan,s6Step79CounterDuring,s6Step79CounterWork,s6Step79ExitGvAfter,s6Step79FrontOut,(shrinkRow 777 s6Step79ExitGExtra ++ (shrinkRow 795 s6Step79ExitFExtra ++ (shrinkRow 776 s6Step79ExitFvExtra ++ (growRow 775 [] ++ []))))⟩

private def s6Step79CompletePlan : HmrEarlyStepPlan := ⟨s6Step79FrontPlan,s6Step79EarlyControlArena,s6Step79EarlyControlPlan,s6Step79CompleteMoves⟩

private theorem s6Step79Complete_apart : List.Disjoint (s6Step79CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [807, 860, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] := by
  have nd : ((s6Step79CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[807, 860, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step79Complete_owned : (s6Step79CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step79EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step79EarlyControlArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step79CompleteRelocationMove0Borrowed : Arena := ⟨s6Step79ExitGvAfter.live∪{228},Finset.union_subset s6Step79ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step79CompleteRelocation_move0_owned : 786∈s6Step79ExitGvAfter.live := by norm_num [s6Step79ExitGvAfter,s6Step79ExitFvAfter,arenaWires]

private theorem s6Step79CompleteRelocation_move0_reserve : s6Step79ExitGvAfter.reserve {228}=some s6Step79CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step79ExitGvAfter,s6Step79ExitFvAfter,arenaWires]
  · rfl

private theorem s6Step79CompleteRelocation_move0_retire : s6Step79CompleteRelocationMove0Borrowed.retireSet {786}=s6Step79EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step79CompleteRelocationMove0Borrowed s6Step79EarlyControlArena {786}
  change s6Step79EarlyControlArena.live=(s6Step79ExitGvAfter.live∪{228})\{786}
  apply hmrArena_update_of_filter_check s6Step79ExitGvAfter s6Step79EarlyControlArena (fun q => ([(0,228),(229,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [228] [786] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step79CompleteRelocation_checked : s6Step79ExitGvAfter.checkRepack [(786,228)]=some s6Step79EarlyControlArena := by
  have tail1 : s6Step79EarlyControlArena.checkRepack []=some s6Step79EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step79ExitGvAfter s6Step79CompleteRelocationMove0Borrowed s6Step79EarlyControlArena s6Step79EarlyControlArena 786 228 []
    s6Step79CompleteRelocation_move0_owned s6Step79CompleteRelocation_move0_reserve s6Step79CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step79Complete_repack : s6Step79ExitGvAfter.checkRepack s6Step79CompleteMoves=some s6Step79EarlyControlArena := by
  simpa only [s6Step79CompleteMoves] using s6Step79CompleteRelocation_checked

private theorem s6Step79EarlyControl_branchOwned : ([860] : List Wire).toFinset⊆s6Step79EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step79EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step79EarlyControl_branch : compileHmrBranchRetirement s6Step79EarlyControlSigmaArena 860=some s6Step79EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step79EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step79EarlyControlSigmaArena s6Step79EarlyControlOutputArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [860] rfl rfl
    decide +kernel

private theorem s6Step79EarlyControl_classEqualityBorrow : s6Step79EarlyControlPositiveArena.checkBorrow (([807, 780] : List Wire).length-1) s6Step79EarlyControlLog.classWork=some s6Step79EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step79EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step79EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step79EarlyControlPositiveArena s6Step79EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step79EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step79EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step79EarlyControl_classEqualityOwned : ([807, 780] : List Wire).toFinset⊆s6Step79EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step79EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step79EarlyControl_classEquality : compileHmrEqualityLog s6Step79EarlyControlPositiveArena [807, 780] 0 s6Step79EarlyControlLog.classWork=some (s6Step79EarlyControlEqualityArena,s6Step79EarlyControlLog.classWork,s6Step79EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step79EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step79EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step79EarlyControl_classOwned : ([769, 794, 807] : List Wire).toFinset⊆s6Step79EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step79EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step79EarlyControl_positiveBorrow : s6Step79EarlyControlZeroArena.checkBorrow (1) s6Step79EarlyControlLog.positiveWork=some s6Step79EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step79EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step79EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step79EarlyControlZeroArena s6Step79EarlyControlPositiveArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step79EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step79EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step79EarlyControl_class : compileHmrSourceClassLog s6Step79EarlyControlZeroArena false 769 s6Step79EarlyControlZeroPlan.top 0 807 s6Step79EarlyControlLog.positiveWork s6Step79EarlyControlLog.classWork=some s6Step79EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step79EarlyControlClassPlan s6Step79EarlyControlZeroArena false 769 s6Step79EarlyControlZeroPlan.top 0 807
  constructor
  · decide +kernel
  · exact s6Step79EarlyControl_classOwned
  · exact s6Step79EarlyControl_positiveBorrow
  · exact s6Step79EarlyControl_classEquality

private theorem s6Step79EarlyControl_entryRecordOwned : ([860, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step79EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step79EarlyControlArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step79EarlyControl_entrySigmaOwned : ([807, 254] : List Wire).toFinset⊆s6Step79EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step79EarlyControlArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step79EarlyControl_fitBorrow : s6Step79EarlyControlFlagArena.checkBorrow ((30-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).length)) s6Step79EarlyControlLog.recordFresh=some s6Step79EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step79EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step79EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step79EarlyControlFittedArena,s6Step79EarlyControlFlagArena,s6Step79EarlyControlLog,arenaWires]

private theorem s6Step79EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step79EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step79EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step79EarlyControl_fit : compileHmrRecordGrowLog s6Step79EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step79EarlyControlLog.recordFresh=some s6Step79EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step79EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step79EarlyControl_fitBorrow

private theorem s6Step79EarlyControl_flagsBorrow : s6Step79EarlyControlEqualityArena.checkBorrow (6) s6Step79EarlyControlLog.flagWork=some s6Step79EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step79EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step79EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step79EarlyControlEqualityArena s6Step79EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step79EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step79EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step79EarlyControl_flagsOwned : ([803, 253, 252, 251] : List Wire).toFinset⊆s6Step79EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step79EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step79EarlyControl_flags : compileHmrFlagsLog s6Step79EarlyControlClassPlan.equalityArena s6Step79EarlyControlClassPlan.equality.top 253 252 251 s6Step79EarlyControlLog.flagWork=some s6Step79EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step79EarlyControl_flagsOwned⟩
  · exact s6Step79EarlyControl_flagsBorrow

private theorem s6Step79EarlyControl_historyBorrow : s6Step79EarlyControlArena.checkBorrow ((30-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).length)) s6Step79EarlyControlLog.recordFresh=some s6Step79EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step79EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step79EarlyControlArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step79EarlyControlArena s6Step79EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step79EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step79EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step79EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step79EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step79EarlyControlArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step79EarlyControl_history : compileHmrRecordGrowLog s6Step79EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step79EarlyControlLog.recordFresh=some s6Step79EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step79EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step79EarlyControl_historyBorrow

private theorem s6Step79EarlyControl_sigmaOwned : ([254, 807] : List Wire).toFinset⊆s6Step79EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step79EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step79EarlyControl_sigmaReleaseOwned : ([807] : List Wire).toFinset⊆s6Step79EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step79EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step79EarlyControl_sigmaRelease : s6Step79EarlyControlHistoryArena.release {807} (fun _ => false)=some s6Step79EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step79EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step79EarlyControlHistoryArena s6Step79EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [807] rfl rfl
    decide +kernel

private theorem s6Step79EarlyControl_sigma : compileHmrSigmaDropLog s6Step79EarlyControlHistoryArena false 0 0 254 807 []=some s6Step79EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step79EarlyControl_sigmaOwned⟩
  · exact s6Step79EarlyControl_sigmaRelease

private theorem s6Step79EarlyControl_zeroBorrow : s6Step79EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step79EarlyControlLog.zeroWork=some s6Step79EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step79EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step79EarlyControlArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step79EarlyControlArena s6Step79EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step79EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step79EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step79EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step79EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step79EarlyControlArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step79EarlyControl_zero : compileHmrEqualityLog s6Step79EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step79EarlyControlLog.zeroWork=some (s6Step79EarlyControlZeroArena,s6Step79EarlyControlLog.zeroWork,s6Step79EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step79EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step79EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step79EarlyControl_logged : s6Step79EarlyControlPlan.Logged s6Step79EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 807 254 253 252 251 860 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step79EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step79EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step79EarlyControl_zero
  · exact s6Step79EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step79EarlyControl_flags
  · exact s6Step79EarlyControl_fit
  · exact s6Step79EarlyControl_history
  · exact s6Step79EarlyControl_sigma
  · exact s6Step79EarlyControl_branch

private theorem s6Step79EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step79EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 807 254 253 252 251 860 30 s6Step79EarlyControlLog=some s6Step79EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step79EarlyControlPlan s6Step79EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 807 254 253 252 251 860 30 s6Step79EarlyControl_logged

private def s6Step79EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484],795⟩

private def s6Step79EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843],776⟩

private def s6Step79EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228],777⟩

private def s6Step79EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853],775⟩

private def s6Step79FrontBank : WindowBank := ⟨s6Step79EntryFRow,s6Step79EntryGRow,s6Step79EntryFvRow,s6Step79EntryGvRow⟩

private def s6Step79Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 855, 795]

private def s6Step79Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 877, 777]

private def s6Step79Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 862, 776]

private def s6Step79Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 775]

private theorem s6Step79Counter_apart : Disjoint s6Step79HeadFvAfter.live s6Step79CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step79HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step79Counter_borrowed : s6Step79HeadFvAfter.checkBorrow 4 s6Step79CounterWork=some s6Step79CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step79HeadFvAfter s6Step79CounterDuring s6Step79CounterWork.toFinset s6Step79Counter_bounded s6Step79Counter_apart rfl

private theorem s6Step79Counter_owned : (807::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step79HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step79HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step79Counter_checked : compileHmrCounterStepLog s6Step79HeadFvAfter true 807 [774, 773, 772, 771, 770, 769] s6Step79CounterWork=some s6Step79CounterDuring := by
  have owned : ∀q∈807::[774, 773, 772, 771, 770, 769],q∈s6Step79HeadFvAfter.live := fun q hq => s6Step79Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step79Counter_borrowed

private def s6Step79EntryFAfter : Arena := s6Step79EntryFBefore

private theorem s6Step79EntryBank_incomingDistinct : ([s6Step79EntryFRow,s6Step79EntryGRow,s6Step79EntryFvRow,s6Step79EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step79EntryF_Incoming : rowsOwned s6Step79EntryFBefore [s6Step79EntryFRow,s6Step79EntryGRow,s6Step79EntryFvRow,s6Step79EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step79EntryFRow,s6Step79EntryGRow,s6Step79EntryFvRow,s6Step79EntryGvRow] 0 s6Step79EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step79EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step79EntryBank_outgoingOwned : rowsOwned s6Step79EntryGvAfter [s6Step79EntryFOut,s6Step79EntryGOut,s6Step79EntryFvOut,s6Step79EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step79EntryGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step79EntryF_Outgoing : rowsOwned s6Step79EntryGvAfter [s6Step79EntryFOut,s6Step79EntryGOut,s6Step79EntryFvOut,s6Step79EntryGvOut] :=
  hmrRows_owned_drop s6Step79EntryGvAfter [s6Step79EntryFOut,s6Step79EntryGOut,s6Step79EntryFvOut,s6Step79EntryGvOut] 0 s6Step79EntryBank_outgoingOwned

private theorem s6Step79EntryF_distinct : (s6Step79EntryFRow.sign::s6Step79EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step79EntryF_owned : (s6Step79EntryFRow.sign::s6Step79EntryFRow.payload).toFinset⊆s6Step79EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step79EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step79EntryF_reserved : s6Step79EntryFBefore.reserve s6Step79EntryFFresh.toFinset=some s6Step79EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step79EntryFFresh,arenaWires]
  · norm_num [s6Step79EntryFBefore,s6Step79EntryFFresh,arenaWires]
  · simp only [s6Step79EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step79EntryF_checked : planRowResizeLog s6Step79EntryFBefore s6Step79EntryFRow 229 s6Step79EntryFFresh=
    some (s6Step79EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484],795⟩,growRow 795 s6Step79EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step79EntryFBefore s6Step79EntryFAfter s6Step79EntryFRow 229 s6Step79EntryFFresh
    s6Step79EntryF_distinct s6Step79EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step79EntryF_reserved
  have rowEq : WindowRow.mk (s6Step79EntryFRow.payload++s6Step79EntryFFresh) s6Step79EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step79EntryFvAfter : Arena := s6Step79EntryFBefore

private def s6Step79EntryFvBefore : Arena := s6Step79EntryFBefore

private theorem s6Step79EntryFv_Incoming : rowsOwned s6Step79EntryFvBefore [s6Step79EntryFvRow,s6Step79EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step79EntryFRow,s6Step79EntryGRow,s6Step79EntryFvRow,s6Step79EntryGvRow] 2 s6Step79EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step79EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step79EntryFv_Outgoing : rowsOwned s6Step79EntryGvAfter [s6Step79EntryFvOut,s6Step79EntryGvOut] :=
  hmrRows_owned_drop s6Step79EntryGvAfter [s6Step79EntryFOut,s6Step79EntryGOut,s6Step79EntryFvOut,s6Step79EntryGvOut] 2 s6Step79EntryBank_outgoingOwned

private theorem s6Step79EntryFv_distinct : (s6Step79EntryFvRow.sign::s6Step79EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step79EntryFv_owned : (s6Step79EntryFvRow.sign::s6Step79EntryFvRow.payload).toFinset⊆s6Step79EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step79EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step79EntryFv_reserved : s6Step79EntryFvBefore.reserve s6Step79EntryFvFresh.toFinset=some s6Step79EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step79EntryFvFresh,arenaWires]
  · norm_num [s6Step79EntryFvBefore,s6Step79EntryFBefore,s6Step79EntryFvFresh,arenaWires]
  · simp only [s6Step79EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step79EntryFv_checked : planRowResizeLog s6Step79EntryFvBefore s6Step79EntryFvRow 53 s6Step79EntryFvFresh=
    some (s6Step79EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843],776⟩,growRow 776 s6Step79EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step79EntryFvBefore s6Step79EntryFvAfter s6Step79EntryFvRow 53 s6Step79EntryFvFresh
    s6Step79EntryFv_distinct s6Step79EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step79EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step79EntryFvRow.payload++s6Step79EntryFvFresh) s6Step79EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step79EntryGAfter : Arena := s6Step79EntryFBefore

private def s6Step79EntryGBefore : Arena := s6Step79EntryFBefore

private theorem s6Step79EntryG_Incoming : rowsOwned s6Step79EntryGBefore [s6Step79EntryGRow,s6Step79EntryFvRow,s6Step79EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step79EntryFRow,s6Step79EntryGRow,s6Step79EntryFvRow,s6Step79EntryGvRow] 1 s6Step79EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step79EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step79EntryG_Outgoing : rowsOwned s6Step79EntryGvAfter [s6Step79EntryGOut,s6Step79EntryFvOut,s6Step79EntryGvOut] :=
  hmrRows_owned_drop s6Step79EntryGvAfter [s6Step79EntryFOut,s6Step79EntryGOut,s6Step79EntryFvOut,s6Step79EntryGvOut] 1 s6Step79EntryBank_outgoingOwned

private theorem s6Step79EntryG_distinct : (s6Step79EntryGRow.sign::s6Step79EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step79EntryG_owned : (s6Step79EntryGRow.sign::s6Step79EntryGRow.payload).toFinset⊆s6Step79EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step79EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step79EntryG_reserved : s6Step79EntryGBefore.reserve s6Step79EntryGFresh.toFinset=some s6Step79EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step79EntryGFresh,arenaWires]
  · norm_num [s6Step79EntryGBefore,s6Step79EntryFBefore,s6Step79EntryGFresh,arenaWires]
  · simp only [s6Step79EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step79EntryG_checked : planRowResizeLog s6Step79EntryGBefore s6Step79EntryGRow 229 s6Step79EntryGFresh=
    some (s6Step79EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228],777⟩,growRow 777 s6Step79EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step79EntryGBefore s6Step79EntryGAfter s6Step79EntryGRow 229 s6Step79EntryGFresh
    s6Step79EntryG_distinct s6Step79EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step79EntryG_reserved
  have rowEq : WindowRow.mk (s6Step79EntryGRow.payload++s6Step79EntryGFresh) s6Step79EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step79EntryGvBefore : Arena := s6Step79EntryFBefore

private theorem s6Step79EntryGv_Incoming : rowsOwned s6Step79EntryGvBefore [s6Step79EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step79EntryFRow,s6Step79EntryGRow,s6Step79EntryFvRow,s6Step79EntryGvRow] 3 s6Step79EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step79EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step79EntryGv_Outgoing : rowsOwned s6Step79EntryGvAfter [s6Step79EntryGvOut] :=
  hmrRows_owned_drop s6Step79EntryGvAfter [s6Step79EntryFOut,s6Step79EntryGOut,s6Step79EntryFvOut,s6Step79EntryGvOut] 3 s6Step79EntryBank_outgoingOwned

private theorem s6Step79EntryGv_distinct : (s6Step79EntryGvRow.sign::s6Step79EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step79EntryGv_owned : (s6Step79EntryGvRow.sign::s6Step79EntryGvRow.payload).toFinset⊆s6Step79EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step79EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step79EntryGv_reserved : s6Step79EntryGvBefore.reserve s6Step79EntryGvFresh.toFinset=some s6Step79EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step79EntryGvFresh,arenaWires]
  · norm_num [s6Step79EntryGvBefore,s6Step79EntryFBefore,s6Step79EntryGvFresh,arenaWires]
  · simp only [s6Step79EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step79EntryGv_checked : planRowResizeLog s6Step79EntryGvBefore s6Step79EntryGvRow 53 s6Step79EntryGvFresh=
    some (s6Step79EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853],775⟩,growRow 775 s6Step79EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step79EntryGvBefore s6Step79EntryGvAfter s6Step79EntryGvRow 53 s6Step79EntryGvFresh
    s6Step79EntryGv_distinct s6Step79EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step79EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step79EntryGvRow.payload++s6Step79EntryGvFresh) s6Step79EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step79EntryBank_rows : planWindowRowsLog s6Step79EntryFBefore [(s6Step79EntryFRow,229),(s6Step79EntryGRow,229),(s6Step79EntryFvRow,53),(s6Step79EntryGvRow,53)] [s6Step79EntryFFresh,s6Step79EntryGFresh,s6Step79EntryFvFresh,s6Step79EntryGvFresh]=
    some (s6Step79EntryGvAfter,[s6Step79EntryFOut,s6Step79EntryGOut,s6Step79EntryFvOut,s6Step79EntryGvOut],(growRow 795 s6Step79EntryFFresh ++ (growRow 777 s6Step79EntryGFresh ++ (growRow 776 s6Step79EntryFvFresh ++ (growRow 775 s6Step79EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step79EntryGvAfter [] []=some (s6Step79EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step79EntryGvBefore s6Step79EntryGvAfter s6Step79EntryGvAfter
    s6Step79EntryGvRow s6Step79EntryGvOut 53 s6Step79EntryGvFresh [] [] []
    (growRow 775 s6Step79EntryGvFresh) ([]) s6Step79EntryGv_Incoming s6Step79EntryGv_checked h4 s6Step79EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step79EntryFvBefore s6Step79EntryFvAfter s6Step79EntryGvAfter
    s6Step79EntryFvRow s6Step79EntryFvOut 53 s6Step79EntryFvFresh [(s6Step79EntryGvRow,53)] [s6Step79EntryGvFresh] [s6Step79EntryGvOut]
    (growRow 776 s6Step79EntryFvFresh) ((growRow 775 s6Step79EntryGvFresh ++ [])) s6Step79EntryFv_Incoming s6Step79EntryFv_checked h3 s6Step79EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step79EntryGBefore s6Step79EntryGAfter s6Step79EntryGvAfter
    s6Step79EntryGRow s6Step79EntryGOut 229 s6Step79EntryGFresh [(s6Step79EntryFvRow,53),(s6Step79EntryGvRow,53)] [s6Step79EntryFvFresh,s6Step79EntryGvFresh] [s6Step79EntryFvOut,s6Step79EntryGvOut]
    (growRow 777 s6Step79EntryGFresh) ((growRow 776 s6Step79EntryFvFresh ++ (growRow 775 s6Step79EntryGvFresh ++ []))) s6Step79EntryG_Incoming s6Step79EntryG_checked h2 s6Step79EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step79EntryFBefore s6Step79EntryFAfter s6Step79EntryGvAfter
    s6Step79EntryFRow s6Step79EntryFOut 229 s6Step79EntryFFresh [(s6Step79EntryGRow,229),(s6Step79EntryFvRow,53),(s6Step79EntryGvRow,53)] [s6Step79EntryGFresh,s6Step79EntryFvFresh,s6Step79EntryGvFresh] [s6Step79EntryGOut,s6Step79EntryFvOut,s6Step79EntryGvOut]
    (growRow 795 s6Step79EntryFFresh) ((growRow 777 s6Step79EntryGFresh ++ (growRow 776 s6Step79EntryFvFresh ++ (growRow 775 s6Step79EntryGvFresh ++ [])))) s6Step79EntryF_Incoming s6Step79EntryF_checked h1 s6Step79EntryF_Outgoing
  exact h0

private theorem s6Step79EntryBank_checked : compileHmrBankResizeLog .entry s6Step79EntryFBefore ⟨s6Step79EntryFRow,s6Step79EntryGRow,s6Step79EntryFvRow,s6Step79EntryGvRow⟩ ⟨229,229,53,53⟩ [s6Step79EntryFFresh,s6Step79EntryGFresh,s6Step79EntryFvFresh,s6Step79EntryGvFresh]=
    some (s6Step79EntryGvAfter,⟨s6Step79EntryFOut,s6Step79EntryGOut,s6Step79EntryFvOut,s6Step79EntryGvOut⟩,(growRow 795 s6Step79EntryFFresh ++ (growRow 777 s6Step79EntryGFresh ++ (growRow 776 s6Step79EntryFvFresh ++ (growRow 775 s6Step79EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step79EntryBank_rows]
  rfl

private def s6Step79ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,228),(229,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step79ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,228),(229,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step79ExitFBefore : Arena := s6Step79ExitGAfter

private def s6Step79ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 855],795⟩

private def s6Step79ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 862],776⟩

private def s6Step79ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 877],777⟩

private def s6Step79ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869],775⟩

private theorem s6Step79ExitBank_incomingDistinct : ([s6Step79ExitGRow,s6Step79ExitFRow,s6Step79ExitFvRow,s6Step79ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step79ExitF_Incoming : rowsOwned s6Step79ExitFBefore [s6Step79ExitFRow,s6Step79ExitFvRow,s6Step79ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step79ExitGRow,s6Step79ExitFRow,s6Step79ExitFvRow,s6Step79ExitGvRow] 1 s6Step79ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step79ExitFBefore (fun q => ([(0,228),(229,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step79ExitBank_outgoingOwned : rowsOwned s6Step79ExitGvAfter [s6Step79ExitGOut,s6Step79ExitFOut,s6Step79ExitFvOut,s6Step79ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step79ExitGvAfter (fun q => ([(0,228),(229,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step79ExitF_Outgoing : rowsOwned s6Step79ExitGvAfter [s6Step79ExitFOut,s6Step79ExitFvOut,s6Step79ExitGvOut] :=
  hmrRows_owned_drop s6Step79ExitGvAfter [s6Step79ExitGOut,s6Step79ExitFOut,s6Step79ExitFvOut,s6Step79ExitGvOut] 1 s6Step79ExitBank_outgoingOwned

private theorem s6Step79ExitF_distinct : (s6Step79ExitFRow.sign::s6Step79ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step79ExitF_owned : (s6Step79ExitFRow.sign::s6Step79ExitFRow.payload).toFinset⊆s6Step79ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step79ExitFBefore (fun q => ([(0,228),(229,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step79ExitF_retired : s6Step79ExitFBefore.retireSet s6Step79ExitFExtra.toFinset=s6Step79ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step79ExitFBefore s6Step79ExitFAfter s6Step79ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step79ExitFBefore s6Step79ExitFAfter (fun q => ([(0,228),(229,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,228),(229,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step79ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step79ExitF_checked : planRowResizeLog s6Step79ExitFBefore s6Step79ExitFRow 229 []=
    some (s6Step79ExitFAfter,s6Step79ExitFOut,shrinkRow 795 s6Step79ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step79ExitFBefore s6Step79ExitFRow 229 s6Step79ExitF_distinct s6Step79ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step79ExitFRow.payload.take 229) s6Step79ExitFRow.sign=s6Step79ExitFOut := by decide +kernel
  have hi : s6Step79ExitFRow.payload.drop 229=s6Step79ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step79ExitF_retired] at result
  exact result

private def s6Step79ExitFvBefore : Arena := s6Step79ExitFAfter

private theorem s6Step79ExitFv_Incoming : rowsOwned s6Step79ExitFvBefore [s6Step79ExitFvRow,s6Step79ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step79ExitGRow,s6Step79ExitFRow,s6Step79ExitFvRow,s6Step79ExitGvRow] 2 s6Step79ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step79ExitFvBefore (fun q => ([(0,228),(229,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step79ExitFv_Outgoing : rowsOwned s6Step79ExitGvAfter [s6Step79ExitFvOut,s6Step79ExitGvOut] :=
  hmrRows_owned_drop s6Step79ExitGvAfter [s6Step79ExitGOut,s6Step79ExitFOut,s6Step79ExitFvOut,s6Step79ExitGvOut] 2 s6Step79ExitBank_outgoingOwned

private theorem s6Step79ExitFv_distinct : (s6Step79ExitFvRow.sign::s6Step79ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step79ExitFv_owned : (s6Step79ExitFvRow.sign::s6Step79ExitFvRow.payload).toFinset⊆s6Step79ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step79ExitFvBefore (fun q => ([(0,228),(229,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step79ExitFv_retired : s6Step79ExitFvBefore.retireSet s6Step79ExitFvExtra.toFinset=s6Step79ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step79ExitFvBefore s6Step79ExitFvAfter s6Step79ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step79ExitFvBefore s6Step79ExitFvAfter (fun q => ([(0,228),(229,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,228),(229,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step79ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step79ExitFv_checked : planRowResizeLog s6Step79ExitFvBefore s6Step79ExitFvRow 53 []=
    some (s6Step79ExitFvAfter,s6Step79ExitFvOut,shrinkRow 776 s6Step79ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step79ExitFvBefore s6Step79ExitFvRow 53 s6Step79ExitFv_distinct s6Step79ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step79ExitFvRow.payload.take 53) s6Step79ExitFvRow.sign=s6Step79ExitFvOut := by decide +kernel
  have hi : s6Step79ExitFvRow.payload.drop 53=s6Step79ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step79ExitFv_retired] at result
  exact result

private def s6Step79ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step79ExitG_Incoming : rowsOwned s6Step79ExitGBefore [s6Step79ExitGRow,s6Step79ExitFRow,s6Step79ExitFvRow,s6Step79ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step79ExitGRow,s6Step79ExitFRow,s6Step79ExitFvRow,s6Step79ExitGvRow] 0 s6Step79ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step79ExitGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step79ExitG_Outgoing : rowsOwned s6Step79ExitGvAfter [s6Step79ExitGOut,s6Step79ExitFOut,s6Step79ExitFvOut,s6Step79ExitGvOut] :=
  hmrRows_owned_drop s6Step79ExitGvAfter [s6Step79ExitGOut,s6Step79ExitFOut,s6Step79ExitFvOut,s6Step79ExitGvOut] 0 s6Step79ExitBank_outgoingOwned

private theorem s6Step79ExitG_distinct : (s6Step79ExitGRow.sign::s6Step79ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step79ExitG_owned : (s6Step79ExitGRow.sign::s6Step79ExitGRow.payload).toFinset⊆s6Step79ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step79ExitGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step79ExitG_retired : s6Step79ExitGBefore.retireSet s6Step79ExitGExtra.toFinset=s6Step79ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step79ExitGBefore s6Step79ExitGAfter s6Step79ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step79ExitGBefore s6Step79ExitGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,228),(229,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step79ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step79ExitG_checked : planRowResizeLog s6Step79ExitGBefore s6Step79ExitGRow 228 []=
    some (s6Step79ExitGAfter,s6Step79ExitGOut,shrinkRow 777 s6Step79ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step79ExitGBefore s6Step79ExitGRow 228 s6Step79ExitG_distinct s6Step79ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step79ExitGRow.payload.take 228) s6Step79ExitGRow.sign=s6Step79ExitGOut := by decide +kernel
  have hi : s6Step79ExitGRow.payload.drop 228=s6Step79ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step79ExitG_retired] at result
  exact result

private def s6Step79ExitGvBefore : Arena := s6Step79ExitFvAfter

private theorem s6Step79ExitGv_Incoming : rowsOwned s6Step79ExitGvBefore [s6Step79ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step79ExitGRow,s6Step79ExitFRow,s6Step79ExitFvRow,s6Step79ExitGvRow] 3 s6Step79ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step79ExitGvBefore (fun q => ([(0,228),(229,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step79ExitGv_Outgoing : rowsOwned s6Step79ExitGvAfter [s6Step79ExitGvOut] :=
  hmrRows_owned_drop s6Step79ExitGvAfter [s6Step79ExitGOut,s6Step79ExitFOut,s6Step79ExitFvOut,s6Step79ExitGvOut] 3 s6Step79ExitBank_outgoingOwned

private theorem s6Step79ExitGv_distinct : (s6Step79ExitGvRow.sign::s6Step79ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step79ExitGv_owned : (s6Step79ExitGvRow.sign::s6Step79ExitGvRow.payload).toFinset⊆s6Step79ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step79ExitGvBefore (fun q => ([(0,228),(229,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step79ExitGv_reserved : s6Step79ExitGvBefore.reserve (∅ : Finset Wire)=some s6Step79ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step79ExitGv_checked : planRowResizeLog s6Step79ExitGvBefore s6Step79ExitGvRow 54 []=
    some (s6Step79ExitGvAfter,s6Step79ExitGvOut,growRow 775 []) := by
  have result := planRowResizeLog_of_growth s6Step79ExitGvBefore s6Step79ExitGvAfter s6Step79ExitGvRow 54 []
    s6Step79ExitGv_distinct s6Step79ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step79ExitGv_reserved
  have rowEq : WindowRow.mk (s6Step79ExitGvRow.payload++[]) s6Step79ExitGvRow.sign=s6Step79ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step79ExitBank_rows : planWindowRowsLog s6Step79ExitGBefore [(s6Step79ExitGRow,228),(s6Step79ExitFRow,229),(s6Step79ExitFvRow,53),(s6Step79ExitGvRow,54)] [[],[],[],[]]=
    some (s6Step79ExitGvAfter,[s6Step79ExitGOut,s6Step79ExitFOut,s6Step79ExitFvOut,s6Step79ExitGvOut],(shrinkRow 777 s6Step79ExitGExtra ++ (shrinkRow 795 s6Step79ExitFExtra ++ (shrinkRow 776 s6Step79ExitFvExtra ++ (growRow 775 [] ++ []))))) := by
  have h4 : planWindowRowsLog s6Step79ExitGvAfter [] []=some (s6Step79ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step79ExitGvBefore s6Step79ExitGvAfter s6Step79ExitGvAfter
    s6Step79ExitGvRow s6Step79ExitGvOut 54 [] [] [] []
    (growRow 775 []) ([]) s6Step79ExitGv_Incoming s6Step79ExitGv_checked h4 s6Step79ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step79ExitFvBefore s6Step79ExitFvAfter s6Step79ExitGvAfter
    s6Step79ExitFvRow s6Step79ExitFvOut 53 [] [(s6Step79ExitGvRow,54)] [[]] [s6Step79ExitGvOut]
    (shrinkRow 776 s6Step79ExitFvExtra) ((growRow 775 [] ++ [])) s6Step79ExitFv_Incoming s6Step79ExitFv_checked h3 s6Step79ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step79ExitFBefore s6Step79ExitFAfter s6Step79ExitGvAfter
    s6Step79ExitFRow s6Step79ExitFOut 229 [] [(s6Step79ExitFvRow,53),(s6Step79ExitGvRow,54)] [[],[]] [s6Step79ExitFvOut,s6Step79ExitGvOut]
    (shrinkRow 795 s6Step79ExitFExtra) ((shrinkRow 776 s6Step79ExitFvExtra ++ (growRow 775 [] ++ []))) s6Step79ExitF_Incoming s6Step79ExitF_checked h2 s6Step79ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step79ExitGBefore s6Step79ExitGAfter s6Step79ExitGvAfter
    s6Step79ExitGRow s6Step79ExitGOut 228 [] [(s6Step79ExitFRow,229),(s6Step79ExitFvRow,53),(s6Step79ExitGvRow,54)] [[],[],[]] [s6Step79ExitFOut,s6Step79ExitFvOut,s6Step79ExitGvOut]
    (shrinkRow 777 s6Step79ExitGExtra) ((shrinkRow 795 s6Step79ExitFExtra ++ (shrinkRow 776 s6Step79ExitFvExtra ++ (growRow 775 [] ++ [])))) s6Step79ExitG_Incoming s6Step79ExitG_checked h1 s6Step79ExitG_Outgoing
  exact h0

private theorem s6Step79ExitBank_checked : compileHmrBankResizeLog .exit s6Step79ExitGBefore ⟨s6Step79ExitFRow,s6Step79ExitGRow,s6Step79ExitFvRow,s6Step79ExitGvRow⟩ ⟨229,228,53,54⟩ [[],[],[],[]]=
    some (s6Step79ExitGvAfter,⟨s6Step79ExitFOut,s6Step79ExitGOut,s6Step79ExitFvOut,s6Step79ExitGvOut⟩,(shrinkRow 777 s6Step79ExitGExtra ++ (shrinkRow 795 s6Step79ExitFExtra ++ (shrinkRow 776 s6Step79ExitFvExtra ++ (growRow 775 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step79ExitBank_rows]
  rfl

private theorem s6Step79Add0_apart : Disjoint s6Step79Add0Arena.live s6Step79Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step79Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step79Add0_card : s6Step79Add0Arena.live.card=868 := by
  decide +kernel

private theorem s6Step79Add0_borrowed : s6Step79Add0Arena.checkBorrow (hmrHybridCount s6Step79Add0Arena s6Step79Add0B.length) s6Step79Add0Work=some s6Step79Add0During := by
  have len : s6Step79Add0Work.length=hmrHybridCount s6Step79Add0Arena s6Step79Add0B.length := by
    rw [hmrHybridCount,s6Step79Add0_card]
    decide +kernel
  have nd : s6Step79Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step79Add0Arena s6Step79Add0During s6Step79Add0Work.toFinset s6Step79Add0_bounded s6Step79Add0_apart rfl

private theorem s6Step79Add0_distinct : (794::860::780::(s6Step79Add0A++s6Step79Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step79Add0_owned : (794::860::780::(s6Step79Add0A++s6Step79Add0B)).toFinset⊆s6Step79Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step79Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step79Add0_checked : compileHmrHybridCinLog s6Step79Add0Arena 860 794 780 s6Step79Add0A s6Step79Add0B s6Step79Add0Work=some s6Step79Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step79Add0Arena s6Step79Add0During 860 794 780 s6Step79Add0A s6Step79Add0B s6Step79Add0Work
    (by decide +kernel) (by decide +kernel) s6Step79Add0_distinct
    (fun q hq => s6Step79Add0_owned (List.mem_toFinset.mpr hq)) s6Step79Add0_borrowed

private theorem s6Step79Add1_apart : Disjoint s6Step79Add1Arena.live s6Step79Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step79Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step79Add1_card : s6Step79Add1Arena.live.card=868 := by
  decide +kernel

private theorem s6Step79Add1_borrowed : s6Step79Add1Arena.checkBorrow (hmrHybridCount s6Step79Add1Arena s6Step79Add1B.length) s6Step79Add1Work=some s6Step79Add1During := by
  have len : s6Step79Add1Work.length=hmrHybridCount s6Step79Add1Arena s6Step79Add1B.length := by
    rw [hmrHybridCount,s6Step79Add1_card]
    decide +kernel
  have nd : s6Step79Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step79Add1Arena s6Step79Add1During s6Step79Add1Work.toFinset s6Step79Add1_bounded s6Step79Add1_apart rfl

private theorem s6Step79Add1_distinct : (794::860::780::(s6Step79Add1A++s6Step79Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step79Add1_owned : (794::860::780::(s6Step79Add1A++s6Step79Add1B)).toFinset⊆s6Step79Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step79Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step79Add1_checked : compileHmrHybridCinLog s6Step79Add1Arena 860 794 780 s6Step79Add1A s6Step79Add1B s6Step79Add1Work=some s6Step79Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step79Add1Arena s6Step79Add1During 860 794 780 s6Step79Add1A s6Step79Add1B s6Step79Add1Work
    (by decide +kernel) (by decide +kernel) s6Step79Add1_distinct
    (fun q hq => s6Step79Add1_owned (List.mem_toFinset.mpr hq)) s6Step79Add1_borrowed

private theorem s6Step79F4_apart : Disjoint (s6Step79Add0A++s6Step79Add0B).toFinset (s6Step79Add1A++s6Step79Add1B).toFinset := by
  have nd : ((s6Step79Add0A++s6Step79Add0B)++(s6Step79Add1A++s6Step79Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step79F4_carry : s6Step79F4FlagArena.checkBorrow 1 [780]=some s6Step79Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step79F4FlagArena,s6Step79HeadFvAfter,arenaWires]
  · change s6Step79Add0Arena.live=(s6Step79HeadFvAfter.live∪{794})∪{780}
    apply hmrArena_union_pair_of_filter_check s6Step79HeadFvAfter s6Step79Add0Arena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 794 780 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step79F4_distinct : (807::860::794::780::((s6Step79Add0A++s6Step79Add1A)++(s6Step79Add0B++s6Step79Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step79F4_flag : s6Step79HeadFvAfter.checkBorrow 1 [794]=some s6Step79F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step79HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step79F4_owned : (807::860::((s6Step79Add0A++s6Step79Add1A)++(s6Step79Add0B++s6Step79Add1B))).toFinset⊆s6Step79HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step79HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step79F4_checked : compileHmrHybridF4Log s6Step79HeadFvAfter 807 860 s6Step79Add0A s6Step79Add0B s6Step79Add1A s6Step79Add1B [794] [780] s6Step79Add0Work s6Step79Add1Work=some s6Step79F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step79HeadFvAfter s6Step79F4FlagArena s6Step79Add0Arena s6Step79Add0During s6Step79Add1During 807 860
    s6Step79Add0A s6Step79Add0B s6Step79Add1A s6Step79Add1B [794] [780] s6Step79Add0Work s6Step79Add1Work
    (fun q hq => s6Step79F4_owned (List.mem_toFinset.mpr hq)) s6Step79F4_flag s6Step79F4_carry
    s6Step79F4_distinct s6Step79F4_apart s6Step79Add0_checked s6Step79Add1_checked

private theorem s6Step79Front_branch : s6Step79FrontSigmaArena.checkBorrow 1 [860]=some s6Step79HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step79FrontSigmaArena,s6Step79EntryGvAfter,s6Step79EntryFBefore,arenaWires]
  · change s6Step79HeadGBefore.live=(s6Step79EntryGvAfter.live∪{807})∪{860}
    apply hmrArena_union_pair_of_filter_check s6Step79EntryGvAfter s6Step79HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 807 860 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step79Front_entry : HmrFrontEntryValid s6Step79EntryFBefore s6Step79FrontBank 229 53 ⟨229,228,53,54⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step79FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step79EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step79EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step79FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step79Front_sigma : s6Step79EntryGvAfter.checkBorrow 1 [807]=some s6Step79FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step79EntryGvAfter,s6Step79EntryFBefore,arenaWires]
  · rfl

private def s6Step79HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,862),(863,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step79HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step79HeadFBefore : Arena := s6Step79HeadGAfter

private def s6Step79HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484],795⟩

private def s6Step79HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843],776⟩

private def s6Step79HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228],777⟩

private def s6Step79HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853],775⟩

private theorem s6Step79HeadBank_incomingDistinct : ([s6Step79HeadGRow,s6Step79HeadFRow,s6Step79HeadGvRow,s6Step79HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step79HeadF_Incoming : rowsOwned s6Step79HeadFBefore [s6Step79HeadFRow,s6Step79HeadGvRow,s6Step79HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step79HeadGRow,s6Step79HeadFRow,s6Step79HeadGvRow,s6Step79HeadFvRow] 1 s6Step79HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step79HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step79HeadBank_outgoingOwned : rowsOwned s6Step79HeadFvAfter [s6Step79HeadGOut,s6Step79HeadFOut,s6Step79HeadGvOut,s6Step79HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step79HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step79HeadF_Outgoing : rowsOwned s6Step79HeadFvAfter [s6Step79HeadFOut,s6Step79HeadGvOut,s6Step79HeadFvOut] :=
  hmrRows_owned_drop s6Step79HeadFvAfter [s6Step79HeadGOut,s6Step79HeadFOut,s6Step79HeadGvOut,s6Step79HeadFvOut] 1 s6Step79HeadBank_outgoingOwned

private theorem s6Step79HeadF_distinct : (s6Step79HeadFRow.sign::s6Step79HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step79HeadF_owned : (s6Step79HeadFRow.sign::s6Step79HeadFRow.payload).toFinset⊆s6Step79HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step79HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step79HeadF_reserved : s6Step79HeadFBefore.reserve s6Step79HeadFFresh.toFinset=some s6Step79HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step79HeadFFresh,arenaWires]
  · norm_num [s6Step79HeadFBefore,s6Step79HeadGAfter,s6Step79HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step79HeadFBefore s6Step79HeadFAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,862),(863,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step79HeadFFresh rfl rfl
    · norm_num [s6Step79HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step79HeadF_checked : planRowResizeLog s6Step79HeadFBefore s6Step79HeadFRow 230 s6Step79HeadFFresh=
    some (s6Step79HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 855],795⟩,growRow 795 s6Step79HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step79HeadFBefore s6Step79HeadFAfter s6Step79HeadFRow 230 s6Step79HeadFFresh
    s6Step79HeadF_distinct s6Step79HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step79HeadF_reserved
  have rowEq : WindowRow.mk (s6Step79HeadFRow.payload++s6Step79HeadFFresh) s6Step79HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 855],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step79HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,862),(863,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step79HeadFvBefore : Arena := s6Step79HeadGvAfter

private theorem s6Step79HeadFv_Incoming : rowsOwned s6Step79HeadFvBefore [s6Step79HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step79HeadGRow,s6Step79HeadFRow,s6Step79HeadGvRow,s6Step79HeadFvRow] 3 s6Step79HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step79HeadFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,862),(863,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step79HeadFv_Outgoing : rowsOwned s6Step79HeadFvAfter [s6Step79HeadFvOut] :=
  hmrRows_owned_drop s6Step79HeadFvAfter [s6Step79HeadGOut,s6Step79HeadFOut,s6Step79HeadGvOut,s6Step79HeadFvOut] 3 s6Step79HeadBank_outgoingOwned

private theorem s6Step79HeadFv_distinct : (s6Step79HeadFvRow.sign::s6Step79HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step79HeadFv_owned : (s6Step79HeadFvRow.sign::s6Step79HeadFvRow.payload).toFinset⊆s6Step79HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step79HeadFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,862),(863,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step79HeadFv_reserved : s6Step79HeadFvBefore.reserve s6Step79HeadFvFresh.toFinset=some s6Step79HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step79HeadFvFresh,arenaWires]
  · norm_num [s6Step79HeadFvBefore,s6Step79HeadGvAfter,s6Step79HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step79HeadFvBefore s6Step79HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,862),(863,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step79HeadFvFresh rfl rfl
    · norm_num [s6Step79HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step79HeadFv_checked : planRowResizeLog s6Step79HeadFvBefore s6Step79HeadFvRow 54 s6Step79HeadFvFresh=
    some (s6Step79HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 862],776⟩,growRow 776 s6Step79HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step79HeadFvBefore s6Step79HeadFvAfter s6Step79HeadFvRow 54 s6Step79HeadFvFresh
    s6Step79HeadFv_distinct s6Step79HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step79HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step79HeadFvRow.payload++s6Step79HeadFvFresh) s6Step79HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 862],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step79HeadG_Incoming : rowsOwned s6Step79HeadGBefore [s6Step79HeadGRow,s6Step79HeadFRow,s6Step79HeadGvRow,s6Step79HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step79HeadGRow,s6Step79HeadFRow,s6Step79HeadGvRow,s6Step79HeadFvRow] 0 s6Step79HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step79HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step79HeadG_Outgoing : rowsOwned s6Step79HeadFvAfter [s6Step79HeadGOut,s6Step79HeadFOut,s6Step79HeadGvOut,s6Step79HeadFvOut] :=
  hmrRows_owned_drop s6Step79HeadFvAfter [s6Step79HeadGOut,s6Step79HeadFOut,s6Step79HeadGvOut,s6Step79HeadFvOut] 0 s6Step79HeadBank_outgoingOwned

private theorem s6Step79HeadG_distinct : (s6Step79HeadGRow.sign::s6Step79HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step79HeadG_owned : (s6Step79HeadGRow.sign::s6Step79HeadGRow.payload).toFinset⊆s6Step79HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step79HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step79HeadG_reserved : s6Step79HeadGBefore.reserve s6Step79HeadGFresh.toFinset=some s6Step79HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step79HeadGFresh,arenaWires]
  · norm_num [s6Step79HeadGBefore,s6Step79HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step79HeadGBefore s6Step79HeadGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step79HeadGFresh rfl rfl
    · norm_num [s6Step79HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step79HeadG_checked : planRowResizeLog s6Step79HeadGBefore s6Step79HeadGRow 230 s6Step79HeadGFresh=
    some (s6Step79HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 877],777⟩,growRow 777 s6Step79HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step79HeadGBefore s6Step79HeadGAfter s6Step79HeadGRow 230 s6Step79HeadGFresh
    s6Step79HeadG_distinct s6Step79HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step79HeadG_reserved
  have rowEq : WindowRow.mk (s6Step79HeadGRow.payload++s6Step79HeadGFresh) s6Step79HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 877],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step79HeadGvBefore : Arena := s6Step79HeadFAfter

private theorem s6Step79HeadGv_Incoming : rowsOwned s6Step79HeadGvBefore [s6Step79HeadGvRow,s6Step79HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step79HeadGRow,s6Step79HeadFRow,s6Step79HeadGvRow,s6Step79HeadFvRow] 2 s6Step79HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step79HeadGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,862),(863,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step79HeadGv_Outgoing : rowsOwned s6Step79HeadFvAfter [s6Step79HeadGvOut,s6Step79HeadFvOut] :=
  hmrRows_owned_drop s6Step79HeadFvAfter [s6Step79HeadGOut,s6Step79HeadFOut,s6Step79HeadGvOut,s6Step79HeadFvOut] 2 s6Step79HeadBank_outgoingOwned

private theorem s6Step79HeadGv_distinct : (s6Step79HeadGvRow.sign::s6Step79HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step79HeadGv_owned : (s6Step79HeadGvRow.sign::s6Step79HeadGvRow.payload).toFinset⊆s6Step79HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step79HeadGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,862),(863,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step79HeadGv_reserved : s6Step79HeadGvBefore.reserve s6Step79HeadGvFresh.toFinset=some s6Step79HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step79HeadGvFresh,arenaWires]
  · norm_num [s6Step79HeadGvBefore,s6Step79HeadFAfter,s6Step79HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step79HeadGvBefore s6Step79HeadGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,862),(863,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,862),(863,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step79HeadGvFresh rfl rfl
    · norm_num [s6Step79HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step79HeadGv_checked : planRowResizeLog s6Step79HeadGvBefore s6Step79HeadGvRow 54 s6Step79HeadGvFresh=
    some (s6Step79HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869],775⟩,growRow 775 s6Step79HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step79HeadGvBefore s6Step79HeadGvAfter s6Step79HeadGvRow 54 s6Step79HeadGvFresh
    s6Step79HeadGv_distinct s6Step79HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step79HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step79HeadGvRow.payload++s6Step79HeadGvFresh) s6Step79HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step79HeadBank_rows : planWindowRowsLog s6Step79HeadGBefore [(s6Step79HeadGRow,230),(s6Step79HeadFRow,230),(s6Step79HeadGvRow,54),(s6Step79HeadFvRow,54)] [s6Step79HeadGFresh,s6Step79HeadFFresh,s6Step79HeadGvFresh,s6Step79HeadFvFresh]=
    some (s6Step79HeadFvAfter,[s6Step79HeadGOut,s6Step79HeadFOut,s6Step79HeadGvOut,s6Step79HeadFvOut],(growRow 777 s6Step79HeadGFresh ++ (growRow 795 s6Step79HeadFFresh ++ (growRow 775 s6Step79HeadGvFresh ++ (growRow 776 s6Step79HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step79HeadFvAfter [] []=some (s6Step79HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step79HeadFvBefore s6Step79HeadFvAfter s6Step79HeadFvAfter
    s6Step79HeadFvRow s6Step79HeadFvOut 54 s6Step79HeadFvFresh [] [] []
    (growRow 776 s6Step79HeadFvFresh) ([]) s6Step79HeadFv_Incoming s6Step79HeadFv_checked h4 s6Step79HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step79HeadGvBefore s6Step79HeadGvAfter s6Step79HeadFvAfter
    s6Step79HeadGvRow s6Step79HeadGvOut 54 s6Step79HeadGvFresh [(s6Step79HeadFvRow,54)] [s6Step79HeadFvFresh] [s6Step79HeadFvOut]
    (growRow 775 s6Step79HeadGvFresh) ((growRow 776 s6Step79HeadFvFresh ++ [])) s6Step79HeadGv_Incoming s6Step79HeadGv_checked h3 s6Step79HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step79HeadFBefore s6Step79HeadFAfter s6Step79HeadFvAfter
    s6Step79HeadFRow s6Step79HeadFOut 230 s6Step79HeadFFresh [(s6Step79HeadGvRow,54),(s6Step79HeadFvRow,54)] [s6Step79HeadGvFresh,s6Step79HeadFvFresh] [s6Step79HeadGvOut,s6Step79HeadFvOut]
    (growRow 795 s6Step79HeadFFresh) ((growRow 775 s6Step79HeadGvFresh ++ (growRow 776 s6Step79HeadFvFresh ++ []))) s6Step79HeadF_Incoming s6Step79HeadF_checked h2 s6Step79HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step79HeadGBefore s6Step79HeadGAfter s6Step79HeadFvAfter
    s6Step79HeadGRow s6Step79HeadGOut 230 s6Step79HeadGFresh [(s6Step79HeadFRow,230),(s6Step79HeadGvRow,54),(s6Step79HeadFvRow,54)] [s6Step79HeadFFresh,s6Step79HeadGvFresh,s6Step79HeadFvFresh] [s6Step79HeadFOut,s6Step79HeadGvOut,s6Step79HeadFvOut]
    (growRow 777 s6Step79HeadGFresh) ((growRow 795 s6Step79HeadFFresh ++ (growRow 775 s6Step79HeadGvFresh ++ (growRow 776 s6Step79HeadFvFresh ++ [])))) s6Step79HeadG_Incoming s6Step79HeadG_checked h1 s6Step79HeadG_Outgoing
  exact h0

private theorem s6Step79HeadBank_checked : compileHmrBankResizeLog .headroom s6Step79HeadGBefore ⟨s6Step79HeadFRow,s6Step79HeadGRow,s6Step79HeadFvRow,s6Step79HeadGvRow⟩ ⟨230,230,54,54⟩ [s6Step79HeadGFresh,s6Step79HeadFFresh,s6Step79HeadGvFresh,s6Step79HeadFvFresh]=
    some (s6Step79HeadFvAfter,⟨s6Step79HeadFOut,s6Step79HeadGOut,s6Step79HeadFvOut,s6Step79HeadGvOut⟩,(growRow 777 s6Step79HeadGFresh ++ (growRow 795 s6Step79HeadFFresh ++ (growRow 775 s6Step79HeadGvFresh ++ (growRow 776 s6Step79HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step79HeadBank_rows]
  rfl

private theorem s6Step79Front_checked : compileHmrSourceFrontLog s6Step79EntryFBefore s6Step79FrontBank 229 53 ⟨229,228,53,54⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step79FrontLog=some s6Step79FrontPlan := by
  have pairEq : s6Step79FrontPair=⟨s6Step79HeadFRow,s6Step79HeadGRow,s6Step79HeadFvRow,s6Step79HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step79FrontHead=⟨s6Step79ExitFRow,s6Step79ExitGRow,s6Step79ExitFvRow,s6Step79ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step79Add0A=s6Step79FrontHead.f.wires := by decide +kernel
  have gEq : s6Step79Add0B=s6Step79FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step79Add1A=s6Step79FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step79Add1B=s6Step79FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step79EntryFBefore s6Step79FrontBank 229 53 ⟨229,228,53,54⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step79FrontLog s6Step79FrontPlan
  · exact s6Step79Front_entry
  · exact s6Step79EntryBank_checked
  · exact s6Step79Front_sigma
  · rfl
  · exact s6Step79Front_branch
  · rfl
  · simpa only [s6Step79FrontPlan,pairEq] using s6Step79HeadBank_checked
  · simpa only [s6Step79FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step79F4_checked
  · exact s6Step79Counter_checked
  · rfl
  · simpa only [s6Step79FrontPlan,headEq] using s6Step79ExitBank_checked

private theorem s6Step79Complete_explicit_checked : compileHmrEarlyStepLog s6Step79EntryFBefore s6Step79FrontBank 229 53 ⟨229,228,53,54⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step79CompleteLog=some s6Step79CompletePlan := by
  let Q := s6Step79EarlyControlPlan
  have hq := s6Step79EarlyControl_plan_checked
  have fv1 : s6Step79CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step79CompleteOut.fv.payload[2]?.getD s6Step79CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step79CompleteOut.fv.payload[3]?.getD s6Step79CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step79CompleteOut.fv.payload[4]?.getD s6Step79CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step79EntryFBefore s6Step79EarlyControlArena s6Step79FrontBank 229 53 ⟨229,228,53,54⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step79CompleteLog s6Step79FrontPlan Q
    s6Step79Front_checked s6Step79Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step79Complete_owned s6Step79Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step79EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 807 s6Step79CompleteOut.fv.second (s6Step79CompleteOut.fv.payload[2]?.getD s6Step79CompleteOut.fv.sign) (s6Step79CompleteOut.fv.payload[3]?.getD s6Step79CompleteOut.fv.sign) (s6Step79CompleteOut.fv.payload[4]?.getD s6Step79CompleteOut.fv.sign) 860 30 s6Step79EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep79Arena : Arena := s6Step79EntryFBefore
def s6PrivateStep79Bank : WindowBank := s6Step79FrontBank
def s6PrivateStep79Spec : HmrSourceWalkStepLog := ⟨229,53,⟨229,228,53,54⟩,30,.early s6Step79CompleteLog⟩
def s6PrivateStep79Plan : HmrSourceStepPlan := .early s6Step79CompletePlan
theorem s6PrivateStep79_source : s6PrivateStep79Spec=s6ObservedLogs64[15] := rfl
theorem s6PrivateStep79_checked : compileHmrSourceStepLog s6PrivateStep79Arena s6PrivateStep79Bank
    s6PrivateStep79Spec.fgWidth s6PrivateStep79Spec.vWidth s6PrivateStep79Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902]
    6 498 79 s6PrivateStep79Spec.need none s6PrivateStep79Spec.log=some s6PrivateStep79Plan := by
  change compileHmrSourceStepLog s6Step79EntryFBefore s6Step79FrontBank 229 53 ⟨229,228,53,54⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 6 498 79 30 none (.early s6Step79CompleteLog)=some (.early s6Step79CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 79<498)]
  rw [s6Step79Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
