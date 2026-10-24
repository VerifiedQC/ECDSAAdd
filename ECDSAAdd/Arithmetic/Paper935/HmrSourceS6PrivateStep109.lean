import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep107
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

private def s6Step109CompleteMoves : List (Wire × Wire) := [(805,213)]

private def s6Step109EarlyControlLog : HmrEarlyControlLog := ⟨[805, 793, 823, 864, 789],[907],[803],[813, 879, 865, 796, 891, 903],[885]⟩

private def s6Step109FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [793]],[[789], [864], [823], [818]],[[], [], [], []]⟩,[890],[882],[907],[803],[813, 879, 865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[813, 879, 865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[907, 803, 813, 879]⟩

private def s6Step109CompleteLog : HmrEarlyStepLog := ⟨s6Step109FrontLog,s6Step109CompleteMoves,s6Step109EarlyControlLog⟩

private def s6Step109ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469],795⟩

private def s6Step109ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818],776⟩

private def s6Step109ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212],777⟩

private def s6Step109ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828],775⟩

private def s6Step109FrontOut : WindowBank := ⟨s6Step109ExitFOut,s6Step109ExitGOut,s6Step109ExitFvOut,s6Step109ExitGvOut⟩

private def s6Step109CompleteOut : WindowBank := s6Step109FrontOut.repacked s6Step109CompleteMoves

private def s6Step109EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step109EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step109EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step109EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step109EarlyControlPositiveArena,[907],s6Step109EarlyControlEqualityArena,[803],⟨⟨890,false⟩,[⟨⟨907,false⟩,803⟩]⟩⟩

private def s6Step109EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step109EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step109EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step109EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step109EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step109EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step109EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,805⟩,⟨⟨772,false⟩,793⟩,⟨⟨771,false⟩,823⟩,⟨⟨770,false⟩,864⟩,⟨⟨769,false⟩,789⟩]⟩

private def s6Step109EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step109EarlyControlZeroArena,s6Step109EarlyControlZeroPlan,s6Step109EarlyControlClassPlan,s6Step109EarlyControlFlagArena,s6Step109EarlyControlFittedArena,s6Step109EarlyControlHistoryArena,s6Step109EarlyControlSigmaArena,s6Step109EarlyControlOutputArena,s6Step109EarlyControlLog⟩

private def s6Step109CounterWork : List Wire := [907, 803, 813, 879]

private theorem s6Step109Counter_bounded : s6Step109CounterWork.toFinset⊆arenaWires := by norm_num [s6Step109CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step109HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step109CounterDuring : Arena := ⟨s6Step109HeadFvAfter.live∪s6Step109CounterWork.toFinset,Finset.union_subset s6Step109HeadFvAfter.bounded s6Step109Counter_bounded⟩

private def s6Step109EntryFFresh : List Wire := []

private def s6Step109EntryFvFresh : List Wire := []

private def s6Step109EntryGFresh : List Wire := []

private def s6Step109EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step109EntryGvFresh : List Wire := [793]

private def s6Step109ExitFExtra : List Wire := [864]

private def s6Step109ExitGExtra : List Wire := [213, 789]

private def s6Step109ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,213),(214,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step109ExitGvExtra : List Wire := [793, 823]

private def s6Step109Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step109Add0Work : List Wire := [813, 879, 865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step109Add0_bounded : s6Step109Add0Work.toFinset⊆arenaWires := by
  have h : s6Step109Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step109Add0During : Arena := ⟨s6Step109Add0Arena.live∪s6Step109Add0Work.toFinset,Finset.union_subset s6Step109Add0Arena.bounded s6Step109Add0_bounded⟩

private def s6Step109Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step109Add1Work : List Wire := [813, 879, 865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step109Add1_bounded : s6Step109Add1Work.toFinset⊆arenaWires := by
  have h : s6Step109Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step109Add1During : Arena := ⟨s6Step109Add1Arena.live∪s6Step109Add1Work.toFinset,Finset.union_subset s6Step109Add1Arena.bounded s6Step109Add1_bounded⟩

private def s6Step109F4FlagArena : Arena := ⟨s6Step109HeadFvAfter.live∪{907},Finset.union_subset s6Step109HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step109F4Plan : HmrHybridF4Plan := ⟨s6Step109F4FlagArena,[907],s6Step109Add0Arena,[803],s6Step109Add0During,s6Step109Add0Work,s6Step109Add1During,s6Step109Add1Work⟩

private def s6Step109HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 864],795⟩

private def s6Step109HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818],776⟩

private def s6Step109HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 789],777⟩

private def s6Step109HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 793, 823],775⟩

private def s6Step109FrontHead : WindowBank := ⟨s6Step109HeadFOut,s6Step109HeadGOut,s6Step109HeadFvOut,s6Step109HeadGvOut⟩

private def s6Step109EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469],795⟩

private def s6Step109EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876],776⟩

private def s6Step109EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213],777⟩

private def s6Step109EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 793],775⟩

private def s6Step109FrontPair : WindowBank := ⟨s6Step109EntryFOut,s6Step109EntryGOut,s6Step109EntryFvOut,s6Step109EntryGvOut⟩

private def s6Step109FrontSigmaArena : Arena := ⟨s6Step109EntryGvAfter.live∪{890},Finset.union_subset s6Step109EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step109HeadFFresh : List Wire := [864]

private def s6Step109HeadFvFresh : List Wire := [818]

private def s6Step109HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step109HeadGFresh : List Wire := [789]

private def s6Step109HeadGvFresh : List Wire := [823]

private def s6Step109FrontPlan : HmrSourceFront := ⟨s6Step109EntryGvAfter,s6Step109FrontPair,(growRow 795 s6Step109EntryFFresh ++ (growRow 777 s6Step109EntryGFresh ++ (growRow 776 s6Step109EntryFvFresh ++ (growRow 775 s6Step109EntryGvFresh ++ [])))),s6Step109FrontSigmaArena,[890],s6Step109HeadGBefore,[882],
  s6Step109HeadFvAfter,s6Step109FrontHead,(growRow 777 s6Step109HeadGFresh ++ (growRow 795 s6Step109HeadFFresh ++ (growRow 775 s6Step109HeadGvFresh ++ (growRow 776 s6Step109HeadFvFresh ++ [])))),s6Step109F4Plan,s6Step109CounterDuring,s6Step109CounterWork,s6Step109ExitGvAfter,s6Step109FrontOut,(shrinkRow 777 s6Step109ExitGExtra ++ (shrinkRow 795 s6Step109ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step109ExitGvExtra ++ []))))⟩

private def s6Step109CompletePlan : HmrEarlyStepPlan := ⟨s6Step109FrontPlan,s6Step109EarlyControlArena,s6Step109EarlyControlPlan,s6Step109CompleteMoves⟩

private theorem s6Step109Complete_apart : List.Disjoint (s6Step109CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [890, 882, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] := by
  have nd : ((s6Step109CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[890, 882, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step109Complete_owned : (s6Step109CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step109EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step109EarlyControlArena (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step109CompleteRelocationMove0Borrowed : Arena := ⟨s6Step109ExitGvAfter.live∪{213},Finset.union_subset s6Step109ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step109CompleteRelocation_move0_owned : 805∈s6Step109ExitGvAfter.live := by norm_num [s6Step109ExitGvAfter,arenaWires]

private theorem s6Step109CompleteRelocation_move0_reserve : s6Step109ExitGvAfter.reserve {213}=some s6Step109CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step109ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step109CompleteRelocation_move0_retire : s6Step109CompleteRelocationMove0Borrowed.retireSet {805}=s6Step109EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step109CompleteRelocationMove0Borrowed s6Step109EarlyControlArena {805}
  change s6Step109EarlyControlArena.live=(s6Step109ExitGvAfter.live∪{213})\{805}
  apply hmrArena_update_of_filter_check s6Step109ExitGvAfter s6Step109EarlyControlArena (fun q => ([(0,213),(214,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [213] [805] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step109CompleteRelocation_checked : s6Step109ExitGvAfter.checkRepack [(805,213)]=some s6Step109EarlyControlArena := by
  have tail1 : s6Step109EarlyControlArena.checkRepack []=some s6Step109EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step109ExitGvAfter s6Step109CompleteRelocationMove0Borrowed s6Step109EarlyControlArena s6Step109EarlyControlArena 805 213 []
    s6Step109CompleteRelocation_move0_owned s6Step109CompleteRelocation_move0_reserve s6Step109CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step109Complete_repack : s6Step109ExitGvAfter.checkRepack s6Step109CompleteMoves=some s6Step109EarlyControlArena := by
  simpa only [s6Step109CompleteMoves] using s6Step109CompleteRelocation_checked

private theorem s6Step109EarlyControl_branchOwned : ([882] : List Wire).toFinset⊆s6Step109EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step109EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step109EarlyControl_branch : compileHmrBranchRetirement s6Step109EarlyControlSigmaArena 882=some s6Step109EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step109EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step109EarlyControlSigmaArena s6Step109EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [882] rfl rfl
    decide +kernel

private theorem s6Step109EarlyControl_classEqualityBorrow : s6Step109EarlyControlPositiveArena.checkBorrow (([890, 907] : List Wire).length-1) s6Step109EarlyControlLog.classWork=some s6Step109EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step109EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step109EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step109EarlyControlPositiveArena s6Step109EarlyControlEqualityArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step109EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step109EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step109EarlyControl_classEqualityOwned : ([890, 907] : List Wire).toFinset⊆s6Step109EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step109EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step109EarlyControl_classEquality : compileHmrEqualityLog s6Step109EarlyControlPositiveArena [890, 907] 0 s6Step109EarlyControlLog.classWork=some (s6Step109EarlyControlEqualityArena,s6Step109EarlyControlLog.classWork,s6Step109EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step109EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step109EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step109EarlyControl_classOwned : ([769, 789, 890] : List Wire).toFinset⊆s6Step109EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step109EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step109EarlyControl_positiveBorrow : s6Step109EarlyControlZeroArena.checkBorrow (1) s6Step109EarlyControlLog.positiveWork=some s6Step109EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step109EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step109EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step109EarlyControlZeroArena s6Step109EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step109EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step109EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step109EarlyControl_class : compileHmrSourceClassLog s6Step109EarlyControlZeroArena false 769 s6Step109EarlyControlZeroPlan.top 0 890 s6Step109EarlyControlLog.positiveWork s6Step109EarlyControlLog.classWork=some s6Step109EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step109EarlyControlClassPlan s6Step109EarlyControlZeroArena false 769 s6Step109EarlyControlZeroPlan.top 0 890
  constructor
  · decide +kernel
  · exact s6Step109EarlyControl_classOwned
  · exact s6Step109EarlyControl_positiveBorrow
  · exact s6Step109EarlyControl_classEquality

private theorem s6Step109EarlyControl_entryRecordOwned : ([882, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).toFinset⊆s6Step109EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step109EarlyControlArena (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step109EarlyControl_entrySigmaOwned : ([890, 254] : List Wire).toFinset⊆s6Step109EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step109EarlyControlArena (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step109EarlyControl_fitBorrow : s6Step109EarlyControlFlagArena.checkBorrow ((36-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).length)) s6Step109EarlyControlLog.recordFresh=some s6Step109EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step109EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step109EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step109EarlyControlFittedArena,s6Step109EarlyControlFlagArena,s6Step109EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step109EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).toFinset⊆s6Step109EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step109EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step109EarlyControl_fit : compileHmrRecordGrowLog s6Step109EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 36 s6Step109EarlyControlLog.recordFresh=some s6Step109EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step109EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step109EarlyControl_fitBorrow

private theorem s6Step109EarlyControl_flagsBorrow : s6Step109EarlyControlEqualityArena.checkBorrow (6) s6Step109EarlyControlLog.flagWork=some s6Step109EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step109EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step109EarlyControlEqualityArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step109EarlyControlEqualityArena s6Step109EarlyControlFlagArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step109EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step109EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step109EarlyControl_flagsOwned : ([803, 253, 252, 251] : List Wire).toFinset⊆s6Step109EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step109EarlyControlEqualityArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step109EarlyControl_flags : compileHmrFlagsLog s6Step109EarlyControlClassPlan.equalityArena s6Step109EarlyControlClassPlan.equality.top 253 252 251 s6Step109EarlyControlLog.flagWork=some s6Step109EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step109EarlyControl_flagsOwned⟩
  · exact s6Step109EarlyControl_flagsBorrow

private theorem s6Step109EarlyControl_historyBorrow : s6Step109EarlyControlArena.checkBorrow ((36-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).length)) s6Step109EarlyControlLog.recordFresh=some s6Step109EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step109EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step109EarlyControlArena (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step109EarlyControlArena s6Step109EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step109EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step109EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step109EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).toFinset⊆s6Step109EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step109EarlyControlArena (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step109EarlyControl_history : compileHmrRecordGrowLog s6Step109EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 36 s6Step109EarlyControlLog.recordFresh=some s6Step109EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step109EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step109EarlyControl_historyBorrow

private theorem s6Step109EarlyControl_sigmaOwned : ([254, 890] : List Wire).toFinset⊆s6Step109EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step109EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step109EarlyControl_sigmaReleaseOwned : ([890] : List Wire).toFinset⊆s6Step109EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step109EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step109EarlyControl_sigmaRelease : s6Step109EarlyControlHistoryArena.release {890} (fun _ => false)=some s6Step109EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step109EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step109EarlyControlHistoryArena s6Step109EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [890] rfl rfl
    decide +kernel

private theorem s6Step109EarlyControl_sigma : compileHmrSigmaDropLog s6Step109EarlyControlHistoryArena false 0 0 254 890 []=some s6Step109EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step109EarlyControl_sigmaOwned⟩
  · exact s6Step109EarlyControl_sigmaRelease

private theorem s6Step109EarlyControl_zeroBorrow : s6Step109EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step109EarlyControlLog.zeroWork=some s6Step109EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step109EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step109EarlyControlArena (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step109EarlyControlArena s6Step109EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step109EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step109EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step109EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step109EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step109EarlyControlArena (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step109EarlyControl_zero : compileHmrEqualityLog s6Step109EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step109EarlyControlLog.zeroWork=some (s6Step109EarlyControlZeroArena,s6Step109EarlyControlLog.zeroWork,s6Step109EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step109EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step109EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step109EarlyControl_logged : s6Step109EarlyControlPlan.Logged s6Step109EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 890 254 253 252 251 882 36 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step109EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step109EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step109EarlyControl_zero
  · exact s6Step109EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step109EarlyControl_flags
  · exact s6Step109EarlyControl_fit
  · exact s6Step109EarlyControl_history
  · exact s6Step109EarlyControl_sigma
  · exact s6Step109EarlyControl_branch

private theorem s6Step109EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step109EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 890 254 253 252 251 882 36 s6Step109EarlyControlLog=some s6Step109EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step109EarlyControlPlan s6Step109EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 890 254 253 252 251 882 36 s6Step109EarlyControl_logged

private def s6Step109EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step109EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469],795⟩

private def s6Step109EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876],776⟩

private def s6Step109EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213],777⟩

private def s6Step109EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828],775⟩

private def s6Step109FrontBank : WindowBank := ⟨s6Step109EntryFRow,s6Step109EntryGRow,s6Step109EntryFvRow,s6Step109EntryGvRow⟩

private def s6Step109Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 864, 795]

private def s6Step109Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 789, 777]

private def s6Step109Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 776]

private def s6Step109Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 793, 823, 775]

private theorem s6Step109Counter_apart : Disjoint s6Step109HeadFvAfter.live s6Step109CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step109HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step109Counter_borrowed : s6Step109HeadFvAfter.checkBorrow 4 s6Step109CounterWork=some s6Step109CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step109HeadFvAfter s6Step109CounterDuring s6Step109CounterWork.toFinset s6Step109Counter_bounded s6Step109Counter_apart rfl

private theorem s6Step109Counter_owned : (890::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step109HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step109HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step109Counter_checked : compileHmrCounterStepLog s6Step109HeadFvAfter true 890 [774, 773, 772, 771, 770, 769] s6Step109CounterWork=some s6Step109CounterDuring := by
  have owned : ∀q∈890::[774, 773, 772, 771, 770, 769],q∈s6Step109HeadFvAfter.live := fun q hq => s6Step109Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step109Counter_borrowed

private def s6Step109EntryFAfter : Arena := s6Step109EntryFBefore

private theorem s6Step109EntryBank_incomingDistinct : ([s6Step109EntryFRow,s6Step109EntryGRow,s6Step109EntryFvRow,s6Step109EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step109EntryF_Incoming : rowsOwned s6Step109EntryFBefore [s6Step109EntryFRow,s6Step109EntryGRow,s6Step109EntryFvRow,s6Step109EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step109EntryFRow,s6Step109EntryGRow,s6Step109EntryFvRow,s6Step109EntryGvRow] 0 s6Step109EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step109EntryFBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step109EntryBank_outgoingOwned : rowsOwned s6Step109EntryGvAfter [s6Step109EntryFOut,s6Step109EntryGOut,s6Step109EntryFvOut,s6Step109EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step109EntryGvAfter (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step109EntryF_Outgoing : rowsOwned s6Step109EntryGvAfter [s6Step109EntryFOut,s6Step109EntryGOut,s6Step109EntryFvOut,s6Step109EntryGvOut] :=
  hmrRows_owned_drop s6Step109EntryGvAfter [s6Step109EntryFOut,s6Step109EntryGOut,s6Step109EntryFvOut,s6Step109EntryGvOut] 0 s6Step109EntryBank_outgoingOwned

private theorem s6Step109EntryF_distinct : (s6Step109EntryFRow.sign::s6Step109EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step109EntryF_owned : (s6Step109EntryFRow.sign::s6Step109EntryFRow.payload).toFinset⊆s6Step109EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step109EntryFBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step109EntryF_reserved : s6Step109EntryFBefore.reserve s6Step109EntryFFresh.toFinset=some s6Step109EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step109EntryFFresh,arenaWires]
  · norm_num [s6Step109EntryFBefore,s6Step109EntryFFresh,arenaWires]
  · simp only [s6Step109EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step109EntryF_checked : planRowResizeLog s6Step109EntryFBefore s6Step109EntryFRow 214 s6Step109EntryFFresh=
    some (s6Step109EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469],795⟩,growRow 795 s6Step109EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step109EntryFBefore s6Step109EntryFAfter s6Step109EntryFRow 214 s6Step109EntryFFresh
    s6Step109EntryF_distinct s6Step109EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step109EntryF_reserved
  have rowEq : WindowRow.mk (s6Step109EntryFRow.payload++s6Step109EntryFFresh) s6Step109EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step109EntryFvAfter : Arena := s6Step109EntryFBefore

private def s6Step109EntryFvBefore : Arena := s6Step109EntryFBefore

private theorem s6Step109EntryFv_Incoming : rowsOwned s6Step109EntryFvBefore [s6Step109EntryFvRow,s6Step109EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step109EntryFRow,s6Step109EntryGRow,s6Step109EntryFvRow,s6Step109EntryGvRow] 2 s6Step109EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step109EntryFvBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step109EntryFv_Outgoing : rowsOwned s6Step109EntryGvAfter [s6Step109EntryFvOut,s6Step109EntryGvOut] :=
  hmrRows_owned_drop s6Step109EntryGvAfter [s6Step109EntryFOut,s6Step109EntryGOut,s6Step109EntryFvOut,s6Step109EntryGvOut] 2 s6Step109EntryBank_outgoingOwned

private theorem s6Step109EntryFv_distinct : (s6Step109EntryFvRow.sign::s6Step109EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step109EntryFv_owned : (s6Step109EntryFvRow.sign::s6Step109EntryFvRow.payload).toFinset⊆s6Step109EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step109EntryFvBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step109EntryFv_reserved : s6Step109EntryFvBefore.reserve s6Step109EntryFvFresh.toFinset=some s6Step109EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step109EntryFvFresh,arenaWires]
  · norm_num [s6Step109EntryFvBefore,s6Step109EntryFBefore,s6Step109EntryFvFresh,arenaWires]
  · simp only [s6Step109EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step109EntryFv_checked : planRowResizeLog s6Step109EntryFvBefore s6Step109EntryFvRow 68 s6Step109EntryFvFresh=
    some (s6Step109EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876],776⟩,growRow 776 s6Step109EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step109EntryFvBefore s6Step109EntryFvAfter s6Step109EntryFvRow 68 s6Step109EntryFvFresh
    s6Step109EntryFv_distinct s6Step109EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step109EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step109EntryFvRow.payload++s6Step109EntryFvFresh) s6Step109EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step109EntryGAfter : Arena := s6Step109EntryFBefore

private def s6Step109EntryGBefore : Arena := s6Step109EntryFBefore

private theorem s6Step109EntryG_Incoming : rowsOwned s6Step109EntryGBefore [s6Step109EntryGRow,s6Step109EntryFvRow,s6Step109EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step109EntryFRow,s6Step109EntryGRow,s6Step109EntryFvRow,s6Step109EntryGvRow] 1 s6Step109EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step109EntryGBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step109EntryG_Outgoing : rowsOwned s6Step109EntryGvAfter [s6Step109EntryGOut,s6Step109EntryFvOut,s6Step109EntryGvOut] :=
  hmrRows_owned_drop s6Step109EntryGvAfter [s6Step109EntryFOut,s6Step109EntryGOut,s6Step109EntryFvOut,s6Step109EntryGvOut] 1 s6Step109EntryBank_outgoingOwned

private theorem s6Step109EntryG_distinct : (s6Step109EntryGRow.sign::s6Step109EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step109EntryG_owned : (s6Step109EntryGRow.sign::s6Step109EntryGRow.payload).toFinset⊆s6Step109EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step109EntryGBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step109EntryG_reserved : s6Step109EntryGBefore.reserve s6Step109EntryGFresh.toFinset=some s6Step109EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step109EntryGFresh,arenaWires]
  · norm_num [s6Step109EntryGBefore,s6Step109EntryFBefore,s6Step109EntryGFresh,arenaWires]
  · simp only [s6Step109EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step109EntryG_checked : planRowResizeLog s6Step109EntryGBefore s6Step109EntryGRow 214 s6Step109EntryGFresh=
    some (s6Step109EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213],777⟩,growRow 777 s6Step109EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step109EntryGBefore s6Step109EntryGAfter s6Step109EntryGRow 214 s6Step109EntryGFresh
    s6Step109EntryG_distinct s6Step109EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step109EntryG_reserved
  have rowEq : WindowRow.mk (s6Step109EntryGRow.payload++s6Step109EntryGFresh) s6Step109EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step109EntryGvBefore : Arena := s6Step109EntryFBefore

private theorem s6Step109EntryGv_Incoming : rowsOwned s6Step109EntryGvBefore [s6Step109EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step109EntryFRow,s6Step109EntryGRow,s6Step109EntryFvRow,s6Step109EntryGvRow] 3 s6Step109EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step109EntryGvBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step109EntryGv_Outgoing : rowsOwned s6Step109EntryGvAfter [s6Step109EntryGvOut] :=
  hmrRows_owned_drop s6Step109EntryGvAfter [s6Step109EntryFOut,s6Step109EntryGOut,s6Step109EntryFvOut,s6Step109EntryGvOut] 3 s6Step109EntryBank_outgoingOwned

private theorem s6Step109EntryGv_distinct : (s6Step109EntryGvRow.sign::s6Step109EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step109EntryGv_owned : (s6Step109EntryGvRow.sign::s6Step109EntryGvRow.payload).toFinset⊆s6Step109EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step109EntryGvBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step109EntryGv_reserved : s6Step109EntryGvBefore.reserve s6Step109EntryGvFresh.toFinset=some s6Step109EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step109EntryGvFresh,arenaWires]
  · norm_num [s6Step109EntryGvBefore,s6Step109EntryFBefore,s6Step109EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step109EntryGvBefore s6Step109EntryGvAfter (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step109EntryGvFresh rfl rfl
    · norm_num [s6Step109EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step109EntryGv_checked : planRowResizeLog s6Step109EntryGvBefore s6Step109EntryGvRow 68 s6Step109EntryGvFresh=
    some (s6Step109EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 793],775⟩,growRow 775 s6Step109EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step109EntryGvBefore s6Step109EntryGvAfter s6Step109EntryGvRow 68 s6Step109EntryGvFresh
    s6Step109EntryGv_distinct s6Step109EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step109EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step109EntryGvRow.payload++s6Step109EntryGvFresh) s6Step109EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 793],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step109EntryBank_rows : planWindowRowsLog s6Step109EntryFBefore [(s6Step109EntryFRow,214),(s6Step109EntryGRow,214),(s6Step109EntryFvRow,68),(s6Step109EntryGvRow,68)] [s6Step109EntryFFresh,s6Step109EntryGFresh,s6Step109EntryFvFresh,s6Step109EntryGvFresh]=
    some (s6Step109EntryGvAfter,[s6Step109EntryFOut,s6Step109EntryGOut,s6Step109EntryFvOut,s6Step109EntryGvOut],(growRow 795 s6Step109EntryFFresh ++ (growRow 777 s6Step109EntryGFresh ++ (growRow 776 s6Step109EntryFvFresh ++ (growRow 775 s6Step109EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step109EntryGvAfter [] []=some (s6Step109EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step109EntryGvBefore s6Step109EntryGvAfter s6Step109EntryGvAfter
    s6Step109EntryGvRow s6Step109EntryGvOut 68 s6Step109EntryGvFresh [] [] []
    (growRow 775 s6Step109EntryGvFresh) ([]) s6Step109EntryGv_Incoming s6Step109EntryGv_checked h4 s6Step109EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step109EntryFvBefore s6Step109EntryFvAfter s6Step109EntryGvAfter
    s6Step109EntryFvRow s6Step109EntryFvOut 68 s6Step109EntryFvFresh [(s6Step109EntryGvRow,68)] [s6Step109EntryGvFresh] [s6Step109EntryGvOut]
    (growRow 776 s6Step109EntryFvFresh) ((growRow 775 s6Step109EntryGvFresh ++ [])) s6Step109EntryFv_Incoming s6Step109EntryFv_checked h3 s6Step109EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step109EntryGBefore s6Step109EntryGAfter s6Step109EntryGvAfter
    s6Step109EntryGRow s6Step109EntryGOut 214 s6Step109EntryGFresh [(s6Step109EntryFvRow,68),(s6Step109EntryGvRow,68)] [s6Step109EntryFvFresh,s6Step109EntryGvFresh] [s6Step109EntryFvOut,s6Step109EntryGvOut]
    (growRow 777 s6Step109EntryGFresh) ((growRow 776 s6Step109EntryFvFresh ++ (growRow 775 s6Step109EntryGvFresh ++ []))) s6Step109EntryG_Incoming s6Step109EntryG_checked h2 s6Step109EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step109EntryFBefore s6Step109EntryFAfter s6Step109EntryGvAfter
    s6Step109EntryFRow s6Step109EntryFOut 214 s6Step109EntryFFresh [(s6Step109EntryGRow,214),(s6Step109EntryFvRow,68),(s6Step109EntryGvRow,68)] [s6Step109EntryGFresh,s6Step109EntryFvFresh,s6Step109EntryGvFresh] [s6Step109EntryGOut,s6Step109EntryFvOut,s6Step109EntryGvOut]
    (growRow 795 s6Step109EntryFFresh) ((growRow 777 s6Step109EntryGFresh ++ (growRow 776 s6Step109EntryFvFresh ++ (growRow 775 s6Step109EntryGvFresh ++ [])))) s6Step109EntryF_Incoming s6Step109EntryF_checked h1 s6Step109EntryF_Outgoing
  exact h0

private theorem s6Step109EntryBank_checked : compileHmrBankResizeLog .entry s6Step109EntryFBefore ⟨s6Step109EntryFRow,s6Step109EntryGRow,s6Step109EntryFvRow,s6Step109EntryGvRow⟩ ⟨214,214,68,68⟩ [s6Step109EntryFFresh,s6Step109EntryGFresh,s6Step109EntryFvFresh,s6Step109EntryGvFresh]=
    some (s6Step109EntryGvAfter,⟨s6Step109EntryFOut,s6Step109EntryGOut,s6Step109EntryFvOut,s6Step109EntryGvOut⟩,(growRow 795 s6Step109EntryFFresh ++ (growRow 777 s6Step109EntryGFresh ++ (growRow 776 s6Step109EntryFvFresh ++ (growRow 775 s6Step109EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step109EntryBank_rows]
  rfl

private def s6Step109ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,213),(214,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step109ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,213),(214,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step109ExitFBefore : Arena := s6Step109ExitGAfter

private def s6Step109ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 864],795⟩

private def s6Step109ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818],776⟩

private def s6Step109ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 789],777⟩

private def s6Step109ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 793, 823],775⟩

private theorem s6Step109ExitBank_incomingDistinct : ([s6Step109ExitGRow,s6Step109ExitFRow,s6Step109ExitFvRow,s6Step109ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step109ExitF_Incoming : rowsOwned s6Step109ExitFBefore [s6Step109ExitFRow,s6Step109ExitFvRow,s6Step109ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step109ExitGRow,s6Step109ExitFRow,s6Step109ExitFvRow,s6Step109ExitGvRow] 1 s6Step109ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step109ExitFBefore (fun q => ([(0,213),(214,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step109ExitBank_outgoingOwned : rowsOwned s6Step109ExitGvAfter [s6Step109ExitGOut,s6Step109ExitFOut,s6Step109ExitFvOut,s6Step109ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step109ExitGvAfter (fun q => ([(0,213),(214,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step109ExitF_Outgoing : rowsOwned s6Step109ExitGvAfter [s6Step109ExitFOut,s6Step109ExitFvOut,s6Step109ExitGvOut] :=
  hmrRows_owned_drop s6Step109ExitGvAfter [s6Step109ExitGOut,s6Step109ExitFOut,s6Step109ExitFvOut,s6Step109ExitGvOut] 1 s6Step109ExitBank_outgoingOwned

private theorem s6Step109ExitF_distinct : (s6Step109ExitFRow.sign::s6Step109ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step109ExitF_owned : (s6Step109ExitFRow.sign::s6Step109ExitFRow.payload).toFinset⊆s6Step109ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step109ExitFBefore (fun q => ([(0,213),(214,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step109ExitF_retired : s6Step109ExitFBefore.retireSet s6Step109ExitFExtra.toFinset=s6Step109ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step109ExitFBefore s6Step109ExitFAfter s6Step109ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step109ExitFBefore s6Step109ExitFAfter (fun q => ([(0,213),(214,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,213),(214,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step109ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step109ExitF_checked : planRowResizeLog s6Step109ExitFBefore s6Step109ExitFRow 214 []=
    some (s6Step109ExitFAfter,s6Step109ExitFOut,shrinkRow 795 s6Step109ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step109ExitFBefore s6Step109ExitFRow 214 s6Step109ExitF_distinct s6Step109ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step109ExitFRow.payload.take 214) s6Step109ExitFRow.sign=s6Step109ExitFOut := by decide +kernel
  have hi : s6Step109ExitFRow.payload.drop 214=s6Step109ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step109ExitF_retired] at result
  exact result

private def s6Step109ExitFvAfter : Arena := s6Step109ExitFAfter

private def s6Step109ExitFvBefore : Arena := s6Step109ExitFAfter

private theorem s6Step109ExitFv_Incoming : rowsOwned s6Step109ExitFvBefore [s6Step109ExitFvRow,s6Step109ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step109ExitGRow,s6Step109ExitFRow,s6Step109ExitFvRow,s6Step109ExitGvRow] 2 s6Step109ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step109ExitFvBefore (fun q => ([(0,213),(214,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step109ExitFv_Outgoing : rowsOwned s6Step109ExitGvAfter [s6Step109ExitFvOut,s6Step109ExitGvOut] :=
  hmrRows_owned_drop s6Step109ExitGvAfter [s6Step109ExitGOut,s6Step109ExitFOut,s6Step109ExitFvOut,s6Step109ExitGvOut] 2 s6Step109ExitBank_outgoingOwned

private theorem s6Step109ExitFv_distinct : (s6Step109ExitFvRow.sign::s6Step109ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step109ExitFv_owned : (s6Step109ExitFvRow.sign::s6Step109ExitFvRow.payload).toFinset⊆s6Step109ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step109ExitFvBefore (fun q => ([(0,213),(214,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step109ExitFv_reserved : s6Step109ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step109ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step109ExitFv_checked : planRowResizeLog s6Step109ExitFvBefore s6Step109ExitFvRow 69 []=
    some (s6Step109ExitFvAfter,s6Step109ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step109ExitFvBefore s6Step109ExitFvAfter s6Step109ExitFvRow 69 []
    s6Step109ExitFv_distinct s6Step109ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step109ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step109ExitFvRow.payload++[]) s6Step109ExitFvRow.sign=s6Step109ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step109ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step109ExitG_Incoming : rowsOwned s6Step109ExitGBefore [s6Step109ExitGRow,s6Step109ExitFRow,s6Step109ExitFvRow,s6Step109ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step109ExitGRow,s6Step109ExitFRow,s6Step109ExitFvRow,s6Step109ExitGvRow] 0 s6Step109ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step109ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step109ExitG_Outgoing : rowsOwned s6Step109ExitGvAfter [s6Step109ExitGOut,s6Step109ExitFOut,s6Step109ExitFvOut,s6Step109ExitGvOut] :=
  hmrRows_owned_drop s6Step109ExitGvAfter [s6Step109ExitGOut,s6Step109ExitFOut,s6Step109ExitFvOut,s6Step109ExitGvOut] 0 s6Step109ExitBank_outgoingOwned

private theorem s6Step109ExitG_distinct : (s6Step109ExitGRow.sign::s6Step109ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step109ExitG_owned : (s6Step109ExitGRow.sign::s6Step109ExitGRow.payload).toFinset⊆s6Step109ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step109ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step109ExitG_retired : s6Step109ExitGBefore.retireSet s6Step109ExitGExtra.toFinset=s6Step109ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step109ExitGBefore s6Step109ExitGAfter s6Step109ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step109ExitGBefore s6Step109ExitGAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,213),(214,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step109ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step109ExitG_checked : planRowResizeLog s6Step109ExitGBefore s6Step109ExitGRow 213 []=
    some (s6Step109ExitGAfter,s6Step109ExitGOut,shrinkRow 777 s6Step109ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step109ExitGBefore s6Step109ExitGRow 213 s6Step109ExitG_distinct s6Step109ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step109ExitGRow.payload.take 213) s6Step109ExitGRow.sign=s6Step109ExitGOut := by decide +kernel
  have hi : s6Step109ExitGRow.payload.drop 213=s6Step109ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step109ExitG_retired] at result
  exact result

private def s6Step109ExitGvBefore : Arena := s6Step109ExitFAfter

private theorem s6Step109ExitGv_Incoming : rowsOwned s6Step109ExitGvBefore [s6Step109ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step109ExitGRow,s6Step109ExitFRow,s6Step109ExitFvRow,s6Step109ExitGvRow] 3 s6Step109ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step109ExitGvBefore (fun q => ([(0,213),(214,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step109ExitGv_Outgoing : rowsOwned s6Step109ExitGvAfter [s6Step109ExitGvOut] :=
  hmrRows_owned_drop s6Step109ExitGvAfter [s6Step109ExitGOut,s6Step109ExitFOut,s6Step109ExitFvOut,s6Step109ExitGvOut] 3 s6Step109ExitBank_outgoingOwned

private theorem s6Step109ExitGv_distinct : (s6Step109ExitGvRow.sign::s6Step109ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step109ExitGv_owned : (s6Step109ExitGvRow.sign::s6Step109ExitGvRow.payload).toFinset⊆s6Step109ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step109ExitGvBefore (fun q => ([(0,213),(214,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step109ExitGv_retired : s6Step109ExitGvBefore.retireSet s6Step109ExitGvExtra.toFinset=s6Step109ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step109ExitGvBefore s6Step109ExitGvAfter s6Step109ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step109ExitGvBefore s6Step109ExitGvAfter (fun q => ([(0,213),(214,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,213),(214,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step109ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step109ExitGv_checked : planRowResizeLog s6Step109ExitGvBefore s6Step109ExitGvRow 67 []=
    some (s6Step109ExitGvAfter,s6Step109ExitGvOut,shrinkRow 775 s6Step109ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step109ExitGvBefore s6Step109ExitGvRow 67 s6Step109ExitGv_distinct s6Step109ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step109ExitGvRow.payload.take 67) s6Step109ExitGvRow.sign=s6Step109ExitGvOut := by decide +kernel
  have hi : s6Step109ExitGvRow.payload.drop 67=s6Step109ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step109ExitGv_retired] at result
  exact result

private theorem s6Step109ExitBank_rows : planWindowRowsLog s6Step109ExitGBefore [(s6Step109ExitGRow,213),(s6Step109ExitFRow,214),(s6Step109ExitFvRow,69),(s6Step109ExitGvRow,67)] [[],[],[],[]]=
    some (s6Step109ExitGvAfter,[s6Step109ExitGOut,s6Step109ExitFOut,s6Step109ExitFvOut,s6Step109ExitGvOut],(shrinkRow 777 s6Step109ExitGExtra ++ (shrinkRow 795 s6Step109ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step109ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step109ExitGvAfter [] []=some (s6Step109ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step109ExitGvBefore s6Step109ExitGvAfter s6Step109ExitGvAfter
    s6Step109ExitGvRow s6Step109ExitGvOut 67 [] [] [] []
    (shrinkRow 775 s6Step109ExitGvExtra) ([]) s6Step109ExitGv_Incoming s6Step109ExitGv_checked h4 s6Step109ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step109ExitFvBefore s6Step109ExitFvAfter s6Step109ExitGvAfter
    s6Step109ExitFvRow s6Step109ExitFvOut 69 [] [(s6Step109ExitGvRow,67)] [[]] [s6Step109ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step109ExitGvExtra ++ [])) s6Step109ExitFv_Incoming s6Step109ExitFv_checked h3 s6Step109ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step109ExitFBefore s6Step109ExitFAfter s6Step109ExitGvAfter
    s6Step109ExitFRow s6Step109ExitFOut 214 [] [(s6Step109ExitFvRow,69),(s6Step109ExitGvRow,67)] [[],[]] [s6Step109ExitFvOut,s6Step109ExitGvOut]
    (shrinkRow 795 s6Step109ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step109ExitGvExtra ++ []))) s6Step109ExitF_Incoming s6Step109ExitF_checked h2 s6Step109ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step109ExitGBefore s6Step109ExitGAfter s6Step109ExitGvAfter
    s6Step109ExitGRow s6Step109ExitGOut 213 [] [(s6Step109ExitFRow,214),(s6Step109ExitFvRow,69),(s6Step109ExitGvRow,67)] [[],[],[]] [s6Step109ExitFOut,s6Step109ExitFvOut,s6Step109ExitGvOut]
    (shrinkRow 777 s6Step109ExitGExtra) ((shrinkRow 795 s6Step109ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step109ExitGvExtra ++ [])))) s6Step109ExitG_Incoming s6Step109ExitG_checked h1 s6Step109ExitG_Outgoing
  exact h0

private theorem s6Step109ExitBank_checked : compileHmrBankResizeLog .exit s6Step109ExitGBefore ⟨s6Step109ExitFRow,s6Step109ExitGRow,s6Step109ExitFvRow,s6Step109ExitGvRow⟩ ⟨214,213,69,67⟩ [[],[],[],[]]=
    some (s6Step109ExitGvAfter,⟨s6Step109ExitFOut,s6Step109ExitGOut,s6Step109ExitFvOut,s6Step109ExitGvOut⟩,(shrinkRow 777 s6Step109ExitGExtra ++ (shrinkRow 795 s6Step109ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step109ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step109ExitBank_rows]
  rfl

private theorem s6Step109Add0_apart : Disjoint s6Step109Add0Arena.live s6Step109Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step109Add0Arena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step109Add0_card : s6Step109Add0Arena.live.card=873 := by
  decide +kernel

private theorem s6Step109Add0_borrowed : s6Step109Add0Arena.checkBorrow (hmrHybridCount s6Step109Add0Arena s6Step109Add0B.length) s6Step109Add0Work=some s6Step109Add0During := by
  have len : s6Step109Add0Work.length=hmrHybridCount s6Step109Add0Arena s6Step109Add0B.length := by
    rw [hmrHybridCount,s6Step109Add0_card]
    decide +kernel
  have nd : s6Step109Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step109Add0Arena s6Step109Add0During s6Step109Add0Work.toFinset s6Step109Add0_bounded s6Step109Add0_apart rfl

private theorem s6Step109Add0_distinct : (907::882::803::(s6Step109Add0A++s6Step109Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step109Add0_owned : (907::882::803::(s6Step109Add0A++s6Step109Add0B)).toFinset⊆s6Step109Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step109Add0Arena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step109Add0_checked : compileHmrHybridCinLog s6Step109Add0Arena 882 907 803 s6Step109Add0A s6Step109Add0B s6Step109Add0Work=some s6Step109Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step109Add0Arena s6Step109Add0During 882 907 803 s6Step109Add0A s6Step109Add0B s6Step109Add0Work
    (by decide +kernel) (by decide +kernel) s6Step109Add0_distinct
    (fun q hq => s6Step109Add0_owned (List.mem_toFinset.mpr hq)) s6Step109Add0_borrowed

private theorem s6Step109Add1_apart : Disjoint s6Step109Add1Arena.live s6Step109Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step109Add1Arena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step109Add1_card : s6Step109Add1Arena.live.card=873 := by
  decide +kernel

private theorem s6Step109Add1_borrowed : s6Step109Add1Arena.checkBorrow (hmrHybridCount s6Step109Add1Arena s6Step109Add1B.length) s6Step109Add1Work=some s6Step109Add1During := by
  have len : s6Step109Add1Work.length=hmrHybridCount s6Step109Add1Arena s6Step109Add1B.length := by
    rw [hmrHybridCount,s6Step109Add1_card]
    decide +kernel
  have nd : s6Step109Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step109Add1Arena s6Step109Add1During s6Step109Add1Work.toFinset s6Step109Add1_bounded s6Step109Add1_apart rfl

private theorem s6Step109Add1_distinct : (907::882::803::(s6Step109Add1A++s6Step109Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step109Add1_owned : (907::882::803::(s6Step109Add1A++s6Step109Add1B)).toFinset⊆s6Step109Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step109Add1Arena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step109Add1_checked : compileHmrHybridCinLog s6Step109Add1Arena 882 907 803 s6Step109Add1A s6Step109Add1B s6Step109Add1Work=some s6Step109Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step109Add1Arena s6Step109Add1During 882 907 803 s6Step109Add1A s6Step109Add1B s6Step109Add1Work
    (by decide +kernel) (by decide +kernel) s6Step109Add1_distinct
    (fun q hq => s6Step109Add1_owned (List.mem_toFinset.mpr hq)) s6Step109Add1_borrowed

private theorem s6Step109F4_apart : Disjoint (s6Step109Add0A++s6Step109Add0B).toFinset (s6Step109Add1A++s6Step109Add1B).toFinset := by
  have nd : ((s6Step109Add0A++s6Step109Add0B)++(s6Step109Add1A++s6Step109Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step109F4_carry : s6Step109F4FlagArena.checkBorrow 1 [803]=some s6Step109Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step109F4FlagArena,s6Step109HeadFvAfter,arenaWires]
  · change s6Step109Add0Arena.live=(s6Step109HeadFvAfter.live∪{907})∪{803}
    apply hmrArena_union_pair_of_filter_check s6Step109HeadFvAfter s6Step109Add0Arena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 907 803 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step109F4_distinct : (890::882::907::803::((s6Step109Add0A++s6Step109Add1A)++(s6Step109Add0B++s6Step109Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step109F4_flag : s6Step109HeadFvAfter.checkBorrow 1 [907]=some s6Step109F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step109HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step109F4_owned : (890::882::((s6Step109Add0A++s6Step109Add1A)++(s6Step109Add0B++s6Step109Add1B))).toFinset⊆s6Step109HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step109HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step109F4_checked : compileHmrHybridF4Log s6Step109HeadFvAfter 890 882 s6Step109Add0A s6Step109Add0B s6Step109Add1A s6Step109Add1B [907] [803] s6Step109Add0Work s6Step109Add1Work=some s6Step109F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step109HeadFvAfter s6Step109F4FlagArena s6Step109Add0Arena s6Step109Add0During s6Step109Add1During 890 882
    s6Step109Add0A s6Step109Add0B s6Step109Add1A s6Step109Add1B [907] [803] s6Step109Add0Work s6Step109Add1Work
    (fun q hq => s6Step109F4_owned (List.mem_toFinset.mpr hq)) s6Step109F4_flag s6Step109F4_carry
    s6Step109F4_distinct s6Step109F4_apart s6Step109Add0_checked s6Step109Add1_checked

private theorem s6Step109Front_branch : s6Step109FrontSigmaArena.checkBorrow 1 [882]=some s6Step109HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step109FrontSigmaArena,s6Step109EntryGvAfter,arenaWires]
  · change s6Step109HeadGBefore.live=(s6Step109EntryGvAfter.live∪{890})∪{882}
    apply hmrArena_union_pair_of_filter_check s6Step109EntryGvAfter s6Step109HeadGBefore (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 890 882 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step109Front_entry : HmrFrontEntryValid s6Step109EntryFBefore s6Step109FrontBank 214 68 ⟨214,213,69,67⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step109FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step109EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step109EntryFBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step109FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step109Front_sigma : s6Step109EntryGvAfter.checkBorrow 1 [890]=some s6Step109FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step109EntryGvAfter,arenaWires]
  · rfl

private def s6Step109HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step109HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step109HeadFBefore : Arena := s6Step109HeadGAfter

private def s6Step109HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469],795⟩

private def s6Step109HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876],776⟩

private def s6Step109HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213],777⟩

private def s6Step109HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 793],775⟩

private theorem s6Step109HeadBank_incomingDistinct : ([s6Step109HeadGRow,s6Step109HeadFRow,s6Step109HeadGvRow,s6Step109HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step109HeadF_Incoming : rowsOwned s6Step109HeadFBefore [s6Step109HeadFRow,s6Step109HeadGvRow,s6Step109HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step109HeadGRow,s6Step109HeadFRow,s6Step109HeadGvRow,s6Step109HeadFvRow] 1 s6Step109HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step109HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step109HeadBank_outgoingOwned : rowsOwned s6Step109HeadFvAfter [s6Step109HeadGOut,s6Step109HeadFOut,s6Step109HeadGvOut,s6Step109HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step109HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step109HeadF_Outgoing : rowsOwned s6Step109HeadFvAfter [s6Step109HeadFOut,s6Step109HeadGvOut,s6Step109HeadFvOut] :=
  hmrRows_owned_drop s6Step109HeadFvAfter [s6Step109HeadGOut,s6Step109HeadFOut,s6Step109HeadGvOut,s6Step109HeadFvOut] 1 s6Step109HeadBank_outgoingOwned

private theorem s6Step109HeadF_distinct : (s6Step109HeadFRow.sign::s6Step109HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step109HeadF_owned : (s6Step109HeadFRow.sign::s6Step109HeadFRow.payload).toFinset⊆s6Step109HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step109HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step109HeadF_reserved : s6Step109HeadFBefore.reserve s6Step109HeadFFresh.toFinset=some s6Step109HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step109HeadFFresh,arenaWires]
  · norm_num [s6Step109HeadFBefore,s6Step109HeadGAfter,s6Step109HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step109HeadFBefore s6Step109HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step109HeadFFresh rfl rfl
    · norm_num [s6Step109HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step109HeadF_checked : planRowResizeLog s6Step109HeadFBefore s6Step109HeadFRow 215 s6Step109HeadFFresh=
    some (s6Step109HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 864],795⟩,growRow 795 s6Step109HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step109HeadFBefore s6Step109HeadFAfter s6Step109HeadFRow 215 s6Step109HeadFFresh
    s6Step109HeadF_distinct s6Step109HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step109HeadF_reserved
  have rowEq : WindowRow.mk (s6Step109HeadFRow.payload++s6Step109HeadFFresh) s6Step109HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 864],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step109HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step109HeadFvBefore : Arena := s6Step109HeadGvAfter

private theorem s6Step109HeadFv_Incoming : rowsOwned s6Step109HeadFvBefore [s6Step109HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step109HeadGRow,s6Step109HeadFRow,s6Step109HeadGvRow,s6Step109HeadFvRow] 3 s6Step109HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step109HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step109HeadFv_Outgoing : rowsOwned s6Step109HeadFvAfter [s6Step109HeadFvOut] :=
  hmrRows_owned_drop s6Step109HeadFvAfter [s6Step109HeadGOut,s6Step109HeadFOut,s6Step109HeadGvOut,s6Step109HeadFvOut] 3 s6Step109HeadBank_outgoingOwned

private theorem s6Step109HeadFv_distinct : (s6Step109HeadFvRow.sign::s6Step109HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step109HeadFv_owned : (s6Step109HeadFvRow.sign::s6Step109HeadFvRow.payload).toFinset⊆s6Step109HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step109HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step109HeadFv_reserved : s6Step109HeadFvBefore.reserve s6Step109HeadFvFresh.toFinset=some s6Step109HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step109HeadFvFresh,arenaWires]
  · norm_num [s6Step109HeadFvBefore,s6Step109HeadGvAfter,s6Step109HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step109HeadFvBefore s6Step109HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step109HeadFvFresh rfl rfl
    · norm_num [s6Step109HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step109HeadFv_checked : planRowResizeLog s6Step109HeadFvBefore s6Step109HeadFvRow 69 s6Step109HeadFvFresh=
    some (s6Step109HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818],776⟩,growRow 776 s6Step109HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step109HeadFvBefore s6Step109HeadFvAfter s6Step109HeadFvRow 69 s6Step109HeadFvFresh
    s6Step109HeadFv_distinct s6Step109HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step109HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step109HeadFvRow.payload++s6Step109HeadFvFresh) s6Step109HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step109HeadG_Incoming : rowsOwned s6Step109HeadGBefore [s6Step109HeadGRow,s6Step109HeadFRow,s6Step109HeadGvRow,s6Step109HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step109HeadGRow,s6Step109HeadFRow,s6Step109HeadGvRow,s6Step109HeadFvRow] 0 s6Step109HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step109HeadGBefore (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step109HeadG_Outgoing : rowsOwned s6Step109HeadFvAfter [s6Step109HeadGOut,s6Step109HeadFOut,s6Step109HeadGvOut,s6Step109HeadFvOut] :=
  hmrRows_owned_drop s6Step109HeadFvAfter [s6Step109HeadGOut,s6Step109HeadFOut,s6Step109HeadGvOut,s6Step109HeadFvOut] 0 s6Step109HeadBank_outgoingOwned

private theorem s6Step109HeadG_distinct : (s6Step109HeadGRow.sign::s6Step109HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step109HeadG_owned : (s6Step109HeadGRow.sign::s6Step109HeadGRow.payload).toFinset⊆s6Step109HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step109HeadGBefore (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step109HeadG_reserved : s6Step109HeadGBefore.reserve s6Step109HeadGFresh.toFinset=some s6Step109HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step109HeadGFresh,arenaWires]
  · norm_num [s6Step109HeadGBefore,s6Step109HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step109HeadGBefore s6Step109HeadGAfter (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step109HeadGFresh rfl rfl
    · norm_num [s6Step109HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step109HeadG_checked : planRowResizeLog s6Step109HeadGBefore s6Step109HeadGRow 215 s6Step109HeadGFresh=
    some (s6Step109HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 789],777⟩,growRow 777 s6Step109HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step109HeadGBefore s6Step109HeadGAfter s6Step109HeadGRow 215 s6Step109HeadGFresh
    s6Step109HeadG_distinct s6Step109HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step109HeadG_reserved
  have rowEq : WindowRow.mk (s6Step109HeadGRow.payload++s6Step109HeadGFresh) s6Step109HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 789],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step109HeadGvBefore : Arena := s6Step109HeadFAfter

private theorem s6Step109HeadGv_Incoming : rowsOwned s6Step109HeadGvBefore [s6Step109HeadGvRow,s6Step109HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step109HeadGRow,s6Step109HeadFRow,s6Step109HeadGvRow,s6Step109HeadFvRow] 2 s6Step109HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step109HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step109HeadGv_Outgoing : rowsOwned s6Step109HeadFvAfter [s6Step109HeadGvOut,s6Step109HeadFvOut] :=
  hmrRows_owned_drop s6Step109HeadFvAfter [s6Step109HeadGOut,s6Step109HeadFOut,s6Step109HeadGvOut,s6Step109HeadFvOut] 2 s6Step109HeadBank_outgoingOwned

private theorem s6Step109HeadGv_distinct : (s6Step109HeadGvRow.sign::s6Step109HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step109HeadGv_owned : (s6Step109HeadGvRow.sign::s6Step109HeadGvRow.payload).toFinset⊆s6Step109HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step109HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step109HeadGv_reserved : s6Step109HeadGvBefore.reserve s6Step109HeadGvFresh.toFinset=some s6Step109HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step109HeadGvFresh,arenaWires]
  · norm_num [s6Step109HeadGvBefore,s6Step109HeadFAfter,s6Step109HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step109HeadGvBefore s6Step109HeadGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step109HeadGvFresh rfl rfl
    · norm_num [s6Step109HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step109HeadGv_checked : planRowResizeLog s6Step109HeadGvBefore s6Step109HeadGvRow 69 s6Step109HeadGvFresh=
    some (s6Step109HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 793, 823],775⟩,growRow 775 s6Step109HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step109HeadGvBefore s6Step109HeadGvAfter s6Step109HeadGvRow 69 s6Step109HeadGvFresh
    s6Step109HeadGv_distinct s6Step109HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step109HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step109HeadGvRow.payload++s6Step109HeadGvFresh) s6Step109HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 793, 823],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step109HeadBank_rows : planWindowRowsLog s6Step109HeadGBefore [(s6Step109HeadGRow,215),(s6Step109HeadFRow,215),(s6Step109HeadGvRow,69),(s6Step109HeadFvRow,69)] [s6Step109HeadGFresh,s6Step109HeadFFresh,s6Step109HeadGvFresh,s6Step109HeadFvFresh]=
    some (s6Step109HeadFvAfter,[s6Step109HeadGOut,s6Step109HeadFOut,s6Step109HeadGvOut,s6Step109HeadFvOut],(growRow 777 s6Step109HeadGFresh ++ (growRow 795 s6Step109HeadFFresh ++ (growRow 775 s6Step109HeadGvFresh ++ (growRow 776 s6Step109HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step109HeadFvAfter [] []=some (s6Step109HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step109HeadFvBefore s6Step109HeadFvAfter s6Step109HeadFvAfter
    s6Step109HeadFvRow s6Step109HeadFvOut 69 s6Step109HeadFvFresh [] [] []
    (growRow 776 s6Step109HeadFvFresh) ([]) s6Step109HeadFv_Incoming s6Step109HeadFv_checked h4 s6Step109HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step109HeadGvBefore s6Step109HeadGvAfter s6Step109HeadFvAfter
    s6Step109HeadGvRow s6Step109HeadGvOut 69 s6Step109HeadGvFresh [(s6Step109HeadFvRow,69)] [s6Step109HeadFvFresh] [s6Step109HeadFvOut]
    (growRow 775 s6Step109HeadGvFresh) ((growRow 776 s6Step109HeadFvFresh ++ [])) s6Step109HeadGv_Incoming s6Step109HeadGv_checked h3 s6Step109HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step109HeadFBefore s6Step109HeadFAfter s6Step109HeadFvAfter
    s6Step109HeadFRow s6Step109HeadFOut 215 s6Step109HeadFFresh [(s6Step109HeadGvRow,69),(s6Step109HeadFvRow,69)] [s6Step109HeadGvFresh,s6Step109HeadFvFresh] [s6Step109HeadGvOut,s6Step109HeadFvOut]
    (growRow 795 s6Step109HeadFFresh) ((growRow 775 s6Step109HeadGvFresh ++ (growRow 776 s6Step109HeadFvFresh ++ []))) s6Step109HeadF_Incoming s6Step109HeadF_checked h2 s6Step109HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step109HeadGBefore s6Step109HeadGAfter s6Step109HeadFvAfter
    s6Step109HeadGRow s6Step109HeadGOut 215 s6Step109HeadGFresh [(s6Step109HeadFRow,215),(s6Step109HeadGvRow,69),(s6Step109HeadFvRow,69)] [s6Step109HeadFFresh,s6Step109HeadGvFresh,s6Step109HeadFvFresh] [s6Step109HeadFOut,s6Step109HeadGvOut,s6Step109HeadFvOut]
    (growRow 777 s6Step109HeadGFresh) ((growRow 795 s6Step109HeadFFresh ++ (growRow 775 s6Step109HeadGvFresh ++ (growRow 776 s6Step109HeadFvFresh ++ [])))) s6Step109HeadG_Incoming s6Step109HeadG_checked h1 s6Step109HeadG_Outgoing
  exact h0

private theorem s6Step109HeadBank_checked : compileHmrBankResizeLog .headroom s6Step109HeadGBefore ⟨s6Step109HeadFRow,s6Step109HeadGRow,s6Step109HeadFvRow,s6Step109HeadGvRow⟩ ⟨215,215,69,69⟩ [s6Step109HeadGFresh,s6Step109HeadFFresh,s6Step109HeadGvFresh,s6Step109HeadFvFresh]=
    some (s6Step109HeadFvAfter,⟨s6Step109HeadFOut,s6Step109HeadGOut,s6Step109HeadFvOut,s6Step109HeadGvOut⟩,(growRow 777 s6Step109HeadGFresh ++ (growRow 795 s6Step109HeadFFresh ++ (growRow 775 s6Step109HeadGvFresh ++ (growRow 776 s6Step109HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step109HeadBank_rows]
  rfl

private theorem s6Step109Front_checked : compileHmrSourceFrontLog s6Step109EntryFBefore s6Step109FrontBank 214 68 ⟨214,213,69,67⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step109FrontLog=some s6Step109FrontPlan := by
  have pairEq : s6Step109FrontPair=⟨s6Step109HeadFRow,s6Step109HeadGRow,s6Step109HeadFvRow,s6Step109HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step109FrontHead=⟨s6Step109ExitFRow,s6Step109ExitGRow,s6Step109ExitFvRow,s6Step109ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step109Add0A=s6Step109FrontHead.f.wires := by decide +kernel
  have gEq : s6Step109Add0B=s6Step109FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step109Add1A=s6Step109FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step109Add1B=s6Step109FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step109EntryFBefore s6Step109FrontBank 214 68 ⟨214,213,69,67⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step109FrontLog s6Step109FrontPlan
  · exact s6Step109Front_entry
  · exact s6Step109EntryBank_checked
  · exact s6Step109Front_sigma
  · rfl
  · exact s6Step109Front_branch
  · rfl
  · simpa only [s6Step109FrontPlan,pairEq] using s6Step109HeadBank_checked
  · simpa only [s6Step109FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step109F4_checked
  · exact s6Step109Counter_checked
  · rfl
  · simpa only [s6Step109FrontPlan,headEq] using s6Step109ExitBank_checked

private theorem s6Step109Complete_explicit_checked : compileHmrEarlyStepLog s6Step109EntryFBefore s6Step109FrontBank 214 68 ⟨214,213,69,67⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 36 s6Step109CompleteLog=some s6Step109CompletePlan := by
  let Q := s6Step109EarlyControlPlan
  have hq := s6Step109EarlyControl_plan_checked
  have fv1 : s6Step109CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step109CompleteOut.fv.payload[2]?.getD s6Step109CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step109CompleteOut.fv.payload[3]?.getD s6Step109CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step109CompleteOut.fv.payload[4]?.getD s6Step109CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step109EntryFBefore s6Step109EarlyControlArena s6Step109FrontBank 214 68 ⟨214,213,69,67⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 36 s6Step109CompleteLog s6Step109FrontPlan Q
    s6Step109Front_checked s6Step109Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step109Complete_owned s6Step109Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step109EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 890 s6Step109CompleteOut.fv.second (s6Step109CompleteOut.fv.payload[2]?.getD s6Step109CompleteOut.fv.sign) (s6Step109CompleteOut.fv.payload[3]?.getD s6Step109CompleteOut.fv.sign) (s6Step109CompleteOut.fv.payload[4]?.getD s6Step109CompleteOut.fv.sign) 882 36 s6Step109EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep109Arena : Arena := s6Step109EntryFBefore
def s6PrivateStep109Bank : WindowBank := s6Step109FrontBank
def s6PrivateStep109Spec : HmrSourceWalkStepLog := ⟨214,68,⟨214,213,69,67⟩,36,.early s6Step109CompleteLog⟩
def s6PrivateStep109Plan : HmrSourceStepPlan := .early s6Step109CompletePlan
theorem s6PrivateStep109_source : s6PrivateStep109Spec=s6ObservedLogs96[13] := rfl
theorem s6PrivateStep109_checked : compileHmrSourceStepLog s6PrivateStep109Arena s6PrivateStep109Bank
    s6PrivateStep109Spec.fgWidth s6PrivateStep109Spec.vWidth s6PrivateStep109Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840]
    6 498 109 s6PrivateStep109Spec.need none s6PrivateStep109Spec.log=some s6PrivateStep109Plan := by
  change compileHmrSourceStepLog s6Step109EntryFBefore s6Step109FrontBank 214 68 ⟨214,213,69,67⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 6 498 109 36 none (.early s6Step109CompleteLog)=some (.early s6Step109CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 109<498)]
  rw [s6Step109Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
