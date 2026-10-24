import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep125
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

private def s6Step127CompleteMoves : List (Wire × Wire) := [(841,205),(822,461)]

private def s6Step127EarlyControlLog : HmrEarlyControlLog := ⟨[822, 841, 813, 833, 838],[850],[879],[875, 882, 891, 903, 791, 825],[]⟩

private def s6Step127FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[838], [833], [813], [821]],[[], [], [], []]⟩,[854],[796],[850],[879],[875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[850, 879, 875, 882]⟩

private def s6Step127CompleteLog : HmrEarlyStepLog := ⟨s6Step127FrontLog,s6Step127CompleteMoves,s6Step127EarlyControlLog⟩

private def s6Step127ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460],795⟩

private def s6Step127ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821],776⟩

private def s6Step127ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204],777⟩

private def s6Step127ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848],775⟩

private def s6Step127FrontOut : WindowBank := ⟨s6Step127ExitFOut,s6Step127ExitGOut,s6Step127ExitFvOut,s6Step127ExitGvOut⟩

private def s6Step127CompleteOut : WindowBank := s6Step127FrontOut.repacked s6Step127CompleteMoves

private def s6Step127EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step127EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step127EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step127EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step127EarlyControlPositiveArena,[850],s6Step127EarlyControlEqualityArena,[879],⟨⟨854,false⟩,[⟨⟨850,false⟩,879⟩]⟩⟩

private def s6Step127EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step127EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step127EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step127EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step127EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step127EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step127EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,822⟩,⟨⟨772,false⟩,841⟩,⟨⟨771,false⟩,813⟩,⟨⟨770,false⟩,833⟩,⟨⟨769,false⟩,838⟩]⟩

private def s6Step127EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step127EarlyControlZeroArena,s6Step127EarlyControlZeroPlan,s6Step127EarlyControlClassPlan,s6Step127EarlyControlFlagArena,s6Step127EarlyControlFittedArena,s6Step127EarlyControlHistoryArena,s6Step127EarlyControlSigmaArena,s6Step127EarlyControlOutputArena,s6Step127EarlyControlLog⟩

private def s6Step127CounterWork : List Wire := [850, 879, 875, 882]

private theorem s6Step127Counter_bounded : s6Step127CounterWork.toFinset⊆arenaWires := by norm_num [s6Step127CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step127HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step127CounterDuring : Arena := ⟨s6Step127HeadFvAfter.live∪s6Step127CounterWork.toFinset,Finset.union_subset s6Step127HeadFvAfter.bounded s6Step127Counter_bounded⟩

private def s6Step127EntryFFresh : List Wire := []

private def s6Step127EntryFvFresh : List Wire := []

private def s6Step127EntryGFresh : List Wire := []

private def s6Step127EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step127EntryGvAfter : Arena := s6Step127EntryFBefore

private def s6Step127EntryGvFresh : List Wire := []

private def s6Step127ExitFExtra : List Wire := [461, 833]

private def s6Step127ExitGExtra : List Wire := [205, 838]

private def s6Step127ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,205),(206,461),(462,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step127ExitGvExtra : List Wire := [813]

private def s6Step127Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step127Add0Work : List Wire := [875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step127Add0_bounded : s6Step127Add0Work.toFinset⊆arenaWires := by
  have h : s6Step127Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step127Add0During : Arena := ⟨s6Step127Add0Arena.live∪s6Step127Add0Work.toFinset,Finset.union_subset s6Step127Add0Arena.bounded s6Step127Add0_bounded⟩

private def s6Step127Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step127Add1Work : List Wire := [875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step127Add1_bounded : s6Step127Add1Work.toFinset⊆arenaWires := by
  have h : s6Step127Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step127Add1During : Arena := ⟨s6Step127Add1Arena.live∪s6Step127Add1Work.toFinset,Finset.union_subset s6Step127Add1Arena.bounded s6Step127Add1_bounded⟩

private def s6Step127F4FlagArena : Arena := ⟨s6Step127HeadFvAfter.live∪{850},Finset.union_subset s6Step127HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step127F4Plan : HmrHybridF4Plan := ⟨s6Step127F4FlagArena,[850],s6Step127Add0Arena,[879],s6Step127Add0During,s6Step127Add0Work,s6Step127Add1During,s6Step127Add1Work⟩

private def s6Step127HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 833],795⟩

private def s6Step127HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821],776⟩

private def s6Step127HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 838],777⟩

private def s6Step127HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 813],775⟩

private def s6Step127FrontHead : WindowBank := ⟨s6Step127HeadFOut,s6Step127HeadGOut,s6Step127HeadFvOut,s6Step127HeadGvOut⟩

private def s6Step127EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461],795⟩

private def s6Step127EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814],776⟩

private def s6Step127EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205],777⟩

private def s6Step127EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848],775⟩

private def s6Step127FrontPair : WindowBank := ⟨s6Step127EntryFOut,s6Step127EntryGOut,s6Step127EntryFvOut,s6Step127EntryGvOut⟩

private def s6Step127FrontSigmaArena : Arena := ⟨s6Step127EntryGvAfter.live∪{854},Finset.union_subset s6Step127EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step127HeadFFresh : List Wire := [833]

private def s6Step127HeadFvFresh : List Wire := [821]

private def s6Step127HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step127HeadGFresh : List Wire := [838]

private def s6Step127HeadGvFresh : List Wire := [813]

private def s6Step127FrontPlan : HmrSourceFront := ⟨s6Step127EntryGvAfter,s6Step127FrontPair,(growRow 795 s6Step127EntryFFresh ++ (growRow 777 s6Step127EntryGFresh ++ (growRow 776 s6Step127EntryFvFresh ++ (growRow 775 s6Step127EntryGvFresh ++ [])))),s6Step127FrontSigmaArena,[854],s6Step127HeadGBefore,[796],
  s6Step127HeadFvAfter,s6Step127FrontHead,(growRow 777 s6Step127HeadGFresh ++ (growRow 795 s6Step127HeadFFresh ++ (growRow 775 s6Step127HeadGvFresh ++ (growRow 776 s6Step127HeadFvFresh ++ [])))),s6Step127F4Plan,s6Step127CounterDuring,s6Step127CounterWork,s6Step127ExitGvAfter,s6Step127FrontOut,(shrinkRow 777 s6Step127ExitGExtra ++ (shrinkRow 795 s6Step127ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step127ExitGvExtra ++ []))))⟩

private def s6Step127CompletePlan : HmrEarlyStepPlan := ⟨s6Step127FrontPlan,s6Step127EarlyControlArena,s6Step127EarlyControlPlan,s6Step127CompleteMoves⟩

private theorem s6Step127Complete_apart : List.Disjoint (s6Step127CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [854, 796, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] := by
  have nd : ((s6Step127CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[854, 796, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step127Complete_owned : (s6Step127CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step127EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step127EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step127CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,461),(462,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step127CompleteRelocationMove0Borrowed : Arena := ⟨s6Step127ExitGvAfter.live∪{205},Finset.union_subset s6Step127ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step127CompleteRelocationMove1Borrowed : Arena := ⟨s6Step127CompleteRelocationMove0After.live∪{461},Finset.union_subset s6Step127CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step127CompleteRelocation_move0_owned : 841∈s6Step127ExitGvAfter.live := by norm_num [s6Step127ExitGvAfter,arenaWires]

private theorem s6Step127CompleteRelocation_move0_reserve : s6Step127ExitGvAfter.reserve {205}=some s6Step127CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step127ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step127CompleteRelocation_move0_retire : s6Step127CompleteRelocationMove0Borrowed.retireSet {841}=s6Step127CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step127CompleteRelocationMove0Borrowed s6Step127CompleteRelocationMove0After {841}
  change s6Step127CompleteRelocationMove0After.live=(s6Step127ExitGvAfter.live∪{205})\{841}
  apply hmrArena_update_of_filter_check s6Step127ExitGvAfter s6Step127CompleteRelocationMove0After (fun q => ([(0,205),(206,461),(462,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,461),(462,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [205] [841] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step127CompleteRelocation_move1_owned : 822∈s6Step127CompleteRelocationMove0After.live := by norm_num [s6Step127CompleteRelocationMove0After,arenaWires]

private theorem s6Step127CompleteRelocation_move1_reserve : s6Step127CompleteRelocationMove0After.reserve {461}=some s6Step127CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step127CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step127CompleteRelocation_move1_retire : s6Step127CompleteRelocationMove1Borrowed.retireSet {822}=s6Step127EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step127CompleteRelocationMove1Borrowed s6Step127EarlyControlArena {822}
  change s6Step127EarlyControlArena.live=(s6Step127CompleteRelocationMove0After.live∪{461})\{822}
  apply hmrArena_update_of_filter_check s6Step127CompleteRelocationMove0After s6Step127EarlyControlArena (fun q => ([(0,461),(462,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [461] [822] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step127CompleteRelocation_checked : s6Step127ExitGvAfter.checkRepack [(841,205),(822,461)]=some s6Step127EarlyControlArena := by
  have tail2 : s6Step127EarlyControlArena.checkRepack []=some s6Step127EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step127CompleteRelocationMove0After s6Step127CompleteRelocationMove1Borrowed s6Step127EarlyControlArena s6Step127EarlyControlArena 822 461 []
    s6Step127CompleteRelocation_move1_owned s6Step127CompleteRelocation_move1_reserve s6Step127CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step127ExitGvAfter s6Step127CompleteRelocationMove0Borrowed s6Step127CompleteRelocationMove0After s6Step127EarlyControlArena 841 205 [(822,461)]
    s6Step127CompleteRelocation_move0_owned s6Step127CompleteRelocation_move0_reserve s6Step127CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step127Complete_repack : s6Step127ExitGvAfter.checkRepack s6Step127CompleteMoves=some s6Step127EarlyControlArena := by
  simpa only [s6Step127CompleteMoves] using s6Step127CompleteRelocation_checked

private theorem s6Step127EarlyControl_branchOwned : ([796] : List Wire).toFinset⊆s6Step127EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step127EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step127EarlyControl_branch : compileHmrBranchRetirement s6Step127EarlyControlSigmaArena 796=some s6Step127EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step127EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step127EarlyControlSigmaArena s6Step127EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [796] rfl rfl
    decide +kernel

private theorem s6Step127EarlyControl_classEqualityBorrow : s6Step127EarlyControlPositiveArena.checkBorrow (([854, 850] : List Wire).length-1) s6Step127EarlyControlLog.classWork=some s6Step127EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step127EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step127EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step127EarlyControlEqualityArena,s6Step127EarlyControlPositiveArena,s6Step127EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step127EarlyControl_classEqualityOwned : ([854, 850] : List Wire).toFinset⊆s6Step127EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step127EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step127EarlyControl_classEquality : compileHmrEqualityLog s6Step127EarlyControlPositiveArena [854, 850] 0 s6Step127EarlyControlLog.classWork=some (s6Step127EarlyControlEqualityArena,s6Step127EarlyControlLog.classWork,s6Step127EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step127EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step127EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step127EarlyControl_classOwned : ([769, 838, 854] : List Wire).toFinset⊆s6Step127EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step127EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step127EarlyControl_positiveBorrow : s6Step127EarlyControlZeroArena.checkBorrow (1) s6Step127EarlyControlLog.positiveWork=some s6Step127EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step127EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step127EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step127EarlyControlPositiveArena,s6Step127EarlyControlZeroArena,s6Step127EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step127EarlyControl_class : compileHmrSourceClassLog s6Step127EarlyControlZeroArena false 769 s6Step127EarlyControlZeroPlan.top 0 854 s6Step127EarlyControlLog.positiveWork s6Step127EarlyControlLog.classWork=some s6Step127EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step127EarlyControlClassPlan s6Step127EarlyControlZeroArena false 769 s6Step127EarlyControlZeroPlan.top 0 854
  constructor
  · decide +kernel
  · exact s6Step127EarlyControl_classOwned
  · exact s6Step127EarlyControl_positiveBorrow
  · exact s6Step127EarlyControl_classEquality

private theorem s6Step127EarlyControl_entryRecordOwned : ([796, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step127EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step127EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step127EarlyControl_entrySigmaOwned : ([854, 254] : List Wire).toFinset⊆s6Step127EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step127EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step127EarlyControl_fitBorrow : s6Step127EarlyControlFlagArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step127EarlyControlLog.recordFresh=some s6Step127EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step127EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step127EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step127EarlyControlFittedArena,s6Step127EarlyControlFlagArena,s6Step127EarlyControlLog,arenaWires]

private theorem s6Step127EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step127EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step127EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step127EarlyControl_fit : compileHmrRecordGrowLog s6Step127EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step127EarlyControlLog.recordFresh=some s6Step127EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step127EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step127EarlyControl_fitBorrow

private theorem s6Step127EarlyControl_flagsBorrow : s6Step127EarlyControlEqualityArena.checkBorrow (6) s6Step127EarlyControlLog.flagWork=some s6Step127EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step127EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step127EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step127EarlyControlFlagArena,s6Step127EarlyControlEqualityArena,s6Step127EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step127EarlyControl_flagsOwned : ([879, 253, 252, 251] : List Wire).toFinset⊆s6Step127EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step127EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step127EarlyControl_flags : compileHmrFlagsLog s6Step127EarlyControlClassPlan.equalityArena s6Step127EarlyControlClassPlan.equality.top 253 252 251 s6Step127EarlyControlLog.flagWork=some s6Step127EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step127EarlyControl_flagsOwned⟩
  · exact s6Step127EarlyControl_flagsBorrow

private theorem s6Step127EarlyControl_historyBorrow : s6Step127EarlyControlArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step127EarlyControlLog.recordFresh=some s6Step127EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step127EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step127EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step127EarlyControlArena s6Step127EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step127EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step127EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step127EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step127EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step127EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step127EarlyControl_history : compileHmrRecordGrowLog s6Step127EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step127EarlyControlLog.recordFresh=some s6Step127EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step127EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step127EarlyControl_historyBorrow

private theorem s6Step127EarlyControl_sigmaOwned : ([254, 854] : List Wire).toFinset⊆s6Step127EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step127EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step127EarlyControl_sigmaReleaseOwned : ([854] : List Wire).toFinset⊆s6Step127EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step127EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step127EarlyControl_sigmaRelease : s6Step127EarlyControlHistoryArena.release {854} (fun _ => false)=some s6Step127EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step127EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step127EarlyControlHistoryArena s6Step127EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [854] rfl rfl
    decide +kernel

private theorem s6Step127EarlyControl_sigma : compileHmrSigmaDropLog s6Step127EarlyControlHistoryArena false 0 0 254 854 []=some s6Step127EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step127EarlyControl_sigmaOwned⟩
  · exact s6Step127EarlyControl_sigmaRelease

private theorem s6Step127EarlyControl_zeroBorrow : s6Step127EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step127EarlyControlLog.zeroWork=some s6Step127EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step127EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step127EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step127EarlyControlArena s6Step127EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step127EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step127EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step127EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step127EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step127EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step127EarlyControl_zero : compileHmrEqualityLog s6Step127EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step127EarlyControlLog.zeroWork=some (s6Step127EarlyControlZeroArena,s6Step127EarlyControlLog.zeroWork,s6Step127EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step127EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step127EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step127EarlyControl_logged : s6Step127EarlyControlPlan.Logged s6Step127EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 854 254 253 252 251 796 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step127EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step127EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step127EarlyControl_zero
  · exact s6Step127EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step127EarlyControl_flags
  · exact s6Step127EarlyControl_fit
  · exact s6Step127EarlyControl_history
  · exact s6Step127EarlyControl_sigma
  · exact s6Step127EarlyControl_branch

private theorem s6Step127EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step127EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 854 254 253 252 251 796 37 s6Step127EarlyControlLog=some s6Step127EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step127EarlyControlPlan s6Step127EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 854 254 253 252 251 796 37 s6Step127EarlyControl_logged

private def s6Step127EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461],795⟩

private def s6Step127EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814],776⟩

private def s6Step127EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205],777⟩

private def s6Step127EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848],775⟩

private def s6Step127FrontBank : WindowBank := ⟨s6Step127EntryFRow,s6Step127EntryGRow,s6Step127EntryFvRow,s6Step127EntryGvRow⟩

private def s6Step127Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 833, 795]

private def s6Step127Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 838, 777]

private def s6Step127Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 776]

private def s6Step127Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 813, 775]

private theorem s6Step127Counter_apart : Disjoint s6Step127HeadFvAfter.live s6Step127CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step127HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step127Counter_borrowed : s6Step127HeadFvAfter.checkBorrow 4 s6Step127CounterWork=some s6Step127CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step127HeadFvAfter s6Step127CounterDuring s6Step127CounterWork.toFinset s6Step127Counter_bounded s6Step127Counter_apart rfl

private theorem s6Step127Counter_owned : (854::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step127HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step127HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step127Counter_checked : compileHmrCounterStepLog s6Step127HeadFvAfter true 854 [774, 773, 772, 771, 770, 769] s6Step127CounterWork=some s6Step127CounterDuring := by
  have owned : ∀q∈854::[774, 773, 772, 771, 770, 769],q∈s6Step127HeadFvAfter.live := fun q hq => s6Step127Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step127Counter_borrowed

private def s6Step127EntryFAfter : Arena := s6Step127EntryFBefore

private theorem s6Step127EntryBank_incomingDistinct : ([s6Step127EntryFRow,s6Step127EntryGRow,s6Step127EntryFvRow,s6Step127EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step127EntryF_Incoming : rowsOwned s6Step127EntryFBefore [s6Step127EntryFRow,s6Step127EntryGRow,s6Step127EntryFvRow,s6Step127EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step127EntryFRow,s6Step127EntryGRow,s6Step127EntryFvRow,s6Step127EntryGvRow] 0 s6Step127EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step127EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step127EntryBank_outgoingOwned : rowsOwned s6Step127EntryGvAfter [s6Step127EntryFOut,s6Step127EntryGOut,s6Step127EntryFvOut,s6Step127EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step127EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step127EntryF_Outgoing : rowsOwned s6Step127EntryGvAfter [s6Step127EntryFOut,s6Step127EntryGOut,s6Step127EntryFvOut,s6Step127EntryGvOut] :=
  hmrRows_owned_drop s6Step127EntryGvAfter [s6Step127EntryFOut,s6Step127EntryGOut,s6Step127EntryFvOut,s6Step127EntryGvOut] 0 s6Step127EntryBank_outgoingOwned

private theorem s6Step127EntryF_distinct : (s6Step127EntryFRow.sign::s6Step127EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step127EntryF_owned : (s6Step127EntryFRow.sign::s6Step127EntryFRow.payload).toFinset⊆s6Step127EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step127EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step127EntryF_reserved : s6Step127EntryFBefore.reserve s6Step127EntryFFresh.toFinset=some s6Step127EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step127EntryFFresh,arenaWires]
  · norm_num [s6Step127EntryFBefore,s6Step127EntryFFresh,arenaWires]
  · simp only [s6Step127EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step127EntryF_checked : planRowResizeLog s6Step127EntryFBefore s6Step127EntryFRow 206 s6Step127EntryFFresh=
    some (s6Step127EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461],795⟩,growRow 795 s6Step127EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step127EntryFBefore s6Step127EntryFAfter s6Step127EntryFRow 206 s6Step127EntryFFresh
    s6Step127EntryF_distinct s6Step127EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step127EntryF_reserved
  have rowEq : WindowRow.mk (s6Step127EntryFRow.payload++s6Step127EntryFFresh) s6Step127EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step127EntryFvAfter : Arena := s6Step127EntryFBefore

private def s6Step127EntryFvBefore : Arena := s6Step127EntryFBefore

private theorem s6Step127EntryFv_Incoming : rowsOwned s6Step127EntryFvBefore [s6Step127EntryFvRow,s6Step127EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step127EntryFRow,s6Step127EntryGRow,s6Step127EntryFvRow,s6Step127EntryGvRow] 2 s6Step127EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step127EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step127EntryFv_Outgoing : rowsOwned s6Step127EntryGvAfter [s6Step127EntryFvOut,s6Step127EntryGvOut] :=
  hmrRows_owned_drop s6Step127EntryGvAfter [s6Step127EntryFOut,s6Step127EntryGOut,s6Step127EntryFvOut,s6Step127EntryGvOut] 2 s6Step127EntryBank_outgoingOwned

private theorem s6Step127EntryFv_distinct : (s6Step127EntryFvRow.sign::s6Step127EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step127EntryFv_owned : (s6Step127EntryFvRow.sign::s6Step127EntryFvRow.payload).toFinset⊆s6Step127EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step127EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step127EntryFv_reserved : s6Step127EntryFvBefore.reserve s6Step127EntryFvFresh.toFinset=some s6Step127EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step127EntryFvFresh,arenaWires]
  · norm_num [s6Step127EntryFvBefore,s6Step127EntryFBefore,s6Step127EntryFvFresh,arenaWires]
  · simp only [s6Step127EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step127EntryFv_checked : planRowResizeLog s6Step127EntryFvBefore s6Step127EntryFvRow 77 s6Step127EntryFvFresh=
    some (s6Step127EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814],776⟩,growRow 776 s6Step127EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step127EntryFvBefore s6Step127EntryFvAfter s6Step127EntryFvRow 77 s6Step127EntryFvFresh
    s6Step127EntryFv_distinct s6Step127EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step127EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step127EntryFvRow.payload++s6Step127EntryFvFresh) s6Step127EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step127EntryGAfter : Arena := s6Step127EntryFBefore

private def s6Step127EntryGBefore : Arena := s6Step127EntryFBefore

private theorem s6Step127EntryG_Incoming : rowsOwned s6Step127EntryGBefore [s6Step127EntryGRow,s6Step127EntryFvRow,s6Step127EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step127EntryFRow,s6Step127EntryGRow,s6Step127EntryFvRow,s6Step127EntryGvRow] 1 s6Step127EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step127EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step127EntryG_Outgoing : rowsOwned s6Step127EntryGvAfter [s6Step127EntryGOut,s6Step127EntryFvOut,s6Step127EntryGvOut] :=
  hmrRows_owned_drop s6Step127EntryGvAfter [s6Step127EntryFOut,s6Step127EntryGOut,s6Step127EntryFvOut,s6Step127EntryGvOut] 1 s6Step127EntryBank_outgoingOwned

private theorem s6Step127EntryG_distinct : (s6Step127EntryGRow.sign::s6Step127EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step127EntryG_owned : (s6Step127EntryGRow.sign::s6Step127EntryGRow.payload).toFinset⊆s6Step127EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step127EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step127EntryG_reserved : s6Step127EntryGBefore.reserve s6Step127EntryGFresh.toFinset=some s6Step127EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step127EntryGFresh,arenaWires]
  · norm_num [s6Step127EntryGBefore,s6Step127EntryFBefore,s6Step127EntryGFresh,arenaWires]
  · simp only [s6Step127EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step127EntryG_checked : planRowResizeLog s6Step127EntryGBefore s6Step127EntryGRow 206 s6Step127EntryGFresh=
    some (s6Step127EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205],777⟩,growRow 777 s6Step127EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step127EntryGBefore s6Step127EntryGAfter s6Step127EntryGRow 206 s6Step127EntryGFresh
    s6Step127EntryG_distinct s6Step127EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step127EntryG_reserved
  have rowEq : WindowRow.mk (s6Step127EntryGRow.payload++s6Step127EntryGFresh) s6Step127EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step127EntryGvBefore : Arena := s6Step127EntryFBefore

private theorem s6Step127EntryGv_Incoming : rowsOwned s6Step127EntryGvBefore [s6Step127EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step127EntryFRow,s6Step127EntryGRow,s6Step127EntryFvRow,s6Step127EntryGvRow] 3 s6Step127EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step127EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step127EntryGv_Outgoing : rowsOwned s6Step127EntryGvAfter [s6Step127EntryGvOut] :=
  hmrRows_owned_drop s6Step127EntryGvAfter [s6Step127EntryFOut,s6Step127EntryGOut,s6Step127EntryFvOut,s6Step127EntryGvOut] 3 s6Step127EntryBank_outgoingOwned

private theorem s6Step127EntryGv_distinct : (s6Step127EntryGvRow.sign::s6Step127EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step127EntryGv_owned : (s6Step127EntryGvRow.sign::s6Step127EntryGvRow.payload).toFinset⊆s6Step127EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step127EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step127EntryGv_reserved : s6Step127EntryGvBefore.reserve s6Step127EntryGvFresh.toFinset=some s6Step127EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step127EntryGvFresh,arenaWires]
  · norm_num [s6Step127EntryGvBefore,s6Step127EntryFBefore,s6Step127EntryGvFresh,arenaWires]
  · simp only [s6Step127EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step127EntryGv_checked : planRowResizeLog s6Step127EntryGvBefore s6Step127EntryGvRow 77 s6Step127EntryGvFresh=
    some (s6Step127EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848],775⟩,growRow 775 s6Step127EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step127EntryGvBefore s6Step127EntryGvAfter s6Step127EntryGvRow 77 s6Step127EntryGvFresh
    s6Step127EntryGv_distinct s6Step127EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step127EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step127EntryGvRow.payload++s6Step127EntryGvFresh) s6Step127EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step127EntryBank_rows : planWindowRowsLog s6Step127EntryFBefore [(s6Step127EntryFRow,206),(s6Step127EntryGRow,206),(s6Step127EntryFvRow,77),(s6Step127EntryGvRow,77)] [s6Step127EntryFFresh,s6Step127EntryGFresh,s6Step127EntryFvFresh,s6Step127EntryGvFresh]=
    some (s6Step127EntryGvAfter,[s6Step127EntryFOut,s6Step127EntryGOut,s6Step127EntryFvOut,s6Step127EntryGvOut],(growRow 795 s6Step127EntryFFresh ++ (growRow 777 s6Step127EntryGFresh ++ (growRow 776 s6Step127EntryFvFresh ++ (growRow 775 s6Step127EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step127EntryGvAfter [] []=some (s6Step127EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step127EntryGvBefore s6Step127EntryGvAfter s6Step127EntryGvAfter
    s6Step127EntryGvRow s6Step127EntryGvOut 77 s6Step127EntryGvFresh [] [] []
    (growRow 775 s6Step127EntryGvFresh) ([]) s6Step127EntryGv_Incoming s6Step127EntryGv_checked h4 s6Step127EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step127EntryFvBefore s6Step127EntryFvAfter s6Step127EntryGvAfter
    s6Step127EntryFvRow s6Step127EntryFvOut 77 s6Step127EntryFvFresh [(s6Step127EntryGvRow,77)] [s6Step127EntryGvFresh] [s6Step127EntryGvOut]
    (growRow 776 s6Step127EntryFvFresh) ((growRow 775 s6Step127EntryGvFresh ++ [])) s6Step127EntryFv_Incoming s6Step127EntryFv_checked h3 s6Step127EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step127EntryGBefore s6Step127EntryGAfter s6Step127EntryGvAfter
    s6Step127EntryGRow s6Step127EntryGOut 206 s6Step127EntryGFresh [(s6Step127EntryFvRow,77),(s6Step127EntryGvRow,77)] [s6Step127EntryFvFresh,s6Step127EntryGvFresh] [s6Step127EntryFvOut,s6Step127EntryGvOut]
    (growRow 777 s6Step127EntryGFresh) ((growRow 776 s6Step127EntryFvFresh ++ (growRow 775 s6Step127EntryGvFresh ++ []))) s6Step127EntryG_Incoming s6Step127EntryG_checked h2 s6Step127EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step127EntryFBefore s6Step127EntryFAfter s6Step127EntryGvAfter
    s6Step127EntryFRow s6Step127EntryFOut 206 s6Step127EntryFFresh [(s6Step127EntryGRow,206),(s6Step127EntryFvRow,77),(s6Step127EntryGvRow,77)] [s6Step127EntryGFresh,s6Step127EntryFvFresh,s6Step127EntryGvFresh] [s6Step127EntryGOut,s6Step127EntryFvOut,s6Step127EntryGvOut]
    (growRow 795 s6Step127EntryFFresh) ((growRow 777 s6Step127EntryGFresh ++ (growRow 776 s6Step127EntryFvFresh ++ (growRow 775 s6Step127EntryGvFresh ++ [])))) s6Step127EntryF_Incoming s6Step127EntryF_checked h1 s6Step127EntryF_Outgoing
  exact h0

private theorem s6Step127EntryBank_checked : compileHmrBankResizeLog .entry s6Step127EntryFBefore ⟨s6Step127EntryFRow,s6Step127EntryGRow,s6Step127EntryFvRow,s6Step127EntryGvRow⟩ ⟨206,206,77,77⟩ [s6Step127EntryFFresh,s6Step127EntryGFresh,s6Step127EntryFvFresh,s6Step127EntryGvFresh]=
    some (s6Step127EntryGvAfter,⟨s6Step127EntryFOut,s6Step127EntryGOut,s6Step127EntryFvOut,s6Step127EntryGvOut⟩,(growRow 795 s6Step127EntryFFresh ++ (growRow 777 s6Step127EntryGFresh ++ (growRow 776 s6Step127EntryFvFresh ++ (growRow 775 s6Step127EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step127EntryBank_rows]
  rfl

private def s6Step127ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,205),(206,461),(462,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step127ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,205),(206,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step127ExitFBefore : Arena := s6Step127ExitGAfter

private def s6Step127ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 833],795⟩

private def s6Step127ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821],776⟩

private def s6Step127ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 838],777⟩

private def s6Step127ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 813],775⟩

private theorem s6Step127ExitBank_incomingDistinct : ([s6Step127ExitGRow,s6Step127ExitFRow,s6Step127ExitFvRow,s6Step127ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step127ExitF_Incoming : rowsOwned s6Step127ExitFBefore [s6Step127ExitFRow,s6Step127ExitFvRow,s6Step127ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step127ExitGRow,s6Step127ExitFRow,s6Step127ExitFvRow,s6Step127ExitGvRow] 1 s6Step127ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step127ExitFBefore (fun q => ([(0,205),(206,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step127ExitBank_outgoingOwned : rowsOwned s6Step127ExitGvAfter [s6Step127ExitGOut,s6Step127ExitFOut,s6Step127ExitFvOut,s6Step127ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step127ExitGvAfter (fun q => ([(0,205),(206,461),(462,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step127ExitF_Outgoing : rowsOwned s6Step127ExitGvAfter [s6Step127ExitFOut,s6Step127ExitFvOut,s6Step127ExitGvOut] :=
  hmrRows_owned_drop s6Step127ExitGvAfter [s6Step127ExitGOut,s6Step127ExitFOut,s6Step127ExitFvOut,s6Step127ExitGvOut] 1 s6Step127ExitBank_outgoingOwned

private theorem s6Step127ExitF_distinct : (s6Step127ExitFRow.sign::s6Step127ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step127ExitF_owned : (s6Step127ExitFRow.sign::s6Step127ExitFRow.payload).toFinset⊆s6Step127ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step127ExitFBefore (fun q => ([(0,205),(206,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step127ExitF_retired : s6Step127ExitFBefore.retireSet s6Step127ExitFExtra.toFinset=s6Step127ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step127ExitFBefore s6Step127ExitFAfter s6Step127ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step127ExitFBefore s6Step127ExitFAfter (fun q => ([(0,205),(206,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,205),(206,461),(462,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step127ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step127ExitF_checked : planRowResizeLog s6Step127ExitFBefore s6Step127ExitFRow 205 []=
    some (s6Step127ExitFAfter,s6Step127ExitFOut,shrinkRow 795 s6Step127ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step127ExitFBefore s6Step127ExitFRow 205 s6Step127ExitF_distinct s6Step127ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step127ExitFRow.payload.take 205) s6Step127ExitFRow.sign=s6Step127ExitFOut := by decide +kernel
  have hi : s6Step127ExitFRow.payload.drop 205=s6Step127ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step127ExitF_retired] at result
  exact result

private def s6Step127ExitFvAfter : Arena := s6Step127ExitFAfter

private def s6Step127ExitFvBefore : Arena := s6Step127ExitFAfter

private theorem s6Step127ExitFv_Incoming : rowsOwned s6Step127ExitFvBefore [s6Step127ExitFvRow,s6Step127ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step127ExitGRow,s6Step127ExitFRow,s6Step127ExitFvRow,s6Step127ExitGvRow] 2 s6Step127ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step127ExitFvBefore (fun q => ([(0,205),(206,461),(462,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step127ExitFv_Outgoing : rowsOwned s6Step127ExitGvAfter [s6Step127ExitFvOut,s6Step127ExitGvOut] :=
  hmrRows_owned_drop s6Step127ExitGvAfter [s6Step127ExitGOut,s6Step127ExitFOut,s6Step127ExitFvOut,s6Step127ExitGvOut] 2 s6Step127ExitBank_outgoingOwned

private theorem s6Step127ExitFv_distinct : (s6Step127ExitFvRow.sign::s6Step127ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step127ExitFv_owned : (s6Step127ExitFvRow.sign::s6Step127ExitFvRow.payload).toFinset⊆s6Step127ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step127ExitFvBefore (fun q => ([(0,205),(206,461),(462,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step127ExitFv_reserved : s6Step127ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step127ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step127ExitFv_checked : planRowResizeLog s6Step127ExitFvBefore s6Step127ExitFvRow 78 []=
    some (s6Step127ExitFvAfter,s6Step127ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step127ExitFvBefore s6Step127ExitFvAfter s6Step127ExitFvRow 78 []
    s6Step127ExitFv_distinct s6Step127ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step127ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step127ExitFvRow.payload++[]) s6Step127ExitFvRow.sign=s6Step127ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step127ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step127ExitG_Incoming : rowsOwned s6Step127ExitGBefore [s6Step127ExitGRow,s6Step127ExitFRow,s6Step127ExitFvRow,s6Step127ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step127ExitGRow,s6Step127ExitFRow,s6Step127ExitFvRow,s6Step127ExitGvRow] 0 s6Step127ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step127ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step127ExitG_Outgoing : rowsOwned s6Step127ExitGvAfter [s6Step127ExitGOut,s6Step127ExitFOut,s6Step127ExitFvOut,s6Step127ExitGvOut] :=
  hmrRows_owned_drop s6Step127ExitGvAfter [s6Step127ExitGOut,s6Step127ExitFOut,s6Step127ExitFvOut,s6Step127ExitGvOut] 0 s6Step127ExitBank_outgoingOwned

private theorem s6Step127ExitG_distinct : (s6Step127ExitGRow.sign::s6Step127ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step127ExitG_owned : (s6Step127ExitGRow.sign::s6Step127ExitGRow.payload).toFinset⊆s6Step127ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step127ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step127ExitG_retired : s6Step127ExitGBefore.retireSet s6Step127ExitGExtra.toFinset=s6Step127ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step127ExitGBefore s6Step127ExitGAfter s6Step127ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step127ExitGBefore s6Step127ExitGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,205),(206,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step127ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step127ExitG_checked : planRowResizeLog s6Step127ExitGBefore s6Step127ExitGRow 205 []=
    some (s6Step127ExitGAfter,s6Step127ExitGOut,shrinkRow 777 s6Step127ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step127ExitGBefore s6Step127ExitGRow 205 s6Step127ExitG_distinct s6Step127ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step127ExitGRow.payload.take 205) s6Step127ExitGRow.sign=s6Step127ExitGOut := by decide +kernel
  have hi : s6Step127ExitGRow.payload.drop 205=s6Step127ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step127ExitG_retired] at result
  exact result

private def s6Step127ExitGvBefore : Arena := s6Step127ExitFAfter

private theorem s6Step127ExitGv_Incoming : rowsOwned s6Step127ExitGvBefore [s6Step127ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step127ExitGRow,s6Step127ExitFRow,s6Step127ExitFvRow,s6Step127ExitGvRow] 3 s6Step127ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step127ExitGvBefore (fun q => ([(0,205),(206,461),(462,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step127ExitGv_Outgoing : rowsOwned s6Step127ExitGvAfter [s6Step127ExitGvOut] :=
  hmrRows_owned_drop s6Step127ExitGvAfter [s6Step127ExitGOut,s6Step127ExitFOut,s6Step127ExitFvOut,s6Step127ExitGvOut] 3 s6Step127ExitBank_outgoingOwned

private theorem s6Step127ExitGv_distinct : (s6Step127ExitGvRow.sign::s6Step127ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step127ExitGv_owned : (s6Step127ExitGvRow.sign::s6Step127ExitGvRow.payload).toFinset⊆s6Step127ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step127ExitGvBefore (fun q => ([(0,205),(206,461),(462,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step127ExitGv_retired : s6Step127ExitGvBefore.retireSet s6Step127ExitGvExtra.toFinset=s6Step127ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step127ExitGvBefore s6Step127ExitGvAfter s6Step127ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step127ExitGvBefore s6Step127ExitGvAfter (fun q => ([(0,205),(206,461),(462,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,205),(206,461),(462,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step127ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step127ExitGv_checked : planRowResizeLog s6Step127ExitGvBefore s6Step127ExitGvRow 77 []=
    some (s6Step127ExitGvAfter,s6Step127ExitGvOut,shrinkRow 775 s6Step127ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step127ExitGvBefore s6Step127ExitGvRow 77 s6Step127ExitGv_distinct s6Step127ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step127ExitGvRow.payload.take 77) s6Step127ExitGvRow.sign=s6Step127ExitGvOut := by decide +kernel
  have hi : s6Step127ExitGvRow.payload.drop 77=s6Step127ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step127ExitGv_retired] at result
  exact result

private theorem s6Step127ExitBank_rows : planWindowRowsLog s6Step127ExitGBefore [(s6Step127ExitGRow,205),(s6Step127ExitFRow,205),(s6Step127ExitFvRow,78),(s6Step127ExitGvRow,77)] [[],[],[],[]]=
    some (s6Step127ExitGvAfter,[s6Step127ExitGOut,s6Step127ExitFOut,s6Step127ExitFvOut,s6Step127ExitGvOut],(shrinkRow 777 s6Step127ExitGExtra ++ (shrinkRow 795 s6Step127ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step127ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step127ExitGvAfter [] []=some (s6Step127ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step127ExitGvBefore s6Step127ExitGvAfter s6Step127ExitGvAfter
    s6Step127ExitGvRow s6Step127ExitGvOut 77 [] [] [] []
    (shrinkRow 775 s6Step127ExitGvExtra) ([]) s6Step127ExitGv_Incoming s6Step127ExitGv_checked h4 s6Step127ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step127ExitFvBefore s6Step127ExitFvAfter s6Step127ExitGvAfter
    s6Step127ExitFvRow s6Step127ExitFvOut 78 [] [(s6Step127ExitGvRow,77)] [[]] [s6Step127ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step127ExitGvExtra ++ [])) s6Step127ExitFv_Incoming s6Step127ExitFv_checked h3 s6Step127ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step127ExitFBefore s6Step127ExitFAfter s6Step127ExitGvAfter
    s6Step127ExitFRow s6Step127ExitFOut 205 [] [(s6Step127ExitFvRow,78),(s6Step127ExitGvRow,77)] [[],[]] [s6Step127ExitFvOut,s6Step127ExitGvOut]
    (shrinkRow 795 s6Step127ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step127ExitGvExtra ++ []))) s6Step127ExitF_Incoming s6Step127ExitF_checked h2 s6Step127ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step127ExitGBefore s6Step127ExitGAfter s6Step127ExitGvAfter
    s6Step127ExitGRow s6Step127ExitGOut 205 [] [(s6Step127ExitFRow,205),(s6Step127ExitFvRow,78),(s6Step127ExitGvRow,77)] [[],[],[]] [s6Step127ExitFOut,s6Step127ExitFvOut,s6Step127ExitGvOut]
    (shrinkRow 777 s6Step127ExitGExtra) ((shrinkRow 795 s6Step127ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step127ExitGvExtra ++ [])))) s6Step127ExitG_Incoming s6Step127ExitG_checked h1 s6Step127ExitG_Outgoing
  exact h0

private theorem s6Step127ExitBank_checked : compileHmrBankResizeLog .exit s6Step127ExitGBefore ⟨s6Step127ExitFRow,s6Step127ExitGRow,s6Step127ExitFvRow,s6Step127ExitGvRow⟩ ⟨205,205,78,77⟩ [[],[],[],[]]=
    some (s6Step127ExitGvAfter,⟨s6Step127ExitFOut,s6Step127ExitGOut,s6Step127ExitFvOut,s6Step127ExitGvOut⟩,(shrinkRow 777 s6Step127ExitGExtra ++ (shrinkRow 795 s6Step127ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step127ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step127ExitBank_rows]
  rfl

private theorem s6Step127Add0_apart : Disjoint s6Step127Add0Arena.live s6Step127Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step127Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step127Add0_card : s6Step127Add0Arena.live.card=877 := by
  decide +kernel

private theorem s6Step127Add0_borrowed : s6Step127Add0Arena.checkBorrow (hmrHybridCount s6Step127Add0Arena s6Step127Add0B.length) s6Step127Add0Work=some s6Step127Add0During := by
  have len : s6Step127Add0Work.length=hmrHybridCount s6Step127Add0Arena s6Step127Add0B.length := by
    rw [hmrHybridCount,s6Step127Add0_card]
    decide +kernel
  have nd : s6Step127Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step127Add0Arena s6Step127Add0During s6Step127Add0Work.toFinset s6Step127Add0_bounded s6Step127Add0_apart rfl

private theorem s6Step127Add0_distinct : (850::796::879::(s6Step127Add0A++s6Step127Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step127Add0_owned : (850::796::879::(s6Step127Add0A++s6Step127Add0B)).toFinset⊆s6Step127Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step127Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step127Add0_checked : compileHmrHybridCinLog s6Step127Add0Arena 796 850 879 s6Step127Add0A s6Step127Add0B s6Step127Add0Work=some s6Step127Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step127Add0Arena s6Step127Add0During 796 850 879 s6Step127Add0A s6Step127Add0B s6Step127Add0Work
    (by decide +kernel) (by decide +kernel) s6Step127Add0_distinct
    (fun q hq => s6Step127Add0_owned (List.mem_toFinset.mpr hq)) s6Step127Add0_borrowed

private theorem s6Step127Add1_apart : Disjoint s6Step127Add1Arena.live s6Step127Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step127Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step127Add1_card : s6Step127Add1Arena.live.card=877 := by
  decide +kernel

private theorem s6Step127Add1_borrowed : s6Step127Add1Arena.checkBorrow (hmrHybridCount s6Step127Add1Arena s6Step127Add1B.length) s6Step127Add1Work=some s6Step127Add1During := by
  have len : s6Step127Add1Work.length=hmrHybridCount s6Step127Add1Arena s6Step127Add1B.length := by
    rw [hmrHybridCount,s6Step127Add1_card]
    decide +kernel
  have nd : s6Step127Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step127Add1Arena s6Step127Add1During s6Step127Add1Work.toFinset s6Step127Add1_bounded s6Step127Add1_apart rfl

private theorem s6Step127Add1_distinct : (850::796::879::(s6Step127Add1A++s6Step127Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step127Add1_owned : (850::796::879::(s6Step127Add1A++s6Step127Add1B)).toFinset⊆s6Step127Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step127Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step127Add1_checked : compileHmrHybridCinLog s6Step127Add1Arena 796 850 879 s6Step127Add1A s6Step127Add1B s6Step127Add1Work=some s6Step127Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step127Add1Arena s6Step127Add1During 796 850 879 s6Step127Add1A s6Step127Add1B s6Step127Add1Work
    (by decide +kernel) (by decide +kernel) s6Step127Add1_distinct
    (fun q hq => s6Step127Add1_owned (List.mem_toFinset.mpr hq)) s6Step127Add1_borrowed

private theorem s6Step127F4_apart : Disjoint (s6Step127Add0A++s6Step127Add0B).toFinset (s6Step127Add1A++s6Step127Add1B).toFinset := by
  have nd : ((s6Step127Add0A++s6Step127Add0B)++(s6Step127Add1A++s6Step127Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step127F4_carry : s6Step127F4FlagArena.checkBorrow 1 [879]=some s6Step127Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step127F4FlagArena,s6Step127HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step127F4FlagArena,s6Step127HeadFvAfter,s6Step127Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step127F4_distinct : (854::796::850::879::((s6Step127Add0A++s6Step127Add1A)++(s6Step127Add0B++s6Step127Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step127F4_flag : s6Step127HeadFvAfter.checkBorrow 1 [850]=some s6Step127F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step127HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step127F4_owned : (854::796::((s6Step127Add0A++s6Step127Add1A)++(s6Step127Add0B++s6Step127Add1B))).toFinset⊆s6Step127HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step127HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step127F4_checked : compileHmrHybridF4Log s6Step127HeadFvAfter 854 796 s6Step127Add0A s6Step127Add0B s6Step127Add1A s6Step127Add1B [850] [879] s6Step127Add0Work s6Step127Add1Work=some s6Step127F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step127HeadFvAfter s6Step127F4FlagArena s6Step127Add0Arena s6Step127Add0During s6Step127Add1During 854 796
    s6Step127Add0A s6Step127Add0B s6Step127Add1A s6Step127Add1B [850] [879] s6Step127Add0Work s6Step127Add1Work
    (fun q hq => s6Step127F4_owned (List.mem_toFinset.mpr hq)) s6Step127F4_flag s6Step127F4_carry
    s6Step127F4_distinct s6Step127F4_apart s6Step127Add0_checked s6Step127Add1_checked

private theorem s6Step127Front_branch : s6Step127FrontSigmaArena.checkBorrow 1 [796]=some s6Step127HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step127FrontSigmaArena,s6Step127EntryGvAfter,s6Step127EntryFBefore,arenaWires]
  · change s6Step127HeadGBefore.live=(s6Step127EntryGvAfter.live∪{854})∪{796}
    apply hmrArena_union_pair_of_filter_check s6Step127EntryGvAfter s6Step127HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) 854 796 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step127Front_entry : HmrFrontEntryValid s6Step127EntryFBefore s6Step127FrontBank 206 77 ⟨205,205,78,77⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step127FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step127EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step127EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step127FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step127Front_sigma : s6Step127EntryGvAfter.checkBorrow 1 [854]=some s6Step127FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step127EntryGvAfter,s6Step127EntryFBefore,arenaWires]
  · rfl

private def s6Step127HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step127HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step127HeadFBefore : Arena := s6Step127HeadGAfter

private def s6Step127HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461],795⟩

private def s6Step127HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814],776⟩

private def s6Step127HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205],777⟩

private def s6Step127HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848],775⟩

private theorem s6Step127HeadBank_incomingDistinct : ([s6Step127HeadGRow,s6Step127HeadFRow,s6Step127HeadGvRow,s6Step127HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step127HeadF_Incoming : rowsOwned s6Step127HeadFBefore [s6Step127HeadFRow,s6Step127HeadGvRow,s6Step127HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step127HeadGRow,s6Step127HeadFRow,s6Step127HeadGvRow,s6Step127HeadFvRow] 1 s6Step127HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step127HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step127HeadBank_outgoingOwned : rowsOwned s6Step127HeadFvAfter [s6Step127HeadGOut,s6Step127HeadFOut,s6Step127HeadGvOut,s6Step127HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step127HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step127HeadF_Outgoing : rowsOwned s6Step127HeadFvAfter [s6Step127HeadFOut,s6Step127HeadGvOut,s6Step127HeadFvOut] :=
  hmrRows_owned_drop s6Step127HeadFvAfter [s6Step127HeadGOut,s6Step127HeadFOut,s6Step127HeadGvOut,s6Step127HeadFvOut] 1 s6Step127HeadBank_outgoingOwned

private theorem s6Step127HeadF_distinct : (s6Step127HeadFRow.sign::s6Step127HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step127HeadF_owned : (s6Step127HeadFRow.sign::s6Step127HeadFRow.payload).toFinset⊆s6Step127HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step127HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step127HeadF_reserved : s6Step127HeadFBefore.reserve s6Step127HeadFFresh.toFinset=some s6Step127HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step127HeadFFresh,arenaWires]
  · norm_num [s6Step127HeadFBefore,s6Step127HeadGAfter,s6Step127HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step127HeadFAfter,s6Step127HeadFBefore,s6Step127HeadGAfter,s6Step127HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step127HeadF_checked : planRowResizeLog s6Step127HeadFBefore s6Step127HeadFRow 207 s6Step127HeadFFresh=
    some (s6Step127HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 833],795⟩,growRow 795 s6Step127HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step127HeadFBefore s6Step127HeadFAfter s6Step127HeadFRow 207 s6Step127HeadFFresh
    s6Step127HeadF_distinct s6Step127HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step127HeadF_reserved
  have rowEq : WindowRow.mk (s6Step127HeadFRow.payload++s6Step127HeadFFresh) s6Step127HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 833],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step127HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step127HeadFvBefore : Arena := s6Step127HeadGvAfter

private theorem s6Step127HeadFv_Incoming : rowsOwned s6Step127HeadFvBefore [s6Step127HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step127HeadGRow,s6Step127HeadFRow,s6Step127HeadGvRow,s6Step127HeadFvRow] 3 s6Step127HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step127HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step127HeadFv_Outgoing : rowsOwned s6Step127HeadFvAfter [s6Step127HeadFvOut] :=
  hmrRows_owned_drop s6Step127HeadFvAfter [s6Step127HeadGOut,s6Step127HeadFOut,s6Step127HeadGvOut,s6Step127HeadFvOut] 3 s6Step127HeadBank_outgoingOwned

private theorem s6Step127HeadFv_distinct : (s6Step127HeadFvRow.sign::s6Step127HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step127HeadFv_owned : (s6Step127HeadFvRow.sign::s6Step127HeadFvRow.payload).toFinset⊆s6Step127HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step127HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step127HeadFv_reserved : s6Step127HeadFvBefore.reserve s6Step127HeadFvFresh.toFinset=some s6Step127HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step127HeadFvFresh,arenaWires]
  · norm_num [s6Step127HeadFvBefore,s6Step127HeadGvAfter,s6Step127HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step127HeadFvAfter,s6Step127HeadFvBefore,s6Step127HeadGvAfter,s6Step127HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step127HeadFv_checked : planRowResizeLog s6Step127HeadFvBefore s6Step127HeadFvRow 78 s6Step127HeadFvFresh=
    some (s6Step127HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821],776⟩,growRow 776 s6Step127HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step127HeadFvBefore s6Step127HeadFvAfter s6Step127HeadFvRow 78 s6Step127HeadFvFresh
    s6Step127HeadFv_distinct s6Step127HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step127HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step127HeadFvRow.payload++s6Step127HeadFvFresh) s6Step127HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step127HeadG_Incoming : rowsOwned s6Step127HeadGBefore [s6Step127HeadGRow,s6Step127HeadFRow,s6Step127HeadGvRow,s6Step127HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step127HeadGRow,s6Step127HeadFRow,s6Step127HeadGvRow,s6Step127HeadFvRow] 0 s6Step127HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step127HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step127HeadG_Outgoing : rowsOwned s6Step127HeadFvAfter [s6Step127HeadGOut,s6Step127HeadFOut,s6Step127HeadGvOut,s6Step127HeadFvOut] :=
  hmrRows_owned_drop s6Step127HeadFvAfter [s6Step127HeadGOut,s6Step127HeadFOut,s6Step127HeadGvOut,s6Step127HeadFvOut] 0 s6Step127HeadBank_outgoingOwned

private theorem s6Step127HeadG_distinct : (s6Step127HeadGRow.sign::s6Step127HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step127HeadG_owned : (s6Step127HeadGRow.sign::s6Step127HeadGRow.payload).toFinset⊆s6Step127HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step127HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step127HeadG_reserved : s6Step127HeadGBefore.reserve s6Step127HeadGFresh.toFinset=some s6Step127HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step127HeadGFresh,arenaWires]
  · norm_num [s6Step127HeadGBefore,s6Step127HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step127HeadGAfter,s6Step127HeadGBefore,s6Step127HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step127HeadG_checked : planRowResizeLog s6Step127HeadGBefore s6Step127HeadGRow 207 s6Step127HeadGFresh=
    some (s6Step127HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 838],777⟩,growRow 777 s6Step127HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step127HeadGBefore s6Step127HeadGAfter s6Step127HeadGRow 207 s6Step127HeadGFresh
    s6Step127HeadG_distinct s6Step127HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step127HeadG_reserved
  have rowEq : WindowRow.mk (s6Step127HeadGRow.payload++s6Step127HeadGFresh) s6Step127HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 838],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step127HeadGvBefore : Arena := s6Step127HeadFAfter

private theorem s6Step127HeadGv_Incoming : rowsOwned s6Step127HeadGvBefore [s6Step127HeadGvRow,s6Step127HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step127HeadGRow,s6Step127HeadFRow,s6Step127HeadGvRow,s6Step127HeadFvRow] 2 s6Step127HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step127HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step127HeadGv_Outgoing : rowsOwned s6Step127HeadFvAfter [s6Step127HeadGvOut,s6Step127HeadFvOut] :=
  hmrRows_owned_drop s6Step127HeadFvAfter [s6Step127HeadGOut,s6Step127HeadFOut,s6Step127HeadGvOut,s6Step127HeadFvOut] 2 s6Step127HeadBank_outgoingOwned

private theorem s6Step127HeadGv_distinct : (s6Step127HeadGvRow.sign::s6Step127HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step127HeadGv_owned : (s6Step127HeadGvRow.sign::s6Step127HeadGvRow.payload).toFinset⊆s6Step127HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step127HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step127HeadGv_reserved : s6Step127HeadGvBefore.reserve s6Step127HeadGvFresh.toFinset=some s6Step127HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step127HeadGvFresh,arenaWires]
  · norm_num [s6Step127HeadGvBefore,s6Step127HeadFAfter,s6Step127HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step127HeadGvAfter,s6Step127HeadGvBefore,s6Step127HeadFAfter,s6Step127HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step127HeadGv_checked : planRowResizeLog s6Step127HeadGvBefore s6Step127HeadGvRow 78 s6Step127HeadGvFresh=
    some (s6Step127HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 813],775⟩,growRow 775 s6Step127HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step127HeadGvBefore s6Step127HeadGvAfter s6Step127HeadGvRow 78 s6Step127HeadGvFresh
    s6Step127HeadGv_distinct s6Step127HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step127HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step127HeadGvRow.payload++s6Step127HeadGvFresh) s6Step127HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 813],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step127HeadBank_rows : planWindowRowsLog s6Step127HeadGBefore [(s6Step127HeadGRow,207),(s6Step127HeadFRow,207),(s6Step127HeadGvRow,78),(s6Step127HeadFvRow,78)] [s6Step127HeadGFresh,s6Step127HeadFFresh,s6Step127HeadGvFresh,s6Step127HeadFvFresh]=
    some (s6Step127HeadFvAfter,[s6Step127HeadGOut,s6Step127HeadFOut,s6Step127HeadGvOut,s6Step127HeadFvOut],(growRow 777 s6Step127HeadGFresh ++ (growRow 795 s6Step127HeadFFresh ++ (growRow 775 s6Step127HeadGvFresh ++ (growRow 776 s6Step127HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step127HeadFvAfter [] []=some (s6Step127HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step127HeadFvBefore s6Step127HeadFvAfter s6Step127HeadFvAfter
    s6Step127HeadFvRow s6Step127HeadFvOut 78 s6Step127HeadFvFresh [] [] []
    (growRow 776 s6Step127HeadFvFresh) ([]) s6Step127HeadFv_Incoming s6Step127HeadFv_checked h4 s6Step127HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step127HeadGvBefore s6Step127HeadGvAfter s6Step127HeadFvAfter
    s6Step127HeadGvRow s6Step127HeadGvOut 78 s6Step127HeadGvFresh [(s6Step127HeadFvRow,78)] [s6Step127HeadFvFresh] [s6Step127HeadFvOut]
    (growRow 775 s6Step127HeadGvFresh) ((growRow 776 s6Step127HeadFvFresh ++ [])) s6Step127HeadGv_Incoming s6Step127HeadGv_checked h3 s6Step127HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step127HeadFBefore s6Step127HeadFAfter s6Step127HeadFvAfter
    s6Step127HeadFRow s6Step127HeadFOut 207 s6Step127HeadFFresh [(s6Step127HeadGvRow,78),(s6Step127HeadFvRow,78)] [s6Step127HeadGvFresh,s6Step127HeadFvFresh] [s6Step127HeadGvOut,s6Step127HeadFvOut]
    (growRow 795 s6Step127HeadFFresh) ((growRow 775 s6Step127HeadGvFresh ++ (growRow 776 s6Step127HeadFvFresh ++ []))) s6Step127HeadF_Incoming s6Step127HeadF_checked h2 s6Step127HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step127HeadGBefore s6Step127HeadGAfter s6Step127HeadFvAfter
    s6Step127HeadGRow s6Step127HeadGOut 207 s6Step127HeadGFresh [(s6Step127HeadFRow,207),(s6Step127HeadGvRow,78),(s6Step127HeadFvRow,78)] [s6Step127HeadFFresh,s6Step127HeadGvFresh,s6Step127HeadFvFresh] [s6Step127HeadFOut,s6Step127HeadGvOut,s6Step127HeadFvOut]
    (growRow 777 s6Step127HeadGFresh) ((growRow 795 s6Step127HeadFFresh ++ (growRow 775 s6Step127HeadGvFresh ++ (growRow 776 s6Step127HeadFvFresh ++ [])))) s6Step127HeadG_Incoming s6Step127HeadG_checked h1 s6Step127HeadG_Outgoing
  exact h0

private theorem s6Step127HeadBank_checked : compileHmrBankResizeLog .headroom s6Step127HeadGBefore ⟨s6Step127HeadFRow,s6Step127HeadGRow,s6Step127HeadFvRow,s6Step127HeadGvRow⟩ ⟨207,207,78,78⟩ [s6Step127HeadGFresh,s6Step127HeadFFresh,s6Step127HeadGvFresh,s6Step127HeadFvFresh]=
    some (s6Step127HeadFvAfter,⟨s6Step127HeadFOut,s6Step127HeadGOut,s6Step127HeadFvOut,s6Step127HeadGvOut⟩,(growRow 777 s6Step127HeadGFresh ++ (growRow 795 s6Step127HeadFFresh ++ (growRow 775 s6Step127HeadGvFresh ++ (growRow 776 s6Step127HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step127HeadBank_rows]
  rfl

private theorem s6Step127Front_checked : compileHmrSourceFrontLog s6Step127EntryFBefore s6Step127FrontBank 206 77 ⟨205,205,78,77⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step127FrontLog=some s6Step127FrontPlan := by
  have pairEq : s6Step127FrontPair=⟨s6Step127HeadFRow,s6Step127HeadGRow,s6Step127HeadFvRow,s6Step127HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step127FrontHead=⟨s6Step127ExitFRow,s6Step127ExitGRow,s6Step127ExitFvRow,s6Step127ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step127Add0A=s6Step127FrontHead.f.wires := by decide +kernel
  have gEq : s6Step127Add0B=s6Step127FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step127Add1A=s6Step127FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step127Add1B=s6Step127FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step127EntryFBefore s6Step127FrontBank 206 77 ⟨205,205,78,77⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step127FrontLog s6Step127FrontPlan
  · exact s6Step127Front_entry
  · exact s6Step127EntryBank_checked
  · exact s6Step127Front_sigma
  · rfl
  · exact s6Step127Front_branch
  · rfl
  · simpa only [s6Step127FrontPlan,pairEq] using s6Step127HeadBank_checked
  · simpa only [s6Step127FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step127F4_checked
  · exact s6Step127Counter_checked
  · rfl
  · simpa only [s6Step127FrontPlan,headEq] using s6Step127ExitBank_checked

private theorem s6Step127Complete_explicit_checked : compileHmrEarlyStepLog s6Step127EntryFBefore s6Step127FrontBank 206 77 ⟨205,205,78,77⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step127CompleteLog=some s6Step127CompletePlan := by
  let Q := s6Step127EarlyControlPlan
  have hq := s6Step127EarlyControl_plan_checked
  have fv1 : s6Step127CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step127CompleteOut.fv.payload[2]?.getD s6Step127CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step127CompleteOut.fv.payload[3]?.getD s6Step127CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step127CompleteOut.fv.payload[4]?.getD s6Step127CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step127EntryFBefore s6Step127EarlyControlArena s6Step127FrontBank 206 77 ⟨205,205,78,77⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step127CompleteLog s6Step127FrontPlan Q
    s6Step127Front_checked s6Step127Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step127Complete_owned s6Step127Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step127EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 854 s6Step127CompleteOut.fv.second (s6Step127CompleteOut.fv.payload[2]?.getD s6Step127CompleteOut.fv.sign) (s6Step127CompleteOut.fv.payload[3]?.getD s6Step127CompleteOut.fv.sign) (s6Step127CompleteOut.fv.payload[4]?.getD s6Step127CompleteOut.fv.sign) 796 37 s6Step127EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep127Arena : Arena := s6Step127EntryFBefore
def s6PrivateStep127Bank : WindowBank := s6Step127FrontBank
def s6PrivateStep127Spec : HmrSourceWalkStepLog := ⟨206,77,⟨205,205,78,77⟩,37,.early s6Step127CompleteLog⟩
def s6PrivateStep127Plan : HmrSourceStepPlan := .early s6Step127CompletePlan
theorem s6PrivateStep127_source : s6PrivateStep127Spec=s6ObservedLogs112[15] := rfl
theorem s6PrivateStep127_checked : compileHmrSourceStepLog s6PrivateStep127Arena s6PrivateStep127Bank
    s6PrivateStep127Spec.fgWidth s6PrivateStep127Spec.vWidth s6PrivateStep127Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]
    6 498 127 s6PrivateStep127Spec.need none s6PrivateStep127Spec.log=some s6PrivateStep127Plan := by
  change compileHmrSourceStepLog s6Step127EntryFBefore s6Step127FrontBank 206 77 ⟨205,205,78,77⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 6 498 127 37 none (.early s6Step127CompleteLog)=some (.early s6Step127CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 127<498)]
  rw [s6Step127Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
