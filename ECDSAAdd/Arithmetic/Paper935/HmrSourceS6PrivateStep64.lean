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

private def s6Step64CompleteMoves : List (Wire × Wire) := [(821,236),(814,492)]

private def s6Step64EarlyControlLog : HmrEarlyControlLog := ⟨[814, 821, 822, 877, 875],[780],[855],[803, 922, 879, 784, 891, 846],[806]⟩

private def s6Step64FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [778, 888]],[[855], [780], [822], [875]],[[], [], [], []]⟩,[838],[833],[803],[922],[879, 784, 891, 846, 806, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[879, 784, 891, 846, 806, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816],[803, 922, 879, 784]⟩

private def s6Step64CompleteLog : HmrEarlyStepLog := ⟨s6Step64FrontLog,s6Step64CompleteMoves,s6Step64EarlyControlLog⟩

private def s6Step64ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491],795⟩

private def s6Step64ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886],776⟩

private def s6Step64ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235],777⟩

private def s6Step64ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888],775⟩

private def s6Step64FrontOut : WindowBank := ⟨s6Step64ExitFOut,s6Step64ExitGOut,s6Step64ExitFvOut,s6Step64ExitGvOut⟩

private def s6Step64CompleteOut : WindowBank := s6Step64FrontOut.repacked s6Step64CompleteMoves

private def s6Step64EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step64EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step64EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step64EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step64EarlyControlPositiveArena,[780],s6Step64EarlyControlEqualityArena,[855],⟨⟨838,false⟩,[⟨⟨780,false⟩,855⟩]⟩⟩

private def s6Step64EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step64EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step64EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step64EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step64EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step64EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step64EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,814⟩,⟨⟨772,false⟩,821⟩,⟨⟨771,false⟩,822⟩,⟨⟨770,false⟩,877⟩,⟨⟨769,false⟩,875⟩]⟩

private def s6Step64EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step64EarlyControlZeroArena,s6Step64EarlyControlZeroPlan,s6Step64EarlyControlClassPlan,s6Step64EarlyControlFlagArena,s6Step64EarlyControlFittedArena,s6Step64EarlyControlHistoryArena,s6Step64EarlyControlSigmaArena,s6Step64EarlyControlOutputArena,s6Step64EarlyControlLog⟩

private def s6Step64CounterWork : List Wire := [803, 922, 879, 784]

private theorem s6Step64Counter_bounded : s6Step64CounterWork.toFinset⊆arenaWires := by norm_num [s6Step64CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step64HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step64CounterDuring : Arena := ⟨s6Step64HeadFvAfter.live∪s6Step64CounterWork.toFinset,Finset.union_subset s6Step64HeadFvAfter.bounded s6Step64Counter_bounded⟩

private def s6Step64EntryFFresh : List Wire := []

private def s6Step64EntryFvFresh : List Wire := []

private def s6Step64EntryGFresh : List Wire := []

private def s6Step64EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step64EntryGvFresh : List Wire := [778, 888]

private def s6Step64ExitFExtra : List Wire := [492, 780]

private def s6Step64ExitFvExtra : List Wire := [877, 875]

private def s6Step64ExitGExtra : List Wire := [236, 855]

private def s6Step64ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,236),(237,492),(493,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step64ExitGvExtra : List Wire := [822]

private def s6Step64Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step64Add0Work : List Wire := [879, 784, 891, 846, 806, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step64Add0_bounded : s6Step64Add0Work.toFinset⊆arenaWires := by
  have h : s6Step64Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step64Add0During : Arena := ⟨s6Step64Add0Arena.live∪s6Step64Add0Work.toFinset,Finset.union_subset s6Step64Add0Arena.bounded s6Step64Add0_bounded⟩

private def s6Step64Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step64Add1Work : List Wire := [879, 784, 891, 846, 806, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816]

private theorem s6Step64Add1_bounded : s6Step64Add1Work.toFinset⊆arenaWires := by
  have h : s6Step64Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step64Add1During : Arena := ⟨s6Step64Add1Arena.live∪s6Step64Add1Work.toFinset,Finset.union_subset s6Step64Add1Arena.bounded s6Step64Add1_bounded⟩

private def s6Step64F4FlagArena : Arena := ⟨s6Step64HeadFvAfter.live∪{803},Finset.union_subset s6Step64HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step64F4Plan : HmrHybridF4Plan := ⟨s6Step64F4FlagArena,[803],s6Step64Add0Arena,[922],s6Step64Add0During,s6Step64Add0Work,s6Step64Add1During,s6Step64Add1Work⟩

private def s6Step64HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 780],795⟩

private def s6Step64HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 877, 875],776⟩

private def s6Step64HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 855],777⟩

private def s6Step64HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 822],775⟩

private def s6Step64FrontHead : WindowBank := ⟨s6Step64HeadFOut,s6Step64HeadGOut,s6Step64HeadFvOut,s6Step64HeadGvOut⟩

private def s6Step64EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492],795⟩

private def s6Step64EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 877],776⟩

private def s6Step64EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236],777⟩

private def s6Step64EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888],775⟩

private def s6Step64FrontPair : WindowBank := ⟨s6Step64EntryFOut,s6Step64EntryGOut,s6Step64EntryFvOut,s6Step64EntryGvOut⟩

private def s6Step64FrontSigmaArena : Arena := ⟨s6Step64EntryGvAfter.live∪{838},Finset.union_subset s6Step64EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step64HeadFFresh : List Wire := [780]

private def s6Step64HeadFvFresh : List Wire := [875]

private def s6Step64HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step64HeadGFresh : List Wire := [855]

private def s6Step64HeadGvFresh : List Wire := [822]

private def s6Step64FrontPlan : HmrSourceFront := ⟨s6Step64EntryGvAfter,s6Step64FrontPair,(growRow 795 s6Step64EntryFFresh ++ (growRow 777 s6Step64EntryGFresh ++ (growRow 776 s6Step64EntryFvFresh ++ (growRow 775 s6Step64EntryGvFresh ++ [])))),s6Step64FrontSigmaArena,[838],s6Step64HeadGBefore,[833],
  s6Step64HeadFvAfter,s6Step64FrontHead,(growRow 777 s6Step64HeadGFresh ++ (growRow 795 s6Step64HeadFFresh ++ (growRow 775 s6Step64HeadGvFresh ++ (growRow 776 s6Step64HeadFvFresh ++ [])))),s6Step64F4Plan,s6Step64CounterDuring,s6Step64CounterWork,s6Step64ExitGvAfter,s6Step64FrontOut,(shrinkRow 777 s6Step64ExitGExtra ++ (shrinkRow 795 s6Step64ExitFExtra ++ (shrinkRow 776 s6Step64ExitFvExtra ++ (shrinkRow 775 s6Step64ExitGvExtra ++ []))))⟩

private def s6Step64CompletePlan : HmrEarlyStepPlan := ⟨s6Step64FrontPlan,s6Step64EarlyControlArena,s6Step64EarlyControlPlan,s6Step64CompleteMoves⟩

private theorem s6Step64Complete_apart : List.Disjoint (s6Step64CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [838, 833, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824] := by
  have nd : ((s6Step64CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[838, 833, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step64Complete_owned : (s6Step64CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step64EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step64EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step64CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,492),(493,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step64CompleteRelocationMove0Borrowed : Arena := ⟨s6Step64ExitGvAfter.live∪{236},Finset.union_subset s6Step64ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step64CompleteRelocationMove1Borrowed : Arena := ⟨s6Step64CompleteRelocationMove0After.live∪{492},Finset.union_subset s6Step64CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step64CompleteRelocation_move0_owned : 821∈s6Step64ExitGvAfter.live := by norm_num [s6Step64ExitGvAfter,arenaWires]

private theorem s6Step64CompleteRelocation_move0_reserve : s6Step64ExitGvAfter.reserve {236}=some s6Step64CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step64ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step64CompleteRelocation_move0_retire : s6Step64CompleteRelocationMove0Borrowed.retireSet {821}=s6Step64CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step64CompleteRelocationMove0Borrowed s6Step64CompleteRelocationMove0After {821}
  change s6Step64CompleteRelocationMove0After.live=(s6Step64ExitGvAfter.live∪{236})\{821}
  apply hmrArena_update_of_filter_check s6Step64ExitGvAfter s6Step64CompleteRelocationMove0After (fun q => ([(0,236),(237,492),(493,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,492),(493,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [236] [821] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step64CompleteRelocation_move1_owned : 814∈s6Step64CompleteRelocationMove0After.live := by norm_num [s6Step64CompleteRelocationMove0After,arenaWires]

private theorem s6Step64CompleteRelocation_move1_reserve : s6Step64CompleteRelocationMove0After.reserve {492}=some s6Step64CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step64CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step64CompleteRelocation_move1_retire : s6Step64CompleteRelocationMove1Borrowed.retireSet {814}=s6Step64EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step64CompleteRelocationMove1Borrowed s6Step64EarlyControlArena {814}
  change s6Step64EarlyControlArena.live=(s6Step64CompleteRelocationMove0After.live∪{492})\{814}
  apply hmrArena_update_of_filter_check s6Step64CompleteRelocationMove0After s6Step64EarlyControlArena (fun q => ([(0,492),(493,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [492] [814] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step64CompleteRelocation_checked : s6Step64ExitGvAfter.checkRepack [(821,236),(814,492)]=some s6Step64EarlyControlArena := by
  have tail2 : s6Step64EarlyControlArena.checkRepack []=some s6Step64EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step64CompleteRelocationMove0After s6Step64CompleteRelocationMove1Borrowed s6Step64EarlyControlArena s6Step64EarlyControlArena 814 492 []
    s6Step64CompleteRelocation_move1_owned s6Step64CompleteRelocation_move1_reserve s6Step64CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step64ExitGvAfter s6Step64CompleteRelocationMove0Borrowed s6Step64CompleteRelocationMove0After s6Step64EarlyControlArena 821 236 [(814,492)]
    s6Step64CompleteRelocation_move0_owned s6Step64CompleteRelocation_move0_reserve s6Step64CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step64Complete_repack : s6Step64ExitGvAfter.checkRepack s6Step64CompleteMoves=some s6Step64EarlyControlArena := by
  simpa only [s6Step64CompleteMoves] using s6Step64CompleteRelocation_checked

private theorem s6Step64EarlyControl_branchOwned : ([833] : List Wire).toFinset⊆s6Step64EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step64EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step64EarlyControl_branch : compileHmrBranchRetirement s6Step64EarlyControlSigmaArena 833=some s6Step64EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step64EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step64EarlyControlSigmaArena s6Step64EarlyControlOutputArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [833] rfl rfl
    decide +kernel

private theorem s6Step64EarlyControl_classEqualityBorrow : s6Step64EarlyControlPositiveArena.checkBorrow (([838, 780] : List Wire).length-1) s6Step64EarlyControlLog.classWork=some s6Step64EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step64EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step64EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step64EarlyControlPositiveArena s6Step64EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step64EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step64EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step64EarlyControl_classEqualityOwned : ([838, 780] : List Wire).toFinset⊆s6Step64EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step64EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step64EarlyControl_classEquality : compileHmrEqualityLog s6Step64EarlyControlPositiveArena [838, 780] 0 s6Step64EarlyControlLog.classWork=some (s6Step64EarlyControlEqualityArena,s6Step64EarlyControlLog.classWork,s6Step64EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step64EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step64EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step64EarlyControl_classOwned : ([769, 875, 838] : List Wire).toFinset⊆s6Step64EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step64EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step64EarlyControl_positiveBorrow : s6Step64EarlyControlZeroArena.checkBorrow (1) s6Step64EarlyControlLog.positiveWork=some s6Step64EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step64EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step64EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step64EarlyControlZeroArena s6Step64EarlyControlPositiveArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step64EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step64EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step64EarlyControl_class : compileHmrSourceClassLog s6Step64EarlyControlZeroArena false 769 s6Step64EarlyControlZeroPlan.top 0 838 s6Step64EarlyControlLog.positiveWork s6Step64EarlyControlLog.classWork=some s6Step64EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step64EarlyControlClassPlan s6Step64EarlyControlZeroArena false 769 s6Step64EarlyControlZeroPlan.top 0 838
  constructor
  · decide +kernel
  · exact s6Step64EarlyControl_classOwned
  · exact s6Step64EarlyControl_positiveBorrow
  · exact s6Step64EarlyControl_classEquality

private theorem s6Step64EarlyControl_entryRecordOwned : ([833, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824] : List Wire).toFinset⊆s6Step64EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step64EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step64EarlyControl_entrySigmaOwned : ([838, 254] : List Wire).toFinset⊆s6Step64EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step64EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step64EarlyControl_fitBorrow : s6Step64EarlyControlFlagArena.checkBorrow ((28-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824] : List Wire).length)) s6Step64EarlyControlLog.recordFresh=some s6Step64EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step64EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step64EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step64EarlyControlFittedArena,s6Step64EarlyControlFlagArena,s6Step64EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step64EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824] : List Wire).toFinset⊆s6Step64EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step64EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step64EarlyControl_fit : compileHmrRecordGrowLog s6Step64EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824] 28 s6Step64EarlyControlLog.recordFresh=some s6Step64EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step64EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step64EarlyControl_fitBorrow

private theorem s6Step64EarlyControl_flagsBorrow : s6Step64EarlyControlEqualityArena.checkBorrow (6) s6Step64EarlyControlLog.flagWork=some s6Step64EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step64EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step64EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step64EarlyControlEqualityArena s6Step64EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step64EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step64EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step64EarlyControl_flagsOwned : ([855, 253, 252, 251] : List Wire).toFinset⊆s6Step64EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step64EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step64EarlyControl_flags : compileHmrFlagsLog s6Step64EarlyControlClassPlan.equalityArena s6Step64EarlyControlClassPlan.equality.top 253 252 251 s6Step64EarlyControlLog.flagWork=some s6Step64EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step64EarlyControl_flagsOwned⟩
  · exact s6Step64EarlyControl_flagsBorrow

private theorem s6Step64EarlyControl_historyBorrow : s6Step64EarlyControlArena.checkBorrow ((28-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824] : List Wire).length)) s6Step64EarlyControlLog.recordFresh=some s6Step64EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step64EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step64EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step64EarlyControlArena s6Step64EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step64EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step64EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step64EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824] : List Wire).toFinset⊆s6Step64EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step64EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step64EarlyControl_history : compileHmrRecordGrowLog s6Step64EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824] 28 s6Step64EarlyControlLog.recordFresh=some s6Step64EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step64EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step64EarlyControl_historyBorrow

private theorem s6Step64EarlyControl_sigmaOwned : ([254, 838] : List Wire).toFinset⊆s6Step64EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step64EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step64EarlyControl_sigmaReleaseOwned : ([838] : List Wire).toFinset⊆s6Step64EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step64EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step64EarlyControl_sigmaRelease : s6Step64EarlyControlHistoryArena.release {838} (fun _ => false)=some s6Step64EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step64EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step64EarlyControlHistoryArena s6Step64EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [838] rfl rfl
    decide +kernel

private theorem s6Step64EarlyControl_sigma : compileHmrSigmaDropLog s6Step64EarlyControlHistoryArena false 0 0 254 838 []=some s6Step64EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step64EarlyControl_sigmaOwned⟩
  · exact s6Step64EarlyControl_sigmaRelease

private theorem s6Step64EarlyControl_zeroBorrow : s6Step64EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step64EarlyControlLog.zeroWork=some s6Step64EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step64EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step64EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step64EarlyControlArena s6Step64EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step64EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step64EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step64EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step64EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step64EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,814),(818,819),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step64EarlyControl_zero : compileHmrEqualityLog s6Step64EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step64EarlyControlLog.zeroWork=some (s6Step64EarlyControlZeroArena,s6Step64EarlyControlLog.zeroWork,s6Step64EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step64EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step64EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step64EarlyControl_logged : s6Step64EarlyControlPlan.Logged s6Step64EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824] 769 838 254 253 252 251 833 28 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step64EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step64EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step64EarlyControl_zero
  · exact s6Step64EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step64EarlyControl_flags
  · exact s6Step64EarlyControl_fit
  · exact s6Step64EarlyControl_history
  · exact s6Step64EarlyControl_sigma
  · exact s6Step64EarlyControl_branch

private theorem s6Step64EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step64EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824] 769 838 254 253 252 251 833 28 s6Step64EarlyControlLog=some s6Step64EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step64EarlyControlPlan s6Step64EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824] 769 838 254 253 252 251 833 28 s6Step64EarlyControl_logged

private def s6Step64EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step64EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492],795⟩

private def s6Step64EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 877],776⟩

private def s6Step64EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236],777⟩

private def s6Step64EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880],775⟩

private def s6Step64FrontBank : WindowBank := ⟨s6Step64EntryFRow,s6Step64EntryGRow,s6Step64EntryFvRow,s6Step64EntryGvRow⟩

private def s6Step64Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 780, 795]

private def s6Step64Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 855, 777]

private def s6Step64Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 877, 875, 776]

private def s6Step64Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 822, 775]

private theorem s6Step64Counter_apart : Disjoint s6Step64HeadFvAfter.live s6Step64CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step64HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step64Counter_borrowed : s6Step64HeadFvAfter.checkBorrow 4 s6Step64CounterWork=some s6Step64CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step64HeadFvAfter s6Step64CounterDuring s6Step64CounterWork.toFinset s6Step64Counter_bounded s6Step64Counter_apart rfl

private theorem s6Step64Counter_owned : (838::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step64HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step64HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step64Counter_checked : compileHmrCounterStepLog s6Step64HeadFvAfter true 838 [774, 773, 772, 771, 770, 769] s6Step64CounterWork=some s6Step64CounterDuring := by
  have owned : ∀q∈838::[774, 773, 772, 771, 770, 769],q∈s6Step64HeadFvAfter.live := fun q hq => s6Step64Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step64Counter_borrowed

private def s6Step64EntryFAfter : Arena := s6Step64EntryFBefore

private theorem s6Step64EntryBank_incomingDistinct : ([s6Step64EntryFRow,s6Step64EntryGRow,s6Step64EntryFvRow,s6Step64EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step64EntryF_Incoming : rowsOwned s6Step64EntryFBefore [s6Step64EntryFRow,s6Step64EntryGRow,s6Step64EntryFvRow,s6Step64EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step64EntryFRow,s6Step64EntryGRow,s6Step64EntryFvRow,s6Step64EntryGvRow] 0 s6Step64EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step64EntryFBefore (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step64EntryBank_outgoingOwned : rowsOwned s6Step64EntryGvAfter [s6Step64EntryFOut,s6Step64EntryGOut,s6Step64EntryFvOut,s6Step64EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step64EntryGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step64EntryF_Outgoing : rowsOwned s6Step64EntryGvAfter [s6Step64EntryFOut,s6Step64EntryGOut,s6Step64EntryFvOut,s6Step64EntryGvOut] :=
  hmrRows_owned_drop s6Step64EntryGvAfter [s6Step64EntryFOut,s6Step64EntryGOut,s6Step64EntryFvOut,s6Step64EntryGvOut] 0 s6Step64EntryBank_outgoingOwned

private theorem s6Step64EntryF_distinct : (s6Step64EntryFRow.sign::s6Step64EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step64EntryF_owned : (s6Step64EntryFRow.sign::s6Step64EntryFRow.payload).toFinset⊆s6Step64EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step64EntryFBefore (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step64EntryF_reserved : s6Step64EntryFBefore.reserve s6Step64EntryFFresh.toFinset=some s6Step64EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step64EntryFFresh,arenaWires]
  · norm_num [s6Step64EntryFBefore,s6Step64EntryFFresh,arenaWires]
  · simp only [s6Step64EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step64EntryF_checked : planRowResizeLog s6Step64EntryFBefore s6Step64EntryFRow 237 s6Step64EntryFFresh=
    some (s6Step64EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492],795⟩,growRow 795 s6Step64EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step64EntryFBefore s6Step64EntryFAfter s6Step64EntryFRow 237 s6Step64EntryFFresh
    s6Step64EntryF_distinct s6Step64EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step64EntryF_reserved
  have rowEq : WindowRow.mk (s6Step64EntryFRow.payload++s6Step64EntryFFresh) s6Step64EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step64EntryFvAfter : Arena := s6Step64EntryFBefore

private def s6Step64EntryFvBefore : Arena := s6Step64EntryFBefore

private theorem s6Step64EntryFv_Incoming : rowsOwned s6Step64EntryFvBefore [s6Step64EntryFvRow,s6Step64EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step64EntryFRow,s6Step64EntryGRow,s6Step64EntryFvRow,s6Step64EntryGvRow] 2 s6Step64EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step64EntryFvBefore (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step64EntryFv_Outgoing : rowsOwned s6Step64EntryGvAfter [s6Step64EntryFvOut,s6Step64EntryGvOut] :=
  hmrRows_owned_drop s6Step64EntryGvAfter [s6Step64EntryFOut,s6Step64EntryGOut,s6Step64EntryFvOut,s6Step64EntryGvOut] 2 s6Step64EntryBank_outgoingOwned

private theorem s6Step64EntryFv_distinct : (s6Step64EntryFvRow.sign::s6Step64EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step64EntryFv_owned : (s6Step64EntryFvRow.sign::s6Step64EntryFvRow.payload).toFinset⊆s6Step64EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step64EntryFvBefore (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step64EntryFv_reserved : s6Step64EntryFvBefore.reserve s6Step64EntryFvFresh.toFinset=some s6Step64EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step64EntryFvFresh,arenaWires]
  · norm_num [s6Step64EntryFvBefore,s6Step64EntryFBefore,s6Step64EntryFvFresh,arenaWires]
  · simp only [s6Step64EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step64EntryFv_checked : planRowResizeLog s6Step64EntryFvBefore s6Step64EntryFvRow 46 s6Step64EntryFvFresh=
    some (s6Step64EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 877],776⟩,growRow 776 s6Step64EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step64EntryFvBefore s6Step64EntryFvAfter s6Step64EntryFvRow 46 s6Step64EntryFvFresh
    s6Step64EntryFv_distinct s6Step64EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step64EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step64EntryFvRow.payload++s6Step64EntryFvFresh) s6Step64EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 877],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step64EntryGAfter : Arena := s6Step64EntryFBefore

private def s6Step64EntryGBefore : Arena := s6Step64EntryFBefore

private theorem s6Step64EntryG_Incoming : rowsOwned s6Step64EntryGBefore [s6Step64EntryGRow,s6Step64EntryFvRow,s6Step64EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step64EntryFRow,s6Step64EntryGRow,s6Step64EntryFvRow,s6Step64EntryGvRow] 1 s6Step64EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step64EntryGBefore (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step64EntryG_Outgoing : rowsOwned s6Step64EntryGvAfter [s6Step64EntryGOut,s6Step64EntryFvOut,s6Step64EntryGvOut] :=
  hmrRows_owned_drop s6Step64EntryGvAfter [s6Step64EntryFOut,s6Step64EntryGOut,s6Step64EntryFvOut,s6Step64EntryGvOut] 1 s6Step64EntryBank_outgoingOwned

private theorem s6Step64EntryG_distinct : (s6Step64EntryGRow.sign::s6Step64EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step64EntryG_owned : (s6Step64EntryGRow.sign::s6Step64EntryGRow.payload).toFinset⊆s6Step64EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step64EntryGBefore (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step64EntryG_reserved : s6Step64EntryGBefore.reserve s6Step64EntryGFresh.toFinset=some s6Step64EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step64EntryGFresh,arenaWires]
  · norm_num [s6Step64EntryGBefore,s6Step64EntryFBefore,s6Step64EntryGFresh,arenaWires]
  · simp only [s6Step64EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step64EntryG_checked : planRowResizeLog s6Step64EntryGBefore s6Step64EntryGRow 237 s6Step64EntryGFresh=
    some (s6Step64EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236],777⟩,growRow 777 s6Step64EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step64EntryGBefore s6Step64EntryGAfter s6Step64EntryGRow 237 s6Step64EntryGFresh
    s6Step64EntryG_distinct s6Step64EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step64EntryG_reserved
  have rowEq : WindowRow.mk (s6Step64EntryGRow.payload++s6Step64EntryGFresh) s6Step64EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step64EntryGvBefore : Arena := s6Step64EntryFBefore

private theorem s6Step64EntryGv_Incoming : rowsOwned s6Step64EntryGvBefore [s6Step64EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step64EntryFRow,s6Step64EntryGRow,s6Step64EntryFvRow,s6Step64EntryGvRow] 3 s6Step64EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step64EntryGvBefore (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step64EntryGv_Outgoing : rowsOwned s6Step64EntryGvAfter [s6Step64EntryGvOut] :=
  hmrRows_owned_drop s6Step64EntryGvAfter [s6Step64EntryFOut,s6Step64EntryGOut,s6Step64EntryFvOut,s6Step64EntryGvOut] 3 s6Step64EntryBank_outgoingOwned

private theorem s6Step64EntryGv_distinct : (s6Step64EntryGvRow.sign::s6Step64EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step64EntryGv_owned : (s6Step64EntryGvRow.sign::s6Step64EntryGvRow.payload).toFinset⊆s6Step64EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step64EntryGvBefore (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step64EntryGv_reserved : s6Step64EntryGvBefore.reserve s6Step64EntryGvFresh.toFinset=some s6Step64EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step64EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step64EntryGvBefore,s6Step64EntryFBefore,s6Step64EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step64EntryGvBefore s6Step64EntryGvAfter (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step64EntryGvFresh rfl rfl
    · norm_num [s6Step64EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step64EntryGv_checked : planRowResizeLog s6Step64EntryGvBefore s6Step64EntryGvRow 46 s6Step64EntryGvFresh=
    some (s6Step64EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888],775⟩,growRow 775 s6Step64EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step64EntryGvBefore s6Step64EntryGvAfter s6Step64EntryGvRow 46 s6Step64EntryGvFresh
    s6Step64EntryGv_distinct s6Step64EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step64EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step64EntryGvRow.payload++s6Step64EntryGvFresh) s6Step64EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step64EntryBank_rows : planWindowRowsLog s6Step64EntryFBefore [(s6Step64EntryFRow,237),(s6Step64EntryGRow,237),(s6Step64EntryFvRow,46),(s6Step64EntryGvRow,46)] [s6Step64EntryFFresh,s6Step64EntryGFresh,s6Step64EntryFvFresh,s6Step64EntryGvFresh]=
    some (s6Step64EntryGvAfter,[s6Step64EntryFOut,s6Step64EntryGOut,s6Step64EntryFvOut,s6Step64EntryGvOut],(growRow 795 s6Step64EntryFFresh ++ (growRow 777 s6Step64EntryGFresh ++ (growRow 776 s6Step64EntryFvFresh ++ (growRow 775 s6Step64EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step64EntryGvAfter [] []=some (s6Step64EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step64EntryGvBefore s6Step64EntryGvAfter s6Step64EntryGvAfter
    s6Step64EntryGvRow s6Step64EntryGvOut 46 s6Step64EntryGvFresh [] [] []
    (growRow 775 s6Step64EntryGvFresh) ([]) s6Step64EntryGv_Incoming s6Step64EntryGv_checked h4 s6Step64EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step64EntryFvBefore s6Step64EntryFvAfter s6Step64EntryGvAfter
    s6Step64EntryFvRow s6Step64EntryFvOut 46 s6Step64EntryFvFresh [(s6Step64EntryGvRow,46)] [s6Step64EntryGvFresh] [s6Step64EntryGvOut]
    (growRow 776 s6Step64EntryFvFresh) ((growRow 775 s6Step64EntryGvFresh ++ [])) s6Step64EntryFv_Incoming s6Step64EntryFv_checked h3 s6Step64EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step64EntryGBefore s6Step64EntryGAfter s6Step64EntryGvAfter
    s6Step64EntryGRow s6Step64EntryGOut 237 s6Step64EntryGFresh [(s6Step64EntryFvRow,46),(s6Step64EntryGvRow,46)] [s6Step64EntryFvFresh,s6Step64EntryGvFresh] [s6Step64EntryFvOut,s6Step64EntryGvOut]
    (growRow 777 s6Step64EntryGFresh) ((growRow 776 s6Step64EntryFvFresh ++ (growRow 775 s6Step64EntryGvFresh ++ []))) s6Step64EntryG_Incoming s6Step64EntryG_checked h2 s6Step64EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step64EntryFBefore s6Step64EntryFAfter s6Step64EntryGvAfter
    s6Step64EntryFRow s6Step64EntryFOut 237 s6Step64EntryFFresh [(s6Step64EntryGRow,237),(s6Step64EntryFvRow,46),(s6Step64EntryGvRow,46)] [s6Step64EntryGFresh,s6Step64EntryFvFresh,s6Step64EntryGvFresh] [s6Step64EntryGOut,s6Step64EntryFvOut,s6Step64EntryGvOut]
    (growRow 795 s6Step64EntryFFresh) ((growRow 777 s6Step64EntryGFresh ++ (growRow 776 s6Step64EntryFvFresh ++ (growRow 775 s6Step64EntryGvFresh ++ [])))) s6Step64EntryF_Incoming s6Step64EntryF_checked h1 s6Step64EntryF_Outgoing
  exact h0

private theorem s6Step64EntryBank_checked : compileHmrBankResizeLog .entry s6Step64EntryFBefore ⟨s6Step64EntryFRow,s6Step64EntryGRow,s6Step64EntryFvRow,s6Step64EntryGvRow⟩ ⟨237,237,46,46⟩ [s6Step64EntryFFresh,s6Step64EntryGFresh,s6Step64EntryFvFresh,s6Step64EntryGvFresh]=
    some (s6Step64EntryGvAfter,⟨s6Step64EntryFOut,s6Step64EntryGOut,s6Step64EntryFvOut,s6Step64EntryGvOut⟩,(growRow 795 s6Step64EntryFFresh ++ (growRow 777 s6Step64EntryGFresh ++ (growRow 776 s6Step64EntryFvFresh ++ (growRow 775 s6Step64EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step64EntryBank_rows]
  rfl

private def s6Step64ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,236),(237,492),(493,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step64ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,236),(237,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step64ExitFBefore : Arena := s6Step64ExitGAfter

private def s6Step64ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 780],795⟩

private def s6Step64ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 877, 875],776⟩

private def s6Step64ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 855],777⟩

private def s6Step64ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 822],775⟩

private theorem s6Step64ExitBank_incomingDistinct : ([s6Step64ExitGRow,s6Step64ExitFRow,s6Step64ExitFvRow,s6Step64ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step64ExitF_Incoming : rowsOwned s6Step64ExitFBefore [s6Step64ExitFRow,s6Step64ExitFvRow,s6Step64ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step64ExitGRow,s6Step64ExitFRow,s6Step64ExitFvRow,s6Step64ExitGvRow] 1 s6Step64ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step64ExitFBefore (fun q => ([(0,236),(237,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step64ExitBank_outgoingOwned : rowsOwned s6Step64ExitGvAfter [s6Step64ExitGOut,s6Step64ExitFOut,s6Step64ExitFvOut,s6Step64ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step64ExitGvAfter (fun q => ([(0,236),(237,492),(493,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step64ExitF_Outgoing : rowsOwned s6Step64ExitGvAfter [s6Step64ExitFOut,s6Step64ExitFvOut,s6Step64ExitGvOut] :=
  hmrRows_owned_drop s6Step64ExitGvAfter [s6Step64ExitGOut,s6Step64ExitFOut,s6Step64ExitFvOut,s6Step64ExitGvOut] 1 s6Step64ExitBank_outgoingOwned

private theorem s6Step64ExitF_distinct : (s6Step64ExitFRow.sign::s6Step64ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step64ExitF_owned : (s6Step64ExitFRow.sign::s6Step64ExitFRow.payload).toFinset⊆s6Step64ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step64ExitFBefore (fun q => ([(0,236),(237,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step64ExitF_retired : s6Step64ExitFBefore.retireSet s6Step64ExitFExtra.toFinset=s6Step64ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step64ExitFBefore s6Step64ExitFAfter s6Step64ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step64ExitFBefore s6Step64ExitFAfter (fun q => ([(0,236),(237,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,236),(237,492),(493,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step64ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step64ExitF_checked : planRowResizeLog s6Step64ExitFBefore s6Step64ExitFRow 236 []=
    some (s6Step64ExitFAfter,s6Step64ExitFOut,shrinkRow 795 s6Step64ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step64ExitFBefore s6Step64ExitFRow 236 s6Step64ExitF_distinct s6Step64ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step64ExitFRow.payload.take 236) s6Step64ExitFRow.sign=s6Step64ExitFOut := by decide +kernel
  have hi : s6Step64ExitFRow.payload.drop 236=s6Step64ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step64ExitF_retired] at result
  exact result

private def s6Step64ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,236),(237,492),(493,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step64ExitFvBefore : Arena := s6Step64ExitFAfter

private theorem s6Step64ExitFv_Incoming : rowsOwned s6Step64ExitFvBefore [s6Step64ExitFvRow,s6Step64ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step64ExitGRow,s6Step64ExitFRow,s6Step64ExitFvRow,s6Step64ExitGvRow] 2 s6Step64ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step64ExitFvBefore (fun q => ([(0,236),(237,492),(493,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step64ExitFv_Outgoing : rowsOwned s6Step64ExitGvAfter [s6Step64ExitFvOut,s6Step64ExitGvOut] :=
  hmrRows_owned_drop s6Step64ExitGvAfter [s6Step64ExitGOut,s6Step64ExitFOut,s6Step64ExitFvOut,s6Step64ExitGvOut] 2 s6Step64ExitBank_outgoingOwned

private theorem s6Step64ExitFv_distinct : (s6Step64ExitFvRow.sign::s6Step64ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step64ExitFv_owned : (s6Step64ExitFvRow.sign::s6Step64ExitFvRow.payload).toFinset⊆s6Step64ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step64ExitFvBefore (fun q => ([(0,236),(237,492),(493,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step64ExitFv_retired : s6Step64ExitFvBefore.retireSet s6Step64ExitFvExtra.toFinset=s6Step64ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step64ExitFvBefore s6Step64ExitFvAfter s6Step64ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step64ExitFvBefore s6Step64ExitFvAfter (fun q => ([(0,236),(237,492),(493,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,236),(237,492),(493,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step64ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step64ExitFv_checked : planRowResizeLog s6Step64ExitFvBefore s6Step64ExitFvRow 45 []=
    some (s6Step64ExitFvAfter,s6Step64ExitFvOut,shrinkRow 776 s6Step64ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step64ExitFvBefore s6Step64ExitFvRow 45 s6Step64ExitFv_distinct s6Step64ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step64ExitFvRow.payload.take 45) s6Step64ExitFvRow.sign=s6Step64ExitFvOut := by decide +kernel
  have hi : s6Step64ExitFvRow.payload.drop 45=s6Step64ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step64ExitFv_retired] at result
  exact result

private def s6Step64ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step64ExitG_Incoming : rowsOwned s6Step64ExitGBefore [s6Step64ExitGRow,s6Step64ExitFRow,s6Step64ExitFvRow,s6Step64ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step64ExitGRow,s6Step64ExitFRow,s6Step64ExitFvRow,s6Step64ExitGvRow] 0 s6Step64ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step64ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step64ExitG_Outgoing : rowsOwned s6Step64ExitGvAfter [s6Step64ExitGOut,s6Step64ExitFOut,s6Step64ExitFvOut,s6Step64ExitGvOut] :=
  hmrRows_owned_drop s6Step64ExitGvAfter [s6Step64ExitGOut,s6Step64ExitFOut,s6Step64ExitFvOut,s6Step64ExitGvOut] 0 s6Step64ExitBank_outgoingOwned

private theorem s6Step64ExitG_distinct : (s6Step64ExitGRow.sign::s6Step64ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step64ExitG_owned : (s6Step64ExitGRow.sign::s6Step64ExitGRow.payload).toFinset⊆s6Step64ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step64ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step64ExitG_retired : s6Step64ExitGBefore.retireSet s6Step64ExitGExtra.toFinset=s6Step64ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step64ExitGBefore s6Step64ExitGAfter s6Step64ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step64ExitGBefore s6Step64ExitGAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,236),(237,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step64ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step64ExitG_checked : planRowResizeLog s6Step64ExitGBefore s6Step64ExitGRow 236 []=
    some (s6Step64ExitGAfter,s6Step64ExitGOut,shrinkRow 777 s6Step64ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step64ExitGBefore s6Step64ExitGRow 236 s6Step64ExitG_distinct s6Step64ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step64ExitGRow.payload.take 236) s6Step64ExitGRow.sign=s6Step64ExitGOut := by decide +kernel
  have hi : s6Step64ExitGRow.payload.drop 236=s6Step64ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step64ExitG_retired] at result
  exact result

private def s6Step64ExitGvBefore : Arena := s6Step64ExitFvAfter

private theorem s6Step64ExitGv_Incoming : rowsOwned s6Step64ExitGvBefore [s6Step64ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step64ExitGRow,s6Step64ExitFRow,s6Step64ExitFvRow,s6Step64ExitGvRow] 3 s6Step64ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step64ExitGvBefore (fun q => ([(0,236),(237,492),(493,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step64ExitGv_Outgoing : rowsOwned s6Step64ExitGvAfter [s6Step64ExitGvOut] :=
  hmrRows_owned_drop s6Step64ExitGvAfter [s6Step64ExitGOut,s6Step64ExitFOut,s6Step64ExitFvOut,s6Step64ExitGvOut] 3 s6Step64ExitBank_outgoingOwned

private theorem s6Step64ExitGv_distinct : (s6Step64ExitGvRow.sign::s6Step64ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step64ExitGv_owned : (s6Step64ExitGvRow.sign::s6Step64ExitGvRow.payload).toFinset⊆s6Step64ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step64ExitGvBefore (fun q => ([(0,236),(237,492),(493,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step64ExitGv_retired : s6Step64ExitGvBefore.retireSet s6Step64ExitGvExtra.toFinset=s6Step64ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step64ExitGvBefore s6Step64ExitGvAfter s6Step64ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step64ExitGvBefore s6Step64ExitGvAfter (fun q => ([(0,236),(237,492),(493,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,236),(237,492),(493,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step64ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step64ExitGv_checked : planRowResizeLog s6Step64ExitGvBefore s6Step64ExitGvRow 46 []=
    some (s6Step64ExitGvAfter,s6Step64ExitGvOut,shrinkRow 775 s6Step64ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step64ExitGvBefore s6Step64ExitGvRow 46 s6Step64ExitGv_distinct s6Step64ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step64ExitGvRow.payload.take 46) s6Step64ExitGvRow.sign=s6Step64ExitGvOut := by decide +kernel
  have hi : s6Step64ExitGvRow.payload.drop 46=s6Step64ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step64ExitGv_retired] at result
  exact result

private theorem s6Step64ExitBank_rows : planWindowRowsLog s6Step64ExitGBefore [(s6Step64ExitGRow,236),(s6Step64ExitFRow,236),(s6Step64ExitFvRow,45),(s6Step64ExitGvRow,46)] [[],[],[],[]]=
    some (s6Step64ExitGvAfter,[s6Step64ExitGOut,s6Step64ExitFOut,s6Step64ExitFvOut,s6Step64ExitGvOut],(shrinkRow 777 s6Step64ExitGExtra ++ (shrinkRow 795 s6Step64ExitFExtra ++ (shrinkRow 776 s6Step64ExitFvExtra ++ (shrinkRow 775 s6Step64ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step64ExitGvAfter [] []=some (s6Step64ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step64ExitGvBefore s6Step64ExitGvAfter s6Step64ExitGvAfter
    s6Step64ExitGvRow s6Step64ExitGvOut 46 [] [] [] []
    (shrinkRow 775 s6Step64ExitGvExtra) ([]) s6Step64ExitGv_Incoming s6Step64ExitGv_checked h4 s6Step64ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step64ExitFvBefore s6Step64ExitFvAfter s6Step64ExitGvAfter
    s6Step64ExitFvRow s6Step64ExitFvOut 45 [] [(s6Step64ExitGvRow,46)] [[]] [s6Step64ExitGvOut]
    (shrinkRow 776 s6Step64ExitFvExtra) ((shrinkRow 775 s6Step64ExitGvExtra ++ [])) s6Step64ExitFv_Incoming s6Step64ExitFv_checked h3 s6Step64ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step64ExitFBefore s6Step64ExitFAfter s6Step64ExitGvAfter
    s6Step64ExitFRow s6Step64ExitFOut 236 [] [(s6Step64ExitFvRow,45),(s6Step64ExitGvRow,46)] [[],[]] [s6Step64ExitFvOut,s6Step64ExitGvOut]
    (shrinkRow 795 s6Step64ExitFExtra) ((shrinkRow 776 s6Step64ExitFvExtra ++ (shrinkRow 775 s6Step64ExitGvExtra ++ []))) s6Step64ExitF_Incoming s6Step64ExitF_checked h2 s6Step64ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step64ExitGBefore s6Step64ExitGAfter s6Step64ExitGvAfter
    s6Step64ExitGRow s6Step64ExitGOut 236 [] [(s6Step64ExitFRow,236),(s6Step64ExitFvRow,45),(s6Step64ExitGvRow,46)] [[],[],[]] [s6Step64ExitFOut,s6Step64ExitFvOut,s6Step64ExitGvOut]
    (shrinkRow 777 s6Step64ExitGExtra) ((shrinkRow 795 s6Step64ExitFExtra ++ (shrinkRow 776 s6Step64ExitFvExtra ++ (shrinkRow 775 s6Step64ExitGvExtra ++ [])))) s6Step64ExitG_Incoming s6Step64ExitG_checked h1 s6Step64ExitG_Outgoing
  exact h0

private theorem s6Step64ExitBank_checked : compileHmrBankResizeLog .exit s6Step64ExitGBefore ⟨s6Step64ExitFRow,s6Step64ExitGRow,s6Step64ExitFvRow,s6Step64ExitGvRow⟩ ⟨236,236,45,46⟩ [[],[],[],[]]=
    some (s6Step64ExitGvAfter,⟨s6Step64ExitFOut,s6Step64ExitGOut,s6Step64ExitFvOut,s6Step64ExitGvOut⟩,(shrinkRow 777 s6Step64ExitGExtra ++ (shrinkRow 795 s6Step64ExitFExtra ++ (shrinkRow 776 s6Step64ExitFvExtra ++ (shrinkRow 775 s6Step64ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step64ExitBank_rows]
  rfl

private theorem s6Step64Add0_apart : Disjoint s6Step64Add0Arena.live s6Step64Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step64Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step64Add0_card : s6Step64Add0Arena.live.card=867 := by
  decide +kernel

private theorem s6Step64Add0_borrowed : s6Step64Add0Arena.checkBorrow (hmrHybridCount s6Step64Add0Arena s6Step64Add0B.length) s6Step64Add0Work=some s6Step64Add0During := by
  have len : s6Step64Add0Work.length=hmrHybridCount s6Step64Add0Arena s6Step64Add0B.length := by
    rw [hmrHybridCount,s6Step64Add0_card]
    decide +kernel
  have nd : s6Step64Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step64Add0Arena s6Step64Add0During s6Step64Add0Work.toFinset s6Step64Add0_bounded s6Step64Add0_apart rfl

private theorem s6Step64Add0_distinct : (803::833::922::(s6Step64Add0A++s6Step64Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step64Add0_owned : (803::833::922::(s6Step64Add0A++s6Step64Add0B)).toFinset⊆s6Step64Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step64Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step64Add0_checked : compileHmrHybridCinLog s6Step64Add0Arena 833 803 922 s6Step64Add0A s6Step64Add0B s6Step64Add0Work=some s6Step64Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step64Add0Arena s6Step64Add0During 833 803 922 s6Step64Add0A s6Step64Add0B s6Step64Add0Work
    (by decide +kernel) (by decide +kernel) s6Step64Add0_distinct
    (fun q hq => s6Step64Add0_owned (List.mem_toFinset.mpr hq)) s6Step64Add0_borrowed

private theorem s6Step64Add1_apart : Disjoint s6Step64Add1Arena.live s6Step64Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step64Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step64Add1_card : s6Step64Add1Arena.live.card=867 := by
  decide +kernel

private theorem s6Step64Add1_borrowed : s6Step64Add1Arena.checkBorrow (hmrHybridCount s6Step64Add1Arena s6Step64Add1B.length) s6Step64Add1Work=some s6Step64Add1During := by
  have len : s6Step64Add1Work.length=hmrHybridCount s6Step64Add1Arena s6Step64Add1B.length := by
    rw [hmrHybridCount,s6Step64Add1_card]
    decide +kernel
  have nd : s6Step64Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step64Add1Arena s6Step64Add1During s6Step64Add1Work.toFinset s6Step64Add1_bounded s6Step64Add1_apart rfl

private theorem s6Step64Add1_distinct : (803::833::922::(s6Step64Add1A++s6Step64Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step64Add1_owned : (803::833::922::(s6Step64Add1A++s6Step64Add1B)).toFinset⊆s6Step64Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step64Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step64Add1_checked : compileHmrHybridCinLog s6Step64Add1Arena 833 803 922 s6Step64Add1A s6Step64Add1B s6Step64Add1Work=some s6Step64Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step64Add1Arena s6Step64Add1During 833 803 922 s6Step64Add1A s6Step64Add1B s6Step64Add1Work
    (by decide +kernel) (by decide +kernel) s6Step64Add1_distinct
    (fun q hq => s6Step64Add1_owned (List.mem_toFinset.mpr hq)) s6Step64Add1_borrowed

private theorem s6Step64F4_apart : Disjoint (s6Step64Add0A++s6Step64Add0B).toFinset (s6Step64Add1A++s6Step64Add1B).toFinset := by
  have nd : ((s6Step64Add0A++s6Step64Add0B)++(s6Step64Add1A++s6Step64Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step64F4_carry : s6Step64F4FlagArena.checkBorrow 1 [922]=some s6Step64Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step64F4FlagArena,s6Step64HeadFvAfter,arenaWires]
  · change s6Step64Add0Arena.live=(s6Step64HeadFvAfter.live∪{803})∪{922}
    apply hmrArena_union_pair_of_filter_check s6Step64HeadFvAfter s6Step64Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 803 922 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step64F4_distinct : (838::833::803::922::((s6Step64Add0A++s6Step64Add1A)++(s6Step64Add0B++s6Step64Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step64F4_flag : s6Step64HeadFvAfter.checkBorrow 1 [803]=some s6Step64F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step64HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step64F4_owned : (838::833::((s6Step64Add0A++s6Step64Add1A)++(s6Step64Add0B++s6Step64Add1B))).toFinset⊆s6Step64HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step64HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step64F4_checked : compileHmrHybridF4Log s6Step64HeadFvAfter 838 833 s6Step64Add0A s6Step64Add0B s6Step64Add1A s6Step64Add1B [803] [922] s6Step64Add0Work s6Step64Add1Work=some s6Step64F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step64HeadFvAfter s6Step64F4FlagArena s6Step64Add0Arena s6Step64Add0During s6Step64Add1During 838 833
    s6Step64Add0A s6Step64Add0B s6Step64Add1A s6Step64Add1B [803] [922] s6Step64Add0Work s6Step64Add1Work
    (fun q hq => s6Step64F4_owned (List.mem_toFinset.mpr hq)) s6Step64F4_flag s6Step64F4_carry
    s6Step64F4_distinct s6Step64F4_apart s6Step64Add0_checked s6Step64Add1_checked

private theorem s6Step64Front_branch : s6Step64FrontSigmaArena.checkBorrow 1 [833]=some s6Step64HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step64FrontSigmaArena,s6Step64EntryGvAfter,arenaWires]
  · change s6Step64HeadGBefore.live=(s6Step64EntryGvAfter.live∪{838})∪{833}
    apply hmrArena_union_pair_of_filter_check s6Step64EntryGvAfter s6Step64HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 838 833 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step64Front_entry : HmrFrontEntryValid s6Step64EntryFBefore s6Step64FrontBank 237 46 ⟨236,236,45,46⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step64FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step64EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step64EntryFBefore (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step64FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step64Front_sigma : s6Step64EntryGvAfter.checkBorrow 1 [838]=some s6Step64FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step64EntryGvAfter,arenaWires]
  · rfl

private def s6Step64HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step64HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step64HeadFBefore : Arena := s6Step64HeadGAfter

private def s6Step64HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492],795⟩

private def s6Step64HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 877],776⟩

private def s6Step64HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236],777⟩

private def s6Step64HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888],775⟩

private theorem s6Step64HeadBank_incomingDistinct : ([s6Step64HeadGRow,s6Step64HeadFRow,s6Step64HeadGvRow,s6Step64HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step64HeadF_Incoming : rowsOwned s6Step64HeadFBefore [s6Step64HeadFRow,s6Step64HeadGvRow,s6Step64HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step64HeadGRow,s6Step64HeadFRow,s6Step64HeadGvRow,s6Step64HeadFvRow] 1 s6Step64HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step64HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step64HeadBank_outgoingOwned : rowsOwned s6Step64HeadFvAfter [s6Step64HeadGOut,s6Step64HeadFOut,s6Step64HeadGvOut,s6Step64HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step64HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step64HeadF_Outgoing : rowsOwned s6Step64HeadFvAfter [s6Step64HeadFOut,s6Step64HeadGvOut,s6Step64HeadFvOut] :=
  hmrRows_owned_drop s6Step64HeadFvAfter [s6Step64HeadGOut,s6Step64HeadFOut,s6Step64HeadGvOut,s6Step64HeadFvOut] 1 s6Step64HeadBank_outgoingOwned

private theorem s6Step64HeadF_distinct : (s6Step64HeadFRow.sign::s6Step64HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step64HeadF_owned : (s6Step64HeadFRow.sign::s6Step64HeadFRow.payload).toFinset⊆s6Step64HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step64HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step64HeadF_reserved : s6Step64HeadFBefore.reserve s6Step64HeadFFresh.toFinset=some s6Step64HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step64HeadFFresh,arenaWires]
  · norm_num [s6Step64HeadFBefore,s6Step64HeadGAfter,s6Step64HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step64HeadFBefore s6Step64HeadFAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step64HeadFFresh rfl rfl
    · norm_num [s6Step64HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step64HeadF_checked : planRowResizeLog s6Step64HeadFBefore s6Step64HeadFRow 238 s6Step64HeadFFresh=
    some (s6Step64HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 780],795⟩,growRow 795 s6Step64HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step64HeadFBefore s6Step64HeadFAfter s6Step64HeadFRow 238 s6Step64HeadFFresh
    s6Step64HeadF_distinct s6Step64HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step64HeadF_reserved
  have rowEq : WindowRow.mk (s6Step64HeadFRow.payload++s6Step64HeadFFresh) s6Step64HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 780],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step64HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step64HeadFvBefore : Arena := s6Step64HeadGvAfter

private theorem s6Step64HeadFv_Incoming : rowsOwned s6Step64HeadFvBefore [s6Step64HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step64HeadGRow,s6Step64HeadFRow,s6Step64HeadGvRow,s6Step64HeadFvRow] 3 s6Step64HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step64HeadFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step64HeadFv_Outgoing : rowsOwned s6Step64HeadFvAfter [s6Step64HeadFvOut] :=
  hmrRows_owned_drop s6Step64HeadFvAfter [s6Step64HeadGOut,s6Step64HeadFOut,s6Step64HeadGvOut,s6Step64HeadFvOut] 3 s6Step64HeadBank_outgoingOwned

private theorem s6Step64HeadFv_distinct : (s6Step64HeadFvRow.sign::s6Step64HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step64HeadFv_owned : (s6Step64HeadFvRow.sign::s6Step64HeadFvRow.payload).toFinset⊆s6Step64HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step64HeadFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step64HeadFv_reserved : s6Step64HeadFvBefore.reserve s6Step64HeadFvFresh.toFinset=some s6Step64HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step64HeadFvFresh,arenaWires]
  · norm_num [s6Step64HeadFvBefore,s6Step64HeadGvAfter,s6Step64HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step64HeadFvBefore s6Step64HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step64HeadFvFresh rfl rfl
    · norm_num [s6Step64HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step64HeadFv_checked : planRowResizeLog s6Step64HeadFvBefore s6Step64HeadFvRow 47 s6Step64HeadFvFresh=
    some (s6Step64HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 877, 875],776⟩,growRow 776 s6Step64HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step64HeadFvBefore s6Step64HeadFvAfter s6Step64HeadFvRow 47 s6Step64HeadFvFresh
    s6Step64HeadFv_distinct s6Step64HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step64HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step64HeadFvRow.payload++s6Step64HeadFvFresh) s6Step64HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 877, 875],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step64HeadG_Incoming : rowsOwned s6Step64HeadGBefore [s6Step64HeadGRow,s6Step64HeadFRow,s6Step64HeadGvRow,s6Step64HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step64HeadGRow,s6Step64HeadFRow,s6Step64HeadGvRow,s6Step64HeadFvRow] 0 s6Step64HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step64HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step64HeadG_Outgoing : rowsOwned s6Step64HeadFvAfter [s6Step64HeadGOut,s6Step64HeadFOut,s6Step64HeadGvOut,s6Step64HeadFvOut] :=
  hmrRows_owned_drop s6Step64HeadFvAfter [s6Step64HeadGOut,s6Step64HeadFOut,s6Step64HeadGvOut,s6Step64HeadFvOut] 0 s6Step64HeadBank_outgoingOwned

private theorem s6Step64HeadG_distinct : (s6Step64HeadGRow.sign::s6Step64HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step64HeadG_owned : (s6Step64HeadGRow.sign::s6Step64HeadGRow.payload).toFinset⊆s6Step64HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step64HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step64HeadG_reserved : s6Step64HeadGBefore.reserve s6Step64HeadGFresh.toFinset=some s6Step64HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step64HeadGFresh,arenaWires]
  · norm_num [s6Step64HeadGBefore,s6Step64HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step64HeadGBefore s6Step64HeadGAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step64HeadGFresh rfl rfl
    · norm_num [s6Step64HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step64HeadG_checked : planRowResizeLog s6Step64HeadGBefore s6Step64HeadGRow 238 s6Step64HeadGFresh=
    some (s6Step64HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 855],777⟩,growRow 777 s6Step64HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step64HeadGBefore s6Step64HeadGAfter s6Step64HeadGRow 238 s6Step64HeadGFresh
    s6Step64HeadG_distinct s6Step64HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step64HeadG_reserved
  have rowEq : WindowRow.mk (s6Step64HeadGRow.payload++s6Step64HeadGFresh) s6Step64HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 855],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step64HeadGvBefore : Arena := s6Step64HeadFAfter

private theorem s6Step64HeadGv_Incoming : rowsOwned s6Step64HeadGvBefore [s6Step64HeadGvRow,s6Step64HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step64HeadGRow,s6Step64HeadFRow,s6Step64HeadGvRow,s6Step64HeadFvRow] 2 s6Step64HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step64HeadGvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step64HeadGv_Outgoing : rowsOwned s6Step64HeadFvAfter [s6Step64HeadGvOut,s6Step64HeadFvOut] :=
  hmrRows_owned_drop s6Step64HeadFvAfter [s6Step64HeadGOut,s6Step64HeadFOut,s6Step64HeadGvOut,s6Step64HeadFvOut] 2 s6Step64HeadBank_outgoingOwned

private theorem s6Step64HeadGv_distinct : (s6Step64HeadGvRow.sign::s6Step64HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step64HeadGv_owned : (s6Step64HeadGvRow.sign::s6Step64HeadGvRow.payload).toFinset⊆s6Step64HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step64HeadGvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step64HeadGv_reserved : s6Step64HeadGvBefore.reserve s6Step64HeadGvFresh.toFinset=some s6Step64HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step64HeadGvFresh,arenaWires]
  · norm_num [s6Step64HeadGvBefore,s6Step64HeadFAfter,s6Step64HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step64HeadGvBefore s6Step64HeadGvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step64HeadGvFresh rfl rfl
    · norm_num [s6Step64HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step64HeadGv_checked : planRowResizeLog s6Step64HeadGvBefore s6Step64HeadGvRow 47 s6Step64HeadGvFresh=
    some (s6Step64HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 822],775⟩,growRow 775 s6Step64HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step64HeadGvBefore s6Step64HeadGvAfter s6Step64HeadGvRow 47 s6Step64HeadGvFresh
    s6Step64HeadGv_distinct s6Step64HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step64HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step64HeadGvRow.payload++s6Step64HeadGvFresh) s6Step64HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 822],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step64HeadBank_rows : planWindowRowsLog s6Step64HeadGBefore [(s6Step64HeadGRow,238),(s6Step64HeadFRow,238),(s6Step64HeadGvRow,47),(s6Step64HeadFvRow,47)] [s6Step64HeadGFresh,s6Step64HeadFFresh,s6Step64HeadGvFresh,s6Step64HeadFvFresh]=
    some (s6Step64HeadFvAfter,[s6Step64HeadGOut,s6Step64HeadFOut,s6Step64HeadGvOut,s6Step64HeadFvOut],(growRow 777 s6Step64HeadGFresh ++ (growRow 795 s6Step64HeadFFresh ++ (growRow 775 s6Step64HeadGvFresh ++ (growRow 776 s6Step64HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step64HeadFvAfter [] []=some (s6Step64HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step64HeadFvBefore s6Step64HeadFvAfter s6Step64HeadFvAfter
    s6Step64HeadFvRow s6Step64HeadFvOut 47 s6Step64HeadFvFresh [] [] []
    (growRow 776 s6Step64HeadFvFresh) ([]) s6Step64HeadFv_Incoming s6Step64HeadFv_checked h4 s6Step64HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step64HeadGvBefore s6Step64HeadGvAfter s6Step64HeadFvAfter
    s6Step64HeadGvRow s6Step64HeadGvOut 47 s6Step64HeadGvFresh [(s6Step64HeadFvRow,47)] [s6Step64HeadFvFresh] [s6Step64HeadFvOut]
    (growRow 775 s6Step64HeadGvFresh) ((growRow 776 s6Step64HeadFvFresh ++ [])) s6Step64HeadGv_Incoming s6Step64HeadGv_checked h3 s6Step64HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step64HeadFBefore s6Step64HeadFAfter s6Step64HeadFvAfter
    s6Step64HeadFRow s6Step64HeadFOut 238 s6Step64HeadFFresh [(s6Step64HeadGvRow,47),(s6Step64HeadFvRow,47)] [s6Step64HeadGvFresh,s6Step64HeadFvFresh] [s6Step64HeadGvOut,s6Step64HeadFvOut]
    (growRow 795 s6Step64HeadFFresh) ((growRow 775 s6Step64HeadGvFresh ++ (growRow 776 s6Step64HeadFvFresh ++ []))) s6Step64HeadF_Incoming s6Step64HeadF_checked h2 s6Step64HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step64HeadGBefore s6Step64HeadGAfter s6Step64HeadFvAfter
    s6Step64HeadGRow s6Step64HeadGOut 238 s6Step64HeadGFresh [(s6Step64HeadFRow,238),(s6Step64HeadGvRow,47),(s6Step64HeadFvRow,47)] [s6Step64HeadFFresh,s6Step64HeadGvFresh,s6Step64HeadFvFresh] [s6Step64HeadFOut,s6Step64HeadGvOut,s6Step64HeadFvOut]
    (growRow 777 s6Step64HeadGFresh) ((growRow 795 s6Step64HeadFFresh ++ (growRow 775 s6Step64HeadGvFresh ++ (growRow 776 s6Step64HeadFvFresh ++ [])))) s6Step64HeadG_Incoming s6Step64HeadG_checked h1 s6Step64HeadG_Outgoing
  exact h0

private theorem s6Step64HeadBank_checked : compileHmrBankResizeLog .headroom s6Step64HeadGBefore ⟨s6Step64HeadFRow,s6Step64HeadGRow,s6Step64HeadFvRow,s6Step64HeadGvRow⟩ ⟨238,238,47,47⟩ [s6Step64HeadGFresh,s6Step64HeadFFresh,s6Step64HeadGvFresh,s6Step64HeadFvFresh]=
    some (s6Step64HeadFvAfter,⟨s6Step64HeadFOut,s6Step64HeadGOut,s6Step64HeadFvOut,s6Step64HeadGvOut⟩,(growRow 777 s6Step64HeadGFresh ++ (growRow 795 s6Step64HeadFFresh ++ (growRow 775 s6Step64HeadGvFresh ++ (growRow 776 s6Step64HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step64HeadBank_rows]
  rfl

private theorem s6Step64Front_checked : compileHmrSourceFrontLog s6Step64EntryFBefore s6Step64FrontBank 237 46 ⟨236,236,45,46⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step64FrontLog=some s6Step64FrontPlan := by
  have pairEq : s6Step64FrontPair=⟨s6Step64HeadFRow,s6Step64HeadGRow,s6Step64HeadFvRow,s6Step64HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step64FrontHead=⟨s6Step64ExitFRow,s6Step64ExitGRow,s6Step64ExitFvRow,s6Step64ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step64Add0A=s6Step64FrontHead.f.wires := by decide +kernel
  have gEq : s6Step64Add0B=s6Step64FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step64Add1A=s6Step64FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step64Add1B=s6Step64FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step64EntryFBefore s6Step64FrontBank 237 46 ⟨236,236,45,46⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step64FrontLog s6Step64FrontPlan
  · exact s6Step64Front_entry
  · exact s6Step64EntryBank_checked
  · exact s6Step64Front_sigma
  · rfl
  · exact s6Step64Front_branch
  · rfl
  · simpa only [s6Step64FrontPlan,pairEq] using s6Step64HeadBank_checked
  · simpa only [s6Step64FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step64F4_checked
  · exact s6Step64Counter_checked
  · rfl
  · simpa only [s6Step64FrontPlan,headEq] using s6Step64ExitBank_checked

private theorem s6Step64Complete_explicit_checked : compileHmrEarlyStepLog s6Step64EntryFBefore s6Step64FrontBank 237 46 ⟨236,236,45,46⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824] 28 s6Step64CompleteLog=some s6Step64CompletePlan := by
  let Q := s6Step64EarlyControlPlan
  have hq := s6Step64EarlyControl_plan_checked
  have fv1 : s6Step64CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step64CompleteOut.fv.payload[2]?.getD s6Step64CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step64CompleteOut.fv.payload[3]?.getD s6Step64CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step64CompleteOut.fv.payload[4]?.getD s6Step64CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step64EntryFBefore s6Step64EarlyControlArena s6Step64FrontBank 237 46 ⟨236,236,45,46⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824] 28 s6Step64CompleteLog s6Step64FrontPlan Q
    s6Step64Front_checked s6Step64Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step64Complete_owned s6Step64Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step64EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824] 769 838 s6Step64CompleteOut.fv.second (s6Step64CompleteOut.fv.payload[2]?.getD s6Step64CompleteOut.fv.sign) (s6Step64CompleteOut.fv.payload[3]?.getD s6Step64CompleteOut.fv.sign) (s6Step64CompleteOut.fv.payload[4]?.getD s6Step64CompleteOut.fv.sign) 833 28 s6Step64EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep64Arena : Arena := s6Step64EntryFBefore
def s6PrivateStep64Bank : WindowBank := s6Step64FrontBank
def s6PrivateStep64Spec : HmrSourceWalkStepLog := ⟨237,46,⟨236,236,45,46⟩,28,.early s6Step64CompleteLog⟩
def s6PrivateStep64Plan : HmrSourceStepPlan := .early s6Step64CompletePlan
theorem s6PrivateStep64_source : s6PrivateStep64Spec=s6ObservedLogs64[0] := rfl
theorem s6PrivateStep64_checked : compileHmrSourceStepLog s6PrivateStep64Arena s6PrivateStep64Bank
    s6PrivateStep64Spec.fgWidth s6PrivateStep64Spec.vWidth s6PrivateStep64Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824]
    6 498 64 s6PrivateStep64Spec.need none s6PrivateStep64Spec.log=some s6PrivateStep64Plan := by
  change compileHmrSourceStepLog s6Step64EntryFBefore s6Step64FrontBank 237 46 ⟨236,236,45,46⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824] 6 498 64 28 none (.early s6Step64CompleteLog)=some (.early s6Step64CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 64<498)]
  rw [s6Step64Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
