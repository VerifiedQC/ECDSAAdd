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

private def s6Step65CompleteMoves : List (Wire × Wire) := [(843,235),(869,491)]

private def s6Step65EarlyControlLog : HmrEarlyControlLog := ⟨[869, 843, 877, 875, 822],[821],[780],[855, 803, 922, 879, 784, 891],[846]⟩

private def s6Step65FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [833], []],[[821], [822], [877], [875]],[[], [], [], []]⟩,[838],[814],[780],[855],[803, 922, 879, 784, 891, 846, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[803, 922, 879, 784, 891, 846, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815],[780, 855, 803, 922]⟩

private def s6Step65CompleteLog : HmrEarlyStepLog := ⟨s6Step65FrontLog,s6Step65CompleteMoves,s6Step65EarlyControlLog⟩

private def s6Step65ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490],795⟩

private def s6Step65ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833],776⟩

private def s6Step65ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234],777⟩

private def s6Step65ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888],775⟩

private def s6Step65FrontOut : WindowBank := ⟨s6Step65ExitFOut,s6Step65ExitGOut,s6Step65ExitFvOut,s6Step65ExitGvOut⟩

private def s6Step65CompleteOut : WindowBank := s6Step65FrontOut.repacked s6Step65CompleteMoves

private def s6Step65EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,846),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step65EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step65EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step65EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step65EarlyControlPositiveArena,[821],s6Step65EarlyControlEqualityArena,[780],⟨⟨838,false⟩,[⟨⟨821,false⟩,780⟩]⟩⟩

private def s6Step65EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step65EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step65EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step65EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step65EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step65EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step65EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,869⟩,⟨⟨772,false⟩,843⟩,⟨⟨771,false⟩,877⟩,⟨⟨770,false⟩,875⟩,⟨⟨769,false⟩,822⟩]⟩

private def s6Step65EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step65EarlyControlZeroArena,s6Step65EarlyControlZeroPlan,s6Step65EarlyControlClassPlan,s6Step65EarlyControlFlagArena,s6Step65EarlyControlFittedArena,s6Step65EarlyControlHistoryArena,s6Step65EarlyControlSigmaArena,s6Step65EarlyControlOutputArena,s6Step65EarlyControlLog⟩

private def s6Step65CounterWork : List Wire := [780, 855, 803, 922]

private theorem s6Step65Counter_bounded : s6Step65CounterWork.toFinset⊆arenaWires := by norm_num [s6Step65CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step65HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step65CounterDuring : Arena := ⟨s6Step65HeadFvAfter.live∪s6Step65CounterWork.toFinset,Finset.union_subset s6Step65HeadFvAfter.bounded s6Step65Counter_bounded⟩

private def s6Step65EntryFFresh : List Wire := []

private def s6Step65EntryFvFresh : List Wire := [833]

private def s6Step65EntryGFresh : List Wire := []

private def s6Step65EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step65EntryGvAfter : Arena := s6Step65EntryFvAfter

private def s6Step65EntryGvFresh : List Wire := []

private def s6Step65ExitFExtra : List Wire := [491, 822]

private def s6Step65ExitFvExtra : List Wire := [875]

private def s6Step65ExitGExtra : List Wire := [235, 821]

private def s6Step65ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,235),(236,491),(492,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step65ExitGvExtra : List Wire := [877]

private def s6Step65Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step65Add0Work : List Wire := [803, 922, 879, 784, 891, 846, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step65Add0_bounded : s6Step65Add0Work.toFinset⊆arenaWires := by
  have h : s6Step65Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step65Add0During : Arena := ⟨s6Step65Add0Arena.live∪s6Step65Add0Work.toFinset,Finset.union_subset s6Step65Add0Arena.bounded s6Step65Add0_bounded⟩

private def s6Step65Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step65Add1Work : List Wire := [803, 922, 879, 784, 891, 846, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815]

private theorem s6Step65Add1_bounded : s6Step65Add1Work.toFinset⊆arenaWires := by
  have h : s6Step65Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step65Add1During : Arena := ⟨s6Step65Add1Arena.live∪s6Step65Add1Work.toFinset,Finset.union_subset s6Step65Add1Arena.bounded s6Step65Add1_bounded⟩

private def s6Step65F4FlagArena : Arena := ⟨s6Step65HeadFvAfter.live∪{780},Finset.union_subset s6Step65HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step65F4Plan : HmrHybridF4Plan := ⟨s6Step65F4FlagArena,[780],s6Step65Add0Arena,[855],s6Step65Add0During,s6Step65Add0Work,s6Step65Add1During,s6Step65Add1Work⟩

private def s6Step65HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 822],795⟩

private def s6Step65HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875],776⟩

private def s6Step65HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 821],777⟩

private def s6Step65HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 877],775⟩

private def s6Step65FrontHead : WindowBank := ⟨s6Step65HeadFOut,s6Step65HeadGOut,s6Step65HeadFvOut,s6Step65HeadGvOut⟩

private def s6Step65EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491],795⟩

private def s6Step65EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833],776⟩

private def s6Step65EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235],777⟩

private def s6Step65EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888],775⟩

private def s6Step65FrontPair : WindowBank := ⟨s6Step65EntryFOut,s6Step65EntryGOut,s6Step65EntryFvOut,s6Step65EntryGvOut⟩

private def s6Step65FrontSigmaArena : Arena := ⟨s6Step65EntryGvAfter.live∪{838},Finset.union_subset s6Step65EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step65HeadFFresh : List Wire := [822]

private def s6Step65HeadFvFresh : List Wire := [875]

private def s6Step65HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step65HeadGFresh : List Wire := [821]

private def s6Step65HeadGvFresh : List Wire := [877]

private def s6Step65FrontPlan : HmrSourceFront := ⟨s6Step65EntryGvAfter,s6Step65FrontPair,(growRow 795 s6Step65EntryFFresh ++ (growRow 777 s6Step65EntryGFresh ++ (growRow 776 s6Step65EntryFvFresh ++ (growRow 775 s6Step65EntryGvFresh ++ [])))),s6Step65FrontSigmaArena,[838],s6Step65HeadGBefore,[814],
  s6Step65HeadFvAfter,s6Step65FrontHead,(growRow 777 s6Step65HeadGFresh ++ (growRow 795 s6Step65HeadFFresh ++ (growRow 775 s6Step65HeadGvFresh ++ (growRow 776 s6Step65HeadFvFresh ++ [])))),s6Step65F4Plan,s6Step65CounterDuring,s6Step65CounterWork,s6Step65ExitGvAfter,s6Step65FrontOut,(shrinkRow 777 s6Step65ExitGExtra ++ (shrinkRow 795 s6Step65ExitFExtra ++ (shrinkRow 776 s6Step65ExitFvExtra ++ (shrinkRow 775 s6Step65ExitGvExtra ++ []))))⟩

private def s6Step65CompletePlan : HmrEarlyStepPlan := ⟨s6Step65FrontPlan,s6Step65EarlyControlArena,s6Step65EarlyControlPlan,s6Step65CompleteMoves⟩

private theorem s6Step65Complete_apart : List.Disjoint (s6Step65CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [838, 814, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806] := by
  have nd : ((s6Step65CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[838, 814, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step65Complete_owned : (s6Step65CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step65EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step65EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,846),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step65CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,491),(492,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step65CompleteRelocationMove0Borrowed : Arena := ⟨s6Step65ExitGvAfter.live∪{235},Finset.union_subset s6Step65ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step65CompleteRelocationMove1Borrowed : Arena := ⟨s6Step65CompleteRelocationMove0After.live∪{491},Finset.union_subset s6Step65CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step65CompleteRelocation_move0_owned : 843∈s6Step65ExitGvAfter.live := by norm_num [s6Step65ExitGvAfter,arenaWires]

private theorem s6Step65CompleteRelocation_move0_reserve : s6Step65ExitGvAfter.reserve {235}=some s6Step65CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step65ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step65CompleteRelocation_move0_retire : s6Step65CompleteRelocationMove0Borrowed.retireSet {843}=s6Step65CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step65CompleteRelocationMove0Borrowed s6Step65CompleteRelocationMove0After {843}
  change s6Step65CompleteRelocationMove0After.live=(s6Step65ExitGvAfter.live∪{235})\{843}
  apply hmrArena_update_of_filter_check s6Step65ExitGvAfter s6Step65CompleteRelocationMove0After (fun q => ([(0,235),(236,491),(492,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,491),(492,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [235] [843] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step65CompleteRelocation_move1_owned : 869∈s6Step65CompleteRelocationMove0After.live := by norm_num [s6Step65CompleteRelocationMove0After,arenaWires]

private theorem s6Step65CompleteRelocation_move1_reserve : s6Step65CompleteRelocationMove0After.reserve {491}=some s6Step65CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step65CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step65CompleteRelocation_move1_retire : s6Step65CompleteRelocationMove1Borrowed.retireSet {869}=s6Step65EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step65CompleteRelocationMove1Borrowed s6Step65EarlyControlArena {869}
  change s6Step65EarlyControlArena.live=(s6Step65CompleteRelocationMove0After.live∪{491})\{869}
  apply hmrArena_update_of_filter_check s6Step65CompleteRelocationMove0After s6Step65EarlyControlArena (fun q => ([(0,491),(492,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,846),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [491] [869] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step65CompleteRelocation_checked : s6Step65ExitGvAfter.checkRepack [(843,235),(869,491)]=some s6Step65EarlyControlArena := by
  have tail2 : s6Step65EarlyControlArena.checkRepack []=some s6Step65EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step65CompleteRelocationMove0After s6Step65CompleteRelocationMove1Borrowed s6Step65EarlyControlArena s6Step65EarlyControlArena 869 491 []
    s6Step65CompleteRelocation_move1_owned s6Step65CompleteRelocation_move1_reserve s6Step65CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step65ExitGvAfter s6Step65CompleteRelocationMove0Borrowed s6Step65CompleteRelocationMove0After s6Step65EarlyControlArena 843 235 [(869,491)]
    s6Step65CompleteRelocation_move0_owned s6Step65CompleteRelocation_move0_reserve s6Step65CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step65Complete_repack : s6Step65ExitGvAfter.checkRepack s6Step65CompleteMoves=some s6Step65EarlyControlArena := by
  simpa only [s6Step65CompleteMoves] using s6Step65CompleteRelocation_checked

private theorem s6Step65EarlyControl_branchOwned : ([814] : List Wire).toFinset⊆s6Step65EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step65EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step65EarlyControl_branch : compileHmrBranchRetirement s6Step65EarlyControlSigmaArena 814=some s6Step65EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step65EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step65EarlyControlSigmaArena s6Step65EarlyControlOutputArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [814] rfl rfl
    decide +kernel

private theorem s6Step65EarlyControl_classEqualityBorrow : s6Step65EarlyControlPositiveArena.checkBorrow (([838, 821] : List Wire).length-1) s6Step65EarlyControlLog.classWork=some s6Step65EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step65EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step65EarlyControlPositiveArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step65EarlyControlPositiveArena s6Step65EarlyControlEqualityArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step65EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step65EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step65EarlyControl_classEqualityOwned : ([838, 821] : List Wire).toFinset⊆s6Step65EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step65EarlyControlPositiveArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step65EarlyControl_classEquality : compileHmrEqualityLog s6Step65EarlyControlPositiveArena [838, 821] 0 s6Step65EarlyControlLog.classWork=some (s6Step65EarlyControlEqualityArena,s6Step65EarlyControlLog.classWork,s6Step65EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step65EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step65EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step65EarlyControl_classOwned : ([769, 822, 838] : List Wire).toFinset⊆s6Step65EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step65EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step65EarlyControl_positiveBorrow : s6Step65EarlyControlZeroArena.checkBorrow (1) s6Step65EarlyControlLog.positiveWork=some s6Step65EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step65EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step65EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step65EarlyControlZeroArena s6Step65EarlyControlPositiveArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step65EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step65EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step65EarlyControl_class : compileHmrSourceClassLog s6Step65EarlyControlZeroArena false 769 s6Step65EarlyControlZeroPlan.top 0 838 s6Step65EarlyControlLog.positiveWork s6Step65EarlyControlLog.classWork=some s6Step65EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step65EarlyControlClassPlan s6Step65EarlyControlZeroArena false 769 s6Step65EarlyControlZeroPlan.top 0 838
  constructor
  · decide +kernel
  · exact s6Step65EarlyControl_classOwned
  · exact s6Step65EarlyControl_positiveBorrow
  · exact s6Step65EarlyControl_classEquality

private theorem s6Step65EarlyControl_entryRecordOwned : ([814, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806] : List Wire).toFinset⊆s6Step65EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step65EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,846),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step65EarlyControl_entrySigmaOwned : ([838, 254] : List Wire).toFinset⊆s6Step65EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step65EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,846),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step65EarlyControl_fitBorrow : s6Step65EarlyControlFlagArena.checkBorrow ((29-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806] : List Wire).length)) s6Step65EarlyControlLog.recordFresh=some s6Step65EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step65EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step65EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step65EarlyControlFittedArena,s6Step65EarlyControlFlagArena,s6Step65EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step65EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806] : List Wire).toFinset⊆s6Step65EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step65EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step65EarlyControl_fit : compileHmrRecordGrowLog s6Step65EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806] 29 s6Step65EarlyControlLog.recordFresh=some s6Step65EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step65EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step65EarlyControl_fitBorrow

private theorem s6Step65EarlyControl_flagsBorrow : s6Step65EarlyControlEqualityArena.checkBorrow (6) s6Step65EarlyControlLog.flagWork=some s6Step65EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step65EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step65EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step65EarlyControlEqualityArena s6Step65EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step65EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step65EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step65EarlyControl_flagsOwned : ([780, 253, 252, 251] : List Wire).toFinset⊆s6Step65EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step65EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step65EarlyControl_flags : compileHmrFlagsLog s6Step65EarlyControlClassPlan.equalityArena s6Step65EarlyControlClassPlan.equality.top 253 252 251 s6Step65EarlyControlLog.flagWork=some s6Step65EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step65EarlyControl_flagsOwned⟩
  · exact s6Step65EarlyControl_flagsBorrow

private theorem s6Step65EarlyControl_historyBorrow : s6Step65EarlyControlArena.checkBorrow ((29-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806] : List Wire).length)) s6Step65EarlyControlLog.recordFresh=some s6Step65EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step65EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step65EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,846),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step65EarlyControlArena s6Step65EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,846),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step65EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step65EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step65EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806] : List Wire).toFinset⊆s6Step65EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step65EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,846),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step65EarlyControl_history : compileHmrRecordGrowLog s6Step65EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806] 29 s6Step65EarlyControlLog.recordFresh=some s6Step65EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step65EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step65EarlyControl_historyBorrow

private theorem s6Step65EarlyControl_sigmaOwned : ([254, 838] : List Wire).toFinset⊆s6Step65EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step65EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step65EarlyControl_sigmaReleaseOwned : ([838] : List Wire).toFinset⊆s6Step65EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step65EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step65EarlyControl_sigmaRelease : s6Step65EarlyControlHistoryArena.release {838} (fun _ => false)=some s6Step65EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step65EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step65EarlyControlHistoryArena s6Step65EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [838] rfl rfl
    decide +kernel

private theorem s6Step65EarlyControl_sigma : compileHmrSigmaDropLog s6Step65EarlyControlHistoryArena false 0 0 254 838 []=some s6Step65EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step65EarlyControl_sigmaOwned⟩
  · exact s6Step65EarlyControl_sigmaRelease

private theorem s6Step65EarlyControl_zeroBorrow : s6Step65EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step65EarlyControlLog.zeroWork=some s6Step65EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step65EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step65EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,846),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step65EarlyControlArena s6Step65EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,846),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step65EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step65EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step65EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step65EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step65EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,846),(848,849),(850,855),(856,869),(870,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step65EarlyControl_zero : compileHmrEqualityLog s6Step65EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step65EarlyControlLog.zeroWork=some (s6Step65EarlyControlZeroArena,s6Step65EarlyControlLog.zeroWork,s6Step65EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step65EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step65EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step65EarlyControl_logged : s6Step65EarlyControlPlan.Logged s6Step65EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806] 769 838 254 253 252 251 814 29 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step65EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step65EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step65EarlyControl_zero
  · exact s6Step65EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step65EarlyControl_flags
  · exact s6Step65EarlyControl_fit
  · exact s6Step65EarlyControl_history
  · exact s6Step65EarlyControl_sigma
  · exact s6Step65EarlyControl_branch

private theorem s6Step65EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step65EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806] 769 838 254 253 252 251 814 29 s6Step65EarlyControlLog=some s6Step65EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step65EarlyControlPlan s6Step65EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806] 769 838 254 253 252 251 814 29 s6Step65EarlyControl_logged

private def s6Step65EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step65EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491],795⟩

private def s6Step65EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886],776⟩

private def s6Step65EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235],777⟩

private def s6Step65EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888],775⟩

private def s6Step65FrontBank : WindowBank := ⟨s6Step65EntryFRow,s6Step65EntryGRow,s6Step65EntryFvRow,s6Step65EntryGvRow⟩

private def s6Step65Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 822, 795]

private def s6Step65Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 821, 777]

private def s6Step65Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 776]

private def s6Step65Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 877, 775]

private theorem s6Step65Counter_apart : Disjoint s6Step65HeadFvAfter.live s6Step65CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step65HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step65Counter_borrowed : s6Step65HeadFvAfter.checkBorrow 4 s6Step65CounterWork=some s6Step65CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step65HeadFvAfter s6Step65CounterDuring s6Step65CounterWork.toFinset s6Step65Counter_bounded s6Step65Counter_apart rfl

private theorem s6Step65Counter_owned : (838::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step65HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step65HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step65Counter_checked : compileHmrCounterStepLog s6Step65HeadFvAfter true 838 [774, 773, 772, 771, 770, 769] s6Step65CounterWork=some s6Step65CounterDuring := by
  have owned : ∀q∈838::[774, 773, 772, 771, 770, 769],q∈s6Step65HeadFvAfter.live := fun q hq => s6Step65Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step65Counter_borrowed

private def s6Step65EntryFAfter : Arena := s6Step65EntryFBefore

private theorem s6Step65EntryBank_incomingDistinct : ([s6Step65EntryFRow,s6Step65EntryGRow,s6Step65EntryFvRow,s6Step65EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step65EntryF_Incoming : rowsOwned s6Step65EntryFBefore [s6Step65EntryFRow,s6Step65EntryGRow,s6Step65EntryFvRow,s6Step65EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step65EntryFRow,s6Step65EntryGRow,s6Step65EntryFvRow,s6Step65EntryGvRow] 0 s6Step65EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step65EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step65EntryBank_outgoingOwned : rowsOwned s6Step65EntryGvAfter [s6Step65EntryFOut,s6Step65EntryGOut,s6Step65EntryFvOut,s6Step65EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step65EntryGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step65EntryF_Outgoing : rowsOwned s6Step65EntryGvAfter [s6Step65EntryFOut,s6Step65EntryGOut,s6Step65EntryFvOut,s6Step65EntryGvOut] :=
  hmrRows_owned_drop s6Step65EntryGvAfter [s6Step65EntryFOut,s6Step65EntryGOut,s6Step65EntryFvOut,s6Step65EntryGvOut] 0 s6Step65EntryBank_outgoingOwned

private theorem s6Step65EntryF_distinct : (s6Step65EntryFRow.sign::s6Step65EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step65EntryF_owned : (s6Step65EntryFRow.sign::s6Step65EntryFRow.payload).toFinset⊆s6Step65EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step65EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step65EntryF_reserved : s6Step65EntryFBefore.reserve s6Step65EntryFFresh.toFinset=some s6Step65EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step65EntryFFresh,arenaWires]
  · norm_num [s6Step65EntryFBefore,s6Step65EntryFFresh,arenaWires]
  · simp only [s6Step65EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step65EntryF_checked : planRowResizeLog s6Step65EntryFBefore s6Step65EntryFRow 236 s6Step65EntryFFresh=
    some (s6Step65EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491],795⟩,growRow 795 s6Step65EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step65EntryFBefore s6Step65EntryFAfter s6Step65EntryFRow 236 s6Step65EntryFFresh
    s6Step65EntryF_distinct s6Step65EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step65EntryF_reserved
  have rowEq : WindowRow.mk (s6Step65EntryFRow.payload++s6Step65EntryFFresh) s6Step65EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step65EntryFvBefore : Arena := s6Step65EntryFBefore

private theorem s6Step65EntryFv_Incoming : rowsOwned s6Step65EntryFvBefore [s6Step65EntryFvRow,s6Step65EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step65EntryFRow,s6Step65EntryGRow,s6Step65EntryFvRow,s6Step65EntryGvRow] 2 s6Step65EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step65EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step65EntryFv_Outgoing : rowsOwned s6Step65EntryGvAfter [s6Step65EntryFvOut,s6Step65EntryGvOut] :=
  hmrRows_owned_drop s6Step65EntryGvAfter [s6Step65EntryFOut,s6Step65EntryGOut,s6Step65EntryFvOut,s6Step65EntryGvOut] 2 s6Step65EntryBank_outgoingOwned

private theorem s6Step65EntryFv_distinct : (s6Step65EntryFvRow.sign::s6Step65EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step65EntryFv_owned : (s6Step65EntryFvRow.sign::s6Step65EntryFvRow.payload).toFinset⊆s6Step65EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step65EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step65EntryFv_reserved : s6Step65EntryFvBefore.reserve s6Step65EntryFvFresh.toFinset=some s6Step65EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step65EntryFvFresh,arenaWires]
  · norm_num [s6Step65EntryFvBefore,s6Step65EntryFBefore,s6Step65EntryFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step65EntryFvBefore s6Step65EntryFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step65EntryFvFresh rfl rfl
    · norm_num [s6Step65EntryFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step65EntryFv_checked : planRowResizeLog s6Step65EntryFvBefore s6Step65EntryFvRow 46 s6Step65EntryFvFresh=
    some (s6Step65EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833],776⟩,growRow 776 s6Step65EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step65EntryFvBefore s6Step65EntryFvAfter s6Step65EntryFvRow 46 s6Step65EntryFvFresh
    s6Step65EntryFv_distinct s6Step65EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step65EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step65EntryFvRow.payload++s6Step65EntryFvFresh) s6Step65EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step65EntryGAfter : Arena := s6Step65EntryFBefore

private def s6Step65EntryGBefore : Arena := s6Step65EntryFBefore

private theorem s6Step65EntryG_Incoming : rowsOwned s6Step65EntryGBefore [s6Step65EntryGRow,s6Step65EntryFvRow,s6Step65EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step65EntryFRow,s6Step65EntryGRow,s6Step65EntryFvRow,s6Step65EntryGvRow] 1 s6Step65EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step65EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step65EntryG_Outgoing : rowsOwned s6Step65EntryGvAfter [s6Step65EntryGOut,s6Step65EntryFvOut,s6Step65EntryGvOut] :=
  hmrRows_owned_drop s6Step65EntryGvAfter [s6Step65EntryFOut,s6Step65EntryGOut,s6Step65EntryFvOut,s6Step65EntryGvOut] 1 s6Step65EntryBank_outgoingOwned

private theorem s6Step65EntryG_distinct : (s6Step65EntryGRow.sign::s6Step65EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step65EntryG_owned : (s6Step65EntryGRow.sign::s6Step65EntryGRow.payload).toFinset⊆s6Step65EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step65EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step65EntryG_reserved : s6Step65EntryGBefore.reserve s6Step65EntryGFresh.toFinset=some s6Step65EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step65EntryGFresh,arenaWires]
  · norm_num [s6Step65EntryGBefore,s6Step65EntryFBefore,s6Step65EntryGFresh,arenaWires]
  · simp only [s6Step65EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step65EntryG_checked : planRowResizeLog s6Step65EntryGBefore s6Step65EntryGRow 236 s6Step65EntryGFresh=
    some (s6Step65EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235],777⟩,growRow 777 s6Step65EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step65EntryGBefore s6Step65EntryGAfter s6Step65EntryGRow 236 s6Step65EntryGFresh
    s6Step65EntryG_distinct s6Step65EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step65EntryG_reserved
  have rowEq : WindowRow.mk (s6Step65EntryGRow.payload++s6Step65EntryGFresh) s6Step65EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step65EntryGvBefore : Arena := s6Step65EntryFvAfter

private theorem s6Step65EntryGv_Incoming : rowsOwned s6Step65EntryGvBefore [s6Step65EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step65EntryFRow,s6Step65EntryGRow,s6Step65EntryFvRow,s6Step65EntryGvRow] 3 s6Step65EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step65EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step65EntryGv_Outgoing : rowsOwned s6Step65EntryGvAfter [s6Step65EntryGvOut] :=
  hmrRows_owned_drop s6Step65EntryGvAfter [s6Step65EntryFOut,s6Step65EntryGOut,s6Step65EntryFvOut,s6Step65EntryGvOut] 3 s6Step65EntryBank_outgoingOwned

private theorem s6Step65EntryGv_distinct : (s6Step65EntryGvRow.sign::s6Step65EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step65EntryGv_owned : (s6Step65EntryGvRow.sign::s6Step65EntryGvRow.payload).toFinset⊆s6Step65EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step65EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step65EntryGv_reserved : s6Step65EntryGvBefore.reserve s6Step65EntryGvFresh.toFinset=some s6Step65EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step65EntryGvFresh,arenaWires]
  · norm_num [s6Step65EntryGvBefore,s6Step65EntryFvAfter,s6Step65EntryGvFresh,arenaWires]
  · simp only [s6Step65EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step65EntryGv_checked : planRowResizeLog s6Step65EntryGvBefore s6Step65EntryGvRow 46 s6Step65EntryGvFresh=
    some (s6Step65EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888],775⟩,growRow 775 s6Step65EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step65EntryGvBefore s6Step65EntryGvAfter s6Step65EntryGvRow 46 s6Step65EntryGvFresh
    s6Step65EntryGv_distinct s6Step65EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step65EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step65EntryGvRow.payload++s6Step65EntryGvFresh) s6Step65EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step65EntryBank_rows : planWindowRowsLog s6Step65EntryFBefore [(s6Step65EntryFRow,236),(s6Step65EntryGRow,236),(s6Step65EntryFvRow,46),(s6Step65EntryGvRow,46)] [s6Step65EntryFFresh,s6Step65EntryGFresh,s6Step65EntryFvFresh,s6Step65EntryGvFresh]=
    some (s6Step65EntryGvAfter,[s6Step65EntryFOut,s6Step65EntryGOut,s6Step65EntryFvOut,s6Step65EntryGvOut],(growRow 795 s6Step65EntryFFresh ++ (growRow 777 s6Step65EntryGFresh ++ (growRow 776 s6Step65EntryFvFresh ++ (growRow 775 s6Step65EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step65EntryGvAfter [] []=some (s6Step65EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step65EntryGvBefore s6Step65EntryGvAfter s6Step65EntryGvAfter
    s6Step65EntryGvRow s6Step65EntryGvOut 46 s6Step65EntryGvFresh [] [] []
    (growRow 775 s6Step65EntryGvFresh) ([]) s6Step65EntryGv_Incoming s6Step65EntryGv_checked h4 s6Step65EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step65EntryFvBefore s6Step65EntryFvAfter s6Step65EntryGvAfter
    s6Step65EntryFvRow s6Step65EntryFvOut 46 s6Step65EntryFvFresh [(s6Step65EntryGvRow,46)] [s6Step65EntryGvFresh] [s6Step65EntryGvOut]
    (growRow 776 s6Step65EntryFvFresh) ((growRow 775 s6Step65EntryGvFresh ++ [])) s6Step65EntryFv_Incoming s6Step65EntryFv_checked h3 s6Step65EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step65EntryGBefore s6Step65EntryGAfter s6Step65EntryGvAfter
    s6Step65EntryGRow s6Step65EntryGOut 236 s6Step65EntryGFresh [(s6Step65EntryFvRow,46),(s6Step65EntryGvRow,46)] [s6Step65EntryFvFresh,s6Step65EntryGvFresh] [s6Step65EntryFvOut,s6Step65EntryGvOut]
    (growRow 777 s6Step65EntryGFresh) ((growRow 776 s6Step65EntryFvFresh ++ (growRow 775 s6Step65EntryGvFresh ++ []))) s6Step65EntryG_Incoming s6Step65EntryG_checked h2 s6Step65EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step65EntryFBefore s6Step65EntryFAfter s6Step65EntryGvAfter
    s6Step65EntryFRow s6Step65EntryFOut 236 s6Step65EntryFFresh [(s6Step65EntryGRow,236),(s6Step65EntryFvRow,46),(s6Step65EntryGvRow,46)] [s6Step65EntryGFresh,s6Step65EntryFvFresh,s6Step65EntryGvFresh] [s6Step65EntryGOut,s6Step65EntryFvOut,s6Step65EntryGvOut]
    (growRow 795 s6Step65EntryFFresh) ((growRow 777 s6Step65EntryGFresh ++ (growRow 776 s6Step65EntryFvFresh ++ (growRow 775 s6Step65EntryGvFresh ++ [])))) s6Step65EntryF_Incoming s6Step65EntryF_checked h1 s6Step65EntryF_Outgoing
  exact h0

private theorem s6Step65EntryBank_checked : compileHmrBankResizeLog .entry s6Step65EntryFBefore ⟨s6Step65EntryFRow,s6Step65EntryGRow,s6Step65EntryFvRow,s6Step65EntryGvRow⟩ ⟨236,236,46,46⟩ [s6Step65EntryFFresh,s6Step65EntryGFresh,s6Step65EntryFvFresh,s6Step65EntryGvFresh]=
    some (s6Step65EntryGvAfter,⟨s6Step65EntryFOut,s6Step65EntryGOut,s6Step65EntryFvOut,s6Step65EntryGvOut⟩,(growRow 795 s6Step65EntryFFresh ++ (growRow 777 s6Step65EntryGFresh ++ (growRow 776 s6Step65EntryFvFresh ++ (growRow 775 s6Step65EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step65EntryBank_rows]
  rfl

private def s6Step65ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,235),(236,491),(492,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step65ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,235),(236,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step65ExitFBefore : Arena := s6Step65ExitGAfter

private def s6Step65ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 822],795⟩

private def s6Step65ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875],776⟩

private def s6Step65ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 821],777⟩

private def s6Step65ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 877],775⟩

private theorem s6Step65ExitBank_incomingDistinct : ([s6Step65ExitGRow,s6Step65ExitFRow,s6Step65ExitFvRow,s6Step65ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step65ExitF_Incoming : rowsOwned s6Step65ExitFBefore [s6Step65ExitFRow,s6Step65ExitFvRow,s6Step65ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step65ExitGRow,s6Step65ExitFRow,s6Step65ExitFvRow,s6Step65ExitGvRow] 1 s6Step65ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step65ExitFBefore (fun q => ([(0,235),(236,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step65ExitBank_outgoingOwned : rowsOwned s6Step65ExitGvAfter [s6Step65ExitGOut,s6Step65ExitFOut,s6Step65ExitFvOut,s6Step65ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step65ExitGvAfter (fun q => ([(0,235),(236,491),(492,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step65ExitF_Outgoing : rowsOwned s6Step65ExitGvAfter [s6Step65ExitFOut,s6Step65ExitFvOut,s6Step65ExitGvOut] :=
  hmrRows_owned_drop s6Step65ExitGvAfter [s6Step65ExitGOut,s6Step65ExitFOut,s6Step65ExitFvOut,s6Step65ExitGvOut] 1 s6Step65ExitBank_outgoingOwned

private theorem s6Step65ExitF_distinct : (s6Step65ExitFRow.sign::s6Step65ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step65ExitF_owned : (s6Step65ExitFRow.sign::s6Step65ExitFRow.payload).toFinset⊆s6Step65ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step65ExitFBefore (fun q => ([(0,235),(236,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step65ExitF_retired : s6Step65ExitFBefore.retireSet s6Step65ExitFExtra.toFinset=s6Step65ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step65ExitFBefore s6Step65ExitFAfter s6Step65ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step65ExitFBefore s6Step65ExitFAfter (fun q => ([(0,235),(236,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,235),(236,491),(492,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step65ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step65ExitF_checked : planRowResizeLog s6Step65ExitFBefore s6Step65ExitFRow 235 []=
    some (s6Step65ExitFAfter,s6Step65ExitFOut,shrinkRow 795 s6Step65ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step65ExitFBefore s6Step65ExitFRow 235 s6Step65ExitF_distinct s6Step65ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step65ExitFRow.payload.take 235) s6Step65ExitFRow.sign=s6Step65ExitFOut := by decide +kernel
  have hi : s6Step65ExitFRow.payload.drop 235=s6Step65ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step65ExitF_retired] at result
  exact result

private def s6Step65ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,235),(236,491),(492,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step65ExitFvBefore : Arena := s6Step65ExitFAfter

private theorem s6Step65ExitFv_Incoming : rowsOwned s6Step65ExitFvBefore [s6Step65ExitFvRow,s6Step65ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step65ExitGRow,s6Step65ExitFRow,s6Step65ExitFvRow,s6Step65ExitGvRow] 2 s6Step65ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step65ExitFvBefore (fun q => ([(0,235),(236,491),(492,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step65ExitFv_Outgoing : rowsOwned s6Step65ExitGvAfter [s6Step65ExitFvOut,s6Step65ExitGvOut] :=
  hmrRows_owned_drop s6Step65ExitGvAfter [s6Step65ExitGOut,s6Step65ExitFOut,s6Step65ExitFvOut,s6Step65ExitGvOut] 2 s6Step65ExitBank_outgoingOwned

private theorem s6Step65ExitFv_distinct : (s6Step65ExitFvRow.sign::s6Step65ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step65ExitFv_owned : (s6Step65ExitFvRow.sign::s6Step65ExitFvRow.payload).toFinset⊆s6Step65ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step65ExitFvBefore (fun q => ([(0,235),(236,491),(492,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step65ExitFv_retired : s6Step65ExitFvBefore.retireSet s6Step65ExitFvExtra.toFinset=s6Step65ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step65ExitFvBefore s6Step65ExitFvAfter s6Step65ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step65ExitFvBefore s6Step65ExitFvAfter (fun q => ([(0,235),(236,491),(492,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,235),(236,491),(492,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step65ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step65ExitFv_checked : planRowResizeLog s6Step65ExitFvBefore s6Step65ExitFvRow 46 []=
    some (s6Step65ExitFvAfter,s6Step65ExitFvOut,shrinkRow 776 s6Step65ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step65ExitFvBefore s6Step65ExitFvRow 46 s6Step65ExitFv_distinct s6Step65ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step65ExitFvRow.payload.take 46) s6Step65ExitFvRow.sign=s6Step65ExitFvOut := by decide +kernel
  have hi : s6Step65ExitFvRow.payload.drop 46=s6Step65ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step65ExitFv_retired] at result
  exact result

private def s6Step65ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step65ExitG_Incoming : rowsOwned s6Step65ExitGBefore [s6Step65ExitGRow,s6Step65ExitFRow,s6Step65ExitFvRow,s6Step65ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step65ExitGRow,s6Step65ExitFRow,s6Step65ExitFvRow,s6Step65ExitGvRow] 0 s6Step65ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step65ExitGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step65ExitG_Outgoing : rowsOwned s6Step65ExitGvAfter [s6Step65ExitGOut,s6Step65ExitFOut,s6Step65ExitFvOut,s6Step65ExitGvOut] :=
  hmrRows_owned_drop s6Step65ExitGvAfter [s6Step65ExitGOut,s6Step65ExitFOut,s6Step65ExitFvOut,s6Step65ExitGvOut] 0 s6Step65ExitBank_outgoingOwned

private theorem s6Step65ExitG_distinct : (s6Step65ExitGRow.sign::s6Step65ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step65ExitG_owned : (s6Step65ExitGRow.sign::s6Step65ExitGRow.payload).toFinset⊆s6Step65ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step65ExitGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step65ExitG_retired : s6Step65ExitGBefore.retireSet s6Step65ExitGExtra.toFinset=s6Step65ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step65ExitGBefore s6Step65ExitGAfter s6Step65ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step65ExitGBefore s6Step65ExitGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,235),(236,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step65ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step65ExitG_checked : planRowResizeLog s6Step65ExitGBefore s6Step65ExitGRow 235 []=
    some (s6Step65ExitGAfter,s6Step65ExitGOut,shrinkRow 777 s6Step65ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step65ExitGBefore s6Step65ExitGRow 235 s6Step65ExitG_distinct s6Step65ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step65ExitGRow.payload.take 235) s6Step65ExitGRow.sign=s6Step65ExitGOut := by decide +kernel
  have hi : s6Step65ExitGRow.payload.drop 235=s6Step65ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step65ExitG_retired] at result
  exact result

private def s6Step65ExitGvBefore : Arena := s6Step65ExitFvAfter

private theorem s6Step65ExitGv_Incoming : rowsOwned s6Step65ExitGvBefore [s6Step65ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step65ExitGRow,s6Step65ExitFRow,s6Step65ExitFvRow,s6Step65ExitGvRow] 3 s6Step65ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step65ExitGvBefore (fun q => ([(0,235),(236,491),(492,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step65ExitGv_Outgoing : rowsOwned s6Step65ExitGvAfter [s6Step65ExitGvOut] :=
  hmrRows_owned_drop s6Step65ExitGvAfter [s6Step65ExitGOut,s6Step65ExitFOut,s6Step65ExitFvOut,s6Step65ExitGvOut] 3 s6Step65ExitBank_outgoingOwned

private theorem s6Step65ExitGv_distinct : (s6Step65ExitGvRow.sign::s6Step65ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step65ExitGv_owned : (s6Step65ExitGvRow.sign::s6Step65ExitGvRow.payload).toFinset⊆s6Step65ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step65ExitGvBefore (fun q => ([(0,235),(236,491),(492,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step65ExitGv_retired : s6Step65ExitGvBefore.retireSet s6Step65ExitGvExtra.toFinset=s6Step65ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step65ExitGvBefore s6Step65ExitGvAfter s6Step65ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step65ExitGvBefore s6Step65ExitGvAfter (fun q => ([(0,235),(236,491),(492,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,235),(236,491),(492,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step65ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step65ExitGv_checked : planRowResizeLog s6Step65ExitGvBefore s6Step65ExitGvRow 46 []=
    some (s6Step65ExitGvAfter,s6Step65ExitGvOut,shrinkRow 775 s6Step65ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step65ExitGvBefore s6Step65ExitGvRow 46 s6Step65ExitGv_distinct s6Step65ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step65ExitGvRow.payload.take 46) s6Step65ExitGvRow.sign=s6Step65ExitGvOut := by decide +kernel
  have hi : s6Step65ExitGvRow.payload.drop 46=s6Step65ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step65ExitGv_retired] at result
  exact result

private theorem s6Step65ExitBank_rows : planWindowRowsLog s6Step65ExitGBefore [(s6Step65ExitGRow,235),(s6Step65ExitFRow,235),(s6Step65ExitFvRow,46),(s6Step65ExitGvRow,46)] [[],[],[],[]]=
    some (s6Step65ExitGvAfter,[s6Step65ExitGOut,s6Step65ExitFOut,s6Step65ExitFvOut,s6Step65ExitGvOut],(shrinkRow 777 s6Step65ExitGExtra ++ (shrinkRow 795 s6Step65ExitFExtra ++ (shrinkRow 776 s6Step65ExitFvExtra ++ (shrinkRow 775 s6Step65ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step65ExitGvAfter [] []=some (s6Step65ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step65ExitGvBefore s6Step65ExitGvAfter s6Step65ExitGvAfter
    s6Step65ExitGvRow s6Step65ExitGvOut 46 [] [] [] []
    (shrinkRow 775 s6Step65ExitGvExtra) ([]) s6Step65ExitGv_Incoming s6Step65ExitGv_checked h4 s6Step65ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step65ExitFvBefore s6Step65ExitFvAfter s6Step65ExitGvAfter
    s6Step65ExitFvRow s6Step65ExitFvOut 46 [] [(s6Step65ExitGvRow,46)] [[]] [s6Step65ExitGvOut]
    (shrinkRow 776 s6Step65ExitFvExtra) ((shrinkRow 775 s6Step65ExitGvExtra ++ [])) s6Step65ExitFv_Incoming s6Step65ExitFv_checked h3 s6Step65ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step65ExitFBefore s6Step65ExitFAfter s6Step65ExitGvAfter
    s6Step65ExitFRow s6Step65ExitFOut 235 [] [(s6Step65ExitFvRow,46),(s6Step65ExitGvRow,46)] [[],[]] [s6Step65ExitFvOut,s6Step65ExitGvOut]
    (shrinkRow 795 s6Step65ExitFExtra) ((shrinkRow 776 s6Step65ExitFvExtra ++ (shrinkRow 775 s6Step65ExitGvExtra ++ []))) s6Step65ExitF_Incoming s6Step65ExitF_checked h2 s6Step65ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step65ExitGBefore s6Step65ExitGAfter s6Step65ExitGvAfter
    s6Step65ExitGRow s6Step65ExitGOut 235 [] [(s6Step65ExitFRow,235),(s6Step65ExitFvRow,46),(s6Step65ExitGvRow,46)] [[],[],[]] [s6Step65ExitFOut,s6Step65ExitFvOut,s6Step65ExitGvOut]
    (shrinkRow 777 s6Step65ExitGExtra) ((shrinkRow 795 s6Step65ExitFExtra ++ (shrinkRow 776 s6Step65ExitFvExtra ++ (shrinkRow 775 s6Step65ExitGvExtra ++ [])))) s6Step65ExitG_Incoming s6Step65ExitG_checked h1 s6Step65ExitG_Outgoing
  exact h0

private theorem s6Step65ExitBank_checked : compileHmrBankResizeLog .exit s6Step65ExitGBefore ⟨s6Step65ExitFRow,s6Step65ExitGRow,s6Step65ExitFvRow,s6Step65ExitGvRow⟩ ⟨235,235,46,46⟩ [[],[],[],[]]=
    some (s6Step65ExitGvAfter,⟨s6Step65ExitFOut,s6Step65ExitGOut,s6Step65ExitFvOut,s6Step65ExitGvOut⟩,(shrinkRow 777 s6Step65ExitGExtra ++ (shrinkRow 795 s6Step65ExitFExtra ++ (shrinkRow 776 s6Step65ExitFvExtra ++ (shrinkRow 775 s6Step65ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step65ExitBank_rows]
  rfl

private theorem s6Step65Add0_apart : Disjoint s6Step65Add0Arena.live s6Step65Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step65Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step65Add0_card : s6Step65Add0Arena.live.card=866 := by
  decide +kernel

private theorem s6Step65Add0_borrowed : s6Step65Add0Arena.checkBorrow (hmrHybridCount s6Step65Add0Arena s6Step65Add0B.length) s6Step65Add0Work=some s6Step65Add0During := by
  have len : s6Step65Add0Work.length=hmrHybridCount s6Step65Add0Arena s6Step65Add0B.length := by
    rw [hmrHybridCount,s6Step65Add0_card]
    decide +kernel
  have nd : s6Step65Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step65Add0Arena s6Step65Add0During s6Step65Add0Work.toFinset s6Step65Add0_bounded s6Step65Add0_apart rfl

private theorem s6Step65Add0_distinct : (780::814::855::(s6Step65Add0A++s6Step65Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step65Add0_owned : (780::814::855::(s6Step65Add0A++s6Step65Add0B)).toFinset⊆s6Step65Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step65Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step65Add0_checked : compileHmrHybridCinLog s6Step65Add0Arena 814 780 855 s6Step65Add0A s6Step65Add0B s6Step65Add0Work=some s6Step65Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step65Add0Arena s6Step65Add0During 814 780 855 s6Step65Add0A s6Step65Add0B s6Step65Add0Work
    (by decide +kernel) (by decide +kernel) s6Step65Add0_distinct
    (fun q hq => s6Step65Add0_owned (List.mem_toFinset.mpr hq)) s6Step65Add0_borrowed

private theorem s6Step65Add1_apart : Disjoint s6Step65Add1Arena.live s6Step65Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step65Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step65Add1_card : s6Step65Add1Arena.live.card=866 := by
  decide +kernel

private theorem s6Step65Add1_borrowed : s6Step65Add1Arena.checkBorrow (hmrHybridCount s6Step65Add1Arena s6Step65Add1B.length) s6Step65Add1Work=some s6Step65Add1During := by
  have len : s6Step65Add1Work.length=hmrHybridCount s6Step65Add1Arena s6Step65Add1B.length := by
    rw [hmrHybridCount,s6Step65Add1_card]
    decide +kernel
  have nd : s6Step65Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step65Add1Arena s6Step65Add1During s6Step65Add1Work.toFinset s6Step65Add1_bounded s6Step65Add1_apart rfl

private theorem s6Step65Add1_distinct : (780::814::855::(s6Step65Add1A++s6Step65Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step65Add1_owned : (780::814::855::(s6Step65Add1A++s6Step65Add1B)).toFinset⊆s6Step65Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step65Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step65Add1_checked : compileHmrHybridCinLog s6Step65Add1Arena 814 780 855 s6Step65Add1A s6Step65Add1B s6Step65Add1Work=some s6Step65Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step65Add1Arena s6Step65Add1During 814 780 855 s6Step65Add1A s6Step65Add1B s6Step65Add1Work
    (by decide +kernel) (by decide +kernel) s6Step65Add1_distinct
    (fun q hq => s6Step65Add1_owned (List.mem_toFinset.mpr hq)) s6Step65Add1_borrowed

private theorem s6Step65F4_apart : Disjoint (s6Step65Add0A++s6Step65Add0B).toFinset (s6Step65Add1A++s6Step65Add1B).toFinset := by
  have nd : ((s6Step65Add0A++s6Step65Add0B)++(s6Step65Add1A++s6Step65Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step65F4_carry : s6Step65F4FlagArena.checkBorrow 1 [855]=some s6Step65Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step65F4FlagArena,s6Step65HeadFvAfter,arenaWires]
  · change s6Step65Add0Arena.live=(s6Step65HeadFvAfter.live∪{780})∪{855}
    apply hmrArena_union_pair_of_filter_check s6Step65HeadFvAfter s6Step65Add0Arena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 780 855 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step65F4_distinct : (838::814::780::855::((s6Step65Add0A++s6Step65Add1A)++(s6Step65Add0B++s6Step65Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step65F4_flag : s6Step65HeadFvAfter.checkBorrow 1 [780]=some s6Step65F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step65HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step65F4_owned : (838::814::((s6Step65Add0A++s6Step65Add1A)++(s6Step65Add0B++s6Step65Add1B))).toFinset⊆s6Step65HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step65HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step65F4_checked : compileHmrHybridF4Log s6Step65HeadFvAfter 838 814 s6Step65Add0A s6Step65Add0B s6Step65Add1A s6Step65Add1B [780] [855] s6Step65Add0Work s6Step65Add1Work=some s6Step65F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step65HeadFvAfter s6Step65F4FlagArena s6Step65Add0Arena s6Step65Add0During s6Step65Add1During 838 814
    s6Step65Add0A s6Step65Add0B s6Step65Add1A s6Step65Add1B [780] [855] s6Step65Add0Work s6Step65Add1Work
    (fun q hq => s6Step65F4_owned (List.mem_toFinset.mpr hq)) s6Step65F4_flag s6Step65F4_carry
    s6Step65F4_distinct s6Step65F4_apart s6Step65Add0_checked s6Step65Add1_checked

private theorem s6Step65Front_branch : s6Step65FrontSigmaArena.checkBorrow 1 [814]=some s6Step65HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step65FrontSigmaArena,s6Step65EntryGvAfter,s6Step65EntryFvAfter,arenaWires]
  · change s6Step65HeadGBefore.live=(s6Step65EntryGvAfter.live∪{838})∪{814}
    apply hmrArena_union_pair_of_filter_check s6Step65EntryGvAfter s6Step65HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 838 814 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step65Front_entry : HmrFrontEntryValid s6Step65EntryFBefore s6Step65FrontBank 236 46 ⟨235,235,46,46⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step65FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step65EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step65EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step65FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step65Front_sigma : s6Step65EntryGvAfter.checkBorrow 1 [838]=some s6Step65FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step65EntryGvAfter,s6Step65EntryFvAfter,arenaWires]
  · rfl

private def s6Step65HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step65HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step65HeadFBefore : Arena := s6Step65HeadGAfter

private def s6Step65HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491],795⟩

private def s6Step65HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833],776⟩

private def s6Step65HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235],777⟩

private def s6Step65HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888],775⟩

private theorem s6Step65HeadBank_incomingDistinct : ([s6Step65HeadGRow,s6Step65HeadFRow,s6Step65HeadGvRow,s6Step65HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step65HeadF_Incoming : rowsOwned s6Step65HeadFBefore [s6Step65HeadFRow,s6Step65HeadGvRow,s6Step65HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step65HeadGRow,s6Step65HeadFRow,s6Step65HeadGvRow,s6Step65HeadFvRow] 1 s6Step65HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step65HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step65HeadBank_outgoingOwned : rowsOwned s6Step65HeadFvAfter [s6Step65HeadGOut,s6Step65HeadFOut,s6Step65HeadGvOut,s6Step65HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step65HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step65HeadF_Outgoing : rowsOwned s6Step65HeadFvAfter [s6Step65HeadFOut,s6Step65HeadGvOut,s6Step65HeadFvOut] :=
  hmrRows_owned_drop s6Step65HeadFvAfter [s6Step65HeadGOut,s6Step65HeadFOut,s6Step65HeadGvOut,s6Step65HeadFvOut] 1 s6Step65HeadBank_outgoingOwned

private theorem s6Step65HeadF_distinct : (s6Step65HeadFRow.sign::s6Step65HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step65HeadF_owned : (s6Step65HeadFRow.sign::s6Step65HeadFRow.payload).toFinset⊆s6Step65HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step65HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step65HeadF_reserved : s6Step65HeadFBefore.reserve s6Step65HeadFFresh.toFinset=some s6Step65HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step65HeadFFresh,arenaWires]
  · norm_num [s6Step65HeadFBefore,s6Step65HeadGAfter,s6Step65HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step65HeadFBefore s6Step65HeadFAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step65HeadFFresh rfl rfl
    · norm_num [s6Step65HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step65HeadF_checked : planRowResizeLog s6Step65HeadFBefore s6Step65HeadFRow 237 s6Step65HeadFFresh=
    some (s6Step65HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 822],795⟩,growRow 795 s6Step65HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step65HeadFBefore s6Step65HeadFAfter s6Step65HeadFRow 237 s6Step65HeadFFresh
    s6Step65HeadF_distinct s6Step65HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step65HeadF_reserved
  have rowEq : WindowRow.mk (s6Step65HeadFRow.payload++s6Step65HeadFFresh) s6Step65HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 822],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step65HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step65HeadFvBefore : Arena := s6Step65HeadGvAfter

private theorem s6Step65HeadFv_Incoming : rowsOwned s6Step65HeadFvBefore [s6Step65HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step65HeadGRow,s6Step65HeadFRow,s6Step65HeadGvRow,s6Step65HeadFvRow] 3 s6Step65HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step65HeadFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step65HeadFv_Outgoing : rowsOwned s6Step65HeadFvAfter [s6Step65HeadFvOut] :=
  hmrRows_owned_drop s6Step65HeadFvAfter [s6Step65HeadGOut,s6Step65HeadFOut,s6Step65HeadGvOut,s6Step65HeadFvOut] 3 s6Step65HeadBank_outgoingOwned

private theorem s6Step65HeadFv_distinct : (s6Step65HeadFvRow.sign::s6Step65HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step65HeadFv_owned : (s6Step65HeadFvRow.sign::s6Step65HeadFvRow.payload).toFinset⊆s6Step65HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step65HeadFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step65HeadFv_reserved : s6Step65HeadFvBefore.reserve s6Step65HeadFvFresh.toFinset=some s6Step65HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step65HeadFvFresh,arenaWires]
  · norm_num [s6Step65HeadFvBefore,s6Step65HeadGvAfter,s6Step65HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step65HeadFvBefore s6Step65HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step65HeadFvFresh rfl rfl
    · norm_num [s6Step65HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step65HeadFv_checked : planRowResizeLog s6Step65HeadFvBefore s6Step65HeadFvRow 47 s6Step65HeadFvFresh=
    some (s6Step65HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875],776⟩,growRow 776 s6Step65HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step65HeadFvBefore s6Step65HeadFvAfter s6Step65HeadFvRow 47 s6Step65HeadFvFresh
    s6Step65HeadFv_distinct s6Step65HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step65HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step65HeadFvRow.payload++s6Step65HeadFvFresh) s6Step65HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step65HeadG_Incoming : rowsOwned s6Step65HeadGBefore [s6Step65HeadGRow,s6Step65HeadFRow,s6Step65HeadGvRow,s6Step65HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step65HeadGRow,s6Step65HeadFRow,s6Step65HeadGvRow,s6Step65HeadFvRow] 0 s6Step65HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step65HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step65HeadG_Outgoing : rowsOwned s6Step65HeadFvAfter [s6Step65HeadGOut,s6Step65HeadFOut,s6Step65HeadGvOut,s6Step65HeadFvOut] :=
  hmrRows_owned_drop s6Step65HeadFvAfter [s6Step65HeadGOut,s6Step65HeadFOut,s6Step65HeadGvOut,s6Step65HeadFvOut] 0 s6Step65HeadBank_outgoingOwned

private theorem s6Step65HeadG_distinct : (s6Step65HeadGRow.sign::s6Step65HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step65HeadG_owned : (s6Step65HeadGRow.sign::s6Step65HeadGRow.payload).toFinset⊆s6Step65HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step65HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step65HeadG_reserved : s6Step65HeadGBefore.reserve s6Step65HeadGFresh.toFinset=some s6Step65HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step65HeadGFresh,arenaWires]
  · norm_num [s6Step65HeadGBefore,s6Step65HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step65HeadGBefore s6Step65HeadGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step65HeadGFresh rfl rfl
    · norm_num [s6Step65HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step65HeadG_checked : planRowResizeLog s6Step65HeadGBefore s6Step65HeadGRow 237 s6Step65HeadGFresh=
    some (s6Step65HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 821],777⟩,growRow 777 s6Step65HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step65HeadGBefore s6Step65HeadGAfter s6Step65HeadGRow 237 s6Step65HeadGFresh
    s6Step65HeadG_distinct s6Step65HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step65HeadG_reserved
  have rowEq : WindowRow.mk (s6Step65HeadGRow.payload++s6Step65HeadGFresh) s6Step65HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 821],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step65HeadGvBefore : Arena := s6Step65HeadFAfter

private theorem s6Step65HeadGv_Incoming : rowsOwned s6Step65HeadGvBefore [s6Step65HeadGvRow,s6Step65HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step65HeadGRow,s6Step65HeadFRow,s6Step65HeadGvRow,s6Step65HeadFvRow] 2 s6Step65HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step65HeadGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step65HeadGv_Outgoing : rowsOwned s6Step65HeadFvAfter [s6Step65HeadGvOut,s6Step65HeadFvOut] :=
  hmrRows_owned_drop s6Step65HeadFvAfter [s6Step65HeadGOut,s6Step65HeadFOut,s6Step65HeadGvOut,s6Step65HeadFvOut] 2 s6Step65HeadBank_outgoingOwned

private theorem s6Step65HeadGv_distinct : (s6Step65HeadGvRow.sign::s6Step65HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step65HeadGv_owned : (s6Step65HeadGvRow.sign::s6Step65HeadGvRow.payload).toFinset⊆s6Step65HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step65HeadGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step65HeadGv_reserved : s6Step65HeadGvBefore.reserve s6Step65HeadGvFresh.toFinset=some s6Step65HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step65HeadGvFresh,arenaWires]
  · norm_num [s6Step65HeadGvBefore,s6Step65HeadFAfter,s6Step65HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step65HeadGvBefore s6Step65HeadGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step65HeadGvFresh rfl rfl
    · norm_num [s6Step65HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step65HeadGv_checked : planRowResizeLog s6Step65HeadGvBefore s6Step65HeadGvRow 47 s6Step65HeadGvFresh=
    some (s6Step65HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 877],775⟩,growRow 775 s6Step65HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step65HeadGvBefore s6Step65HeadGvAfter s6Step65HeadGvRow 47 s6Step65HeadGvFresh
    s6Step65HeadGv_distinct s6Step65HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step65HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step65HeadGvRow.payload++s6Step65HeadGvFresh) s6Step65HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 877],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step65HeadBank_rows : planWindowRowsLog s6Step65HeadGBefore [(s6Step65HeadGRow,237),(s6Step65HeadFRow,237),(s6Step65HeadGvRow,47),(s6Step65HeadFvRow,47)] [s6Step65HeadGFresh,s6Step65HeadFFresh,s6Step65HeadGvFresh,s6Step65HeadFvFresh]=
    some (s6Step65HeadFvAfter,[s6Step65HeadGOut,s6Step65HeadFOut,s6Step65HeadGvOut,s6Step65HeadFvOut],(growRow 777 s6Step65HeadGFresh ++ (growRow 795 s6Step65HeadFFresh ++ (growRow 775 s6Step65HeadGvFresh ++ (growRow 776 s6Step65HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step65HeadFvAfter [] []=some (s6Step65HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step65HeadFvBefore s6Step65HeadFvAfter s6Step65HeadFvAfter
    s6Step65HeadFvRow s6Step65HeadFvOut 47 s6Step65HeadFvFresh [] [] []
    (growRow 776 s6Step65HeadFvFresh) ([]) s6Step65HeadFv_Incoming s6Step65HeadFv_checked h4 s6Step65HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step65HeadGvBefore s6Step65HeadGvAfter s6Step65HeadFvAfter
    s6Step65HeadGvRow s6Step65HeadGvOut 47 s6Step65HeadGvFresh [(s6Step65HeadFvRow,47)] [s6Step65HeadFvFresh] [s6Step65HeadFvOut]
    (growRow 775 s6Step65HeadGvFresh) ((growRow 776 s6Step65HeadFvFresh ++ [])) s6Step65HeadGv_Incoming s6Step65HeadGv_checked h3 s6Step65HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step65HeadFBefore s6Step65HeadFAfter s6Step65HeadFvAfter
    s6Step65HeadFRow s6Step65HeadFOut 237 s6Step65HeadFFresh [(s6Step65HeadGvRow,47),(s6Step65HeadFvRow,47)] [s6Step65HeadGvFresh,s6Step65HeadFvFresh] [s6Step65HeadGvOut,s6Step65HeadFvOut]
    (growRow 795 s6Step65HeadFFresh) ((growRow 775 s6Step65HeadGvFresh ++ (growRow 776 s6Step65HeadFvFresh ++ []))) s6Step65HeadF_Incoming s6Step65HeadF_checked h2 s6Step65HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step65HeadGBefore s6Step65HeadGAfter s6Step65HeadFvAfter
    s6Step65HeadGRow s6Step65HeadGOut 237 s6Step65HeadGFresh [(s6Step65HeadFRow,237),(s6Step65HeadGvRow,47),(s6Step65HeadFvRow,47)] [s6Step65HeadFFresh,s6Step65HeadGvFresh,s6Step65HeadFvFresh] [s6Step65HeadFOut,s6Step65HeadGvOut,s6Step65HeadFvOut]
    (growRow 777 s6Step65HeadGFresh) ((growRow 795 s6Step65HeadFFresh ++ (growRow 775 s6Step65HeadGvFresh ++ (growRow 776 s6Step65HeadFvFresh ++ [])))) s6Step65HeadG_Incoming s6Step65HeadG_checked h1 s6Step65HeadG_Outgoing
  exact h0

private theorem s6Step65HeadBank_checked : compileHmrBankResizeLog .headroom s6Step65HeadGBefore ⟨s6Step65HeadFRow,s6Step65HeadGRow,s6Step65HeadFvRow,s6Step65HeadGvRow⟩ ⟨237,237,47,47⟩ [s6Step65HeadGFresh,s6Step65HeadFFresh,s6Step65HeadGvFresh,s6Step65HeadFvFresh]=
    some (s6Step65HeadFvAfter,⟨s6Step65HeadFOut,s6Step65HeadGOut,s6Step65HeadFvOut,s6Step65HeadGvOut⟩,(growRow 777 s6Step65HeadGFresh ++ (growRow 795 s6Step65HeadFFresh ++ (growRow 775 s6Step65HeadGvFresh ++ (growRow 776 s6Step65HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step65HeadBank_rows]
  rfl

private theorem s6Step65Front_checked : compileHmrSourceFrontLog s6Step65EntryFBefore s6Step65FrontBank 236 46 ⟨235,235,46,46⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step65FrontLog=some s6Step65FrontPlan := by
  have pairEq : s6Step65FrontPair=⟨s6Step65HeadFRow,s6Step65HeadGRow,s6Step65HeadFvRow,s6Step65HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step65FrontHead=⟨s6Step65ExitFRow,s6Step65ExitGRow,s6Step65ExitFvRow,s6Step65ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step65Add0A=s6Step65FrontHead.f.wires := by decide +kernel
  have gEq : s6Step65Add0B=s6Step65FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step65Add1A=s6Step65FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step65Add1B=s6Step65FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step65EntryFBefore s6Step65FrontBank 236 46 ⟨235,235,46,46⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step65FrontLog s6Step65FrontPlan
  · exact s6Step65Front_entry
  · exact s6Step65EntryBank_checked
  · exact s6Step65Front_sigma
  · rfl
  · exact s6Step65Front_branch
  · rfl
  · simpa only [s6Step65FrontPlan,pairEq] using s6Step65HeadBank_checked
  · simpa only [s6Step65FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step65F4_checked
  · exact s6Step65Counter_checked
  · rfl
  · simpa only [s6Step65FrontPlan,headEq] using s6Step65ExitBank_checked

private theorem s6Step65Complete_explicit_checked : compileHmrEarlyStepLog s6Step65EntryFBefore s6Step65FrontBank 236 46 ⟨235,235,46,46⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806] 29 s6Step65CompleteLog=some s6Step65CompletePlan := by
  let Q := s6Step65EarlyControlPlan
  have hq := s6Step65EarlyControl_plan_checked
  have fv1 : s6Step65CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step65CompleteOut.fv.payload[2]?.getD s6Step65CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step65CompleteOut.fv.payload[3]?.getD s6Step65CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step65CompleteOut.fv.payload[4]?.getD s6Step65CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step65EntryFBefore s6Step65EarlyControlArena s6Step65FrontBank 236 46 ⟨235,235,46,46⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806] 29 s6Step65CompleteLog s6Step65FrontPlan Q
    s6Step65Front_checked s6Step65Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step65Complete_owned s6Step65Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step65EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806] 769 838 s6Step65CompleteOut.fv.second (s6Step65CompleteOut.fv.payload[2]?.getD s6Step65CompleteOut.fv.sign) (s6Step65CompleteOut.fv.payload[3]?.getD s6Step65CompleteOut.fv.sign) (s6Step65CompleteOut.fv.payload[4]?.getD s6Step65CompleteOut.fv.sign) 814 29 s6Step65EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep65Arena : Arena := s6Step65EntryFBefore
def s6PrivateStep65Bank : WindowBank := s6Step65FrontBank
def s6PrivateStep65Spec : HmrSourceWalkStepLog := ⟨236,46,⟨235,235,46,46⟩,29,.early s6Step65CompleteLog⟩
def s6PrivateStep65Plan : HmrSourceStepPlan := .early s6Step65CompletePlan
theorem s6PrivateStep65_source : s6PrivateStep65Spec=s6ObservedLogs64[1] := rfl
theorem s6PrivateStep65_checked : compileHmrSourceStepLog s6PrivateStep65Arena s6PrivateStep65Bank
    s6PrivateStep65Spec.fgWidth s6PrivateStep65Spec.vWidth s6PrivateStep65Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806]
    6 498 65 s6PrivateStep65Spec.need none s6PrivateStep65Spec.log=some s6PrivateStep65Plan := by
  change compileHmrSourceStepLog s6Step65EntryFBefore s6Step65FrontBank 236 46 ⟨235,235,46,46⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806] 6 498 65 29 none (.early s6Step65CompleteLog)=some (.early s6Step65CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 65<498)]
  rw [s6Step65Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
