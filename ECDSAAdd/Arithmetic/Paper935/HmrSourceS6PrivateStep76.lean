import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep74
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

private def s6Step76CompleteMoves : List (Wire × Wire) := [(853,486)]

private def s6Step76EarlyControlLog : HmrEarlyControlLog := ⟨[853, 855, 877, 869, 843],[794],[780],[803, 922, 879, 784, 891, 783],[]⟩

private def s6Step76FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [794], [], [855]],[[780], [843], [877], [869]],[[], [], [], []]⟩,[860],[898],[803],[922],[879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914],[803, 922, 879, 784]⟩

private def s6Step76CompleteLog : HmrEarlyStepLog := ⟨s6Step76FrontLog,s6Step76CompleteMoves,s6Step76EarlyControlLog⟩

private def s6Step76ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485],795⟩

private def s6Step76ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839],776⟩

private def s6Step76ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229],777⟩

private def s6Step76ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822],775⟩

private def s6Step76FrontOut : WindowBank := ⟨s6Step76ExitFOut,s6Step76ExitGOut,s6Step76ExitFvOut,s6Step76ExitGvOut⟩

private def s6Step76CompleteOut : WindowBank := s6Step76FrontOut.repacked s6Step76CompleteMoves

private def s6Step76EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step76EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step76EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step76EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step76EarlyControlPositiveArena,[794],s6Step76EarlyControlEqualityArena,[780],⟨⟨860,false⟩,[⟨⟨794,false⟩,780⟩]⟩⟩

private def s6Step76EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step76EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step76EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step76EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step76EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step76EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step76EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,853⟩,⟨⟨772,false⟩,855⟩,⟨⟨771,false⟩,877⟩,⟨⟨770,false⟩,869⟩,⟨⟨769,false⟩,843⟩]⟩

private def s6Step76EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step76EarlyControlZeroArena,s6Step76EarlyControlZeroPlan,s6Step76EarlyControlClassPlan,s6Step76EarlyControlFlagArena,s6Step76EarlyControlFittedArena,s6Step76EarlyControlHistoryArena,s6Step76EarlyControlSigmaArena,s6Step76EarlyControlOutputArena,s6Step76EarlyControlLog⟩

private def s6Step76CounterWork : List Wire := [803, 922, 879, 784]

private theorem s6Step76Counter_bounded : s6Step76CounterWork.toFinset⊆arenaWires := by norm_num [s6Step76CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step76HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step76CounterDuring : Arena := ⟨s6Step76HeadFvAfter.live∪s6Step76CounterWork.toFinset,Finset.union_subset s6Step76HeadFvAfter.bounded s6Step76Counter_bounded⟩

private def s6Step76EntryFFresh : List Wire := []

private def s6Step76EntryFvFresh : List Wire := []

private def s6Step76EntryGFresh : List Wire := [794]

private def s6Step76EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step76EntryGvFresh : List Wire := [855]

private def s6Step76ExitFExtra : List Wire := [486, 843]

private def s6Step76ExitFvExtra : List Wire := [869]

private def s6Step76ExitGExtra : List Wire := [794, 780]

private def s6Step76ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,486),(487,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step76ExitGvExtra : List Wire := [855, 877]

private def s6Step76Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step76Add0Work : List Wire := [879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step76Add0_bounded : s6Step76Add0Work.toFinset⊆arenaWires := by
  have h : s6Step76Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step76Add0During : Arena := ⟨s6Step76Add0Arena.live∪s6Step76Add0Work.toFinset,Finset.union_subset s6Step76Add0Arena.bounded s6Step76Add0_bounded⟩

private def s6Step76Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step76Add1Work : List Wire := [879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914]

private theorem s6Step76Add1_bounded : s6Step76Add1Work.toFinset⊆arenaWires := by
  have h : s6Step76Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step76Add1During : Arena := ⟨s6Step76Add1Arena.live∪s6Step76Add1Work.toFinset,Finset.union_subset s6Step76Add1Arena.bounded s6Step76Add1_bounded⟩

private def s6Step76F4FlagArena : Arena := ⟨s6Step76HeadFvAfter.live∪{803},Finset.union_subset s6Step76HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step76F4Plan : HmrHybridF4Plan := ⟨s6Step76F4FlagArena,[803],s6Step76Add0Arena,[922],s6Step76Add0During,s6Step76Add0Work,s6Step76Add1During,s6Step76Add1Work⟩

private def s6Step76HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 843],795⟩

private def s6Step76HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 869],776⟩

private def s6Step76HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 794, 780],777⟩

private def s6Step76HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 855, 877],775⟩

private def s6Step76FrontHead : WindowBank := ⟨s6Step76HeadFOut,s6Step76HeadGOut,s6Step76HeadFvOut,s6Step76HeadGvOut⟩

private def s6Step76EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486],795⟩

private def s6Step76EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839],776⟩

private def s6Step76EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 794],777⟩

private def s6Step76EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 855],775⟩

private def s6Step76FrontPair : WindowBank := ⟨s6Step76EntryFOut,s6Step76EntryGOut,s6Step76EntryFvOut,s6Step76EntryGvOut⟩

private def s6Step76FrontSigmaArena : Arena := ⟨s6Step76EntryGvAfter.live∪{860},Finset.union_subset s6Step76EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step76HeadFFresh : List Wire := [843]

private def s6Step76HeadFvFresh : List Wire := [869]

private def s6Step76HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step76HeadGFresh : List Wire := [780]

private def s6Step76HeadGvFresh : List Wire := [877]

private def s6Step76FrontPlan : HmrSourceFront := ⟨s6Step76EntryGvAfter,s6Step76FrontPair,(growRow 795 s6Step76EntryFFresh ++ (growRow 777 s6Step76EntryGFresh ++ (growRow 776 s6Step76EntryFvFresh ++ (growRow 775 s6Step76EntryGvFresh ++ [])))),s6Step76FrontSigmaArena,[860],s6Step76HeadGBefore,[898],
  s6Step76HeadFvAfter,s6Step76FrontHead,(growRow 777 s6Step76HeadGFresh ++ (growRow 795 s6Step76HeadFFresh ++ (growRow 775 s6Step76HeadGvFresh ++ (growRow 776 s6Step76HeadFvFresh ++ [])))),s6Step76F4Plan,s6Step76CounterDuring,s6Step76CounterWork,s6Step76ExitGvAfter,s6Step76FrontOut,(shrinkRow 777 s6Step76ExitGExtra ++ (shrinkRow 795 s6Step76ExitFExtra ++ (shrinkRow 776 s6Step76ExitFvExtra ++ (shrinkRow 775 s6Step76ExitGvExtra ++ []))))⟩

private def s6Step76CompletePlan : HmrEarlyStepPlan := ⟨s6Step76FrontPlan,s6Step76EarlyControlArena,s6Step76EarlyControlPlan,s6Step76CompleteMoves⟩

private theorem s6Step76Complete_apart : List.Disjoint (s6Step76CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [860, 898, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] := by
  have nd : ((s6Step76CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[860, 898, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step76Complete_owned : (s6Step76CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step76EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step76EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step76CompleteRelocationMove0Borrowed : Arena := ⟨s6Step76ExitGvAfter.live∪{486},Finset.union_subset s6Step76ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step76CompleteRelocation_move0_owned : 853∈s6Step76ExitGvAfter.live := by norm_num [s6Step76ExitGvAfter,arenaWires]

private theorem s6Step76CompleteRelocation_move0_reserve : s6Step76ExitGvAfter.reserve {486}=some s6Step76CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step76ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step76CompleteRelocation_move0_retire : s6Step76CompleteRelocationMove0Borrowed.retireSet {853}=s6Step76EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step76CompleteRelocationMove0Borrowed s6Step76EarlyControlArena {853}
  change s6Step76EarlyControlArena.live=(s6Step76ExitGvAfter.live∪{486})\{853}
  apply hmrArena_update_of_filter_check s6Step76ExitGvAfter s6Step76EarlyControlArena (fun q => ([(0,486),(487,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [486] [853] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step76CompleteRelocation_checked : s6Step76ExitGvAfter.checkRepack [(853,486)]=some s6Step76EarlyControlArena := by
  have tail1 : s6Step76EarlyControlArena.checkRepack []=some s6Step76EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step76ExitGvAfter s6Step76CompleteRelocationMove0Borrowed s6Step76EarlyControlArena s6Step76EarlyControlArena 853 486 []
    s6Step76CompleteRelocation_move0_owned s6Step76CompleteRelocation_move0_reserve s6Step76CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step76Complete_repack : s6Step76ExitGvAfter.checkRepack s6Step76CompleteMoves=some s6Step76EarlyControlArena := by
  simpa only [s6Step76CompleteMoves] using s6Step76CompleteRelocation_checked

private theorem s6Step76EarlyControl_branchOwned : ([898] : List Wire).toFinset⊆s6Step76EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step76EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step76EarlyControl_branch : compileHmrBranchRetirement s6Step76EarlyControlSigmaArena 898=some s6Step76EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step76EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step76EarlyControlSigmaArena s6Step76EarlyControlOutputArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [898] rfl rfl
    decide +kernel

private theorem s6Step76EarlyControl_classEqualityBorrow : s6Step76EarlyControlPositiveArena.checkBorrow (([860, 794] : List Wire).length-1) s6Step76EarlyControlLog.classWork=some s6Step76EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step76EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step76EarlyControlPositiveArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step76EarlyControlPositiveArena s6Step76EarlyControlEqualityArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step76EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step76EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step76EarlyControl_classEqualityOwned : ([860, 794] : List Wire).toFinset⊆s6Step76EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step76EarlyControlPositiveArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step76EarlyControl_classEquality : compileHmrEqualityLog s6Step76EarlyControlPositiveArena [860, 794] 0 s6Step76EarlyControlLog.classWork=some (s6Step76EarlyControlEqualityArena,s6Step76EarlyControlLog.classWork,s6Step76EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step76EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step76EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step76EarlyControl_classOwned : ([769, 843, 860] : List Wire).toFinset⊆s6Step76EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step76EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step76EarlyControl_positiveBorrow : s6Step76EarlyControlZeroArena.checkBorrow (1) s6Step76EarlyControlLog.positiveWork=some s6Step76EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step76EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step76EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step76EarlyControlZeroArena s6Step76EarlyControlPositiveArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step76EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step76EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step76EarlyControl_class : compileHmrSourceClassLog s6Step76EarlyControlZeroArena false 769 s6Step76EarlyControlZeroPlan.top 0 860 s6Step76EarlyControlLog.positiveWork s6Step76EarlyControlLog.classWork=some s6Step76EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step76EarlyControlClassPlan s6Step76EarlyControlZeroArena false 769 s6Step76EarlyControlZeroPlan.top 0 860
  constructor
  · decide +kernel
  · exact s6Step76EarlyControl_classOwned
  · exact s6Step76EarlyControl_positiveBorrow
  · exact s6Step76EarlyControl_classEquality

private theorem s6Step76EarlyControl_entryRecordOwned : ([898, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step76EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step76EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step76EarlyControl_entrySigmaOwned : ([860, 254] : List Wire).toFinset⊆s6Step76EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step76EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step76EarlyControl_fitBorrow : s6Step76EarlyControlFlagArena.checkBorrow ((30-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).length)) s6Step76EarlyControlLog.recordFresh=some s6Step76EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step76EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step76EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step76EarlyControlFittedArena,s6Step76EarlyControlFlagArena,s6Step76EarlyControlLog,arenaWires]

private theorem s6Step76EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step76EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step76EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step76EarlyControl_fit : compileHmrRecordGrowLog s6Step76EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step76EarlyControlLog.recordFresh=some s6Step76EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step76EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step76EarlyControl_fitBorrow

private theorem s6Step76EarlyControl_flagsBorrow : s6Step76EarlyControlEqualityArena.checkBorrow (6) s6Step76EarlyControlLog.flagWork=some s6Step76EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step76EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step76EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step76EarlyControlEqualityArena s6Step76EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step76EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step76EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step76EarlyControl_flagsOwned : ([780, 253, 252, 251] : List Wire).toFinset⊆s6Step76EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step76EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step76EarlyControl_flags : compileHmrFlagsLog s6Step76EarlyControlClassPlan.equalityArena s6Step76EarlyControlClassPlan.equality.top 253 252 251 s6Step76EarlyControlLog.flagWork=some s6Step76EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step76EarlyControl_flagsOwned⟩
  · exact s6Step76EarlyControl_flagsBorrow

private theorem s6Step76EarlyControl_historyBorrow : s6Step76EarlyControlArena.checkBorrow ((30-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).length)) s6Step76EarlyControlLog.recordFresh=some s6Step76EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step76EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step76EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step76EarlyControlArena s6Step76EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step76EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step76EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step76EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step76EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step76EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step76EarlyControl_history : compileHmrRecordGrowLog s6Step76EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step76EarlyControlLog.recordFresh=some s6Step76EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step76EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step76EarlyControl_historyBorrow

private theorem s6Step76EarlyControl_sigmaOwned : ([254, 860] : List Wire).toFinset⊆s6Step76EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step76EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step76EarlyControl_sigmaReleaseOwned : ([860] : List Wire).toFinset⊆s6Step76EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step76EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step76EarlyControl_sigmaRelease : s6Step76EarlyControlHistoryArena.release {860} (fun _ => false)=some s6Step76EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step76EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step76EarlyControlHistoryArena s6Step76EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [860] rfl rfl
    decide +kernel

private theorem s6Step76EarlyControl_sigma : compileHmrSigmaDropLog s6Step76EarlyControlHistoryArena false 0 0 254 860 []=some s6Step76EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step76EarlyControl_sigmaOwned⟩
  · exact s6Step76EarlyControl_sigmaRelease

private theorem s6Step76EarlyControl_zeroBorrow : s6Step76EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step76EarlyControlLog.zeroWork=some s6Step76EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step76EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step76EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step76EarlyControlArena s6Step76EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step76EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step76EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step76EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step76EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step76EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,853),(854,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step76EarlyControl_zero : compileHmrEqualityLog s6Step76EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step76EarlyControlLog.zeroWork=some (s6Step76EarlyControlZeroArena,s6Step76EarlyControlLog.zeroWork,s6Step76EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step76EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step76EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step76EarlyControl_logged : s6Step76EarlyControlPlan.Logged s6Step76EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 860 254 253 252 251 898 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step76EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step76EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step76EarlyControl_zero
  · exact s6Step76EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step76EarlyControl_flags
  · exact s6Step76EarlyControl_fit
  · exact s6Step76EarlyControl_history
  · exact s6Step76EarlyControl_sigma
  · exact s6Step76EarlyControl_branch

private theorem s6Step76EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step76EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 860 254 253 252 251 898 30 s6Step76EarlyControlLog=some s6Step76EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step76EarlyControlPlan s6Step76EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 860 254 253 252 251 898 30 s6Step76EarlyControl_logged

private def s6Step76EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step76EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486],795⟩

private def s6Step76EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839],776⟩

private def s6Step76EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229],777⟩

private def s6Step76EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822],775⟩

private def s6Step76FrontBank : WindowBank := ⟨s6Step76EntryFRow,s6Step76EntryGRow,s6Step76EntryFvRow,s6Step76EntryGvRow⟩

private def s6Step76Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 843, 795]

private def s6Step76Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 794, 780, 777]

private def s6Step76Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 869, 776]

private def s6Step76Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 855, 877, 775]

private theorem s6Step76Counter_apart : Disjoint s6Step76HeadFvAfter.live s6Step76CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step76HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step76Counter_borrowed : s6Step76HeadFvAfter.checkBorrow 4 s6Step76CounterWork=some s6Step76CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step76HeadFvAfter s6Step76CounterDuring s6Step76CounterWork.toFinset s6Step76Counter_bounded s6Step76Counter_apart rfl

private theorem s6Step76Counter_owned : (860::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step76HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step76HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step76Counter_checked : compileHmrCounterStepLog s6Step76HeadFvAfter true 860 [774, 773, 772, 771, 770, 769] s6Step76CounterWork=some s6Step76CounterDuring := by
  have owned : ∀q∈860::[774, 773, 772, 771, 770, 769],q∈s6Step76HeadFvAfter.live := fun q hq => s6Step76Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step76Counter_borrowed

private def s6Step76EntryFAfter : Arena := s6Step76EntryFBefore

private theorem s6Step76EntryBank_incomingDistinct : ([s6Step76EntryFRow,s6Step76EntryGRow,s6Step76EntryFvRow,s6Step76EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step76EntryF_Incoming : rowsOwned s6Step76EntryFBefore [s6Step76EntryFRow,s6Step76EntryGRow,s6Step76EntryFvRow,s6Step76EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step76EntryFRow,s6Step76EntryGRow,s6Step76EntryFvRow,s6Step76EntryGvRow] 0 s6Step76EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step76EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step76EntryBank_outgoingOwned : rowsOwned s6Step76EntryGvAfter [s6Step76EntryFOut,s6Step76EntryGOut,s6Step76EntryFvOut,s6Step76EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step76EntryGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step76EntryF_Outgoing : rowsOwned s6Step76EntryGvAfter [s6Step76EntryFOut,s6Step76EntryGOut,s6Step76EntryFvOut,s6Step76EntryGvOut] :=
  hmrRows_owned_drop s6Step76EntryGvAfter [s6Step76EntryFOut,s6Step76EntryGOut,s6Step76EntryFvOut,s6Step76EntryGvOut] 0 s6Step76EntryBank_outgoingOwned

private theorem s6Step76EntryF_distinct : (s6Step76EntryFRow.sign::s6Step76EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step76EntryF_owned : (s6Step76EntryFRow.sign::s6Step76EntryFRow.payload).toFinset⊆s6Step76EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step76EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step76EntryF_reserved : s6Step76EntryFBefore.reserve s6Step76EntryFFresh.toFinset=some s6Step76EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step76EntryFFresh,arenaWires]
  · norm_num [s6Step76EntryFBefore,s6Step76EntryFFresh,arenaWires]
  · simp only [s6Step76EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step76EntryF_checked : planRowResizeLog s6Step76EntryFBefore s6Step76EntryFRow 231 s6Step76EntryFFresh=
    some (s6Step76EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486],795⟩,growRow 795 s6Step76EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step76EntryFBefore s6Step76EntryFAfter s6Step76EntryFRow 231 s6Step76EntryFFresh
    s6Step76EntryF_distinct s6Step76EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step76EntryF_reserved
  have rowEq : WindowRow.mk (s6Step76EntryFRow.payload++s6Step76EntryFFresh) s6Step76EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step76EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step76EntryFvAfter : Arena := s6Step76EntryGAfter

private def s6Step76EntryFvBefore : Arena := s6Step76EntryGAfter

private theorem s6Step76EntryFv_Incoming : rowsOwned s6Step76EntryFvBefore [s6Step76EntryFvRow,s6Step76EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step76EntryFRow,s6Step76EntryGRow,s6Step76EntryFvRow,s6Step76EntryGvRow] 2 s6Step76EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step76EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step76EntryFv_Outgoing : rowsOwned s6Step76EntryGvAfter [s6Step76EntryFvOut,s6Step76EntryGvOut] :=
  hmrRows_owned_drop s6Step76EntryGvAfter [s6Step76EntryFOut,s6Step76EntryGOut,s6Step76EntryFvOut,s6Step76EntryGvOut] 2 s6Step76EntryBank_outgoingOwned

private theorem s6Step76EntryFv_distinct : (s6Step76EntryFvRow.sign::s6Step76EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step76EntryFv_owned : (s6Step76EntryFvRow.sign::s6Step76EntryFvRow.payload).toFinset⊆s6Step76EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step76EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step76EntryFv_reserved : s6Step76EntryFvBefore.reserve s6Step76EntryFvFresh.toFinset=some s6Step76EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step76EntryFvFresh,arenaWires]
  · norm_num [s6Step76EntryFvBefore,s6Step76EntryGAfter,s6Step76EntryFvFresh,arenaWires]
  · simp only [s6Step76EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step76EntryFv_checked : planRowResizeLog s6Step76EntryFvBefore s6Step76EntryFvRow 52 s6Step76EntryFvFresh=
    some (s6Step76EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839],776⟩,growRow 776 s6Step76EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step76EntryFvBefore s6Step76EntryFvAfter s6Step76EntryFvRow 52 s6Step76EntryFvFresh
    s6Step76EntryFv_distinct s6Step76EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step76EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step76EntryFvRow.payload++s6Step76EntryFvFresh) s6Step76EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step76EntryGBefore : Arena := s6Step76EntryFBefore

private theorem s6Step76EntryG_Incoming : rowsOwned s6Step76EntryGBefore [s6Step76EntryGRow,s6Step76EntryFvRow,s6Step76EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step76EntryFRow,s6Step76EntryGRow,s6Step76EntryFvRow,s6Step76EntryGvRow] 1 s6Step76EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step76EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step76EntryG_Outgoing : rowsOwned s6Step76EntryGvAfter [s6Step76EntryGOut,s6Step76EntryFvOut,s6Step76EntryGvOut] :=
  hmrRows_owned_drop s6Step76EntryGvAfter [s6Step76EntryFOut,s6Step76EntryGOut,s6Step76EntryFvOut,s6Step76EntryGvOut] 1 s6Step76EntryBank_outgoingOwned

private theorem s6Step76EntryG_distinct : (s6Step76EntryGRow.sign::s6Step76EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step76EntryG_owned : (s6Step76EntryGRow.sign::s6Step76EntryGRow.payload).toFinset⊆s6Step76EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step76EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step76EntryG_reserved : s6Step76EntryGBefore.reserve s6Step76EntryGFresh.toFinset=some s6Step76EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step76EntryGFresh,arenaWires]
  · norm_num [s6Step76EntryGBefore,s6Step76EntryFBefore,s6Step76EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step76EntryGBefore s6Step76EntryGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step76EntryGFresh rfl rfl
    · norm_num [s6Step76EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step76EntryG_checked : planRowResizeLog s6Step76EntryGBefore s6Step76EntryGRow 231 s6Step76EntryGFresh=
    some (s6Step76EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 794],777⟩,growRow 777 s6Step76EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step76EntryGBefore s6Step76EntryGAfter s6Step76EntryGRow 231 s6Step76EntryGFresh
    s6Step76EntryG_distinct s6Step76EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step76EntryG_reserved
  have rowEq : WindowRow.mk (s6Step76EntryGRow.payload++s6Step76EntryGFresh) s6Step76EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 794],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step76EntryGvBefore : Arena := s6Step76EntryGAfter

private theorem s6Step76EntryGv_Incoming : rowsOwned s6Step76EntryGvBefore [s6Step76EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step76EntryFRow,s6Step76EntryGRow,s6Step76EntryFvRow,s6Step76EntryGvRow] 3 s6Step76EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step76EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step76EntryGv_Outgoing : rowsOwned s6Step76EntryGvAfter [s6Step76EntryGvOut] :=
  hmrRows_owned_drop s6Step76EntryGvAfter [s6Step76EntryFOut,s6Step76EntryGOut,s6Step76EntryFvOut,s6Step76EntryGvOut] 3 s6Step76EntryBank_outgoingOwned

private theorem s6Step76EntryGv_distinct : (s6Step76EntryGvRow.sign::s6Step76EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step76EntryGv_owned : (s6Step76EntryGvRow.sign::s6Step76EntryGvRow.payload).toFinset⊆s6Step76EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step76EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step76EntryGv_reserved : s6Step76EntryGvBefore.reserve s6Step76EntryGvFresh.toFinset=some s6Step76EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step76EntryGvFresh,arenaWires]
  · norm_num [s6Step76EntryGvBefore,s6Step76EntryGAfter,s6Step76EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step76EntryGvBefore s6Step76EntryGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step76EntryGvFresh rfl rfl
    · norm_num [s6Step76EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step76EntryGv_checked : planRowResizeLog s6Step76EntryGvBefore s6Step76EntryGvRow 52 s6Step76EntryGvFresh=
    some (s6Step76EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 855],775⟩,growRow 775 s6Step76EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step76EntryGvBefore s6Step76EntryGvAfter s6Step76EntryGvRow 52 s6Step76EntryGvFresh
    s6Step76EntryGv_distinct s6Step76EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step76EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step76EntryGvRow.payload++s6Step76EntryGvFresh) s6Step76EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 855],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step76EntryBank_rows : planWindowRowsLog s6Step76EntryFBefore [(s6Step76EntryFRow,231),(s6Step76EntryGRow,231),(s6Step76EntryFvRow,52),(s6Step76EntryGvRow,52)] [s6Step76EntryFFresh,s6Step76EntryGFresh,s6Step76EntryFvFresh,s6Step76EntryGvFresh]=
    some (s6Step76EntryGvAfter,[s6Step76EntryFOut,s6Step76EntryGOut,s6Step76EntryFvOut,s6Step76EntryGvOut],(growRow 795 s6Step76EntryFFresh ++ (growRow 777 s6Step76EntryGFresh ++ (growRow 776 s6Step76EntryFvFresh ++ (growRow 775 s6Step76EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step76EntryGvAfter [] []=some (s6Step76EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step76EntryGvBefore s6Step76EntryGvAfter s6Step76EntryGvAfter
    s6Step76EntryGvRow s6Step76EntryGvOut 52 s6Step76EntryGvFresh [] [] []
    (growRow 775 s6Step76EntryGvFresh) ([]) s6Step76EntryGv_Incoming s6Step76EntryGv_checked h4 s6Step76EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step76EntryFvBefore s6Step76EntryFvAfter s6Step76EntryGvAfter
    s6Step76EntryFvRow s6Step76EntryFvOut 52 s6Step76EntryFvFresh [(s6Step76EntryGvRow,52)] [s6Step76EntryGvFresh] [s6Step76EntryGvOut]
    (growRow 776 s6Step76EntryFvFresh) ((growRow 775 s6Step76EntryGvFresh ++ [])) s6Step76EntryFv_Incoming s6Step76EntryFv_checked h3 s6Step76EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step76EntryGBefore s6Step76EntryGAfter s6Step76EntryGvAfter
    s6Step76EntryGRow s6Step76EntryGOut 231 s6Step76EntryGFresh [(s6Step76EntryFvRow,52),(s6Step76EntryGvRow,52)] [s6Step76EntryFvFresh,s6Step76EntryGvFresh] [s6Step76EntryFvOut,s6Step76EntryGvOut]
    (growRow 777 s6Step76EntryGFresh) ((growRow 776 s6Step76EntryFvFresh ++ (growRow 775 s6Step76EntryGvFresh ++ []))) s6Step76EntryG_Incoming s6Step76EntryG_checked h2 s6Step76EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step76EntryFBefore s6Step76EntryFAfter s6Step76EntryGvAfter
    s6Step76EntryFRow s6Step76EntryFOut 231 s6Step76EntryFFresh [(s6Step76EntryGRow,231),(s6Step76EntryFvRow,52),(s6Step76EntryGvRow,52)] [s6Step76EntryGFresh,s6Step76EntryFvFresh,s6Step76EntryGvFresh] [s6Step76EntryGOut,s6Step76EntryFvOut,s6Step76EntryGvOut]
    (growRow 795 s6Step76EntryFFresh) ((growRow 777 s6Step76EntryGFresh ++ (growRow 776 s6Step76EntryFvFresh ++ (growRow 775 s6Step76EntryGvFresh ++ [])))) s6Step76EntryF_Incoming s6Step76EntryF_checked h1 s6Step76EntryF_Outgoing
  exact h0

private theorem s6Step76EntryBank_checked : compileHmrBankResizeLog .entry s6Step76EntryFBefore ⟨s6Step76EntryFRow,s6Step76EntryGRow,s6Step76EntryFvRow,s6Step76EntryGvRow⟩ ⟨231,231,52,52⟩ [s6Step76EntryFFresh,s6Step76EntryGFresh,s6Step76EntryFvFresh,s6Step76EntryGvFresh]=
    some (s6Step76EntryGvAfter,⟨s6Step76EntryFOut,s6Step76EntryGOut,s6Step76EntryFvOut,s6Step76EntryGvOut⟩,(growRow 795 s6Step76EntryFFresh ++ (growRow 777 s6Step76EntryGFresh ++ (growRow 776 s6Step76EntryFvFresh ++ (growRow 775 s6Step76EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step76EntryBank_rows]
  rfl

private def s6Step76ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,486),(487,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step76ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step76ExitFBefore : Arena := s6Step76ExitGAfter

private def s6Step76ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 843],795⟩

private def s6Step76ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 869],776⟩

private def s6Step76ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 794, 780],777⟩

private def s6Step76ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 855, 877],775⟩

private theorem s6Step76ExitBank_incomingDistinct : ([s6Step76ExitGRow,s6Step76ExitFRow,s6Step76ExitFvRow,s6Step76ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step76ExitF_Incoming : rowsOwned s6Step76ExitFBefore [s6Step76ExitFRow,s6Step76ExitFvRow,s6Step76ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step76ExitGRow,s6Step76ExitFRow,s6Step76ExitFvRow,s6Step76ExitGvRow] 1 s6Step76ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step76ExitFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step76ExitBank_outgoingOwned : rowsOwned s6Step76ExitGvAfter [s6Step76ExitGOut,s6Step76ExitFOut,s6Step76ExitFvOut,s6Step76ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step76ExitGvAfter (fun q => ([(0,486),(487,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step76ExitF_Outgoing : rowsOwned s6Step76ExitGvAfter [s6Step76ExitFOut,s6Step76ExitFvOut,s6Step76ExitGvOut] :=
  hmrRows_owned_drop s6Step76ExitGvAfter [s6Step76ExitGOut,s6Step76ExitFOut,s6Step76ExitFvOut,s6Step76ExitGvOut] 1 s6Step76ExitBank_outgoingOwned

private theorem s6Step76ExitF_distinct : (s6Step76ExitFRow.sign::s6Step76ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step76ExitF_owned : (s6Step76ExitFRow.sign::s6Step76ExitFRow.payload).toFinset⊆s6Step76ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step76ExitFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step76ExitF_retired : s6Step76ExitFBefore.retireSet s6Step76ExitFExtra.toFinset=s6Step76ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step76ExitFBefore s6Step76ExitFAfter s6Step76ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step76ExitFBefore s6Step76ExitFAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,486),(487,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step76ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step76ExitF_checked : planRowResizeLog s6Step76ExitFBefore s6Step76ExitFRow 230 []=
    some (s6Step76ExitFAfter,s6Step76ExitFOut,shrinkRow 795 s6Step76ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step76ExitFBefore s6Step76ExitFRow 230 s6Step76ExitF_distinct s6Step76ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step76ExitFRow.payload.take 230) s6Step76ExitFRow.sign=s6Step76ExitFOut := by decide +kernel
  have hi : s6Step76ExitFRow.payload.drop 230=s6Step76ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step76ExitF_retired] at result
  exact result

private def s6Step76ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,486),(487,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step76ExitFvBefore : Arena := s6Step76ExitFAfter

private theorem s6Step76ExitFv_Incoming : rowsOwned s6Step76ExitFvBefore [s6Step76ExitFvRow,s6Step76ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step76ExitGRow,s6Step76ExitFRow,s6Step76ExitFvRow,s6Step76ExitGvRow] 2 s6Step76ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step76ExitFvBefore (fun q => ([(0,486),(487,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step76ExitFv_Outgoing : rowsOwned s6Step76ExitGvAfter [s6Step76ExitFvOut,s6Step76ExitGvOut] :=
  hmrRows_owned_drop s6Step76ExitGvAfter [s6Step76ExitGOut,s6Step76ExitFOut,s6Step76ExitFvOut,s6Step76ExitGvOut] 2 s6Step76ExitBank_outgoingOwned

private theorem s6Step76ExitFv_distinct : (s6Step76ExitFvRow.sign::s6Step76ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step76ExitFv_owned : (s6Step76ExitFvRow.sign::s6Step76ExitFvRow.payload).toFinset⊆s6Step76ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step76ExitFvBefore (fun q => ([(0,486),(487,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step76ExitFv_retired : s6Step76ExitFvBefore.retireSet s6Step76ExitFvExtra.toFinset=s6Step76ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step76ExitFvBefore s6Step76ExitFvAfter s6Step76ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step76ExitFvBefore s6Step76ExitFvAfter (fun q => ([(0,486),(487,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,486),(487,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step76ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step76ExitFv_checked : planRowResizeLog s6Step76ExitFvBefore s6Step76ExitFvRow 52 []=
    some (s6Step76ExitFvAfter,s6Step76ExitFvOut,shrinkRow 776 s6Step76ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step76ExitFvBefore s6Step76ExitFvRow 52 s6Step76ExitFv_distinct s6Step76ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step76ExitFvRow.payload.take 52) s6Step76ExitFvRow.sign=s6Step76ExitFvOut := by decide +kernel
  have hi : s6Step76ExitFvRow.payload.drop 52=s6Step76ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step76ExitFv_retired] at result
  exact result

private def s6Step76ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step76ExitG_Incoming : rowsOwned s6Step76ExitGBefore [s6Step76ExitGRow,s6Step76ExitFRow,s6Step76ExitFvRow,s6Step76ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step76ExitGRow,s6Step76ExitFRow,s6Step76ExitFvRow,s6Step76ExitGvRow] 0 s6Step76ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step76ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step76ExitG_Outgoing : rowsOwned s6Step76ExitGvAfter [s6Step76ExitGOut,s6Step76ExitFOut,s6Step76ExitFvOut,s6Step76ExitGvOut] :=
  hmrRows_owned_drop s6Step76ExitGvAfter [s6Step76ExitGOut,s6Step76ExitFOut,s6Step76ExitFvOut,s6Step76ExitGvOut] 0 s6Step76ExitBank_outgoingOwned

private theorem s6Step76ExitG_distinct : (s6Step76ExitGRow.sign::s6Step76ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step76ExitG_owned : (s6Step76ExitGRow.sign::s6Step76ExitGRow.payload).toFinset⊆s6Step76ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step76ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step76ExitG_retired : s6Step76ExitGBefore.retireSet s6Step76ExitGExtra.toFinset=s6Step76ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step76ExitGBefore s6Step76ExitGAfter s6Step76ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step76ExitGBefore s6Step76ExitGAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step76ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step76ExitG_checked : planRowResizeLog s6Step76ExitGBefore s6Step76ExitGRow 230 []=
    some (s6Step76ExitGAfter,s6Step76ExitGOut,shrinkRow 777 s6Step76ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step76ExitGBefore s6Step76ExitGRow 230 s6Step76ExitG_distinct s6Step76ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step76ExitGRow.payload.take 230) s6Step76ExitGRow.sign=s6Step76ExitGOut := by decide +kernel
  have hi : s6Step76ExitGRow.payload.drop 230=s6Step76ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step76ExitG_retired] at result
  exact result

private def s6Step76ExitGvBefore : Arena := s6Step76ExitFvAfter

private theorem s6Step76ExitGv_Incoming : rowsOwned s6Step76ExitGvBefore [s6Step76ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step76ExitGRow,s6Step76ExitFRow,s6Step76ExitFvRow,s6Step76ExitGvRow] 3 s6Step76ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step76ExitGvBefore (fun q => ([(0,486),(487,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step76ExitGv_Outgoing : rowsOwned s6Step76ExitGvAfter [s6Step76ExitGvOut] :=
  hmrRows_owned_drop s6Step76ExitGvAfter [s6Step76ExitGOut,s6Step76ExitFOut,s6Step76ExitFvOut,s6Step76ExitGvOut] 3 s6Step76ExitBank_outgoingOwned

private theorem s6Step76ExitGv_distinct : (s6Step76ExitGvRow.sign::s6Step76ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step76ExitGv_owned : (s6Step76ExitGvRow.sign::s6Step76ExitGvRow.payload).toFinset⊆s6Step76ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step76ExitGvBefore (fun q => ([(0,486),(487,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step76ExitGv_retired : s6Step76ExitGvBefore.retireSet s6Step76ExitGvExtra.toFinset=s6Step76ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step76ExitGvBefore s6Step76ExitGvAfter s6Step76ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step76ExitGvBefore s6Step76ExitGvAfter (fun q => ([(0,486),(487,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,486),(487,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step76ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step76ExitGv_checked : planRowResizeLog s6Step76ExitGvBefore s6Step76ExitGvRow 51 []=
    some (s6Step76ExitGvAfter,s6Step76ExitGvOut,shrinkRow 775 s6Step76ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step76ExitGvBefore s6Step76ExitGvRow 51 s6Step76ExitGv_distinct s6Step76ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step76ExitGvRow.payload.take 51) s6Step76ExitGvRow.sign=s6Step76ExitGvOut := by decide +kernel
  have hi : s6Step76ExitGvRow.payload.drop 51=s6Step76ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step76ExitGv_retired] at result
  exact result

private theorem s6Step76ExitBank_rows : planWindowRowsLog s6Step76ExitGBefore [(s6Step76ExitGRow,230),(s6Step76ExitFRow,230),(s6Step76ExitFvRow,52),(s6Step76ExitGvRow,51)] [[],[],[],[]]=
    some (s6Step76ExitGvAfter,[s6Step76ExitGOut,s6Step76ExitFOut,s6Step76ExitFvOut,s6Step76ExitGvOut],(shrinkRow 777 s6Step76ExitGExtra ++ (shrinkRow 795 s6Step76ExitFExtra ++ (shrinkRow 776 s6Step76ExitFvExtra ++ (shrinkRow 775 s6Step76ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step76ExitGvAfter [] []=some (s6Step76ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step76ExitGvBefore s6Step76ExitGvAfter s6Step76ExitGvAfter
    s6Step76ExitGvRow s6Step76ExitGvOut 51 [] [] [] []
    (shrinkRow 775 s6Step76ExitGvExtra) ([]) s6Step76ExitGv_Incoming s6Step76ExitGv_checked h4 s6Step76ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step76ExitFvBefore s6Step76ExitFvAfter s6Step76ExitGvAfter
    s6Step76ExitFvRow s6Step76ExitFvOut 52 [] [(s6Step76ExitGvRow,51)] [[]] [s6Step76ExitGvOut]
    (shrinkRow 776 s6Step76ExitFvExtra) ((shrinkRow 775 s6Step76ExitGvExtra ++ [])) s6Step76ExitFv_Incoming s6Step76ExitFv_checked h3 s6Step76ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step76ExitFBefore s6Step76ExitFAfter s6Step76ExitGvAfter
    s6Step76ExitFRow s6Step76ExitFOut 230 [] [(s6Step76ExitFvRow,52),(s6Step76ExitGvRow,51)] [[],[]] [s6Step76ExitFvOut,s6Step76ExitGvOut]
    (shrinkRow 795 s6Step76ExitFExtra) ((shrinkRow 776 s6Step76ExitFvExtra ++ (shrinkRow 775 s6Step76ExitGvExtra ++ []))) s6Step76ExitF_Incoming s6Step76ExitF_checked h2 s6Step76ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step76ExitGBefore s6Step76ExitGAfter s6Step76ExitGvAfter
    s6Step76ExitGRow s6Step76ExitGOut 230 [] [(s6Step76ExitFRow,230),(s6Step76ExitFvRow,52),(s6Step76ExitGvRow,51)] [[],[],[]] [s6Step76ExitFOut,s6Step76ExitFvOut,s6Step76ExitGvOut]
    (shrinkRow 777 s6Step76ExitGExtra) ((shrinkRow 795 s6Step76ExitFExtra ++ (shrinkRow 776 s6Step76ExitFvExtra ++ (shrinkRow 775 s6Step76ExitGvExtra ++ [])))) s6Step76ExitG_Incoming s6Step76ExitG_checked h1 s6Step76ExitG_Outgoing
  exact h0

private theorem s6Step76ExitBank_checked : compileHmrBankResizeLog .exit s6Step76ExitGBefore ⟨s6Step76ExitFRow,s6Step76ExitGRow,s6Step76ExitFvRow,s6Step76ExitGvRow⟩ ⟨230,230,52,51⟩ [[],[],[],[]]=
    some (s6Step76ExitGvAfter,⟨s6Step76ExitFOut,s6Step76ExitGOut,s6Step76ExitFvOut,s6Step76ExitGvOut⟩,(shrinkRow 777 s6Step76ExitGExtra ++ (shrinkRow 795 s6Step76ExitFExtra ++ (shrinkRow 776 s6Step76ExitFvExtra ++ (shrinkRow 775 s6Step76ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step76ExitBank_rows]
  rfl

private theorem s6Step76Add0_apart : Disjoint s6Step76Add0Arena.live s6Step76Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step76Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step76Add0_card : s6Step76Add0Arena.live.card=870 := by
  decide +kernel

private theorem s6Step76Add0_borrowed : s6Step76Add0Arena.checkBorrow (hmrHybridCount s6Step76Add0Arena s6Step76Add0B.length) s6Step76Add0Work=some s6Step76Add0During := by
  have len : s6Step76Add0Work.length=hmrHybridCount s6Step76Add0Arena s6Step76Add0B.length := by
    rw [hmrHybridCount,s6Step76Add0_card]
    decide +kernel
  have nd : s6Step76Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step76Add0Arena s6Step76Add0During s6Step76Add0Work.toFinset s6Step76Add0_bounded s6Step76Add0_apart rfl

private theorem s6Step76Add0_distinct : (803::898::922::(s6Step76Add0A++s6Step76Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step76Add0_owned : (803::898::922::(s6Step76Add0A++s6Step76Add0B)).toFinset⊆s6Step76Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step76Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step76Add0_checked : compileHmrHybridCinLog s6Step76Add0Arena 898 803 922 s6Step76Add0A s6Step76Add0B s6Step76Add0Work=some s6Step76Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step76Add0Arena s6Step76Add0During 898 803 922 s6Step76Add0A s6Step76Add0B s6Step76Add0Work
    (by decide +kernel) (by decide +kernel) s6Step76Add0_distinct
    (fun q hq => s6Step76Add0_owned (List.mem_toFinset.mpr hq)) s6Step76Add0_borrowed

private theorem s6Step76Add1_apart : Disjoint s6Step76Add1Arena.live s6Step76Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step76Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step76Add1_card : s6Step76Add1Arena.live.card=870 := by
  decide +kernel

private theorem s6Step76Add1_borrowed : s6Step76Add1Arena.checkBorrow (hmrHybridCount s6Step76Add1Arena s6Step76Add1B.length) s6Step76Add1Work=some s6Step76Add1During := by
  have len : s6Step76Add1Work.length=hmrHybridCount s6Step76Add1Arena s6Step76Add1B.length := by
    rw [hmrHybridCount,s6Step76Add1_card]
    decide +kernel
  have nd : s6Step76Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step76Add1Arena s6Step76Add1During s6Step76Add1Work.toFinset s6Step76Add1_bounded s6Step76Add1_apart rfl

private theorem s6Step76Add1_distinct : (803::898::922::(s6Step76Add1A++s6Step76Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step76Add1_owned : (803::898::922::(s6Step76Add1A++s6Step76Add1B)).toFinset⊆s6Step76Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step76Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step76Add1_checked : compileHmrHybridCinLog s6Step76Add1Arena 898 803 922 s6Step76Add1A s6Step76Add1B s6Step76Add1Work=some s6Step76Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step76Add1Arena s6Step76Add1During 898 803 922 s6Step76Add1A s6Step76Add1B s6Step76Add1Work
    (by decide +kernel) (by decide +kernel) s6Step76Add1_distinct
    (fun q hq => s6Step76Add1_owned (List.mem_toFinset.mpr hq)) s6Step76Add1_borrowed

private theorem s6Step76F4_apart : Disjoint (s6Step76Add0A++s6Step76Add0B).toFinset (s6Step76Add1A++s6Step76Add1B).toFinset := by
  have nd : ((s6Step76Add0A++s6Step76Add0B)++(s6Step76Add1A++s6Step76Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step76F4_carry : s6Step76F4FlagArena.checkBorrow 1 [922]=some s6Step76Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step76F4FlagArena,s6Step76HeadFvAfter,arenaWires]
  · change s6Step76Add0Arena.live=(s6Step76HeadFvAfter.live∪{803})∪{922}
    apply hmrArena_union_pair_of_filter_check s6Step76HeadFvAfter s6Step76Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 803 922 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step76F4_distinct : (860::898::803::922::((s6Step76Add0A++s6Step76Add1A)++(s6Step76Add0B++s6Step76Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step76F4_flag : s6Step76HeadFvAfter.checkBorrow 1 [803]=some s6Step76F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step76HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step76F4_owned : (860::898::((s6Step76Add0A++s6Step76Add1A)++(s6Step76Add0B++s6Step76Add1B))).toFinset⊆s6Step76HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step76HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step76F4_checked : compileHmrHybridF4Log s6Step76HeadFvAfter 860 898 s6Step76Add0A s6Step76Add0B s6Step76Add1A s6Step76Add1B [803] [922] s6Step76Add0Work s6Step76Add1Work=some s6Step76F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step76HeadFvAfter s6Step76F4FlagArena s6Step76Add0Arena s6Step76Add0During s6Step76Add1During 860 898
    s6Step76Add0A s6Step76Add0B s6Step76Add1A s6Step76Add1B [803] [922] s6Step76Add0Work s6Step76Add1Work
    (fun q hq => s6Step76F4_owned (List.mem_toFinset.mpr hq)) s6Step76F4_flag s6Step76F4_carry
    s6Step76F4_distinct s6Step76F4_apart s6Step76Add0_checked s6Step76Add1_checked

private theorem s6Step76Front_branch : s6Step76FrontSigmaArena.checkBorrow 1 [898]=some s6Step76HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step76FrontSigmaArena,s6Step76EntryGvAfter,arenaWires]
  · change s6Step76HeadGBefore.live=(s6Step76EntryGvAfter.live∪{860})∪{898}
    apply hmrArena_union_pair_of_filter_check s6Step76EntryGvAfter s6Step76HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 860 898 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step76Front_entry : HmrFrontEntryValid s6Step76EntryFBefore s6Step76FrontBank 231 52 ⟨230,230,52,51⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step76FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step76EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step76EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,860),(861,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step76FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step76Front_sigma : s6Step76EntryGvAfter.checkBorrow 1 [860]=some s6Step76FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step76EntryGvAfter,arenaWires]
  · rfl

private def s6Step76HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step76HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step76HeadFBefore : Arena := s6Step76HeadGAfter

private def s6Step76HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486],795⟩

private def s6Step76HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839],776⟩

private def s6Step76HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 794],777⟩

private def s6Step76HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 855],775⟩

private theorem s6Step76HeadBank_incomingDistinct : ([s6Step76HeadGRow,s6Step76HeadFRow,s6Step76HeadGvRow,s6Step76HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step76HeadF_Incoming : rowsOwned s6Step76HeadFBefore [s6Step76HeadFRow,s6Step76HeadGvRow,s6Step76HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step76HeadGRow,s6Step76HeadFRow,s6Step76HeadGvRow,s6Step76HeadFvRow] 1 s6Step76HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step76HeadFBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step76HeadBank_outgoingOwned : rowsOwned s6Step76HeadFvAfter [s6Step76HeadGOut,s6Step76HeadFOut,s6Step76HeadGvOut,s6Step76HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step76HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step76HeadF_Outgoing : rowsOwned s6Step76HeadFvAfter [s6Step76HeadFOut,s6Step76HeadGvOut,s6Step76HeadFvOut] :=
  hmrRows_owned_drop s6Step76HeadFvAfter [s6Step76HeadGOut,s6Step76HeadFOut,s6Step76HeadGvOut,s6Step76HeadFvOut] 1 s6Step76HeadBank_outgoingOwned

private theorem s6Step76HeadF_distinct : (s6Step76HeadFRow.sign::s6Step76HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step76HeadF_owned : (s6Step76HeadFRow.sign::s6Step76HeadFRow.payload).toFinset⊆s6Step76HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step76HeadFBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step76HeadF_reserved : s6Step76HeadFBefore.reserve s6Step76HeadFFresh.toFinset=some s6Step76HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step76HeadFFresh,arenaWires]
  · norm_num [s6Step76HeadFBefore,s6Step76HeadGAfter,s6Step76HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step76HeadFBefore s6Step76HeadFAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step76HeadFFresh rfl rfl
    · norm_num [s6Step76HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step76HeadF_checked : planRowResizeLog s6Step76HeadFBefore s6Step76HeadFRow 232 s6Step76HeadFFresh=
    some (s6Step76HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 843],795⟩,growRow 795 s6Step76HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step76HeadFBefore s6Step76HeadFAfter s6Step76HeadFRow 232 s6Step76HeadFFresh
    s6Step76HeadF_distinct s6Step76HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step76HeadF_reserved
  have rowEq : WindowRow.mk (s6Step76HeadFRow.payload++s6Step76HeadFFresh) s6Step76HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 843],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step76HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step76HeadFvBefore : Arena := s6Step76HeadGvAfter

private theorem s6Step76HeadFv_Incoming : rowsOwned s6Step76HeadFvBefore [s6Step76HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step76HeadGRow,s6Step76HeadFRow,s6Step76HeadGvRow,s6Step76HeadFvRow] 3 s6Step76HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step76HeadFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step76HeadFv_Outgoing : rowsOwned s6Step76HeadFvAfter [s6Step76HeadFvOut] :=
  hmrRows_owned_drop s6Step76HeadFvAfter [s6Step76HeadGOut,s6Step76HeadFOut,s6Step76HeadGvOut,s6Step76HeadFvOut] 3 s6Step76HeadBank_outgoingOwned

private theorem s6Step76HeadFv_distinct : (s6Step76HeadFvRow.sign::s6Step76HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step76HeadFv_owned : (s6Step76HeadFvRow.sign::s6Step76HeadFvRow.payload).toFinset⊆s6Step76HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step76HeadFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step76HeadFv_reserved : s6Step76HeadFvBefore.reserve s6Step76HeadFvFresh.toFinset=some s6Step76HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step76HeadFvFresh,arenaWires]
  · norm_num [s6Step76HeadFvBefore,s6Step76HeadGvAfter,s6Step76HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step76HeadFvBefore s6Step76HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step76HeadFvFresh rfl rfl
    · norm_num [s6Step76HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step76HeadFv_checked : planRowResizeLog s6Step76HeadFvBefore s6Step76HeadFvRow 53 s6Step76HeadFvFresh=
    some (s6Step76HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 869],776⟩,growRow 776 s6Step76HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step76HeadFvBefore s6Step76HeadFvAfter s6Step76HeadFvRow 53 s6Step76HeadFvFresh
    s6Step76HeadFv_distinct s6Step76HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step76HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step76HeadFvRow.payload++s6Step76HeadFvFresh) s6Step76HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 869],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step76HeadG_Incoming : rowsOwned s6Step76HeadGBefore [s6Step76HeadGRow,s6Step76HeadFRow,s6Step76HeadGvRow,s6Step76HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step76HeadGRow,s6Step76HeadFRow,s6Step76HeadGvRow,s6Step76HeadFvRow] 0 s6Step76HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step76HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step76HeadG_Outgoing : rowsOwned s6Step76HeadFvAfter [s6Step76HeadGOut,s6Step76HeadFOut,s6Step76HeadGvOut,s6Step76HeadFvOut] :=
  hmrRows_owned_drop s6Step76HeadFvAfter [s6Step76HeadGOut,s6Step76HeadFOut,s6Step76HeadGvOut,s6Step76HeadFvOut] 0 s6Step76HeadBank_outgoingOwned

private theorem s6Step76HeadG_distinct : (s6Step76HeadGRow.sign::s6Step76HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step76HeadG_owned : (s6Step76HeadGRow.sign::s6Step76HeadGRow.payload).toFinset⊆s6Step76HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step76HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step76HeadG_reserved : s6Step76HeadGBefore.reserve s6Step76HeadGFresh.toFinset=some s6Step76HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step76HeadGFresh,arenaWires]
  · norm_num [s6Step76HeadGBefore,s6Step76HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step76HeadGBefore s6Step76HeadGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step76HeadGFresh rfl rfl
    · norm_num [s6Step76HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step76HeadG_checked : planRowResizeLog s6Step76HeadGBefore s6Step76HeadGRow 232 s6Step76HeadGFresh=
    some (s6Step76HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 794, 780],777⟩,growRow 777 s6Step76HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step76HeadGBefore s6Step76HeadGAfter s6Step76HeadGRow 232 s6Step76HeadGFresh
    s6Step76HeadG_distinct s6Step76HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step76HeadG_reserved
  have rowEq : WindowRow.mk (s6Step76HeadGRow.payload++s6Step76HeadGFresh) s6Step76HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 794, 780],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step76HeadGvBefore : Arena := s6Step76HeadFAfter

private theorem s6Step76HeadGv_Incoming : rowsOwned s6Step76HeadGvBefore [s6Step76HeadGvRow,s6Step76HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step76HeadGRow,s6Step76HeadFRow,s6Step76HeadGvRow,s6Step76HeadFvRow] 2 s6Step76HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step76HeadGvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step76HeadGv_Outgoing : rowsOwned s6Step76HeadFvAfter [s6Step76HeadGvOut,s6Step76HeadFvOut] :=
  hmrRows_owned_drop s6Step76HeadFvAfter [s6Step76HeadGOut,s6Step76HeadFOut,s6Step76HeadGvOut,s6Step76HeadFvOut] 2 s6Step76HeadBank_outgoingOwned

private theorem s6Step76HeadGv_distinct : (s6Step76HeadGvRow.sign::s6Step76HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step76HeadGv_owned : (s6Step76HeadGvRow.sign::s6Step76HeadGvRow.payload).toFinset⊆s6Step76HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step76HeadGvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step76HeadGv_reserved : s6Step76HeadGvBefore.reserve s6Step76HeadGvFresh.toFinset=some s6Step76HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step76HeadGvFresh,arenaWires]
  · norm_num [s6Step76HeadGvBefore,s6Step76HeadFAfter,s6Step76HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step76HeadGvBefore s6Step76HeadGvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step76HeadGvFresh rfl rfl
    · norm_num [s6Step76HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step76HeadGv_checked : planRowResizeLog s6Step76HeadGvBefore s6Step76HeadGvRow 53 s6Step76HeadGvFresh=
    some (s6Step76HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 855, 877],775⟩,growRow 775 s6Step76HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step76HeadGvBefore s6Step76HeadGvAfter s6Step76HeadGvRow 53 s6Step76HeadGvFresh
    s6Step76HeadGv_distinct s6Step76HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step76HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step76HeadGvRow.payload++s6Step76HeadGvFresh) s6Step76HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 855, 877],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step76HeadBank_rows : planWindowRowsLog s6Step76HeadGBefore [(s6Step76HeadGRow,232),(s6Step76HeadFRow,232),(s6Step76HeadGvRow,53),(s6Step76HeadFvRow,53)] [s6Step76HeadGFresh,s6Step76HeadFFresh,s6Step76HeadGvFresh,s6Step76HeadFvFresh]=
    some (s6Step76HeadFvAfter,[s6Step76HeadGOut,s6Step76HeadFOut,s6Step76HeadGvOut,s6Step76HeadFvOut],(growRow 777 s6Step76HeadGFresh ++ (growRow 795 s6Step76HeadFFresh ++ (growRow 775 s6Step76HeadGvFresh ++ (growRow 776 s6Step76HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step76HeadFvAfter [] []=some (s6Step76HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step76HeadFvBefore s6Step76HeadFvAfter s6Step76HeadFvAfter
    s6Step76HeadFvRow s6Step76HeadFvOut 53 s6Step76HeadFvFresh [] [] []
    (growRow 776 s6Step76HeadFvFresh) ([]) s6Step76HeadFv_Incoming s6Step76HeadFv_checked h4 s6Step76HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step76HeadGvBefore s6Step76HeadGvAfter s6Step76HeadFvAfter
    s6Step76HeadGvRow s6Step76HeadGvOut 53 s6Step76HeadGvFresh [(s6Step76HeadFvRow,53)] [s6Step76HeadFvFresh] [s6Step76HeadFvOut]
    (growRow 775 s6Step76HeadGvFresh) ((growRow 776 s6Step76HeadFvFresh ++ [])) s6Step76HeadGv_Incoming s6Step76HeadGv_checked h3 s6Step76HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step76HeadFBefore s6Step76HeadFAfter s6Step76HeadFvAfter
    s6Step76HeadFRow s6Step76HeadFOut 232 s6Step76HeadFFresh [(s6Step76HeadGvRow,53),(s6Step76HeadFvRow,53)] [s6Step76HeadGvFresh,s6Step76HeadFvFresh] [s6Step76HeadGvOut,s6Step76HeadFvOut]
    (growRow 795 s6Step76HeadFFresh) ((growRow 775 s6Step76HeadGvFresh ++ (growRow 776 s6Step76HeadFvFresh ++ []))) s6Step76HeadF_Incoming s6Step76HeadF_checked h2 s6Step76HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step76HeadGBefore s6Step76HeadGAfter s6Step76HeadFvAfter
    s6Step76HeadGRow s6Step76HeadGOut 232 s6Step76HeadGFresh [(s6Step76HeadFRow,232),(s6Step76HeadGvRow,53),(s6Step76HeadFvRow,53)] [s6Step76HeadFFresh,s6Step76HeadGvFresh,s6Step76HeadFvFresh] [s6Step76HeadFOut,s6Step76HeadGvOut,s6Step76HeadFvOut]
    (growRow 777 s6Step76HeadGFresh) ((growRow 795 s6Step76HeadFFresh ++ (growRow 775 s6Step76HeadGvFresh ++ (growRow 776 s6Step76HeadFvFresh ++ [])))) s6Step76HeadG_Incoming s6Step76HeadG_checked h1 s6Step76HeadG_Outgoing
  exact h0

private theorem s6Step76HeadBank_checked : compileHmrBankResizeLog .headroom s6Step76HeadGBefore ⟨s6Step76HeadFRow,s6Step76HeadGRow,s6Step76HeadFvRow,s6Step76HeadGvRow⟩ ⟨232,232,53,53⟩ [s6Step76HeadGFresh,s6Step76HeadFFresh,s6Step76HeadGvFresh,s6Step76HeadFvFresh]=
    some (s6Step76HeadFvAfter,⟨s6Step76HeadFOut,s6Step76HeadGOut,s6Step76HeadFvOut,s6Step76HeadGvOut⟩,(growRow 777 s6Step76HeadGFresh ++ (growRow 795 s6Step76HeadFFresh ++ (growRow 775 s6Step76HeadGvFresh ++ (growRow 776 s6Step76HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step76HeadBank_rows]
  rfl

private theorem s6Step76Front_checked : compileHmrSourceFrontLog s6Step76EntryFBefore s6Step76FrontBank 231 52 ⟨230,230,52,51⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step76FrontLog=some s6Step76FrontPlan := by
  have pairEq : s6Step76FrontPair=⟨s6Step76HeadFRow,s6Step76HeadGRow,s6Step76HeadFvRow,s6Step76HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step76FrontHead=⟨s6Step76ExitFRow,s6Step76ExitGRow,s6Step76ExitFvRow,s6Step76ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step76Add0A=s6Step76FrontHead.f.wires := by decide +kernel
  have gEq : s6Step76Add0B=s6Step76FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step76Add1A=s6Step76FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step76Add1B=s6Step76FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step76EntryFBefore s6Step76FrontBank 231 52 ⟨230,230,52,51⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step76FrontLog s6Step76FrontPlan
  · exact s6Step76Front_entry
  · exact s6Step76EntryBank_checked
  · exact s6Step76Front_sigma
  · rfl
  · exact s6Step76Front_branch
  · rfl
  · simpa only [s6Step76FrontPlan,pairEq] using s6Step76HeadBank_checked
  · simpa only [s6Step76FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step76F4_checked
  · exact s6Step76Counter_checked
  · rfl
  · simpa only [s6Step76FrontPlan,headEq] using s6Step76ExitBank_checked

private theorem s6Step76Complete_explicit_checked : compileHmrEarlyStepLog s6Step76EntryFBefore s6Step76FrontBank 231 52 ⟨230,230,52,51⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step76CompleteLog=some s6Step76CompletePlan := by
  let Q := s6Step76EarlyControlPlan
  have hq := s6Step76EarlyControl_plan_checked
  have fv1 : s6Step76CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step76CompleteOut.fv.payload[2]?.getD s6Step76CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step76CompleteOut.fv.payload[3]?.getD s6Step76CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step76CompleteOut.fv.payload[4]?.getD s6Step76CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step76EntryFBefore s6Step76EarlyControlArena s6Step76FrontBank 231 52 ⟨230,230,52,51⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step76CompleteLog s6Step76FrontPlan Q
    s6Step76Front_checked s6Step76Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step76Complete_owned s6Step76Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step76EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 860 s6Step76CompleteOut.fv.second (s6Step76CompleteOut.fv.payload[2]?.getD s6Step76CompleteOut.fv.sign) (s6Step76CompleteOut.fv.payload[3]?.getD s6Step76CompleteOut.fv.sign) (s6Step76CompleteOut.fv.payload[4]?.getD s6Step76CompleteOut.fv.sign) 898 30 s6Step76EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep76Arena : Arena := s6Step76EntryFBefore
def s6PrivateStep76Bank : WindowBank := s6Step76FrontBank
def s6PrivateStep76Spec : HmrSourceWalkStepLog := ⟨231,52,⟨230,230,52,51⟩,30,.early s6Step76CompleteLog⟩
def s6PrivateStep76Plan : HmrSourceStepPlan := .early s6Step76CompletePlan
theorem s6PrivateStep76_source : s6PrivateStep76Spec=s6ObservedLogs64[12] := rfl
theorem s6PrivateStep76_checked : compileHmrSourceStepLog s6PrivateStep76Arena s6PrivateStep76Bank
    s6PrivateStep76Spec.fgWidth s6PrivateStep76Spec.vWidth s6PrivateStep76Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902]
    6 498 76 s6PrivateStep76Spec.need none s6PrivateStep76Spec.log=some s6PrivateStep76Plan := by
  change compileHmrSourceStepLog s6Step76EntryFBefore s6Step76FrontBank 231 52 ⟨230,230,52,51⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 6 498 76 30 none (.early s6Step76CompleteLog)=some (.early s6Step76CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 76<498)]
  rw [s6Step76Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
