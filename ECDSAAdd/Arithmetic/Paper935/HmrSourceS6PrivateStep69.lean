import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep67
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

private def s6Step69CompleteMoves : List (Wire × Wire) := [(898,489)]

private def s6Step69EarlyControlLog : HmrEarlyControlLog := ⟨[898, 822, 838, 854, 821],[869],[843],[780, 855, 803, 922, 879, 784],[]⟩

private def s6Step69FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [854], [], []],[[821], [838], [822], [830]],[[], [], [], []]⟩,[877],[848],[869],[843],[780, 855, 803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[780, 855, 803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816],[869, 843, 780, 855]⟩

private def s6Step69CompleteLog : HmrEarlyStepLog := ⟨s6Step69FrontLog,s6Step69CompleteMoves,s6Step69EarlyControlLog⟩

private def s6Step69ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488],795⟩

private def s6Step69ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830],776⟩

private def s6Step69ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232],777⟩

private def s6Step69ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814],775⟩

private def s6Step69FrontOut : WindowBank := ⟨s6Step69ExitFOut,s6Step69ExitGOut,s6Step69ExitFvOut,s6Step69ExitGvOut⟩

private def s6Step69CompleteOut : WindowBank := s6Step69FrontOut.repacked s6Step69CompleteMoves

private def s6Step69EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step69EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step69EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step69EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step69EarlyControlPositiveArena,[869],s6Step69EarlyControlEqualityArena,[843],⟨⟨877,false⟩,[⟨⟨869,false⟩,843⟩]⟩⟩

private def s6Step69EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step69EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step69EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step69EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step69EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step69EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step69EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,898⟩,⟨⟨772,false⟩,822⟩,⟨⟨771,false⟩,838⟩,⟨⟨770,false⟩,854⟩,⟨⟨769,false⟩,821⟩]⟩

private def s6Step69EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step69EarlyControlZeroArena,s6Step69EarlyControlZeroPlan,s6Step69EarlyControlClassPlan,s6Step69EarlyControlFlagArena,s6Step69EarlyControlFittedArena,s6Step69EarlyControlHistoryArena,s6Step69EarlyControlSigmaArena,s6Step69EarlyControlOutputArena,s6Step69EarlyControlLog⟩

private def s6Step69CounterWork : List Wire := [869, 843, 780, 855]

private theorem s6Step69Counter_bounded : s6Step69CounterWork.toFinset⊆arenaWires := by norm_num [s6Step69CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step69HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step69CounterDuring : Arena := ⟨s6Step69HeadFvAfter.live∪s6Step69CounterWork.toFinset,Finset.union_subset s6Step69HeadFvAfter.bounded s6Step69Counter_bounded⟩

private def s6Step69EntryFFresh : List Wire := []

private def s6Step69EntryFvFresh : List Wire := []

private def s6Step69EntryGFresh : List Wire := [854]

private def s6Step69EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step69EntryGvAfter : Arena := s6Step69EntryGAfter

private def s6Step69EntryGvFresh : List Wire := []

private def s6Step69ExitFExtra : List Wire := [489, 838]

private def s6Step69ExitGExtra : List Wire := [854, 821]

private def s6Step69ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,489),(490,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step69ExitGvExtra : List Wire := [822]

private def s6Step69Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step69Add0Work : List Wire := [780, 855, 803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step69Add0_bounded : s6Step69Add0Work.toFinset⊆arenaWires := by
  have h : s6Step69Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step69Add0During : Arena := ⟨s6Step69Add0Arena.live∪s6Step69Add0Work.toFinset,Finset.union_subset s6Step69Add0Arena.bounded s6Step69Add0_bounded⟩

private def s6Step69Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step69Add1Work : List Wire := [780, 855, 803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816]

private theorem s6Step69Add1_bounded : s6Step69Add1Work.toFinset⊆arenaWires := by
  have h : s6Step69Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step69Add1During : Arena := ⟨s6Step69Add1Arena.live∪s6Step69Add1Work.toFinset,Finset.union_subset s6Step69Add1Arena.bounded s6Step69Add1_bounded⟩

private def s6Step69F4FlagArena : Arena := ⟨s6Step69HeadFvAfter.live∪{869},Finset.union_subset s6Step69HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step69F4Plan : HmrHybridF4Plan := ⟨s6Step69F4FlagArena,[869],s6Step69Add0Arena,[843],s6Step69Add0During,s6Step69Add0Work,s6Step69Add1During,s6Step69Add1Work⟩

private def s6Step69HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 838],795⟩

private def s6Step69HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830],776⟩

private def s6Step69HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 854, 821],777⟩

private def s6Step69HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 822],775⟩

private def s6Step69FrontHead : WindowBank := ⟨s6Step69HeadFOut,s6Step69HeadGOut,s6Step69HeadFvOut,s6Step69HeadGvOut⟩

private def s6Step69EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489],795⟩

private def s6Step69EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875],776⟩

private def s6Step69EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 854],777⟩

private def s6Step69EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814],775⟩

private def s6Step69FrontPair : WindowBank := ⟨s6Step69EntryFOut,s6Step69EntryGOut,s6Step69EntryFvOut,s6Step69EntryGvOut⟩

private def s6Step69FrontSigmaArena : Arena := ⟨s6Step69EntryGvAfter.live∪{877},Finset.union_subset s6Step69EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step69HeadFFresh : List Wire := [838]

private def s6Step69HeadFvFresh : List Wire := [830]

private def s6Step69HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step69HeadGFresh : List Wire := [821]

private def s6Step69HeadGvFresh : List Wire := [822]

private def s6Step69FrontPlan : HmrSourceFront := ⟨s6Step69EntryGvAfter,s6Step69FrontPair,(growRow 795 s6Step69EntryFFresh ++ (growRow 777 s6Step69EntryGFresh ++ (growRow 776 s6Step69EntryFvFresh ++ (growRow 775 s6Step69EntryGvFresh ++ [])))),s6Step69FrontSigmaArena,[877],s6Step69HeadGBefore,[848],
  s6Step69HeadFvAfter,s6Step69FrontHead,(growRow 777 s6Step69HeadGFresh ++ (growRow 795 s6Step69HeadFFresh ++ (growRow 775 s6Step69HeadGvFresh ++ (growRow 776 s6Step69HeadFvFresh ++ [])))),s6Step69F4Plan,s6Step69CounterDuring,s6Step69CounterWork,s6Step69ExitGvAfter,s6Step69FrontOut,(shrinkRow 777 s6Step69ExitGExtra ++ (shrinkRow 795 s6Step69ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step69ExitGvExtra ++ []))))⟩

private def s6Step69CompletePlan : HmrEarlyStepPlan := ⟨s6Step69FrontPlan,s6Step69EarlyControlArena,s6Step69EarlyControlPlan,s6Step69CompleteMoves⟩

private theorem s6Step69Complete_apart : List.Disjoint (s6Step69CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [877, 848, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] := by
  have nd : ((s6Step69CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[877, 848, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step69Complete_owned : (s6Step69CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step69EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step69EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step69CompleteRelocationMove0Borrowed : Arena := ⟨s6Step69ExitGvAfter.live∪{489},Finset.union_subset s6Step69ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step69CompleteRelocation_move0_owned : 898∈s6Step69ExitGvAfter.live := by norm_num [s6Step69ExitGvAfter,arenaWires]

private theorem s6Step69CompleteRelocation_move0_reserve : s6Step69ExitGvAfter.reserve {489}=some s6Step69CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step69ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step69CompleteRelocation_move0_retire : s6Step69CompleteRelocationMove0Borrowed.retireSet {898}=s6Step69EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step69CompleteRelocationMove0Borrowed s6Step69EarlyControlArena {898}
  change s6Step69EarlyControlArena.live=(s6Step69ExitGvAfter.live∪{489})\{898}
  apply hmrArena_update_of_filter_check s6Step69ExitGvAfter s6Step69EarlyControlArena (fun q => ([(0,489),(490,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [489] [898] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step69CompleteRelocation_checked : s6Step69ExitGvAfter.checkRepack [(898,489)]=some s6Step69EarlyControlArena := by
  have tail1 : s6Step69EarlyControlArena.checkRepack []=some s6Step69EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step69ExitGvAfter s6Step69CompleteRelocationMove0Borrowed s6Step69EarlyControlArena s6Step69EarlyControlArena 898 489 []
    s6Step69CompleteRelocation_move0_owned s6Step69CompleteRelocation_move0_reserve s6Step69CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step69Complete_repack : s6Step69ExitGvAfter.checkRepack s6Step69CompleteMoves=some s6Step69EarlyControlArena := by
  simpa only [s6Step69CompleteMoves] using s6Step69CompleteRelocation_checked

private theorem s6Step69EarlyControl_branchOwned : ([848] : List Wire).toFinset⊆s6Step69EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step69EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step69EarlyControl_branch : compileHmrBranchRetirement s6Step69EarlyControlSigmaArena 848=some s6Step69EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step69EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step69EarlyControlSigmaArena s6Step69EarlyControlOutputArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [848] rfl rfl
    decide +kernel

private theorem s6Step69EarlyControl_classEqualityBorrow : s6Step69EarlyControlPositiveArena.checkBorrow (([877, 869] : List Wire).length-1) s6Step69EarlyControlLog.classWork=some s6Step69EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step69EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step69EarlyControlPositiveArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step69EarlyControlPositiveArena s6Step69EarlyControlEqualityArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step69EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step69EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step69EarlyControl_classEqualityOwned : ([877, 869] : List Wire).toFinset⊆s6Step69EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step69EarlyControlPositiveArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step69EarlyControl_classEquality : compileHmrEqualityLog s6Step69EarlyControlPositiveArena [877, 869] 0 s6Step69EarlyControlLog.classWork=some (s6Step69EarlyControlEqualityArena,s6Step69EarlyControlLog.classWork,s6Step69EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step69EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step69EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step69EarlyControl_classOwned : ([769, 821, 877] : List Wire).toFinset⊆s6Step69EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step69EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step69EarlyControl_positiveBorrow : s6Step69EarlyControlZeroArena.checkBorrow (1) s6Step69EarlyControlLog.positiveWork=some s6Step69EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step69EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step69EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step69EarlyControlZeroArena s6Step69EarlyControlPositiveArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step69EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step69EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step69EarlyControl_class : compileHmrSourceClassLog s6Step69EarlyControlZeroArena false 769 s6Step69EarlyControlZeroPlan.top 0 877 s6Step69EarlyControlLog.positiveWork s6Step69EarlyControlLog.classWork=some s6Step69EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step69EarlyControlClassPlan s6Step69EarlyControlZeroArena false 769 s6Step69EarlyControlZeroPlan.top 0 877
  constructor
  · decide +kernel
  · exact s6Step69EarlyControl_classOwned
  · exact s6Step69EarlyControl_positiveBorrow
  · exact s6Step69EarlyControl_classEquality

private theorem s6Step69EarlyControl_entryRecordOwned : ([848, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step69EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step69EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step69EarlyControl_entrySigmaOwned : ([877, 254] : List Wire).toFinset⊆s6Step69EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step69EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step69EarlyControl_fitBorrow : s6Step69EarlyControlFlagArena.checkBorrow ((30-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).length)) s6Step69EarlyControlLog.recordFresh=some s6Step69EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step69EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step69EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step69EarlyControlFittedArena,s6Step69EarlyControlFlagArena,s6Step69EarlyControlLog,arenaWires]

private theorem s6Step69EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step69EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step69EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step69EarlyControl_fit : compileHmrRecordGrowLog s6Step69EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step69EarlyControlLog.recordFresh=some s6Step69EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step69EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step69EarlyControl_fitBorrow

private theorem s6Step69EarlyControl_flagsBorrow : s6Step69EarlyControlEqualityArena.checkBorrow (6) s6Step69EarlyControlLog.flagWork=some s6Step69EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step69EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step69EarlyControlEqualityArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step69EarlyControlEqualityArena s6Step69EarlyControlFlagArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step69EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step69EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step69EarlyControl_flagsOwned : ([843, 253, 252, 251] : List Wire).toFinset⊆s6Step69EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step69EarlyControlEqualityArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step69EarlyControl_flags : compileHmrFlagsLog s6Step69EarlyControlClassPlan.equalityArena s6Step69EarlyControlClassPlan.equality.top 253 252 251 s6Step69EarlyControlLog.flagWork=some s6Step69EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step69EarlyControl_flagsOwned⟩
  · exact s6Step69EarlyControl_flagsBorrow

private theorem s6Step69EarlyControl_historyBorrow : s6Step69EarlyControlArena.checkBorrow ((30-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).length)) s6Step69EarlyControlLog.recordFresh=some s6Step69EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step69EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step69EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step69EarlyControlArena s6Step69EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step69EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step69EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step69EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step69EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step69EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step69EarlyControl_history : compileHmrRecordGrowLog s6Step69EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step69EarlyControlLog.recordFresh=some s6Step69EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step69EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step69EarlyControl_historyBorrow

private theorem s6Step69EarlyControl_sigmaOwned : ([254, 877] : List Wire).toFinset⊆s6Step69EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step69EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step69EarlyControl_sigmaReleaseOwned : ([877] : List Wire).toFinset⊆s6Step69EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step69EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step69EarlyControl_sigmaRelease : s6Step69EarlyControlHistoryArena.release {877} (fun _ => false)=some s6Step69EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step69EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step69EarlyControlHistoryArena s6Step69EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [877] rfl rfl
    decide +kernel

private theorem s6Step69EarlyControl_sigma : compileHmrSigmaDropLog s6Step69EarlyControlHistoryArena false 0 0 254 877 []=some s6Step69EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step69EarlyControl_sigmaOwned⟩
  · exact s6Step69EarlyControl_sigmaRelease

private theorem s6Step69EarlyControl_zeroBorrow : s6Step69EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step69EarlyControlLog.zeroWork=some s6Step69EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step69EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step69EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step69EarlyControlArena s6Step69EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step69EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step69EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step69EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step69EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step69EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step69EarlyControl_zero : compileHmrEqualityLog s6Step69EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step69EarlyControlLog.zeroWork=some (s6Step69EarlyControlZeroArena,s6Step69EarlyControlLog.zeroWork,s6Step69EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step69EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step69EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step69EarlyControl_logged : s6Step69EarlyControlPlan.Logged s6Step69EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 877 254 253 252 251 848 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step69EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step69EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step69EarlyControl_zero
  · exact s6Step69EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step69EarlyControl_flags
  · exact s6Step69EarlyControl_fit
  · exact s6Step69EarlyControl_history
  · exact s6Step69EarlyControl_sigma
  · exact s6Step69EarlyControl_branch

private theorem s6Step69EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step69EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 877 254 253 252 251 848 30 s6Step69EarlyControlLog=some s6Step69EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step69EarlyControlPlan s6Step69EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 877 254 253 252 251 848 30 s6Step69EarlyControl_logged

private def s6Step69EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step69EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489],795⟩

private def s6Step69EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875],776⟩

private def s6Step69EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232],777⟩

private def s6Step69EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814],775⟩

private def s6Step69FrontBank : WindowBank := ⟨s6Step69EntryFRow,s6Step69EntryGRow,s6Step69EntryFvRow,s6Step69EntryGvRow⟩

private def s6Step69Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 838, 795]

private def s6Step69Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 854, 821, 777]

private def s6Step69Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 776]

private def s6Step69Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 822, 775]

private theorem s6Step69Counter_apart : Disjoint s6Step69HeadFvAfter.live s6Step69CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step69HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step69Counter_borrowed : s6Step69HeadFvAfter.checkBorrow 4 s6Step69CounterWork=some s6Step69CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step69HeadFvAfter s6Step69CounterDuring s6Step69CounterWork.toFinset s6Step69Counter_bounded s6Step69Counter_apart rfl

private theorem s6Step69Counter_owned : (877::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step69HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step69HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step69Counter_checked : compileHmrCounterStepLog s6Step69HeadFvAfter true 877 [774, 773, 772, 771, 770, 769] s6Step69CounterWork=some s6Step69CounterDuring := by
  have owned : ∀q∈877::[774, 773, 772, 771, 770, 769],q∈s6Step69HeadFvAfter.live := fun q hq => s6Step69Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step69Counter_borrowed

private def s6Step69EntryFAfter : Arena := s6Step69EntryFBefore

private theorem s6Step69EntryBank_incomingDistinct : ([s6Step69EntryFRow,s6Step69EntryGRow,s6Step69EntryFvRow,s6Step69EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step69EntryF_Incoming : rowsOwned s6Step69EntryFBefore [s6Step69EntryFRow,s6Step69EntryGRow,s6Step69EntryFvRow,s6Step69EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step69EntryFRow,s6Step69EntryGRow,s6Step69EntryFvRow,s6Step69EntryGvRow] 0 s6Step69EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step69EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step69EntryBank_outgoingOwned : rowsOwned s6Step69EntryGvAfter [s6Step69EntryFOut,s6Step69EntryGOut,s6Step69EntryFvOut,s6Step69EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step69EntryGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step69EntryF_Outgoing : rowsOwned s6Step69EntryGvAfter [s6Step69EntryFOut,s6Step69EntryGOut,s6Step69EntryFvOut,s6Step69EntryGvOut] :=
  hmrRows_owned_drop s6Step69EntryGvAfter [s6Step69EntryFOut,s6Step69EntryGOut,s6Step69EntryFvOut,s6Step69EntryGvOut] 0 s6Step69EntryBank_outgoingOwned

private theorem s6Step69EntryF_distinct : (s6Step69EntryFRow.sign::s6Step69EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step69EntryF_owned : (s6Step69EntryFRow.sign::s6Step69EntryFRow.payload).toFinset⊆s6Step69EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step69EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step69EntryF_reserved : s6Step69EntryFBefore.reserve s6Step69EntryFFresh.toFinset=some s6Step69EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step69EntryFFresh,arenaWires]
  · norm_num [s6Step69EntryFBefore,s6Step69EntryFFresh,arenaWires]
  · simp only [s6Step69EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step69EntryF_checked : planRowResizeLog s6Step69EntryFBefore s6Step69EntryFRow 234 s6Step69EntryFFresh=
    some (s6Step69EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489],795⟩,growRow 795 s6Step69EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step69EntryFBefore s6Step69EntryFAfter s6Step69EntryFRow 234 s6Step69EntryFFresh
    s6Step69EntryF_distinct s6Step69EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step69EntryF_reserved
  have rowEq : WindowRow.mk (s6Step69EntryFRow.payload++s6Step69EntryFFresh) s6Step69EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step69EntryFvAfter : Arena := s6Step69EntryGAfter

private def s6Step69EntryFvBefore : Arena := s6Step69EntryGAfter

private theorem s6Step69EntryFv_Incoming : rowsOwned s6Step69EntryFvBefore [s6Step69EntryFvRow,s6Step69EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step69EntryFRow,s6Step69EntryGRow,s6Step69EntryFvRow,s6Step69EntryGvRow] 2 s6Step69EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step69EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step69EntryFv_Outgoing : rowsOwned s6Step69EntryGvAfter [s6Step69EntryFvOut,s6Step69EntryGvOut] :=
  hmrRows_owned_drop s6Step69EntryGvAfter [s6Step69EntryFOut,s6Step69EntryGOut,s6Step69EntryFvOut,s6Step69EntryGvOut] 2 s6Step69EntryBank_outgoingOwned

private theorem s6Step69EntryFv_distinct : (s6Step69EntryFvRow.sign::s6Step69EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step69EntryFv_owned : (s6Step69EntryFvRow.sign::s6Step69EntryFvRow.payload).toFinset⊆s6Step69EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step69EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step69EntryFv_reserved : s6Step69EntryFvBefore.reserve s6Step69EntryFvFresh.toFinset=some s6Step69EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step69EntryFvFresh,arenaWires]
  · norm_num [s6Step69EntryFvBefore,s6Step69EntryGAfter,s6Step69EntryFvFresh,arenaWires]
  · simp only [s6Step69EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step69EntryFv_checked : planRowResizeLog s6Step69EntryFvBefore s6Step69EntryFvRow 47 s6Step69EntryFvFresh=
    some (s6Step69EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875],776⟩,growRow 776 s6Step69EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step69EntryFvBefore s6Step69EntryFvAfter s6Step69EntryFvRow 47 s6Step69EntryFvFresh
    s6Step69EntryFv_distinct s6Step69EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step69EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step69EntryFvRow.payload++s6Step69EntryFvFresh) s6Step69EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step69EntryGBefore : Arena := s6Step69EntryFBefore

private theorem s6Step69EntryG_Incoming : rowsOwned s6Step69EntryGBefore [s6Step69EntryGRow,s6Step69EntryFvRow,s6Step69EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step69EntryFRow,s6Step69EntryGRow,s6Step69EntryFvRow,s6Step69EntryGvRow] 1 s6Step69EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step69EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step69EntryG_Outgoing : rowsOwned s6Step69EntryGvAfter [s6Step69EntryGOut,s6Step69EntryFvOut,s6Step69EntryGvOut] :=
  hmrRows_owned_drop s6Step69EntryGvAfter [s6Step69EntryFOut,s6Step69EntryGOut,s6Step69EntryFvOut,s6Step69EntryGvOut] 1 s6Step69EntryBank_outgoingOwned

private theorem s6Step69EntryG_distinct : (s6Step69EntryGRow.sign::s6Step69EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step69EntryG_owned : (s6Step69EntryGRow.sign::s6Step69EntryGRow.payload).toFinset⊆s6Step69EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step69EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step69EntryG_reserved : s6Step69EntryGBefore.reserve s6Step69EntryGFresh.toFinset=some s6Step69EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step69EntryGFresh,arenaWires]
  · norm_num [s6Step69EntryGBefore,s6Step69EntryFBefore,s6Step69EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step69EntryGBefore s6Step69EntryGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step69EntryGFresh rfl rfl
    · norm_num [s6Step69EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step69EntryG_checked : planRowResizeLog s6Step69EntryGBefore s6Step69EntryGRow 234 s6Step69EntryGFresh=
    some (s6Step69EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 854],777⟩,growRow 777 s6Step69EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step69EntryGBefore s6Step69EntryGAfter s6Step69EntryGRow 234 s6Step69EntryGFresh
    s6Step69EntryG_distinct s6Step69EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step69EntryG_reserved
  have rowEq : WindowRow.mk (s6Step69EntryGRow.payload++s6Step69EntryGFresh) s6Step69EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 854],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step69EntryGvBefore : Arena := s6Step69EntryGAfter

private theorem s6Step69EntryGv_Incoming : rowsOwned s6Step69EntryGvBefore [s6Step69EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step69EntryFRow,s6Step69EntryGRow,s6Step69EntryFvRow,s6Step69EntryGvRow] 3 s6Step69EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step69EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step69EntryGv_Outgoing : rowsOwned s6Step69EntryGvAfter [s6Step69EntryGvOut] :=
  hmrRows_owned_drop s6Step69EntryGvAfter [s6Step69EntryFOut,s6Step69EntryGOut,s6Step69EntryFvOut,s6Step69EntryGvOut] 3 s6Step69EntryBank_outgoingOwned

private theorem s6Step69EntryGv_distinct : (s6Step69EntryGvRow.sign::s6Step69EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step69EntryGv_owned : (s6Step69EntryGvRow.sign::s6Step69EntryGvRow.payload).toFinset⊆s6Step69EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step69EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step69EntryGv_reserved : s6Step69EntryGvBefore.reserve s6Step69EntryGvFresh.toFinset=some s6Step69EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step69EntryGvFresh,arenaWires]
  · norm_num [s6Step69EntryGvBefore,s6Step69EntryGAfter,s6Step69EntryGvFresh,arenaWires]
  · simp only [s6Step69EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step69EntryGv_checked : planRowResizeLog s6Step69EntryGvBefore s6Step69EntryGvRow 47 s6Step69EntryGvFresh=
    some (s6Step69EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814],775⟩,growRow 775 s6Step69EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step69EntryGvBefore s6Step69EntryGvAfter s6Step69EntryGvRow 47 s6Step69EntryGvFresh
    s6Step69EntryGv_distinct s6Step69EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step69EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step69EntryGvRow.payload++s6Step69EntryGvFresh) s6Step69EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step69EntryBank_rows : planWindowRowsLog s6Step69EntryFBefore [(s6Step69EntryFRow,234),(s6Step69EntryGRow,234),(s6Step69EntryFvRow,47),(s6Step69EntryGvRow,47)] [s6Step69EntryFFresh,s6Step69EntryGFresh,s6Step69EntryFvFresh,s6Step69EntryGvFresh]=
    some (s6Step69EntryGvAfter,[s6Step69EntryFOut,s6Step69EntryGOut,s6Step69EntryFvOut,s6Step69EntryGvOut],(growRow 795 s6Step69EntryFFresh ++ (growRow 777 s6Step69EntryGFresh ++ (growRow 776 s6Step69EntryFvFresh ++ (growRow 775 s6Step69EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step69EntryGvAfter [] []=some (s6Step69EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step69EntryGvBefore s6Step69EntryGvAfter s6Step69EntryGvAfter
    s6Step69EntryGvRow s6Step69EntryGvOut 47 s6Step69EntryGvFresh [] [] []
    (growRow 775 s6Step69EntryGvFresh) ([]) s6Step69EntryGv_Incoming s6Step69EntryGv_checked h4 s6Step69EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step69EntryFvBefore s6Step69EntryFvAfter s6Step69EntryGvAfter
    s6Step69EntryFvRow s6Step69EntryFvOut 47 s6Step69EntryFvFresh [(s6Step69EntryGvRow,47)] [s6Step69EntryGvFresh] [s6Step69EntryGvOut]
    (growRow 776 s6Step69EntryFvFresh) ((growRow 775 s6Step69EntryGvFresh ++ [])) s6Step69EntryFv_Incoming s6Step69EntryFv_checked h3 s6Step69EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step69EntryGBefore s6Step69EntryGAfter s6Step69EntryGvAfter
    s6Step69EntryGRow s6Step69EntryGOut 234 s6Step69EntryGFresh [(s6Step69EntryFvRow,47),(s6Step69EntryGvRow,47)] [s6Step69EntryFvFresh,s6Step69EntryGvFresh] [s6Step69EntryFvOut,s6Step69EntryGvOut]
    (growRow 777 s6Step69EntryGFresh) ((growRow 776 s6Step69EntryFvFresh ++ (growRow 775 s6Step69EntryGvFresh ++ []))) s6Step69EntryG_Incoming s6Step69EntryG_checked h2 s6Step69EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step69EntryFBefore s6Step69EntryFAfter s6Step69EntryGvAfter
    s6Step69EntryFRow s6Step69EntryFOut 234 s6Step69EntryFFresh [(s6Step69EntryGRow,234),(s6Step69EntryFvRow,47),(s6Step69EntryGvRow,47)] [s6Step69EntryGFresh,s6Step69EntryFvFresh,s6Step69EntryGvFresh] [s6Step69EntryGOut,s6Step69EntryFvOut,s6Step69EntryGvOut]
    (growRow 795 s6Step69EntryFFresh) ((growRow 777 s6Step69EntryGFresh ++ (growRow 776 s6Step69EntryFvFresh ++ (growRow 775 s6Step69EntryGvFresh ++ [])))) s6Step69EntryF_Incoming s6Step69EntryF_checked h1 s6Step69EntryF_Outgoing
  exact h0

private theorem s6Step69EntryBank_checked : compileHmrBankResizeLog .entry s6Step69EntryFBefore ⟨s6Step69EntryFRow,s6Step69EntryGRow,s6Step69EntryFvRow,s6Step69EntryGvRow⟩ ⟨234,234,47,47⟩ [s6Step69EntryFFresh,s6Step69EntryGFresh,s6Step69EntryFvFresh,s6Step69EntryGvFresh]=
    some (s6Step69EntryGvAfter,⟨s6Step69EntryFOut,s6Step69EntryGOut,s6Step69EntryFvOut,s6Step69EntryGvOut⟩,(growRow 795 s6Step69EntryFFresh ++ (growRow 777 s6Step69EntryGFresh ++ (growRow 776 s6Step69EntryFvFresh ++ (growRow 775 s6Step69EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step69EntryBank_rows]
  rfl

private def s6Step69ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,489),(490,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step69ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step69ExitFBefore : Arena := s6Step69ExitGAfter

private def s6Step69ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 838],795⟩

private def s6Step69ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830],776⟩

private def s6Step69ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 854, 821],777⟩

private def s6Step69ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 822],775⟩

private theorem s6Step69ExitBank_incomingDistinct : ([s6Step69ExitGRow,s6Step69ExitFRow,s6Step69ExitFvRow,s6Step69ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step69ExitF_Incoming : rowsOwned s6Step69ExitFBefore [s6Step69ExitFRow,s6Step69ExitFvRow,s6Step69ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step69ExitGRow,s6Step69ExitFRow,s6Step69ExitFvRow,s6Step69ExitGvRow] 1 s6Step69ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step69ExitFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step69ExitBank_outgoingOwned : rowsOwned s6Step69ExitGvAfter [s6Step69ExitGOut,s6Step69ExitFOut,s6Step69ExitFvOut,s6Step69ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step69ExitGvAfter (fun q => ([(0,489),(490,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step69ExitF_Outgoing : rowsOwned s6Step69ExitGvAfter [s6Step69ExitFOut,s6Step69ExitFvOut,s6Step69ExitGvOut] :=
  hmrRows_owned_drop s6Step69ExitGvAfter [s6Step69ExitGOut,s6Step69ExitFOut,s6Step69ExitFvOut,s6Step69ExitGvOut] 1 s6Step69ExitBank_outgoingOwned

private theorem s6Step69ExitF_distinct : (s6Step69ExitFRow.sign::s6Step69ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step69ExitF_owned : (s6Step69ExitFRow.sign::s6Step69ExitFRow.payload).toFinset⊆s6Step69ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step69ExitFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step69ExitF_retired : s6Step69ExitFBefore.retireSet s6Step69ExitFExtra.toFinset=s6Step69ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step69ExitFBefore s6Step69ExitFAfter s6Step69ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step69ExitFBefore s6Step69ExitFAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,489),(490,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step69ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step69ExitF_checked : planRowResizeLog s6Step69ExitFBefore s6Step69ExitFRow 233 []=
    some (s6Step69ExitFAfter,s6Step69ExitFOut,shrinkRow 795 s6Step69ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step69ExitFBefore s6Step69ExitFRow 233 s6Step69ExitF_distinct s6Step69ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step69ExitFRow.payload.take 233) s6Step69ExitFRow.sign=s6Step69ExitFOut := by decide +kernel
  have hi : s6Step69ExitFRow.payload.drop 233=s6Step69ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step69ExitF_retired] at result
  exact result

private def s6Step69ExitFvAfter : Arena := s6Step69ExitFAfter

private def s6Step69ExitFvBefore : Arena := s6Step69ExitFAfter

private theorem s6Step69ExitFv_Incoming : rowsOwned s6Step69ExitFvBefore [s6Step69ExitFvRow,s6Step69ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step69ExitGRow,s6Step69ExitFRow,s6Step69ExitFvRow,s6Step69ExitGvRow] 2 s6Step69ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step69ExitFvBefore (fun q => ([(0,489),(490,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step69ExitFv_Outgoing : rowsOwned s6Step69ExitGvAfter [s6Step69ExitFvOut,s6Step69ExitGvOut] :=
  hmrRows_owned_drop s6Step69ExitGvAfter [s6Step69ExitGOut,s6Step69ExitFOut,s6Step69ExitFvOut,s6Step69ExitGvOut] 2 s6Step69ExitBank_outgoingOwned

private theorem s6Step69ExitFv_distinct : (s6Step69ExitFvRow.sign::s6Step69ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step69ExitFv_owned : (s6Step69ExitFvRow.sign::s6Step69ExitFvRow.payload).toFinset⊆s6Step69ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step69ExitFvBefore (fun q => ([(0,489),(490,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step69ExitFv_reserved : s6Step69ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step69ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step69ExitFv_checked : planRowResizeLog s6Step69ExitFvBefore s6Step69ExitFvRow 48 []=
    some (s6Step69ExitFvAfter,s6Step69ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step69ExitFvBefore s6Step69ExitFvAfter s6Step69ExitFvRow 48 []
    s6Step69ExitFv_distinct s6Step69ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step69ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step69ExitFvRow.payload++[]) s6Step69ExitFvRow.sign=s6Step69ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step69ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step69ExitG_Incoming : rowsOwned s6Step69ExitGBefore [s6Step69ExitGRow,s6Step69ExitFRow,s6Step69ExitFvRow,s6Step69ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step69ExitGRow,s6Step69ExitFRow,s6Step69ExitFvRow,s6Step69ExitGvRow] 0 s6Step69ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step69ExitGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step69ExitG_Outgoing : rowsOwned s6Step69ExitGvAfter [s6Step69ExitGOut,s6Step69ExitFOut,s6Step69ExitFvOut,s6Step69ExitGvOut] :=
  hmrRows_owned_drop s6Step69ExitGvAfter [s6Step69ExitGOut,s6Step69ExitFOut,s6Step69ExitFvOut,s6Step69ExitGvOut] 0 s6Step69ExitBank_outgoingOwned

private theorem s6Step69ExitG_distinct : (s6Step69ExitGRow.sign::s6Step69ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step69ExitG_owned : (s6Step69ExitGRow.sign::s6Step69ExitGRow.payload).toFinset⊆s6Step69ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step69ExitGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step69ExitG_retired : s6Step69ExitGBefore.retireSet s6Step69ExitGExtra.toFinset=s6Step69ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step69ExitGBefore s6Step69ExitGAfter s6Step69ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step69ExitGBefore s6Step69ExitGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step69ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step69ExitG_checked : planRowResizeLog s6Step69ExitGBefore s6Step69ExitGRow 233 []=
    some (s6Step69ExitGAfter,s6Step69ExitGOut,shrinkRow 777 s6Step69ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step69ExitGBefore s6Step69ExitGRow 233 s6Step69ExitG_distinct s6Step69ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step69ExitGRow.payload.take 233) s6Step69ExitGRow.sign=s6Step69ExitGOut := by decide +kernel
  have hi : s6Step69ExitGRow.payload.drop 233=s6Step69ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step69ExitG_retired] at result
  exact result

private def s6Step69ExitGvBefore : Arena := s6Step69ExitFAfter

private theorem s6Step69ExitGv_Incoming : rowsOwned s6Step69ExitGvBefore [s6Step69ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step69ExitGRow,s6Step69ExitFRow,s6Step69ExitFvRow,s6Step69ExitGvRow] 3 s6Step69ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step69ExitGvBefore (fun q => ([(0,489),(490,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step69ExitGv_Outgoing : rowsOwned s6Step69ExitGvAfter [s6Step69ExitGvOut] :=
  hmrRows_owned_drop s6Step69ExitGvAfter [s6Step69ExitGOut,s6Step69ExitFOut,s6Step69ExitFvOut,s6Step69ExitGvOut] 3 s6Step69ExitBank_outgoingOwned

private theorem s6Step69ExitGv_distinct : (s6Step69ExitGvRow.sign::s6Step69ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step69ExitGv_owned : (s6Step69ExitGvRow.sign::s6Step69ExitGvRow.payload).toFinset⊆s6Step69ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step69ExitGvBefore (fun q => ([(0,489),(490,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step69ExitGv_retired : s6Step69ExitGvBefore.retireSet s6Step69ExitGvExtra.toFinset=s6Step69ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step69ExitGvBefore s6Step69ExitGvAfter s6Step69ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step69ExitGvBefore s6Step69ExitGvAfter (fun q => ([(0,489),(490,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,489),(490,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step69ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step69ExitGv_checked : planRowResizeLog s6Step69ExitGvBefore s6Step69ExitGvRow 47 []=
    some (s6Step69ExitGvAfter,s6Step69ExitGvOut,shrinkRow 775 s6Step69ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step69ExitGvBefore s6Step69ExitGvRow 47 s6Step69ExitGv_distinct s6Step69ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step69ExitGvRow.payload.take 47) s6Step69ExitGvRow.sign=s6Step69ExitGvOut := by decide +kernel
  have hi : s6Step69ExitGvRow.payload.drop 47=s6Step69ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step69ExitGv_retired] at result
  exact result

private theorem s6Step69ExitBank_rows : planWindowRowsLog s6Step69ExitGBefore [(s6Step69ExitGRow,233),(s6Step69ExitFRow,233),(s6Step69ExitFvRow,48),(s6Step69ExitGvRow,47)] [[],[],[],[]]=
    some (s6Step69ExitGvAfter,[s6Step69ExitGOut,s6Step69ExitFOut,s6Step69ExitFvOut,s6Step69ExitGvOut],(shrinkRow 777 s6Step69ExitGExtra ++ (shrinkRow 795 s6Step69ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step69ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step69ExitGvAfter [] []=some (s6Step69ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step69ExitGvBefore s6Step69ExitGvAfter s6Step69ExitGvAfter
    s6Step69ExitGvRow s6Step69ExitGvOut 47 [] [] [] []
    (shrinkRow 775 s6Step69ExitGvExtra) ([]) s6Step69ExitGv_Incoming s6Step69ExitGv_checked h4 s6Step69ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step69ExitFvBefore s6Step69ExitFvAfter s6Step69ExitGvAfter
    s6Step69ExitFvRow s6Step69ExitFvOut 48 [] [(s6Step69ExitGvRow,47)] [[]] [s6Step69ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step69ExitGvExtra ++ [])) s6Step69ExitFv_Incoming s6Step69ExitFv_checked h3 s6Step69ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step69ExitFBefore s6Step69ExitFAfter s6Step69ExitGvAfter
    s6Step69ExitFRow s6Step69ExitFOut 233 [] [(s6Step69ExitFvRow,48),(s6Step69ExitGvRow,47)] [[],[]] [s6Step69ExitFvOut,s6Step69ExitGvOut]
    (shrinkRow 795 s6Step69ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step69ExitGvExtra ++ []))) s6Step69ExitF_Incoming s6Step69ExitF_checked h2 s6Step69ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step69ExitGBefore s6Step69ExitGAfter s6Step69ExitGvAfter
    s6Step69ExitGRow s6Step69ExitGOut 233 [] [(s6Step69ExitFRow,233),(s6Step69ExitFvRow,48),(s6Step69ExitGvRow,47)] [[],[],[]] [s6Step69ExitFOut,s6Step69ExitFvOut,s6Step69ExitGvOut]
    (shrinkRow 777 s6Step69ExitGExtra) ((shrinkRow 795 s6Step69ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step69ExitGvExtra ++ [])))) s6Step69ExitG_Incoming s6Step69ExitG_checked h1 s6Step69ExitG_Outgoing
  exact h0

private theorem s6Step69ExitBank_checked : compileHmrBankResizeLog .exit s6Step69ExitGBefore ⟨s6Step69ExitFRow,s6Step69ExitGRow,s6Step69ExitFvRow,s6Step69ExitGvRow⟩ ⟨233,233,48,47⟩ [[],[],[],[]]=
    some (s6Step69ExitGvAfter,⟨s6Step69ExitFOut,s6Step69ExitGOut,s6Step69ExitFvOut,s6Step69ExitGvOut⟩,(shrinkRow 777 s6Step69ExitGExtra ++ (shrinkRow 795 s6Step69ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step69ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step69ExitBank_rows]
  rfl

private theorem s6Step69Add0_apart : Disjoint s6Step69Add0Arena.live s6Step69Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step69Add0Arena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step69Add0_card : s6Step69Add0Arena.live.card=866 := by
  decide +kernel

private theorem s6Step69Add0_borrowed : s6Step69Add0Arena.checkBorrow (hmrHybridCount s6Step69Add0Arena s6Step69Add0B.length) s6Step69Add0Work=some s6Step69Add0During := by
  have len : s6Step69Add0Work.length=hmrHybridCount s6Step69Add0Arena s6Step69Add0B.length := by
    rw [hmrHybridCount,s6Step69Add0_card]
    decide +kernel
  have nd : s6Step69Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step69Add0Arena s6Step69Add0During s6Step69Add0Work.toFinset s6Step69Add0_bounded s6Step69Add0_apart rfl

private theorem s6Step69Add0_distinct : (869::848::843::(s6Step69Add0A++s6Step69Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step69Add0_owned : (869::848::843::(s6Step69Add0A++s6Step69Add0B)).toFinset⊆s6Step69Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step69Add0Arena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step69Add0_checked : compileHmrHybridCinLog s6Step69Add0Arena 848 869 843 s6Step69Add0A s6Step69Add0B s6Step69Add0Work=some s6Step69Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step69Add0Arena s6Step69Add0During 848 869 843 s6Step69Add0A s6Step69Add0B s6Step69Add0Work
    (by decide +kernel) (by decide +kernel) s6Step69Add0_distinct
    (fun q hq => s6Step69Add0_owned (List.mem_toFinset.mpr hq)) s6Step69Add0_borrowed

private theorem s6Step69Add1_apart : Disjoint s6Step69Add1Arena.live s6Step69Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step69Add1Arena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step69Add1_card : s6Step69Add1Arena.live.card=866 := by
  decide +kernel

private theorem s6Step69Add1_borrowed : s6Step69Add1Arena.checkBorrow (hmrHybridCount s6Step69Add1Arena s6Step69Add1B.length) s6Step69Add1Work=some s6Step69Add1During := by
  have len : s6Step69Add1Work.length=hmrHybridCount s6Step69Add1Arena s6Step69Add1B.length := by
    rw [hmrHybridCount,s6Step69Add1_card]
    decide +kernel
  have nd : s6Step69Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step69Add1Arena s6Step69Add1During s6Step69Add1Work.toFinset s6Step69Add1_bounded s6Step69Add1_apart rfl

private theorem s6Step69Add1_distinct : (869::848::843::(s6Step69Add1A++s6Step69Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step69Add1_owned : (869::848::843::(s6Step69Add1A++s6Step69Add1B)).toFinset⊆s6Step69Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step69Add1Arena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step69Add1_checked : compileHmrHybridCinLog s6Step69Add1Arena 848 869 843 s6Step69Add1A s6Step69Add1B s6Step69Add1Work=some s6Step69Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step69Add1Arena s6Step69Add1During 848 869 843 s6Step69Add1A s6Step69Add1B s6Step69Add1Work
    (by decide +kernel) (by decide +kernel) s6Step69Add1_distinct
    (fun q hq => s6Step69Add1_owned (List.mem_toFinset.mpr hq)) s6Step69Add1_borrowed

private theorem s6Step69F4_apart : Disjoint (s6Step69Add0A++s6Step69Add0B).toFinset (s6Step69Add1A++s6Step69Add1B).toFinset := by
  have nd : ((s6Step69Add0A++s6Step69Add0B)++(s6Step69Add1A++s6Step69Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step69F4_carry : s6Step69F4FlagArena.checkBorrow 1 [843]=some s6Step69Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step69F4FlagArena,s6Step69HeadFvAfter,arenaWires]
  · change s6Step69Add0Arena.live=(s6Step69HeadFvAfter.live∪{869})∪{843}
    apply hmrArena_union_pair_of_filter_check s6Step69HeadFvAfter s6Step69Add0Arena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 869 843 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step69F4_distinct : (877::848::869::843::((s6Step69Add0A++s6Step69Add1A)++(s6Step69Add0B++s6Step69Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step69F4_flag : s6Step69HeadFvAfter.checkBorrow 1 [869]=some s6Step69F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step69HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step69F4_owned : (877::848::((s6Step69Add0A++s6Step69Add1A)++(s6Step69Add0B++s6Step69Add1B))).toFinset⊆s6Step69HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step69HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step69F4_checked : compileHmrHybridF4Log s6Step69HeadFvAfter 877 848 s6Step69Add0A s6Step69Add0B s6Step69Add1A s6Step69Add1B [869] [843] s6Step69Add0Work s6Step69Add1Work=some s6Step69F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step69HeadFvAfter s6Step69F4FlagArena s6Step69Add0Arena s6Step69Add0During s6Step69Add1During 877 848
    s6Step69Add0A s6Step69Add0B s6Step69Add1A s6Step69Add1B [869] [843] s6Step69Add0Work s6Step69Add1Work
    (fun q hq => s6Step69F4_owned (List.mem_toFinset.mpr hq)) s6Step69F4_flag s6Step69F4_carry
    s6Step69F4_distinct s6Step69F4_apart s6Step69Add0_checked s6Step69Add1_checked

private theorem s6Step69Front_branch : s6Step69FrontSigmaArena.checkBorrow 1 [848]=some s6Step69HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step69FrontSigmaArena,s6Step69EntryGvAfter,s6Step69EntryGAfter,arenaWires]
  · change s6Step69HeadGBefore.live=(s6Step69EntryGvAfter.live∪{877})∪{848}
    apply hmrArena_union_pair_of_filter_check s6Step69EntryGvAfter s6Step69HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 877 848 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step69Front_entry : HmrFrontEntryValid s6Step69EntryFBefore s6Step69FrontBank 234 47 ⟨233,233,48,47⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step69FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step69EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step69EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step69FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step69Front_sigma : s6Step69EntryGvAfter.checkBorrow 1 [877]=some s6Step69FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step69EntryGvAfter,s6Step69EntryGAfter,arenaWires]
  · rfl

private def s6Step69HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,830),(831,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step69HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step69HeadFBefore : Arena := s6Step69HeadGAfter

private def s6Step69HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489],795⟩

private def s6Step69HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875],776⟩

private def s6Step69HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 854],777⟩

private def s6Step69HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814],775⟩

private theorem s6Step69HeadBank_incomingDistinct : ([s6Step69HeadGRow,s6Step69HeadFRow,s6Step69HeadGvRow,s6Step69HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step69HeadF_Incoming : rowsOwned s6Step69HeadFBefore [s6Step69HeadFRow,s6Step69HeadGvRow,s6Step69HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step69HeadGRow,s6Step69HeadFRow,s6Step69HeadGvRow,s6Step69HeadFvRow] 1 s6Step69HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step69HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step69HeadBank_outgoingOwned : rowsOwned s6Step69HeadFvAfter [s6Step69HeadGOut,s6Step69HeadFOut,s6Step69HeadGvOut,s6Step69HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step69HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step69HeadF_Outgoing : rowsOwned s6Step69HeadFvAfter [s6Step69HeadFOut,s6Step69HeadGvOut,s6Step69HeadFvOut] :=
  hmrRows_owned_drop s6Step69HeadFvAfter [s6Step69HeadGOut,s6Step69HeadFOut,s6Step69HeadGvOut,s6Step69HeadFvOut] 1 s6Step69HeadBank_outgoingOwned

private theorem s6Step69HeadF_distinct : (s6Step69HeadFRow.sign::s6Step69HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step69HeadF_owned : (s6Step69HeadFRow.sign::s6Step69HeadFRow.payload).toFinset⊆s6Step69HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step69HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step69HeadF_reserved : s6Step69HeadFBefore.reserve s6Step69HeadFFresh.toFinset=some s6Step69HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step69HeadFFresh,arenaWires]
  · norm_num [s6Step69HeadFBefore,s6Step69HeadGAfter,s6Step69HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step69HeadFBefore s6Step69HeadFAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,830),(831,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step69HeadFFresh rfl rfl
    · norm_num [s6Step69HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step69HeadF_checked : planRowResizeLog s6Step69HeadFBefore s6Step69HeadFRow 235 s6Step69HeadFFresh=
    some (s6Step69HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 838],795⟩,growRow 795 s6Step69HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step69HeadFBefore s6Step69HeadFAfter s6Step69HeadFRow 235 s6Step69HeadFFresh
    s6Step69HeadF_distinct s6Step69HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step69HeadF_reserved
  have rowEq : WindowRow.mk (s6Step69HeadFRow.payload++s6Step69HeadFFresh) s6Step69HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 838],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step69HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,830),(831,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step69HeadFvBefore : Arena := s6Step69HeadGvAfter

private theorem s6Step69HeadFv_Incoming : rowsOwned s6Step69HeadFvBefore [s6Step69HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step69HeadGRow,s6Step69HeadFRow,s6Step69HeadGvRow,s6Step69HeadFvRow] 3 s6Step69HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step69HeadFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,830),(831,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step69HeadFv_Outgoing : rowsOwned s6Step69HeadFvAfter [s6Step69HeadFvOut] :=
  hmrRows_owned_drop s6Step69HeadFvAfter [s6Step69HeadGOut,s6Step69HeadFOut,s6Step69HeadGvOut,s6Step69HeadFvOut] 3 s6Step69HeadBank_outgoingOwned

private theorem s6Step69HeadFv_distinct : (s6Step69HeadFvRow.sign::s6Step69HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step69HeadFv_owned : (s6Step69HeadFvRow.sign::s6Step69HeadFvRow.payload).toFinset⊆s6Step69HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step69HeadFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,830),(831,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step69HeadFv_reserved : s6Step69HeadFvBefore.reserve s6Step69HeadFvFresh.toFinset=some s6Step69HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step69HeadFvFresh,arenaWires]
  · norm_num [s6Step69HeadFvBefore,s6Step69HeadGvAfter,s6Step69HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step69HeadFvBefore s6Step69HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,830),(831,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step69HeadFvFresh rfl rfl
    · norm_num [s6Step69HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step69HeadFv_checked : planRowResizeLog s6Step69HeadFvBefore s6Step69HeadFvRow 48 s6Step69HeadFvFresh=
    some (s6Step69HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830],776⟩,growRow 776 s6Step69HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step69HeadFvBefore s6Step69HeadFvAfter s6Step69HeadFvRow 48 s6Step69HeadFvFresh
    s6Step69HeadFv_distinct s6Step69HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step69HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step69HeadFvRow.payload++s6Step69HeadFvFresh) s6Step69HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step69HeadG_Incoming : rowsOwned s6Step69HeadGBefore [s6Step69HeadGRow,s6Step69HeadFRow,s6Step69HeadGvRow,s6Step69HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step69HeadGRow,s6Step69HeadFRow,s6Step69HeadGvRow,s6Step69HeadFvRow] 0 s6Step69HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step69HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step69HeadG_Outgoing : rowsOwned s6Step69HeadFvAfter [s6Step69HeadGOut,s6Step69HeadFOut,s6Step69HeadGvOut,s6Step69HeadFvOut] :=
  hmrRows_owned_drop s6Step69HeadFvAfter [s6Step69HeadGOut,s6Step69HeadFOut,s6Step69HeadGvOut,s6Step69HeadFvOut] 0 s6Step69HeadBank_outgoingOwned

private theorem s6Step69HeadG_distinct : (s6Step69HeadGRow.sign::s6Step69HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step69HeadG_owned : (s6Step69HeadGRow.sign::s6Step69HeadGRow.payload).toFinset⊆s6Step69HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step69HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step69HeadG_reserved : s6Step69HeadGBefore.reserve s6Step69HeadGFresh.toFinset=some s6Step69HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step69HeadGFresh,arenaWires]
  · norm_num [s6Step69HeadGBefore,s6Step69HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step69HeadGBefore s6Step69HeadGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step69HeadGFresh rfl rfl
    · norm_num [s6Step69HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step69HeadG_checked : planRowResizeLog s6Step69HeadGBefore s6Step69HeadGRow 235 s6Step69HeadGFresh=
    some (s6Step69HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 854, 821],777⟩,growRow 777 s6Step69HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step69HeadGBefore s6Step69HeadGAfter s6Step69HeadGRow 235 s6Step69HeadGFresh
    s6Step69HeadG_distinct s6Step69HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step69HeadG_reserved
  have rowEq : WindowRow.mk (s6Step69HeadGRow.payload++s6Step69HeadGFresh) s6Step69HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 854, 821],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step69HeadGvBefore : Arena := s6Step69HeadFAfter

private theorem s6Step69HeadGv_Incoming : rowsOwned s6Step69HeadGvBefore [s6Step69HeadGvRow,s6Step69HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step69HeadGRow,s6Step69HeadFRow,s6Step69HeadGvRow,s6Step69HeadFvRow] 2 s6Step69HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step69HeadGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,830),(831,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step69HeadGv_Outgoing : rowsOwned s6Step69HeadFvAfter [s6Step69HeadGvOut,s6Step69HeadFvOut] :=
  hmrRows_owned_drop s6Step69HeadFvAfter [s6Step69HeadGOut,s6Step69HeadFOut,s6Step69HeadGvOut,s6Step69HeadFvOut] 2 s6Step69HeadBank_outgoingOwned

private theorem s6Step69HeadGv_distinct : (s6Step69HeadGvRow.sign::s6Step69HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step69HeadGv_owned : (s6Step69HeadGvRow.sign::s6Step69HeadGvRow.payload).toFinset⊆s6Step69HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step69HeadGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,830),(831,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step69HeadGv_reserved : s6Step69HeadGvBefore.reserve s6Step69HeadGvFresh.toFinset=some s6Step69HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step69HeadGvFresh,arenaWires]
  · norm_num [s6Step69HeadGvBefore,s6Step69HeadFAfter,s6Step69HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step69HeadGvBefore s6Step69HeadGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,830),(831,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,830),(831,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step69HeadGvFresh rfl rfl
    · norm_num [s6Step69HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step69HeadGv_checked : planRowResizeLog s6Step69HeadGvBefore s6Step69HeadGvRow 48 s6Step69HeadGvFresh=
    some (s6Step69HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 822],775⟩,growRow 775 s6Step69HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step69HeadGvBefore s6Step69HeadGvAfter s6Step69HeadGvRow 48 s6Step69HeadGvFresh
    s6Step69HeadGv_distinct s6Step69HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step69HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step69HeadGvRow.payload++s6Step69HeadGvFresh) s6Step69HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 822],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step69HeadBank_rows : planWindowRowsLog s6Step69HeadGBefore [(s6Step69HeadGRow,235),(s6Step69HeadFRow,235),(s6Step69HeadGvRow,48),(s6Step69HeadFvRow,48)] [s6Step69HeadGFresh,s6Step69HeadFFresh,s6Step69HeadGvFresh,s6Step69HeadFvFresh]=
    some (s6Step69HeadFvAfter,[s6Step69HeadGOut,s6Step69HeadFOut,s6Step69HeadGvOut,s6Step69HeadFvOut],(growRow 777 s6Step69HeadGFresh ++ (growRow 795 s6Step69HeadFFresh ++ (growRow 775 s6Step69HeadGvFresh ++ (growRow 776 s6Step69HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step69HeadFvAfter [] []=some (s6Step69HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step69HeadFvBefore s6Step69HeadFvAfter s6Step69HeadFvAfter
    s6Step69HeadFvRow s6Step69HeadFvOut 48 s6Step69HeadFvFresh [] [] []
    (growRow 776 s6Step69HeadFvFresh) ([]) s6Step69HeadFv_Incoming s6Step69HeadFv_checked h4 s6Step69HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step69HeadGvBefore s6Step69HeadGvAfter s6Step69HeadFvAfter
    s6Step69HeadGvRow s6Step69HeadGvOut 48 s6Step69HeadGvFresh [(s6Step69HeadFvRow,48)] [s6Step69HeadFvFresh] [s6Step69HeadFvOut]
    (growRow 775 s6Step69HeadGvFresh) ((growRow 776 s6Step69HeadFvFresh ++ [])) s6Step69HeadGv_Incoming s6Step69HeadGv_checked h3 s6Step69HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step69HeadFBefore s6Step69HeadFAfter s6Step69HeadFvAfter
    s6Step69HeadFRow s6Step69HeadFOut 235 s6Step69HeadFFresh [(s6Step69HeadGvRow,48),(s6Step69HeadFvRow,48)] [s6Step69HeadGvFresh,s6Step69HeadFvFresh] [s6Step69HeadGvOut,s6Step69HeadFvOut]
    (growRow 795 s6Step69HeadFFresh) ((growRow 775 s6Step69HeadGvFresh ++ (growRow 776 s6Step69HeadFvFresh ++ []))) s6Step69HeadF_Incoming s6Step69HeadF_checked h2 s6Step69HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step69HeadGBefore s6Step69HeadGAfter s6Step69HeadFvAfter
    s6Step69HeadGRow s6Step69HeadGOut 235 s6Step69HeadGFresh [(s6Step69HeadFRow,235),(s6Step69HeadGvRow,48),(s6Step69HeadFvRow,48)] [s6Step69HeadFFresh,s6Step69HeadGvFresh,s6Step69HeadFvFresh] [s6Step69HeadFOut,s6Step69HeadGvOut,s6Step69HeadFvOut]
    (growRow 777 s6Step69HeadGFresh) ((growRow 795 s6Step69HeadFFresh ++ (growRow 775 s6Step69HeadGvFresh ++ (growRow 776 s6Step69HeadFvFresh ++ [])))) s6Step69HeadG_Incoming s6Step69HeadG_checked h1 s6Step69HeadG_Outgoing
  exact h0

private theorem s6Step69HeadBank_checked : compileHmrBankResizeLog .headroom s6Step69HeadGBefore ⟨s6Step69HeadFRow,s6Step69HeadGRow,s6Step69HeadFvRow,s6Step69HeadGvRow⟩ ⟨235,235,48,48⟩ [s6Step69HeadGFresh,s6Step69HeadFFresh,s6Step69HeadGvFresh,s6Step69HeadFvFresh]=
    some (s6Step69HeadFvAfter,⟨s6Step69HeadFOut,s6Step69HeadGOut,s6Step69HeadFvOut,s6Step69HeadGvOut⟩,(growRow 777 s6Step69HeadGFresh ++ (growRow 795 s6Step69HeadFFresh ++ (growRow 775 s6Step69HeadGvFresh ++ (growRow 776 s6Step69HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step69HeadBank_rows]
  rfl

private theorem s6Step69Front_checked : compileHmrSourceFrontLog s6Step69EntryFBefore s6Step69FrontBank 234 47 ⟨233,233,48,47⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step69FrontLog=some s6Step69FrontPlan := by
  have pairEq : s6Step69FrontPair=⟨s6Step69HeadFRow,s6Step69HeadGRow,s6Step69HeadFvRow,s6Step69HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step69FrontHead=⟨s6Step69ExitFRow,s6Step69ExitGRow,s6Step69ExitFvRow,s6Step69ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step69Add0A=s6Step69FrontHead.f.wires := by decide +kernel
  have gEq : s6Step69Add0B=s6Step69FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step69Add1A=s6Step69FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step69Add1B=s6Step69FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step69EntryFBefore s6Step69FrontBank 234 47 ⟨233,233,48,47⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step69FrontLog s6Step69FrontPlan
  · exact s6Step69Front_entry
  · exact s6Step69EntryBank_checked
  · exact s6Step69Front_sigma
  · rfl
  · exact s6Step69Front_branch
  · rfl
  · simpa only [s6Step69FrontPlan,pairEq] using s6Step69HeadBank_checked
  · simpa only [s6Step69FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step69F4_checked
  · exact s6Step69Counter_checked
  · rfl
  · simpa only [s6Step69FrontPlan,headEq] using s6Step69ExitBank_checked

private theorem s6Step69Complete_explicit_checked : compileHmrEarlyStepLog s6Step69EntryFBefore s6Step69FrontBank 234 47 ⟨233,233,48,47⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step69CompleteLog=some s6Step69CompletePlan := by
  let Q := s6Step69EarlyControlPlan
  have hq := s6Step69EarlyControl_plan_checked
  have fv1 : s6Step69CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step69CompleteOut.fv.payload[2]?.getD s6Step69CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step69CompleteOut.fv.payload[3]?.getD s6Step69CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step69CompleteOut.fv.payload[4]?.getD s6Step69CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step69EntryFBefore s6Step69EarlyControlArena s6Step69FrontBank 234 47 ⟨233,233,48,47⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step69CompleteLog s6Step69FrontPlan Q
    s6Step69Front_checked s6Step69Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step69Complete_owned s6Step69Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step69EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 877 s6Step69CompleteOut.fv.second (s6Step69CompleteOut.fv.payload[2]?.getD s6Step69CompleteOut.fv.sign) (s6Step69CompleteOut.fv.payload[3]?.getD s6Step69CompleteOut.fv.sign) (s6Step69CompleteOut.fv.payload[4]?.getD s6Step69CompleteOut.fv.sign) 848 30 s6Step69EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep69Arena : Arena := s6Step69EntryFBefore
def s6PrivateStep69Bank : WindowBank := s6Step69FrontBank
def s6PrivateStep69Spec : HmrSourceWalkStepLog := ⟨234,47,⟨233,233,48,47⟩,30,.early s6Step69CompleteLog⟩
def s6PrivateStep69Plan : HmrSourceStepPlan := .early s6Step69CompletePlan
theorem s6PrivateStep69_source : s6PrivateStep69Spec=s6ObservedLogs64[5] := rfl
theorem s6PrivateStep69_checked : compileHmrSourceStepLog s6PrivateStep69Arena s6PrivateStep69Bank
    s6PrivateStep69Spec.fgWidth s6PrivateStep69Spec.vWidth s6PrivateStep69Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902]
    6 498 69 s6PrivateStep69Spec.need none s6PrivateStep69Spec.log=some s6PrivateStep69Plan := by
  change compileHmrSourceStepLog s6Step69EntryFBefore s6Step69FrontBank 234 47 ⟨233,233,48,47⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 6 498 69 30 none (.early s6Step69CompleteLog)=some (.early s6Step69CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 69<498)]
  rw [s6Step69Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
