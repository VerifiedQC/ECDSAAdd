import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep75
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

private def s6Step77CompleteMoves : List (Wire × Wire) := [(862,229),(807,485)]

private def s6Step77EarlyControlLog : HmrEarlyControlLog := ⟨[807, 862, 869, 877, 855],[794],[780],[803, 922, 879, 784, 891, 783],[]⟩

private def s6Step77FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [898]],[[855], [877], [869], [843]],[[], [], [], []]⟩,[860],[853],[794],[780],[803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896],[794, 780, 803, 922]⟩

private def s6Step77CompleteLog : HmrEarlyStepLog := ⟨s6Step77FrontLog,s6Step77CompleteMoves,s6Step77EarlyControlLog⟩

private def s6Step77ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484],795⟩

private def s6Step77ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843],776⟩

private def s6Step77ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228],777⟩

private def s6Step77ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898],775⟩

private def s6Step77FrontOut : WindowBank := ⟨s6Step77ExitFOut,s6Step77ExitGOut,s6Step77ExitFvOut,s6Step77ExitGvOut⟩

private def s6Step77CompleteOut : WindowBank := s6Step77FrontOut.repacked s6Step77CompleteMoves

private def s6Step77EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step77EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step77EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step77EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step77EarlyControlPositiveArena,[794],s6Step77EarlyControlEqualityArena,[780],⟨⟨860,false⟩,[⟨⟨794,false⟩,780⟩]⟩⟩

private def s6Step77EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step77EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step77EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step77EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,853),(854,855),(856,860),(861,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step77EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step77EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step77EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,807⟩,⟨⟨772,false⟩,862⟩,⟨⟨771,false⟩,869⟩,⟨⟨770,false⟩,877⟩,⟨⟨769,false⟩,855⟩]⟩

private def s6Step77EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step77EarlyControlZeroArena,s6Step77EarlyControlZeroPlan,s6Step77EarlyControlClassPlan,s6Step77EarlyControlFlagArena,s6Step77EarlyControlFittedArena,s6Step77EarlyControlHistoryArena,s6Step77EarlyControlSigmaArena,s6Step77EarlyControlOutputArena,s6Step77EarlyControlLog⟩

private def s6Step77CounterWork : List Wire := [794, 780, 803, 922]

private theorem s6Step77Counter_bounded : s6Step77CounterWork.toFinset⊆arenaWires := by norm_num [s6Step77CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step77HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step77CounterDuring : Arena := ⟨s6Step77HeadFvAfter.live∪s6Step77CounterWork.toFinset,Finset.union_subset s6Step77HeadFvAfter.bounded s6Step77Counter_bounded⟩

private def s6Step77EntryFFresh : List Wire := []

private def s6Step77EntryFvFresh : List Wire := []

private def s6Step77EntryGFresh : List Wire := []

private def s6Step77EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step77EntryGvFresh : List Wire := [898]

private def s6Step77ExitFExtra : List Wire := [485, 877]

private def s6Step77ExitGExtra : List Wire := [229, 855]

private def s6Step77ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,229),(230,485),(486,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step77ExitGvExtra : List Wire := [869]

private def s6Step77Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step77Add0Work : List Wire := [803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step77Add0_bounded : s6Step77Add0Work.toFinset⊆arenaWires := by
  have h : s6Step77Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step77Add0During : Arena := ⟨s6Step77Add0Arena.live∪s6Step77Add0Work.toFinset,Finset.union_subset s6Step77Add0Arena.bounded s6Step77Add0_bounded⟩

private def s6Step77Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step77Add1Work : List Wire := [803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896]

private theorem s6Step77Add1_bounded : s6Step77Add1Work.toFinset⊆arenaWires := by
  have h : s6Step77Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step77Add1During : Arena := ⟨s6Step77Add1Arena.live∪s6Step77Add1Work.toFinset,Finset.union_subset s6Step77Add1Arena.bounded s6Step77Add1_bounded⟩

private def s6Step77F4FlagArena : Arena := ⟨s6Step77HeadFvAfter.live∪{794},Finset.union_subset s6Step77HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step77F4Plan : HmrHybridF4Plan := ⟨s6Step77F4FlagArena,[794],s6Step77Add0Arena,[780],s6Step77Add0During,s6Step77Add0Work,s6Step77Add1During,s6Step77Add1Work⟩

private def s6Step77HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 877],795⟩

private def s6Step77HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843],776⟩

private def s6Step77HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 855],777⟩

private def s6Step77HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 869],775⟩

private def s6Step77FrontHead : WindowBank := ⟨s6Step77HeadFOut,s6Step77HeadGOut,s6Step77HeadFvOut,s6Step77HeadGvOut⟩

private def s6Step77EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485],795⟩

private def s6Step77EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839],776⟩

private def s6Step77EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229],777⟩

private def s6Step77EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898],775⟩

private def s6Step77FrontPair : WindowBank := ⟨s6Step77EntryFOut,s6Step77EntryGOut,s6Step77EntryFvOut,s6Step77EntryGvOut⟩

private def s6Step77FrontSigmaArena : Arena := ⟨s6Step77EntryGvAfter.live∪{860},Finset.union_subset s6Step77EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step77HeadFFresh : List Wire := [877]

private def s6Step77HeadFvFresh : List Wire := [843]

private def s6Step77HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step77HeadGFresh : List Wire := [855]

private def s6Step77HeadGvFresh : List Wire := [869]

private def s6Step77FrontPlan : HmrSourceFront := ⟨s6Step77EntryGvAfter,s6Step77FrontPair,(growRow 795 s6Step77EntryFFresh ++ (growRow 777 s6Step77EntryGFresh ++ (growRow 776 s6Step77EntryFvFresh ++ (growRow 775 s6Step77EntryGvFresh ++ [])))),s6Step77FrontSigmaArena,[860],s6Step77HeadGBefore,[853],
  s6Step77HeadFvAfter,s6Step77FrontHead,(growRow 777 s6Step77HeadGFresh ++ (growRow 795 s6Step77HeadFFresh ++ (growRow 775 s6Step77HeadGvFresh ++ (growRow 776 s6Step77HeadFvFresh ++ [])))),s6Step77F4Plan,s6Step77CounterDuring,s6Step77CounterWork,s6Step77ExitGvAfter,s6Step77FrontOut,(shrinkRow 777 s6Step77ExitGExtra ++ (shrinkRow 795 s6Step77ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step77ExitGvExtra ++ []))))⟩

private def s6Step77CompletePlan : HmrEarlyStepPlan := ⟨s6Step77FrontPlan,s6Step77EarlyControlArena,s6Step77EarlyControlPlan,s6Step77CompleteMoves⟩

private theorem s6Step77Complete_apart : List.Disjoint (s6Step77CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [860, 853, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] := by
  have nd : ((s6Step77CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[860, 853, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step77Complete_owned : (s6Step77CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step77EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step77EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step77CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,485),(486,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step77CompleteRelocationMove0Borrowed : Arena := ⟨s6Step77ExitGvAfter.live∪{229},Finset.union_subset s6Step77ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step77CompleteRelocationMove1Borrowed : Arena := ⟨s6Step77CompleteRelocationMove0After.live∪{485},Finset.union_subset s6Step77CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step77CompleteRelocation_move0_owned : 862∈s6Step77ExitGvAfter.live := by norm_num [s6Step77ExitGvAfter,arenaWires]

private theorem s6Step77CompleteRelocation_move0_reserve : s6Step77ExitGvAfter.reserve {229}=some s6Step77CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step77ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step77CompleteRelocation_move0_retire : s6Step77CompleteRelocationMove0Borrowed.retireSet {862}=s6Step77CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step77CompleteRelocationMove0Borrowed s6Step77CompleteRelocationMove0After {862}
  change s6Step77CompleteRelocationMove0After.live=(s6Step77ExitGvAfter.live∪{229})\{862}
  apply hmrArena_update_of_filter_check s6Step77ExitGvAfter s6Step77CompleteRelocationMove0After (fun q => ([(0,229),(230,485),(486,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,485),(486,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [229] [862] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step77CompleteRelocation_move1_owned : 807∈s6Step77CompleteRelocationMove0After.live := by norm_num [s6Step77CompleteRelocationMove0After,arenaWires]

private theorem s6Step77CompleteRelocation_move1_reserve : s6Step77CompleteRelocationMove0After.reserve {485}=some s6Step77CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step77CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step77CompleteRelocation_move1_retire : s6Step77CompleteRelocationMove1Borrowed.retireSet {807}=s6Step77EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step77CompleteRelocationMove1Borrowed s6Step77EarlyControlArena {807}
  change s6Step77EarlyControlArena.live=(s6Step77CompleteRelocationMove0After.live∪{485})\{807}
  apply hmrArena_update_of_filter_check s6Step77CompleteRelocationMove0After s6Step77EarlyControlArena (fun q => ([(0,485),(486,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [485] [807] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step77CompleteRelocation_checked : s6Step77ExitGvAfter.checkRepack [(862,229),(807,485)]=some s6Step77EarlyControlArena := by
  have tail2 : s6Step77EarlyControlArena.checkRepack []=some s6Step77EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step77CompleteRelocationMove0After s6Step77CompleteRelocationMove1Borrowed s6Step77EarlyControlArena s6Step77EarlyControlArena 807 485 []
    s6Step77CompleteRelocation_move1_owned s6Step77CompleteRelocation_move1_reserve s6Step77CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step77ExitGvAfter s6Step77CompleteRelocationMove0Borrowed s6Step77CompleteRelocationMove0After s6Step77EarlyControlArena 862 229 [(807,485)]
    s6Step77CompleteRelocation_move0_owned s6Step77CompleteRelocation_move0_reserve s6Step77CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step77Complete_repack : s6Step77ExitGvAfter.checkRepack s6Step77CompleteMoves=some s6Step77EarlyControlArena := by
  simpa only [s6Step77CompleteMoves] using s6Step77CompleteRelocation_checked

private theorem s6Step77EarlyControl_branchOwned : ([853] : List Wire).toFinset⊆s6Step77EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step77EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step77EarlyControl_branch : compileHmrBranchRetirement s6Step77EarlyControlSigmaArena 853=some s6Step77EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step77EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step77EarlyControlSigmaArena s6Step77EarlyControlOutputArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,853),(854,855),(856,860),(861,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [853] rfl rfl
    decide +kernel

private theorem s6Step77EarlyControl_classEqualityBorrow : s6Step77EarlyControlPositiveArena.checkBorrow (([860, 794] : List Wire).length-1) s6Step77EarlyControlLog.classWork=some s6Step77EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step77EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step77EarlyControlPositiveArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step77EarlyControlPositiveArena s6Step77EarlyControlEqualityArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step77EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step77EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step77EarlyControl_classEqualityOwned : ([860, 794] : List Wire).toFinset⊆s6Step77EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step77EarlyControlPositiveArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step77EarlyControl_classEquality : compileHmrEqualityLog s6Step77EarlyControlPositiveArena [860, 794] 0 s6Step77EarlyControlLog.classWork=some (s6Step77EarlyControlEqualityArena,s6Step77EarlyControlLog.classWork,s6Step77EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step77EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step77EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step77EarlyControl_classOwned : ([769, 855, 860] : List Wire).toFinset⊆s6Step77EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step77EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step77EarlyControl_positiveBorrow : s6Step77EarlyControlZeroArena.checkBorrow (1) s6Step77EarlyControlLog.positiveWork=some s6Step77EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step77EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step77EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step77EarlyControlZeroArena s6Step77EarlyControlPositiveArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step77EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step77EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step77EarlyControl_class : compileHmrSourceClassLog s6Step77EarlyControlZeroArena false 769 s6Step77EarlyControlZeroPlan.top 0 860 s6Step77EarlyControlLog.positiveWork s6Step77EarlyControlLog.classWork=some s6Step77EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step77EarlyControlClassPlan s6Step77EarlyControlZeroArena false 769 s6Step77EarlyControlZeroPlan.top 0 860
  constructor
  · decide +kernel
  · exact s6Step77EarlyControl_classOwned
  · exact s6Step77EarlyControl_positiveBorrow
  · exact s6Step77EarlyControl_classEquality

private theorem s6Step77EarlyControl_entryRecordOwned : ([853, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step77EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step77EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step77EarlyControl_entrySigmaOwned : ([860, 254] : List Wire).toFinset⊆s6Step77EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step77EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step77EarlyControl_fitBorrow : s6Step77EarlyControlFlagArena.checkBorrow ((30-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).length)) s6Step77EarlyControlLog.recordFresh=some s6Step77EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step77EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step77EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step77EarlyControlFittedArena,s6Step77EarlyControlFlagArena,s6Step77EarlyControlLog,arenaWires]

private theorem s6Step77EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step77EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step77EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step77EarlyControl_fit : compileHmrRecordGrowLog s6Step77EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step77EarlyControlLog.recordFresh=some s6Step77EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step77EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step77EarlyControl_fitBorrow

private theorem s6Step77EarlyControl_flagsBorrow : s6Step77EarlyControlEqualityArena.checkBorrow (6) s6Step77EarlyControlLog.flagWork=some s6Step77EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step77EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step77EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step77EarlyControlEqualityArena s6Step77EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step77EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step77EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step77EarlyControl_flagsOwned : ([780, 253, 252, 251] : List Wire).toFinset⊆s6Step77EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step77EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step77EarlyControl_flags : compileHmrFlagsLog s6Step77EarlyControlClassPlan.equalityArena s6Step77EarlyControlClassPlan.equality.top 253 252 251 s6Step77EarlyControlLog.flagWork=some s6Step77EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step77EarlyControl_flagsOwned⟩
  · exact s6Step77EarlyControl_flagsBorrow

private theorem s6Step77EarlyControl_historyBorrow : s6Step77EarlyControlArena.checkBorrow ((30-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).length)) s6Step77EarlyControlLog.recordFresh=some s6Step77EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step77EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step77EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step77EarlyControlArena s6Step77EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step77EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step77EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step77EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step77EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step77EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step77EarlyControl_history : compileHmrRecordGrowLog s6Step77EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step77EarlyControlLog.recordFresh=some s6Step77EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step77EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step77EarlyControl_historyBorrow

private theorem s6Step77EarlyControl_sigmaOwned : ([254, 860] : List Wire).toFinset⊆s6Step77EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step77EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step77EarlyControl_sigmaReleaseOwned : ([860] : List Wire).toFinset⊆s6Step77EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step77EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step77EarlyControl_sigmaRelease : s6Step77EarlyControlHistoryArena.release {860} (fun _ => false)=some s6Step77EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step77EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step77EarlyControlHistoryArena s6Step77EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [860] rfl rfl
    decide +kernel

private theorem s6Step77EarlyControl_sigma : compileHmrSigmaDropLog s6Step77EarlyControlHistoryArena false 0 0 254 860 []=some s6Step77EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step77EarlyControl_sigmaOwned⟩
  · exact s6Step77EarlyControl_sigmaRelease

private theorem s6Step77EarlyControl_zeroBorrow : s6Step77EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step77EarlyControlLog.zeroWork=some s6Step77EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step77EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step77EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step77EarlyControlArena s6Step77EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step77EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step77EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step77EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step77EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step77EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step77EarlyControl_zero : compileHmrEqualityLog s6Step77EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step77EarlyControlLog.zeroWork=some (s6Step77EarlyControlZeroArena,s6Step77EarlyControlLog.zeroWork,s6Step77EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step77EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step77EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step77EarlyControl_logged : s6Step77EarlyControlPlan.Logged s6Step77EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 860 254 253 252 251 853 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step77EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step77EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step77EarlyControl_zero
  · exact s6Step77EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step77EarlyControl_flags
  · exact s6Step77EarlyControl_fit
  · exact s6Step77EarlyControl_history
  · exact s6Step77EarlyControl_sigma
  · exact s6Step77EarlyControl_branch

private theorem s6Step77EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step77EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 860 254 253 252 251 853 30 s6Step77EarlyControlLog=some s6Step77EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step77EarlyControlPlan s6Step77EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 860 254 253 252 251 853 30 s6Step77EarlyControl_logged

private def s6Step77EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step77EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485],795⟩

private def s6Step77EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839],776⟩

private def s6Step77EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229],777⟩

private def s6Step77EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822],775⟩

private def s6Step77FrontBank : WindowBank := ⟨s6Step77EntryFRow,s6Step77EntryGRow,s6Step77EntryFvRow,s6Step77EntryGvRow⟩

private def s6Step77Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 877, 795]

private def s6Step77Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 855, 777]

private def s6Step77Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 776]

private def s6Step77Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 869, 775]

private theorem s6Step77Counter_apart : Disjoint s6Step77HeadFvAfter.live s6Step77CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step77HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step77Counter_borrowed : s6Step77HeadFvAfter.checkBorrow 4 s6Step77CounterWork=some s6Step77CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step77HeadFvAfter s6Step77CounterDuring s6Step77CounterWork.toFinset s6Step77Counter_bounded s6Step77Counter_apart rfl

private theorem s6Step77Counter_owned : (860::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step77HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step77HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step77Counter_checked : compileHmrCounterStepLog s6Step77HeadFvAfter true 860 [774, 773, 772, 771, 770, 769] s6Step77CounterWork=some s6Step77CounterDuring := by
  have owned : ∀q∈860::[774, 773, 772, 771, 770, 769],q∈s6Step77HeadFvAfter.live := fun q hq => s6Step77Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step77Counter_borrowed

private def s6Step77EntryFAfter : Arena := s6Step77EntryFBefore

private theorem s6Step77EntryBank_incomingDistinct : ([s6Step77EntryFRow,s6Step77EntryGRow,s6Step77EntryFvRow,s6Step77EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step77EntryF_Incoming : rowsOwned s6Step77EntryFBefore [s6Step77EntryFRow,s6Step77EntryGRow,s6Step77EntryFvRow,s6Step77EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step77EntryFRow,s6Step77EntryGRow,s6Step77EntryFvRow,s6Step77EntryGvRow] 0 s6Step77EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step77EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step77EntryBank_outgoingOwned : rowsOwned s6Step77EntryGvAfter [s6Step77EntryFOut,s6Step77EntryGOut,s6Step77EntryFvOut,s6Step77EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step77EntryGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step77EntryF_Outgoing : rowsOwned s6Step77EntryGvAfter [s6Step77EntryFOut,s6Step77EntryGOut,s6Step77EntryFvOut,s6Step77EntryGvOut] :=
  hmrRows_owned_drop s6Step77EntryGvAfter [s6Step77EntryFOut,s6Step77EntryGOut,s6Step77EntryFvOut,s6Step77EntryGvOut] 0 s6Step77EntryBank_outgoingOwned

private theorem s6Step77EntryF_distinct : (s6Step77EntryFRow.sign::s6Step77EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step77EntryF_owned : (s6Step77EntryFRow.sign::s6Step77EntryFRow.payload).toFinset⊆s6Step77EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step77EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step77EntryF_reserved : s6Step77EntryFBefore.reserve s6Step77EntryFFresh.toFinset=some s6Step77EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step77EntryFFresh,arenaWires]
  · norm_num [s6Step77EntryFBefore,s6Step77EntryFFresh,arenaWires]
  · simp only [s6Step77EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step77EntryF_checked : planRowResizeLog s6Step77EntryFBefore s6Step77EntryFRow 230 s6Step77EntryFFresh=
    some (s6Step77EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485],795⟩,growRow 795 s6Step77EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step77EntryFBefore s6Step77EntryFAfter s6Step77EntryFRow 230 s6Step77EntryFFresh
    s6Step77EntryF_distinct s6Step77EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step77EntryF_reserved
  have rowEq : WindowRow.mk (s6Step77EntryFRow.payload++s6Step77EntryFFresh) s6Step77EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step77EntryFvAfter : Arena := s6Step77EntryFBefore

private def s6Step77EntryFvBefore : Arena := s6Step77EntryFBefore

private theorem s6Step77EntryFv_Incoming : rowsOwned s6Step77EntryFvBefore [s6Step77EntryFvRow,s6Step77EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step77EntryFRow,s6Step77EntryGRow,s6Step77EntryFvRow,s6Step77EntryGvRow] 2 s6Step77EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step77EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step77EntryFv_Outgoing : rowsOwned s6Step77EntryGvAfter [s6Step77EntryFvOut,s6Step77EntryGvOut] :=
  hmrRows_owned_drop s6Step77EntryGvAfter [s6Step77EntryFOut,s6Step77EntryGOut,s6Step77EntryFvOut,s6Step77EntryGvOut] 2 s6Step77EntryBank_outgoingOwned

private theorem s6Step77EntryFv_distinct : (s6Step77EntryFvRow.sign::s6Step77EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step77EntryFv_owned : (s6Step77EntryFvRow.sign::s6Step77EntryFvRow.payload).toFinset⊆s6Step77EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step77EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step77EntryFv_reserved : s6Step77EntryFvBefore.reserve s6Step77EntryFvFresh.toFinset=some s6Step77EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step77EntryFvFresh,arenaWires]
  · norm_num [s6Step77EntryFvBefore,s6Step77EntryFBefore,s6Step77EntryFvFresh,arenaWires]
  · simp only [s6Step77EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step77EntryFv_checked : planRowResizeLog s6Step77EntryFvBefore s6Step77EntryFvRow 52 s6Step77EntryFvFresh=
    some (s6Step77EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839],776⟩,growRow 776 s6Step77EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step77EntryFvBefore s6Step77EntryFvAfter s6Step77EntryFvRow 52 s6Step77EntryFvFresh
    s6Step77EntryFv_distinct s6Step77EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step77EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step77EntryFvRow.payload++s6Step77EntryFvFresh) s6Step77EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step77EntryGAfter : Arena := s6Step77EntryFBefore

private def s6Step77EntryGBefore : Arena := s6Step77EntryFBefore

private theorem s6Step77EntryG_Incoming : rowsOwned s6Step77EntryGBefore [s6Step77EntryGRow,s6Step77EntryFvRow,s6Step77EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step77EntryFRow,s6Step77EntryGRow,s6Step77EntryFvRow,s6Step77EntryGvRow] 1 s6Step77EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step77EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step77EntryG_Outgoing : rowsOwned s6Step77EntryGvAfter [s6Step77EntryGOut,s6Step77EntryFvOut,s6Step77EntryGvOut] :=
  hmrRows_owned_drop s6Step77EntryGvAfter [s6Step77EntryFOut,s6Step77EntryGOut,s6Step77EntryFvOut,s6Step77EntryGvOut] 1 s6Step77EntryBank_outgoingOwned

private theorem s6Step77EntryG_distinct : (s6Step77EntryGRow.sign::s6Step77EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step77EntryG_owned : (s6Step77EntryGRow.sign::s6Step77EntryGRow.payload).toFinset⊆s6Step77EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step77EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step77EntryG_reserved : s6Step77EntryGBefore.reserve s6Step77EntryGFresh.toFinset=some s6Step77EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step77EntryGFresh,arenaWires]
  · norm_num [s6Step77EntryGBefore,s6Step77EntryFBefore,s6Step77EntryGFresh,arenaWires]
  · simp only [s6Step77EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step77EntryG_checked : planRowResizeLog s6Step77EntryGBefore s6Step77EntryGRow 230 s6Step77EntryGFresh=
    some (s6Step77EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229],777⟩,growRow 777 s6Step77EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step77EntryGBefore s6Step77EntryGAfter s6Step77EntryGRow 230 s6Step77EntryGFresh
    s6Step77EntryG_distinct s6Step77EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step77EntryG_reserved
  have rowEq : WindowRow.mk (s6Step77EntryGRow.payload++s6Step77EntryGFresh) s6Step77EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step77EntryGvBefore : Arena := s6Step77EntryFBefore

private theorem s6Step77EntryGv_Incoming : rowsOwned s6Step77EntryGvBefore [s6Step77EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step77EntryFRow,s6Step77EntryGRow,s6Step77EntryFvRow,s6Step77EntryGvRow] 3 s6Step77EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step77EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step77EntryGv_Outgoing : rowsOwned s6Step77EntryGvAfter [s6Step77EntryGvOut] :=
  hmrRows_owned_drop s6Step77EntryGvAfter [s6Step77EntryFOut,s6Step77EntryGOut,s6Step77EntryFvOut,s6Step77EntryGvOut] 3 s6Step77EntryBank_outgoingOwned

private theorem s6Step77EntryGv_distinct : (s6Step77EntryGvRow.sign::s6Step77EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step77EntryGv_owned : (s6Step77EntryGvRow.sign::s6Step77EntryGvRow.payload).toFinset⊆s6Step77EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step77EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step77EntryGv_reserved : s6Step77EntryGvBefore.reserve s6Step77EntryGvFresh.toFinset=some s6Step77EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step77EntryGvFresh,arenaWires]
  · norm_num [s6Step77EntryGvBefore,s6Step77EntryFBefore,s6Step77EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step77EntryGvBefore s6Step77EntryGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step77EntryGvFresh rfl rfl
    · norm_num [s6Step77EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step77EntryGv_checked : planRowResizeLog s6Step77EntryGvBefore s6Step77EntryGvRow 52 s6Step77EntryGvFresh=
    some (s6Step77EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898],775⟩,growRow 775 s6Step77EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step77EntryGvBefore s6Step77EntryGvAfter s6Step77EntryGvRow 52 s6Step77EntryGvFresh
    s6Step77EntryGv_distinct s6Step77EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step77EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step77EntryGvRow.payload++s6Step77EntryGvFresh) s6Step77EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step77EntryBank_rows : planWindowRowsLog s6Step77EntryFBefore [(s6Step77EntryFRow,230),(s6Step77EntryGRow,230),(s6Step77EntryFvRow,52),(s6Step77EntryGvRow,52)] [s6Step77EntryFFresh,s6Step77EntryGFresh,s6Step77EntryFvFresh,s6Step77EntryGvFresh]=
    some (s6Step77EntryGvAfter,[s6Step77EntryFOut,s6Step77EntryGOut,s6Step77EntryFvOut,s6Step77EntryGvOut],(growRow 795 s6Step77EntryFFresh ++ (growRow 777 s6Step77EntryGFresh ++ (growRow 776 s6Step77EntryFvFresh ++ (growRow 775 s6Step77EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step77EntryGvAfter [] []=some (s6Step77EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step77EntryGvBefore s6Step77EntryGvAfter s6Step77EntryGvAfter
    s6Step77EntryGvRow s6Step77EntryGvOut 52 s6Step77EntryGvFresh [] [] []
    (growRow 775 s6Step77EntryGvFresh) ([]) s6Step77EntryGv_Incoming s6Step77EntryGv_checked h4 s6Step77EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step77EntryFvBefore s6Step77EntryFvAfter s6Step77EntryGvAfter
    s6Step77EntryFvRow s6Step77EntryFvOut 52 s6Step77EntryFvFresh [(s6Step77EntryGvRow,52)] [s6Step77EntryGvFresh] [s6Step77EntryGvOut]
    (growRow 776 s6Step77EntryFvFresh) ((growRow 775 s6Step77EntryGvFresh ++ [])) s6Step77EntryFv_Incoming s6Step77EntryFv_checked h3 s6Step77EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step77EntryGBefore s6Step77EntryGAfter s6Step77EntryGvAfter
    s6Step77EntryGRow s6Step77EntryGOut 230 s6Step77EntryGFresh [(s6Step77EntryFvRow,52),(s6Step77EntryGvRow,52)] [s6Step77EntryFvFresh,s6Step77EntryGvFresh] [s6Step77EntryFvOut,s6Step77EntryGvOut]
    (growRow 777 s6Step77EntryGFresh) ((growRow 776 s6Step77EntryFvFresh ++ (growRow 775 s6Step77EntryGvFresh ++ []))) s6Step77EntryG_Incoming s6Step77EntryG_checked h2 s6Step77EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step77EntryFBefore s6Step77EntryFAfter s6Step77EntryGvAfter
    s6Step77EntryFRow s6Step77EntryFOut 230 s6Step77EntryFFresh [(s6Step77EntryGRow,230),(s6Step77EntryFvRow,52),(s6Step77EntryGvRow,52)] [s6Step77EntryGFresh,s6Step77EntryFvFresh,s6Step77EntryGvFresh] [s6Step77EntryGOut,s6Step77EntryFvOut,s6Step77EntryGvOut]
    (growRow 795 s6Step77EntryFFresh) ((growRow 777 s6Step77EntryGFresh ++ (growRow 776 s6Step77EntryFvFresh ++ (growRow 775 s6Step77EntryGvFresh ++ [])))) s6Step77EntryF_Incoming s6Step77EntryF_checked h1 s6Step77EntryF_Outgoing
  exact h0

private theorem s6Step77EntryBank_checked : compileHmrBankResizeLog .entry s6Step77EntryFBefore ⟨s6Step77EntryFRow,s6Step77EntryGRow,s6Step77EntryFvRow,s6Step77EntryGvRow⟩ ⟨230,230,52,52⟩ [s6Step77EntryFFresh,s6Step77EntryGFresh,s6Step77EntryFvFresh,s6Step77EntryGvFresh]=
    some (s6Step77EntryGvAfter,⟨s6Step77EntryFOut,s6Step77EntryGOut,s6Step77EntryFvOut,s6Step77EntryGvOut⟩,(growRow 795 s6Step77EntryFFresh ++ (growRow 777 s6Step77EntryGFresh ++ (growRow 776 s6Step77EntryFvFresh ++ (growRow 775 s6Step77EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step77EntryBank_rows]
  rfl

private def s6Step77ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,229),(230,485),(486,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step77ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,229),(230,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step77ExitFBefore : Arena := s6Step77ExitGAfter

private def s6Step77ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 877],795⟩

private def s6Step77ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843],776⟩

private def s6Step77ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 855],777⟩

private def s6Step77ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 869],775⟩

private theorem s6Step77ExitBank_incomingDistinct : ([s6Step77ExitGRow,s6Step77ExitFRow,s6Step77ExitFvRow,s6Step77ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step77ExitF_Incoming : rowsOwned s6Step77ExitFBefore [s6Step77ExitFRow,s6Step77ExitFvRow,s6Step77ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step77ExitGRow,s6Step77ExitFRow,s6Step77ExitFvRow,s6Step77ExitGvRow] 1 s6Step77ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step77ExitFBefore (fun q => ([(0,229),(230,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step77ExitBank_outgoingOwned : rowsOwned s6Step77ExitGvAfter [s6Step77ExitGOut,s6Step77ExitFOut,s6Step77ExitFvOut,s6Step77ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step77ExitGvAfter (fun q => ([(0,229),(230,485),(486,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step77ExitF_Outgoing : rowsOwned s6Step77ExitGvAfter [s6Step77ExitFOut,s6Step77ExitFvOut,s6Step77ExitGvOut] :=
  hmrRows_owned_drop s6Step77ExitGvAfter [s6Step77ExitGOut,s6Step77ExitFOut,s6Step77ExitFvOut,s6Step77ExitGvOut] 1 s6Step77ExitBank_outgoingOwned

private theorem s6Step77ExitF_distinct : (s6Step77ExitFRow.sign::s6Step77ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step77ExitF_owned : (s6Step77ExitFRow.sign::s6Step77ExitFRow.payload).toFinset⊆s6Step77ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step77ExitFBefore (fun q => ([(0,229),(230,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step77ExitF_retired : s6Step77ExitFBefore.retireSet s6Step77ExitFExtra.toFinset=s6Step77ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step77ExitFBefore s6Step77ExitFAfter s6Step77ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step77ExitFBefore s6Step77ExitFAfter (fun q => ([(0,229),(230,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,229),(230,485),(486,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step77ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step77ExitF_checked : planRowResizeLog s6Step77ExitFBefore s6Step77ExitFRow 229 []=
    some (s6Step77ExitFAfter,s6Step77ExitFOut,shrinkRow 795 s6Step77ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step77ExitFBefore s6Step77ExitFRow 229 s6Step77ExitF_distinct s6Step77ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step77ExitFRow.payload.take 229) s6Step77ExitFRow.sign=s6Step77ExitFOut := by decide +kernel
  have hi : s6Step77ExitFRow.payload.drop 229=s6Step77ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step77ExitF_retired] at result
  exact result

private def s6Step77ExitFvAfter : Arena := s6Step77ExitFAfter

private def s6Step77ExitFvBefore : Arena := s6Step77ExitFAfter

private theorem s6Step77ExitFv_Incoming : rowsOwned s6Step77ExitFvBefore [s6Step77ExitFvRow,s6Step77ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step77ExitGRow,s6Step77ExitFRow,s6Step77ExitFvRow,s6Step77ExitGvRow] 2 s6Step77ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step77ExitFvBefore (fun q => ([(0,229),(230,485),(486,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step77ExitFv_Outgoing : rowsOwned s6Step77ExitGvAfter [s6Step77ExitFvOut,s6Step77ExitGvOut] :=
  hmrRows_owned_drop s6Step77ExitGvAfter [s6Step77ExitGOut,s6Step77ExitFOut,s6Step77ExitFvOut,s6Step77ExitGvOut] 2 s6Step77ExitBank_outgoingOwned

private theorem s6Step77ExitFv_distinct : (s6Step77ExitFvRow.sign::s6Step77ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step77ExitFv_owned : (s6Step77ExitFvRow.sign::s6Step77ExitFvRow.payload).toFinset⊆s6Step77ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step77ExitFvBefore (fun q => ([(0,229),(230,485),(486,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step77ExitFv_reserved : s6Step77ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step77ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step77ExitFv_checked : planRowResizeLog s6Step77ExitFvBefore s6Step77ExitFvRow 53 []=
    some (s6Step77ExitFvAfter,s6Step77ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step77ExitFvBefore s6Step77ExitFvAfter s6Step77ExitFvRow 53 []
    s6Step77ExitFv_distinct s6Step77ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step77ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step77ExitFvRow.payload++[]) s6Step77ExitFvRow.sign=s6Step77ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step77ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step77ExitG_Incoming : rowsOwned s6Step77ExitGBefore [s6Step77ExitGRow,s6Step77ExitFRow,s6Step77ExitFvRow,s6Step77ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step77ExitGRow,s6Step77ExitFRow,s6Step77ExitFvRow,s6Step77ExitGvRow] 0 s6Step77ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step77ExitGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step77ExitG_Outgoing : rowsOwned s6Step77ExitGvAfter [s6Step77ExitGOut,s6Step77ExitFOut,s6Step77ExitFvOut,s6Step77ExitGvOut] :=
  hmrRows_owned_drop s6Step77ExitGvAfter [s6Step77ExitGOut,s6Step77ExitFOut,s6Step77ExitFvOut,s6Step77ExitGvOut] 0 s6Step77ExitBank_outgoingOwned

private theorem s6Step77ExitG_distinct : (s6Step77ExitGRow.sign::s6Step77ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step77ExitG_owned : (s6Step77ExitGRow.sign::s6Step77ExitGRow.payload).toFinset⊆s6Step77ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step77ExitGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step77ExitG_retired : s6Step77ExitGBefore.retireSet s6Step77ExitGExtra.toFinset=s6Step77ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step77ExitGBefore s6Step77ExitGAfter s6Step77ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step77ExitGBefore s6Step77ExitGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,229),(230,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step77ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step77ExitG_checked : planRowResizeLog s6Step77ExitGBefore s6Step77ExitGRow 229 []=
    some (s6Step77ExitGAfter,s6Step77ExitGOut,shrinkRow 777 s6Step77ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step77ExitGBefore s6Step77ExitGRow 229 s6Step77ExitG_distinct s6Step77ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step77ExitGRow.payload.take 229) s6Step77ExitGRow.sign=s6Step77ExitGOut := by decide +kernel
  have hi : s6Step77ExitGRow.payload.drop 229=s6Step77ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step77ExitG_retired] at result
  exact result

private def s6Step77ExitGvBefore : Arena := s6Step77ExitFAfter

private theorem s6Step77ExitGv_Incoming : rowsOwned s6Step77ExitGvBefore [s6Step77ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step77ExitGRow,s6Step77ExitFRow,s6Step77ExitFvRow,s6Step77ExitGvRow] 3 s6Step77ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step77ExitGvBefore (fun q => ([(0,229),(230,485),(486,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step77ExitGv_Outgoing : rowsOwned s6Step77ExitGvAfter [s6Step77ExitGvOut] :=
  hmrRows_owned_drop s6Step77ExitGvAfter [s6Step77ExitGOut,s6Step77ExitFOut,s6Step77ExitFvOut,s6Step77ExitGvOut] 3 s6Step77ExitBank_outgoingOwned

private theorem s6Step77ExitGv_distinct : (s6Step77ExitGvRow.sign::s6Step77ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step77ExitGv_owned : (s6Step77ExitGvRow.sign::s6Step77ExitGvRow.payload).toFinset⊆s6Step77ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step77ExitGvBefore (fun q => ([(0,229),(230,485),(486,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step77ExitGv_retired : s6Step77ExitGvBefore.retireSet s6Step77ExitGvExtra.toFinset=s6Step77ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step77ExitGvBefore s6Step77ExitGvAfter s6Step77ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step77ExitGvBefore s6Step77ExitGvAfter (fun q => ([(0,229),(230,485),(486,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,229),(230,485),(486,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step77ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step77ExitGv_checked : planRowResizeLog s6Step77ExitGvBefore s6Step77ExitGvRow 52 []=
    some (s6Step77ExitGvAfter,s6Step77ExitGvOut,shrinkRow 775 s6Step77ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step77ExitGvBefore s6Step77ExitGvRow 52 s6Step77ExitGv_distinct s6Step77ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step77ExitGvRow.payload.take 52) s6Step77ExitGvRow.sign=s6Step77ExitGvOut := by decide +kernel
  have hi : s6Step77ExitGvRow.payload.drop 52=s6Step77ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step77ExitGv_retired] at result
  exact result

private theorem s6Step77ExitBank_rows : planWindowRowsLog s6Step77ExitGBefore [(s6Step77ExitGRow,229),(s6Step77ExitFRow,229),(s6Step77ExitFvRow,53),(s6Step77ExitGvRow,52)] [[],[],[],[]]=
    some (s6Step77ExitGvAfter,[s6Step77ExitGOut,s6Step77ExitFOut,s6Step77ExitFvOut,s6Step77ExitGvOut],(shrinkRow 777 s6Step77ExitGExtra ++ (shrinkRow 795 s6Step77ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step77ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step77ExitGvAfter [] []=some (s6Step77ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step77ExitGvBefore s6Step77ExitGvAfter s6Step77ExitGvAfter
    s6Step77ExitGvRow s6Step77ExitGvOut 52 [] [] [] []
    (shrinkRow 775 s6Step77ExitGvExtra) ([]) s6Step77ExitGv_Incoming s6Step77ExitGv_checked h4 s6Step77ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step77ExitFvBefore s6Step77ExitFvAfter s6Step77ExitGvAfter
    s6Step77ExitFvRow s6Step77ExitFvOut 53 [] [(s6Step77ExitGvRow,52)] [[]] [s6Step77ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step77ExitGvExtra ++ [])) s6Step77ExitFv_Incoming s6Step77ExitFv_checked h3 s6Step77ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step77ExitFBefore s6Step77ExitFAfter s6Step77ExitGvAfter
    s6Step77ExitFRow s6Step77ExitFOut 229 [] [(s6Step77ExitFvRow,53),(s6Step77ExitGvRow,52)] [[],[]] [s6Step77ExitFvOut,s6Step77ExitGvOut]
    (shrinkRow 795 s6Step77ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step77ExitGvExtra ++ []))) s6Step77ExitF_Incoming s6Step77ExitF_checked h2 s6Step77ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step77ExitGBefore s6Step77ExitGAfter s6Step77ExitGvAfter
    s6Step77ExitGRow s6Step77ExitGOut 229 [] [(s6Step77ExitFRow,229),(s6Step77ExitFvRow,53),(s6Step77ExitGvRow,52)] [[],[],[]] [s6Step77ExitFOut,s6Step77ExitFvOut,s6Step77ExitGvOut]
    (shrinkRow 777 s6Step77ExitGExtra) ((shrinkRow 795 s6Step77ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step77ExitGvExtra ++ [])))) s6Step77ExitG_Incoming s6Step77ExitG_checked h1 s6Step77ExitG_Outgoing
  exact h0

private theorem s6Step77ExitBank_checked : compileHmrBankResizeLog .exit s6Step77ExitGBefore ⟨s6Step77ExitFRow,s6Step77ExitGRow,s6Step77ExitFvRow,s6Step77ExitGvRow⟩ ⟨229,229,53,52⟩ [[],[],[],[]]=
    some (s6Step77ExitGvAfter,⟨s6Step77ExitFOut,s6Step77ExitGOut,s6Step77ExitFvOut,s6Step77ExitGvOut⟩,(shrinkRow 777 s6Step77ExitGExtra ++ (shrinkRow 795 s6Step77ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step77ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step77ExitBank_rows]
  rfl

private theorem s6Step77Add0_apart : Disjoint s6Step77Add0Arena.live s6Step77Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step77Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step77Add0_card : s6Step77Add0Arena.live.card=868 := by
  decide +kernel

private theorem s6Step77Add0_borrowed : s6Step77Add0Arena.checkBorrow (hmrHybridCount s6Step77Add0Arena s6Step77Add0B.length) s6Step77Add0Work=some s6Step77Add0During := by
  have len : s6Step77Add0Work.length=hmrHybridCount s6Step77Add0Arena s6Step77Add0B.length := by
    rw [hmrHybridCount,s6Step77Add0_card]
    decide +kernel
  have nd : s6Step77Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step77Add0Arena s6Step77Add0During s6Step77Add0Work.toFinset s6Step77Add0_bounded s6Step77Add0_apart rfl

private theorem s6Step77Add0_distinct : (794::853::780::(s6Step77Add0A++s6Step77Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step77Add0_owned : (794::853::780::(s6Step77Add0A++s6Step77Add0B)).toFinset⊆s6Step77Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step77Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step77Add0_checked : compileHmrHybridCinLog s6Step77Add0Arena 853 794 780 s6Step77Add0A s6Step77Add0B s6Step77Add0Work=some s6Step77Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step77Add0Arena s6Step77Add0During 853 794 780 s6Step77Add0A s6Step77Add0B s6Step77Add0Work
    (by decide +kernel) (by decide +kernel) s6Step77Add0_distinct
    (fun q hq => s6Step77Add0_owned (List.mem_toFinset.mpr hq)) s6Step77Add0_borrowed

private theorem s6Step77Add1_apart : Disjoint s6Step77Add1Arena.live s6Step77Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step77Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step77Add1_card : s6Step77Add1Arena.live.card=868 := by
  decide +kernel

private theorem s6Step77Add1_borrowed : s6Step77Add1Arena.checkBorrow (hmrHybridCount s6Step77Add1Arena s6Step77Add1B.length) s6Step77Add1Work=some s6Step77Add1During := by
  have len : s6Step77Add1Work.length=hmrHybridCount s6Step77Add1Arena s6Step77Add1B.length := by
    rw [hmrHybridCount,s6Step77Add1_card]
    decide +kernel
  have nd : s6Step77Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step77Add1Arena s6Step77Add1During s6Step77Add1Work.toFinset s6Step77Add1_bounded s6Step77Add1_apart rfl

private theorem s6Step77Add1_distinct : (794::853::780::(s6Step77Add1A++s6Step77Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step77Add1_owned : (794::853::780::(s6Step77Add1A++s6Step77Add1B)).toFinset⊆s6Step77Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step77Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step77Add1_checked : compileHmrHybridCinLog s6Step77Add1Arena 853 794 780 s6Step77Add1A s6Step77Add1B s6Step77Add1Work=some s6Step77Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step77Add1Arena s6Step77Add1During 853 794 780 s6Step77Add1A s6Step77Add1B s6Step77Add1Work
    (by decide +kernel) (by decide +kernel) s6Step77Add1_distinct
    (fun q hq => s6Step77Add1_owned (List.mem_toFinset.mpr hq)) s6Step77Add1_borrowed

private theorem s6Step77F4_apart : Disjoint (s6Step77Add0A++s6Step77Add0B).toFinset (s6Step77Add1A++s6Step77Add1B).toFinset := by
  have nd : ((s6Step77Add0A++s6Step77Add0B)++(s6Step77Add1A++s6Step77Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step77F4_carry : s6Step77F4FlagArena.checkBorrow 1 [780]=some s6Step77Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step77F4FlagArena,s6Step77HeadFvAfter,arenaWires]
  · change s6Step77Add0Arena.live=(s6Step77HeadFvAfter.live∪{794})∪{780}
    apply hmrArena_union_pair_of_filter_check s6Step77HeadFvAfter s6Step77Add0Arena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 794 780 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step77F4_distinct : (860::853::794::780::((s6Step77Add0A++s6Step77Add1A)++(s6Step77Add0B++s6Step77Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step77F4_flag : s6Step77HeadFvAfter.checkBorrow 1 [794]=some s6Step77F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step77HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step77F4_owned : (860::853::((s6Step77Add0A++s6Step77Add1A)++(s6Step77Add0B++s6Step77Add1B))).toFinset⊆s6Step77HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step77HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step77F4_checked : compileHmrHybridF4Log s6Step77HeadFvAfter 860 853 s6Step77Add0A s6Step77Add0B s6Step77Add1A s6Step77Add1B [794] [780] s6Step77Add0Work s6Step77Add1Work=some s6Step77F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step77HeadFvAfter s6Step77F4FlagArena s6Step77Add0Arena s6Step77Add0During s6Step77Add1During 860 853
    s6Step77Add0A s6Step77Add0B s6Step77Add1A s6Step77Add1B [794] [780] s6Step77Add0Work s6Step77Add1Work
    (fun q hq => s6Step77F4_owned (List.mem_toFinset.mpr hq)) s6Step77F4_flag s6Step77F4_carry
    s6Step77F4_distinct s6Step77F4_apart s6Step77Add0_checked s6Step77Add1_checked

private theorem s6Step77Front_branch : s6Step77FrontSigmaArena.checkBorrow 1 [853]=some s6Step77HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step77FrontSigmaArena,s6Step77EntryGvAfter,arenaWires]
  · change s6Step77HeadGBefore.live=(s6Step77EntryGvAfter.live∪{860})∪{853}
    apply hmrArena_union_pair_of_filter_check s6Step77EntryGvAfter s6Step77HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 860 853 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step77Front_entry : HmrFrontEntryValid s6Step77EntryFBefore s6Step77FrontBank 230 52 ⟨229,229,53,52⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step77FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step77EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step77EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step77FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step77Front_sigma : s6Step77EntryGvAfter.checkBorrow 1 [860]=some s6Step77FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step77EntryGvAfter,arenaWires]
  · rfl

private def s6Step77HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step77HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step77HeadFBefore : Arena := s6Step77HeadGAfter

private def s6Step77HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485],795⟩

private def s6Step77HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839],776⟩

private def s6Step77HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229],777⟩

private def s6Step77HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898],775⟩

private theorem s6Step77HeadBank_incomingDistinct : ([s6Step77HeadGRow,s6Step77HeadFRow,s6Step77HeadGvRow,s6Step77HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step77HeadF_Incoming : rowsOwned s6Step77HeadFBefore [s6Step77HeadFRow,s6Step77HeadGvRow,s6Step77HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step77HeadGRow,s6Step77HeadFRow,s6Step77HeadGvRow,s6Step77HeadFvRow] 1 s6Step77HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step77HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step77HeadBank_outgoingOwned : rowsOwned s6Step77HeadFvAfter [s6Step77HeadGOut,s6Step77HeadFOut,s6Step77HeadGvOut,s6Step77HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step77HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step77HeadF_Outgoing : rowsOwned s6Step77HeadFvAfter [s6Step77HeadFOut,s6Step77HeadGvOut,s6Step77HeadFvOut] :=
  hmrRows_owned_drop s6Step77HeadFvAfter [s6Step77HeadGOut,s6Step77HeadFOut,s6Step77HeadGvOut,s6Step77HeadFvOut] 1 s6Step77HeadBank_outgoingOwned

private theorem s6Step77HeadF_distinct : (s6Step77HeadFRow.sign::s6Step77HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step77HeadF_owned : (s6Step77HeadFRow.sign::s6Step77HeadFRow.payload).toFinset⊆s6Step77HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step77HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step77HeadF_reserved : s6Step77HeadFBefore.reserve s6Step77HeadFFresh.toFinset=some s6Step77HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step77HeadFFresh,arenaWires]
  · norm_num [s6Step77HeadFBefore,s6Step77HeadGAfter,s6Step77HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step77HeadFBefore s6Step77HeadFAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step77HeadFFresh rfl rfl
    · norm_num [s6Step77HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step77HeadF_checked : planRowResizeLog s6Step77HeadFBefore s6Step77HeadFRow 231 s6Step77HeadFFresh=
    some (s6Step77HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 877],795⟩,growRow 795 s6Step77HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step77HeadFBefore s6Step77HeadFAfter s6Step77HeadFRow 231 s6Step77HeadFFresh
    s6Step77HeadF_distinct s6Step77HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step77HeadF_reserved
  have rowEq : WindowRow.mk (s6Step77HeadFRow.payload++s6Step77HeadFFresh) s6Step77HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 877],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step77HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step77HeadFvBefore : Arena := s6Step77HeadGvAfter

private theorem s6Step77HeadFv_Incoming : rowsOwned s6Step77HeadFvBefore [s6Step77HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step77HeadGRow,s6Step77HeadFRow,s6Step77HeadGvRow,s6Step77HeadFvRow] 3 s6Step77HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step77HeadFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step77HeadFv_Outgoing : rowsOwned s6Step77HeadFvAfter [s6Step77HeadFvOut] :=
  hmrRows_owned_drop s6Step77HeadFvAfter [s6Step77HeadGOut,s6Step77HeadFOut,s6Step77HeadGvOut,s6Step77HeadFvOut] 3 s6Step77HeadBank_outgoingOwned

private theorem s6Step77HeadFv_distinct : (s6Step77HeadFvRow.sign::s6Step77HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step77HeadFv_owned : (s6Step77HeadFvRow.sign::s6Step77HeadFvRow.payload).toFinset⊆s6Step77HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step77HeadFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step77HeadFv_reserved : s6Step77HeadFvBefore.reserve s6Step77HeadFvFresh.toFinset=some s6Step77HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step77HeadFvFresh,arenaWires]
  · norm_num [s6Step77HeadFvBefore,s6Step77HeadGvAfter,s6Step77HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step77HeadFvBefore s6Step77HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step77HeadFvFresh rfl rfl
    · norm_num [s6Step77HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step77HeadFv_checked : planRowResizeLog s6Step77HeadFvBefore s6Step77HeadFvRow 53 s6Step77HeadFvFresh=
    some (s6Step77HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843],776⟩,growRow 776 s6Step77HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step77HeadFvBefore s6Step77HeadFvAfter s6Step77HeadFvRow 53 s6Step77HeadFvFresh
    s6Step77HeadFv_distinct s6Step77HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step77HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step77HeadFvRow.payload++s6Step77HeadFvFresh) s6Step77HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step77HeadG_Incoming : rowsOwned s6Step77HeadGBefore [s6Step77HeadGRow,s6Step77HeadFRow,s6Step77HeadGvRow,s6Step77HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step77HeadGRow,s6Step77HeadFRow,s6Step77HeadGvRow,s6Step77HeadFvRow] 0 s6Step77HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step77HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step77HeadG_Outgoing : rowsOwned s6Step77HeadFvAfter [s6Step77HeadGOut,s6Step77HeadFOut,s6Step77HeadGvOut,s6Step77HeadFvOut] :=
  hmrRows_owned_drop s6Step77HeadFvAfter [s6Step77HeadGOut,s6Step77HeadFOut,s6Step77HeadGvOut,s6Step77HeadFvOut] 0 s6Step77HeadBank_outgoingOwned

private theorem s6Step77HeadG_distinct : (s6Step77HeadGRow.sign::s6Step77HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step77HeadG_owned : (s6Step77HeadGRow.sign::s6Step77HeadGRow.payload).toFinset⊆s6Step77HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step77HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step77HeadG_reserved : s6Step77HeadGBefore.reserve s6Step77HeadGFresh.toFinset=some s6Step77HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step77HeadGFresh,arenaWires]
  · norm_num [s6Step77HeadGBefore,s6Step77HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step77HeadGBefore s6Step77HeadGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step77HeadGFresh rfl rfl
    · norm_num [s6Step77HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step77HeadG_checked : planRowResizeLog s6Step77HeadGBefore s6Step77HeadGRow 231 s6Step77HeadGFresh=
    some (s6Step77HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 855],777⟩,growRow 777 s6Step77HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step77HeadGBefore s6Step77HeadGAfter s6Step77HeadGRow 231 s6Step77HeadGFresh
    s6Step77HeadG_distinct s6Step77HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step77HeadG_reserved
  have rowEq : WindowRow.mk (s6Step77HeadGRow.payload++s6Step77HeadGFresh) s6Step77HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 855],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step77HeadGvBefore : Arena := s6Step77HeadFAfter

private theorem s6Step77HeadGv_Incoming : rowsOwned s6Step77HeadGvBefore [s6Step77HeadGvRow,s6Step77HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step77HeadGRow,s6Step77HeadFRow,s6Step77HeadGvRow,s6Step77HeadFvRow] 2 s6Step77HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step77HeadGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step77HeadGv_Outgoing : rowsOwned s6Step77HeadFvAfter [s6Step77HeadGvOut,s6Step77HeadFvOut] :=
  hmrRows_owned_drop s6Step77HeadFvAfter [s6Step77HeadGOut,s6Step77HeadFOut,s6Step77HeadGvOut,s6Step77HeadFvOut] 2 s6Step77HeadBank_outgoingOwned

private theorem s6Step77HeadGv_distinct : (s6Step77HeadGvRow.sign::s6Step77HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step77HeadGv_owned : (s6Step77HeadGvRow.sign::s6Step77HeadGvRow.payload).toFinset⊆s6Step77HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step77HeadGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step77HeadGv_reserved : s6Step77HeadGvBefore.reserve s6Step77HeadGvFresh.toFinset=some s6Step77HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step77HeadGvFresh,arenaWires]
  · norm_num [s6Step77HeadGvBefore,s6Step77HeadFAfter,s6Step77HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step77HeadGvBefore s6Step77HeadGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step77HeadGvFresh rfl rfl
    · norm_num [s6Step77HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step77HeadGv_checked : planRowResizeLog s6Step77HeadGvBefore s6Step77HeadGvRow 53 s6Step77HeadGvFresh=
    some (s6Step77HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 869],775⟩,growRow 775 s6Step77HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step77HeadGvBefore s6Step77HeadGvAfter s6Step77HeadGvRow 53 s6Step77HeadGvFresh
    s6Step77HeadGv_distinct s6Step77HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step77HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step77HeadGvRow.payload++s6Step77HeadGvFresh) s6Step77HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 869],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step77HeadBank_rows : planWindowRowsLog s6Step77HeadGBefore [(s6Step77HeadGRow,231),(s6Step77HeadFRow,231),(s6Step77HeadGvRow,53),(s6Step77HeadFvRow,53)] [s6Step77HeadGFresh,s6Step77HeadFFresh,s6Step77HeadGvFresh,s6Step77HeadFvFresh]=
    some (s6Step77HeadFvAfter,[s6Step77HeadGOut,s6Step77HeadFOut,s6Step77HeadGvOut,s6Step77HeadFvOut],(growRow 777 s6Step77HeadGFresh ++ (growRow 795 s6Step77HeadFFresh ++ (growRow 775 s6Step77HeadGvFresh ++ (growRow 776 s6Step77HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step77HeadFvAfter [] []=some (s6Step77HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step77HeadFvBefore s6Step77HeadFvAfter s6Step77HeadFvAfter
    s6Step77HeadFvRow s6Step77HeadFvOut 53 s6Step77HeadFvFresh [] [] []
    (growRow 776 s6Step77HeadFvFresh) ([]) s6Step77HeadFv_Incoming s6Step77HeadFv_checked h4 s6Step77HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step77HeadGvBefore s6Step77HeadGvAfter s6Step77HeadFvAfter
    s6Step77HeadGvRow s6Step77HeadGvOut 53 s6Step77HeadGvFresh [(s6Step77HeadFvRow,53)] [s6Step77HeadFvFresh] [s6Step77HeadFvOut]
    (growRow 775 s6Step77HeadGvFresh) ((growRow 776 s6Step77HeadFvFresh ++ [])) s6Step77HeadGv_Incoming s6Step77HeadGv_checked h3 s6Step77HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step77HeadFBefore s6Step77HeadFAfter s6Step77HeadFvAfter
    s6Step77HeadFRow s6Step77HeadFOut 231 s6Step77HeadFFresh [(s6Step77HeadGvRow,53),(s6Step77HeadFvRow,53)] [s6Step77HeadGvFresh,s6Step77HeadFvFresh] [s6Step77HeadGvOut,s6Step77HeadFvOut]
    (growRow 795 s6Step77HeadFFresh) ((growRow 775 s6Step77HeadGvFresh ++ (growRow 776 s6Step77HeadFvFresh ++ []))) s6Step77HeadF_Incoming s6Step77HeadF_checked h2 s6Step77HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step77HeadGBefore s6Step77HeadGAfter s6Step77HeadFvAfter
    s6Step77HeadGRow s6Step77HeadGOut 231 s6Step77HeadGFresh [(s6Step77HeadFRow,231),(s6Step77HeadGvRow,53),(s6Step77HeadFvRow,53)] [s6Step77HeadFFresh,s6Step77HeadGvFresh,s6Step77HeadFvFresh] [s6Step77HeadFOut,s6Step77HeadGvOut,s6Step77HeadFvOut]
    (growRow 777 s6Step77HeadGFresh) ((growRow 795 s6Step77HeadFFresh ++ (growRow 775 s6Step77HeadGvFresh ++ (growRow 776 s6Step77HeadFvFresh ++ [])))) s6Step77HeadG_Incoming s6Step77HeadG_checked h1 s6Step77HeadG_Outgoing
  exact h0

private theorem s6Step77HeadBank_checked : compileHmrBankResizeLog .headroom s6Step77HeadGBefore ⟨s6Step77HeadFRow,s6Step77HeadGRow,s6Step77HeadFvRow,s6Step77HeadGvRow⟩ ⟨231,231,53,53⟩ [s6Step77HeadGFresh,s6Step77HeadFFresh,s6Step77HeadGvFresh,s6Step77HeadFvFresh]=
    some (s6Step77HeadFvAfter,⟨s6Step77HeadFOut,s6Step77HeadGOut,s6Step77HeadFvOut,s6Step77HeadGvOut⟩,(growRow 777 s6Step77HeadGFresh ++ (growRow 795 s6Step77HeadFFresh ++ (growRow 775 s6Step77HeadGvFresh ++ (growRow 776 s6Step77HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step77HeadBank_rows]
  rfl

private theorem s6Step77Front_checked : compileHmrSourceFrontLog s6Step77EntryFBefore s6Step77FrontBank 230 52 ⟨229,229,53,52⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step77FrontLog=some s6Step77FrontPlan := by
  have pairEq : s6Step77FrontPair=⟨s6Step77HeadFRow,s6Step77HeadGRow,s6Step77HeadFvRow,s6Step77HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step77FrontHead=⟨s6Step77ExitFRow,s6Step77ExitGRow,s6Step77ExitFvRow,s6Step77ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step77Add0A=s6Step77FrontHead.f.wires := by decide +kernel
  have gEq : s6Step77Add0B=s6Step77FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step77Add1A=s6Step77FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step77Add1B=s6Step77FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step77EntryFBefore s6Step77FrontBank 230 52 ⟨229,229,53,52⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step77FrontLog s6Step77FrontPlan
  · exact s6Step77Front_entry
  · exact s6Step77EntryBank_checked
  · exact s6Step77Front_sigma
  · rfl
  · exact s6Step77Front_branch
  · rfl
  · simpa only [s6Step77FrontPlan,pairEq] using s6Step77HeadBank_checked
  · simpa only [s6Step77FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step77F4_checked
  · exact s6Step77Counter_checked
  · rfl
  · simpa only [s6Step77FrontPlan,headEq] using s6Step77ExitBank_checked

private theorem s6Step77Complete_explicit_checked : compileHmrEarlyStepLog s6Step77EntryFBefore s6Step77FrontBank 230 52 ⟨229,229,53,52⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step77CompleteLog=some s6Step77CompletePlan := by
  let Q := s6Step77EarlyControlPlan
  have hq := s6Step77EarlyControl_plan_checked
  have fv1 : s6Step77CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step77CompleteOut.fv.payload[2]?.getD s6Step77CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step77CompleteOut.fv.payload[3]?.getD s6Step77CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step77CompleteOut.fv.payload[4]?.getD s6Step77CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step77EntryFBefore s6Step77EarlyControlArena s6Step77FrontBank 230 52 ⟨229,229,53,52⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step77CompleteLog s6Step77FrontPlan Q
    s6Step77Front_checked s6Step77Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step77Complete_owned s6Step77Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step77EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 860 s6Step77CompleteOut.fv.second (s6Step77CompleteOut.fv.payload[2]?.getD s6Step77CompleteOut.fv.sign) (s6Step77CompleteOut.fv.payload[3]?.getD s6Step77CompleteOut.fv.sign) (s6Step77CompleteOut.fv.payload[4]?.getD s6Step77CompleteOut.fv.sign) 853 30 s6Step77EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep77Arena : Arena := s6Step77EntryFBefore
def s6PrivateStep77Bank : WindowBank := s6Step77FrontBank
def s6PrivateStep77Spec : HmrSourceWalkStepLog := ⟨230,52,⟨229,229,53,52⟩,30,.early s6Step77CompleteLog⟩
def s6PrivateStep77Plan : HmrSourceStepPlan := .early s6Step77CompletePlan
theorem s6PrivateStep77_source : s6PrivateStep77Spec=s6ObservedLogs64[13] := rfl
theorem s6PrivateStep77_checked : compileHmrSourceStepLog s6PrivateStep77Arena s6PrivateStep77Bank
    s6PrivateStep77Spec.fgWidth s6PrivateStep77Spec.vWidth s6PrivateStep77Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902]
    6 498 77 s6PrivateStep77Spec.need none s6PrivateStep77Spec.log=some s6PrivateStep77Plan := by
  change compileHmrSourceStepLog s6Step77EntryFBefore s6Step77FrontBank 230 52 ⟨229,229,53,52⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 6 498 77 30 none (.early s6Step77CompleteLog)=some (.early s6Step77CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 77<498)]
  rw [s6Step77Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
