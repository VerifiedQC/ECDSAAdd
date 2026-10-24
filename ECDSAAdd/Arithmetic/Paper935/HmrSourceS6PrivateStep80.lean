import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep78
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

private def s6Step80CompleteMoves : List (Wire × Wire) := [(867,227)]

private def s6Step80EarlyControlLog : HmrEarlyControlLog := ⟨[867, 794, 780, 877, 860],[855],[803],[922, 879, 784, 891, 783, 919],[]⟩

private def s6Step80FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [860], [807], []],[[855], [877], [794], [780]],[[], [], [], []]⟩,[786],[862],[803],[922],[879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800],[803, 922, 879, 784]⟩

private def s6Step80CompleteLog : HmrEarlyStepLog := ⟨s6Step80FrontLog,s6Step80CompleteMoves,s6Step80EarlyControlLog⟩

private def s6Step80ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484],795⟩

private def s6Step80ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807],776⟩

private def s6Step80ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226],777⟩

private def s6Step80ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869],775⟩

private def s6Step80FrontOut : WindowBank := ⟨s6Step80ExitFOut,s6Step80ExitGOut,s6Step80ExitFvOut,s6Step80ExitGvOut⟩

private def s6Step80CompleteOut : WindowBank := s6Step80FrontOut.repacked s6Step80CompleteMoves

private def s6Step80EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step80EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step80EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step80EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step80EarlyControlPositiveArena,[855],s6Step80EarlyControlEqualityArena,[803],⟨⟨786,false⟩,[⟨⟨855,false⟩,803⟩]⟩⟩

private def s6Step80EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step80EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step80EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step80EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step80EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step80EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step80EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,867⟩,⟨⟨772,false⟩,794⟩,⟨⟨771,false⟩,780⟩,⟨⟨770,false⟩,877⟩,⟨⟨769,false⟩,860⟩]⟩

private def s6Step80EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step80EarlyControlZeroArena,s6Step80EarlyControlZeroPlan,s6Step80EarlyControlClassPlan,s6Step80EarlyControlFlagArena,s6Step80EarlyControlFittedArena,s6Step80EarlyControlHistoryArena,s6Step80EarlyControlSigmaArena,s6Step80EarlyControlOutputArena,s6Step80EarlyControlLog⟩

private def s6Step80CounterWork : List Wire := [803, 922, 879, 784]

private theorem s6Step80Counter_bounded : s6Step80CounterWork.toFinset⊆arenaWires := by norm_num [s6Step80CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step80HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step80CounterDuring : Arena := ⟨s6Step80HeadFvAfter.live∪s6Step80CounterWork.toFinset,Finset.union_subset s6Step80HeadFvAfter.bounded s6Step80Counter_bounded⟩

private def s6Step80EntryFFresh : List Wire := []

private def s6Step80EntryFvFresh : List Wire := [807]

private def s6Step80EntryGFresh : List Wire := [860]

private def s6Step80EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step80EntryGvAfter : Arena := s6Step80EntryFvAfter

private def s6Step80EntryGvFresh : List Wire := []

private def s6Step80ExitFExtra : List Wire := [877]

private def s6Step80ExitFvExtra : List Wire := [780]

private def s6Step80ExitGExtra : List Wire := [227, 860, 855]

private def s6Step80ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,227),(228,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step80ExitGvExtra : List Wire := [794]

private def s6Step80Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step80Add0Work : List Wire := [879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step80Add0_bounded : s6Step80Add0Work.toFinset⊆arenaWires := by
  have h : s6Step80Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step80Add0During : Arena := ⟨s6Step80Add0Arena.live∪s6Step80Add0Work.toFinset,Finset.union_subset s6Step80Add0Arena.bounded s6Step80Add0_bounded⟩

private def s6Step80Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step80Add1Work : List Wire := [879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800]

private theorem s6Step80Add1_bounded : s6Step80Add1Work.toFinset⊆arenaWires := by
  have h : s6Step80Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step80Add1During : Arena := ⟨s6Step80Add1Arena.live∪s6Step80Add1Work.toFinset,Finset.union_subset s6Step80Add1Arena.bounded s6Step80Add1_bounded⟩

private def s6Step80F4FlagArena : Arena := ⟨s6Step80HeadFvAfter.live∪{803},Finset.union_subset s6Step80HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step80F4Plan : HmrHybridF4Plan := ⟨s6Step80F4FlagArena,[803],s6Step80Add0Arena,[922],s6Step80Add0During,s6Step80Add0Work,s6Step80Add1During,s6Step80Add1Work⟩

private def s6Step80HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 877],795⟩

private def s6Step80HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 780],776⟩

private def s6Step80HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 860, 855],777⟩

private def s6Step80HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 794],775⟩

private def s6Step80FrontHead : WindowBank := ⟨s6Step80HeadFOut,s6Step80HeadGOut,s6Step80HeadFvOut,s6Step80HeadGvOut⟩

private def s6Step80EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484],795⟩

private def s6Step80EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807],776⟩

private def s6Step80EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 860],777⟩

private def s6Step80EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869],775⟩

private def s6Step80FrontPair : WindowBank := ⟨s6Step80EntryFOut,s6Step80EntryGOut,s6Step80EntryFvOut,s6Step80EntryGvOut⟩

private def s6Step80FrontSigmaArena : Arena := ⟨s6Step80EntryGvAfter.live∪{786},Finset.union_subset s6Step80EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step80HeadFFresh : List Wire := [877]

private def s6Step80HeadFvFresh : List Wire := [780]

private def s6Step80HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step80HeadGFresh : List Wire := [855]

private def s6Step80HeadGvFresh : List Wire := [794]

private def s6Step80FrontPlan : HmrSourceFront := ⟨s6Step80EntryGvAfter,s6Step80FrontPair,(growRow 795 s6Step80EntryFFresh ++ (growRow 777 s6Step80EntryGFresh ++ (growRow 776 s6Step80EntryFvFresh ++ (growRow 775 s6Step80EntryGvFresh ++ [])))),s6Step80FrontSigmaArena,[786],s6Step80HeadGBefore,[862],
  s6Step80HeadFvAfter,s6Step80FrontHead,(growRow 777 s6Step80HeadGFresh ++ (growRow 795 s6Step80HeadFFresh ++ (growRow 775 s6Step80HeadGvFresh ++ (growRow 776 s6Step80HeadFvFresh ++ [])))),s6Step80F4Plan,s6Step80CounterDuring,s6Step80CounterWork,s6Step80ExitGvAfter,s6Step80FrontOut,(shrinkRow 777 s6Step80ExitGExtra ++ (shrinkRow 795 s6Step80ExitFExtra ++ (shrinkRow 776 s6Step80ExitFvExtra ++ (shrinkRow 775 s6Step80ExitGvExtra ++ []))))⟩

private def s6Step80CompletePlan : HmrEarlyStepPlan := ⟨s6Step80FrontPlan,s6Step80EarlyControlArena,s6Step80EarlyControlPlan,s6Step80CompleteMoves⟩

private theorem s6Step80Complete_apart : List.Disjoint (s6Step80CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [786, 862, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] := by
  have nd : ((s6Step80CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[786, 862, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step80Complete_owned : (s6Step80CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step80EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step80EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step80CompleteRelocationMove0Borrowed : Arena := ⟨s6Step80ExitGvAfter.live∪{227},Finset.union_subset s6Step80ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step80CompleteRelocation_move0_owned : 867∈s6Step80ExitGvAfter.live := by norm_num [s6Step80ExitGvAfter,arenaWires]

private theorem s6Step80CompleteRelocation_move0_reserve : s6Step80ExitGvAfter.reserve {227}=some s6Step80CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step80ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step80CompleteRelocation_move0_retire : s6Step80CompleteRelocationMove0Borrowed.retireSet {867}=s6Step80EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step80CompleteRelocationMove0Borrowed s6Step80EarlyControlArena {867}
  change s6Step80EarlyControlArena.live=(s6Step80ExitGvAfter.live∪{227})\{867}
  apply hmrArena_update_of_filter_check s6Step80ExitGvAfter s6Step80EarlyControlArena (fun q => ([(0,227),(228,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [227] [867] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step80CompleteRelocation_checked : s6Step80ExitGvAfter.checkRepack [(867,227)]=some s6Step80EarlyControlArena := by
  have tail1 : s6Step80EarlyControlArena.checkRepack []=some s6Step80EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step80ExitGvAfter s6Step80CompleteRelocationMove0Borrowed s6Step80EarlyControlArena s6Step80EarlyControlArena 867 227 []
    s6Step80CompleteRelocation_move0_owned s6Step80CompleteRelocation_move0_reserve s6Step80CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step80Complete_repack : s6Step80ExitGvAfter.checkRepack s6Step80CompleteMoves=some s6Step80EarlyControlArena := by
  simpa only [s6Step80CompleteMoves] using s6Step80CompleteRelocation_checked

private theorem s6Step80EarlyControl_branchOwned : ([862] : List Wire).toFinset⊆s6Step80EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step80EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step80EarlyControl_branch : compileHmrBranchRetirement s6Step80EarlyControlSigmaArena 862=some s6Step80EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step80EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step80EarlyControlSigmaArena s6Step80EarlyControlOutputArena (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [862] rfl rfl
    decide +kernel

private theorem s6Step80EarlyControl_classEqualityBorrow : s6Step80EarlyControlPositiveArena.checkBorrow (([786, 855] : List Wire).length-1) s6Step80EarlyControlLog.classWork=some s6Step80EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step80EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step80EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step80EarlyControlPositiveArena s6Step80EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step80EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step80EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step80EarlyControl_classEqualityOwned : ([786, 855] : List Wire).toFinset⊆s6Step80EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step80EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step80EarlyControl_classEquality : compileHmrEqualityLog s6Step80EarlyControlPositiveArena [786, 855] 0 s6Step80EarlyControlLog.classWork=some (s6Step80EarlyControlEqualityArena,s6Step80EarlyControlLog.classWork,s6Step80EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step80EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step80EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step80EarlyControl_classOwned : ([769, 860, 786] : List Wire).toFinset⊆s6Step80EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step80EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step80EarlyControl_positiveBorrow : s6Step80EarlyControlZeroArena.checkBorrow (1) s6Step80EarlyControlLog.positiveWork=some s6Step80EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step80EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step80EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step80EarlyControlZeroArena s6Step80EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step80EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step80EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step80EarlyControl_class : compileHmrSourceClassLog s6Step80EarlyControlZeroArena false 769 s6Step80EarlyControlZeroPlan.top 0 786 s6Step80EarlyControlLog.positiveWork s6Step80EarlyControlLog.classWork=some s6Step80EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step80EarlyControlClassPlan s6Step80EarlyControlZeroArena false 769 s6Step80EarlyControlZeroPlan.top 0 786
  constructor
  · decide +kernel
  · exact s6Step80EarlyControl_classOwned
  · exact s6Step80EarlyControl_positiveBorrow
  · exact s6Step80EarlyControl_classEquality

private theorem s6Step80EarlyControl_entryRecordOwned : ([862, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step80EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step80EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step80EarlyControl_entrySigmaOwned : ([786, 254] : List Wire).toFinset⊆s6Step80EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step80EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step80EarlyControl_fitBorrow : s6Step80EarlyControlFlagArena.checkBorrow ((30-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).length)) s6Step80EarlyControlLog.recordFresh=some s6Step80EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step80EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step80EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step80EarlyControlFittedArena,s6Step80EarlyControlFlagArena,s6Step80EarlyControlLog,arenaWires]

private theorem s6Step80EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step80EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step80EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step80EarlyControl_fit : compileHmrRecordGrowLog s6Step80EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step80EarlyControlLog.recordFresh=some s6Step80EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step80EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step80EarlyControl_fitBorrow

private theorem s6Step80EarlyControl_flagsBorrow : s6Step80EarlyControlEqualityArena.checkBorrow (6) s6Step80EarlyControlLog.flagWork=some s6Step80EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step80EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step80EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step80EarlyControlEqualityArena s6Step80EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step80EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step80EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step80EarlyControl_flagsOwned : ([803, 253, 252, 251] : List Wire).toFinset⊆s6Step80EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step80EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step80EarlyControl_flags : compileHmrFlagsLog s6Step80EarlyControlClassPlan.equalityArena s6Step80EarlyControlClassPlan.equality.top 253 252 251 s6Step80EarlyControlLog.flagWork=some s6Step80EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step80EarlyControl_flagsOwned⟩
  · exact s6Step80EarlyControl_flagsBorrow

private theorem s6Step80EarlyControl_historyBorrow : s6Step80EarlyControlArena.checkBorrow ((30-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).length)) s6Step80EarlyControlLog.recordFresh=some s6Step80EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step80EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step80EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step80EarlyControlArena s6Step80EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step80EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step80EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step80EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step80EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step80EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step80EarlyControl_history : compileHmrRecordGrowLog s6Step80EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step80EarlyControlLog.recordFresh=some s6Step80EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step80EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step80EarlyControl_historyBorrow

private theorem s6Step80EarlyControl_sigmaOwned : ([254, 786] : List Wire).toFinset⊆s6Step80EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step80EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step80EarlyControl_sigmaReleaseOwned : ([786] : List Wire).toFinset⊆s6Step80EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step80EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step80EarlyControl_sigmaRelease : s6Step80EarlyControlHistoryArena.release {786} (fun _ => false)=some s6Step80EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step80EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step80EarlyControlHistoryArena s6Step80EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [786] rfl rfl
    decide +kernel

private theorem s6Step80EarlyControl_sigma : compileHmrSigmaDropLog s6Step80EarlyControlHistoryArena false 0 0 254 786 []=some s6Step80EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step80EarlyControl_sigmaOwned⟩
  · exact s6Step80EarlyControl_sigmaRelease

private theorem s6Step80EarlyControl_zeroBorrow : s6Step80EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step80EarlyControlLog.zeroWork=some s6Step80EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step80EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step80EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step80EarlyControlArena s6Step80EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step80EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step80EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step80EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step80EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step80EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,867),(868,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step80EarlyControl_zero : compileHmrEqualityLog s6Step80EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step80EarlyControlLog.zeroWork=some (s6Step80EarlyControlZeroArena,s6Step80EarlyControlLog.zeroWork,s6Step80EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step80EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step80EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step80EarlyControl_logged : s6Step80EarlyControlPlan.Logged s6Step80EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 786 254 253 252 251 862 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step80EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step80EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step80EarlyControl_zero
  · exact s6Step80EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step80EarlyControl_flags
  · exact s6Step80EarlyControl_fit
  · exact s6Step80EarlyControl_history
  · exact s6Step80EarlyControl_sigma
  · exact s6Step80EarlyControl_branch

private theorem s6Step80EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step80EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 786 254 253 252 251 862 30 s6Step80EarlyControlLog=some s6Step80EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step80EarlyControlPlan s6Step80EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 786 254 253 252 251 862 30 s6Step80EarlyControl_logged

private def s6Step80EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step80EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484],795⟩

private def s6Step80EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843],776⟩

private def s6Step80EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227],777⟩

private def s6Step80EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869],775⟩

private def s6Step80FrontBank : WindowBank := ⟨s6Step80EntryFRow,s6Step80EntryGRow,s6Step80EntryFvRow,s6Step80EntryGvRow⟩

private def s6Step80Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 877, 795]

private def s6Step80Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 860, 855, 777]

private def s6Step80Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 780, 776]

private def s6Step80Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 794, 775]

private theorem s6Step80Counter_apart : Disjoint s6Step80HeadFvAfter.live s6Step80CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step80HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step80Counter_borrowed : s6Step80HeadFvAfter.checkBorrow 4 s6Step80CounterWork=some s6Step80CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step80HeadFvAfter s6Step80CounterDuring s6Step80CounterWork.toFinset s6Step80Counter_bounded s6Step80Counter_apart rfl

private theorem s6Step80Counter_owned : (786::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step80HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step80HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step80Counter_checked : compileHmrCounterStepLog s6Step80HeadFvAfter true 786 [774, 773, 772, 771, 770, 769] s6Step80CounterWork=some s6Step80CounterDuring := by
  have owned : ∀q∈786::[774, 773, 772, 771, 770, 769],q∈s6Step80HeadFvAfter.live := fun q hq => s6Step80Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step80Counter_borrowed

private def s6Step80EntryFAfter : Arena := s6Step80EntryFBefore

private theorem s6Step80EntryBank_incomingDistinct : ([s6Step80EntryFRow,s6Step80EntryGRow,s6Step80EntryFvRow,s6Step80EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step80EntryF_Incoming : rowsOwned s6Step80EntryFBefore [s6Step80EntryFRow,s6Step80EntryGRow,s6Step80EntryFvRow,s6Step80EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step80EntryFRow,s6Step80EntryGRow,s6Step80EntryFvRow,s6Step80EntryGvRow] 0 s6Step80EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step80EntryFBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step80EntryBank_outgoingOwned : rowsOwned s6Step80EntryGvAfter [s6Step80EntryFOut,s6Step80EntryGOut,s6Step80EntryFvOut,s6Step80EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step80EntryGvAfter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step80EntryF_Outgoing : rowsOwned s6Step80EntryGvAfter [s6Step80EntryFOut,s6Step80EntryGOut,s6Step80EntryFvOut,s6Step80EntryGvOut] :=
  hmrRows_owned_drop s6Step80EntryGvAfter [s6Step80EntryFOut,s6Step80EntryGOut,s6Step80EntryFvOut,s6Step80EntryGvOut] 0 s6Step80EntryBank_outgoingOwned

private theorem s6Step80EntryF_distinct : (s6Step80EntryFRow.sign::s6Step80EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step80EntryF_owned : (s6Step80EntryFRow.sign::s6Step80EntryFRow.payload).toFinset⊆s6Step80EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step80EntryFBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step80EntryF_reserved : s6Step80EntryFBefore.reserve s6Step80EntryFFresh.toFinset=some s6Step80EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step80EntryFFresh,arenaWires]
  · norm_num [s6Step80EntryFBefore,s6Step80EntryFFresh,arenaWires]
  · simp only [s6Step80EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step80EntryF_checked : planRowResizeLog s6Step80EntryFBefore s6Step80EntryFRow 229 s6Step80EntryFFresh=
    some (s6Step80EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484],795⟩,growRow 795 s6Step80EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step80EntryFBefore s6Step80EntryFAfter s6Step80EntryFRow 229 s6Step80EntryFFresh
    s6Step80EntryF_distinct s6Step80EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step80EntryF_reserved
  have rowEq : WindowRow.mk (s6Step80EntryFRow.payload++s6Step80EntryFFresh) s6Step80EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step80EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step80EntryFvBefore : Arena := s6Step80EntryGAfter

private theorem s6Step80EntryFv_Incoming : rowsOwned s6Step80EntryFvBefore [s6Step80EntryFvRow,s6Step80EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step80EntryFRow,s6Step80EntryGRow,s6Step80EntryFvRow,s6Step80EntryGvRow] 2 s6Step80EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step80EntryFvBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step80EntryFv_Outgoing : rowsOwned s6Step80EntryGvAfter [s6Step80EntryFvOut,s6Step80EntryGvOut] :=
  hmrRows_owned_drop s6Step80EntryGvAfter [s6Step80EntryFOut,s6Step80EntryGOut,s6Step80EntryFvOut,s6Step80EntryGvOut] 2 s6Step80EntryBank_outgoingOwned

private theorem s6Step80EntryFv_distinct : (s6Step80EntryFvRow.sign::s6Step80EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step80EntryFv_owned : (s6Step80EntryFvRow.sign::s6Step80EntryFvRow.payload).toFinset⊆s6Step80EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step80EntryFvBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step80EntryFv_reserved : s6Step80EntryFvBefore.reserve s6Step80EntryFvFresh.toFinset=some s6Step80EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step80EntryFvFresh,arenaWires]
  · norm_num [s6Step80EntryFvBefore,s6Step80EntryGAfter,s6Step80EntryFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step80EntryFvBefore s6Step80EntryFvAfter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step80EntryFvFresh rfl rfl
    · norm_num [s6Step80EntryFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step80EntryFv_checked : planRowResizeLog s6Step80EntryFvBefore s6Step80EntryFvRow 54 s6Step80EntryFvFresh=
    some (s6Step80EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807],776⟩,growRow 776 s6Step80EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step80EntryFvBefore s6Step80EntryFvAfter s6Step80EntryFvRow 54 s6Step80EntryFvFresh
    s6Step80EntryFv_distinct s6Step80EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step80EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step80EntryFvRow.payload++s6Step80EntryFvFresh) s6Step80EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step80EntryGBefore : Arena := s6Step80EntryFBefore

private theorem s6Step80EntryG_Incoming : rowsOwned s6Step80EntryGBefore [s6Step80EntryGRow,s6Step80EntryFvRow,s6Step80EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step80EntryFRow,s6Step80EntryGRow,s6Step80EntryFvRow,s6Step80EntryGvRow] 1 s6Step80EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step80EntryGBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step80EntryG_Outgoing : rowsOwned s6Step80EntryGvAfter [s6Step80EntryGOut,s6Step80EntryFvOut,s6Step80EntryGvOut] :=
  hmrRows_owned_drop s6Step80EntryGvAfter [s6Step80EntryFOut,s6Step80EntryGOut,s6Step80EntryFvOut,s6Step80EntryGvOut] 1 s6Step80EntryBank_outgoingOwned

private theorem s6Step80EntryG_distinct : (s6Step80EntryGRow.sign::s6Step80EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step80EntryG_owned : (s6Step80EntryGRow.sign::s6Step80EntryGRow.payload).toFinset⊆s6Step80EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step80EntryGBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step80EntryG_reserved : s6Step80EntryGBefore.reserve s6Step80EntryGFresh.toFinset=some s6Step80EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step80EntryGFresh,arenaWires]
  · norm_num [s6Step80EntryGBefore,s6Step80EntryFBefore,s6Step80EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step80EntryGBefore s6Step80EntryGAfter (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step80EntryGFresh rfl rfl
    · norm_num [s6Step80EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step80EntryG_checked : planRowResizeLog s6Step80EntryGBefore s6Step80EntryGRow 229 s6Step80EntryGFresh=
    some (s6Step80EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 860],777⟩,growRow 777 s6Step80EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step80EntryGBefore s6Step80EntryGAfter s6Step80EntryGRow 229 s6Step80EntryGFresh
    s6Step80EntryG_distinct s6Step80EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step80EntryG_reserved
  have rowEq : WindowRow.mk (s6Step80EntryGRow.payload++s6Step80EntryGFresh) s6Step80EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 860],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step80EntryGvBefore : Arena := s6Step80EntryFvAfter

private theorem s6Step80EntryGv_Incoming : rowsOwned s6Step80EntryGvBefore [s6Step80EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step80EntryFRow,s6Step80EntryGRow,s6Step80EntryFvRow,s6Step80EntryGvRow] 3 s6Step80EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step80EntryGvBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step80EntryGv_Outgoing : rowsOwned s6Step80EntryGvAfter [s6Step80EntryGvOut] :=
  hmrRows_owned_drop s6Step80EntryGvAfter [s6Step80EntryFOut,s6Step80EntryGOut,s6Step80EntryFvOut,s6Step80EntryGvOut] 3 s6Step80EntryBank_outgoingOwned

private theorem s6Step80EntryGv_distinct : (s6Step80EntryGvRow.sign::s6Step80EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step80EntryGv_owned : (s6Step80EntryGvRow.sign::s6Step80EntryGvRow.payload).toFinset⊆s6Step80EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step80EntryGvBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step80EntryGv_reserved : s6Step80EntryGvBefore.reserve s6Step80EntryGvFresh.toFinset=some s6Step80EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step80EntryGvFresh,arenaWires]
  · norm_num [s6Step80EntryGvBefore,s6Step80EntryFvAfter,s6Step80EntryGvFresh,arenaWires]
  · simp only [s6Step80EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step80EntryGv_checked : planRowResizeLog s6Step80EntryGvBefore s6Step80EntryGvRow 54 s6Step80EntryGvFresh=
    some (s6Step80EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869],775⟩,growRow 775 s6Step80EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step80EntryGvBefore s6Step80EntryGvAfter s6Step80EntryGvRow 54 s6Step80EntryGvFresh
    s6Step80EntryGv_distinct s6Step80EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step80EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step80EntryGvRow.payload++s6Step80EntryGvFresh) s6Step80EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step80EntryBank_rows : planWindowRowsLog s6Step80EntryFBefore [(s6Step80EntryFRow,229),(s6Step80EntryGRow,229),(s6Step80EntryFvRow,54),(s6Step80EntryGvRow,54)] [s6Step80EntryFFresh,s6Step80EntryGFresh,s6Step80EntryFvFresh,s6Step80EntryGvFresh]=
    some (s6Step80EntryGvAfter,[s6Step80EntryFOut,s6Step80EntryGOut,s6Step80EntryFvOut,s6Step80EntryGvOut],(growRow 795 s6Step80EntryFFresh ++ (growRow 777 s6Step80EntryGFresh ++ (growRow 776 s6Step80EntryFvFresh ++ (growRow 775 s6Step80EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step80EntryGvAfter [] []=some (s6Step80EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step80EntryGvBefore s6Step80EntryGvAfter s6Step80EntryGvAfter
    s6Step80EntryGvRow s6Step80EntryGvOut 54 s6Step80EntryGvFresh [] [] []
    (growRow 775 s6Step80EntryGvFresh) ([]) s6Step80EntryGv_Incoming s6Step80EntryGv_checked h4 s6Step80EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step80EntryFvBefore s6Step80EntryFvAfter s6Step80EntryGvAfter
    s6Step80EntryFvRow s6Step80EntryFvOut 54 s6Step80EntryFvFresh [(s6Step80EntryGvRow,54)] [s6Step80EntryGvFresh] [s6Step80EntryGvOut]
    (growRow 776 s6Step80EntryFvFresh) ((growRow 775 s6Step80EntryGvFresh ++ [])) s6Step80EntryFv_Incoming s6Step80EntryFv_checked h3 s6Step80EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step80EntryGBefore s6Step80EntryGAfter s6Step80EntryGvAfter
    s6Step80EntryGRow s6Step80EntryGOut 229 s6Step80EntryGFresh [(s6Step80EntryFvRow,54),(s6Step80EntryGvRow,54)] [s6Step80EntryFvFresh,s6Step80EntryGvFresh] [s6Step80EntryFvOut,s6Step80EntryGvOut]
    (growRow 777 s6Step80EntryGFresh) ((growRow 776 s6Step80EntryFvFresh ++ (growRow 775 s6Step80EntryGvFresh ++ []))) s6Step80EntryG_Incoming s6Step80EntryG_checked h2 s6Step80EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step80EntryFBefore s6Step80EntryFAfter s6Step80EntryGvAfter
    s6Step80EntryFRow s6Step80EntryFOut 229 s6Step80EntryFFresh [(s6Step80EntryGRow,229),(s6Step80EntryFvRow,54),(s6Step80EntryGvRow,54)] [s6Step80EntryGFresh,s6Step80EntryFvFresh,s6Step80EntryGvFresh] [s6Step80EntryGOut,s6Step80EntryFvOut,s6Step80EntryGvOut]
    (growRow 795 s6Step80EntryFFresh) ((growRow 777 s6Step80EntryGFresh ++ (growRow 776 s6Step80EntryFvFresh ++ (growRow 775 s6Step80EntryGvFresh ++ [])))) s6Step80EntryF_Incoming s6Step80EntryF_checked h1 s6Step80EntryF_Outgoing
  exact h0

private theorem s6Step80EntryBank_checked : compileHmrBankResizeLog .entry s6Step80EntryFBefore ⟨s6Step80EntryFRow,s6Step80EntryGRow,s6Step80EntryFvRow,s6Step80EntryGvRow⟩ ⟨229,229,54,54⟩ [s6Step80EntryFFresh,s6Step80EntryGFresh,s6Step80EntryFvFresh,s6Step80EntryGvFresh]=
    some (s6Step80EntryGvAfter,⟨s6Step80EntryFOut,s6Step80EntryGOut,s6Step80EntryFvOut,s6Step80EntryGvOut⟩,(growRow 795 s6Step80EntryFFresh ++ (growRow 777 s6Step80EntryGFresh ++ (growRow 776 s6Step80EntryFvFresh ++ (growRow 775 s6Step80EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step80EntryBank_rows]
  rfl

private def s6Step80ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,227),(228,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step80ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,227),(228,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step80ExitFBefore : Arena := s6Step80ExitGAfter

private def s6Step80ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 877],795⟩

private def s6Step80ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 780],776⟩

private def s6Step80ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 860, 855],777⟩

private def s6Step80ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 794],775⟩

private theorem s6Step80ExitBank_incomingDistinct : ([s6Step80ExitGRow,s6Step80ExitFRow,s6Step80ExitFvRow,s6Step80ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step80ExitF_Incoming : rowsOwned s6Step80ExitFBefore [s6Step80ExitFRow,s6Step80ExitFvRow,s6Step80ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step80ExitGRow,s6Step80ExitFRow,s6Step80ExitFvRow,s6Step80ExitGvRow] 1 s6Step80ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step80ExitFBefore (fun q => ([(0,227),(228,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step80ExitBank_outgoingOwned : rowsOwned s6Step80ExitGvAfter [s6Step80ExitGOut,s6Step80ExitFOut,s6Step80ExitFvOut,s6Step80ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step80ExitGvAfter (fun q => ([(0,227),(228,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step80ExitF_Outgoing : rowsOwned s6Step80ExitGvAfter [s6Step80ExitFOut,s6Step80ExitFvOut,s6Step80ExitGvOut] :=
  hmrRows_owned_drop s6Step80ExitGvAfter [s6Step80ExitGOut,s6Step80ExitFOut,s6Step80ExitFvOut,s6Step80ExitGvOut] 1 s6Step80ExitBank_outgoingOwned

private theorem s6Step80ExitF_distinct : (s6Step80ExitFRow.sign::s6Step80ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step80ExitF_owned : (s6Step80ExitFRow.sign::s6Step80ExitFRow.payload).toFinset⊆s6Step80ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step80ExitFBefore (fun q => ([(0,227),(228,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step80ExitF_retired : s6Step80ExitFBefore.retireSet s6Step80ExitFExtra.toFinset=s6Step80ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step80ExitFBefore s6Step80ExitFAfter s6Step80ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step80ExitFBefore s6Step80ExitFAfter (fun q => ([(0,227),(228,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,227),(228,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step80ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step80ExitF_checked : planRowResizeLog s6Step80ExitFBefore s6Step80ExitFRow 229 []=
    some (s6Step80ExitFAfter,s6Step80ExitFOut,shrinkRow 795 s6Step80ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step80ExitFBefore s6Step80ExitFRow 229 s6Step80ExitF_distinct s6Step80ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step80ExitFRow.payload.take 229) s6Step80ExitFRow.sign=s6Step80ExitFOut := by decide +kernel
  have hi : s6Step80ExitFRow.payload.drop 229=s6Step80ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step80ExitF_retired] at result
  exact result

private def s6Step80ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,227),(228,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step80ExitFvBefore : Arena := s6Step80ExitFAfter

private theorem s6Step80ExitFv_Incoming : rowsOwned s6Step80ExitFvBefore [s6Step80ExitFvRow,s6Step80ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step80ExitGRow,s6Step80ExitFRow,s6Step80ExitFvRow,s6Step80ExitGvRow] 2 s6Step80ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step80ExitFvBefore (fun q => ([(0,227),(228,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step80ExitFv_Outgoing : rowsOwned s6Step80ExitGvAfter [s6Step80ExitFvOut,s6Step80ExitGvOut] :=
  hmrRows_owned_drop s6Step80ExitGvAfter [s6Step80ExitGOut,s6Step80ExitFOut,s6Step80ExitFvOut,s6Step80ExitGvOut] 2 s6Step80ExitBank_outgoingOwned

private theorem s6Step80ExitFv_distinct : (s6Step80ExitFvRow.sign::s6Step80ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step80ExitFv_owned : (s6Step80ExitFvRow.sign::s6Step80ExitFvRow.payload).toFinset⊆s6Step80ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step80ExitFvBefore (fun q => ([(0,227),(228,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step80ExitFv_retired : s6Step80ExitFvBefore.retireSet s6Step80ExitFvExtra.toFinset=s6Step80ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step80ExitFvBefore s6Step80ExitFvAfter s6Step80ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step80ExitFvBefore s6Step80ExitFvAfter (fun q => ([(0,227),(228,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,227),(228,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step80ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step80ExitFv_checked : planRowResizeLog s6Step80ExitFvBefore s6Step80ExitFvRow 54 []=
    some (s6Step80ExitFvAfter,s6Step80ExitFvOut,shrinkRow 776 s6Step80ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step80ExitFvBefore s6Step80ExitFvRow 54 s6Step80ExitFv_distinct s6Step80ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step80ExitFvRow.payload.take 54) s6Step80ExitFvRow.sign=s6Step80ExitFvOut := by decide +kernel
  have hi : s6Step80ExitFvRow.payload.drop 54=s6Step80ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step80ExitFv_retired] at result
  exact result

private def s6Step80ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step80ExitG_Incoming : rowsOwned s6Step80ExitGBefore [s6Step80ExitGRow,s6Step80ExitFRow,s6Step80ExitFvRow,s6Step80ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step80ExitGRow,s6Step80ExitFRow,s6Step80ExitFvRow,s6Step80ExitGvRow] 0 s6Step80ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step80ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step80ExitG_Outgoing : rowsOwned s6Step80ExitGvAfter [s6Step80ExitGOut,s6Step80ExitFOut,s6Step80ExitFvOut,s6Step80ExitGvOut] :=
  hmrRows_owned_drop s6Step80ExitGvAfter [s6Step80ExitGOut,s6Step80ExitFOut,s6Step80ExitFvOut,s6Step80ExitGvOut] 0 s6Step80ExitBank_outgoingOwned

private theorem s6Step80ExitG_distinct : (s6Step80ExitGRow.sign::s6Step80ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step80ExitG_owned : (s6Step80ExitGRow.sign::s6Step80ExitGRow.payload).toFinset⊆s6Step80ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step80ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step80ExitG_retired : s6Step80ExitGBefore.retireSet s6Step80ExitGExtra.toFinset=s6Step80ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step80ExitGBefore s6Step80ExitGAfter s6Step80ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step80ExitGBefore s6Step80ExitGAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,227),(228,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step80ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step80ExitG_checked : planRowResizeLog s6Step80ExitGBefore s6Step80ExitGRow 227 []=
    some (s6Step80ExitGAfter,s6Step80ExitGOut,shrinkRow 777 s6Step80ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step80ExitGBefore s6Step80ExitGRow 227 s6Step80ExitG_distinct s6Step80ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step80ExitGRow.payload.take 227) s6Step80ExitGRow.sign=s6Step80ExitGOut := by decide +kernel
  have hi : s6Step80ExitGRow.payload.drop 227=s6Step80ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step80ExitG_retired] at result
  exact result

private def s6Step80ExitGvBefore : Arena := s6Step80ExitFvAfter

private theorem s6Step80ExitGv_Incoming : rowsOwned s6Step80ExitGvBefore [s6Step80ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step80ExitGRow,s6Step80ExitFRow,s6Step80ExitFvRow,s6Step80ExitGvRow] 3 s6Step80ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step80ExitGvBefore (fun q => ([(0,227),(228,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step80ExitGv_Outgoing : rowsOwned s6Step80ExitGvAfter [s6Step80ExitGvOut] :=
  hmrRows_owned_drop s6Step80ExitGvAfter [s6Step80ExitGOut,s6Step80ExitFOut,s6Step80ExitFvOut,s6Step80ExitGvOut] 3 s6Step80ExitBank_outgoingOwned

private theorem s6Step80ExitGv_distinct : (s6Step80ExitGvRow.sign::s6Step80ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step80ExitGv_owned : (s6Step80ExitGvRow.sign::s6Step80ExitGvRow.payload).toFinset⊆s6Step80ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step80ExitGvBefore (fun q => ([(0,227),(228,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step80ExitGv_retired : s6Step80ExitGvBefore.retireSet s6Step80ExitGvExtra.toFinset=s6Step80ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step80ExitGvBefore s6Step80ExitGvAfter s6Step80ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step80ExitGvBefore s6Step80ExitGvAfter (fun q => ([(0,227),(228,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,227),(228,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step80ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step80ExitGv_checked : planRowResizeLog s6Step80ExitGvBefore s6Step80ExitGvRow 54 []=
    some (s6Step80ExitGvAfter,s6Step80ExitGvOut,shrinkRow 775 s6Step80ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step80ExitGvBefore s6Step80ExitGvRow 54 s6Step80ExitGv_distinct s6Step80ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step80ExitGvRow.payload.take 54) s6Step80ExitGvRow.sign=s6Step80ExitGvOut := by decide +kernel
  have hi : s6Step80ExitGvRow.payload.drop 54=s6Step80ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step80ExitGv_retired] at result
  exact result

private theorem s6Step80ExitBank_rows : planWindowRowsLog s6Step80ExitGBefore [(s6Step80ExitGRow,227),(s6Step80ExitFRow,229),(s6Step80ExitFvRow,54),(s6Step80ExitGvRow,54)] [[],[],[],[]]=
    some (s6Step80ExitGvAfter,[s6Step80ExitGOut,s6Step80ExitFOut,s6Step80ExitFvOut,s6Step80ExitGvOut],(shrinkRow 777 s6Step80ExitGExtra ++ (shrinkRow 795 s6Step80ExitFExtra ++ (shrinkRow 776 s6Step80ExitFvExtra ++ (shrinkRow 775 s6Step80ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step80ExitGvAfter [] []=some (s6Step80ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step80ExitGvBefore s6Step80ExitGvAfter s6Step80ExitGvAfter
    s6Step80ExitGvRow s6Step80ExitGvOut 54 [] [] [] []
    (shrinkRow 775 s6Step80ExitGvExtra) ([]) s6Step80ExitGv_Incoming s6Step80ExitGv_checked h4 s6Step80ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step80ExitFvBefore s6Step80ExitFvAfter s6Step80ExitGvAfter
    s6Step80ExitFvRow s6Step80ExitFvOut 54 [] [(s6Step80ExitGvRow,54)] [[]] [s6Step80ExitGvOut]
    (shrinkRow 776 s6Step80ExitFvExtra) ((shrinkRow 775 s6Step80ExitGvExtra ++ [])) s6Step80ExitFv_Incoming s6Step80ExitFv_checked h3 s6Step80ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step80ExitFBefore s6Step80ExitFAfter s6Step80ExitGvAfter
    s6Step80ExitFRow s6Step80ExitFOut 229 [] [(s6Step80ExitFvRow,54),(s6Step80ExitGvRow,54)] [[],[]] [s6Step80ExitFvOut,s6Step80ExitGvOut]
    (shrinkRow 795 s6Step80ExitFExtra) ((shrinkRow 776 s6Step80ExitFvExtra ++ (shrinkRow 775 s6Step80ExitGvExtra ++ []))) s6Step80ExitF_Incoming s6Step80ExitF_checked h2 s6Step80ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step80ExitGBefore s6Step80ExitGAfter s6Step80ExitGvAfter
    s6Step80ExitGRow s6Step80ExitGOut 227 [] [(s6Step80ExitFRow,229),(s6Step80ExitFvRow,54),(s6Step80ExitGvRow,54)] [[],[],[]] [s6Step80ExitFOut,s6Step80ExitFvOut,s6Step80ExitGvOut]
    (shrinkRow 777 s6Step80ExitGExtra) ((shrinkRow 795 s6Step80ExitFExtra ++ (shrinkRow 776 s6Step80ExitFvExtra ++ (shrinkRow 775 s6Step80ExitGvExtra ++ [])))) s6Step80ExitG_Incoming s6Step80ExitG_checked h1 s6Step80ExitG_Outgoing
  exact h0

private theorem s6Step80ExitBank_checked : compileHmrBankResizeLog .exit s6Step80ExitGBefore ⟨s6Step80ExitFRow,s6Step80ExitGRow,s6Step80ExitFvRow,s6Step80ExitGvRow⟩ ⟨229,227,54,54⟩ [[],[],[],[]]=
    some (s6Step80ExitGvAfter,⟨s6Step80ExitFOut,s6Step80ExitGOut,s6Step80ExitFvOut,s6Step80ExitGvOut⟩,(shrinkRow 777 s6Step80ExitGExtra ++ (shrinkRow 795 s6Step80ExitFExtra ++ (shrinkRow 776 s6Step80ExitFvExtra ++ (shrinkRow 775 s6Step80ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step80ExitBank_rows]
  rfl

private theorem s6Step80Add0_apart : Disjoint s6Step80Add0Arena.live s6Step80Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step80Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step80Add0_card : s6Step80Add0Arena.live.card=870 := by
  decide +kernel

private theorem s6Step80Add0_borrowed : s6Step80Add0Arena.checkBorrow (hmrHybridCount s6Step80Add0Arena s6Step80Add0B.length) s6Step80Add0Work=some s6Step80Add0During := by
  have len : s6Step80Add0Work.length=hmrHybridCount s6Step80Add0Arena s6Step80Add0B.length := by
    rw [hmrHybridCount,s6Step80Add0_card]
    decide +kernel
  have nd : s6Step80Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step80Add0Arena s6Step80Add0During s6Step80Add0Work.toFinset s6Step80Add0_bounded s6Step80Add0_apart rfl

private theorem s6Step80Add0_distinct : (803::862::922::(s6Step80Add0A++s6Step80Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step80Add0_owned : (803::862::922::(s6Step80Add0A++s6Step80Add0B)).toFinset⊆s6Step80Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step80Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step80Add0_checked : compileHmrHybridCinLog s6Step80Add0Arena 862 803 922 s6Step80Add0A s6Step80Add0B s6Step80Add0Work=some s6Step80Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step80Add0Arena s6Step80Add0During 862 803 922 s6Step80Add0A s6Step80Add0B s6Step80Add0Work
    (by decide +kernel) (by decide +kernel) s6Step80Add0_distinct
    (fun q hq => s6Step80Add0_owned (List.mem_toFinset.mpr hq)) s6Step80Add0_borrowed

private theorem s6Step80Add1_apart : Disjoint s6Step80Add1Arena.live s6Step80Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step80Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step80Add1_card : s6Step80Add1Arena.live.card=870 := by
  decide +kernel

private theorem s6Step80Add1_borrowed : s6Step80Add1Arena.checkBorrow (hmrHybridCount s6Step80Add1Arena s6Step80Add1B.length) s6Step80Add1Work=some s6Step80Add1During := by
  have len : s6Step80Add1Work.length=hmrHybridCount s6Step80Add1Arena s6Step80Add1B.length := by
    rw [hmrHybridCount,s6Step80Add1_card]
    decide +kernel
  have nd : s6Step80Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step80Add1Arena s6Step80Add1During s6Step80Add1Work.toFinset s6Step80Add1_bounded s6Step80Add1_apart rfl

private theorem s6Step80Add1_distinct : (803::862::922::(s6Step80Add1A++s6Step80Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step80Add1_owned : (803::862::922::(s6Step80Add1A++s6Step80Add1B)).toFinset⊆s6Step80Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step80Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step80Add1_checked : compileHmrHybridCinLog s6Step80Add1Arena 862 803 922 s6Step80Add1A s6Step80Add1B s6Step80Add1Work=some s6Step80Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step80Add1Arena s6Step80Add1During 862 803 922 s6Step80Add1A s6Step80Add1B s6Step80Add1Work
    (by decide +kernel) (by decide +kernel) s6Step80Add1_distinct
    (fun q hq => s6Step80Add1_owned (List.mem_toFinset.mpr hq)) s6Step80Add1_borrowed

private theorem s6Step80F4_apart : Disjoint (s6Step80Add0A++s6Step80Add0B).toFinset (s6Step80Add1A++s6Step80Add1B).toFinset := by
  have nd : ((s6Step80Add0A++s6Step80Add0B)++(s6Step80Add1A++s6Step80Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step80F4_carry : s6Step80F4FlagArena.checkBorrow 1 [922]=some s6Step80Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step80F4FlagArena,s6Step80HeadFvAfter,arenaWires]
  · change s6Step80Add0Arena.live=(s6Step80HeadFvAfter.live∪{803})∪{922}
    apply hmrArena_union_pair_of_filter_check s6Step80HeadFvAfter s6Step80Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 803 922 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step80F4_distinct : (786::862::803::922::((s6Step80Add0A++s6Step80Add1A)++(s6Step80Add0B++s6Step80Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step80F4_flag : s6Step80HeadFvAfter.checkBorrow 1 [803]=some s6Step80F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step80HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step80F4_owned : (786::862::((s6Step80Add0A++s6Step80Add1A)++(s6Step80Add0B++s6Step80Add1B))).toFinset⊆s6Step80HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step80HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step80F4_checked : compileHmrHybridF4Log s6Step80HeadFvAfter 786 862 s6Step80Add0A s6Step80Add0B s6Step80Add1A s6Step80Add1B [803] [922] s6Step80Add0Work s6Step80Add1Work=some s6Step80F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step80HeadFvAfter s6Step80F4FlagArena s6Step80Add0Arena s6Step80Add0During s6Step80Add1During 786 862
    s6Step80Add0A s6Step80Add0B s6Step80Add1A s6Step80Add1B [803] [922] s6Step80Add0Work s6Step80Add1Work
    (fun q hq => s6Step80F4_owned (List.mem_toFinset.mpr hq)) s6Step80F4_flag s6Step80F4_carry
    s6Step80F4_distinct s6Step80F4_apart s6Step80Add0_checked s6Step80Add1_checked

private theorem s6Step80Front_branch : s6Step80FrontSigmaArena.checkBorrow 1 [862]=some s6Step80HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step80FrontSigmaArena,s6Step80EntryGvAfter,s6Step80EntryFvAfter,arenaWires]
  · change s6Step80HeadGBefore.live=(s6Step80EntryGvAfter.live∪{786})∪{862}
    apply hmrArena_union_pair_of_filter_check s6Step80EntryGvAfter s6Step80HeadGBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 786 862 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step80Front_entry : HmrFrontEntryValid s6Step80EntryFBefore s6Step80FrontBank 229 54 ⟨229,227,54,54⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step80FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step80EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step80EntryFBefore (fun q => ([(0,780),(781,782),(785,786),(788,790),(793,794),(795,797),(799,800),(802,803),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,860),(861,862),(863,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step80FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step80Front_sigma : s6Step80EntryGvAfter.checkBorrow 1 [786]=some s6Step80FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step80EntryGvAfter,s6Step80EntryFvAfter,arenaWires]
  · rfl

private def s6Step80HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step80HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step80HeadFBefore : Arena := s6Step80HeadGAfter

private def s6Step80HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484],795⟩

private def s6Step80HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807],776⟩

private def s6Step80HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 860],777⟩

private def s6Step80HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869],775⟩

private theorem s6Step80HeadBank_incomingDistinct : ([s6Step80HeadGRow,s6Step80HeadFRow,s6Step80HeadGvRow,s6Step80HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step80HeadF_Incoming : rowsOwned s6Step80HeadFBefore [s6Step80HeadFRow,s6Step80HeadGvRow,s6Step80HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step80HeadGRow,s6Step80HeadFRow,s6Step80HeadGvRow,s6Step80HeadFvRow] 1 s6Step80HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step80HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step80HeadBank_outgoingOwned : rowsOwned s6Step80HeadFvAfter [s6Step80HeadGOut,s6Step80HeadFOut,s6Step80HeadGvOut,s6Step80HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step80HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step80HeadF_Outgoing : rowsOwned s6Step80HeadFvAfter [s6Step80HeadFOut,s6Step80HeadGvOut,s6Step80HeadFvOut] :=
  hmrRows_owned_drop s6Step80HeadFvAfter [s6Step80HeadGOut,s6Step80HeadFOut,s6Step80HeadGvOut,s6Step80HeadFvOut] 1 s6Step80HeadBank_outgoingOwned

private theorem s6Step80HeadF_distinct : (s6Step80HeadFRow.sign::s6Step80HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step80HeadF_owned : (s6Step80HeadFRow.sign::s6Step80HeadFRow.payload).toFinset⊆s6Step80HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step80HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step80HeadF_reserved : s6Step80HeadFBefore.reserve s6Step80HeadFFresh.toFinset=some s6Step80HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step80HeadFFresh,arenaWires]
  · norm_num [s6Step80HeadFBefore,s6Step80HeadGAfter,s6Step80HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step80HeadFBefore s6Step80HeadFAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step80HeadFFresh rfl rfl
    · norm_num [s6Step80HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step80HeadF_checked : planRowResizeLog s6Step80HeadFBefore s6Step80HeadFRow 230 s6Step80HeadFFresh=
    some (s6Step80HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 877],795⟩,growRow 795 s6Step80HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step80HeadFBefore s6Step80HeadFAfter s6Step80HeadFRow 230 s6Step80HeadFFresh
    s6Step80HeadF_distinct s6Step80HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step80HeadF_reserved
  have rowEq : WindowRow.mk (s6Step80HeadFRow.payload++s6Step80HeadFFresh) s6Step80HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 877],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step80HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step80HeadFvBefore : Arena := s6Step80HeadGvAfter

private theorem s6Step80HeadFv_Incoming : rowsOwned s6Step80HeadFvBefore [s6Step80HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step80HeadGRow,s6Step80HeadFRow,s6Step80HeadGvRow,s6Step80HeadFvRow] 3 s6Step80HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step80HeadFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step80HeadFv_Outgoing : rowsOwned s6Step80HeadFvAfter [s6Step80HeadFvOut] :=
  hmrRows_owned_drop s6Step80HeadFvAfter [s6Step80HeadGOut,s6Step80HeadFOut,s6Step80HeadGvOut,s6Step80HeadFvOut] 3 s6Step80HeadBank_outgoingOwned

private theorem s6Step80HeadFv_distinct : (s6Step80HeadFvRow.sign::s6Step80HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step80HeadFv_owned : (s6Step80HeadFvRow.sign::s6Step80HeadFvRow.payload).toFinset⊆s6Step80HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step80HeadFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step80HeadFv_reserved : s6Step80HeadFvBefore.reserve s6Step80HeadFvFresh.toFinset=some s6Step80HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step80HeadFvFresh,arenaWires]
  · norm_num [s6Step80HeadFvBefore,s6Step80HeadGvAfter,s6Step80HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step80HeadFvBefore s6Step80HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step80HeadFvFresh rfl rfl
    · norm_num [s6Step80HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step80HeadFv_checked : planRowResizeLog s6Step80HeadFvBefore s6Step80HeadFvRow 55 s6Step80HeadFvFresh=
    some (s6Step80HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 780],776⟩,growRow 776 s6Step80HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step80HeadFvBefore s6Step80HeadFvAfter s6Step80HeadFvRow 55 s6Step80HeadFvFresh
    s6Step80HeadFv_distinct s6Step80HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step80HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step80HeadFvRow.payload++s6Step80HeadFvFresh) s6Step80HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 780],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step80HeadG_Incoming : rowsOwned s6Step80HeadGBefore [s6Step80HeadGRow,s6Step80HeadFRow,s6Step80HeadGvRow,s6Step80HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step80HeadGRow,s6Step80HeadFRow,s6Step80HeadGvRow,s6Step80HeadFvRow] 0 s6Step80HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step80HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step80HeadG_Outgoing : rowsOwned s6Step80HeadFvAfter [s6Step80HeadGOut,s6Step80HeadFOut,s6Step80HeadGvOut,s6Step80HeadFvOut] :=
  hmrRows_owned_drop s6Step80HeadFvAfter [s6Step80HeadGOut,s6Step80HeadFOut,s6Step80HeadGvOut,s6Step80HeadFvOut] 0 s6Step80HeadBank_outgoingOwned

private theorem s6Step80HeadG_distinct : (s6Step80HeadGRow.sign::s6Step80HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step80HeadG_owned : (s6Step80HeadGRow.sign::s6Step80HeadGRow.payload).toFinset⊆s6Step80HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step80HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step80HeadG_reserved : s6Step80HeadGBefore.reserve s6Step80HeadGFresh.toFinset=some s6Step80HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step80HeadGFresh,arenaWires]
  · norm_num [s6Step80HeadGBefore,s6Step80HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step80HeadGBefore s6Step80HeadGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step80HeadGFresh rfl rfl
    · norm_num [s6Step80HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step80HeadG_checked : planRowResizeLog s6Step80HeadGBefore s6Step80HeadGRow 230 s6Step80HeadGFresh=
    some (s6Step80HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 860, 855],777⟩,growRow 777 s6Step80HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step80HeadGBefore s6Step80HeadGAfter s6Step80HeadGRow 230 s6Step80HeadGFresh
    s6Step80HeadG_distinct s6Step80HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step80HeadG_reserved
  have rowEq : WindowRow.mk (s6Step80HeadGRow.payload++s6Step80HeadGFresh) s6Step80HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 860, 855],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step80HeadGvBefore : Arena := s6Step80HeadFAfter

private theorem s6Step80HeadGv_Incoming : rowsOwned s6Step80HeadGvBefore [s6Step80HeadGvRow,s6Step80HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step80HeadGRow,s6Step80HeadFRow,s6Step80HeadGvRow,s6Step80HeadFvRow] 2 s6Step80HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step80HeadGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step80HeadGv_Outgoing : rowsOwned s6Step80HeadFvAfter [s6Step80HeadGvOut,s6Step80HeadFvOut] :=
  hmrRows_owned_drop s6Step80HeadFvAfter [s6Step80HeadGOut,s6Step80HeadFOut,s6Step80HeadGvOut,s6Step80HeadFvOut] 2 s6Step80HeadBank_outgoingOwned

private theorem s6Step80HeadGv_distinct : (s6Step80HeadGvRow.sign::s6Step80HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step80HeadGv_owned : (s6Step80HeadGvRow.sign::s6Step80HeadGvRow.payload).toFinset⊆s6Step80HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step80HeadGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step80HeadGv_reserved : s6Step80HeadGvBefore.reserve s6Step80HeadGvFresh.toFinset=some s6Step80HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step80HeadGvFresh,arenaWires]
  · norm_num [s6Step80HeadGvBefore,s6Step80HeadFAfter,s6Step80HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step80HeadGvBefore s6Step80HeadGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,794),(795,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step80HeadGvFresh rfl rfl
    · norm_num [s6Step80HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step80HeadGv_checked : planRowResizeLog s6Step80HeadGvBefore s6Step80HeadGvRow 55 s6Step80HeadGvFresh=
    some (s6Step80HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 794],775⟩,growRow 775 s6Step80HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step80HeadGvBefore s6Step80HeadGvAfter s6Step80HeadGvRow 55 s6Step80HeadGvFresh
    s6Step80HeadGv_distinct s6Step80HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step80HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step80HeadGvRow.payload++s6Step80HeadGvFresh) s6Step80HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 794],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step80HeadBank_rows : planWindowRowsLog s6Step80HeadGBefore [(s6Step80HeadGRow,230),(s6Step80HeadFRow,230),(s6Step80HeadGvRow,55),(s6Step80HeadFvRow,55)] [s6Step80HeadGFresh,s6Step80HeadFFresh,s6Step80HeadGvFresh,s6Step80HeadFvFresh]=
    some (s6Step80HeadFvAfter,[s6Step80HeadGOut,s6Step80HeadFOut,s6Step80HeadGvOut,s6Step80HeadFvOut],(growRow 777 s6Step80HeadGFresh ++ (growRow 795 s6Step80HeadFFresh ++ (growRow 775 s6Step80HeadGvFresh ++ (growRow 776 s6Step80HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step80HeadFvAfter [] []=some (s6Step80HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step80HeadFvBefore s6Step80HeadFvAfter s6Step80HeadFvAfter
    s6Step80HeadFvRow s6Step80HeadFvOut 55 s6Step80HeadFvFresh [] [] []
    (growRow 776 s6Step80HeadFvFresh) ([]) s6Step80HeadFv_Incoming s6Step80HeadFv_checked h4 s6Step80HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step80HeadGvBefore s6Step80HeadGvAfter s6Step80HeadFvAfter
    s6Step80HeadGvRow s6Step80HeadGvOut 55 s6Step80HeadGvFresh [(s6Step80HeadFvRow,55)] [s6Step80HeadFvFresh] [s6Step80HeadFvOut]
    (growRow 775 s6Step80HeadGvFresh) ((growRow 776 s6Step80HeadFvFresh ++ [])) s6Step80HeadGv_Incoming s6Step80HeadGv_checked h3 s6Step80HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step80HeadFBefore s6Step80HeadFAfter s6Step80HeadFvAfter
    s6Step80HeadFRow s6Step80HeadFOut 230 s6Step80HeadFFresh [(s6Step80HeadGvRow,55),(s6Step80HeadFvRow,55)] [s6Step80HeadGvFresh,s6Step80HeadFvFresh] [s6Step80HeadGvOut,s6Step80HeadFvOut]
    (growRow 795 s6Step80HeadFFresh) ((growRow 775 s6Step80HeadGvFresh ++ (growRow 776 s6Step80HeadFvFresh ++ []))) s6Step80HeadF_Incoming s6Step80HeadF_checked h2 s6Step80HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step80HeadGBefore s6Step80HeadGAfter s6Step80HeadFvAfter
    s6Step80HeadGRow s6Step80HeadGOut 230 s6Step80HeadGFresh [(s6Step80HeadFRow,230),(s6Step80HeadGvRow,55),(s6Step80HeadFvRow,55)] [s6Step80HeadFFresh,s6Step80HeadGvFresh,s6Step80HeadFvFresh] [s6Step80HeadFOut,s6Step80HeadGvOut,s6Step80HeadFvOut]
    (growRow 777 s6Step80HeadGFresh) ((growRow 795 s6Step80HeadFFresh ++ (growRow 775 s6Step80HeadGvFresh ++ (growRow 776 s6Step80HeadFvFresh ++ [])))) s6Step80HeadG_Incoming s6Step80HeadG_checked h1 s6Step80HeadG_Outgoing
  exact h0

private theorem s6Step80HeadBank_checked : compileHmrBankResizeLog .headroom s6Step80HeadGBefore ⟨s6Step80HeadFRow,s6Step80HeadGRow,s6Step80HeadFvRow,s6Step80HeadGvRow⟩ ⟨230,230,55,55⟩ [s6Step80HeadGFresh,s6Step80HeadFFresh,s6Step80HeadGvFresh,s6Step80HeadFvFresh]=
    some (s6Step80HeadFvAfter,⟨s6Step80HeadFOut,s6Step80HeadGOut,s6Step80HeadFvOut,s6Step80HeadGvOut⟩,(growRow 777 s6Step80HeadGFresh ++ (growRow 795 s6Step80HeadFFresh ++ (growRow 775 s6Step80HeadGvFresh ++ (growRow 776 s6Step80HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step80HeadBank_rows]
  rfl

private theorem s6Step80Front_checked : compileHmrSourceFrontLog s6Step80EntryFBefore s6Step80FrontBank 229 54 ⟨229,227,54,54⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step80FrontLog=some s6Step80FrontPlan := by
  have pairEq : s6Step80FrontPair=⟨s6Step80HeadFRow,s6Step80HeadGRow,s6Step80HeadFvRow,s6Step80HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step80FrontHead=⟨s6Step80ExitFRow,s6Step80ExitGRow,s6Step80ExitFvRow,s6Step80ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step80Add0A=s6Step80FrontHead.f.wires := by decide +kernel
  have gEq : s6Step80Add0B=s6Step80FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step80Add1A=s6Step80FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step80Add1B=s6Step80FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step80EntryFBefore s6Step80FrontBank 229 54 ⟨229,227,54,54⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step80FrontLog s6Step80FrontPlan
  · exact s6Step80Front_entry
  · exact s6Step80EntryBank_checked
  · exact s6Step80Front_sigma
  · rfl
  · exact s6Step80Front_branch
  · rfl
  · simpa only [s6Step80FrontPlan,pairEq] using s6Step80HeadBank_checked
  · simpa only [s6Step80FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step80F4_checked
  · exact s6Step80Counter_checked
  · rfl
  · simpa only [s6Step80FrontPlan,headEq] using s6Step80ExitBank_checked

private theorem s6Step80Complete_explicit_checked : compileHmrEarlyStepLog s6Step80EntryFBefore s6Step80FrontBank 229 54 ⟨229,227,54,54⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step80CompleteLog=some s6Step80CompletePlan := by
  let Q := s6Step80EarlyControlPlan
  have hq := s6Step80EarlyControl_plan_checked
  have fv1 : s6Step80CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step80CompleteOut.fv.payload[2]?.getD s6Step80CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step80CompleteOut.fv.payload[3]?.getD s6Step80CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step80CompleteOut.fv.payload[4]?.getD s6Step80CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step80EntryFBefore s6Step80EarlyControlArena s6Step80FrontBank 229 54 ⟨229,227,54,54⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step80CompleteLog s6Step80FrontPlan Q
    s6Step80Front_checked s6Step80Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step80Complete_owned s6Step80Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step80EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 786 s6Step80CompleteOut.fv.second (s6Step80CompleteOut.fv.payload[2]?.getD s6Step80CompleteOut.fv.sign) (s6Step80CompleteOut.fv.payload[3]?.getD s6Step80CompleteOut.fv.sign) (s6Step80CompleteOut.fv.payload[4]?.getD s6Step80CompleteOut.fv.sign) 862 30 s6Step80EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep80Arena : Arena := s6Step80EntryFBefore
def s6PrivateStep80Bank : WindowBank := s6Step80FrontBank
def s6PrivateStep80Spec : HmrSourceWalkStepLog := ⟨229,54,⟨229,227,54,54⟩,30,.early s6Step80CompleteLog⟩
def s6PrivateStep80Plan : HmrSourceStepPlan := .early s6Step80CompletePlan
theorem s6PrivateStep80_source : s6PrivateStep80Spec=s6ObservedLogs80[0] := rfl
theorem s6PrivateStep80_checked : compileHmrSourceStepLog s6PrivateStep80Arena s6PrivateStep80Bank
    s6PrivateStep80Spec.fgWidth s6PrivateStep80Spec.vWidth s6PrivateStep80Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902]
    6 498 80 s6PrivateStep80Spec.need none s6PrivateStep80Spec.log=some s6PrivateStep80Plan := by
  change compileHmrSourceStepLog s6Step80EntryFBefore s6Step80FrontBank 229 54 ⟨229,227,54,54⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 6 498 80 30 none (.early s6Step80CompleteLog)=some (.early s6Step80CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 80<498)]
  rw [s6Step80Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
