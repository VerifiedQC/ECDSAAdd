import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep66
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

private def s6Step68CompleteMoves : List (Wire × Wire) := [(848,233)]

private def s6Step68EarlyControlLog : HmrEarlyControlLog := ⟨[848, 821, 838, 822, 830],[869],[843],[780, 855, 803, 922, 879, 784],[]⟩

private def s6Step68FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[830], [822], [821], [838]],[[], [], [], []]⟩,[877],[854],[869],[843],[780, 855, 803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[780, 855, 803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816],[869, 843, 780, 855]⟩

private def s6Step68CompleteLog : HmrEarlyStepLog := ⟨s6Step68FrontLog,s6Step68CompleteMoves,s6Step68EarlyControlLog⟩

private def s6Step68ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489],795⟩

private def s6Step68ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875],776⟩

private def s6Step68ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232],777⟩

private def s6Step68ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814],775⟩

private def s6Step68FrontOut : WindowBank := ⟨s6Step68ExitFOut,s6Step68ExitGOut,s6Step68ExitFvOut,s6Step68ExitGvOut⟩

private def s6Step68CompleteOut : WindowBank := s6Step68FrontOut.repacked s6Step68CompleteMoves

private def s6Step68EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step68EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step68EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step68EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step68EarlyControlPositiveArena,[869],s6Step68EarlyControlEqualityArena,[843],⟨⟨877,false⟩,[⟨⟨869,false⟩,843⟩]⟩⟩

private def s6Step68EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step68EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step68EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step68EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step68EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step68EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step68EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,848⟩,⟨⟨772,false⟩,821⟩,⟨⟨771,false⟩,838⟩,⟨⟨770,false⟩,822⟩,⟨⟨769,false⟩,830⟩]⟩

private def s6Step68EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step68EarlyControlZeroArena,s6Step68EarlyControlZeroPlan,s6Step68EarlyControlClassPlan,s6Step68EarlyControlFlagArena,s6Step68EarlyControlFittedArena,s6Step68EarlyControlHistoryArena,s6Step68EarlyControlSigmaArena,s6Step68EarlyControlOutputArena,s6Step68EarlyControlLog⟩

private def s6Step68CounterWork : List Wire := [869, 843, 780, 855]

private theorem s6Step68Counter_bounded : s6Step68CounterWork.toFinset⊆arenaWires := by norm_num [s6Step68CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step68HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step68CounterDuring : Arena := ⟨s6Step68HeadFvAfter.live∪s6Step68CounterWork.toFinset,Finset.union_subset s6Step68HeadFvAfter.bounded s6Step68Counter_bounded⟩

private def s6Step68EntryFFresh : List Wire := []

private def s6Step68EntryFvFresh : List Wire := []

private def s6Step68EntryGFresh : List Wire := []

private def s6Step68EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step68EntryGvAfter : Arena := s6Step68EntryFBefore

private def s6Step68EntryGvFresh : List Wire := []

private def s6Step68ExitFExtra : List Wire := [822]

private def s6Step68ExitFvExtra : List Wire := [838]

private def s6Step68ExitGExtra : List Wire := [233, 830]

private def s6Step68ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,233),(234,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step68ExitGvExtra : List Wire := [821]

private def s6Step68Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step68Add0Work : List Wire := [780, 855, 803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step68Add0_bounded : s6Step68Add0Work.toFinset⊆arenaWires := by
  have h : s6Step68Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step68Add0During : Arena := ⟨s6Step68Add0Arena.live∪s6Step68Add0Work.toFinset,Finset.union_subset s6Step68Add0Arena.bounded s6Step68Add0_bounded⟩

private def s6Step68Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step68Add1Work : List Wire := [780, 855, 803, 922, 879, 784, 891, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816]

private theorem s6Step68Add1_bounded : s6Step68Add1Work.toFinset⊆arenaWires := by
  have h : s6Step68Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step68Add1During : Arena := ⟨s6Step68Add1Arena.live∪s6Step68Add1Work.toFinset,Finset.union_subset s6Step68Add1Arena.bounded s6Step68Add1_bounded⟩

private def s6Step68F4FlagArena : Arena := ⟨s6Step68HeadFvAfter.live∪{869},Finset.union_subset s6Step68HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step68F4Plan : HmrHybridF4Plan := ⟨s6Step68F4FlagArena,[869],s6Step68Add0Arena,[843],s6Step68Add0During,s6Step68Add0Work,s6Step68Add1During,s6Step68Add1Work⟩

private def s6Step68HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 822],795⟩

private def s6Step68HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 838],776⟩

private def s6Step68HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 830],777⟩

private def s6Step68HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 821],775⟩

private def s6Step68FrontHead : WindowBank := ⟨s6Step68HeadFOut,s6Step68HeadGOut,s6Step68HeadFvOut,s6Step68HeadGvOut⟩

private def s6Step68EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489],795⟩

private def s6Step68EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875],776⟩

private def s6Step68EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233],777⟩

private def s6Step68EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814],775⟩

private def s6Step68FrontPair : WindowBank := ⟨s6Step68EntryFOut,s6Step68EntryGOut,s6Step68EntryFvOut,s6Step68EntryGvOut⟩

private def s6Step68FrontSigmaArena : Arena := ⟨s6Step68EntryGvAfter.live∪{877},Finset.union_subset s6Step68EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step68HeadFFresh : List Wire := [822]

private def s6Step68HeadFvFresh : List Wire := [838]

private def s6Step68HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step68HeadGFresh : List Wire := [830]

private def s6Step68HeadGvFresh : List Wire := [821]

private def s6Step68FrontPlan : HmrSourceFront := ⟨s6Step68EntryGvAfter,s6Step68FrontPair,(growRow 795 s6Step68EntryFFresh ++ (growRow 777 s6Step68EntryGFresh ++ (growRow 776 s6Step68EntryFvFresh ++ (growRow 775 s6Step68EntryGvFresh ++ [])))),s6Step68FrontSigmaArena,[877],s6Step68HeadGBefore,[854],
  s6Step68HeadFvAfter,s6Step68FrontHead,(growRow 777 s6Step68HeadGFresh ++ (growRow 795 s6Step68HeadFFresh ++ (growRow 775 s6Step68HeadGvFresh ++ (growRow 776 s6Step68HeadFvFresh ++ [])))),s6Step68F4Plan,s6Step68CounterDuring,s6Step68CounterWork,s6Step68ExitGvAfter,s6Step68FrontOut,(shrinkRow 777 s6Step68ExitGExtra ++ (shrinkRow 795 s6Step68ExitFExtra ++ (shrinkRow 776 s6Step68ExitFvExtra ++ (shrinkRow 775 s6Step68ExitGvExtra ++ []))))⟩

private def s6Step68CompletePlan : HmrEarlyStepPlan := ⟨s6Step68FrontPlan,s6Step68EarlyControlArena,s6Step68EarlyControlPlan,s6Step68CompleteMoves⟩

private theorem s6Step68Complete_apart : List.Disjoint (s6Step68CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [877, 854, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] := by
  have nd : ((s6Step68CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[877, 854, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step68Complete_owned : (s6Step68CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step68EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step68EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step68CompleteRelocationMove0Borrowed : Arena := ⟨s6Step68ExitGvAfter.live∪{233},Finset.union_subset s6Step68ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step68CompleteRelocation_move0_owned : 848∈s6Step68ExitGvAfter.live := by norm_num [s6Step68ExitGvAfter,arenaWires]

private theorem s6Step68CompleteRelocation_move0_reserve : s6Step68ExitGvAfter.reserve {233}=some s6Step68CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step68ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step68CompleteRelocation_move0_retire : s6Step68CompleteRelocationMove0Borrowed.retireSet {848}=s6Step68EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step68CompleteRelocationMove0Borrowed s6Step68EarlyControlArena {848}
  change s6Step68EarlyControlArena.live=(s6Step68ExitGvAfter.live∪{233})\{848}
  apply hmrArena_update_of_filter_check s6Step68ExitGvAfter s6Step68EarlyControlArena (fun q => ([(0,233),(234,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [233] [848] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step68CompleteRelocation_checked : s6Step68ExitGvAfter.checkRepack [(848,233)]=some s6Step68EarlyControlArena := by
  have tail1 : s6Step68EarlyControlArena.checkRepack []=some s6Step68EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step68ExitGvAfter s6Step68CompleteRelocationMove0Borrowed s6Step68EarlyControlArena s6Step68EarlyControlArena 848 233 []
    s6Step68CompleteRelocation_move0_owned s6Step68CompleteRelocation_move0_reserve s6Step68CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step68Complete_repack : s6Step68ExitGvAfter.checkRepack s6Step68CompleteMoves=some s6Step68EarlyControlArena := by
  simpa only [s6Step68CompleteMoves] using s6Step68CompleteRelocation_checked

private theorem s6Step68EarlyControl_branchOwned : ([854] : List Wire).toFinset⊆s6Step68EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step68EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step68EarlyControl_branch : compileHmrBranchRetirement s6Step68EarlyControlSigmaArena 854=some s6Step68EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step68EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step68EarlyControlSigmaArena s6Step68EarlyControlOutputArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [854] rfl rfl
    decide +kernel

private theorem s6Step68EarlyControl_classEqualityBorrow : s6Step68EarlyControlPositiveArena.checkBorrow (([877, 869] : List Wire).length-1) s6Step68EarlyControlLog.classWork=some s6Step68EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step68EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step68EarlyControlPositiveArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step68EarlyControlPositiveArena s6Step68EarlyControlEqualityArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step68EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step68EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step68EarlyControl_classEqualityOwned : ([877, 869] : List Wire).toFinset⊆s6Step68EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step68EarlyControlPositiveArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step68EarlyControl_classEquality : compileHmrEqualityLog s6Step68EarlyControlPositiveArena [877, 869] 0 s6Step68EarlyControlLog.classWork=some (s6Step68EarlyControlEqualityArena,s6Step68EarlyControlLog.classWork,s6Step68EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step68EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step68EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step68EarlyControl_classOwned : ([769, 830, 877] : List Wire).toFinset⊆s6Step68EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step68EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step68EarlyControl_positiveBorrow : s6Step68EarlyControlZeroArena.checkBorrow (1) s6Step68EarlyControlLog.positiveWork=some s6Step68EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step68EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step68EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step68EarlyControlZeroArena s6Step68EarlyControlPositiveArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step68EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step68EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step68EarlyControl_class : compileHmrSourceClassLog s6Step68EarlyControlZeroArena false 769 s6Step68EarlyControlZeroPlan.top 0 877 s6Step68EarlyControlLog.positiveWork s6Step68EarlyControlLog.classWork=some s6Step68EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step68EarlyControlClassPlan s6Step68EarlyControlZeroArena false 769 s6Step68EarlyControlZeroPlan.top 0 877
  constructor
  · decide +kernel
  · exact s6Step68EarlyControl_classOwned
  · exact s6Step68EarlyControl_positiveBorrow
  · exact s6Step68EarlyControl_classEquality

private theorem s6Step68EarlyControl_entryRecordOwned : ([854, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step68EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step68EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step68EarlyControl_entrySigmaOwned : ([877, 254] : List Wire).toFinset⊆s6Step68EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step68EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step68EarlyControl_fitBorrow : s6Step68EarlyControlFlagArena.checkBorrow ((30-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).length)) s6Step68EarlyControlLog.recordFresh=some s6Step68EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step68EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step68EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step68EarlyControlFittedArena,s6Step68EarlyControlFlagArena,s6Step68EarlyControlLog,arenaWires]

private theorem s6Step68EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step68EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step68EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step68EarlyControl_fit : compileHmrRecordGrowLog s6Step68EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step68EarlyControlLog.recordFresh=some s6Step68EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step68EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step68EarlyControl_fitBorrow

private theorem s6Step68EarlyControl_flagsBorrow : s6Step68EarlyControlEqualityArena.checkBorrow (6) s6Step68EarlyControlLog.flagWork=some s6Step68EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step68EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step68EarlyControlEqualityArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step68EarlyControlEqualityArena s6Step68EarlyControlFlagArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step68EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step68EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step68EarlyControl_flagsOwned : ([843, 253, 252, 251] : List Wire).toFinset⊆s6Step68EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step68EarlyControlEqualityArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step68EarlyControl_flags : compileHmrFlagsLog s6Step68EarlyControlClassPlan.equalityArena s6Step68EarlyControlClassPlan.equality.top 253 252 251 s6Step68EarlyControlLog.flagWork=some s6Step68EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step68EarlyControl_flagsOwned⟩
  · exact s6Step68EarlyControl_flagsBorrow

private theorem s6Step68EarlyControl_historyBorrow : s6Step68EarlyControlArena.checkBorrow ((30-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).length)) s6Step68EarlyControlLog.recordFresh=some s6Step68EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step68EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step68EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step68EarlyControlArena s6Step68EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step68EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step68EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step68EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] : List Wire).toFinset⊆s6Step68EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step68EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step68EarlyControl_history : compileHmrRecordGrowLog s6Step68EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step68EarlyControlLog.recordFresh=some s6Step68EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step68EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step68EarlyControl_historyBorrow

private theorem s6Step68EarlyControl_sigmaOwned : ([254, 877] : List Wire).toFinset⊆s6Step68EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step68EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step68EarlyControl_sigmaReleaseOwned : ([877] : List Wire).toFinset⊆s6Step68EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step68EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step68EarlyControl_sigmaRelease : s6Step68EarlyControlHistoryArena.release {877} (fun _ => false)=some s6Step68EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step68EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step68EarlyControlHistoryArena s6Step68EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,855),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [877] rfl rfl
    decide +kernel

private theorem s6Step68EarlyControl_sigma : compileHmrSigmaDropLog s6Step68EarlyControlHistoryArena false 0 0 254 877 []=some s6Step68EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step68EarlyControl_sigmaOwned⟩
  · exact s6Step68EarlyControl_sigmaRelease

private theorem s6Step68EarlyControl_zeroBorrow : s6Step68EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step68EarlyControlLog.zeroWork=some s6Step68EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step68EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step68EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step68EarlyControlArena s6Step68EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step68EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step68EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step68EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step68EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step68EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step68EarlyControl_zero : compileHmrEqualityLog s6Step68EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step68EarlyControlLog.zeroWork=some (s6Step68EarlyControlZeroArena,s6Step68EarlyControlLog.zeroWork,s6Step68EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step68EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step68EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step68EarlyControl_logged : s6Step68EarlyControlPlan.Logged s6Step68EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 877 254 253 252 251 854 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step68EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step68EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step68EarlyControl_zero
  · exact s6Step68EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step68EarlyControl_flags
  · exact s6Step68EarlyControl_fit
  · exact s6Step68EarlyControl_history
  · exact s6Step68EarlyControl_sigma
  · exact s6Step68EarlyControl_branch

private theorem s6Step68EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step68EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 877 254 253 252 251 854 30 s6Step68EarlyControlLog=some s6Step68EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step68EarlyControlPlan s6Step68EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 877 254 253 252 251 854 30 s6Step68EarlyControl_logged

private def s6Step68EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489],795⟩

private def s6Step68EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875],776⟩

private def s6Step68EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233],777⟩

private def s6Step68EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814],775⟩

private def s6Step68FrontBank : WindowBank := ⟨s6Step68EntryFRow,s6Step68EntryGRow,s6Step68EntryFvRow,s6Step68EntryGvRow⟩

private def s6Step68Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 822, 795]

private def s6Step68Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 830, 777]

private def s6Step68Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 838, 776]

private def s6Step68Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 821, 775]

private theorem s6Step68Counter_apart : Disjoint s6Step68HeadFvAfter.live s6Step68CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step68HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step68Counter_borrowed : s6Step68HeadFvAfter.checkBorrow 4 s6Step68CounterWork=some s6Step68CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step68HeadFvAfter s6Step68CounterDuring s6Step68CounterWork.toFinset s6Step68Counter_bounded s6Step68Counter_apart rfl

private theorem s6Step68Counter_owned : (877::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step68HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step68HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step68Counter_checked : compileHmrCounterStepLog s6Step68HeadFvAfter true 877 [774, 773, 772, 771, 770, 769] s6Step68CounterWork=some s6Step68CounterDuring := by
  have owned : ∀q∈877::[774, 773, 772, 771, 770, 769],q∈s6Step68HeadFvAfter.live := fun q hq => s6Step68Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step68Counter_borrowed

private def s6Step68EntryFAfter : Arena := s6Step68EntryFBefore

private theorem s6Step68EntryBank_incomingDistinct : ([s6Step68EntryFRow,s6Step68EntryGRow,s6Step68EntryFvRow,s6Step68EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step68EntryF_Incoming : rowsOwned s6Step68EntryFBefore [s6Step68EntryFRow,s6Step68EntryGRow,s6Step68EntryFvRow,s6Step68EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step68EntryFRow,s6Step68EntryGRow,s6Step68EntryFvRow,s6Step68EntryGvRow] 0 s6Step68EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step68EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step68EntryBank_outgoingOwned : rowsOwned s6Step68EntryGvAfter [s6Step68EntryFOut,s6Step68EntryGOut,s6Step68EntryFvOut,s6Step68EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step68EntryGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step68EntryF_Outgoing : rowsOwned s6Step68EntryGvAfter [s6Step68EntryFOut,s6Step68EntryGOut,s6Step68EntryFvOut,s6Step68EntryGvOut] :=
  hmrRows_owned_drop s6Step68EntryGvAfter [s6Step68EntryFOut,s6Step68EntryGOut,s6Step68EntryFvOut,s6Step68EntryGvOut] 0 s6Step68EntryBank_outgoingOwned

private theorem s6Step68EntryF_distinct : (s6Step68EntryFRow.sign::s6Step68EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step68EntryF_owned : (s6Step68EntryFRow.sign::s6Step68EntryFRow.payload).toFinset⊆s6Step68EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step68EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step68EntryF_reserved : s6Step68EntryFBefore.reserve s6Step68EntryFFresh.toFinset=some s6Step68EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step68EntryFFresh,arenaWires]
  · norm_num [s6Step68EntryFBefore,s6Step68EntryFFresh,arenaWires]
  · simp only [s6Step68EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step68EntryF_checked : planRowResizeLog s6Step68EntryFBefore s6Step68EntryFRow 234 s6Step68EntryFFresh=
    some (s6Step68EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489],795⟩,growRow 795 s6Step68EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step68EntryFBefore s6Step68EntryFAfter s6Step68EntryFRow 234 s6Step68EntryFFresh
    s6Step68EntryF_distinct s6Step68EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step68EntryF_reserved
  have rowEq : WindowRow.mk (s6Step68EntryFRow.payload++s6Step68EntryFFresh) s6Step68EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step68EntryFvAfter : Arena := s6Step68EntryFBefore

private def s6Step68EntryFvBefore : Arena := s6Step68EntryFBefore

private theorem s6Step68EntryFv_Incoming : rowsOwned s6Step68EntryFvBefore [s6Step68EntryFvRow,s6Step68EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step68EntryFRow,s6Step68EntryGRow,s6Step68EntryFvRow,s6Step68EntryGvRow] 2 s6Step68EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step68EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step68EntryFv_Outgoing : rowsOwned s6Step68EntryGvAfter [s6Step68EntryFvOut,s6Step68EntryGvOut] :=
  hmrRows_owned_drop s6Step68EntryGvAfter [s6Step68EntryFOut,s6Step68EntryGOut,s6Step68EntryFvOut,s6Step68EntryGvOut] 2 s6Step68EntryBank_outgoingOwned

private theorem s6Step68EntryFv_distinct : (s6Step68EntryFvRow.sign::s6Step68EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step68EntryFv_owned : (s6Step68EntryFvRow.sign::s6Step68EntryFvRow.payload).toFinset⊆s6Step68EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step68EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step68EntryFv_reserved : s6Step68EntryFvBefore.reserve s6Step68EntryFvFresh.toFinset=some s6Step68EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step68EntryFvFresh,arenaWires]
  · norm_num [s6Step68EntryFvBefore,s6Step68EntryFBefore,s6Step68EntryFvFresh,arenaWires]
  · simp only [s6Step68EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step68EntryFv_checked : planRowResizeLog s6Step68EntryFvBefore s6Step68EntryFvRow 47 s6Step68EntryFvFresh=
    some (s6Step68EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875],776⟩,growRow 776 s6Step68EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step68EntryFvBefore s6Step68EntryFvAfter s6Step68EntryFvRow 47 s6Step68EntryFvFresh
    s6Step68EntryFv_distinct s6Step68EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step68EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step68EntryFvRow.payload++s6Step68EntryFvFresh) s6Step68EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step68EntryGAfter : Arena := s6Step68EntryFBefore

private def s6Step68EntryGBefore : Arena := s6Step68EntryFBefore

private theorem s6Step68EntryG_Incoming : rowsOwned s6Step68EntryGBefore [s6Step68EntryGRow,s6Step68EntryFvRow,s6Step68EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step68EntryFRow,s6Step68EntryGRow,s6Step68EntryFvRow,s6Step68EntryGvRow] 1 s6Step68EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step68EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step68EntryG_Outgoing : rowsOwned s6Step68EntryGvAfter [s6Step68EntryGOut,s6Step68EntryFvOut,s6Step68EntryGvOut] :=
  hmrRows_owned_drop s6Step68EntryGvAfter [s6Step68EntryFOut,s6Step68EntryGOut,s6Step68EntryFvOut,s6Step68EntryGvOut] 1 s6Step68EntryBank_outgoingOwned

private theorem s6Step68EntryG_distinct : (s6Step68EntryGRow.sign::s6Step68EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step68EntryG_owned : (s6Step68EntryGRow.sign::s6Step68EntryGRow.payload).toFinset⊆s6Step68EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step68EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step68EntryG_reserved : s6Step68EntryGBefore.reserve s6Step68EntryGFresh.toFinset=some s6Step68EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step68EntryGFresh,arenaWires]
  · norm_num [s6Step68EntryGBefore,s6Step68EntryFBefore,s6Step68EntryGFresh,arenaWires]
  · simp only [s6Step68EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step68EntryG_checked : planRowResizeLog s6Step68EntryGBefore s6Step68EntryGRow 234 s6Step68EntryGFresh=
    some (s6Step68EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233],777⟩,growRow 777 s6Step68EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step68EntryGBefore s6Step68EntryGAfter s6Step68EntryGRow 234 s6Step68EntryGFresh
    s6Step68EntryG_distinct s6Step68EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step68EntryG_reserved
  have rowEq : WindowRow.mk (s6Step68EntryGRow.payload++s6Step68EntryGFresh) s6Step68EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step68EntryGvBefore : Arena := s6Step68EntryFBefore

private theorem s6Step68EntryGv_Incoming : rowsOwned s6Step68EntryGvBefore [s6Step68EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step68EntryFRow,s6Step68EntryGRow,s6Step68EntryFvRow,s6Step68EntryGvRow] 3 s6Step68EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step68EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step68EntryGv_Outgoing : rowsOwned s6Step68EntryGvAfter [s6Step68EntryGvOut] :=
  hmrRows_owned_drop s6Step68EntryGvAfter [s6Step68EntryFOut,s6Step68EntryGOut,s6Step68EntryFvOut,s6Step68EntryGvOut] 3 s6Step68EntryBank_outgoingOwned

private theorem s6Step68EntryGv_distinct : (s6Step68EntryGvRow.sign::s6Step68EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step68EntryGv_owned : (s6Step68EntryGvRow.sign::s6Step68EntryGvRow.payload).toFinset⊆s6Step68EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step68EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step68EntryGv_reserved : s6Step68EntryGvBefore.reserve s6Step68EntryGvFresh.toFinset=some s6Step68EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step68EntryGvFresh,arenaWires]
  · norm_num [s6Step68EntryGvBefore,s6Step68EntryFBefore,s6Step68EntryGvFresh,arenaWires]
  · simp only [s6Step68EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step68EntryGv_checked : planRowResizeLog s6Step68EntryGvBefore s6Step68EntryGvRow 47 s6Step68EntryGvFresh=
    some (s6Step68EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814],775⟩,growRow 775 s6Step68EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step68EntryGvBefore s6Step68EntryGvAfter s6Step68EntryGvRow 47 s6Step68EntryGvFresh
    s6Step68EntryGv_distinct s6Step68EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step68EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step68EntryGvRow.payload++s6Step68EntryGvFresh) s6Step68EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step68EntryBank_rows : planWindowRowsLog s6Step68EntryFBefore [(s6Step68EntryFRow,234),(s6Step68EntryGRow,234),(s6Step68EntryFvRow,47),(s6Step68EntryGvRow,47)] [s6Step68EntryFFresh,s6Step68EntryGFresh,s6Step68EntryFvFresh,s6Step68EntryGvFresh]=
    some (s6Step68EntryGvAfter,[s6Step68EntryFOut,s6Step68EntryGOut,s6Step68EntryFvOut,s6Step68EntryGvOut],(growRow 795 s6Step68EntryFFresh ++ (growRow 777 s6Step68EntryGFresh ++ (growRow 776 s6Step68EntryFvFresh ++ (growRow 775 s6Step68EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step68EntryGvAfter [] []=some (s6Step68EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step68EntryGvBefore s6Step68EntryGvAfter s6Step68EntryGvAfter
    s6Step68EntryGvRow s6Step68EntryGvOut 47 s6Step68EntryGvFresh [] [] []
    (growRow 775 s6Step68EntryGvFresh) ([]) s6Step68EntryGv_Incoming s6Step68EntryGv_checked h4 s6Step68EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step68EntryFvBefore s6Step68EntryFvAfter s6Step68EntryGvAfter
    s6Step68EntryFvRow s6Step68EntryFvOut 47 s6Step68EntryFvFresh [(s6Step68EntryGvRow,47)] [s6Step68EntryGvFresh] [s6Step68EntryGvOut]
    (growRow 776 s6Step68EntryFvFresh) ((growRow 775 s6Step68EntryGvFresh ++ [])) s6Step68EntryFv_Incoming s6Step68EntryFv_checked h3 s6Step68EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step68EntryGBefore s6Step68EntryGAfter s6Step68EntryGvAfter
    s6Step68EntryGRow s6Step68EntryGOut 234 s6Step68EntryGFresh [(s6Step68EntryFvRow,47),(s6Step68EntryGvRow,47)] [s6Step68EntryFvFresh,s6Step68EntryGvFresh] [s6Step68EntryFvOut,s6Step68EntryGvOut]
    (growRow 777 s6Step68EntryGFresh) ((growRow 776 s6Step68EntryFvFresh ++ (growRow 775 s6Step68EntryGvFresh ++ []))) s6Step68EntryG_Incoming s6Step68EntryG_checked h2 s6Step68EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step68EntryFBefore s6Step68EntryFAfter s6Step68EntryGvAfter
    s6Step68EntryFRow s6Step68EntryFOut 234 s6Step68EntryFFresh [(s6Step68EntryGRow,234),(s6Step68EntryFvRow,47),(s6Step68EntryGvRow,47)] [s6Step68EntryGFresh,s6Step68EntryFvFresh,s6Step68EntryGvFresh] [s6Step68EntryGOut,s6Step68EntryFvOut,s6Step68EntryGvOut]
    (growRow 795 s6Step68EntryFFresh) ((growRow 777 s6Step68EntryGFresh ++ (growRow 776 s6Step68EntryFvFresh ++ (growRow 775 s6Step68EntryGvFresh ++ [])))) s6Step68EntryF_Incoming s6Step68EntryF_checked h1 s6Step68EntryF_Outgoing
  exact h0

private theorem s6Step68EntryBank_checked : compileHmrBankResizeLog .entry s6Step68EntryFBefore ⟨s6Step68EntryFRow,s6Step68EntryGRow,s6Step68EntryFvRow,s6Step68EntryGvRow⟩ ⟨234,234,47,47⟩ [s6Step68EntryFFresh,s6Step68EntryGFresh,s6Step68EntryFvFresh,s6Step68EntryGvFresh]=
    some (s6Step68EntryGvAfter,⟨s6Step68EntryFOut,s6Step68EntryGOut,s6Step68EntryFvOut,s6Step68EntryGvOut⟩,(growRow 795 s6Step68EntryFFresh ++ (growRow 777 s6Step68EntryGFresh ++ (growRow 776 s6Step68EntryFvFresh ++ (growRow 775 s6Step68EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step68EntryBank_rows]
  rfl

private def s6Step68ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,233),(234,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,830),(831,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step68ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,233),(234,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,830),(831,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step68ExitFBefore : Arena := s6Step68ExitGAfter

private def s6Step68ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 822],795⟩

private def s6Step68ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 838],776⟩

private def s6Step68ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 830],777⟩

private def s6Step68ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 821],775⟩

private theorem s6Step68ExitBank_incomingDistinct : ([s6Step68ExitGRow,s6Step68ExitFRow,s6Step68ExitFvRow,s6Step68ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step68ExitF_Incoming : rowsOwned s6Step68ExitFBefore [s6Step68ExitFRow,s6Step68ExitFvRow,s6Step68ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step68ExitGRow,s6Step68ExitFRow,s6Step68ExitFvRow,s6Step68ExitGvRow] 1 s6Step68ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step68ExitFBefore (fun q => ([(0,233),(234,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,830),(831,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step68ExitBank_outgoingOwned : rowsOwned s6Step68ExitGvAfter [s6Step68ExitGOut,s6Step68ExitFOut,s6Step68ExitFvOut,s6Step68ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step68ExitGvAfter (fun q => ([(0,233),(234,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step68ExitF_Outgoing : rowsOwned s6Step68ExitGvAfter [s6Step68ExitFOut,s6Step68ExitFvOut,s6Step68ExitGvOut] :=
  hmrRows_owned_drop s6Step68ExitGvAfter [s6Step68ExitGOut,s6Step68ExitFOut,s6Step68ExitFvOut,s6Step68ExitGvOut] 1 s6Step68ExitBank_outgoingOwned

private theorem s6Step68ExitF_distinct : (s6Step68ExitFRow.sign::s6Step68ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step68ExitF_owned : (s6Step68ExitFRow.sign::s6Step68ExitFRow.payload).toFinset⊆s6Step68ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step68ExitFBefore (fun q => ([(0,233),(234,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,830),(831,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step68ExitF_retired : s6Step68ExitFBefore.retireSet s6Step68ExitFExtra.toFinset=s6Step68ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step68ExitFBefore s6Step68ExitFAfter s6Step68ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step68ExitFBefore s6Step68ExitFAfter (fun q => ([(0,233),(234,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,830),(831,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,233),(234,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,830),(831,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step68ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step68ExitF_checked : planRowResizeLog s6Step68ExitFBefore s6Step68ExitFRow 234 []=
    some (s6Step68ExitFAfter,s6Step68ExitFOut,shrinkRow 795 s6Step68ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step68ExitFBefore s6Step68ExitFRow 234 s6Step68ExitF_distinct s6Step68ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step68ExitFRow.payload.take 234) s6Step68ExitFRow.sign=s6Step68ExitFOut := by decide +kernel
  have hi : s6Step68ExitFRow.payload.drop 234=s6Step68ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step68ExitF_retired] at result
  exact result

private def s6Step68ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,233),(234,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step68ExitFvBefore : Arena := s6Step68ExitFAfter

private theorem s6Step68ExitFv_Incoming : rowsOwned s6Step68ExitFvBefore [s6Step68ExitFvRow,s6Step68ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step68ExitGRow,s6Step68ExitFRow,s6Step68ExitFvRow,s6Step68ExitGvRow] 2 s6Step68ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step68ExitFvBefore (fun q => ([(0,233),(234,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,830),(831,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step68ExitFv_Outgoing : rowsOwned s6Step68ExitGvAfter [s6Step68ExitFvOut,s6Step68ExitGvOut] :=
  hmrRows_owned_drop s6Step68ExitGvAfter [s6Step68ExitGOut,s6Step68ExitFOut,s6Step68ExitFvOut,s6Step68ExitGvOut] 2 s6Step68ExitBank_outgoingOwned

private theorem s6Step68ExitFv_distinct : (s6Step68ExitFvRow.sign::s6Step68ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step68ExitFv_owned : (s6Step68ExitFvRow.sign::s6Step68ExitFvRow.payload).toFinset⊆s6Step68ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step68ExitFvBefore (fun q => ([(0,233),(234,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,830),(831,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step68ExitFv_retired : s6Step68ExitFvBefore.retireSet s6Step68ExitFvExtra.toFinset=s6Step68ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step68ExitFvBefore s6Step68ExitFvAfter s6Step68ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step68ExitFvBefore s6Step68ExitFvAfter (fun q => ([(0,233),(234,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,830),(831,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,233),(234,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step68ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step68ExitFv_checked : planRowResizeLog s6Step68ExitFvBefore s6Step68ExitFvRow 47 []=
    some (s6Step68ExitFvAfter,s6Step68ExitFvOut,shrinkRow 776 s6Step68ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step68ExitFvBefore s6Step68ExitFvRow 47 s6Step68ExitFv_distinct s6Step68ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step68ExitFvRow.payload.take 47) s6Step68ExitFvRow.sign=s6Step68ExitFvOut := by decide +kernel
  have hi : s6Step68ExitFvRow.payload.drop 47=s6Step68ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step68ExitFv_retired] at result
  exact result

private def s6Step68ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step68ExitG_Incoming : rowsOwned s6Step68ExitGBefore [s6Step68ExitGRow,s6Step68ExitFRow,s6Step68ExitFvRow,s6Step68ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step68ExitGRow,s6Step68ExitFRow,s6Step68ExitFvRow,s6Step68ExitGvRow] 0 s6Step68ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step68ExitGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step68ExitG_Outgoing : rowsOwned s6Step68ExitGvAfter [s6Step68ExitGOut,s6Step68ExitFOut,s6Step68ExitFvOut,s6Step68ExitGvOut] :=
  hmrRows_owned_drop s6Step68ExitGvAfter [s6Step68ExitGOut,s6Step68ExitFOut,s6Step68ExitFvOut,s6Step68ExitGvOut] 0 s6Step68ExitBank_outgoingOwned

private theorem s6Step68ExitG_distinct : (s6Step68ExitGRow.sign::s6Step68ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step68ExitG_owned : (s6Step68ExitGRow.sign::s6Step68ExitGRow.payload).toFinset⊆s6Step68ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step68ExitGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step68ExitG_retired : s6Step68ExitGBefore.retireSet s6Step68ExitGExtra.toFinset=s6Step68ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step68ExitGBefore s6Step68ExitGAfter s6Step68ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step68ExitGBefore s6Step68ExitGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,233),(234,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,830),(831,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step68ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step68ExitG_checked : planRowResizeLog s6Step68ExitGBefore s6Step68ExitGRow 233 []=
    some (s6Step68ExitGAfter,s6Step68ExitGOut,shrinkRow 777 s6Step68ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step68ExitGBefore s6Step68ExitGRow 233 s6Step68ExitG_distinct s6Step68ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step68ExitGRow.payload.take 233) s6Step68ExitGRow.sign=s6Step68ExitGOut := by decide +kernel
  have hi : s6Step68ExitGRow.payload.drop 233=s6Step68ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step68ExitG_retired] at result
  exact result

private def s6Step68ExitGvBefore : Arena := s6Step68ExitFvAfter

private theorem s6Step68ExitGv_Incoming : rowsOwned s6Step68ExitGvBefore [s6Step68ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step68ExitGRow,s6Step68ExitFRow,s6Step68ExitFvRow,s6Step68ExitGvRow] 3 s6Step68ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step68ExitGvBefore (fun q => ([(0,233),(234,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step68ExitGv_Outgoing : rowsOwned s6Step68ExitGvAfter [s6Step68ExitGvOut] :=
  hmrRows_owned_drop s6Step68ExitGvAfter [s6Step68ExitGOut,s6Step68ExitFOut,s6Step68ExitFvOut,s6Step68ExitGvOut] 3 s6Step68ExitBank_outgoingOwned

private theorem s6Step68ExitGv_distinct : (s6Step68ExitGvRow.sign::s6Step68ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step68ExitGv_owned : (s6Step68ExitGvRow.sign::s6Step68ExitGvRow.payload).toFinset⊆s6Step68ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step68ExitGvBefore (fun q => ([(0,233),(234,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step68ExitGv_retired : s6Step68ExitGvBefore.retireSet s6Step68ExitGvExtra.toFinset=s6Step68ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step68ExitGvBefore s6Step68ExitGvAfter s6Step68ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step68ExitGvBefore s6Step68ExitGvAfter (fun q => ([(0,233),(234,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,822),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,233),(234,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step68ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step68ExitGv_checked : planRowResizeLog s6Step68ExitGvBefore s6Step68ExitGvRow 47 []=
    some (s6Step68ExitGvAfter,s6Step68ExitGvOut,shrinkRow 775 s6Step68ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step68ExitGvBefore s6Step68ExitGvRow 47 s6Step68ExitGv_distinct s6Step68ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step68ExitGvRow.payload.take 47) s6Step68ExitGvRow.sign=s6Step68ExitGvOut := by decide +kernel
  have hi : s6Step68ExitGvRow.payload.drop 47=s6Step68ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step68ExitGv_retired] at result
  exact result

private theorem s6Step68ExitBank_rows : planWindowRowsLog s6Step68ExitGBefore [(s6Step68ExitGRow,233),(s6Step68ExitFRow,234),(s6Step68ExitFvRow,47),(s6Step68ExitGvRow,47)] [[],[],[],[]]=
    some (s6Step68ExitGvAfter,[s6Step68ExitGOut,s6Step68ExitFOut,s6Step68ExitFvOut,s6Step68ExitGvOut],(shrinkRow 777 s6Step68ExitGExtra ++ (shrinkRow 795 s6Step68ExitFExtra ++ (shrinkRow 776 s6Step68ExitFvExtra ++ (shrinkRow 775 s6Step68ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step68ExitGvAfter [] []=some (s6Step68ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step68ExitGvBefore s6Step68ExitGvAfter s6Step68ExitGvAfter
    s6Step68ExitGvRow s6Step68ExitGvOut 47 [] [] [] []
    (shrinkRow 775 s6Step68ExitGvExtra) ([]) s6Step68ExitGv_Incoming s6Step68ExitGv_checked h4 s6Step68ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step68ExitFvBefore s6Step68ExitFvAfter s6Step68ExitGvAfter
    s6Step68ExitFvRow s6Step68ExitFvOut 47 [] [(s6Step68ExitGvRow,47)] [[]] [s6Step68ExitGvOut]
    (shrinkRow 776 s6Step68ExitFvExtra) ((shrinkRow 775 s6Step68ExitGvExtra ++ [])) s6Step68ExitFv_Incoming s6Step68ExitFv_checked h3 s6Step68ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step68ExitFBefore s6Step68ExitFAfter s6Step68ExitGvAfter
    s6Step68ExitFRow s6Step68ExitFOut 234 [] [(s6Step68ExitFvRow,47),(s6Step68ExitGvRow,47)] [[],[]] [s6Step68ExitFvOut,s6Step68ExitGvOut]
    (shrinkRow 795 s6Step68ExitFExtra) ((shrinkRow 776 s6Step68ExitFvExtra ++ (shrinkRow 775 s6Step68ExitGvExtra ++ []))) s6Step68ExitF_Incoming s6Step68ExitF_checked h2 s6Step68ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step68ExitGBefore s6Step68ExitGAfter s6Step68ExitGvAfter
    s6Step68ExitGRow s6Step68ExitGOut 233 [] [(s6Step68ExitFRow,234),(s6Step68ExitFvRow,47),(s6Step68ExitGvRow,47)] [[],[],[]] [s6Step68ExitFOut,s6Step68ExitFvOut,s6Step68ExitGvOut]
    (shrinkRow 777 s6Step68ExitGExtra) ((shrinkRow 795 s6Step68ExitFExtra ++ (shrinkRow 776 s6Step68ExitFvExtra ++ (shrinkRow 775 s6Step68ExitGvExtra ++ [])))) s6Step68ExitG_Incoming s6Step68ExitG_checked h1 s6Step68ExitG_Outgoing
  exact h0

private theorem s6Step68ExitBank_checked : compileHmrBankResizeLog .exit s6Step68ExitGBefore ⟨s6Step68ExitFRow,s6Step68ExitGRow,s6Step68ExitFvRow,s6Step68ExitGvRow⟩ ⟨234,233,47,47⟩ [[],[],[],[]]=
    some (s6Step68ExitGvAfter,⟨s6Step68ExitFOut,s6Step68ExitGOut,s6Step68ExitFvOut,s6Step68ExitGvOut⟩,(shrinkRow 777 s6Step68ExitGExtra ++ (shrinkRow 795 s6Step68ExitFExtra ++ (shrinkRow 776 s6Step68ExitFvExtra ++ (shrinkRow 775 s6Step68ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step68ExitBank_rows]
  rfl

private theorem s6Step68Add0_apart : Disjoint s6Step68Add0Arena.live s6Step68Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step68Add0Arena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step68Add0_card : s6Step68Add0Arena.live.card=866 := by
  decide +kernel

private theorem s6Step68Add0_borrowed : s6Step68Add0Arena.checkBorrow (hmrHybridCount s6Step68Add0Arena s6Step68Add0B.length) s6Step68Add0Work=some s6Step68Add0During := by
  have len : s6Step68Add0Work.length=hmrHybridCount s6Step68Add0Arena s6Step68Add0B.length := by
    rw [hmrHybridCount,s6Step68Add0_card]
    decide +kernel
  have nd : s6Step68Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step68Add0Arena s6Step68Add0During s6Step68Add0Work.toFinset s6Step68Add0_bounded s6Step68Add0_apart rfl

private theorem s6Step68Add0_distinct : (869::854::843::(s6Step68Add0A++s6Step68Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step68Add0_owned : (869::854::843::(s6Step68Add0A++s6Step68Add0B)).toFinset⊆s6Step68Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step68Add0Arena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step68Add0_checked : compileHmrHybridCinLog s6Step68Add0Arena 854 869 843 s6Step68Add0A s6Step68Add0B s6Step68Add0Work=some s6Step68Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step68Add0Arena s6Step68Add0During 854 869 843 s6Step68Add0A s6Step68Add0B s6Step68Add0Work
    (by decide +kernel) (by decide +kernel) s6Step68Add0_distinct
    (fun q hq => s6Step68Add0_owned (List.mem_toFinset.mpr hq)) s6Step68Add0_borrowed

private theorem s6Step68Add1_apart : Disjoint s6Step68Add1Arena.live s6Step68Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step68Add1Arena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step68Add1_card : s6Step68Add1Arena.live.card=866 := by
  decide +kernel

private theorem s6Step68Add1_borrowed : s6Step68Add1Arena.checkBorrow (hmrHybridCount s6Step68Add1Arena s6Step68Add1B.length) s6Step68Add1Work=some s6Step68Add1During := by
  have len : s6Step68Add1Work.length=hmrHybridCount s6Step68Add1Arena s6Step68Add1B.length := by
    rw [hmrHybridCount,s6Step68Add1_card]
    decide +kernel
  have nd : s6Step68Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step68Add1Arena s6Step68Add1During s6Step68Add1Work.toFinset s6Step68Add1_bounded s6Step68Add1_apart rfl

private theorem s6Step68Add1_distinct : (869::854::843::(s6Step68Add1A++s6Step68Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step68Add1_owned : (869::854::843::(s6Step68Add1A++s6Step68Add1B)).toFinset⊆s6Step68Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step68Add1Arena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step68Add1_checked : compileHmrHybridCinLog s6Step68Add1Arena 854 869 843 s6Step68Add1A s6Step68Add1B s6Step68Add1Work=some s6Step68Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step68Add1Arena s6Step68Add1During 854 869 843 s6Step68Add1A s6Step68Add1B s6Step68Add1Work
    (by decide +kernel) (by decide +kernel) s6Step68Add1_distinct
    (fun q hq => s6Step68Add1_owned (List.mem_toFinset.mpr hq)) s6Step68Add1_borrowed

private theorem s6Step68F4_apart : Disjoint (s6Step68Add0A++s6Step68Add0B).toFinset (s6Step68Add1A++s6Step68Add1B).toFinset := by
  have nd : ((s6Step68Add0A++s6Step68Add0B)++(s6Step68Add1A++s6Step68Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step68F4_carry : s6Step68F4FlagArena.checkBorrow 1 [843]=some s6Step68Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step68F4FlagArena,s6Step68HeadFvAfter,arenaWires]
  · change s6Step68Add0Arena.live=(s6Step68HeadFvAfter.live∪{869})∪{843}
    apply hmrArena_union_pair_of_filter_check s6Step68HeadFvAfter s6Step68Add0Arena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,847),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 869 843 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step68F4_distinct : (877::854::869::843::((s6Step68Add0A++s6Step68Add1A)++(s6Step68Add0B++s6Step68Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step68F4_flag : s6Step68HeadFvAfter.checkBorrow 1 [869]=some s6Step68F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step68HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step68F4_owned : (877::854::((s6Step68Add0A++s6Step68Add1A)++(s6Step68Add0B++s6Step68Add1B))).toFinset⊆s6Step68HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step68HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step68F4_checked : compileHmrHybridF4Log s6Step68HeadFvAfter 877 854 s6Step68Add0A s6Step68Add0B s6Step68Add1A s6Step68Add1B [869] [843] s6Step68Add0Work s6Step68Add1Work=some s6Step68F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step68HeadFvAfter s6Step68F4FlagArena s6Step68Add0Arena s6Step68Add0During s6Step68Add1During 877 854
    s6Step68Add0A s6Step68Add0B s6Step68Add1A s6Step68Add1B [869] [843] s6Step68Add0Work s6Step68Add1Work
    (fun q hq => s6Step68F4_owned (List.mem_toFinset.mpr hq)) s6Step68F4_flag s6Step68F4_carry
    s6Step68F4_distinct s6Step68F4_apart s6Step68Add0_checked s6Step68Add1_checked

private theorem s6Step68Front_branch : s6Step68FrontSigmaArena.checkBorrow 1 [854]=some s6Step68HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step68FrontSigmaArena,s6Step68EntryGvAfter,s6Step68EntryFBefore,arenaWires]
  · change s6Step68HeadGBefore.live=(s6Step68EntryGvAfter.live∪{877})∪{854}
    apply hmrArena_union_pair_of_filter_check s6Step68EntryGvAfter s6Step68HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 877 854 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step68Front_entry : HmrFrontEntryValid s6Step68EntryFBefore s6Step68FrontBank 234 47 ⟨234,233,47,47⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step68FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step68EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step68EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,854),(856,869),(870,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step68FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step68Front_sigma : s6Step68EntryGvAfter.checkBorrow 1 [877]=some s6Step68FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step68EntryGvAfter,s6Step68EntryFBefore,arenaWires]
  · rfl

private def s6Step68HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step68HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step68HeadFBefore : Arena := s6Step68HeadGAfter

private def s6Step68HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489],795⟩

private def s6Step68HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875],776⟩

private def s6Step68HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233],777⟩

private def s6Step68HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814],775⟩

private theorem s6Step68HeadBank_incomingDistinct : ([s6Step68HeadGRow,s6Step68HeadFRow,s6Step68HeadGvRow,s6Step68HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step68HeadF_Incoming : rowsOwned s6Step68HeadFBefore [s6Step68HeadFRow,s6Step68HeadGvRow,s6Step68HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step68HeadGRow,s6Step68HeadFRow,s6Step68HeadGvRow,s6Step68HeadFvRow] 1 s6Step68HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step68HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step68HeadBank_outgoingOwned : rowsOwned s6Step68HeadFvAfter [s6Step68HeadGOut,s6Step68HeadFOut,s6Step68HeadGvOut,s6Step68HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step68HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step68HeadF_Outgoing : rowsOwned s6Step68HeadFvAfter [s6Step68HeadFOut,s6Step68HeadGvOut,s6Step68HeadFvOut] :=
  hmrRows_owned_drop s6Step68HeadFvAfter [s6Step68HeadGOut,s6Step68HeadFOut,s6Step68HeadGvOut,s6Step68HeadFvOut] 1 s6Step68HeadBank_outgoingOwned

private theorem s6Step68HeadF_distinct : (s6Step68HeadFRow.sign::s6Step68HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step68HeadF_owned : (s6Step68HeadFRow.sign::s6Step68HeadFRow.payload).toFinset⊆s6Step68HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step68HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step68HeadF_reserved : s6Step68HeadFBefore.reserve s6Step68HeadFFresh.toFinset=some s6Step68HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step68HeadFFresh,arenaWires]
  · norm_num [s6Step68HeadFBefore,s6Step68HeadGAfter,s6Step68HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step68HeadFBefore s6Step68HeadFAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step68HeadFFresh rfl rfl
    · norm_num [s6Step68HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step68HeadF_checked : planRowResizeLog s6Step68HeadFBefore s6Step68HeadFRow 235 s6Step68HeadFFresh=
    some (s6Step68HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 822],795⟩,growRow 795 s6Step68HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step68HeadFBefore s6Step68HeadFAfter s6Step68HeadFRow 235 s6Step68HeadFFresh
    s6Step68HeadF_distinct s6Step68HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step68HeadF_reserved
  have rowEq : WindowRow.mk (s6Step68HeadFRow.payload++s6Step68HeadFFresh) s6Step68HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 822],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step68HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step68HeadFvBefore : Arena := s6Step68HeadGvAfter

private theorem s6Step68HeadFv_Incoming : rowsOwned s6Step68HeadFvBefore [s6Step68HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step68HeadGRow,s6Step68HeadFRow,s6Step68HeadGvRow,s6Step68HeadFvRow] 3 s6Step68HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step68HeadFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step68HeadFv_Outgoing : rowsOwned s6Step68HeadFvAfter [s6Step68HeadFvOut] :=
  hmrRows_owned_drop s6Step68HeadFvAfter [s6Step68HeadGOut,s6Step68HeadFOut,s6Step68HeadGvOut,s6Step68HeadFvOut] 3 s6Step68HeadBank_outgoingOwned

private theorem s6Step68HeadFv_distinct : (s6Step68HeadFvRow.sign::s6Step68HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step68HeadFv_owned : (s6Step68HeadFvRow.sign::s6Step68HeadFvRow.payload).toFinset⊆s6Step68HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step68HeadFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step68HeadFv_reserved : s6Step68HeadFvBefore.reserve s6Step68HeadFvFresh.toFinset=some s6Step68HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step68HeadFvFresh,arenaWires]
  · norm_num [s6Step68HeadFvBefore,s6Step68HeadGvAfter,s6Step68HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step68HeadFvBefore s6Step68HeadFvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step68HeadFvFresh rfl rfl
    · norm_num [s6Step68HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step68HeadFv_checked : planRowResizeLog s6Step68HeadFvBefore s6Step68HeadFvRow 48 s6Step68HeadFvFresh=
    some (s6Step68HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 838],776⟩,growRow 776 s6Step68HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step68HeadFvBefore s6Step68HeadFvAfter s6Step68HeadFvRow 48 s6Step68HeadFvFresh
    s6Step68HeadFv_distinct s6Step68HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step68HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step68HeadFvRow.payload++s6Step68HeadFvFresh) s6Step68HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 833, 875, 838],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step68HeadG_Incoming : rowsOwned s6Step68HeadGBefore [s6Step68HeadGRow,s6Step68HeadFRow,s6Step68HeadGvRow,s6Step68HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step68HeadGRow,s6Step68HeadFRow,s6Step68HeadGvRow,s6Step68HeadFvRow] 0 s6Step68HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step68HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step68HeadG_Outgoing : rowsOwned s6Step68HeadFvAfter [s6Step68HeadGOut,s6Step68HeadFOut,s6Step68HeadGvOut,s6Step68HeadFvOut] :=
  hmrRows_owned_drop s6Step68HeadFvAfter [s6Step68HeadGOut,s6Step68HeadFOut,s6Step68HeadGvOut,s6Step68HeadFvOut] 0 s6Step68HeadBank_outgoingOwned

private theorem s6Step68HeadG_distinct : (s6Step68HeadGRow.sign::s6Step68HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step68HeadG_owned : (s6Step68HeadGRow.sign::s6Step68HeadGRow.payload).toFinset⊆s6Step68HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step68HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step68HeadG_reserved : s6Step68HeadGBefore.reserve s6Step68HeadGFresh.toFinset=some s6Step68HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step68HeadGFresh,arenaWires]
  · norm_num [s6Step68HeadGBefore,s6Step68HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step68HeadGBefore s6Step68HeadGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,830),(831,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step68HeadGFresh rfl rfl
    · norm_num [s6Step68HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step68HeadG_checked : planRowResizeLog s6Step68HeadGBefore s6Step68HeadGRow 235 s6Step68HeadGFresh=
    some (s6Step68HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 830],777⟩,growRow 777 s6Step68HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step68HeadGBefore s6Step68HeadGAfter s6Step68HeadGRow 235 s6Step68HeadGFresh
    s6Step68HeadG_distinct s6Step68HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step68HeadG_reserved
  have rowEq : WindowRow.mk (s6Step68HeadGRow.payload++s6Step68HeadGFresh) s6Step68HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 830],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step68HeadGvBefore : Arena := s6Step68HeadFAfter

private theorem s6Step68HeadGv_Incoming : rowsOwned s6Step68HeadGvBefore [s6Step68HeadGvRow,s6Step68HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step68HeadGRow,s6Step68HeadFRow,s6Step68HeadGvRow,s6Step68HeadFvRow] 2 s6Step68HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step68HeadGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step68HeadGv_Outgoing : rowsOwned s6Step68HeadFvAfter [s6Step68HeadGvOut,s6Step68HeadFvOut] :=
  hmrRows_owned_drop s6Step68HeadFvAfter [s6Step68HeadGOut,s6Step68HeadFOut,s6Step68HeadGvOut,s6Step68HeadFvOut] 2 s6Step68HeadBank_outgoingOwned

private theorem s6Step68HeadGv_distinct : (s6Step68HeadGvRow.sign::s6Step68HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step68HeadGv_owned : (s6Step68HeadGvRow.sign::s6Step68HeadGvRow.payload).toFinset⊆s6Step68HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step68HeadGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step68HeadGv_reserved : s6Step68HeadGvBefore.reserve s6Step68HeadGvFresh.toFinset=some s6Step68HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step68HeadGvFresh,arenaWires]
  · norm_num [s6Step68HeadGvBefore,s6Step68HeadFAfter,s6Step68HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step68HeadGvBefore s6Step68HeadGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(845,847),(848,849),(850,855),(856,869),(870,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step68HeadGvFresh rfl rfl
    · norm_num [s6Step68HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step68HeadGv_checked : planRowResizeLog s6Step68HeadGvBefore s6Step68HeadGvRow 48 s6Step68HeadGvFresh=
    some (s6Step68HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 821],775⟩,growRow 775 s6Step68HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step68HeadGvBefore s6Step68HeadGvAfter s6Step68HeadGvRow 48 s6Step68HeadGvFresh
    s6Step68HeadGv_distinct s6Step68HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step68HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step68HeadGvRow.payload++s6Step68HeadGvFresh) s6Step68HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 821],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step68HeadBank_rows : planWindowRowsLog s6Step68HeadGBefore [(s6Step68HeadGRow,235),(s6Step68HeadFRow,235),(s6Step68HeadGvRow,48),(s6Step68HeadFvRow,48)] [s6Step68HeadGFresh,s6Step68HeadFFresh,s6Step68HeadGvFresh,s6Step68HeadFvFresh]=
    some (s6Step68HeadFvAfter,[s6Step68HeadGOut,s6Step68HeadFOut,s6Step68HeadGvOut,s6Step68HeadFvOut],(growRow 777 s6Step68HeadGFresh ++ (growRow 795 s6Step68HeadFFresh ++ (growRow 775 s6Step68HeadGvFresh ++ (growRow 776 s6Step68HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step68HeadFvAfter [] []=some (s6Step68HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step68HeadFvBefore s6Step68HeadFvAfter s6Step68HeadFvAfter
    s6Step68HeadFvRow s6Step68HeadFvOut 48 s6Step68HeadFvFresh [] [] []
    (growRow 776 s6Step68HeadFvFresh) ([]) s6Step68HeadFv_Incoming s6Step68HeadFv_checked h4 s6Step68HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step68HeadGvBefore s6Step68HeadGvAfter s6Step68HeadFvAfter
    s6Step68HeadGvRow s6Step68HeadGvOut 48 s6Step68HeadGvFresh [(s6Step68HeadFvRow,48)] [s6Step68HeadFvFresh] [s6Step68HeadFvOut]
    (growRow 775 s6Step68HeadGvFresh) ((growRow 776 s6Step68HeadFvFresh ++ [])) s6Step68HeadGv_Incoming s6Step68HeadGv_checked h3 s6Step68HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step68HeadFBefore s6Step68HeadFAfter s6Step68HeadFvAfter
    s6Step68HeadFRow s6Step68HeadFOut 235 s6Step68HeadFFresh [(s6Step68HeadGvRow,48),(s6Step68HeadFvRow,48)] [s6Step68HeadGvFresh,s6Step68HeadFvFresh] [s6Step68HeadGvOut,s6Step68HeadFvOut]
    (growRow 795 s6Step68HeadFFresh) ((growRow 775 s6Step68HeadGvFresh ++ (growRow 776 s6Step68HeadFvFresh ++ []))) s6Step68HeadF_Incoming s6Step68HeadF_checked h2 s6Step68HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step68HeadGBefore s6Step68HeadGAfter s6Step68HeadFvAfter
    s6Step68HeadGRow s6Step68HeadGOut 235 s6Step68HeadGFresh [(s6Step68HeadFRow,235),(s6Step68HeadGvRow,48),(s6Step68HeadFvRow,48)] [s6Step68HeadFFresh,s6Step68HeadGvFresh,s6Step68HeadFvFresh] [s6Step68HeadFOut,s6Step68HeadGvOut,s6Step68HeadFvOut]
    (growRow 777 s6Step68HeadGFresh) ((growRow 795 s6Step68HeadFFresh ++ (growRow 775 s6Step68HeadGvFresh ++ (growRow 776 s6Step68HeadFvFresh ++ [])))) s6Step68HeadG_Incoming s6Step68HeadG_checked h1 s6Step68HeadG_Outgoing
  exact h0

private theorem s6Step68HeadBank_checked : compileHmrBankResizeLog .headroom s6Step68HeadGBefore ⟨s6Step68HeadFRow,s6Step68HeadGRow,s6Step68HeadFvRow,s6Step68HeadGvRow⟩ ⟨235,235,48,48⟩ [s6Step68HeadGFresh,s6Step68HeadFFresh,s6Step68HeadGvFresh,s6Step68HeadFvFresh]=
    some (s6Step68HeadFvAfter,⟨s6Step68HeadFOut,s6Step68HeadGOut,s6Step68HeadFvOut,s6Step68HeadGvOut⟩,(growRow 777 s6Step68HeadGFresh ++ (growRow 795 s6Step68HeadFFresh ++ (growRow 775 s6Step68HeadGvFresh ++ (growRow 776 s6Step68HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step68HeadBank_rows]
  rfl

private theorem s6Step68Front_checked : compileHmrSourceFrontLog s6Step68EntryFBefore s6Step68FrontBank 234 47 ⟨234,233,47,47⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step68FrontLog=some s6Step68FrontPlan := by
  have pairEq : s6Step68FrontPair=⟨s6Step68HeadFRow,s6Step68HeadGRow,s6Step68HeadFvRow,s6Step68HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step68FrontHead=⟨s6Step68ExitFRow,s6Step68ExitGRow,s6Step68ExitFvRow,s6Step68ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step68Add0A=s6Step68FrontHead.f.wires := by decide +kernel
  have gEq : s6Step68Add0B=s6Step68FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step68Add1A=s6Step68FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step68Add1B=s6Step68FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step68EntryFBefore s6Step68FrontBank 234 47 ⟨234,233,47,47⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step68FrontLog s6Step68FrontPlan
  · exact s6Step68Front_entry
  · exact s6Step68EntryBank_checked
  · exact s6Step68Front_sigma
  · rfl
  · exact s6Step68Front_branch
  · rfl
  · simpa only [s6Step68FrontPlan,pairEq] using s6Step68HeadBank_checked
  · simpa only [s6Step68FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step68F4_checked
  · exact s6Step68Counter_checked
  · rfl
  · simpa only [s6Step68FrontPlan,headEq] using s6Step68ExitBank_checked

private theorem s6Step68Complete_explicit_checked : compileHmrEarlyStepLog s6Step68EntryFBefore s6Step68FrontBank 234 47 ⟨234,233,47,47⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step68CompleteLog=some s6Step68CompletePlan := by
  let Q := s6Step68EarlyControlPlan
  have hq := s6Step68EarlyControl_plan_checked
  have fv1 : s6Step68CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step68CompleteOut.fv.payload[2]?.getD s6Step68CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step68CompleteOut.fv.payload[3]?.getD s6Step68CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step68CompleteOut.fv.payload[4]?.getD s6Step68CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step68EntryFBefore s6Step68EarlyControlArena s6Step68FrontBank 234 47 ⟨234,233,47,47⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 30 s6Step68CompleteLog s6Step68FrontPlan Q
    s6Step68Front_checked s6Step68Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step68Complete_owned s6Step68Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step68EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 769 877 s6Step68CompleteOut.fv.second (s6Step68CompleteOut.fv.payload[2]?.getD s6Step68CompleteOut.fv.sign) (s6Step68CompleteOut.fv.payload[3]?.getD s6Step68CompleteOut.fv.sign) (s6Step68CompleteOut.fv.payload[4]?.getD s6Step68CompleteOut.fv.sign) 854 30 s6Step68EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep68Arena : Arena := s6Step68EntryFBefore
def s6PrivateStep68Bank : WindowBank := s6Step68FrontBank
def s6PrivateStep68Spec : HmrSourceWalkStepLog := ⟨234,47,⟨234,233,47,47⟩,30,.early s6Step68CompleteLog⟩
def s6PrivateStep68Plan : HmrSourceStepPlan := .early s6Step68CompletePlan
theorem s6PrivateStep68_source : s6PrivateStep68Spec=s6ObservedLogs64[4] := rfl
theorem s6PrivateStep68_checked : compileHmrSourceStepLog s6PrivateStep68Arena s6PrivateStep68Bank
    s6PrivateStep68Spec.fgWidth s6PrivateStep68Spec.vWidth s6PrivateStep68Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902]
    6 498 68 s6PrivateStep68Spec.need none s6PrivateStep68Spec.log=some s6PrivateStep68Plan := by
  change compileHmrSourceStepLog s6Step68EntryFBefore s6Step68FrontBank 234 47 ⟨234,233,47,47⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] 6 498 68 30 none (.early s6Step68CompleteLog)=some (.early s6Step68CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 68<498)]
  rw [s6Step68Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
