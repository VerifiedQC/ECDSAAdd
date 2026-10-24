import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep102
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

private def s6Step104CompleteMoves : List (Wire × Wire) := [(863,216),(828,472)]

private def s6Step104EarlyControlLog : HmrEarlyControlLog := ⟨[828, 863, 890, 876, 803],[823],[864],[813, 879, 865, 796, 891, 903],[]⟩

private def s6Step104FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[864], [823], [890], [803]],[[], [], [], []]⟩,[907],[845],[813],[879],[865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[813, 879, 865, 796]⟩

private def s6Step104CompleteLog : HmrEarlyStepLog := ⟨s6Step104FrontLog,s6Step104CompleteMoves,s6Step104EarlyControlLog⟩

private def s6Step104ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471],795⟩

private def s6Step104ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857],776⟩

private def s6Step104ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215],777⟩

private def s6Step104ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784],775⟩

private def s6Step104FrontOut : WindowBank := ⟨s6Step104ExitFOut,s6Step104ExitGOut,s6Step104ExitFvOut,s6Step104ExitGvOut⟩

private def s6Step104CompleteOut : WindowBank := s6Step104FrontOut.repacked s6Step104CompleteMoves

private def s6Step104EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step104EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step104EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step104EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step104EarlyControlPositiveArena,[823],s6Step104EarlyControlEqualityArena,[864],⟨⟨907,false⟩,[⟨⟨823,false⟩,864⟩]⟩⟩

private def s6Step104EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step104EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step104EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step104EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step104EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step104EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step104EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,828⟩,⟨⟨772,false⟩,863⟩,⟨⟨771,false⟩,890⟩,⟨⟨770,false⟩,876⟩,⟨⟨769,false⟩,803⟩]⟩

private def s6Step104EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step104EarlyControlZeroArena,s6Step104EarlyControlZeroPlan,s6Step104EarlyControlClassPlan,s6Step104EarlyControlFlagArena,s6Step104EarlyControlFittedArena,s6Step104EarlyControlHistoryArena,s6Step104EarlyControlSigmaArena,s6Step104EarlyControlOutputArena,s6Step104EarlyControlLog⟩

private def s6Step104CounterWork : List Wire := [813, 879, 865, 796]

private theorem s6Step104Counter_bounded : s6Step104CounterWork.toFinset⊆arenaWires := by norm_num [s6Step104CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step104HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step104CounterDuring : Arena := ⟨s6Step104HeadFvAfter.live∪s6Step104CounterWork.toFinset,Finset.union_subset s6Step104HeadFvAfter.bounded s6Step104Counter_bounded⟩

private def s6Step104EntryFFresh : List Wire := []

private def s6Step104EntryFvFresh : List Wire := []

private def s6Step104EntryGFresh : List Wire := []

private def s6Step104EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step104EntryGvAfter : Arena := s6Step104EntryFBefore

private def s6Step104EntryGvFresh : List Wire := []

private def s6Step104ExitFExtra : List Wire := [472, 823]

private def s6Step104ExitFvExtra : List Wire := [876, 803]

private def s6Step104ExitGExtra : List Wire := [216, 864]

private def s6Step104ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,216),(217,472),(473,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step104ExitGvExtra : List Wire := [890]

private def s6Step104Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step104Add0Work : List Wire := [865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step104Add0_bounded : s6Step104Add0Work.toFinset⊆arenaWires := by
  have h : s6Step104Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step104Add0During : Arena := ⟨s6Step104Add0Arena.live∪s6Step104Add0Work.toFinset,Finset.union_subset s6Step104Add0Arena.bounded s6Step104Add0_bounded⟩

private def s6Step104Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step104Add1Work : List Wire := [865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step104Add1_bounded : s6Step104Add1Work.toFinset⊆arenaWires := by
  have h : s6Step104Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step104Add1During : Arena := ⟨s6Step104Add1Arena.live∪s6Step104Add1Work.toFinset,Finset.union_subset s6Step104Add1Arena.bounded s6Step104Add1_bounded⟩

private def s6Step104F4FlagArena : Arena := ⟨s6Step104HeadFvAfter.live∪{813},Finset.union_subset s6Step104HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step104F4Plan : HmrHybridF4Plan := ⟨s6Step104F4FlagArena,[813],s6Step104Add0Arena,[879],s6Step104Add0During,s6Step104Add0Work,s6Step104Add1During,s6Step104Add1Work⟩

private def s6Step104HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 823],795⟩

private def s6Step104HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 876, 803],776⟩

private def s6Step104HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 864],777⟩

private def s6Step104HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 890],775⟩

private def s6Step104FrontHead : WindowBank := ⟨s6Step104HeadFOut,s6Step104HeadGOut,s6Step104HeadFvOut,s6Step104HeadGvOut⟩

private def s6Step104EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472],795⟩

private def s6Step104EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 876],776⟩

private def s6Step104EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216],777⟩

private def s6Step104EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784],775⟩

private def s6Step104FrontPair : WindowBank := ⟨s6Step104EntryFOut,s6Step104EntryGOut,s6Step104EntryFvOut,s6Step104EntryGvOut⟩

private def s6Step104FrontSigmaArena : Arena := ⟨s6Step104EntryGvAfter.live∪{907},Finset.union_subset s6Step104EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step104HeadFFresh : List Wire := [823]

private def s6Step104HeadFvFresh : List Wire := [803]

private def s6Step104HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step104HeadGFresh : List Wire := [864]

private def s6Step104HeadGvFresh : List Wire := [890]

private def s6Step104FrontPlan : HmrSourceFront := ⟨s6Step104EntryGvAfter,s6Step104FrontPair,(growRow 795 s6Step104EntryFFresh ++ (growRow 777 s6Step104EntryGFresh ++ (growRow 776 s6Step104EntryFvFresh ++ (growRow 775 s6Step104EntryGvFresh ++ [])))),s6Step104FrontSigmaArena,[907],s6Step104HeadGBefore,[845],
  s6Step104HeadFvAfter,s6Step104FrontHead,(growRow 777 s6Step104HeadGFresh ++ (growRow 795 s6Step104HeadFFresh ++ (growRow 775 s6Step104HeadGvFresh ++ (growRow 776 s6Step104HeadFvFresh ++ [])))),s6Step104F4Plan,s6Step104CounterDuring,s6Step104CounterWork,s6Step104ExitGvAfter,s6Step104FrontOut,(shrinkRow 777 s6Step104ExitGExtra ++ (shrinkRow 795 s6Step104ExitFExtra ++ (shrinkRow 776 s6Step104ExitFvExtra ++ (shrinkRow 775 s6Step104ExitGvExtra ++ []))))⟩

private def s6Step104CompletePlan : HmrEarlyStepPlan := ⟨s6Step104FrontPlan,s6Step104EarlyControlArena,s6Step104EarlyControlPlan,s6Step104CompleteMoves⟩

private theorem s6Step104Complete_apart : List.Disjoint (s6Step104CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [907, 845, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] := by
  have nd : ((s6Step104CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[907, 845, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step104Complete_owned : (s6Step104CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step104EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step104EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step104CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,472),(473,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step104CompleteRelocationMove0Borrowed : Arena := ⟨s6Step104ExitGvAfter.live∪{216},Finset.union_subset s6Step104ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step104CompleteRelocationMove1Borrowed : Arena := ⟨s6Step104CompleteRelocationMove0After.live∪{472},Finset.union_subset s6Step104CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step104CompleteRelocation_move0_owned : 863∈s6Step104ExitGvAfter.live := by norm_num [s6Step104ExitGvAfter,arenaWires]

private theorem s6Step104CompleteRelocation_move0_reserve : s6Step104ExitGvAfter.reserve {216}=some s6Step104CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step104ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step104CompleteRelocation_move0_retire : s6Step104CompleteRelocationMove0Borrowed.retireSet {863}=s6Step104CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step104CompleteRelocationMove0Borrowed s6Step104CompleteRelocationMove0After {863}
  change s6Step104CompleteRelocationMove0After.live=(s6Step104ExitGvAfter.live∪{216})\{863}
  apply hmrArena_update_of_filter_check s6Step104ExitGvAfter s6Step104CompleteRelocationMove0After (fun q => ([(0,216),(217,472),(473,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,472),(473,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [216] [863] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step104CompleteRelocation_move1_owned : 828∈s6Step104CompleteRelocationMove0After.live := by norm_num [s6Step104CompleteRelocationMove0After,arenaWires]

private theorem s6Step104CompleteRelocation_move1_reserve : s6Step104CompleteRelocationMove0After.reserve {472}=some s6Step104CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step104CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step104CompleteRelocation_move1_retire : s6Step104CompleteRelocationMove1Borrowed.retireSet {828}=s6Step104EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step104CompleteRelocationMove1Borrowed s6Step104EarlyControlArena {828}
  change s6Step104EarlyControlArena.live=(s6Step104CompleteRelocationMove0After.live∪{472})\{828}
  apply hmrArena_update_of_filter_check s6Step104CompleteRelocationMove0After s6Step104EarlyControlArena (fun q => ([(0,472),(473,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [472] [828] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step104CompleteRelocation_checked : s6Step104ExitGvAfter.checkRepack [(863,216),(828,472)]=some s6Step104EarlyControlArena := by
  have tail2 : s6Step104EarlyControlArena.checkRepack []=some s6Step104EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step104CompleteRelocationMove0After s6Step104CompleteRelocationMove1Borrowed s6Step104EarlyControlArena s6Step104EarlyControlArena 828 472 []
    s6Step104CompleteRelocation_move1_owned s6Step104CompleteRelocation_move1_reserve s6Step104CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step104ExitGvAfter s6Step104CompleteRelocationMove0Borrowed s6Step104CompleteRelocationMove0After s6Step104EarlyControlArena 863 216 [(828,472)]
    s6Step104CompleteRelocation_move0_owned s6Step104CompleteRelocation_move0_reserve s6Step104CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step104Complete_repack : s6Step104ExitGvAfter.checkRepack s6Step104CompleteMoves=some s6Step104EarlyControlArena := by
  simpa only [s6Step104CompleteMoves] using s6Step104CompleteRelocation_checked

private theorem s6Step104EarlyControl_branchOwned : ([845] : List Wire).toFinset⊆s6Step104EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step104EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step104EarlyControl_branch : compileHmrBranchRetirement s6Step104EarlyControlSigmaArena 845=some s6Step104EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step104EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step104EarlyControlSigmaArena s6Step104EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [845] rfl rfl
    decide +kernel

private theorem s6Step104EarlyControl_classEqualityBorrow : s6Step104EarlyControlPositiveArena.checkBorrow (([907, 823] : List Wire).length-1) s6Step104EarlyControlLog.classWork=some s6Step104EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step104EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step104EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step104EarlyControlPositiveArena s6Step104EarlyControlEqualityArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step104EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step104EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step104EarlyControl_classEqualityOwned : ([907, 823] : List Wire).toFinset⊆s6Step104EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step104EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step104EarlyControl_classEquality : compileHmrEqualityLog s6Step104EarlyControlPositiveArena [907, 823] 0 s6Step104EarlyControlLog.classWork=some (s6Step104EarlyControlEqualityArena,s6Step104EarlyControlLog.classWork,s6Step104EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step104EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step104EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step104EarlyControl_classOwned : ([769, 803, 907] : List Wire).toFinset⊆s6Step104EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step104EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step104EarlyControl_positiveBorrow : s6Step104EarlyControlZeroArena.checkBorrow (1) s6Step104EarlyControlLog.positiveWork=some s6Step104EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step104EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step104EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step104EarlyControlZeroArena s6Step104EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step104EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step104EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step104EarlyControl_class : compileHmrSourceClassLog s6Step104EarlyControlZeroArena false 769 s6Step104EarlyControlZeroPlan.top 0 907 s6Step104EarlyControlLog.positiveWork s6Step104EarlyControlLog.classWork=some s6Step104EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step104EarlyControlClassPlan s6Step104EarlyControlZeroArena false 769 s6Step104EarlyControlZeroPlan.top 0 907
  constructor
  · decide +kernel
  · exact s6Step104EarlyControl_classOwned
  · exact s6Step104EarlyControl_positiveBorrow
  · exact s6Step104EarlyControl_classEquality

private theorem s6Step104EarlyControl_entryRecordOwned : ([845, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).toFinset⊆s6Step104EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step104EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step104EarlyControl_entrySigmaOwned : ([907, 254] : List Wire).toFinset⊆s6Step104EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step104EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step104EarlyControl_fitBorrow : s6Step104EarlyControlFlagArena.checkBorrow ((35-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).length)) s6Step104EarlyControlLog.recordFresh=some s6Step104EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step104EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step104EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step104EarlyControlFittedArena,s6Step104EarlyControlFlagArena,s6Step104EarlyControlLog,arenaWires]

private theorem s6Step104EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).toFinset⊆s6Step104EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step104EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step104EarlyControl_fit : compileHmrRecordGrowLog s6Step104EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step104EarlyControlLog.recordFresh=some s6Step104EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step104EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step104EarlyControl_fitBorrow

private theorem s6Step104EarlyControl_flagsBorrow : s6Step104EarlyControlEqualityArena.checkBorrow (6) s6Step104EarlyControlLog.flagWork=some s6Step104EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step104EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step104EarlyControlEqualityArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step104EarlyControlEqualityArena s6Step104EarlyControlFlagArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step104EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step104EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step104EarlyControl_flagsOwned : ([864, 253, 252, 251] : List Wire).toFinset⊆s6Step104EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step104EarlyControlEqualityArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step104EarlyControl_flags : compileHmrFlagsLog s6Step104EarlyControlClassPlan.equalityArena s6Step104EarlyControlClassPlan.equality.top 253 252 251 s6Step104EarlyControlLog.flagWork=some s6Step104EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step104EarlyControl_flagsOwned⟩
  · exact s6Step104EarlyControl_flagsBorrow

private theorem s6Step104EarlyControl_historyBorrow : s6Step104EarlyControlArena.checkBorrow ((35-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).length)) s6Step104EarlyControlLog.recordFresh=some s6Step104EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step104EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step104EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step104EarlyControlArena s6Step104EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step104EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step104EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step104EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).toFinset⊆s6Step104EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step104EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step104EarlyControl_history : compileHmrRecordGrowLog s6Step104EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step104EarlyControlLog.recordFresh=some s6Step104EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step104EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step104EarlyControl_historyBorrow

private theorem s6Step104EarlyControl_sigmaOwned : ([254, 907] : List Wire).toFinset⊆s6Step104EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step104EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step104EarlyControl_sigmaReleaseOwned : ([907] : List Wire).toFinset⊆s6Step104EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step104EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step104EarlyControl_sigmaRelease : s6Step104EarlyControlHistoryArena.release {907} (fun _ => false)=some s6Step104EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step104EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step104EarlyControlHistoryArena s6Step104EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [907] rfl rfl
    decide +kernel

private theorem s6Step104EarlyControl_sigma : compileHmrSigmaDropLog s6Step104EarlyControlHistoryArena false 0 0 254 907 []=some s6Step104EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step104EarlyControl_sigmaOwned⟩
  · exact s6Step104EarlyControl_sigmaRelease

private theorem s6Step104EarlyControl_zeroBorrow : s6Step104EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step104EarlyControlLog.zeroWork=some s6Step104EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step104EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step104EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step104EarlyControlArena s6Step104EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step104EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step104EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step104EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step104EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step104EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,828),(829,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,863),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step104EarlyControl_zero : compileHmrEqualityLog s6Step104EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step104EarlyControlLog.zeroWork=some (s6Step104EarlyControlZeroArena,s6Step104EarlyControlLog.zeroWork,s6Step104EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step104EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step104EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step104EarlyControl_logged : s6Step104EarlyControlPlan.Logged s6Step104EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 907 254 253 252 251 845 35 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step104EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step104EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step104EarlyControl_zero
  · exact s6Step104EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step104EarlyControl_flags
  · exact s6Step104EarlyControl_fit
  · exact s6Step104EarlyControl_history
  · exact s6Step104EarlyControl_sigma
  · exact s6Step104EarlyControl_branch

private theorem s6Step104EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step104EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 907 254 253 252 251 845 35 s6Step104EarlyControlLog=some s6Step104EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step104EarlyControlPlan s6Step104EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 907 254 253 252 251 845 35 s6Step104EarlyControl_logged

private def s6Step104EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472],795⟩

private def s6Step104EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 876],776⟩

private def s6Step104EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216],777⟩

private def s6Step104EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784],775⟩

private def s6Step104FrontBank : WindowBank := ⟨s6Step104EntryFRow,s6Step104EntryGRow,s6Step104EntryFvRow,s6Step104EntryGvRow⟩

private def s6Step104Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 823, 795]

private def s6Step104Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 864, 777]

private def s6Step104Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 876, 803, 776]

private def s6Step104Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 890, 775]

private theorem s6Step104Counter_apart : Disjoint s6Step104HeadFvAfter.live s6Step104CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step104HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step104Counter_borrowed : s6Step104HeadFvAfter.checkBorrow 4 s6Step104CounterWork=some s6Step104CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step104HeadFvAfter s6Step104CounterDuring s6Step104CounterWork.toFinset s6Step104Counter_bounded s6Step104Counter_apart rfl

private theorem s6Step104Counter_owned : (907::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step104HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step104HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step104Counter_checked : compileHmrCounterStepLog s6Step104HeadFvAfter true 907 [774, 773, 772, 771, 770, 769] s6Step104CounterWork=some s6Step104CounterDuring := by
  have owned : ∀q∈907::[774, 773, 772, 771, 770, 769],q∈s6Step104HeadFvAfter.live := fun q hq => s6Step104Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step104Counter_borrowed

private def s6Step104EntryFAfter : Arena := s6Step104EntryFBefore

private theorem s6Step104EntryBank_incomingDistinct : ([s6Step104EntryFRow,s6Step104EntryGRow,s6Step104EntryFvRow,s6Step104EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step104EntryF_Incoming : rowsOwned s6Step104EntryFBefore [s6Step104EntryFRow,s6Step104EntryGRow,s6Step104EntryFvRow,s6Step104EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step104EntryFRow,s6Step104EntryGRow,s6Step104EntryFvRow,s6Step104EntryGvRow] 0 s6Step104EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step104EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step104EntryBank_outgoingOwned : rowsOwned s6Step104EntryGvAfter [s6Step104EntryFOut,s6Step104EntryGOut,s6Step104EntryFvOut,s6Step104EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step104EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step104EntryF_Outgoing : rowsOwned s6Step104EntryGvAfter [s6Step104EntryFOut,s6Step104EntryGOut,s6Step104EntryFvOut,s6Step104EntryGvOut] :=
  hmrRows_owned_drop s6Step104EntryGvAfter [s6Step104EntryFOut,s6Step104EntryGOut,s6Step104EntryFvOut,s6Step104EntryGvOut] 0 s6Step104EntryBank_outgoingOwned

private theorem s6Step104EntryF_distinct : (s6Step104EntryFRow.sign::s6Step104EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step104EntryF_owned : (s6Step104EntryFRow.sign::s6Step104EntryFRow.payload).toFinset⊆s6Step104EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step104EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step104EntryF_reserved : s6Step104EntryFBefore.reserve s6Step104EntryFFresh.toFinset=some s6Step104EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step104EntryFFresh,arenaWires]
  · norm_num [s6Step104EntryFBefore,s6Step104EntryFFresh,arenaWires]
  · simp only [s6Step104EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step104EntryF_checked : planRowResizeLog s6Step104EntryFBefore s6Step104EntryFRow 217 s6Step104EntryFFresh=
    some (s6Step104EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472],795⟩,growRow 795 s6Step104EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step104EntryFBefore s6Step104EntryFAfter s6Step104EntryFRow 217 s6Step104EntryFFresh
    s6Step104EntryF_distinct s6Step104EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step104EntryF_reserved
  have rowEq : WindowRow.mk (s6Step104EntryFRow.payload++s6Step104EntryFFresh) s6Step104EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step104EntryFvAfter : Arena := s6Step104EntryFBefore

private def s6Step104EntryFvBefore : Arena := s6Step104EntryFBefore

private theorem s6Step104EntryFv_Incoming : rowsOwned s6Step104EntryFvBefore [s6Step104EntryFvRow,s6Step104EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step104EntryFRow,s6Step104EntryGRow,s6Step104EntryFvRow,s6Step104EntryGvRow] 2 s6Step104EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step104EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step104EntryFv_Outgoing : rowsOwned s6Step104EntryGvAfter [s6Step104EntryFvOut,s6Step104EntryGvOut] :=
  hmrRows_owned_drop s6Step104EntryGvAfter [s6Step104EntryFOut,s6Step104EntryGOut,s6Step104EntryFvOut,s6Step104EntryGvOut] 2 s6Step104EntryBank_outgoingOwned

private theorem s6Step104EntryFv_distinct : (s6Step104EntryFvRow.sign::s6Step104EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step104EntryFv_owned : (s6Step104EntryFvRow.sign::s6Step104EntryFvRow.payload).toFinset⊆s6Step104EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step104EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step104EntryFv_reserved : s6Step104EntryFvBefore.reserve s6Step104EntryFvFresh.toFinset=some s6Step104EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step104EntryFvFresh,arenaWires]
  · norm_num [s6Step104EntryFvBefore,s6Step104EntryFBefore,s6Step104EntryFvFresh,arenaWires]
  · simp only [s6Step104EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step104EntryFv_checked : planRowResizeLog s6Step104EntryFvBefore s6Step104EntryFvRow 66 s6Step104EntryFvFresh=
    some (s6Step104EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 876],776⟩,growRow 776 s6Step104EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step104EntryFvBefore s6Step104EntryFvAfter s6Step104EntryFvRow 66 s6Step104EntryFvFresh
    s6Step104EntryFv_distinct s6Step104EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step104EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step104EntryFvRow.payload++s6Step104EntryFvFresh) s6Step104EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 876],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step104EntryGAfter : Arena := s6Step104EntryFBefore

private def s6Step104EntryGBefore : Arena := s6Step104EntryFBefore

private theorem s6Step104EntryG_Incoming : rowsOwned s6Step104EntryGBefore [s6Step104EntryGRow,s6Step104EntryFvRow,s6Step104EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step104EntryFRow,s6Step104EntryGRow,s6Step104EntryFvRow,s6Step104EntryGvRow] 1 s6Step104EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step104EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step104EntryG_Outgoing : rowsOwned s6Step104EntryGvAfter [s6Step104EntryGOut,s6Step104EntryFvOut,s6Step104EntryGvOut] :=
  hmrRows_owned_drop s6Step104EntryGvAfter [s6Step104EntryFOut,s6Step104EntryGOut,s6Step104EntryFvOut,s6Step104EntryGvOut] 1 s6Step104EntryBank_outgoingOwned

private theorem s6Step104EntryG_distinct : (s6Step104EntryGRow.sign::s6Step104EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step104EntryG_owned : (s6Step104EntryGRow.sign::s6Step104EntryGRow.payload).toFinset⊆s6Step104EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step104EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step104EntryG_reserved : s6Step104EntryGBefore.reserve s6Step104EntryGFresh.toFinset=some s6Step104EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step104EntryGFresh,arenaWires]
  · norm_num [s6Step104EntryGBefore,s6Step104EntryFBefore,s6Step104EntryGFresh,arenaWires]
  · simp only [s6Step104EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step104EntryG_checked : planRowResizeLog s6Step104EntryGBefore s6Step104EntryGRow 217 s6Step104EntryGFresh=
    some (s6Step104EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216],777⟩,growRow 777 s6Step104EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step104EntryGBefore s6Step104EntryGAfter s6Step104EntryGRow 217 s6Step104EntryGFresh
    s6Step104EntryG_distinct s6Step104EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step104EntryG_reserved
  have rowEq : WindowRow.mk (s6Step104EntryGRow.payload++s6Step104EntryGFresh) s6Step104EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step104EntryGvBefore : Arena := s6Step104EntryFBefore

private theorem s6Step104EntryGv_Incoming : rowsOwned s6Step104EntryGvBefore [s6Step104EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step104EntryFRow,s6Step104EntryGRow,s6Step104EntryFvRow,s6Step104EntryGvRow] 3 s6Step104EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step104EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step104EntryGv_Outgoing : rowsOwned s6Step104EntryGvAfter [s6Step104EntryGvOut] :=
  hmrRows_owned_drop s6Step104EntryGvAfter [s6Step104EntryFOut,s6Step104EntryGOut,s6Step104EntryFvOut,s6Step104EntryGvOut] 3 s6Step104EntryBank_outgoingOwned

private theorem s6Step104EntryGv_distinct : (s6Step104EntryGvRow.sign::s6Step104EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step104EntryGv_owned : (s6Step104EntryGvRow.sign::s6Step104EntryGvRow.payload).toFinset⊆s6Step104EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step104EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step104EntryGv_reserved : s6Step104EntryGvBefore.reserve s6Step104EntryGvFresh.toFinset=some s6Step104EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step104EntryGvFresh,arenaWires]
  · norm_num [s6Step104EntryGvBefore,s6Step104EntryFBefore,s6Step104EntryGvFresh,arenaWires]
  · simp only [s6Step104EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step104EntryGv_checked : planRowResizeLog s6Step104EntryGvBefore s6Step104EntryGvRow 66 s6Step104EntryGvFresh=
    some (s6Step104EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784],775⟩,growRow 775 s6Step104EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step104EntryGvBefore s6Step104EntryGvAfter s6Step104EntryGvRow 66 s6Step104EntryGvFresh
    s6Step104EntryGv_distinct s6Step104EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step104EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step104EntryGvRow.payload++s6Step104EntryGvFresh) s6Step104EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step104EntryBank_rows : planWindowRowsLog s6Step104EntryFBefore [(s6Step104EntryFRow,217),(s6Step104EntryGRow,217),(s6Step104EntryFvRow,66),(s6Step104EntryGvRow,66)] [s6Step104EntryFFresh,s6Step104EntryGFresh,s6Step104EntryFvFresh,s6Step104EntryGvFresh]=
    some (s6Step104EntryGvAfter,[s6Step104EntryFOut,s6Step104EntryGOut,s6Step104EntryFvOut,s6Step104EntryGvOut],(growRow 795 s6Step104EntryFFresh ++ (growRow 777 s6Step104EntryGFresh ++ (growRow 776 s6Step104EntryFvFresh ++ (growRow 775 s6Step104EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step104EntryGvAfter [] []=some (s6Step104EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step104EntryGvBefore s6Step104EntryGvAfter s6Step104EntryGvAfter
    s6Step104EntryGvRow s6Step104EntryGvOut 66 s6Step104EntryGvFresh [] [] []
    (growRow 775 s6Step104EntryGvFresh) ([]) s6Step104EntryGv_Incoming s6Step104EntryGv_checked h4 s6Step104EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step104EntryFvBefore s6Step104EntryFvAfter s6Step104EntryGvAfter
    s6Step104EntryFvRow s6Step104EntryFvOut 66 s6Step104EntryFvFresh [(s6Step104EntryGvRow,66)] [s6Step104EntryGvFresh] [s6Step104EntryGvOut]
    (growRow 776 s6Step104EntryFvFresh) ((growRow 775 s6Step104EntryGvFresh ++ [])) s6Step104EntryFv_Incoming s6Step104EntryFv_checked h3 s6Step104EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step104EntryGBefore s6Step104EntryGAfter s6Step104EntryGvAfter
    s6Step104EntryGRow s6Step104EntryGOut 217 s6Step104EntryGFresh [(s6Step104EntryFvRow,66),(s6Step104EntryGvRow,66)] [s6Step104EntryFvFresh,s6Step104EntryGvFresh] [s6Step104EntryFvOut,s6Step104EntryGvOut]
    (growRow 777 s6Step104EntryGFresh) ((growRow 776 s6Step104EntryFvFresh ++ (growRow 775 s6Step104EntryGvFresh ++ []))) s6Step104EntryG_Incoming s6Step104EntryG_checked h2 s6Step104EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step104EntryFBefore s6Step104EntryFAfter s6Step104EntryGvAfter
    s6Step104EntryFRow s6Step104EntryFOut 217 s6Step104EntryFFresh [(s6Step104EntryGRow,217),(s6Step104EntryFvRow,66),(s6Step104EntryGvRow,66)] [s6Step104EntryGFresh,s6Step104EntryFvFresh,s6Step104EntryGvFresh] [s6Step104EntryGOut,s6Step104EntryFvOut,s6Step104EntryGvOut]
    (growRow 795 s6Step104EntryFFresh) ((growRow 777 s6Step104EntryGFresh ++ (growRow 776 s6Step104EntryFvFresh ++ (growRow 775 s6Step104EntryGvFresh ++ [])))) s6Step104EntryF_Incoming s6Step104EntryF_checked h1 s6Step104EntryF_Outgoing
  exact h0

private theorem s6Step104EntryBank_checked : compileHmrBankResizeLog .entry s6Step104EntryFBefore ⟨s6Step104EntryFRow,s6Step104EntryGRow,s6Step104EntryFvRow,s6Step104EntryGvRow⟩ ⟨217,217,66,66⟩ [s6Step104EntryFFresh,s6Step104EntryGFresh,s6Step104EntryFvFresh,s6Step104EntryGvFresh]=
    some (s6Step104EntryGvAfter,⟨s6Step104EntryFOut,s6Step104EntryGOut,s6Step104EntryFvOut,s6Step104EntryGvOut⟩,(growRow 795 s6Step104EntryFFresh ++ (growRow 777 s6Step104EntryGFresh ++ (growRow 776 s6Step104EntryFvFresh ++ (growRow 775 s6Step104EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step104EntryBank_rows]
  rfl

private def s6Step104ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,216),(217,472),(473,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step104ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,216),(217,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step104ExitFBefore : Arena := s6Step104ExitGAfter

private def s6Step104ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 823],795⟩

private def s6Step104ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 876, 803],776⟩

private def s6Step104ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 864],777⟩

private def s6Step104ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 890],775⟩

private theorem s6Step104ExitBank_incomingDistinct : ([s6Step104ExitGRow,s6Step104ExitFRow,s6Step104ExitFvRow,s6Step104ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step104ExitF_Incoming : rowsOwned s6Step104ExitFBefore [s6Step104ExitFRow,s6Step104ExitFvRow,s6Step104ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step104ExitGRow,s6Step104ExitFRow,s6Step104ExitFvRow,s6Step104ExitGvRow] 1 s6Step104ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step104ExitFBefore (fun q => ([(0,216),(217,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step104ExitBank_outgoingOwned : rowsOwned s6Step104ExitGvAfter [s6Step104ExitGOut,s6Step104ExitFOut,s6Step104ExitFvOut,s6Step104ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step104ExitGvAfter (fun q => ([(0,216),(217,472),(473,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step104ExitF_Outgoing : rowsOwned s6Step104ExitGvAfter [s6Step104ExitFOut,s6Step104ExitFvOut,s6Step104ExitGvOut] :=
  hmrRows_owned_drop s6Step104ExitGvAfter [s6Step104ExitGOut,s6Step104ExitFOut,s6Step104ExitFvOut,s6Step104ExitGvOut] 1 s6Step104ExitBank_outgoingOwned

private theorem s6Step104ExitF_distinct : (s6Step104ExitFRow.sign::s6Step104ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step104ExitF_owned : (s6Step104ExitFRow.sign::s6Step104ExitFRow.payload).toFinset⊆s6Step104ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step104ExitFBefore (fun q => ([(0,216),(217,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step104ExitF_retired : s6Step104ExitFBefore.retireSet s6Step104ExitFExtra.toFinset=s6Step104ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step104ExitFBefore s6Step104ExitFAfter s6Step104ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step104ExitFBefore s6Step104ExitFAfter (fun q => ([(0,216),(217,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,216),(217,472),(473,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step104ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step104ExitF_checked : planRowResizeLog s6Step104ExitFBefore s6Step104ExitFRow 216 []=
    some (s6Step104ExitFAfter,s6Step104ExitFOut,shrinkRow 795 s6Step104ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step104ExitFBefore s6Step104ExitFRow 216 s6Step104ExitF_distinct s6Step104ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step104ExitFRow.payload.take 216) s6Step104ExitFRow.sign=s6Step104ExitFOut := by decide +kernel
  have hi : s6Step104ExitFRow.payload.drop 216=s6Step104ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step104ExitF_retired] at result
  exact result

private def s6Step104ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,216),(217,472),(473,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step104ExitFvBefore : Arena := s6Step104ExitFAfter

private theorem s6Step104ExitFv_Incoming : rowsOwned s6Step104ExitFvBefore [s6Step104ExitFvRow,s6Step104ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step104ExitGRow,s6Step104ExitFRow,s6Step104ExitFvRow,s6Step104ExitGvRow] 2 s6Step104ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step104ExitFvBefore (fun q => ([(0,216),(217,472),(473,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step104ExitFv_Outgoing : rowsOwned s6Step104ExitGvAfter [s6Step104ExitFvOut,s6Step104ExitGvOut] :=
  hmrRows_owned_drop s6Step104ExitGvAfter [s6Step104ExitGOut,s6Step104ExitFOut,s6Step104ExitFvOut,s6Step104ExitGvOut] 2 s6Step104ExitBank_outgoingOwned

private theorem s6Step104ExitFv_distinct : (s6Step104ExitFvRow.sign::s6Step104ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step104ExitFv_owned : (s6Step104ExitFvRow.sign::s6Step104ExitFvRow.payload).toFinset⊆s6Step104ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step104ExitFvBefore (fun q => ([(0,216),(217,472),(473,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step104ExitFv_retired : s6Step104ExitFvBefore.retireSet s6Step104ExitFvExtra.toFinset=s6Step104ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step104ExitFvBefore s6Step104ExitFvAfter s6Step104ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step104ExitFvBefore s6Step104ExitFvAfter (fun q => ([(0,216),(217,472),(473,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,216),(217,472),(473,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step104ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step104ExitFv_checked : planRowResizeLog s6Step104ExitFvBefore s6Step104ExitFvRow 65 []=
    some (s6Step104ExitFvAfter,s6Step104ExitFvOut,shrinkRow 776 s6Step104ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step104ExitFvBefore s6Step104ExitFvRow 65 s6Step104ExitFv_distinct s6Step104ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step104ExitFvRow.payload.take 65) s6Step104ExitFvRow.sign=s6Step104ExitFvOut := by decide +kernel
  have hi : s6Step104ExitFvRow.payload.drop 65=s6Step104ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step104ExitFv_retired] at result
  exact result

private def s6Step104ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step104ExitG_Incoming : rowsOwned s6Step104ExitGBefore [s6Step104ExitGRow,s6Step104ExitFRow,s6Step104ExitFvRow,s6Step104ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step104ExitGRow,s6Step104ExitFRow,s6Step104ExitFvRow,s6Step104ExitGvRow] 0 s6Step104ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step104ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step104ExitG_Outgoing : rowsOwned s6Step104ExitGvAfter [s6Step104ExitGOut,s6Step104ExitFOut,s6Step104ExitFvOut,s6Step104ExitGvOut] :=
  hmrRows_owned_drop s6Step104ExitGvAfter [s6Step104ExitGOut,s6Step104ExitFOut,s6Step104ExitFvOut,s6Step104ExitGvOut] 0 s6Step104ExitBank_outgoingOwned

private theorem s6Step104ExitG_distinct : (s6Step104ExitGRow.sign::s6Step104ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step104ExitG_owned : (s6Step104ExitGRow.sign::s6Step104ExitGRow.payload).toFinset⊆s6Step104ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step104ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step104ExitG_retired : s6Step104ExitGBefore.retireSet s6Step104ExitGExtra.toFinset=s6Step104ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step104ExitGBefore s6Step104ExitGAfter s6Step104ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step104ExitGBefore s6Step104ExitGAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,216),(217,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step104ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step104ExitG_checked : planRowResizeLog s6Step104ExitGBefore s6Step104ExitGRow 216 []=
    some (s6Step104ExitGAfter,s6Step104ExitGOut,shrinkRow 777 s6Step104ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step104ExitGBefore s6Step104ExitGRow 216 s6Step104ExitG_distinct s6Step104ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step104ExitGRow.payload.take 216) s6Step104ExitGRow.sign=s6Step104ExitGOut := by decide +kernel
  have hi : s6Step104ExitGRow.payload.drop 216=s6Step104ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step104ExitG_retired] at result
  exact result

private def s6Step104ExitGvBefore : Arena := s6Step104ExitFvAfter

private theorem s6Step104ExitGv_Incoming : rowsOwned s6Step104ExitGvBefore [s6Step104ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step104ExitGRow,s6Step104ExitFRow,s6Step104ExitFvRow,s6Step104ExitGvRow] 3 s6Step104ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step104ExitGvBefore (fun q => ([(0,216),(217,472),(473,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step104ExitGv_Outgoing : rowsOwned s6Step104ExitGvAfter [s6Step104ExitGvOut] :=
  hmrRows_owned_drop s6Step104ExitGvAfter [s6Step104ExitGOut,s6Step104ExitFOut,s6Step104ExitFvOut,s6Step104ExitGvOut] 3 s6Step104ExitBank_outgoingOwned

private theorem s6Step104ExitGv_distinct : (s6Step104ExitGvRow.sign::s6Step104ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step104ExitGv_owned : (s6Step104ExitGvRow.sign::s6Step104ExitGvRow.payload).toFinset⊆s6Step104ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step104ExitGvBefore (fun q => ([(0,216),(217,472),(473,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step104ExitGv_retired : s6Step104ExitGvBefore.retireSet s6Step104ExitGvExtra.toFinset=s6Step104ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step104ExitGvBefore s6Step104ExitGvAfter s6Step104ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step104ExitGvBefore s6Step104ExitGvAfter (fun q => ([(0,216),(217,472),(473,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,216),(217,472),(473,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step104ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step104ExitGv_checked : planRowResizeLog s6Step104ExitGvBefore s6Step104ExitGvRow 66 []=
    some (s6Step104ExitGvAfter,s6Step104ExitGvOut,shrinkRow 775 s6Step104ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step104ExitGvBefore s6Step104ExitGvRow 66 s6Step104ExitGv_distinct s6Step104ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step104ExitGvRow.payload.take 66) s6Step104ExitGvRow.sign=s6Step104ExitGvOut := by decide +kernel
  have hi : s6Step104ExitGvRow.payload.drop 66=s6Step104ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step104ExitGv_retired] at result
  exact result

private theorem s6Step104ExitBank_rows : planWindowRowsLog s6Step104ExitGBefore [(s6Step104ExitGRow,216),(s6Step104ExitFRow,216),(s6Step104ExitFvRow,65),(s6Step104ExitGvRow,66)] [[],[],[],[]]=
    some (s6Step104ExitGvAfter,[s6Step104ExitGOut,s6Step104ExitFOut,s6Step104ExitFvOut,s6Step104ExitGvOut],(shrinkRow 777 s6Step104ExitGExtra ++ (shrinkRow 795 s6Step104ExitFExtra ++ (shrinkRow 776 s6Step104ExitFvExtra ++ (shrinkRow 775 s6Step104ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step104ExitGvAfter [] []=some (s6Step104ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step104ExitGvBefore s6Step104ExitGvAfter s6Step104ExitGvAfter
    s6Step104ExitGvRow s6Step104ExitGvOut 66 [] [] [] []
    (shrinkRow 775 s6Step104ExitGvExtra) ([]) s6Step104ExitGv_Incoming s6Step104ExitGv_checked h4 s6Step104ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step104ExitFvBefore s6Step104ExitFvAfter s6Step104ExitGvAfter
    s6Step104ExitFvRow s6Step104ExitFvOut 65 [] [(s6Step104ExitGvRow,66)] [[]] [s6Step104ExitGvOut]
    (shrinkRow 776 s6Step104ExitFvExtra) ((shrinkRow 775 s6Step104ExitGvExtra ++ [])) s6Step104ExitFv_Incoming s6Step104ExitFv_checked h3 s6Step104ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step104ExitFBefore s6Step104ExitFAfter s6Step104ExitGvAfter
    s6Step104ExitFRow s6Step104ExitFOut 216 [] [(s6Step104ExitFvRow,65),(s6Step104ExitGvRow,66)] [[],[]] [s6Step104ExitFvOut,s6Step104ExitGvOut]
    (shrinkRow 795 s6Step104ExitFExtra) ((shrinkRow 776 s6Step104ExitFvExtra ++ (shrinkRow 775 s6Step104ExitGvExtra ++ []))) s6Step104ExitF_Incoming s6Step104ExitF_checked h2 s6Step104ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step104ExitGBefore s6Step104ExitGAfter s6Step104ExitGvAfter
    s6Step104ExitGRow s6Step104ExitGOut 216 [] [(s6Step104ExitFRow,216),(s6Step104ExitFvRow,65),(s6Step104ExitGvRow,66)] [[],[],[]] [s6Step104ExitFOut,s6Step104ExitFvOut,s6Step104ExitGvOut]
    (shrinkRow 777 s6Step104ExitGExtra) ((shrinkRow 795 s6Step104ExitFExtra ++ (shrinkRow 776 s6Step104ExitFvExtra ++ (shrinkRow 775 s6Step104ExitGvExtra ++ [])))) s6Step104ExitG_Incoming s6Step104ExitG_checked h1 s6Step104ExitG_Outgoing
  exact h0

private theorem s6Step104ExitBank_checked : compileHmrBankResizeLog .exit s6Step104ExitGBefore ⟨s6Step104ExitFRow,s6Step104ExitGRow,s6Step104ExitFvRow,s6Step104ExitGvRow⟩ ⟨216,216,65,66⟩ [[],[],[],[]]=
    some (s6Step104ExitGvAfter,⟨s6Step104ExitFOut,s6Step104ExitGOut,s6Step104ExitFvOut,s6Step104ExitGvOut⟩,(shrinkRow 777 s6Step104ExitGExtra ++ (shrinkRow 795 s6Step104ExitFExtra ++ (shrinkRow 776 s6Step104ExitFvExtra ++ (shrinkRow 775 s6Step104ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step104ExitBank_rows]
  rfl

private theorem s6Step104Add0_apart : Disjoint s6Step104Add0Arena.live s6Step104Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step104Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step104Add0_card : s6Step104Add0Arena.live.card=875 := by
  decide +kernel

private theorem s6Step104Add0_borrowed : s6Step104Add0Arena.checkBorrow (hmrHybridCount s6Step104Add0Arena s6Step104Add0B.length) s6Step104Add0Work=some s6Step104Add0During := by
  have len : s6Step104Add0Work.length=hmrHybridCount s6Step104Add0Arena s6Step104Add0B.length := by
    rw [hmrHybridCount,s6Step104Add0_card]
    decide +kernel
  have nd : s6Step104Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step104Add0Arena s6Step104Add0During s6Step104Add0Work.toFinset s6Step104Add0_bounded s6Step104Add0_apart rfl

private theorem s6Step104Add0_distinct : (813::845::879::(s6Step104Add0A++s6Step104Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step104Add0_owned : (813::845::879::(s6Step104Add0A++s6Step104Add0B)).toFinset⊆s6Step104Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step104Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step104Add0_checked : compileHmrHybridCinLog s6Step104Add0Arena 845 813 879 s6Step104Add0A s6Step104Add0B s6Step104Add0Work=some s6Step104Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step104Add0Arena s6Step104Add0During 845 813 879 s6Step104Add0A s6Step104Add0B s6Step104Add0Work
    (by decide +kernel) (by decide +kernel) s6Step104Add0_distinct
    (fun q hq => s6Step104Add0_owned (List.mem_toFinset.mpr hq)) s6Step104Add0_borrowed

private theorem s6Step104Add1_apart : Disjoint s6Step104Add1Arena.live s6Step104Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step104Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step104Add1_card : s6Step104Add1Arena.live.card=875 := by
  decide +kernel

private theorem s6Step104Add1_borrowed : s6Step104Add1Arena.checkBorrow (hmrHybridCount s6Step104Add1Arena s6Step104Add1B.length) s6Step104Add1Work=some s6Step104Add1During := by
  have len : s6Step104Add1Work.length=hmrHybridCount s6Step104Add1Arena s6Step104Add1B.length := by
    rw [hmrHybridCount,s6Step104Add1_card]
    decide +kernel
  have nd : s6Step104Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step104Add1Arena s6Step104Add1During s6Step104Add1Work.toFinset s6Step104Add1_bounded s6Step104Add1_apart rfl

private theorem s6Step104Add1_distinct : (813::845::879::(s6Step104Add1A++s6Step104Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step104Add1_owned : (813::845::879::(s6Step104Add1A++s6Step104Add1B)).toFinset⊆s6Step104Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step104Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step104Add1_checked : compileHmrHybridCinLog s6Step104Add1Arena 845 813 879 s6Step104Add1A s6Step104Add1B s6Step104Add1Work=some s6Step104Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step104Add1Arena s6Step104Add1During 845 813 879 s6Step104Add1A s6Step104Add1B s6Step104Add1Work
    (by decide +kernel) (by decide +kernel) s6Step104Add1_distinct
    (fun q hq => s6Step104Add1_owned (List.mem_toFinset.mpr hq)) s6Step104Add1_borrowed

private theorem s6Step104F4_apart : Disjoint (s6Step104Add0A++s6Step104Add0B).toFinset (s6Step104Add1A++s6Step104Add1B).toFinset := by
  have nd : ((s6Step104Add0A++s6Step104Add0B)++(s6Step104Add1A++s6Step104Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step104F4_carry : s6Step104F4FlagArena.checkBorrow 1 [879]=some s6Step104Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step104F4FlagArena,s6Step104HeadFvAfter,arenaWires]
  · change s6Step104Add0Arena.live=(s6Step104HeadFvAfter.live∪{813})∪{879}
    apply hmrArena_union_pair_of_filter_check s6Step104HeadFvAfter s6Step104Add0Arena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) 813 879 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step104F4_distinct : (907::845::813::879::((s6Step104Add0A++s6Step104Add1A)++(s6Step104Add0B++s6Step104Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step104F4_flag : s6Step104HeadFvAfter.checkBorrow 1 [813]=some s6Step104F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step104HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step104F4_owned : (907::845::((s6Step104Add0A++s6Step104Add1A)++(s6Step104Add0B++s6Step104Add1B))).toFinset⊆s6Step104HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step104HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step104F4_checked : compileHmrHybridF4Log s6Step104HeadFvAfter 907 845 s6Step104Add0A s6Step104Add0B s6Step104Add1A s6Step104Add1B [813] [879] s6Step104Add0Work s6Step104Add1Work=some s6Step104F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step104HeadFvAfter s6Step104F4FlagArena s6Step104Add0Arena s6Step104Add0During s6Step104Add1During 907 845
    s6Step104Add0A s6Step104Add0B s6Step104Add1A s6Step104Add1B [813] [879] s6Step104Add0Work s6Step104Add1Work
    (fun q hq => s6Step104F4_owned (List.mem_toFinset.mpr hq)) s6Step104F4_flag s6Step104F4_carry
    s6Step104F4_distinct s6Step104F4_apart s6Step104Add0_checked s6Step104Add1_checked

private theorem s6Step104Front_branch : s6Step104FrontSigmaArena.checkBorrow 1 [845]=some s6Step104HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step104FrontSigmaArena,s6Step104EntryGvAfter,s6Step104EntryFBefore,arenaWires]
  · change s6Step104HeadGBefore.live=(s6Step104EntryGvAfter.live∪{907})∪{845}
    apply hmrArena_union_pair_of_filter_check s6Step104EntryGvAfter s6Step104HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 907 845 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step104Front_entry : HmrFrontEntryValid s6Step104EntryFBefore s6Step104FrontBank 217 66 ⟨216,216,65,66⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step104FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step104EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step104EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step104FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step104Front_sigma : s6Step104EntryGvAfter.checkBorrow 1 [907]=some s6Step104FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step104EntryGvAfter,s6Step104EntryFBefore,arenaWires]
  · rfl

private def s6Step104HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step104HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step104HeadFBefore : Arena := s6Step104HeadGAfter

private def s6Step104HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472],795⟩

private def s6Step104HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 876],776⟩

private def s6Step104HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216],777⟩

private def s6Step104HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784],775⟩

private theorem s6Step104HeadBank_incomingDistinct : ([s6Step104HeadGRow,s6Step104HeadFRow,s6Step104HeadGvRow,s6Step104HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step104HeadF_Incoming : rowsOwned s6Step104HeadFBefore [s6Step104HeadFRow,s6Step104HeadGvRow,s6Step104HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step104HeadGRow,s6Step104HeadFRow,s6Step104HeadGvRow,s6Step104HeadFvRow] 1 s6Step104HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step104HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step104HeadBank_outgoingOwned : rowsOwned s6Step104HeadFvAfter [s6Step104HeadGOut,s6Step104HeadFOut,s6Step104HeadGvOut,s6Step104HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step104HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step104HeadF_Outgoing : rowsOwned s6Step104HeadFvAfter [s6Step104HeadFOut,s6Step104HeadGvOut,s6Step104HeadFvOut] :=
  hmrRows_owned_drop s6Step104HeadFvAfter [s6Step104HeadGOut,s6Step104HeadFOut,s6Step104HeadGvOut,s6Step104HeadFvOut] 1 s6Step104HeadBank_outgoingOwned

private theorem s6Step104HeadF_distinct : (s6Step104HeadFRow.sign::s6Step104HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step104HeadF_owned : (s6Step104HeadFRow.sign::s6Step104HeadFRow.payload).toFinset⊆s6Step104HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step104HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step104HeadF_reserved : s6Step104HeadFBefore.reserve s6Step104HeadFFresh.toFinset=some s6Step104HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step104HeadFFresh,arenaWires]
  · norm_num [s6Step104HeadFBefore,s6Step104HeadGAfter,s6Step104HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step104HeadFBefore s6Step104HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step104HeadFFresh rfl rfl
    · norm_num [s6Step104HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step104HeadF_checked : planRowResizeLog s6Step104HeadFBefore s6Step104HeadFRow 218 s6Step104HeadFFresh=
    some (s6Step104HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 823],795⟩,growRow 795 s6Step104HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step104HeadFBefore s6Step104HeadFAfter s6Step104HeadFRow 218 s6Step104HeadFFresh
    s6Step104HeadF_distinct s6Step104HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step104HeadF_reserved
  have rowEq : WindowRow.mk (s6Step104HeadFRow.payload++s6Step104HeadFFresh) s6Step104HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 823],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step104HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step104HeadFvBefore : Arena := s6Step104HeadGvAfter

private theorem s6Step104HeadFv_Incoming : rowsOwned s6Step104HeadFvBefore [s6Step104HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step104HeadGRow,s6Step104HeadFRow,s6Step104HeadGvRow,s6Step104HeadFvRow] 3 s6Step104HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step104HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step104HeadFv_Outgoing : rowsOwned s6Step104HeadFvAfter [s6Step104HeadFvOut] :=
  hmrRows_owned_drop s6Step104HeadFvAfter [s6Step104HeadGOut,s6Step104HeadFOut,s6Step104HeadGvOut,s6Step104HeadFvOut] 3 s6Step104HeadBank_outgoingOwned

private theorem s6Step104HeadFv_distinct : (s6Step104HeadFvRow.sign::s6Step104HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step104HeadFv_owned : (s6Step104HeadFvRow.sign::s6Step104HeadFvRow.payload).toFinset⊆s6Step104HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step104HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step104HeadFv_reserved : s6Step104HeadFvBefore.reserve s6Step104HeadFvFresh.toFinset=some s6Step104HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step104HeadFvFresh,arenaWires]
  · norm_num [s6Step104HeadFvBefore,s6Step104HeadGvAfter,s6Step104HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step104HeadFvBefore s6Step104HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step104HeadFvFresh rfl rfl
    · norm_num [s6Step104HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step104HeadFv_checked : planRowResizeLog s6Step104HeadFvBefore s6Step104HeadFvRow 67 s6Step104HeadFvFresh=
    some (s6Step104HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 876, 803],776⟩,growRow 776 s6Step104HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step104HeadFvBefore s6Step104HeadFvAfter s6Step104HeadFvRow 67 s6Step104HeadFvFresh
    s6Step104HeadFv_distinct s6Step104HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step104HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step104HeadFvRow.payload++s6Step104HeadFvFresh) s6Step104HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 876, 803],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step104HeadG_Incoming : rowsOwned s6Step104HeadGBefore [s6Step104HeadGRow,s6Step104HeadFRow,s6Step104HeadGvRow,s6Step104HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step104HeadGRow,s6Step104HeadFRow,s6Step104HeadGvRow,s6Step104HeadFvRow] 0 s6Step104HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step104HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step104HeadG_Outgoing : rowsOwned s6Step104HeadFvAfter [s6Step104HeadGOut,s6Step104HeadFOut,s6Step104HeadGvOut,s6Step104HeadFvOut] :=
  hmrRows_owned_drop s6Step104HeadFvAfter [s6Step104HeadGOut,s6Step104HeadFOut,s6Step104HeadGvOut,s6Step104HeadFvOut] 0 s6Step104HeadBank_outgoingOwned

private theorem s6Step104HeadG_distinct : (s6Step104HeadGRow.sign::s6Step104HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step104HeadG_owned : (s6Step104HeadGRow.sign::s6Step104HeadGRow.payload).toFinset⊆s6Step104HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step104HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step104HeadG_reserved : s6Step104HeadGBefore.reserve s6Step104HeadGFresh.toFinset=some s6Step104HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step104HeadGFresh,arenaWires]
  · norm_num [s6Step104HeadGBefore,s6Step104HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step104HeadGBefore s6Step104HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step104HeadGFresh rfl rfl
    · norm_num [s6Step104HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step104HeadG_checked : planRowResizeLog s6Step104HeadGBefore s6Step104HeadGRow 218 s6Step104HeadGFresh=
    some (s6Step104HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 864],777⟩,growRow 777 s6Step104HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step104HeadGBefore s6Step104HeadGAfter s6Step104HeadGRow 218 s6Step104HeadGFresh
    s6Step104HeadG_distinct s6Step104HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step104HeadG_reserved
  have rowEq : WindowRow.mk (s6Step104HeadGRow.payload++s6Step104HeadGFresh) s6Step104HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 864],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step104HeadGvBefore : Arena := s6Step104HeadFAfter

private theorem s6Step104HeadGv_Incoming : rowsOwned s6Step104HeadGvBefore [s6Step104HeadGvRow,s6Step104HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step104HeadGRow,s6Step104HeadFRow,s6Step104HeadGvRow,s6Step104HeadFvRow] 2 s6Step104HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step104HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step104HeadGv_Outgoing : rowsOwned s6Step104HeadFvAfter [s6Step104HeadGvOut,s6Step104HeadFvOut] :=
  hmrRows_owned_drop s6Step104HeadFvAfter [s6Step104HeadGOut,s6Step104HeadFOut,s6Step104HeadGvOut,s6Step104HeadFvOut] 2 s6Step104HeadBank_outgoingOwned

private theorem s6Step104HeadGv_distinct : (s6Step104HeadGvRow.sign::s6Step104HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step104HeadGv_owned : (s6Step104HeadGvRow.sign::s6Step104HeadGvRow.payload).toFinset⊆s6Step104HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step104HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step104HeadGv_reserved : s6Step104HeadGvBefore.reserve s6Step104HeadGvFresh.toFinset=some s6Step104HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step104HeadGvFresh,arenaWires]
  · norm_num [s6Step104HeadGvBefore,s6Step104HeadFAfter,s6Step104HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step104HeadGvBefore s6Step104HeadGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step104HeadGvFresh rfl rfl
    · norm_num [s6Step104HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step104HeadGv_checked : planRowResizeLog s6Step104HeadGvBefore s6Step104HeadGvRow 67 s6Step104HeadGvFresh=
    some (s6Step104HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 890],775⟩,growRow 775 s6Step104HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step104HeadGvBefore s6Step104HeadGvAfter s6Step104HeadGvRow 67 s6Step104HeadGvFresh
    s6Step104HeadGv_distinct s6Step104HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step104HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step104HeadGvRow.payload++s6Step104HeadGvFresh) s6Step104HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 890],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step104HeadBank_rows : planWindowRowsLog s6Step104HeadGBefore [(s6Step104HeadGRow,218),(s6Step104HeadFRow,218),(s6Step104HeadGvRow,67),(s6Step104HeadFvRow,67)] [s6Step104HeadGFresh,s6Step104HeadFFresh,s6Step104HeadGvFresh,s6Step104HeadFvFresh]=
    some (s6Step104HeadFvAfter,[s6Step104HeadGOut,s6Step104HeadFOut,s6Step104HeadGvOut,s6Step104HeadFvOut],(growRow 777 s6Step104HeadGFresh ++ (growRow 795 s6Step104HeadFFresh ++ (growRow 775 s6Step104HeadGvFresh ++ (growRow 776 s6Step104HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step104HeadFvAfter [] []=some (s6Step104HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step104HeadFvBefore s6Step104HeadFvAfter s6Step104HeadFvAfter
    s6Step104HeadFvRow s6Step104HeadFvOut 67 s6Step104HeadFvFresh [] [] []
    (growRow 776 s6Step104HeadFvFresh) ([]) s6Step104HeadFv_Incoming s6Step104HeadFv_checked h4 s6Step104HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step104HeadGvBefore s6Step104HeadGvAfter s6Step104HeadFvAfter
    s6Step104HeadGvRow s6Step104HeadGvOut 67 s6Step104HeadGvFresh [(s6Step104HeadFvRow,67)] [s6Step104HeadFvFresh] [s6Step104HeadFvOut]
    (growRow 775 s6Step104HeadGvFresh) ((growRow 776 s6Step104HeadFvFresh ++ [])) s6Step104HeadGv_Incoming s6Step104HeadGv_checked h3 s6Step104HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step104HeadFBefore s6Step104HeadFAfter s6Step104HeadFvAfter
    s6Step104HeadFRow s6Step104HeadFOut 218 s6Step104HeadFFresh [(s6Step104HeadGvRow,67),(s6Step104HeadFvRow,67)] [s6Step104HeadGvFresh,s6Step104HeadFvFresh] [s6Step104HeadGvOut,s6Step104HeadFvOut]
    (growRow 795 s6Step104HeadFFresh) ((growRow 775 s6Step104HeadGvFresh ++ (growRow 776 s6Step104HeadFvFresh ++ []))) s6Step104HeadF_Incoming s6Step104HeadF_checked h2 s6Step104HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step104HeadGBefore s6Step104HeadGAfter s6Step104HeadFvAfter
    s6Step104HeadGRow s6Step104HeadGOut 218 s6Step104HeadGFresh [(s6Step104HeadFRow,218),(s6Step104HeadGvRow,67),(s6Step104HeadFvRow,67)] [s6Step104HeadFFresh,s6Step104HeadGvFresh,s6Step104HeadFvFresh] [s6Step104HeadFOut,s6Step104HeadGvOut,s6Step104HeadFvOut]
    (growRow 777 s6Step104HeadGFresh) ((growRow 795 s6Step104HeadFFresh ++ (growRow 775 s6Step104HeadGvFresh ++ (growRow 776 s6Step104HeadFvFresh ++ [])))) s6Step104HeadG_Incoming s6Step104HeadG_checked h1 s6Step104HeadG_Outgoing
  exact h0

private theorem s6Step104HeadBank_checked : compileHmrBankResizeLog .headroom s6Step104HeadGBefore ⟨s6Step104HeadFRow,s6Step104HeadGRow,s6Step104HeadFvRow,s6Step104HeadGvRow⟩ ⟨218,218,67,67⟩ [s6Step104HeadGFresh,s6Step104HeadFFresh,s6Step104HeadGvFresh,s6Step104HeadFvFresh]=
    some (s6Step104HeadFvAfter,⟨s6Step104HeadFOut,s6Step104HeadGOut,s6Step104HeadFvOut,s6Step104HeadGvOut⟩,(growRow 777 s6Step104HeadGFresh ++ (growRow 795 s6Step104HeadFFresh ++ (growRow 775 s6Step104HeadGvFresh ++ (growRow 776 s6Step104HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step104HeadBank_rows]
  rfl

private theorem s6Step104Front_checked : compileHmrSourceFrontLog s6Step104EntryFBefore s6Step104FrontBank 217 66 ⟨216,216,65,66⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step104FrontLog=some s6Step104FrontPlan := by
  have pairEq : s6Step104FrontPair=⟨s6Step104HeadFRow,s6Step104HeadGRow,s6Step104HeadFvRow,s6Step104HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step104FrontHead=⟨s6Step104ExitFRow,s6Step104ExitGRow,s6Step104ExitFvRow,s6Step104ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step104Add0A=s6Step104FrontHead.f.wires := by decide +kernel
  have gEq : s6Step104Add0B=s6Step104FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step104Add1A=s6Step104FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step104Add1B=s6Step104FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step104EntryFBefore s6Step104FrontBank 217 66 ⟨216,216,65,66⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step104FrontLog s6Step104FrontPlan
  · exact s6Step104Front_entry
  · exact s6Step104EntryBank_checked
  · exact s6Step104Front_sigma
  · rfl
  · exact s6Step104Front_branch
  · rfl
  · simpa only [s6Step104FrontPlan,pairEq] using s6Step104HeadBank_checked
  · simpa only [s6Step104FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step104F4_checked
  · exact s6Step104Counter_checked
  · rfl
  · simpa only [s6Step104FrontPlan,headEq] using s6Step104ExitBank_checked

private theorem s6Step104Complete_explicit_checked : compileHmrEarlyStepLog s6Step104EntryFBefore s6Step104FrontBank 217 66 ⟨216,216,65,66⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step104CompleteLog=some s6Step104CompletePlan := by
  let Q := s6Step104EarlyControlPlan
  have hq := s6Step104EarlyControl_plan_checked
  have fv1 : s6Step104CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step104CompleteOut.fv.payload[2]?.getD s6Step104CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step104CompleteOut.fv.payload[3]?.getD s6Step104CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step104CompleteOut.fv.payload[4]?.getD s6Step104CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step104EntryFBefore s6Step104EarlyControlArena s6Step104FrontBank 217 66 ⟨216,216,65,66⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step104CompleteLog s6Step104FrontPlan Q
    s6Step104Front_checked s6Step104Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step104Complete_owned s6Step104Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step104EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 907 s6Step104CompleteOut.fv.second (s6Step104CompleteOut.fv.payload[2]?.getD s6Step104CompleteOut.fv.sign) (s6Step104CompleteOut.fv.payload[3]?.getD s6Step104CompleteOut.fv.sign) (s6Step104CompleteOut.fv.payload[4]?.getD s6Step104CompleteOut.fv.sign) 845 35 s6Step104EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep104Arena : Arena := s6Step104EntryFBefore
def s6PrivateStep104Bank : WindowBank := s6Step104FrontBank
def s6PrivateStep104Spec : HmrSourceWalkStepLog := ⟨217,66,⟨216,216,65,66⟩,35,.early s6Step104CompleteLog⟩
def s6PrivateStep104Plan : HmrSourceStepPlan := .early s6Step104CompletePlan
theorem s6PrivateStep104_source : s6PrivateStep104Spec=s6ObservedLogs96[8] := rfl
theorem s6PrivateStep104_checked : compileHmrSourceStepLog s6PrivateStep104Arena s6PrivateStep104Bank
    s6PrivateStep104Spec.fgWidth s6PrivateStep104Spec.vWidth s6PrivateStep104Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840]
    6 498 104 s6PrivateStep104Spec.need none s6PrivateStep104Spec.log=some s6PrivateStep104Plan := by
  change compileHmrSourceStepLog s6Step104EntryFBefore s6Step104FrontBank 217 66 ⟨216,216,65,66⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 6 498 104 35 none (.early s6Step104CompleteLog)=some (.early s6Step104CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 104<498)]
  rw [s6Step104Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
