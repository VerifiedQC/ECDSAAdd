import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep105
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

private def s6Step107CompleteMoves : List (Wire × Wire) := [(818,471)]

private def s6Step107EarlyControlLog : HmrEarlyControlLog := ⟨[818, 823, 864, 876, 907],[803],[813],[879, 865, 796, 891, 903, 885],[]⟩

private def s6Step107FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [907], [], [828]],[[803], [876], [823], [864]],[[], [], [], []]⟩,[793],[890],[813],[879],[865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[813, 879, 865, 796]⟩

private def s6Step107CompleteLog : HmrEarlyStepLog := ⟨s6Step107FrontLog,s6Step107CompleteMoves,s6Step107EarlyControlLog⟩

private def s6Step107ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470],795⟩

private def s6Step107ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863],776⟩

private def s6Step107ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214],777⟩

private def s6Step107ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828],775⟩

private def s6Step107FrontOut : WindowBank := ⟨s6Step107ExitFOut,s6Step107ExitGOut,s6Step107ExitFvOut,s6Step107ExitGvOut⟩

private def s6Step107CompleteOut : WindowBank := s6Step107FrontOut.repacked s6Step107CompleteMoves

private def s6Step107EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step107EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step107EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step107EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step107EarlyControlPositiveArena,[803],s6Step107EarlyControlEqualityArena,[813],⟨⟨793,false⟩,[⟨⟨803,false⟩,813⟩]⟩⟩

private def s6Step107EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step107EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step107EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step107EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step107EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step107EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step107EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,818⟩,⟨⟨772,false⟩,823⟩,⟨⟨771,false⟩,864⟩,⟨⟨770,false⟩,876⟩,⟨⟨769,false⟩,907⟩]⟩

private def s6Step107EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step107EarlyControlZeroArena,s6Step107EarlyControlZeroPlan,s6Step107EarlyControlClassPlan,s6Step107EarlyControlFlagArena,s6Step107EarlyControlFittedArena,s6Step107EarlyControlHistoryArena,s6Step107EarlyControlSigmaArena,s6Step107EarlyControlOutputArena,s6Step107EarlyControlLog⟩

private def s6Step107CounterWork : List Wire := [813, 879, 865, 796]

private theorem s6Step107Counter_bounded : s6Step107CounterWork.toFinset⊆arenaWires := by norm_num [s6Step107CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step107HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step107CounterDuring : Arena := ⟨s6Step107HeadFvAfter.live∪s6Step107CounterWork.toFinset,Finset.union_subset s6Step107HeadFvAfter.bounded s6Step107Counter_bounded⟩

private def s6Step107EntryFFresh : List Wire := []

private def s6Step107EntryFvFresh : List Wire := []

private def s6Step107EntryGFresh : List Wire := [907]

private def s6Step107EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step107EntryGvFresh : List Wire := [828]

private def s6Step107ExitFExtra : List Wire := [471, 876]

private def s6Step107ExitFvExtra : List Wire := [864]

private def s6Step107ExitGExtra : List Wire := [907, 803]

private def s6Step107ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,471),(472,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step107ExitGvExtra : List Wire := [823]

private def s6Step107Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step107Add0Work : List Wire := [865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step107Add0_bounded : s6Step107Add0Work.toFinset⊆arenaWires := by
  have h : s6Step107Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step107Add0During : Arena := ⟨s6Step107Add0Arena.live∪s6Step107Add0Work.toFinset,Finset.union_subset s6Step107Add0Arena.bounded s6Step107Add0_bounded⟩

private def s6Step107Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step107Add1Work : List Wire := [865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step107Add1_bounded : s6Step107Add1Work.toFinset⊆arenaWires := by
  have h : s6Step107Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step107Add1During : Arena := ⟨s6Step107Add1Arena.live∪s6Step107Add1Work.toFinset,Finset.union_subset s6Step107Add1Arena.bounded s6Step107Add1_bounded⟩

private def s6Step107F4FlagArena : Arena := ⟨s6Step107HeadFvAfter.live∪{813},Finset.union_subset s6Step107HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step107F4Plan : HmrHybridF4Plan := ⟨s6Step107F4FlagArena,[813],s6Step107Add0Arena,[879],s6Step107Add0During,s6Step107Add0Work,s6Step107Add1During,s6Step107Add1Work⟩

private def s6Step107HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 876],795⟩

private def s6Step107HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 864],776⟩

private def s6Step107HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 907, 803],777⟩

private def s6Step107HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 823],775⟩

private def s6Step107FrontHead : WindowBank := ⟨s6Step107HeadFOut,s6Step107HeadGOut,s6Step107HeadFvOut,s6Step107HeadGvOut⟩

private def s6Step107EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471],795⟩

private def s6Step107EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863],776⟩

private def s6Step107EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 907],777⟩

private def s6Step107EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828],775⟩

private def s6Step107FrontPair : WindowBank := ⟨s6Step107EntryFOut,s6Step107EntryGOut,s6Step107EntryFvOut,s6Step107EntryGvOut⟩

private def s6Step107FrontSigmaArena : Arena := ⟨s6Step107EntryGvAfter.live∪{793},Finset.union_subset s6Step107EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step107HeadFFresh : List Wire := [876]

private def s6Step107HeadFvFresh : List Wire := [864]

private def s6Step107HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step107HeadGFresh : List Wire := [803]

private def s6Step107HeadGvFresh : List Wire := [823]

private def s6Step107FrontPlan : HmrSourceFront := ⟨s6Step107EntryGvAfter,s6Step107FrontPair,(growRow 795 s6Step107EntryFFresh ++ (growRow 777 s6Step107EntryGFresh ++ (growRow 776 s6Step107EntryFvFresh ++ (growRow 775 s6Step107EntryGvFresh ++ [])))),s6Step107FrontSigmaArena,[793],s6Step107HeadGBefore,[890],
  s6Step107HeadFvAfter,s6Step107FrontHead,(growRow 777 s6Step107HeadGFresh ++ (growRow 795 s6Step107HeadFFresh ++ (growRow 775 s6Step107HeadGvFresh ++ (growRow 776 s6Step107HeadFvFresh ++ [])))),s6Step107F4Plan,s6Step107CounterDuring,s6Step107CounterWork,s6Step107ExitGvAfter,s6Step107FrontOut,(shrinkRow 777 s6Step107ExitGExtra ++ (shrinkRow 795 s6Step107ExitFExtra ++ (shrinkRow 776 s6Step107ExitFvExtra ++ (shrinkRow 775 s6Step107ExitGvExtra ++ []))))⟩

private def s6Step107CompletePlan : HmrEarlyStepPlan := ⟨s6Step107FrontPlan,s6Step107EarlyControlArena,s6Step107EarlyControlPlan,s6Step107CompleteMoves⟩

private theorem s6Step107Complete_apart : List.Disjoint (s6Step107CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [793, 890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] := by
  have nd : ((s6Step107CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[793, 890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step107Complete_owned : (s6Step107CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step107EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step107EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step107CompleteRelocationMove0Borrowed : Arena := ⟨s6Step107ExitGvAfter.live∪{471},Finset.union_subset s6Step107ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step107CompleteRelocation_move0_owned : 818∈s6Step107ExitGvAfter.live := by norm_num [s6Step107ExitGvAfter,arenaWires]

private theorem s6Step107CompleteRelocation_move0_reserve : s6Step107ExitGvAfter.reserve {471}=some s6Step107CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step107ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step107CompleteRelocation_move0_retire : s6Step107CompleteRelocationMove0Borrowed.retireSet {818}=s6Step107EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step107CompleteRelocationMove0Borrowed s6Step107EarlyControlArena {818}
  change s6Step107EarlyControlArena.live=(s6Step107ExitGvAfter.live∪{471})\{818}
  apply hmrArena_update_of_filter_check s6Step107ExitGvAfter s6Step107EarlyControlArena (fun q => ([(0,471),(472,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [471] [818] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step107CompleteRelocation_checked : s6Step107ExitGvAfter.checkRepack [(818,471)]=some s6Step107EarlyControlArena := by
  have tail1 : s6Step107EarlyControlArena.checkRepack []=some s6Step107EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step107ExitGvAfter s6Step107CompleteRelocationMove0Borrowed s6Step107EarlyControlArena s6Step107EarlyControlArena 818 471 []
    s6Step107CompleteRelocation_move0_owned s6Step107CompleteRelocation_move0_reserve s6Step107CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step107Complete_repack : s6Step107ExitGvAfter.checkRepack s6Step107CompleteMoves=some s6Step107EarlyControlArena := by
  simpa only [s6Step107CompleteMoves] using s6Step107CompleteRelocation_checked

private theorem s6Step107EarlyControl_branchOwned : ([890] : List Wire).toFinset⊆s6Step107EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step107EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step107EarlyControl_branch : compileHmrBranchRetirement s6Step107EarlyControlSigmaArena 890=some s6Step107EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step107EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step107EarlyControlSigmaArena s6Step107EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [890] rfl rfl
    decide +kernel

private theorem s6Step107EarlyControl_classEqualityBorrow : s6Step107EarlyControlPositiveArena.checkBorrow (([793, 803] : List Wire).length-1) s6Step107EarlyControlLog.classWork=some s6Step107EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step107EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step107EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step107EarlyControlPositiveArena s6Step107EarlyControlEqualityArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step107EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step107EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step107EarlyControl_classEqualityOwned : ([793, 803] : List Wire).toFinset⊆s6Step107EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step107EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step107EarlyControl_classEquality : compileHmrEqualityLog s6Step107EarlyControlPositiveArena [793, 803] 0 s6Step107EarlyControlLog.classWork=some (s6Step107EarlyControlEqualityArena,s6Step107EarlyControlLog.classWork,s6Step107EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step107EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step107EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step107EarlyControl_classOwned : ([769, 907, 793] : List Wire).toFinset⊆s6Step107EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step107EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step107EarlyControl_positiveBorrow : s6Step107EarlyControlZeroArena.checkBorrow (1) s6Step107EarlyControlLog.positiveWork=some s6Step107EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step107EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step107EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step107EarlyControlZeroArena s6Step107EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step107EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step107EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step107EarlyControl_class : compileHmrSourceClassLog s6Step107EarlyControlZeroArena false 769 s6Step107EarlyControlZeroPlan.top 0 793 s6Step107EarlyControlLog.positiveWork s6Step107EarlyControlLog.classWork=some s6Step107EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step107EarlyControlClassPlan s6Step107EarlyControlZeroArena false 769 s6Step107EarlyControlZeroPlan.top 0 793
  constructor
  · decide +kernel
  · exact s6Step107EarlyControl_classOwned
  · exact s6Step107EarlyControl_positiveBorrow
  · exact s6Step107EarlyControl_classEquality

private theorem s6Step107EarlyControl_entryRecordOwned : ([890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).toFinset⊆s6Step107EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step107EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step107EarlyControl_entrySigmaOwned : ([793, 254] : List Wire).toFinset⊆s6Step107EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step107EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step107EarlyControl_fitBorrow : s6Step107EarlyControlFlagArena.checkBorrow ((35-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).length)) s6Step107EarlyControlLog.recordFresh=some s6Step107EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step107EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step107EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step107EarlyControlFittedArena,s6Step107EarlyControlFlagArena,s6Step107EarlyControlLog,arenaWires]

private theorem s6Step107EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).toFinset⊆s6Step107EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step107EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step107EarlyControl_fit : compileHmrRecordGrowLog s6Step107EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step107EarlyControlLog.recordFresh=some s6Step107EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step107EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step107EarlyControl_fitBorrow

private theorem s6Step107EarlyControl_flagsBorrow : s6Step107EarlyControlEqualityArena.checkBorrow (6) s6Step107EarlyControlLog.flagWork=some s6Step107EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step107EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step107EarlyControlEqualityArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step107EarlyControlEqualityArena s6Step107EarlyControlFlagArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step107EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step107EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step107EarlyControl_flagsOwned : ([813, 253, 252, 251] : List Wire).toFinset⊆s6Step107EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step107EarlyControlEqualityArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step107EarlyControl_flags : compileHmrFlagsLog s6Step107EarlyControlClassPlan.equalityArena s6Step107EarlyControlClassPlan.equality.top 253 252 251 s6Step107EarlyControlLog.flagWork=some s6Step107EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step107EarlyControl_flagsOwned⟩
  · exact s6Step107EarlyControl_flagsBorrow

private theorem s6Step107EarlyControl_historyBorrow : s6Step107EarlyControlArena.checkBorrow ((35-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).length)) s6Step107EarlyControlLog.recordFresh=some s6Step107EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step107EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step107EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step107EarlyControlArena s6Step107EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step107EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step107EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step107EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).toFinset⊆s6Step107EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step107EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step107EarlyControl_history : compileHmrRecordGrowLog s6Step107EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step107EarlyControlLog.recordFresh=some s6Step107EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step107EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step107EarlyControl_historyBorrow

private theorem s6Step107EarlyControl_sigmaOwned : ([254, 793] : List Wire).toFinset⊆s6Step107EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step107EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step107EarlyControl_sigmaReleaseOwned : ([793] : List Wire).toFinset⊆s6Step107EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step107EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step107EarlyControl_sigmaRelease : s6Step107EarlyControlHistoryArena.release {793} (fun _ => false)=some s6Step107EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step107EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step107EarlyControlHistoryArena s6Step107EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [793] rfl rfl
    decide +kernel

private theorem s6Step107EarlyControl_sigma : compileHmrSigmaDropLog s6Step107EarlyControlHistoryArena false 0 0 254 793 []=some s6Step107EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step107EarlyControl_sigmaOwned⟩
  · exact s6Step107EarlyControl_sigmaRelease

private theorem s6Step107EarlyControl_zeroBorrow : s6Step107EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step107EarlyControlLog.zeroWork=some s6Step107EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step107EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step107EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step107EarlyControlArena s6Step107EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step107EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step107EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step107EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step107EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step107EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step107EarlyControl_zero : compileHmrEqualityLog s6Step107EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step107EarlyControlLog.zeroWork=some (s6Step107EarlyControlZeroArena,s6Step107EarlyControlLog.zeroWork,s6Step107EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step107EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step107EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step107EarlyControl_logged : s6Step107EarlyControlPlan.Logged s6Step107EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 793 254 253 252 251 890 35 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step107EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step107EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step107EarlyControl_zero
  · exact s6Step107EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step107EarlyControl_flags
  · exact s6Step107EarlyControl_fit
  · exact s6Step107EarlyControl_history
  · exact s6Step107EarlyControl_sigma
  · exact s6Step107EarlyControl_branch

private theorem s6Step107EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step107EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 793 254 253 252 251 890 35 s6Step107EarlyControlLog=some s6Step107EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step107EarlyControlPlan s6Step107EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 793 254 253 252 251 890 35 s6Step107EarlyControl_logged

private def s6Step107EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step107EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471],795⟩

private def s6Step107EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863],776⟩

private def s6Step107EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214],777⟩

private def s6Step107EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784],775⟩

private def s6Step107FrontBank : WindowBank := ⟨s6Step107EntryFRow,s6Step107EntryGRow,s6Step107EntryFvRow,s6Step107EntryGvRow⟩

private def s6Step107Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 876, 795]

private def s6Step107Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 907, 803, 777]

private def s6Step107Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 864, 776]

private def s6Step107Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 823, 775]

private theorem s6Step107Counter_apart : Disjoint s6Step107HeadFvAfter.live s6Step107CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step107HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step107Counter_borrowed : s6Step107HeadFvAfter.checkBorrow 4 s6Step107CounterWork=some s6Step107CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step107HeadFvAfter s6Step107CounterDuring s6Step107CounterWork.toFinset s6Step107Counter_bounded s6Step107Counter_apart rfl

private theorem s6Step107Counter_owned : (793::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step107HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step107HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step107Counter_checked : compileHmrCounterStepLog s6Step107HeadFvAfter true 793 [774, 773, 772, 771, 770, 769] s6Step107CounterWork=some s6Step107CounterDuring := by
  have owned : ∀q∈793::[774, 773, 772, 771, 770, 769],q∈s6Step107HeadFvAfter.live := fun q hq => s6Step107Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step107Counter_borrowed

private def s6Step107EntryFAfter : Arena := s6Step107EntryFBefore

private theorem s6Step107EntryBank_incomingDistinct : ([s6Step107EntryFRow,s6Step107EntryGRow,s6Step107EntryFvRow,s6Step107EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step107EntryF_Incoming : rowsOwned s6Step107EntryFBefore [s6Step107EntryFRow,s6Step107EntryGRow,s6Step107EntryFvRow,s6Step107EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step107EntryFRow,s6Step107EntryGRow,s6Step107EntryFvRow,s6Step107EntryGvRow] 0 s6Step107EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step107EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step107EntryBank_outgoingOwned : rowsOwned s6Step107EntryGvAfter [s6Step107EntryFOut,s6Step107EntryGOut,s6Step107EntryFvOut,s6Step107EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step107EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step107EntryF_Outgoing : rowsOwned s6Step107EntryGvAfter [s6Step107EntryFOut,s6Step107EntryGOut,s6Step107EntryFvOut,s6Step107EntryGvOut] :=
  hmrRows_owned_drop s6Step107EntryGvAfter [s6Step107EntryFOut,s6Step107EntryGOut,s6Step107EntryFvOut,s6Step107EntryGvOut] 0 s6Step107EntryBank_outgoingOwned

private theorem s6Step107EntryF_distinct : (s6Step107EntryFRow.sign::s6Step107EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step107EntryF_owned : (s6Step107EntryFRow.sign::s6Step107EntryFRow.payload).toFinset⊆s6Step107EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step107EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step107EntryF_reserved : s6Step107EntryFBefore.reserve s6Step107EntryFFresh.toFinset=some s6Step107EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step107EntryFFresh,arenaWires]
  · norm_num [s6Step107EntryFBefore,s6Step107EntryFFresh,arenaWires]
  · simp only [s6Step107EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step107EntryF_checked : planRowResizeLog s6Step107EntryFBefore s6Step107EntryFRow 216 s6Step107EntryFFresh=
    some (s6Step107EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471],795⟩,growRow 795 s6Step107EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step107EntryFBefore s6Step107EntryFAfter s6Step107EntryFRow 216 s6Step107EntryFFresh
    s6Step107EntryF_distinct s6Step107EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step107EntryF_reserved
  have rowEq : WindowRow.mk (s6Step107EntryFRow.payload++s6Step107EntryFFresh) s6Step107EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step107EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step107EntryFvAfter : Arena := s6Step107EntryGAfter

private def s6Step107EntryFvBefore : Arena := s6Step107EntryGAfter

private theorem s6Step107EntryFv_Incoming : rowsOwned s6Step107EntryFvBefore [s6Step107EntryFvRow,s6Step107EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step107EntryFRow,s6Step107EntryGRow,s6Step107EntryFvRow,s6Step107EntryGvRow] 2 s6Step107EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step107EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step107EntryFv_Outgoing : rowsOwned s6Step107EntryGvAfter [s6Step107EntryFvOut,s6Step107EntryGvOut] :=
  hmrRows_owned_drop s6Step107EntryGvAfter [s6Step107EntryFOut,s6Step107EntryGOut,s6Step107EntryFvOut,s6Step107EntryGvOut] 2 s6Step107EntryBank_outgoingOwned

private theorem s6Step107EntryFv_distinct : (s6Step107EntryFvRow.sign::s6Step107EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step107EntryFv_owned : (s6Step107EntryFvRow.sign::s6Step107EntryFvRow.payload).toFinset⊆s6Step107EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step107EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step107EntryFv_reserved : s6Step107EntryFvBefore.reserve s6Step107EntryFvFresh.toFinset=some s6Step107EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step107EntryFvFresh,arenaWires]
  · norm_num [s6Step107EntryFvBefore,s6Step107EntryGAfter,s6Step107EntryFvFresh,arenaWires]
  · simp only [s6Step107EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step107EntryFv_checked : planRowResizeLog s6Step107EntryFvBefore s6Step107EntryFvRow 67 s6Step107EntryFvFresh=
    some (s6Step107EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863],776⟩,growRow 776 s6Step107EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step107EntryFvBefore s6Step107EntryFvAfter s6Step107EntryFvRow 67 s6Step107EntryFvFresh
    s6Step107EntryFv_distinct s6Step107EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step107EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step107EntryFvRow.payload++s6Step107EntryFvFresh) s6Step107EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step107EntryGBefore : Arena := s6Step107EntryFBefore

private theorem s6Step107EntryG_Incoming : rowsOwned s6Step107EntryGBefore [s6Step107EntryGRow,s6Step107EntryFvRow,s6Step107EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step107EntryFRow,s6Step107EntryGRow,s6Step107EntryFvRow,s6Step107EntryGvRow] 1 s6Step107EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step107EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step107EntryG_Outgoing : rowsOwned s6Step107EntryGvAfter [s6Step107EntryGOut,s6Step107EntryFvOut,s6Step107EntryGvOut] :=
  hmrRows_owned_drop s6Step107EntryGvAfter [s6Step107EntryFOut,s6Step107EntryGOut,s6Step107EntryFvOut,s6Step107EntryGvOut] 1 s6Step107EntryBank_outgoingOwned

private theorem s6Step107EntryG_distinct : (s6Step107EntryGRow.sign::s6Step107EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step107EntryG_owned : (s6Step107EntryGRow.sign::s6Step107EntryGRow.payload).toFinset⊆s6Step107EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step107EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step107EntryG_reserved : s6Step107EntryGBefore.reserve s6Step107EntryGFresh.toFinset=some s6Step107EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step107EntryGFresh,arenaWires]
  · norm_num [s6Step107EntryGBefore,s6Step107EntryFBefore,s6Step107EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step107EntryGBefore s6Step107EntryGAfter (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step107EntryGFresh rfl rfl
    · norm_num [s6Step107EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step107EntryG_checked : planRowResizeLog s6Step107EntryGBefore s6Step107EntryGRow 216 s6Step107EntryGFresh=
    some (s6Step107EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 907],777⟩,growRow 777 s6Step107EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step107EntryGBefore s6Step107EntryGAfter s6Step107EntryGRow 216 s6Step107EntryGFresh
    s6Step107EntryG_distinct s6Step107EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step107EntryG_reserved
  have rowEq : WindowRow.mk (s6Step107EntryGRow.payload++s6Step107EntryGFresh) s6Step107EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 907],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step107EntryGvBefore : Arena := s6Step107EntryGAfter

private theorem s6Step107EntryGv_Incoming : rowsOwned s6Step107EntryGvBefore [s6Step107EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step107EntryFRow,s6Step107EntryGRow,s6Step107EntryFvRow,s6Step107EntryGvRow] 3 s6Step107EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step107EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step107EntryGv_Outgoing : rowsOwned s6Step107EntryGvAfter [s6Step107EntryGvOut] :=
  hmrRows_owned_drop s6Step107EntryGvAfter [s6Step107EntryFOut,s6Step107EntryGOut,s6Step107EntryFvOut,s6Step107EntryGvOut] 3 s6Step107EntryBank_outgoingOwned

private theorem s6Step107EntryGv_distinct : (s6Step107EntryGvRow.sign::s6Step107EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step107EntryGv_owned : (s6Step107EntryGvRow.sign::s6Step107EntryGvRow.payload).toFinset⊆s6Step107EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step107EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step107EntryGv_reserved : s6Step107EntryGvBefore.reserve s6Step107EntryGvFresh.toFinset=some s6Step107EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step107EntryGvFresh,arenaWires]
  · norm_num [s6Step107EntryGvBefore,s6Step107EntryGAfter,s6Step107EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step107EntryGvBefore s6Step107EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step107EntryGvFresh rfl rfl
    · norm_num [s6Step107EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step107EntryGv_checked : planRowResizeLog s6Step107EntryGvBefore s6Step107EntryGvRow 67 s6Step107EntryGvFresh=
    some (s6Step107EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828],775⟩,growRow 775 s6Step107EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step107EntryGvBefore s6Step107EntryGvAfter s6Step107EntryGvRow 67 s6Step107EntryGvFresh
    s6Step107EntryGv_distinct s6Step107EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step107EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step107EntryGvRow.payload++s6Step107EntryGvFresh) s6Step107EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step107EntryBank_rows : planWindowRowsLog s6Step107EntryFBefore [(s6Step107EntryFRow,216),(s6Step107EntryGRow,216),(s6Step107EntryFvRow,67),(s6Step107EntryGvRow,67)] [s6Step107EntryFFresh,s6Step107EntryGFresh,s6Step107EntryFvFresh,s6Step107EntryGvFresh]=
    some (s6Step107EntryGvAfter,[s6Step107EntryFOut,s6Step107EntryGOut,s6Step107EntryFvOut,s6Step107EntryGvOut],(growRow 795 s6Step107EntryFFresh ++ (growRow 777 s6Step107EntryGFresh ++ (growRow 776 s6Step107EntryFvFresh ++ (growRow 775 s6Step107EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step107EntryGvAfter [] []=some (s6Step107EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step107EntryGvBefore s6Step107EntryGvAfter s6Step107EntryGvAfter
    s6Step107EntryGvRow s6Step107EntryGvOut 67 s6Step107EntryGvFresh [] [] []
    (growRow 775 s6Step107EntryGvFresh) ([]) s6Step107EntryGv_Incoming s6Step107EntryGv_checked h4 s6Step107EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step107EntryFvBefore s6Step107EntryFvAfter s6Step107EntryGvAfter
    s6Step107EntryFvRow s6Step107EntryFvOut 67 s6Step107EntryFvFresh [(s6Step107EntryGvRow,67)] [s6Step107EntryGvFresh] [s6Step107EntryGvOut]
    (growRow 776 s6Step107EntryFvFresh) ((growRow 775 s6Step107EntryGvFresh ++ [])) s6Step107EntryFv_Incoming s6Step107EntryFv_checked h3 s6Step107EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step107EntryGBefore s6Step107EntryGAfter s6Step107EntryGvAfter
    s6Step107EntryGRow s6Step107EntryGOut 216 s6Step107EntryGFresh [(s6Step107EntryFvRow,67),(s6Step107EntryGvRow,67)] [s6Step107EntryFvFresh,s6Step107EntryGvFresh] [s6Step107EntryFvOut,s6Step107EntryGvOut]
    (growRow 777 s6Step107EntryGFresh) ((growRow 776 s6Step107EntryFvFresh ++ (growRow 775 s6Step107EntryGvFresh ++ []))) s6Step107EntryG_Incoming s6Step107EntryG_checked h2 s6Step107EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step107EntryFBefore s6Step107EntryFAfter s6Step107EntryGvAfter
    s6Step107EntryFRow s6Step107EntryFOut 216 s6Step107EntryFFresh [(s6Step107EntryGRow,216),(s6Step107EntryFvRow,67),(s6Step107EntryGvRow,67)] [s6Step107EntryGFresh,s6Step107EntryFvFresh,s6Step107EntryGvFresh] [s6Step107EntryGOut,s6Step107EntryFvOut,s6Step107EntryGvOut]
    (growRow 795 s6Step107EntryFFresh) ((growRow 777 s6Step107EntryGFresh ++ (growRow 776 s6Step107EntryFvFresh ++ (growRow 775 s6Step107EntryGvFresh ++ [])))) s6Step107EntryF_Incoming s6Step107EntryF_checked h1 s6Step107EntryF_Outgoing
  exact h0

private theorem s6Step107EntryBank_checked : compileHmrBankResizeLog .entry s6Step107EntryFBefore ⟨s6Step107EntryFRow,s6Step107EntryGRow,s6Step107EntryFvRow,s6Step107EntryGvRow⟩ ⟨216,216,67,67⟩ [s6Step107EntryFFresh,s6Step107EntryGFresh,s6Step107EntryFvFresh,s6Step107EntryGvFresh]=
    some (s6Step107EntryGvAfter,⟨s6Step107EntryFOut,s6Step107EntryGOut,s6Step107EntryFvOut,s6Step107EntryGvOut⟩,(growRow 795 s6Step107EntryFFresh ++ (growRow 777 s6Step107EntryGFresh ++ (growRow 776 s6Step107EntryFvFresh ++ (growRow 775 s6Step107EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step107EntryBank_rows]
  rfl

private def s6Step107ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,471),(472,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step107ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step107ExitFBefore : Arena := s6Step107ExitGAfter

private def s6Step107ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 876],795⟩

private def s6Step107ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 864],776⟩

private def s6Step107ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 907, 803],777⟩

private def s6Step107ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 823],775⟩

private theorem s6Step107ExitBank_incomingDistinct : ([s6Step107ExitGRow,s6Step107ExitFRow,s6Step107ExitFvRow,s6Step107ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step107ExitF_Incoming : rowsOwned s6Step107ExitFBefore [s6Step107ExitFRow,s6Step107ExitFvRow,s6Step107ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step107ExitGRow,s6Step107ExitFRow,s6Step107ExitFvRow,s6Step107ExitGvRow] 1 s6Step107ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step107ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step107ExitBank_outgoingOwned : rowsOwned s6Step107ExitGvAfter [s6Step107ExitGOut,s6Step107ExitFOut,s6Step107ExitFvOut,s6Step107ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step107ExitGvAfter (fun q => ([(0,471),(472,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step107ExitF_Outgoing : rowsOwned s6Step107ExitGvAfter [s6Step107ExitFOut,s6Step107ExitFvOut,s6Step107ExitGvOut] :=
  hmrRows_owned_drop s6Step107ExitGvAfter [s6Step107ExitGOut,s6Step107ExitFOut,s6Step107ExitFvOut,s6Step107ExitGvOut] 1 s6Step107ExitBank_outgoingOwned

private theorem s6Step107ExitF_distinct : (s6Step107ExitFRow.sign::s6Step107ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step107ExitF_owned : (s6Step107ExitFRow.sign::s6Step107ExitFRow.payload).toFinset⊆s6Step107ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step107ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step107ExitF_retired : s6Step107ExitFBefore.retireSet s6Step107ExitFExtra.toFinset=s6Step107ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step107ExitFBefore s6Step107ExitFAfter s6Step107ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step107ExitFBefore s6Step107ExitFAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,471),(472,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step107ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step107ExitF_checked : planRowResizeLog s6Step107ExitFBefore s6Step107ExitFRow 215 []=
    some (s6Step107ExitFAfter,s6Step107ExitFOut,shrinkRow 795 s6Step107ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step107ExitFBefore s6Step107ExitFRow 215 s6Step107ExitF_distinct s6Step107ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step107ExitFRow.payload.take 215) s6Step107ExitFRow.sign=s6Step107ExitFOut := by decide +kernel
  have hi : s6Step107ExitFRow.payload.drop 215=s6Step107ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step107ExitF_retired] at result
  exact result

private def s6Step107ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,471),(472,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step107ExitFvBefore : Arena := s6Step107ExitFAfter

private theorem s6Step107ExitFv_Incoming : rowsOwned s6Step107ExitFvBefore [s6Step107ExitFvRow,s6Step107ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step107ExitGRow,s6Step107ExitFRow,s6Step107ExitFvRow,s6Step107ExitGvRow] 2 s6Step107ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step107ExitFvBefore (fun q => ([(0,471),(472,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step107ExitFv_Outgoing : rowsOwned s6Step107ExitGvAfter [s6Step107ExitFvOut,s6Step107ExitGvOut] :=
  hmrRows_owned_drop s6Step107ExitGvAfter [s6Step107ExitGOut,s6Step107ExitFOut,s6Step107ExitFvOut,s6Step107ExitGvOut] 2 s6Step107ExitBank_outgoingOwned

private theorem s6Step107ExitFv_distinct : (s6Step107ExitFvRow.sign::s6Step107ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step107ExitFv_owned : (s6Step107ExitFvRow.sign::s6Step107ExitFvRow.payload).toFinset⊆s6Step107ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step107ExitFvBefore (fun q => ([(0,471),(472,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step107ExitFv_retired : s6Step107ExitFvBefore.retireSet s6Step107ExitFvExtra.toFinset=s6Step107ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step107ExitFvBefore s6Step107ExitFvAfter s6Step107ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step107ExitFvBefore s6Step107ExitFvAfter (fun q => ([(0,471),(472,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,471),(472,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step107ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step107ExitFv_checked : planRowResizeLog s6Step107ExitFvBefore s6Step107ExitFvRow 67 []=
    some (s6Step107ExitFvAfter,s6Step107ExitFvOut,shrinkRow 776 s6Step107ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step107ExitFvBefore s6Step107ExitFvRow 67 s6Step107ExitFv_distinct s6Step107ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step107ExitFvRow.payload.take 67) s6Step107ExitFvRow.sign=s6Step107ExitFvOut := by decide +kernel
  have hi : s6Step107ExitFvRow.payload.drop 67=s6Step107ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step107ExitFv_retired] at result
  exact result

private def s6Step107ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step107ExitG_Incoming : rowsOwned s6Step107ExitGBefore [s6Step107ExitGRow,s6Step107ExitFRow,s6Step107ExitFvRow,s6Step107ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step107ExitGRow,s6Step107ExitFRow,s6Step107ExitFvRow,s6Step107ExitGvRow] 0 s6Step107ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step107ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step107ExitG_Outgoing : rowsOwned s6Step107ExitGvAfter [s6Step107ExitGOut,s6Step107ExitFOut,s6Step107ExitFvOut,s6Step107ExitGvOut] :=
  hmrRows_owned_drop s6Step107ExitGvAfter [s6Step107ExitGOut,s6Step107ExitFOut,s6Step107ExitFvOut,s6Step107ExitGvOut] 0 s6Step107ExitBank_outgoingOwned

private theorem s6Step107ExitG_distinct : (s6Step107ExitGRow.sign::s6Step107ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step107ExitG_owned : (s6Step107ExitGRow.sign::s6Step107ExitGRow.payload).toFinset⊆s6Step107ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step107ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step107ExitG_retired : s6Step107ExitGBefore.retireSet s6Step107ExitGExtra.toFinset=s6Step107ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step107ExitGBefore s6Step107ExitGAfter s6Step107ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step107ExitGBefore s6Step107ExitGAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step107ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step107ExitG_checked : planRowResizeLog s6Step107ExitGBefore s6Step107ExitGRow 215 []=
    some (s6Step107ExitGAfter,s6Step107ExitGOut,shrinkRow 777 s6Step107ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step107ExitGBefore s6Step107ExitGRow 215 s6Step107ExitG_distinct s6Step107ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step107ExitGRow.payload.take 215) s6Step107ExitGRow.sign=s6Step107ExitGOut := by decide +kernel
  have hi : s6Step107ExitGRow.payload.drop 215=s6Step107ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step107ExitG_retired] at result
  exact result

private def s6Step107ExitGvBefore : Arena := s6Step107ExitFvAfter

private theorem s6Step107ExitGv_Incoming : rowsOwned s6Step107ExitGvBefore [s6Step107ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step107ExitGRow,s6Step107ExitFRow,s6Step107ExitFvRow,s6Step107ExitGvRow] 3 s6Step107ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step107ExitGvBefore (fun q => ([(0,471),(472,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step107ExitGv_Outgoing : rowsOwned s6Step107ExitGvAfter [s6Step107ExitGvOut] :=
  hmrRows_owned_drop s6Step107ExitGvAfter [s6Step107ExitGOut,s6Step107ExitFOut,s6Step107ExitFvOut,s6Step107ExitGvOut] 3 s6Step107ExitBank_outgoingOwned

private theorem s6Step107ExitGv_distinct : (s6Step107ExitGvRow.sign::s6Step107ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step107ExitGv_owned : (s6Step107ExitGvRow.sign::s6Step107ExitGvRow.payload).toFinset⊆s6Step107ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step107ExitGvBefore (fun q => ([(0,471),(472,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step107ExitGv_retired : s6Step107ExitGvBefore.retireSet s6Step107ExitGvExtra.toFinset=s6Step107ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step107ExitGvBefore s6Step107ExitGvAfter s6Step107ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step107ExitGvBefore s6Step107ExitGvAfter (fun q => ([(0,471),(472,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,471),(472,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step107ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step107ExitGv_checked : planRowResizeLog s6Step107ExitGvBefore s6Step107ExitGvRow 67 []=
    some (s6Step107ExitGvAfter,s6Step107ExitGvOut,shrinkRow 775 s6Step107ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step107ExitGvBefore s6Step107ExitGvRow 67 s6Step107ExitGv_distinct s6Step107ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step107ExitGvRow.payload.take 67) s6Step107ExitGvRow.sign=s6Step107ExitGvOut := by decide +kernel
  have hi : s6Step107ExitGvRow.payload.drop 67=s6Step107ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step107ExitGv_retired] at result
  exact result

private theorem s6Step107ExitBank_rows : planWindowRowsLog s6Step107ExitGBefore [(s6Step107ExitGRow,215),(s6Step107ExitFRow,215),(s6Step107ExitFvRow,67),(s6Step107ExitGvRow,67)] [[],[],[],[]]=
    some (s6Step107ExitGvAfter,[s6Step107ExitGOut,s6Step107ExitFOut,s6Step107ExitFvOut,s6Step107ExitGvOut],(shrinkRow 777 s6Step107ExitGExtra ++ (shrinkRow 795 s6Step107ExitFExtra ++ (shrinkRow 776 s6Step107ExitFvExtra ++ (shrinkRow 775 s6Step107ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step107ExitGvAfter [] []=some (s6Step107ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step107ExitGvBefore s6Step107ExitGvAfter s6Step107ExitGvAfter
    s6Step107ExitGvRow s6Step107ExitGvOut 67 [] [] [] []
    (shrinkRow 775 s6Step107ExitGvExtra) ([]) s6Step107ExitGv_Incoming s6Step107ExitGv_checked h4 s6Step107ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step107ExitFvBefore s6Step107ExitFvAfter s6Step107ExitGvAfter
    s6Step107ExitFvRow s6Step107ExitFvOut 67 [] [(s6Step107ExitGvRow,67)] [[]] [s6Step107ExitGvOut]
    (shrinkRow 776 s6Step107ExitFvExtra) ((shrinkRow 775 s6Step107ExitGvExtra ++ [])) s6Step107ExitFv_Incoming s6Step107ExitFv_checked h3 s6Step107ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step107ExitFBefore s6Step107ExitFAfter s6Step107ExitGvAfter
    s6Step107ExitFRow s6Step107ExitFOut 215 [] [(s6Step107ExitFvRow,67),(s6Step107ExitGvRow,67)] [[],[]] [s6Step107ExitFvOut,s6Step107ExitGvOut]
    (shrinkRow 795 s6Step107ExitFExtra) ((shrinkRow 776 s6Step107ExitFvExtra ++ (shrinkRow 775 s6Step107ExitGvExtra ++ []))) s6Step107ExitF_Incoming s6Step107ExitF_checked h2 s6Step107ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step107ExitGBefore s6Step107ExitGAfter s6Step107ExitGvAfter
    s6Step107ExitGRow s6Step107ExitGOut 215 [] [(s6Step107ExitFRow,215),(s6Step107ExitFvRow,67),(s6Step107ExitGvRow,67)] [[],[],[]] [s6Step107ExitFOut,s6Step107ExitFvOut,s6Step107ExitGvOut]
    (shrinkRow 777 s6Step107ExitGExtra) ((shrinkRow 795 s6Step107ExitFExtra ++ (shrinkRow 776 s6Step107ExitFvExtra ++ (shrinkRow 775 s6Step107ExitGvExtra ++ [])))) s6Step107ExitG_Incoming s6Step107ExitG_checked h1 s6Step107ExitG_Outgoing
  exact h0

private theorem s6Step107ExitBank_checked : compileHmrBankResizeLog .exit s6Step107ExitGBefore ⟨s6Step107ExitFRow,s6Step107ExitGRow,s6Step107ExitFvRow,s6Step107ExitGvRow⟩ ⟨215,215,67,67⟩ [[],[],[],[]]=
    some (s6Step107ExitGvAfter,⟨s6Step107ExitFOut,s6Step107ExitGOut,s6Step107ExitFvOut,s6Step107ExitGvOut⟩,(shrinkRow 777 s6Step107ExitGExtra ++ (shrinkRow 795 s6Step107ExitFExtra ++ (shrinkRow 776 s6Step107ExitFvExtra ++ (shrinkRow 775 s6Step107ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step107ExitBank_rows]
  rfl

private theorem s6Step107Add0_apart : Disjoint s6Step107Add0Arena.live s6Step107Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step107Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step107Add0_card : s6Step107Add0Arena.live.card=875 := by
  decide +kernel

private theorem s6Step107Add0_borrowed : s6Step107Add0Arena.checkBorrow (hmrHybridCount s6Step107Add0Arena s6Step107Add0B.length) s6Step107Add0Work=some s6Step107Add0During := by
  have len : s6Step107Add0Work.length=hmrHybridCount s6Step107Add0Arena s6Step107Add0B.length := by
    rw [hmrHybridCount,s6Step107Add0_card]
    decide +kernel
  have nd : s6Step107Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step107Add0Arena s6Step107Add0During s6Step107Add0Work.toFinset s6Step107Add0_bounded s6Step107Add0_apart rfl

private theorem s6Step107Add0_distinct : (813::890::879::(s6Step107Add0A++s6Step107Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step107Add0_owned : (813::890::879::(s6Step107Add0A++s6Step107Add0B)).toFinset⊆s6Step107Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step107Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step107Add0_checked : compileHmrHybridCinLog s6Step107Add0Arena 890 813 879 s6Step107Add0A s6Step107Add0B s6Step107Add0Work=some s6Step107Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step107Add0Arena s6Step107Add0During 890 813 879 s6Step107Add0A s6Step107Add0B s6Step107Add0Work
    (by decide +kernel) (by decide +kernel) s6Step107Add0_distinct
    (fun q hq => s6Step107Add0_owned (List.mem_toFinset.mpr hq)) s6Step107Add0_borrowed

private theorem s6Step107Add1_apart : Disjoint s6Step107Add1Arena.live s6Step107Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step107Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step107Add1_card : s6Step107Add1Arena.live.card=875 := by
  decide +kernel

private theorem s6Step107Add1_borrowed : s6Step107Add1Arena.checkBorrow (hmrHybridCount s6Step107Add1Arena s6Step107Add1B.length) s6Step107Add1Work=some s6Step107Add1During := by
  have len : s6Step107Add1Work.length=hmrHybridCount s6Step107Add1Arena s6Step107Add1B.length := by
    rw [hmrHybridCount,s6Step107Add1_card]
    decide +kernel
  have nd : s6Step107Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step107Add1Arena s6Step107Add1During s6Step107Add1Work.toFinset s6Step107Add1_bounded s6Step107Add1_apart rfl

private theorem s6Step107Add1_distinct : (813::890::879::(s6Step107Add1A++s6Step107Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step107Add1_owned : (813::890::879::(s6Step107Add1A++s6Step107Add1B)).toFinset⊆s6Step107Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step107Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step107Add1_checked : compileHmrHybridCinLog s6Step107Add1Arena 890 813 879 s6Step107Add1A s6Step107Add1B s6Step107Add1Work=some s6Step107Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step107Add1Arena s6Step107Add1During 890 813 879 s6Step107Add1A s6Step107Add1B s6Step107Add1Work
    (by decide +kernel) (by decide +kernel) s6Step107Add1_distinct
    (fun q hq => s6Step107Add1_owned (List.mem_toFinset.mpr hq)) s6Step107Add1_borrowed

private theorem s6Step107F4_apart : Disjoint (s6Step107Add0A++s6Step107Add0B).toFinset (s6Step107Add1A++s6Step107Add1B).toFinset := by
  have nd : ((s6Step107Add0A++s6Step107Add0B)++(s6Step107Add1A++s6Step107Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step107F4_carry : s6Step107F4FlagArena.checkBorrow 1 [879]=some s6Step107Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step107F4FlagArena,s6Step107HeadFvAfter,arenaWires]
  · change s6Step107Add0Arena.live=(s6Step107HeadFvAfter.live∪{813})∪{879}
    apply hmrArena_union_pair_of_filter_check s6Step107HeadFvAfter s6Step107Add0Arena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) 813 879 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step107F4_distinct : (793::890::813::879::((s6Step107Add0A++s6Step107Add1A)++(s6Step107Add0B++s6Step107Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step107F4_flag : s6Step107HeadFvAfter.checkBorrow 1 [813]=some s6Step107F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step107HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step107F4_owned : (793::890::((s6Step107Add0A++s6Step107Add1A)++(s6Step107Add0B++s6Step107Add1B))).toFinset⊆s6Step107HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step107HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step107F4_checked : compileHmrHybridF4Log s6Step107HeadFvAfter 793 890 s6Step107Add0A s6Step107Add0B s6Step107Add1A s6Step107Add1B [813] [879] s6Step107Add0Work s6Step107Add1Work=some s6Step107F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step107HeadFvAfter s6Step107F4FlagArena s6Step107Add0Arena s6Step107Add0During s6Step107Add1During 793 890
    s6Step107Add0A s6Step107Add0B s6Step107Add1A s6Step107Add1B [813] [879] s6Step107Add0Work s6Step107Add1Work
    (fun q hq => s6Step107F4_owned (List.mem_toFinset.mpr hq)) s6Step107F4_flag s6Step107F4_carry
    s6Step107F4_distinct s6Step107F4_apart s6Step107Add0_checked s6Step107Add1_checked

private theorem s6Step107Front_branch : s6Step107FrontSigmaArena.checkBorrow 1 [890]=some s6Step107HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step107FrontSigmaArena,s6Step107EntryGvAfter,arenaWires]
  · change s6Step107HeadGBefore.live=(s6Step107EntryGvAfter.live∪{793})∪{890}
    apply hmrArena_union_pair_of_filter_check s6Step107EntryGvAfter s6Step107HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 793 890 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step107Front_entry : HmrFrontEntryValid s6Step107EntryFBefore s6Step107FrontBank 216 67 ⟨215,215,67,67⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step107FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step107EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step107EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step107FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step107Front_sigma : s6Step107EntryGvAfter.checkBorrow 1 [793]=some s6Step107FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step107EntryGvAfter,arenaWires]
  · rfl

private def s6Step107HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step107HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step107HeadFBefore : Arena := s6Step107HeadGAfter

private def s6Step107HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471],795⟩

private def s6Step107HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863],776⟩

private def s6Step107HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 907],777⟩

private def s6Step107HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828],775⟩

private theorem s6Step107HeadBank_incomingDistinct : ([s6Step107HeadGRow,s6Step107HeadFRow,s6Step107HeadGvRow,s6Step107HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step107HeadF_Incoming : rowsOwned s6Step107HeadFBefore [s6Step107HeadFRow,s6Step107HeadGvRow,s6Step107HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step107HeadGRow,s6Step107HeadFRow,s6Step107HeadGvRow,s6Step107HeadFvRow] 1 s6Step107HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step107HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step107HeadBank_outgoingOwned : rowsOwned s6Step107HeadFvAfter [s6Step107HeadGOut,s6Step107HeadFOut,s6Step107HeadGvOut,s6Step107HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step107HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step107HeadF_Outgoing : rowsOwned s6Step107HeadFvAfter [s6Step107HeadFOut,s6Step107HeadGvOut,s6Step107HeadFvOut] :=
  hmrRows_owned_drop s6Step107HeadFvAfter [s6Step107HeadGOut,s6Step107HeadFOut,s6Step107HeadGvOut,s6Step107HeadFvOut] 1 s6Step107HeadBank_outgoingOwned

private theorem s6Step107HeadF_distinct : (s6Step107HeadFRow.sign::s6Step107HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step107HeadF_owned : (s6Step107HeadFRow.sign::s6Step107HeadFRow.payload).toFinset⊆s6Step107HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step107HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step107HeadF_reserved : s6Step107HeadFBefore.reserve s6Step107HeadFFresh.toFinset=some s6Step107HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step107HeadFFresh,arenaWires]
  · norm_num [s6Step107HeadFBefore,s6Step107HeadGAfter,s6Step107HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step107HeadFBefore s6Step107HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step107HeadFFresh rfl rfl
    · norm_num [s6Step107HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step107HeadF_checked : planRowResizeLog s6Step107HeadFBefore s6Step107HeadFRow 217 s6Step107HeadFFresh=
    some (s6Step107HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 876],795⟩,growRow 795 s6Step107HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step107HeadFBefore s6Step107HeadFAfter s6Step107HeadFRow 217 s6Step107HeadFFresh
    s6Step107HeadF_distinct s6Step107HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step107HeadF_reserved
  have rowEq : WindowRow.mk (s6Step107HeadFRow.payload++s6Step107HeadFFresh) s6Step107HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 876],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step107HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step107HeadFvBefore : Arena := s6Step107HeadGvAfter

private theorem s6Step107HeadFv_Incoming : rowsOwned s6Step107HeadFvBefore [s6Step107HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step107HeadGRow,s6Step107HeadFRow,s6Step107HeadGvRow,s6Step107HeadFvRow] 3 s6Step107HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step107HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step107HeadFv_Outgoing : rowsOwned s6Step107HeadFvAfter [s6Step107HeadFvOut] :=
  hmrRows_owned_drop s6Step107HeadFvAfter [s6Step107HeadGOut,s6Step107HeadFOut,s6Step107HeadGvOut,s6Step107HeadFvOut] 3 s6Step107HeadBank_outgoingOwned

private theorem s6Step107HeadFv_distinct : (s6Step107HeadFvRow.sign::s6Step107HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step107HeadFv_owned : (s6Step107HeadFvRow.sign::s6Step107HeadFvRow.payload).toFinset⊆s6Step107HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step107HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step107HeadFv_reserved : s6Step107HeadFvBefore.reserve s6Step107HeadFvFresh.toFinset=some s6Step107HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step107HeadFvFresh,arenaWires]
  · norm_num [s6Step107HeadFvBefore,s6Step107HeadGvAfter,s6Step107HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step107HeadFvBefore s6Step107HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step107HeadFvFresh rfl rfl
    · norm_num [s6Step107HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step107HeadFv_checked : planRowResizeLog s6Step107HeadFvBefore s6Step107HeadFvRow 68 s6Step107HeadFvFresh=
    some (s6Step107HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 864],776⟩,growRow 776 s6Step107HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step107HeadFvBefore s6Step107HeadFvAfter s6Step107HeadFvRow 68 s6Step107HeadFvFresh
    s6Step107HeadFv_distinct s6Step107HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step107HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step107HeadFvRow.payload++s6Step107HeadFvFresh) s6Step107HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 864],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step107HeadG_Incoming : rowsOwned s6Step107HeadGBefore [s6Step107HeadGRow,s6Step107HeadFRow,s6Step107HeadGvRow,s6Step107HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step107HeadGRow,s6Step107HeadFRow,s6Step107HeadGvRow,s6Step107HeadFvRow] 0 s6Step107HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step107HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step107HeadG_Outgoing : rowsOwned s6Step107HeadFvAfter [s6Step107HeadGOut,s6Step107HeadFOut,s6Step107HeadGvOut,s6Step107HeadFvOut] :=
  hmrRows_owned_drop s6Step107HeadFvAfter [s6Step107HeadGOut,s6Step107HeadFOut,s6Step107HeadGvOut,s6Step107HeadFvOut] 0 s6Step107HeadBank_outgoingOwned

private theorem s6Step107HeadG_distinct : (s6Step107HeadGRow.sign::s6Step107HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step107HeadG_owned : (s6Step107HeadGRow.sign::s6Step107HeadGRow.payload).toFinset⊆s6Step107HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step107HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step107HeadG_reserved : s6Step107HeadGBefore.reserve s6Step107HeadGFresh.toFinset=some s6Step107HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step107HeadGFresh,arenaWires]
  · norm_num [s6Step107HeadGBefore,s6Step107HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step107HeadGBefore s6Step107HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step107HeadGFresh rfl rfl
    · norm_num [s6Step107HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step107HeadG_checked : planRowResizeLog s6Step107HeadGBefore s6Step107HeadGRow 217 s6Step107HeadGFresh=
    some (s6Step107HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 907, 803],777⟩,growRow 777 s6Step107HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step107HeadGBefore s6Step107HeadGAfter s6Step107HeadGRow 217 s6Step107HeadGFresh
    s6Step107HeadG_distinct s6Step107HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step107HeadG_reserved
  have rowEq : WindowRow.mk (s6Step107HeadGRow.payload++s6Step107HeadGFresh) s6Step107HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 907, 803],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step107HeadGvBefore : Arena := s6Step107HeadFAfter

private theorem s6Step107HeadGv_Incoming : rowsOwned s6Step107HeadGvBefore [s6Step107HeadGvRow,s6Step107HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step107HeadGRow,s6Step107HeadFRow,s6Step107HeadGvRow,s6Step107HeadFvRow] 2 s6Step107HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step107HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step107HeadGv_Outgoing : rowsOwned s6Step107HeadFvAfter [s6Step107HeadGvOut,s6Step107HeadFvOut] :=
  hmrRows_owned_drop s6Step107HeadFvAfter [s6Step107HeadGOut,s6Step107HeadFOut,s6Step107HeadGvOut,s6Step107HeadFvOut] 2 s6Step107HeadBank_outgoingOwned

private theorem s6Step107HeadGv_distinct : (s6Step107HeadGvRow.sign::s6Step107HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step107HeadGv_owned : (s6Step107HeadGvRow.sign::s6Step107HeadGvRow.payload).toFinset⊆s6Step107HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step107HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step107HeadGv_reserved : s6Step107HeadGvBefore.reserve s6Step107HeadGvFresh.toFinset=some s6Step107HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step107HeadGvFresh,arenaWires]
  · norm_num [s6Step107HeadGvBefore,s6Step107HeadFAfter,s6Step107HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step107HeadGvBefore s6Step107HeadGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step107HeadGvFresh rfl rfl
    · norm_num [s6Step107HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step107HeadGv_checked : planRowResizeLog s6Step107HeadGvBefore s6Step107HeadGvRow 68 s6Step107HeadGvFresh=
    some (s6Step107HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 823],775⟩,growRow 775 s6Step107HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step107HeadGvBefore s6Step107HeadGvAfter s6Step107HeadGvRow 68 s6Step107HeadGvFresh
    s6Step107HeadGv_distinct s6Step107HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step107HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step107HeadGvRow.payload++s6Step107HeadGvFresh) s6Step107HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 823],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step107HeadBank_rows : planWindowRowsLog s6Step107HeadGBefore [(s6Step107HeadGRow,217),(s6Step107HeadFRow,217),(s6Step107HeadGvRow,68),(s6Step107HeadFvRow,68)] [s6Step107HeadGFresh,s6Step107HeadFFresh,s6Step107HeadGvFresh,s6Step107HeadFvFresh]=
    some (s6Step107HeadFvAfter,[s6Step107HeadGOut,s6Step107HeadFOut,s6Step107HeadGvOut,s6Step107HeadFvOut],(growRow 777 s6Step107HeadGFresh ++ (growRow 795 s6Step107HeadFFresh ++ (growRow 775 s6Step107HeadGvFresh ++ (growRow 776 s6Step107HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step107HeadFvAfter [] []=some (s6Step107HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step107HeadFvBefore s6Step107HeadFvAfter s6Step107HeadFvAfter
    s6Step107HeadFvRow s6Step107HeadFvOut 68 s6Step107HeadFvFresh [] [] []
    (growRow 776 s6Step107HeadFvFresh) ([]) s6Step107HeadFv_Incoming s6Step107HeadFv_checked h4 s6Step107HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step107HeadGvBefore s6Step107HeadGvAfter s6Step107HeadFvAfter
    s6Step107HeadGvRow s6Step107HeadGvOut 68 s6Step107HeadGvFresh [(s6Step107HeadFvRow,68)] [s6Step107HeadFvFresh] [s6Step107HeadFvOut]
    (growRow 775 s6Step107HeadGvFresh) ((growRow 776 s6Step107HeadFvFresh ++ [])) s6Step107HeadGv_Incoming s6Step107HeadGv_checked h3 s6Step107HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step107HeadFBefore s6Step107HeadFAfter s6Step107HeadFvAfter
    s6Step107HeadFRow s6Step107HeadFOut 217 s6Step107HeadFFresh [(s6Step107HeadGvRow,68),(s6Step107HeadFvRow,68)] [s6Step107HeadGvFresh,s6Step107HeadFvFresh] [s6Step107HeadGvOut,s6Step107HeadFvOut]
    (growRow 795 s6Step107HeadFFresh) ((growRow 775 s6Step107HeadGvFresh ++ (growRow 776 s6Step107HeadFvFresh ++ []))) s6Step107HeadF_Incoming s6Step107HeadF_checked h2 s6Step107HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step107HeadGBefore s6Step107HeadGAfter s6Step107HeadFvAfter
    s6Step107HeadGRow s6Step107HeadGOut 217 s6Step107HeadGFresh [(s6Step107HeadFRow,217),(s6Step107HeadGvRow,68),(s6Step107HeadFvRow,68)] [s6Step107HeadFFresh,s6Step107HeadGvFresh,s6Step107HeadFvFresh] [s6Step107HeadFOut,s6Step107HeadGvOut,s6Step107HeadFvOut]
    (growRow 777 s6Step107HeadGFresh) ((growRow 795 s6Step107HeadFFresh ++ (growRow 775 s6Step107HeadGvFresh ++ (growRow 776 s6Step107HeadFvFresh ++ [])))) s6Step107HeadG_Incoming s6Step107HeadG_checked h1 s6Step107HeadG_Outgoing
  exact h0

private theorem s6Step107HeadBank_checked : compileHmrBankResizeLog .headroom s6Step107HeadGBefore ⟨s6Step107HeadFRow,s6Step107HeadGRow,s6Step107HeadFvRow,s6Step107HeadGvRow⟩ ⟨217,217,68,68⟩ [s6Step107HeadGFresh,s6Step107HeadFFresh,s6Step107HeadGvFresh,s6Step107HeadFvFresh]=
    some (s6Step107HeadFvAfter,⟨s6Step107HeadFOut,s6Step107HeadGOut,s6Step107HeadFvOut,s6Step107HeadGvOut⟩,(growRow 777 s6Step107HeadGFresh ++ (growRow 795 s6Step107HeadFFresh ++ (growRow 775 s6Step107HeadGvFresh ++ (growRow 776 s6Step107HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step107HeadBank_rows]
  rfl

private theorem s6Step107Front_checked : compileHmrSourceFrontLog s6Step107EntryFBefore s6Step107FrontBank 216 67 ⟨215,215,67,67⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step107FrontLog=some s6Step107FrontPlan := by
  have pairEq : s6Step107FrontPair=⟨s6Step107HeadFRow,s6Step107HeadGRow,s6Step107HeadFvRow,s6Step107HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step107FrontHead=⟨s6Step107ExitFRow,s6Step107ExitGRow,s6Step107ExitFvRow,s6Step107ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step107Add0A=s6Step107FrontHead.f.wires := by decide +kernel
  have gEq : s6Step107Add0B=s6Step107FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step107Add1A=s6Step107FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step107Add1B=s6Step107FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step107EntryFBefore s6Step107FrontBank 216 67 ⟨215,215,67,67⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step107FrontLog s6Step107FrontPlan
  · exact s6Step107Front_entry
  · exact s6Step107EntryBank_checked
  · exact s6Step107Front_sigma
  · rfl
  · exact s6Step107Front_branch
  · rfl
  · simpa only [s6Step107FrontPlan,pairEq] using s6Step107HeadBank_checked
  · simpa only [s6Step107FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step107F4_checked
  · exact s6Step107Counter_checked
  · rfl
  · simpa only [s6Step107FrontPlan,headEq] using s6Step107ExitBank_checked

private theorem s6Step107Complete_explicit_checked : compileHmrEarlyStepLog s6Step107EntryFBefore s6Step107FrontBank 216 67 ⟨215,215,67,67⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step107CompleteLog=some s6Step107CompletePlan := by
  let Q := s6Step107EarlyControlPlan
  have hq := s6Step107EarlyControl_plan_checked
  have fv1 : s6Step107CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step107CompleteOut.fv.payload[2]?.getD s6Step107CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step107CompleteOut.fv.payload[3]?.getD s6Step107CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step107CompleteOut.fv.payload[4]?.getD s6Step107CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step107EntryFBefore s6Step107EarlyControlArena s6Step107FrontBank 216 67 ⟨215,215,67,67⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step107CompleteLog s6Step107FrontPlan Q
    s6Step107Front_checked s6Step107Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step107Complete_owned s6Step107Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step107EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 793 s6Step107CompleteOut.fv.second (s6Step107CompleteOut.fv.payload[2]?.getD s6Step107CompleteOut.fv.sign) (s6Step107CompleteOut.fv.payload[3]?.getD s6Step107CompleteOut.fv.sign) (s6Step107CompleteOut.fv.payload[4]?.getD s6Step107CompleteOut.fv.sign) 890 35 s6Step107EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep107Arena : Arena := s6Step107EntryFBefore
def s6PrivateStep107Bank : WindowBank := s6Step107FrontBank
def s6PrivateStep107Spec : HmrSourceWalkStepLog := ⟨216,67,⟨215,215,67,67⟩,35,.early s6Step107CompleteLog⟩
def s6PrivateStep107Plan : HmrSourceStepPlan := .early s6Step107CompletePlan
theorem s6PrivateStep107_source : s6PrivateStep107Spec=s6ObservedLogs96[11] := rfl
theorem s6PrivateStep107_checked : compileHmrSourceStepLog s6PrivateStep107Arena s6PrivateStep107Bank
    s6PrivateStep107Spec.fgWidth s6PrivateStep107Spec.vWidth s6PrivateStep107Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840]
    6 498 107 s6PrivateStep107Spec.need none s6PrivateStep107Spec.log=some s6PrivateStep107Plan := by
  change compileHmrSourceStepLog s6Step107EntryFBefore s6Step107FrontBank 216 67 ⟨215,215,67,67⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 6 498 107 35 none (.early s6Step107CompleteLog)=some (.early s6Step107CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 107<498)]
  rw [s6Step107Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
