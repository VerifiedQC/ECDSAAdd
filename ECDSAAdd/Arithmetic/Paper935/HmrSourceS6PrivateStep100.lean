import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep98
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

private def s6Step100CompleteMoves : List (Wire × Wire) := []

private def s6Step100EarlyControlLog : HmrEarlyControlLog := ⟨[856, 890, 784, 876, 857],[813],[879],[865, 796, 891, 903, 885, 791],[840]⟩

private def s6Step100FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [813], [], [874, 873, 856]],[[879], [857], [890], [876]],[[], [], [], []]⟩,[907],[803],[865],[796],[891, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[865, 796, 891, 903]⟩

private def s6Step100CompleteLog : HmrEarlyStepLog := ⟨s6Step100FrontLog,s6Step100CompleteMoves,s6Step100EarlyControlLog⟩

private def s6Step100ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474],795⟩

private def s6Step100ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922],776⟩

private def s6Step100ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],777⟩

private def s6Step100ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873],775⟩

private def s6Step100FrontOut : WindowBank := ⟨s6Step100ExitFOut,s6Step100ExitGOut,s6Step100ExitFvOut,s6Step100ExitGvOut⟩

private def s6Step100CompleteOut : WindowBank := s6Step100FrontOut.repacked s6Step100CompleteMoves

private def s6Step100EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step100EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step100EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step100EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step100EarlyControlPositiveArena,[813],s6Step100EarlyControlEqualityArena,[879],⟨⟨907,false⟩,[⟨⟨813,false⟩,879⟩]⟩⟩

private def s6Step100EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step100EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step100EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step100EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step100EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step100EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step100EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,856⟩,⟨⟨772,false⟩,890⟩,⟨⟨771,false⟩,784⟩,⟨⟨770,false⟩,876⟩,⟨⟨769,false⟩,857⟩]⟩

private def s6Step100EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step100EarlyControlZeroArena,s6Step100EarlyControlZeroPlan,s6Step100EarlyControlClassPlan,s6Step100EarlyControlFlagArena,s6Step100EarlyControlFittedArena,s6Step100EarlyControlHistoryArena,s6Step100EarlyControlSigmaArena,s6Step100EarlyControlOutputArena,s6Step100EarlyControlLog⟩

private def s6Step100CounterWork : List Wire := [865, 796, 891, 903]

private theorem s6Step100Counter_bounded : s6Step100CounterWork.toFinset⊆arenaWires := by norm_num [s6Step100CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step100HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step100CounterDuring : Arena := ⟨s6Step100HeadFvAfter.live∪s6Step100CounterWork.toFinset,Finset.union_subset s6Step100HeadFvAfter.bounded s6Step100Counter_bounded⟩

private def s6Step100EntryFFresh : List Wire := []

private def s6Step100EntryFvFresh : List Wire := []

private def s6Step100EntryGFresh : List Wire := [813]

private def s6Step100EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step100EntryGvFresh : List Wire := [874, 873, 856]

private def s6Step100ExitFExtra : List Wire := [857]

private def s6Step100ExitFvExtra : List Wire := [784, 876]

private def s6Step100ExitGExtra : List Wire := [813, 879]

private def s6Step100ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step100ExitGvExtra : List Wire := [856, 890]

private def s6Step100Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step100Add0Work : List Wire := [891, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step100Add0_bounded : s6Step100Add0Work.toFinset⊆arenaWires := by
  have h : s6Step100Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step100Add0During : Arena := ⟨s6Step100Add0Arena.live∪s6Step100Add0Work.toFinset,Finset.union_subset s6Step100Add0Arena.bounded s6Step100Add0_bounded⟩

private def s6Step100Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step100Add1Work : List Wire := [891, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step100Add1_bounded : s6Step100Add1Work.toFinset⊆arenaWires := by
  have h : s6Step100Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step100Add1During : Arena := ⟨s6Step100Add1Arena.live∪s6Step100Add1Work.toFinset,Finset.union_subset s6Step100Add1Arena.bounded s6Step100Add1_bounded⟩

private def s6Step100F4FlagArena : Arena := ⟨s6Step100HeadFvAfter.live∪{865},Finset.union_subset s6Step100HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step100F4Plan : HmrHybridF4Plan := ⟨s6Step100F4FlagArena,[865],s6Step100Add0Arena,[796],s6Step100Add0During,s6Step100Add0Work,s6Step100Add1During,s6Step100Add1Work⟩

private def s6Step100HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 857],795⟩

private def s6Step100HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 784, 876],776⟩

private def s6Step100HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 813, 879],777⟩

private def s6Step100HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 890],775⟩

private def s6Step100FrontHead : WindowBank := ⟨s6Step100HeadFOut,s6Step100HeadGOut,s6Step100HeadFvOut,s6Step100HeadGvOut⟩

private def s6Step100EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474],795⟩

private def s6Step100EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 784],776⟩

private def s6Step100EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 813],777⟩

private def s6Step100EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856],775⟩

private def s6Step100FrontPair : WindowBank := ⟨s6Step100EntryFOut,s6Step100EntryGOut,s6Step100EntryFvOut,s6Step100EntryGvOut⟩

private def s6Step100FrontSigmaArena : Arena := ⟨s6Step100EntryGvAfter.live∪{907},Finset.union_subset s6Step100EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step100HeadFFresh : List Wire := [857]

private def s6Step100HeadFvFresh : List Wire := [876]

private def s6Step100HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step100HeadGFresh : List Wire := [879]

private def s6Step100HeadGvFresh : List Wire := [890]

private def s6Step100FrontPlan : HmrSourceFront := ⟨s6Step100EntryGvAfter,s6Step100FrontPair,(growRow 795 s6Step100EntryFFresh ++ (growRow 777 s6Step100EntryGFresh ++ (growRow 776 s6Step100EntryFvFresh ++ (growRow 775 s6Step100EntryGvFresh ++ [])))),s6Step100FrontSigmaArena,[907],s6Step100HeadGBefore,[803],
  s6Step100HeadFvAfter,s6Step100FrontHead,(growRow 777 s6Step100HeadGFresh ++ (growRow 795 s6Step100HeadFFresh ++ (growRow 775 s6Step100HeadGvFresh ++ (growRow 776 s6Step100HeadFvFresh ++ [])))),s6Step100F4Plan,s6Step100CounterDuring,s6Step100CounterWork,s6Step100ExitGvAfter,s6Step100FrontOut,(shrinkRow 777 s6Step100ExitGExtra ++ (shrinkRow 795 s6Step100ExitFExtra ++ (shrinkRow 776 s6Step100ExitFvExtra ++ (shrinkRow 775 s6Step100ExitGvExtra ++ []))))⟩

private def s6Step100CompletePlan : HmrEarlyStepPlan := ⟨s6Step100FrontPlan,s6Step100EarlyControlArena,s6Step100EarlyControlPlan,s6Step100CompleteMoves⟩

private theorem s6Step100Complete_apart : List.Disjoint (s6Step100CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [907, 803, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] := by
  have nd : ((s6Step100CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[907, 803, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step100Complete_owned : (s6Step100CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step100EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step100EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step100Complete_repack : s6Step100ExitGvAfter.checkRepack s6Step100CompleteMoves=some s6Step100EarlyControlArena := by rfl

private theorem s6Step100EarlyControl_branchOwned : ([803] : List Wire).toFinset⊆s6Step100EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step100EarlyControlSigmaArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step100EarlyControl_branch : compileHmrBranchRetirement s6Step100EarlyControlSigmaArena 803=some s6Step100EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step100EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step100EarlyControlSigmaArena s6Step100EarlyControlOutputArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [803] rfl rfl
    decide +kernel

private theorem s6Step100EarlyControl_classEqualityBorrow : s6Step100EarlyControlPositiveArena.checkBorrow (([907, 813] : List Wire).length-1) s6Step100EarlyControlLog.classWork=some s6Step100EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step100EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step100EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step100EarlyControlPositiveArena s6Step100EarlyControlEqualityArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step100EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step100EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step100EarlyControl_classEqualityOwned : ([907, 813] : List Wire).toFinset⊆s6Step100EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step100EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step100EarlyControl_classEquality : compileHmrEqualityLog s6Step100EarlyControlPositiveArena [907, 813] 0 s6Step100EarlyControlLog.classWork=some (s6Step100EarlyControlEqualityArena,s6Step100EarlyControlLog.classWork,s6Step100EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step100EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step100EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step100EarlyControl_classOwned : ([769, 857, 907] : List Wire).toFinset⊆s6Step100EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step100EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step100EarlyControl_positiveBorrow : s6Step100EarlyControlZeroArena.checkBorrow (1) s6Step100EarlyControlLog.positiveWork=some s6Step100EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step100EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step100EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step100EarlyControlZeroArena s6Step100EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step100EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step100EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step100EarlyControl_class : compileHmrSourceClassLog s6Step100EarlyControlZeroArena false 769 s6Step100EarlyControlZeroPlan.top 0 907 s6Step100EarlyControlLog.positiveWork s6Step100EarlyControlLog.classWork=some s6Step100EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step100EarlyControlClassPlan s6Step100EarlyControlZeroArena false 769 s6Step100EarlyControlZeroPlan.top 0 907
  constructor
  · decide +kernel
  · exact s6Step100EarlyControl_classOwned
  · exact s6Step100EarlyControl_positiveBorrow
  · exact s6Step100EarlyControl_classEquality

private theorem s6Step100EarlyControl_entryRecordOwned : ([803, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).toFinset⊆s6Step100EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step100EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step100EarlyControl_entrySigmaOwned : ([907, 254] : List Wire).toFinset⊆s6Step100EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step100EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step100EarlyControl_fitBorrow : s6Step100EarlyControlFlagArena.checkBorrow ((35-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).length)) s6Step100EarlyControlLog.recordFresh=some s6Step100EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step100EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step100EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step100EarlyControlFittedArena,s6Step100EarlyControlFlagArena,s6Step100EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step100EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).toFinset⊆s6Step100EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step100EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step100EarlyControl_fit : compileHmrRecordGrowLog s6Step100EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 35 s6Step100EarlyControlLog.recordFresh=some s6Step100EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step100EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step100EarlyControl_fitBorrow

private theorem s6Step100EarlyControl_flagsBorrow : s6Step100EarlyControlEqualityArena.checkBorrow (6) s6Step100EarlyControlLog.flagWork=some s6Step100EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step100EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step100EarlyControlEqualityArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step100EarlyControlEqualityArena s6Step100EarlyControlFlagArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step100EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step100EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step100EarlyControl_flagsOwned : ([879, 253, 252, 251] : List Wire).toFinset⊆s6Step100EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step100EarlyControlEqualityArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step100EarlyControl_flags : compileHmrFlagsLog s6Step100EarlyControlClassPlan.equalityArena s6Step100EarlyControlClassPlan.equality.top 253 252 251 s6Step100EarlyControlLog.flagWork=some s6Step100EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step100EarlyControl_flagsOwned⟩
  · exact s6Step100EarlyControl_flagsBorrow

private theorem s6Step100EarlyControl_historyBorrow : s6Step100EarlyControlArena.checkBorrow ((35-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).length)) s6Step100EarlyControlLog.recordFresh=some s6Step100EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step100EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step100EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step100EarlyControlArena s6Step100EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step100EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step100EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step100EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).toFinset⊆s6Step100EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step100EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step100EarlyControl_history : compileHmrRecordGrowLog s6Step100EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 35 s6Step100EarlyControlLog.recordFresh=some s6Step100EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step100EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step100EarlyControl_historyBorrow

private theorem s6Step100EarlyControl_sigmaOwned : ([254, 907] : List Wire).toFinset⊆s6Step100EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step100EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step100EarlyControl_sigmaReleaseOwned : ([907] : List Wire).toFinset⊆s6Step100EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step100EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step100EarlyControl_sigmaRelease : s6Step100EarlyControlHistoryArena.release {907} (fun _ => false)=some s6Step100EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step100EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step100EarlyControlHistoryArena s6Step100EarlyControlSigmaArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [907] rfl rfl
    decide +kernel

private theorem s6Step100EarlyControl_sigma : compileHmrSigmaDropLog s6Step100EarlyControlHistoryArena false 0 0 254 907 []=some s6Step100EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step100EarlyControl_sigmaOwned⟩
  · exact s6Step100EarlyControl_sigmaRelease

private theorem s6Step100EarlyControl_zeroBorrow : s6Step100EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step100EarlyControlLog.zeroWork=some s6Step100EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step100EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step100EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step100EarlyControlArena s6Step100EarlyControlZeroArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step100EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step100EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step100EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step100EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step100EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step100EarlyControl_zero : compileHmrEqualityLog s6Step100EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step100EarlyControlLog.zeroWork=some (s6Step100EarlyControlZeroArena,s6Step100EarlyControlLog.zeroWork,s6Step100EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step100EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step100EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step100EarlyControl_logged : s6Step100EarlyControlPlan.Logged s6Step100EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 907 254 253 252 251 803 35 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step100EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step100EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step100EarlyControl_zero
  · exact s6Step100EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step100EarlyControl_flags
  · exact s6Step100EarlyControl_fit
  · exact s6Step100EarlyControl_history
  · exact s6Step100EarlyControl_sigma
  · exact s6Step100EarlyControl_branch

private theorem s6Step100EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step100EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 907 254 253 252 251 803 35 s6Step100EarlyControlLog=some s6Step100EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step100EarlyControlPlan s6Step100EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 907 254 253 252 251 803 35 s6Step100EarlyControl_logged

private def s6Step100EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step100EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474],795⟩

private def s6Step100EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 784],776⟩

private def s6Step100EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],777⟩

private def s6Step100EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779],775⟩

private def s6Step100FrontBank : WindowBank := ⟨s6Step100EntryFRow,s6Step100EntryGRow,s6Step100EntryFvRow,s6Step100EntryGvRow⟩

private def s6Step100Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 857, 795]

private def s6Step100Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 813, 879, 777]

private def s6Step100Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 784, 876, 776]

private def s6Step100Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 890, 775]

private theorem s6Step100Counter_apart : Disjoint s6Step100HeadFvAfter.live s6Step100CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step100HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step100Counter_borrowed : s6Step100HeadFvAfter.checkBorrow 4 s6Step100CounterWork=some s6Step100CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step100HeadFvAfter s6Step100CounterDuring s6Step100CounterWork.toFinset s6Step100Counter_bounded s6Step100Counter_apart rfl

private theorem s6Step100Counter_owned : (907::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step100HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step100HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step100Counter_checked : compileHmrCounterStepLog s6Step100HeadFvAfter true 907 [774, 773, 772, 771, 770, 769] s6Step100CounterWork=some s6Step100CounterDuring := by
  have owned : ∀q∈907::[774, 773, 772, 771, 770, 769],q∈s6Step100HeadFvAfter.live := fun q hq => s6Step100Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step100Counter_borrowed

private def s6Step100EntryFAfter : Arena := s6Step100EntryFBefore

private theorem s6Step100EntryBank_incomingDistinct : ([s6Step100EntryFRow,s6Step100EntryGRow,s6Step100EntryFvRow,s6Step100EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step100EntryF_Incoming : rowsOwned s6Step100EntryFBefore [s6Step100EntryFRow,s6Step100EntryGRow,s6Step100EntryFvRow,s6Step100EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step100EntryFRow,s6Step100EntryGRow,s6Step100EntryFvRow,s6Step100EntryGvRow] 0 s6Step100EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step100EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step100EntryBank_outgoingOwned : rowsOwned s6Step100EntryGvAfter [s6Step100EntryFOut,s6Step100EntryGOut,s6Step100EntryFvOut,s6Step100EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step100EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step100EntryF_Outgoing : rowsOwned s6Step100EntryGvAfter [s6Step100EntryFOut,s6Step100EntryGOut,s6Step100EntryFvOut,s6Step100EntryGvOut] :=
  hmrRows_owned_drop s6Step100EntryGvAfter [s6Step100EntryFOut,s6Step100EntryGOut,s6Step100EntryFvOut,s6Step100EntryGvOut] 0 s6Step100EntryBank_outgoingOwned

private theorem s6Step100EntryF_distinct : (s6Step100EntryFRow.sign::s6Step100EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step100EntryF_owned : (s6Step100EntryFRow.sign::s6Step100EntryFRow.payload).toFinset⊆s6Step100EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step100EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step100EntryF_reserved : s6Step100EntryFBefore.reserve s6Step100EntryFFresh.toFinset=some s6Step100EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step100EntryFFresh,arenaWires]
  · norm_num [s6Step100EntryFBefore,s6Step100EntryFFresh,arenaWires]
  · simp only [s6Step100EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step100EntryF_checked : planRowResizeLog s6Step100EntryFBefore s6Step100EntryFRow 219 s6Step100EntryFFresh=
    some (s6Step100EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474],795⟩,growRow 795 s6Step100EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step100EntryFBefore s6Step100EntryFAfter s6Step100EntryFRow 219 s6Step100EntryFFresh
    s6Step100EntryF_distinct s6Step100EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step100EntryF_reserved
  have rowEq : WindowRow.mk (s6Step100EntryFRow.payload++s6Step100EntryFFresh) s6Step100EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step100EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step100EntryFvAfter : Arena := s6Step100EntryGAfter

private def s6Step100EntryFvBefore : Arena := s6Step100EntryGAfter

private theorem s6Step100EntryFv_Incoming : rowsOwned s6Step100EntryFvBefore [s6Step100EntryFvRow,s6Step100EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step100EntryFRow,s6Step100EntryGRow,s6Step100EntryFvRow,s6Step100EntryGvRow] 2 s6Step100EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step100EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step100EntryFv_Outgoing : rowsOwned s6Step100EntryGvAfter [s6Step100EntryFvOut,s6Step100EntryGvOut] :=
  hmrRows_owned_drop s6Step100EntryGvAfter [s6Step100EntryFOut,s6Step100EntryGOut,s6Step100EntryFvOut,s6Step100EntryGvOut] 2 s6Step100EntryBank_outgoingOwned

private theorem s6Step100EntryFv_distinct : (s6Step100EntryFvRow.sign::s6Step100EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step100EntryFv_owned : (s6Step100EntryFvRow.sign::s6Step100EntryFvRow.payload).toFinset⊆s6Step100EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step100EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step100EntryFv_reserved : s6Step100EntryFvBefore.reserve s6Step100EntryFvFresh.toFinset=some s6Step100EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step100EntryFvFresh,arenaWires]
  · norm_num [s6Step100EntryFvBefore,s6Step100EntryGAfter,s6Step100EntryFvFresh,arenaWires]
  · simp only [s6Step100EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step100EntryFv_checked : planRowResizeLog s6Step100EntryFvBefore s6Step100EntryFvRow 65 s6Step100EntryFvFresh=
    some (s6Step100EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 784],776⟩,growRow 776 s6Step100EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step100EntryFvBefore s6Step100EntryFvAfter s6Step100EntryFvRow 65 s6Step100EntryFvFresh
    s6Step100EntryFv_distinct s6Step100EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step100EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step100EntryFvRow.payload++s6Step100EntryFvFresh) s6Step100EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 784],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step100EntryGBefore : Arena := s6Step100EntryFBefore

private theorem s6Step100EntryG_Incoming : rowsOwned s6Step100EntryGBefore [s6Step100EntryGRow,s6Step100EntryFvRow,s6Step100EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step100EntryFRow,s6Step100EntryGRow,s6Step100EntryFvRow,s6Step100EntryGvRow] 1 s6Step100EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step100EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step100EntryG_Outgoing : rowsOwned s6Step100EntryGvAfter [s6Step100EntryGOut,s6Step100EntryFvOut,s6Step100EntryGvOut] :=
  hmrRows_owned_drop s6Step100EntryGvAfter [s6Step100EntryFOut,s6Step100EntryGOut,s6Step100EntryFvOut,s6Step100EntryGvOut] 1 s6Step100EntryBank_outgoingOwned

private theorem s6Step100EntryG_distinct : (s6Step100EntryGRow.sign::s6Step100EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step100EntryG_owned : (s6Step100EntryGRow.sign::s6Step100EntryGRow.payload).toFinset⊆s6Step100EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step100EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step100EntryG_reserved : s6Step100EntryGBefore.reserve s6Step100EntryGFresh.toFinset=some s6Step100EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step100EntryGFresh,arenaWires]
  · norm_num [s6Step100EntryGBefore,s6Step100EntryFBefore,s6Step100EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step100EntryGBefore s6Step100EntryGAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step100EntryGFresh rfl rfl
    · norm_num [s6Step100EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step100EntryG_checked : planRowResizeLog s6Step100EntryGBefore s6Step100EntryGRow 219 s6Step100EntryGFresh=
    some (s6Step100EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 813],777⟩,growRow 777 s6Step100EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step100EntryGBefore s6Step100EntryGAfter s6Step100EntryGRow 219 s6Step100EntryGFresh
    s6Step100EntryG_distinct s6Step100EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step100EntryG_reserved
  have rowEq : WindowRow.mk (s6Step100EntryGRow.payload++s6Step100EntryGFresh) s6Step100EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 813],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step100EntryGvBefore : Arena := s6Step100EntryGAfter

private theorem s6Step100EntryGv_Incoming : rowsOwned s6Step100EntryGvBefore [s6Step100EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step100EntryFRow,s6Step100EntryGRow,s6Step100EntryFvRow,s6Step100EntryGvRow] 3 s6Step100EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step100EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step100EntryGv_Outgoing : rowsOwned s6Step100EntryGvAfter [s6Step100EntryGvOut] :=
  hmrRows_owned_drop s6Step100EntryGvAfter [s6Step100EntryFOut,s6Step100EntryGOut,s6Step100EntryFvOut,s6Step100EntryGvOut] 3 s6Step100EntryBank_outgoingOwned

private theorem s6Step100EntryGv_distinct : (s6Step100EntryGvRow.sign::s6Step100EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step100EntryGv_owned : (s6Step100EntryGvRow.sign::s6Step100EntryGvRow.payload).toFinset⊆s6Step100EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step100EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step100EntryGv_reserved : s6Step100EntryGvBefore.reserve s6Step100EntryGvFresh.toFinset=some s6Step100EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step100EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step100EntryGvBefore,s6Step100EntryGAfter,s6Step100EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step100EntryGvBefore s6Step100EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step100EntryGvFresh rfl rfl
    · norm_num [s6Step100EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step100EntryGv_checked : planRowResizeLog s6Step100EntryGvBefore s6Step100EntryGvRow 65 s6Step100EntryGvFresh=
    some (s6Step100EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856],775⟩,growRow 775 s6Step100EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step100EntryGvBefore s6Step100EntryGvAfter s6Step100EntryGvRow 65 s6Step100EntryGvFresh
    s6Step100EntryGv_distinct s6Step100EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step100EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step100EntryGvRow.payload++s6Step100EntryGvFresh) s6Step100EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step100EntryBank_rows : planWindowRowsLog s6Step100EntryFBefore [(s6Step100EntryFRow,219),(s6Step100EntryGRow,219),(s6Step100EntryFvRow,65),(s6Step100EntryGvRow,65)] [s6Step100EntryFFresh,s6Step100EntryGFresh,s6Step100EntryFvFresh,s6Step100EntryGvFresh]=
    some (s6Step100EntryGvAfter,[s6Step100EntryFOut,s6Step100EntryGOut,s6Step100EntryFvOut,s6Step100EntryGvOut],(growRow 795 s6Step100EntryFFresh ++ (growRow 777 s6Step100EntryGFresh ++ (growRow 776 s6Step100EntryFvFresh ++ (growRow 775 s6Step100EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step100EntryGvAfter [] []=some (s6Step100EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step100EntryGvBefore s6Step100EntryGvAfter s6Step100EntryGvAfter
    s6Step100EntryGvRow s6Step100EntryGvOut 65 s6Step100EntryGvFresh [] [] []
    (growRow 775 s6Step100EntryGvFresh) ([]) s6Step100EntryGv_Incoming s6Step100EntryGv_checked h4 s6Step100EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step100EntryFvBefore s6Step100EntryFvAfter s6Step100EntryGvAfter
    s6Step100EntryFvRow s6Step100EntryFvOut 65 s6Step100EntryFvFresh [(s6Step100EntryGvRow,65)] [s6Step100EntryGvFresh] [s6Step100EntryGvOut]
    (growRow 776 s6Step100EntryFvFresh) ((growRow 775 s6Step100EntryGvFresh ++ [])) s6Step100EntryFv_Incoming s6Step100EntryFv_checked h3 s6Step100EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step100EntryGBefore s6Step100EntryGAfter s6Step100EntryGvAfter
    s6Step100EntryGRow s6Step100EntryGOut 219 s6Step100EntryGFresh [(s6Step100EntryFvRow,65),(s6Step100EntryGvRow,65)] [s6Step100EntryFvFresh,s6Step100EntryGvFresh] [s6Step100EntryFvOut,s6Step100EntryGvOut]
    (growRow 777 s6Step100EntryGFresh) ((growRow 776 s6Step100EntryFvFresh ++ (growRow 775 s6Step100EntryGvFresh ++ []))) s6Step100EntryG_Incoming s6Step100EntryG_checked h2 s6Step100EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step100EntryFBefore s6Step100EntryFAfter s6Step100EntryGvAfter
    s6Step100EntryFRow s6Step100EntryFOut 219 s6Step100EntryFFresh [(s6Step100EntryGRow,219),(s6Step100EntryFvRow,65),(s6Step100EntryGvRow,65)] [s6Step100EntryGFresh,s6Step100EntryFvFresh,s6Step100EntryGvFresh] [s6Step100EntryGOut,s6Step100EntryFvOut,s6Step100EntryGvOut]
    (growRow 795 s6Step100EntryFFresh) ((growRow 777 s6Step100EntryGFresh ++ (growRow 776 s6Step100EntryFvFresh ++ (growRow 775 s6Step100EntryGvFresh ++ [])))) s6Step100EntryF_Incoming s6Step100EntryF_checked h1 s6Step100EntryF_Outgoing
  exact h0

private theorem s6Step100EntryBank_checked : compileHmrBankResizeLog .entry s6Step100EntryFBefore ⟨s6Step100EntryFRow,s6Step100EntryGRow,s6Step100EntryFvRow,s6Step100EntryGvRow⟩ ⟨219,219,65,65⟩ [s6Step100EntryFFresh,s6Step100EntryGFresh,s6Step100EntryFvFresh,s6Step100EntryGvFresh]=
    some (s6Step100EntryGvAfter,⟨s6Step100EntryFOut,s6Step100EntryGOut,s6Step100EntryFvOut,s6Step100EntryGvOut⟩,(growRow 795 s6Step100EntryFFresh ++ (growRow 777 s6Step100EntryGFresh ++ (growRow 776 s6Step100EntryFvFresh ++ (growRow 775 s6Step100EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step100EntryBank_rows]
  rfl

private def s6Step100ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step100ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step100ExitFBefore : Arena := s6Step100ExitGAfter

private def s6Step100ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 857],795⟩

private def s6Step100ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 784, 876],776⟩

private def s6Step100ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 813, 879],777⟩

private def s6Step100ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 890],775⟩

private theorem s6Step100ExitBank_incomingDistinct : ([s6Step100ExitGRow,s6Step100ExitFRow,s6Step100ExitFvRow,s6Step100ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step100ExitF_Incoming : rowsOwned s6Step100ExitFBefore [s6Step100ExitFRow,s6Step100ExitFvRow,s6Step100ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step100ExitGRow,s6Step100ExitFRow,s6Step100ExitFvRow,s6Step100ExitGvRow] 1 s6Step100ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step100ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step100ExitBank_outgoingOwned : rowsOwned s6Step100ExitGvAfter [s6Step100ExitGOut,s6Step100ExitFOut,s6Step100ExitFvOut,s6Step100ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step100ExitGvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step100ExitF_Outgoing : rowsOwned s6Step100ExitGvAfter [s6Step100ExitFOut,s6Step100ExitFvOut,s6Step100ExitGvOut] :=
  hmrRows_owned_drop s6Step100ExitGvAfter [s6Step100ExitGOut,s6Step100ExitFOut,s6Step100ExitFvOut,s6Step100ExitGvOut] 1 s6Step100ExitBank_outgoingOwned

private theorem s6Step100ExitF_distinct : (s6Step100ExitFRow.sign::s6Step100ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step100ExitF_owned : (s6Step100ExitFRow.sign::s6Step100ExitFRow.payload).toFinset⊆s6Step100ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step100ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step100ExitF_retired : s6Step100ExitFBefore.retireSet s6Step100ExitFExtra.toFinset=s6Step100ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step100ExitFBefore s6Step100ExitFAfter s6Step100ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step100ExitFBefore s6Step100ExitFAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step100ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step100ExitF_checked : planRowResizeLog s6Step100ExitFBefore s6Step100ExitFRow 219 []=
    some (s6Step100ExitFAfter,s6Step100ExitFOut,shrinkRow 795 s6Step100ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step100ExitFBefore s6Step100ExitFRow 219 s6Step100ExitF_distinct s6Step100ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step100ExitFRow.payload.take 219) s6Step100ExitFRow.sign=s6Step100ExitFOut := by decide +kernel
  have hi : s6Step100ExitFRow.payload.drop 219=s6Step100ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step100ExitF_retired] at result
  exact result

private def s6Step100ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step100ExitFvBefore : Arena := s6Step100ExitFAfter

private theorem s6Step100ExitFv_Incoming : rowsOwned s6Step100ExitFvBefore [s6Step100ExitFvRow,s6Step100ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step100ExitGRow,s6Step100ExitFRow,s6Step100ExitFvRow,s6Step100ExitGvRow] 2 s6Step100ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step100ExitFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step100ExitFv_Outgoing : rowsOwned s6Step100ExitGvAfter [s6Step100ExitFvOut,s6Step100ExitGvOut] :=
  hmrRows_owned_drop s6Step100ExitGvAfter [s6Step100ExitGOut,s6Step100ExitFOut,s6Step100ExitFvOut,s6Step100ExitGvOut] 2 s6Step100ExitBank_outgoingOwned

private theorem s6Step100ExitFv_distinct : (s6Step100ExitFvRow.sign::s6Step100ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step100ExitFv_owned : (s6Step100ExitFvRow.sign::s6Step100ExitFvRow.payload).toFinset⊆s6Step100ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step100ExitFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step100ExitFv_retired : s6Step100ExitFvBefore.retireSet s6Step100ExitFvExtra.toFinset=s6Step100ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step100ExitFvBefore s6Step100ExitFvAfter s6Step100ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step100ExitFvBefore s6Step100ExitFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step100ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step100ExitFv_checked : planRowResizeLog s6Step100ExitFvBefore s6Step100ExitFvRow 64 []=
    some (s6Step100ExitFvAfter,s6Step100ExitFvOut,shrinkRow 776 s6Step100ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step100ExitFvBefore s6Step100ExitFvRow 64 s6Step100ExitFv_distinct s6Step100ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step100ExitFvRow.payload.take 64) s6Step100ExitFvRow.sign=s6Step100ExitFvOut := by decide +kernel
  have hi : s6Step100ExitFvRow.payload.drop 64=s6Step100ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step100ExitFv_retired] at result
  exact result

private def s6Step100ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step100ExitG_Incoming : rowsOwned s6Step100ExitGBefore [s6Step100ExitGRow,s6Step100ExitFRow,s6Step100ExitFvRow,s6Step100ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step100ExitGRow,s6Step100ExitFRow,s6Step100ExitFvRow,s6Step100ExitGvRow] 0 s6Step100ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step100ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step100ExitG_Outgoing : rowsOwned s6Step100ExitGvAfter [s6Step100ExitGOut,s6Step100ExitFOut,s6Step100ExitFvOut,s6Step100ExitGvOut] :=
  hmrRows_owned_drop s6Step100ExitGvAfter [s6Step100ExitGOut,s6Step100ExitFOut,s6Step100ExitFvOut,s6Step100ExitGvOut] 0 s6Step100ExitBank_outgoingOwned

private theorem s6Step100ExitG_distinct : (s6Step100ExitGRow.sign::s6Step100ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step100ExitG_owned : (s6Step100ExitGRow.sign::s6Step100ExitGRow.payload).toFinset⊆s6Step100ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step100ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step100ExitG_retired : s6Step100ExitGBefore.retireSet s6Step100ExitGExtra.toFinset=s6Step100ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step100ExitGBefore s6Step100ExitGAfter s6Step100ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step100ExitGBefore s6Step100ExitGAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step100ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step100ExitG_checked : planRowResizeLog s6Step100ExitGBefore s6Step100ExitGRow 218 []=
    some (s6Step100ExitGAfter,s6Step100ExitGOut,shrinkRow 777 s6Step100ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step100ExitGBefore s6Step100ExitGRow 218 s6Step100ExitG_distinct s6Step100ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step100ExitGRow.payload.take 218) s6Step100ExitGRow.sign=s6Step100ExitGOut := by decide +kernel
  have hi : s6Step100ExitGRow.payload.drop 218=s6Step100ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step100ExitG_retired] at result
  exact result

private def s6Step100ExitGvBefore : Arena := s6Step100ExitFvAfter

private theorem s6Step100ExitGv_Incoming : rowsOwned s6Step100ExitGvBefore [s6Step100ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step100ExitGRow,s6Step100ExitFRow,s6Step100ExitFvRow,s6Step100ExitGvRow] 3 s6Step100ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step100ExitGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step100ExitGv_Outgoing : rowsOwned s6Step100ExitGvAfter [s6Step100ExitGvOut] :=
  hmrRows_owned_drop s6Step100ExitGvAfter [s6Step100ExitGOut,s6Step100ExitFOut,s6Step100ExitFvOut,s6Step100ExitGvOut] 3 s6Step100ExitBank_outgoingOwned

private theorem s6Step100ExitGv_distinct : (s6Step100ExitGvRow.sign::s6Step100ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step100ExitGv_owned : (s6Step100ExitGvRow.sign::s6Step100ExitGvRow.payload).toFinset⊆s6Step100ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step100ExitGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step100ExitGv_retired : s6Step100ExitGvBefore.retireSet s6Step100ExitGvExtra.toFinset=s6Step100ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step100ExitGvBefore s6Step100ExitGvAfter s6Step100ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step100ExitGvBefore s6Step100ExitGvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step100ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step100ExitGv_checked : planRowResizeLog s6Step100ExitGvBefore s6Step100ExitGvRow 64 []=
    some (s6Step100ExitGvAfter,s6Step100ExitGvOut,shrinkRow 775 s6Step100ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step100ExitGvBefore s6Step100ExitGvRow 64 s6Step100ExitGv_distinct s6Step100ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step100ExitGvRow.payload.take 64) s6Step100ExitGvRow.sign=s6Step100ExitGvOut := by decide +kernel
  have hi : s6Step100ExitGvRow.payload.drop 64=s6Step100ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step100ExitGv_retired] at result
  exact result

private theorem s6Step100ExitBank_rows : planWindowRowsLog s6Step100ExitGBefore [(s6Step100ExitGRow,218),(s6Step100ExitFRow,219),(s6Step100ExitFvRow,64),(s6Step100ExitGvRow,64)] [[],[],[],[]]=
    some (s6Step100ExitGvAfter,[s6Step100ExitGOut,s6Step100ExitFOut,s6Step100ExitFvOut,s6Step100ExitGvOut],(shrinkRow 777 s6Step100ExitGExtra ++ (shrinkRow 795 s6Step100ExitFExtra ++ (shrinkRow 776 s6Step100ExitFvExtra ++ (shrinkRow 775 s6Step100ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step100ExitGvAfter [] []=some (s6Step100ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step100ExitGvBefore s6Step100ExitGvAfter s6Step100ExitGvAfter
    s6Step100ExitGvRow s6Step100ExitGvOut 64 [] [] [] []
    (shrinkRow 775 s6Step100ExitGvExtra) ([]) s6Step100ExitGv_Incoming s6Step100ExitGv_checked h4 s6Step100ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step100ExitFvBefore s6Step100ExitFvAfter s6Step100ExitGvAfter
    s6Step100ExitFvRow s6Step100ExitFvOut 64 [] [(s6Step100ExitGvRow,64)] [[]] [s6Step100ExitGvOut]
    (shrinkRow 776 s6Step100ExitFvExtra) ((shrinkRow 775 s6Step100ExitGvExtra ++ [])) s6Step100ExitFv_Incoming s6Step100ExitFv_checked h3 s6Step100ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step100ExitFBefore s6Step100ExitFAfter s6Step100ExitGvAfter
    s6Step100ExitFRow s6Step100ExitFOut 219 [] [(s6Step100ExitFvRow,64),(s6Step100ExitGvRow,64)] [[],[]] [s6Step100ExitFvOut,s6Step100ExitGvOut]
    (shrinkRow 795 s6Step100ExitFExtra) ((shrinkRow 776 s6Step100ExitFvExtra ++ (shrinkRow 775 s6Step100ExitGvExtra ++ []))) s6Step100ExitF_Incoming s6Step100ExitF_checked h2 s6Step100ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step100ExitGBefore s6Step100ExitGAfter s6Step100ExitGvAfter
    s6Step100ExitGRow s6Step100ExitGOut 218 [] [(s6Step100ExitFRow,219),(s6Step100ExitFvRow,64),(s6Step100ExitGvRow,64)] [[],[],[]] [s6Step100ExitFOut,s6Step100ExitFvOut,s6Step100ExitGvOut]
    (shrinkRow 777 s6Step100ExitGExtra) ((shrinkRow 795 s6Step100ExitFExtra ++ (shrinkRow 776 s6Step100ExitFvExtra ++ (shrinkRow 775 s6Step100ExitGvExtra ++ [])))) s6Step100ExitG_Incoming s6Step100ExitG_checked h1 s6Step100ExitG_Outgoing
  exact h0

private theorem s6Step100ExitBank_checked : compileHmrBankResizeLog .exit s6Step100ExitGBefore ⟨s6Step100ExitFRow,s6Step100ExitGRow,s6Step100ExitFvRow,s6Step100ExitGvRow⟩ ⟨219,218,64,64⟩ [[],[],[],[]]=
    some (s6Step100ExitGvAfter,⟨s6Step100ExitFOut,s6Step100ExitGOut,s6Step100ExitFvOut,s6Step100ExitGvOut⟩,(shrinkRow 777 s6Step100ExitGExtra ++ (shrinkRow 795 s6Step100ExitFExtra ++ (shrinkRow 776 s6Step100ExitFvExtra ++ (shrinkRow 775 s6Step100ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step100ExitBank_rows]
  rfl

private theorem s6Step100Add0_apart : Disjoint s6Step100Add0Arena.live s6Step100Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step100Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step100Add0_card : s6Step100Add0Arena.live.card=876 := by
  decide +kernel

private theorem s6Step100Add0_borrowed : s6Step100Add0Arena.checkBorrow (hmrHybridCount s6Step100Add0Arena s6Step100Add0B.length) s6Step100Add0Work=some s6Step100Add0During := by
  have len : s6Step100Add0Work.length=hmrHybridCount s6Step100Add0Arena s6Step100Add0B.length := by
    rw [hmrHybridCount,s6Step100Add0_card]
    decide +kernel
  have nd : s6Step100Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step100Add0Arena s6Step100Add0During s6Step100Add0Work.toFinset s6Step100Add0_bounded s6Step100Add0_apart rfl

private theorem s6Step100Add0_distinct : (865::803::796::(s6Step100Add0A++s6Step100Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step100Add0_owned : (865::803::796::(s6Step100Add0A++s6Step100Add0B)).toFinset⊆s6Step100Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step100Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step100Add0_checked : compileHmrHybridCinLog s6Step100Add0Arena 803 865 796 s6Step100Add0A s6Step100Add0B s6Step100Add0Work=some s6Step100Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step100Add0Arena s6Step100Add0During 803 865 796 s6Step100Add0A s6Step100Add0B s6Step100Add0Work
    (by decide +kernel) (by decide +kernel) s6Step100Add0_distinct
    (fun q hq => s6Step100Add0_owned (List.mem_toFinset.mpr hq)) s6Step100Add0_borrowed

private theorem s6Step100Add1_apart : Disjoint s6Step100Add1Arena.live s6Step100Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step100Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step100Add1_card : s6Step100Add1Arena.live.card=876 := by
  decide +kernel

private theorem s6Step100Add1_borrowed : s6Step100Add1Arena.checkBorrow (hmrHybridCount s6Step100Add1Arena s6Step100Add1B.length) s6Step100Add1Work=some s6Step100Add1During := by
  have len : s6Step100Add1Work.length=hmrHybridCount s6Step100Add1Arena s6Step100Add1B.length := by
    rw [hmrHybridCount,s6Step100Add1_card]
    decide +kernel
  have nd : s6Step100Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step100Add1Arena s6Step100Add1During s6Step100Add1Work.toFinset s6Step100Add1_bounded s6Step100Add1_apart rfl

private theorem s6Step100Add1_distinct : (865::803::796::(s6Step100Add1A++s6Step100Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step100Add1_owned : (865::803::796::(s6Step100Add1A++s6Step100Add1B)).toFinset⊆s6Step100Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step100Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step100Add1_checked : compileHmrHybridCinLog s6Step100Add1Arena 803 865 796 s6Step100Add1A s6Step100Add1B s6Step100Add1Work=some s6Step100Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step100Add1Arena s6Step100Add1During 803 865 796 s6Step100Add1A s6Step100Add1B s6Step100Add1Work
    (by decide +kernel) (by decide +kernel) s6Step100Add1_distinct
    (fun q hq => s6Step100Add1_owned (List.mem_toFinset.mpr hq)) s6Step100Add1_borrowed

private theorem s6Step100F4_apart : Disjoint (s6Step100Add0A++s6Step100Add0B).toFinset (s6Step100Add1A++s6Step100Add1B).toFinset := by
  have nd : ((s6Step100Add0A++s6Step100Add0B)++(s6Step100Add1A++s6Step100Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step100F4_carry : s6Step100F4FlagArena.checkBorrow 1 [796]=some s6Step100Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step100F4FlagArena,s6Step100HeadFvAfter,arenaWires]
  · change s6Step100Add0Arena.live=(s6Step100HeadFvAfter.live∪{865})∪{796}
    apply hmrArena_union_pair_of_filter_check s6Step100HeadFvAfter s6Step100Add0Arena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) 865 796 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step100F4_distinct : (907::803::865::796::((s6Step100Add0A++s6Step100Add1A)++(s6Step100Add0B++s6Step100Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step100F4_flag : s6Step100HeadFvAfter.checkBorrow 1 [865]=some s6Step100F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step100HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step100F4_owned : (907::803::((s6Step100Add0A++s6Step100Add1A)++(s6Step100Add0B++s6Step100Add1B))).toFinset⊆s6Step100HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step100HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step100F4_checked : compileHmrHybridF4Log s6Step100HeadFvAfter 907 803 s6Step100Add0A s6Step100Add0B s6Step100Add1A s6Step100Add1B [865] [796] s6Step100Add0Work s6Step100Add1Work=some s6Step100F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step100HeadFvAfter s6Step100F4FlagArena s6Step100Add0Arena s6Step100Add0During s6Step100Add1During 907 803
    s6Step100Add0A s6Step100Add0B s6Step100Add1A s6Step100Add1B [865] [796] s6Step100Add0Work s6Step100Add1Work
    (fun q hq => s6Step100F4_owned (List.mem_toFinset.mpr hq)) s6Step100F4_flag s6Step100F4_carry
    s6Step100F4_distinct s6Step100F4_apart s6Step100Add0_checked s6Step100Add1_checked

private theorem s6Step100Front_branch : s6Step100FrontSigmaArena.checkBorrow 1 [803]=some s6Step100HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step100FrontSigmaArena,s6Step100EntryGvAfter,arenaWires]
  · change s6Step100HeadGBefore.live=(s6Step100EntryGvAfter.live∪{907})∪{803}
    apply hmrArena_union_pair_of_filter_check s6Step100EntryGvAfter s6Step100HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 907 803 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step100Front_entry : HmrFrontEntryValid s6Step100EntryFBefore s6Step100FrontBank 219 65 ⟨219,218,64,64⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step100FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step100EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step100EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step100FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step100Front_sigma : s6Step100EntryGvAfter.checkBorrow 1 [907]=some s6Step100FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step100EntryGvAfter,arenaWires]
  · rfl

private def s6Step100HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step100HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step100HeadFBefore : Arena := s6Step100HeadGAfter

private def s6Step100HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474],795⟩

private def s6Step100HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 784],776⟩

private def s6Step100HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 813],777⟩

private def s6Step100HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856],775⟩

private theorem s6Step100HeadBank_incomingDistinct : ([s6Step100HeadGRow,s6Step100HeadFRow,s6Step100HeadGvRow,s6Step100HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step100HeadF_Incoming : rowsOwned s6Step100HeadFBefore [s6Step100HeadFRow,s6Step100HeadGvRow,s6Step100HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step100HeadGRow,s6Step100HeadFRow,s6Step100HeadGvRow,s6Step100HeadFvRow] 1 s6Step100HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step100HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step100HeadBank_outgoingOwned : rowsOwned s6Step100HeadFvAfter [s6Step100HeadGOut,s6Step100HeadFOut,s6Step100HeadGvOut,s6Step100HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step100HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step100HeadF_Outgoing : rowsOwned s6Step100HeadFvAfter [s6Step100HeadFOut,s6Step100HeadGvOut,s6Step100HeadFvOut] :=
  hmrRows_owned_drop s6Step100HeadFvAfter [s6Step100HeadGOut,s6Step100HeadFOut,s6Step100HeadGvOut,s6Step100HeadFvOut] 1 s6Step100HeadBank_outgoingOwned

private theorem s6Step100HeadF_distinct : (s6Step100HeadFRow.sign::s6Step100HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step100HeadF_owned : (s6Step100HeadFRow.sign::s6Step100HeadFRow.payload).toFinset⊆s6Step100HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step100HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step100HeadF_reserved : s6Step100HeadFBefore.reserve s6Step100HeadFFresh.toFinset=some s6Step100HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step100HeadFFresh,arenaWires]
  · norm_num [s6Step100HeadFBefore,s6Step100HeadGAfter,s6Step100HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step100HeadFBefore s6Step100HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step100HeadFFresh rfl rfl
    · norm_num [s6Step100HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step100HeadF_checked : planRowResizeLog s6Step100HeadFBefore s6Step100HeadFRow 220 s6Step100HeadFFresh=
    some (s6Step100HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 857],795⟩,growRow 795 s6Step100HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step100HeadFBefore s6Step100HeadFAfter s6Step100HeadFRow 220 s6Step100HeadFFresh
    s6Step100HeadF_distinct s6Step100HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step100HeadF_reserved
  have rowEq : WindowRow.mk (s6Step100HeadFRow.payload++s6Step100HeadFFresh) s6Step100HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 857],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step100HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,876),(877,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step100HeadFvBefore : Arena := s6Step100HeadGvAfter

private theorem s6Step100HeadFv_Incoming : rowsOwned s6Step100HeadFvBefore [s6Step100HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step100HeadGRow,s6Step100HeadFRow,s6Step100HeadGvRow,s6Step100HeadFvRow] 3 s6Step100HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step100HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,876),(877,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step100HeadFv_Outgoing : rowsOwned s6Step100HeadFvAfter [s6Step100HeadFvOut] :=
  hmrRows_owned_drop s6Step100HeadFvAfter [s6Step100HeadGOut,s6Step100HeadFOut,s6Step100HeadGvOut,s6Step100HeadFvOut] 3 s6Step100HeadBank_outgoingOwned

private theorem s6Step100HeadFv_distinct : (s6Step100HeadFvRow.sign::s6Step100HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step100HeadFv_owned : (s6Step100HeadFvRow.sign::s6Step100HeadFvRow.payload).toFinset⊆s6Step100HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step100HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,876),(877,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step100HeadFv_reserved : s6Step100HeadFvBefore.reserve s6Step100HeadFvFresh.toFinset=some s6Step100HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step100HeadFvFresh,arenaWires]
  · norm_num [s6Step100HeadFvBefore,s6Step100HeadGvAfter,s6Step100HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step100HeadFvBefore s6Step100HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,876),(877,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step100HeadFvFresh rfl rfl
    · norm_num [s6Step100HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step100HeadFv_checked : planRowResizeLog s6Step100HeadFvBefore s6Step100HeadFvRow 66 s6Step100HeadFvFresh=
    some (s6Step100HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 784, 876],776⟩,growRow 776 s6Step100HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step100HeadFvBefore s6Step100HeadFvAfter s6Step100HeadFvRow 66 s6Step100HeadFvFresh
    s6Step100HeadFv_distinct s6Step100HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step100HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step100HeadFvRow.payload++s6Step100HeadFvFresh) s6Step100HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 784, 876],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step100HeadG_Incoming : rowsOwned s6Step100HeadGBefore [s6Step100HeadGRow,s6Step100HeadFRow,s6Step100HeadGvRow,s6Step100HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step100HeadGRow,s6Step100HeadFRow,s6Step100HeadGvRow,s6Step100HeadFvRow] 0 s6Step100HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step100HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step100HeadG_Outgoing : rowsOwned s6Step100HeadFvAfter [s6Step100HeadGOut,s6Step100HeadFOut,s6Step100HeadGvOut,s6Step100HeadFvOut] :=
  hmrRows_owned_drop s6Step100HeadFvAfter [s6Step100HeadGOut,s6Step100HeadFOut,s6Step100HeadGvOut,s6Step100HeadFvOut] 0 s6Step100HeadBank_outgoingOwned

private theorem s6Step100HeadG_distinct : (s6Step100HeadGRow.sign::s6Step100HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step100HeadG_owned : (s6Step100HeadGRow.sign::s6Step100HeadGRow.payload).toFinset⊆s6Step100HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step100HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step100HeadG_reserved : s6Step100HeadGBefore.reserve s6Step100HeadGFresh.toFinset=some s6Step100HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step100HeadGFresh,arenaWires]
  · norm_num [s6Step100HeadGBefore,s6Step100HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step100HeadGBefore s6Step100HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step100HeadGFresh rfl rfl
    · norm_num [s6Step100HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step100HeadG_checked : planRowResizeLog s6Step100HeadGBefore s6Step100HeadGRow 220 s6Step100HeadGFresh=
    some (s6Step100HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 813, 879],777⟩,growRow 777 s6Step100HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step100HeadGBefore s6Step100HeadGAfter s6Step100HeadGRow 220 s6Step100HeadGFresh
    s6Step100HeadG_distinct s6Step100HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step100HeadG_reserved
  have rowEq : WindowRow.mk (s6Step100HeadGRow.payload++s6Step100HeadGFresh) s6Step100HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 813, 879],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step100HeadGvBefore : Arena := s6Step100HeadFAfter

private theorem s6Step100HeadGv_Incoming : rowsOwned s6Step100HeadGvBefore [s6Step100HeadGvRow,s6Step100HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step100HeadGRow,s6Step100HeadFRow,s6Step100HeadGvRow,s6Step100HeadFvRow] 2 s6Step100HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step100HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step100HeadGv_Outgoing : rowsOwned s6Step100HeadFvAfter [s6Step100HeadGvOut,s6Step100HeadFvOut] :=
  hmrRows_owned_drop s6Step100HeadFvAfter [s6Step100HeadGOut,s6Step100HeadFOut,s6Step100HeadGvOut,s6Step100HeadFvOut] 2 s6Step100HeadBank_outgoingOwned

private theorem s6Step100HeadGv_distinct : (s6Step100HeadGvRow.sign::s6Step100HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step100HeadGv_owned : (s6Step100HeadGvRow.sign::s6Step100HeadGvRow.payload).toFinset⊆s6Step100HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step100HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step100HeadGv_reserved : s6Step100HeadGvBefore.reserve s6Step100HeadGvFresh.toFinset=some s6Step100HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step100HeadGvFresh,arenaWires]
  · norm_num [s6Step100HeadGvBefore,s6Step100HeadFAfter,s6Step100HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step100HeadGvBefore s6Step100HeadGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,876),(877,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step100HeadGvFresh rfl rfl
    · norm_num [s6Step100HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step100HeadGv_checked : planRowResizeLog s6Step100HeadGvBefore s6Step100HeadGvRow 66 s6Step100HeadGvFresh=
    some (s6Step100HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 890],775⟩,growRow 775 s6Step100HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step100HeadGvBefore s6Step100HeadGvAfter s6Step100HeadGvRow 66 s6Step100HeadGvFresh
    s6Step100HeadGv_distinct s6Step100HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step100HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step100HeadGvRow.payload++s6Step100HeadGvFresh) s6Step100HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 890],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step100HeadBank_rows : planWindowRowsLog s6Step100HeadGBefore [(s6Step100HeadGRow,220),(s6Step100HeadFRow,220),(s6Step100HeadGvRow,66),(s6Step100HeadFvRow,66)] [s6Step100HeadGFresh,s6Step100HeadFFresh,s6Step100HeadGvFresh,s6Step100HeadFvFresh]=
    some (s6Step100HeadFvAfter,[s6Step100HeadGOut,s6Step100HeadFOut,s6Step100HeadGvOut,s6Step100HeadFvOut],(growRow 777 s6Step100HeadGFresh ++ (growRow 795 s6Step100HeadFFresh ++ (growRow 775 s6Step100HeadGvFresh ++ (growRow 776 s6Step100HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step100HeadFvAfter [] []=some (s6Step100HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step100HeadFvBefore s6Step100HeadFvAfter s6Step100HeadFvAfter
    s6Step100HeadFvRow s6Step100HeadFvOut 66 s6Step100HeadFvFresh [] [] []
    (growRow 776 s6Step100HeadFvFresh) ([]) s6Step100HeadFv_Incoming s6Step100HeadFv_checked h4 s6Step100HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step100HeadGvBefore s6Step100HeadGvAfter s6Step100HeadFvAfter
    s6Step100HeadGvRow s6Step100HeadGvOut 66 s6Step100HeadGvFresh [(s6Step100HeadFvRow,66)] [s6Step100HeadFvFresh] [s6Step100HeadFvOut]
    (growRow 775 s6Step100HeadGvFresh) ((growRow 776 s6Step100HeadFvFresh ++ [])) s6Step100HeadGv_Incoming s6Step100HeadGv_checked h3 s6Step100HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step100HeadFBefore s6Step100HeadFAfter s6Step100HeadFvAfter
    s6Step100HeadFRow s6Step100HeadFOut 220 s6Step100HeadFFresh [(s6Step100HeadGvRow,66),(s6Step100HeadFvRow,66)] [s6Step100HeadGvFresh,s6Step100HeadFvFresh] [s6Step100HeadGvOut,s6Step100HeadFvOut]
    (growRow 795 s6Step100HeadFFresh) ((growRow 775 s6Step100HeadGvFresh ++ (growRow 776 s6Step100HeadFvFresh ++ []))) s6Step100HeadF_Incoming s6Step100HeadF_checked h2 s6Step100HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step100HeadGBefore s6Step100HeadGAfter s6Step100HeadFvAfter
    s6Step100HeadGRow s6Step100HeadGOut 220 s6Step100HeadGFresh [(s6Step100HeadFRow,220),(s6Step100HeadGvRow,66),(s6Step100HeadFvRow,66)] [s6Step100HeadFFresh,s6Step100HeadGvFresh,s6Step100HeadFvFresh] [s6Step100HeadFOut,s6Step100HeadGvOut,s6Step100HeadFvOut]
    (growRow 777 s6Step100HeadGFresh) ((growRow 795 s6Step100HeadFFresh ++ (growRow 775 s6Step100HeadGvFresh ++ (growRow 776 s6Step100HeadFvFresh ++ [])))) s6Step100HeadG_Incoming s6Step100HeadG_checked h1 s6Step100HeadG_Outgoing
  exact h0

private theorem s6Step100HeadBank_checked : compileHmrBankResizeLog .headroom s6Step100HeadGBefore ⟨s6Step100HeadFRow,s6Step100HeadGRow,s6Step100HeadFvRow,s6Step100HeadGvRow⟩ ⟨220,220,66,66⟩ [s6Step100HeadGFresh,s6Step100HeadFFresh,s6Step100HeadGvFresh,s6Step100HeadFvFresh]=
    some (s6Step100HeadFvAfter,⟨s6Step100HeadFOut,s6Step100HeadGOut,s6Step100HeadFvOut,s6Step100HeadGvOut⟩,(growRow 777 s6Step100HeadGFresh ++ (growRow 795 s6Step100HeadFFresh ++ (growRow 775 s6Step100HeadGvFresh ++ (growRow 776 s6Step100HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step100HeadBank_rows]
  rfl

private theorem s6Step100Front_checked : compileHmrSourceFrontLog s6Step100EntryFBefore s6Step100FrontBank 219 65 ⟨219,218,64,64⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step100FrontLog=some s6Step100FrontPlan := by
  have pairEq : s6Step100FrontPair=⟨s6Step100HeadFRow,s6Step100HeadGRow,s6Step100HeadFvRow,s6Step100HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step100FrontHead=⟨s6Step100ExitFRow,s6Step100ExitGRow,s6Step100ExitFvRow,s6Step100ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step100Add0A=s6Step100FrontHead.f.wires := by decide +kernel
  have gEq : s6Step100Add0B=s6Step100FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step100Add1A=s6Step100FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step100Add1B=s6Step100FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step100EntryFBefore s6Step100FrontBank 219 65 ⟨219,218,64,64⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step100FrontLog s6Step100FrontPlan
  · exact s6Step100Front_entry
  · exact s6Step100EntryBank_checked
  · exact s6Step100Front_sigma
  · rfl
  · exact s6Step100Front_branch
  · rfl
  · simpa only [s6Step100FrontPlan,pairEq] using s6Step100HeadBank_checked
  · simpa only [s6Step100FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step100F4_checked
  · exact s6Step100Counter_checked
  · rfl
  · simpa only [s6Step100FrontPlan,headEq] using s6Step100ExitBank_checked

private theorem s6Step100Complete_explicit_checked : compileHmrEarlyStepLog s6Step100EntryFBefore s6Step100FrontBank 219 65 ⟨219,218,64,64⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 35 s6Step100CompleteLog=some s6Step100CompletePlan := by
  let Q := s6Step100EarlyControlPlan
  have hq := s6Step100EarlyControl_plan_checked
  have fv1 : s6Step100CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step100CompleteOut.fv.payload[2]?.getD s6Step100CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step100CompleteOut.fv.payload[3]?.getD s6Step100CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step100CompleteOut.fv.payload[4]?.getD s6Step100CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step100EntryFBefore s6Step100EarlyControlArena s6Step100FrontBank 219 65 ⟨219,218,64,64⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 35 s6Step100CompleteLog s6Step100FrontPlan Q
    s6Step100Front_checked s6Step100Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step100Complete_owned s6Step100Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step100EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 907 s6Step100CompleteOut.fv.second (s6Step100CompleteOut.fv.payload[2]?.getD s6Step100CompleteOut.fv.sign) (s6Step100CompleteOut.fv.payload[3]?.getD s6Step100CompleteOut.fv.sign) (s6Step100CompleteOut.fv.payload[4]?.getD s6Step100CompleteOut.fv.sign) 803 35 s6Step100EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep100Arena : Arena := s6Step100EntryFBefore
def s6PrivateStep100Bank : WindowBank := s6Step100FrontBank
def s6PrivateStep100Spec : HmrSourceWalkStepLog := ⟨219,65,⟨219,218,64,64⟩,35,.early s6Step100CompleteLog⟩
def s6PrivateStep100Plan : HmrSourceStepPlan := .early s6Step100CompletePlan
theorem s6PrivateStep100_source : s6PrivateStep100Spec=s6ObservedLogs96[4] := rfl
theorem s6PrivateStep100_checked : compileHmrSourceStepLog s6PrivateStep100Arena s6PrivateStep100Bank
    s6PrivateStep100Spec.fgWidth s6PrivateStep100Spec.vWidth s6PrivateStep100Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847]
    6 498 100 s6PrivateStep100Spec.need none s6PrivateStep100Spec.log=some s6PrivateStep100Plan := by
  change compileHmrSourceStepLog s6Step100EntryFBefore s6Step100FrontBank 219 65 ⟨219,218,64,64⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 6 498 100 35 none (.early s6Step100CompleteLog)=some (.early s6Step100CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 100<498)]
  rw [s6Step100Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
