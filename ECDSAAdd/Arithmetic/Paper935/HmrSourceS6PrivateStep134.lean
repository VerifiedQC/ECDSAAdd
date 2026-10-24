import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep132
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

private def s6Step134CompleteMoves : List (Wire × Wire) := [(862,201)]

private def s6Step134EarlyControlLog : HmrEarlyControlLog := ⟨[862, 813, 822, 869, 807],[854],[850],[879, 875, 882, 891, 903, 791],[]⟩

private def s6Step134FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[869], [822], [813], [838]],[[], [], [], []]⟩,[833],[843],[807],[854],[850, 879, 875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[850, 879, 875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[807, 854, 850, 879]⟩

private def s6Step134CompleteLog : HmrEarlyStepLog := ⟨s6Step134FrontLog,s6Step134CompleteMoves,s6Step134EarlyControlLog⟩

private def s6Step134ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457],795⟩

private def s6Step134ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838],776⟩

private def s6Step134ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200],777⟩

private def s6Step134ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839],775⟩

private def s6Step134FrontOut : WindowBank := ⟨s6Step134ExitFOut,s6Step134ExitGOut,s6Step134ExitFvOut,s6Step134ExitGvOut⟩

private def s6Step134CompleteOut : WindowBank := s6Step134FrontOut.repacked s6Step134CompleteMoves

private def s6Step134EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step134EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step134EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step134EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step134EarlyControlPositiveArena,[854],s6Step134EarlyControlEqualityArena,[850],⟨⟨833,false⟩,[⟨⟨854,false⟩,850⟩]⟩⟩

private def s6Step134EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step134EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step134EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step134EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(844,849),(851,854),(855,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step134EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(843,849),(851,854),(855,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step134EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step134EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,862⟩,⟨⟨772,false⟩,813⟩,⟨⟨771,false⟩,822⟩,⟨⟨770,false⟩,869⟩,⟨⟨769,false⟩,807⟩]⟩

private def s6Step134EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step134EarlyControlZeroArena,s6Step134EarlyControlZeroPlan,s6Step134EarlyControlClassPlan,s6Step134EarlyControlFlagArena,s6Step134EarlyControlFittedArena,s6Step134EarlyControlHistoryArena,s6Step134EarlyControlSigmaArena,s6Step134EarlyControlOutputArena,s6Step134EarlyControlLog⟩

private def s6Step134CounterWork : List Wire := [807, 854, 850, 879]

private theorem s6Step134Counter_bounded : s6Step134CounterWork.toFinset⊆arenaWires := by norm_num [s6Step134CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step134HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step134CounterDuring : Arena := ⟨s6Step134HeadFvAfter.live∪s6Step134CounterWork.toFinset,Finset.union_subset s6Step134HeadFvAfter.bounded s6Step134Counter_bounded⟩

private def s6Step134EntryFFresh : List Wire := []

private def s6Step134EntryFvFresh : List Wire := []

private def s6Step134EntryGFresh : List Wire := []

private def s6Step134EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step134EntryGvAfter : Arena := s6Step134EntryFBefore

private def s6Step134EntryGvFresh : List Wire := []

private def s6Step134ExitFExtra : List Wire := [822]

private def s6Step134ExitGExtra : List Wire := [201, 869]

private def s6Step134ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,201),(202,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step134ExitGvExtra : List Wire := [813]

private def s6Step134Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step134Add0Work : List Wire := [850, 879, 875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step134Add0_bounded : s6Step134Add0Work.toFinset⊆arenaWires := by
  have h : s6Step134Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step134Add0During : Arena := ⟨s6Step134Add0Arena.live∪s6Step134Add0Work.toFinset,Finset.union_subset s6Step134Add0Arena.bounded s6Step134Add0_bounded⟩

private def s6Step134Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step134Add1Work : List Wire := [850, 879, 875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step134Add1_bounded : s6Step134Add1Work.toFinset⊆arenaWires := by
  have h : s6Step134Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step134Add1During : Arena := ⟨s6Step134Add1Arena.live∪s6Step134Add1Work.toFinset,Finset.union_subset s6Step134Add1Arena.bounded s6Step134Add1_bounded⟩

private def s6Step134F4FlagArena : Arena := ⟨s6Step134HeadFvAfter.live∪{807},Finset.union_subset s6Step134HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step134F4Plan : HmrHybridF4Plan := ⟨s6Step134F4FlagArena,[807],s6Step134Add0Arena,[854],s6Step134Add0During,s6Step134Add0Work,s6Step134Add1During,s6Step134Add1Work⟩

private def s6Step134HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 822],795⟩

private def s6Step134HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838],776⟩

private def s6Step134HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 869],777⟩

private def s6Step134HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 813],775⟩

private def s6Step134FrontHead : WindowBank := ⟨s6Step134HeadFOut,s6Step134HeadGOut,s6Step134HeadFvOut,s6Step134HeadGvOut⟩

private def s6Step134EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457],795⟩

private def s6Step134EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853],776⟩

private def s6Step134EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201],777⟩

private def s6Step134EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839],775⟩

private def s6Step134FrontPair : WindowBank := ⟨s6Step134EntryFOut,s6Step134EntryGOut,s6Step134EntryFvOut,s6Step134EntryGvOut⟩

private def s6Step134FrontSigmaArena : Arena := ⟨s6Step134EntryGvAfter.live∪{833},Finset.union_subset s6Step134EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step134HeadFFresh : List Wire := [822]

private def s6Step134HeadFvFresh : List Wire := [838]

private def s6Step134HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step134HeadGFresh : List Wire := [869]

private def s6Step134HeadGvFresh : List Wire := [813]

private def s6Step134FrontPlan : HmrSourceFront := ⟨s6Step134EntryGvAfter,s6Step134FrontPair,(growRow 795 s6Step134EntryFFresh ++ (growRow 777 s6Step134EntryGFresh ++ (growRow 776 s6Step134EntryFvFresh ++ (growRow 775 s6Step134EntryGvFresh ++ [])))),s6Step134FrontSigmaArena,[833],s6Step134HeadGBefore,[843],
  s6Step134HeadFvAfter,s6Step134FrontHead,(growRow 777 s6Step134HeadGFresh ++ (growRow 795 s6Step134HeadFFresh ++ (growRow 775 s6Step134HeadGvFresh ++ (growRow 776 s6Step134HeadFvFresh ++ [])))),s6Step134F4Plan,s6Step134CounterDuring,s6Step134CounterWork,s6Step134ExitGvAfter,s6Step134FrontOut,(shrinkRow 777 s6Step134ExitGExtra ++ (shrinkRow 795 s6Step134ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step134ExitGvExtra ++ []))))⟩

private def s6Step134CompletePlan : HmrEarlyStepPlan := ⟨s6Step134FrontPlan,s6Step134EarlyControlArena,s6Step134EarlyControlPlan,s6Step134CompleteMoves⟩

private theorem s6Step134Complete_apart : List.Disjoint (s6Step134CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [833, 843, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] := by
  have nd : ((s6Step134CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[833, 843, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step134Complete_owned : (s6Step134CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step134EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step134EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step134CompleteRelocationMove0Borrowed : Arena := ⟨s6Step134ExitGvAfter.live∪{201},Finset.union_subset s6Step134ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step134CompleteRelocation_move0_owned : 862∈s6Step134ExitGvAfter.live := by norm_num [s6Step134ExitGvAfter,arenaWires]

private theorem s6Step134CompleteRelocation_move0_reserve : s6Step134ExitGvAfter.reserve {201}=some s6Step134CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step134ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step134CompleteRelocation_move0_retire : s6Step134CompleteRelocationMove0Borrowed.retireSet {862}=s6Step134EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step134CompleteRelocationMove0Borrowed s6Step134EarlyControlArena {862}
  change s6Step134EarlyControlArena.live=(s6Step134ExitGvAfter.live∪{201})\{862}
  apply hmrArena_update_of_filter_check s6Step134ExitGvAfter s6Step134EarlyControlArena (fun q => ([(0,201),(202,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [201] [862] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step134CompleteRelocation_checked : s6Step134ExitGvAfter.checkRepack [(862,201)]=some s6Step134EarlyControlArena := by
  have tail1 : s6Step134EarlyControlArena.checkRepack []=some s6Step134EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step134ExitGvAfter s6Step134CompleteRelocationMove0Borrowed s6Step134EarlyControlArena s6Step134EarlyControlArena 862 201 []
    s6Step134CompleteRelocation_move0_owned s6Step134CompleteRelocation_move0_reserve s6Step134CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step134Complete_repack : s6Step134ExitGvAfter.checkRepack s6Step134CompleteMoves=some s6Step134EarlyControlArena := by
  simpa only [s6Step134CompleteMoves] using s6Step134CompleteRelocation_checked

private theorem s6Step134EarlyControl_branchOwned : ([843] : List Wire).toFinset⊆s6Step134EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step134EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(843,849),(851,854),(855,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step134EarlyControl_branch : compileHmrBranchRetirement s6Step134EarlyControlSigmaArena 843=some s6Step134EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step134EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step134EarlyControlSigmaArena s6Step134EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(843,849),(851,854),(855,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(844,849),(851,854),(855,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [843] rfl rfl
    decide +kernel

private theorem s6Step134EarlyControl_classEqualityBorrow : s6Step134EarlyControlPositiveArena.checkBorrow (([833, 854] : List Wire).length-1) s6Step134EarlyControlLog.classWork=some s6Step134EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step134EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step134EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step134EarlyControlEqualityArena,s6Step134EarlyControlPositiveArena,s6Step134EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step134EarlyControl_classEqualityOwned : ([833, 854] : List Wire).toFinset⊆s6Step134EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step134EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step134EarlyControl_classEquality : compileHmrEqualityLog s6Step134EarlyControlPositiveArena [833, 854] 0 s6Step134EarlyControlLog.classWork=some (s6Step134EarlyControlEqualityArena,s6Step134EarlyControlLog.classWork,s6Step134EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step134EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step134EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step134EarlyControl_classOwned : ([769, 807, 833] : List Wire).toFinset⊆s6Step134EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step134EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step134EarlyControl_positiveBorrow : s6Step134EarlyControlZeroArena.checkBorrow (1) s6Step134EarlyControlLog.positiveWork=some s6Step134EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step134EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step134EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step134EarlyControlZeroArena s6Step134EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step134EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step134EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step134EarlyControl_class : compileHmrSourceClassLog s6Step134EarlyControlZeroArena false 769 s6Step134EarlyControlZeroPlan.top 0 833 s6Step134EarlyControlLog.positiveWork s6Step134EarlyControlLog.classWork=some s6Step134EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step134EarlyControlClassPlan s6Step134EarlyControlZeroArena false 769 s6Step134EarlyControlZeroPlan.top 0 833
  constructor
  · decide +kernel
  · exact s6Step134EarlyControl_classOwned
  · exact s6Step134EarlyControl_positiveBorrow
  · exact s6Step134EarlyControl_classEquality

private theorem s6Step134EarlyControl_entryRecordOwned : ([843, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step134EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step134EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step134EarlyControl_entrySigmaOwned : ([833, 254] : List Wire).toFinset⊆s6Step134EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step134EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step134EarlyControl_fitBorrow : s6Step134EarlyControlFlagArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step134EarlyControlLog.recordFresh=some s6Step134EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step134EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step134EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step134EarlyControlFittedArena,s6Step134EarlyControlFlagArena,s6Step134EarlyControlLog,arenaWires]

private theorem s6Step134EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step134EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step134EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step134EarlyControl_fit : compileHmrRecordGrowLog s6Step134EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step134EarlyControlLog.recordFresh=some s6Step134EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step134EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step134EarlyControl_fitBorrow

private theorem s6Step134EarlyControl_flagsBorrow : s6Step134EarlyControlEqualityArena.checkBorrow (6) s6Step134EarlyControlLog.flagWork=some s6Step134EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step134EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step134EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step134EarlyControlFlagArena,s6Step134EarlyControlEqualityArena,s6Step134EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step134EarlyControl_flagsOwned : ([850, 253, 252, 251] : List Wire).toFinset⊆s6Step134EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step134EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step134EarlyControl_flags : compileHmrFlagsLog s6Step134EarlyControlClassPlan.equalityArena s6Step134EarlyControlClassPlan.equality.top 253 252 251 s6Step134EarlyControlLog.flagWork=some s6Step134EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step134EarlyControl_flagsOwned⟩
  · exact s6Step134EarlyControl_flagsBorrow

private theorem s6Step134EarlyControl_historyBorrow : s6Step134EarlyControlArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step134EarlyControlLog.recordFresh=some s6Step134EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step134EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step134EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step134EarlyControlArena s6Step134EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step134EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step134EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step134EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step134EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step134EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step134EarlyControl_history : compileHmrRecordGrowLog s6Step134EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step134EarlyControlLog.recordFresh=some s6Step134EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step134EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step134EarlyControl_historyBorrow

private theorem s6Step134EarlyControl_sigmaOwned : ([254, 833] : List Wire).toFinset⊆s6Step134EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step134EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step134EarlyControl_sigmaReleaseOwned : ([833] : List Wire).toFinset⊆s6Step134EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step134EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step134EarlyControl_sigmaRelease : s6Step134EarlyControlHistoryArena.release {833} (fun _ => false)=some s6Step134EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step134EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step134EarlyControlHistoryArena s6Step134EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(843,849),(851,854),(855,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [833] rfl rfl
    decide +kernel

private theorem s6Step134EarlyControl_sigma : compileHmrSigmaDropLog s6Step134EarlyControlHistoryArena false 0 0 254 833 []=some s6Step134EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step134EarlyControl_sigmaOwned⟩
  · exact s6Step134EarlyControl_sigmaRelease

private theorem s6Step134EarlyControl_zeroBorrow : s6Step134EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step134EarlyControlLog.zeroWork=some s6Step134EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step134EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step134EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step134EarlyControlArena s6Step134EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step134EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step134EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step134EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step134EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step134EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step134EarlyControl_zero : compileHmrEqualityLog s6Step134EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step134EarlyControlLog.zeroWork=some (s6Step134EarlyControlZeroArena,s6Step134EarlyControlLog.zeroWork,s6Step134EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step134EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step134EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step134EarlyControl_logged : s6Step134EarlyControlPlan.Logged s6Step134EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 833 254 253 252 251 843 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step134EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step134EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step134EarlyControl_zero
  · exact s6Step134EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step134EarlyControl_flags
  · exact s6Step134EarlyControl_fit
  · exact s6Step134EarlyControl_history
  · exact s6Step134EarlyControl_sigma
  · exact s6Step134EarlyControl_branch

private theorem s6Step134EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step134EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 833 254 253 252 251 843 37 s6Step134EarlyControlLog=some s6Step134EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step134EarlyControlPlan s6Step134EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 833 254 253 252 251 843 37 s6Step134EarlyControl_logged

private def s6Step134EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457],795⟩

private def s6Step134EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853],776⟩

private def s6Step134EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201],777⟩

private def s6Step134EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839],775⟩

private def s6Step134FrontBank : WindowBank := ⟨s6Step134EntryFRow,s6Step134EntryGRow,s6Step134EntryFvRow,s6Step134EntryGvRow⟩

private def s6Step134Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 822, 795]

private def s6Step134Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 869, 777]

private def s6Step134Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 776]

private def s6Step134Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 813, 775]

private theorem s6Step134Counter_apart : Disjoint s6Step134HeadFvAfter.live s6Step134CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step134HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step134Counter_borrowed : s6Step134HeadFvAfter.checkBorrow 4 s6Step134CounterWork=some s6Step134CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step134HeadFvAfter s6Step134CounterDuring s6Step134CounterWork.toFinset s6Step134Counter_bounded s6Step134Counter_apart rfl

private theorem s6Step134Counter_owned : (833::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step134HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step134HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step134Counter_checked : compileHmrCounterStepLog s6Step134HeadFvAfter true 833 [774, 773, 772, 771, 770, 769] s6Step134CounterWork=some s6Step134CounterDuring := by
  have owned : ∀q∈833::[774, 773, 772, 771, 770, 769],q∈s6Step134HeadFvAfter.live := fun q hq => s6Step134Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step134Counter_borrowed

private def s6Step134EntryFAfter : Arena := s6Step134EntryFBefore

private theorem s6Step134EntryBank_incomingDistinct : ([s6Step134EntryFRow,s6Step134EntryGRow,s6Step134EntryFvRow,s6Step134EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step134EntryF_Incoming : rowsOwned s6Step134EntryFBefore [s6Step134EntryFRow,s6Step134EntryGRow,s6Step134EntryFvRow,s6Step134EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step134EntryFRow,s6Step134EntryGRow,s6Step134EntryFvRow,s6Step134EntryGvRow] 0 s6Step134EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step134EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step134EntryBank_outgoingOwned : rowsOwned s6Step134EntryGvAfter [s6Step134EntryFOut,s6Step134EntryGOut,s6Step134EntryFvOut,s6Step134EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step134EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step134EntryF_Outgoing : rowsOwned s6Step134EntryGvAfter [s6Step134EntryFOut,s6Step134EntryGOut,s6Step134EntryFvOut,s6Step134EntryGvOut] :=
  hmrRows_owned_drop s6Step134EntryGvAfter [s6Step134EntryFOut,s6Step134EntryGOut,s6Step134EntryFvOut,s6Step134EntryGvOut] 0 s6Step134EntryBank_outgoingOwned

private theorem s6Step134EntryF_distinct : (s6Step134EntryFRow.sign::s6Step134EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step134EntryF_owned : (s6Step134EntryFRow.sign::s6Step134EntryFRow.payload).toFinset⊆s6Step134EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step134EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step134EntryF_reserved : s6Step134EntryFBefore.reserve s6Step134EntryFFresh.toFinset=some s6Step134EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step134EntryFFresh,arenaWires]
  · norm_num [s6Step134EntryFBefore,s6Step134EntryFFresh,arenaWires]
  · simp only [s6Step134EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step134EntryF_checked : planRowResizeLog s6Step134EntryFBefore s6Step134EntryFRow 202 s6Step134EntryFFresh=
    some (s6Step134EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457],795⟩,growRow 795 s6Step134EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step134EntryFBefore s6Step134EntryFAfter s6Step134EntryFRow 202 s6Step134EntryFFresh
    s6Step134EntryF_distinct s6Step134EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step134EntryF_reserved
  have rowEq : WindowRow.mk (s6Step134EntryFRow.payload++s6Step134EntryFFresh) s6Step134EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step134EntryFvAfter : Arena := s6Step134EntryFBefore

private def s6Step134EntryFvBefore : Arena := s6Step134EntryFBefore

private theorem s6Step134EntryFv_Incoming : rowsOwned s6Step134EntryFvBefore [s6Step134EntryFvRow,s6Step134EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step134EntryFRow,s6Step134EntryGRow,s6Step134EntryFvRow,s6Step134EntryGvRow] 2 s6Step134EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step134EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step134EntryFv_Outgoing : rowsOwned s6Step134EntryGvAfter [s6Step134EntryFvOut,s6Step134EntryGvOut] :=
  hmrRows_owned_drop s6Step134EntryGvAfter [s6Step134EntryFOut,s6Step134EntryGOut,s6Step134EntryFvOut,s6Step134EntryGvOut] 2 s6Step134EntryBank_outgoingOwned

private theorem s6Step134EntryFv_distinct : (s6Step134EntryFvRow.sign::s6Step134EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step134EntryFv_owned : (s6Step134EntryFvRow.sign::s6Step134EntryFvRow.payload).toFinset⊆s6Step134EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step134EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step134EntryFv_reserved : s6Step134EntryFvBefore.reserve s6Step134EntryFvFresh.toFinset=some s6Step134EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step134EntryFvFresh,arenaWires]
  · norm_num [s6Step134EntryFvBefore,s6Step134EntryFBefore,s6Step134EntryFvFresh,arenaWires]
  · simp only [s6Step134EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step134EntryFv_checked : planRowResizeLog s6Step134EntryFvBefore s6Step134EntryFvRow 80 s6Step134EntryFvFresh=
    some (s6Step134EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853],776⟩,growRow 776 s6Step134EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step134EntryFvBefore s6Step134EntryFvAfter s6Step134EntryFvRow 80 s6Step134EntryFvFresh
    s6Step134EntryFv_distinct s6Step134EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step134EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step134EntryFvRow.payload++s6Step134EntryFvFresh) s6Step134EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step134EntryGAfter : Arena := s6Step134EntryFBefore

private def s6Step134EntryGBefore : Arena := s6Step134EntryFBefore

private theorem s6Step134EntryG_Incoming : rowsOwned s6Step134EntryGBefore [s6Step134EntryGRow,s6Step134EntryFvRow,s6Step134EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step134EntryFRow,s6Step134EntryGRow,s6Step134EntryFvRow,s6Step134EntryGvRow] 1 s6Step134EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step134EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step134EntryG_Outgoing : rowsOwned s6Step134EntryGvAfter [s6Step134EntryGOut,s6Step134EntryFvOut,s6Step134EntryGvOut] :=
  hmrRows_owned_drop s6Step134EntryGvAfter [s6Step134EntryFOut,s6Step134EntryGOut,s6Step134EntryFvOut,s6Step134EntryGvOut] 1 s6Step134EntryBank_outgoingOwned

private theorem s6Step134EntryG_distinct : (s6Step134EntryGRow.sign::s6Step134EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step134EntryG_owned : (s6Step134EntryGRow.sign::s6Step134EntryGRow.payload).toFinset⊆s6Step134EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step134EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step134EntryG_reserved : s6Step134EntryGBefore.reserve s6Step134EntryGFresh.toFinset=some s6Step134EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step134EntryGFresh,arenaWires]
  · norm_num [s6Step134EntryGBefore,s6Step134EntryFBefore,s6Step134EntryGFresh,arenaWires]
  · simp only [s6Step134EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step134EntryG_checked : planRowResizeLog s6Step134EntryGBefore s6Step134EntryGRow 202 s6Step134EntryGFresh=
    some (s6Step134EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201],777⟩,growRow 777 s6Step134EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step134EntryGBefore s6Step134EntryGAfter s6Step134EntryGRow 202 s6Step134EntryGFresh
    s6Step134EntryG_distinct s6Step134EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step134EntryG_reserved
  have rowEq : WindowRow.mk (s6Step134EntryGRow.payload++s6Step134EntryGFresh) s6Step134EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step134EntryGvBefore : Arena := s6Step134EntryFBefore

private theorem s6Step134EntryGv_Incoming : rowsOwned s6Step134EntryGvBefore [s6Step134EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step134EntryFRow,s6Step134EntryGRow,s6Step134EntryFvRow,s6Step134EntryGvRow] 3 s6Step134EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step134EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step134EntryGv_Outgoing : rowsOwned s6Step134EntryGvAfter [s6Step134EntryGvOut] :=
  hmrRows_owned_drop s6Step134EntryGvAfter [s6Step134EntryFOut,s6Step134EntryGOut,s6Step134EntryFvOut,s6Step134EntryGvOut] 3 s6Step134EntryBank_outgoingOwned

private theorem s6Step134EntryGv_distinct : (s6Step134EntryGvRow.sign::s6Step134EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step134EntryGv_owned : (s6Step134EntryGvRow.sign::s6Step134EntryGvRow.payload).toFinset⊆s6Step134EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step134EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step134EntryGv_reserved : s6Step134EntryGvBefore.reserve s6Step134EntryGvFresh.toFinset=some s6Step134EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step134EntryGvFresh,arenaWires]
  · norm_num [s6Step134EntryGvBefore,s6Step134EntryFBefore,s6Step134EntryGvFresh,arenaWires]
  · simp only [s6Step134EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step134EntryGv_checked : planRowResizeLog s6Step134EntryGvBefore s6Step134EntryGvRow 80 s6Step134EntryGvFresh=
    some (s6Step134EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839],775⟩,growRow 775 s6Step134EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step134EntryGvBefore s6Step134EntryGvAfter s6Step134EntryGvRow 80 s6Step134EntryGvFresh
    s6Step134EntryGv_distinct s6Step134EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step134EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step134EntryGvRow.payload++s6Step134EntryGvFresh) s6Step134EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step134EntryBank_rows : planWindowRowsLog s6Step134EntryFBefore [(s6Step134EntryFRow,202),(s6Step134EntryGRow,202),(s6Step134EntryFvRow,80),(s6Step134EntryGvRow,80)] [s6Step134EntryFFresh,s6Step134EntryGFresh,s6Step134EntryFvFresh,s6Step134EntryGvFresh]=
    some (s6Step134EntryGvAfter,[s6Step134EntryFOut,s6Step134EntryGOut,s6Step134EntryFvOut,s6Step134EntryGvOut],(growRow 795 s6Step134EntryFFresh ++ (growRow 777 s6Step134EntryGFresh ++ (growRow 776 s6Step134EntryFvFresh ++ (growRow 775 s6Step134EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step134EntryGvAfter [] []=some (s6Step134EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step134EntryGvBefore s6Step134EntryGvAfter s6Step134EntryGvAfter
    s6Step134EntryGvRow s6Step134EntryGvOut 80 s6Step134EntryGvFresh [] [] []
    (growRow 775 s6Step134EntryGvFresh) ([]) s6Step134EntryGv_Incoming s6Step134EntryGv_checked h4 s6Step134EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step134EntryFvBefore s6Step134EntryFvAfter s6Step134EntryGvAfter
    s6Step134EntryFvRow s6Step134EntryFvOut 80 s6Step134EntryFvFresh [(s6Step134EntryGvRow,80)] [s6Step134EntryGvFresh] [s6Step134EntryGvOut]
    (growRow 776 s6Step134EntryFvFresh) ((growRow 775 s6Step134EntryGvFresh ++ [])) s6Step134EntryFv_Incoming s6Step134EntryFv_checked h3 s6Step134EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step134EntryGBefore s6Step134EntryGAfter s6Step134EntryGvAfter
    s6Step134EntryGRow s6Step134EntryGOut 202 s6Step134EntryGFresh [(s6Step134EntryFvRow,80),(s6Step134EntryGvRow,80)] [s6Step134EntryFvFresh,s6Step134EntryGvFresh] [s6Step134EntryFvOut,s6Step134EntryGvOut]
    (growRow 777 s6Step134EntryGFresh) ((growRow 776 s6Step134EntryFvFresh ++ (growRow 775 s6Step134EntryGvFresh ++ []))) s6Step134EntryG_Incoming s6Step134EntryG_checked h2 s6Step134EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step134EntryFBefore s6Step134EntryFAfter s6Step134EntryGvAfter
    s6Step134EntryFRow s6Step134EntryFOut 202 s6Step134EntryFFresh [(s6Step134EntryGRow,202),(s6Step134EntryFvRow,80),(s6Step134EntryGvRow,80)] [s6Step134EntryGFresh,s6Step134EntryFvFresh,s6Step134EntryGvFresh] [s6Step134EntryGOut,s6Step134EntryFvOut,s6Step134EntryGvOut]
    (growRow 795 s6Step134EntryFFresh) ((growRow 777 s6Step134EntryGFresh ++ (growRow 776 s6Step134EntryFvFresh ++ (growRow 775 s6Step134EntryGvFresh ++ [])))) s6Step134EntryF_Incoming s6Step134EntryF_checked h1 s6Step134EntryF_Outgoing
  exact h0

private theorem s6Step134EntryBank_checked : compileHmrBankResizeLog .entry s6Step134EntryFBefore ⟨s6Step134EntryFRow,s6Step134EntryGRow,s6Step134EntryFvRow,s6Step134EntryGvRow⟩ ⟨202,202,80,80⟩ [s6Step134EntryFFresh,s6Step134EntryGFresh,s6Step134EntryFvFresh,s6Step134EntryGvFresh]=
    some (s6Step134EntryGvAfter,⟨s6Step134EntryFOut,s6Step134EntryGOut,s6Step134EntryFvOut,s6Step134EntryGvOut⟩,(growRow 795 s6Step134EntryFFresh ++ (growRow 777 s6Step134EntryGFresh ++ (growRow 776 s6Step134EntryFvFresh ++ (growRow 775 s6Step134EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step134EntryBank_rows]
  rfl

private def s6Step134ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,201),(202,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step134ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,201),(202,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step134ExitFBefore : Arena := s6Step134ExitGAfter

private def s6Step134ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 822],795⟩

private def s6Step134ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838],776⟩

private def s6Step134ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 869],777⟩

private def s6Step134ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 813],775⟩

private theorem s6Step134ExitBank_incomingDistinct : ([s6Step134ExitGRow,s6Step134ExitFRow,s6Step134ExitFvRow,s6Step134ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step134ExitF_Incoming : rowsOwned s6Step134ExitFBefore [s6Step134ExitFRow,s6Step134ExitFvRow,s6Step134ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step134ExitGRow,s6Step134ExitFRow,s6Step134ExitFvRow,s6Step134ExitGvRow] 1 s6Step134ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step134ExitFBefore (fun q => ([(0,201),(202,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step134ExitBank_outgoingOwned : rowsOwned s6Step134ExitGvAfter [s6Step134ExitGOut,s6Step134ExitFOut,s6Step134ExitFvOut,s6Step134ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step134ExitGvAfter (fun q => ([(0,201),(202,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step134ExitF_Outgoing : rowsOwned s6Step134ExitGvAfter [s6Step134ExitFOut,s6Step134ExitFvOut,s6Step134ExitGvOut] :=
  hmrRows_owned_drop s6Step134ExitGvAfter [s6Step134ExitGOut,s6Step134ExitFOut,s6Step134ExitFvOut,s6Step134ExitGvOut] 1 s6Step134ExitBank_outgoingOwned

private theorem s6Step134ExitF_distinct : (s6Step134ExitFRow.sign::s6Step134ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step134ExitF_owned : (s6Step134ExitFRow.sign::s6Step134ExitFRow.payload).toFinset⊆s6Step134ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step134ExitFBefore (fun q => ([(0,201),(202,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step134ExitF_retired : s6Step134ExitFBefore.retireSet s6Step134ExitFExtra.toFinset=s6Step134ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step134ExitFBefore s6Step134ExitFAfter s6Step134ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step134ExitFBefore s6Step134ExitFAfter (fun q => ([(0,201),(202,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,201),(202,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step134ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step134ExitF_checked : planRowResizeLog s6Step134ExitFBefore s6Step134ExitFRow 202 []=
    some (s6Step134ExitFAfter,s6Step134ExitFOut,shrinkRow 795 s6Step134ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step134ExitFBefore s6Step134ExitFRow 202 s6Step134ExitF_distinct s6Step134ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step134ExitFRow.payload.take 202) s6Step134ExitFRow.sign=s6Step134ExitFOut := by decide +kernel
  have hi : s6Step134ExitFRow.payload.drop 202=s6Step134ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step134ExitF_retired] at result
  exact result

private def s6Step134ExitFvAfter : Arena := s6Step134ExitFAfter

private def s6Step134ExitFvBefore : Arena := s6Step134ExitFAfter

private theorem s6Step134ExitFv_Incoming : rowsOwned s6Step134ExitFvBefore [s6Step134ExitFvRow,s6Step134ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step134ExitGRow,s6Step134ExitFRow,s6Step134ExitFvRow,s6Step134ExitGvRow] 2 s6Step134ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step134ExitFvBefore (fun q => ([(0,201),(202,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step134ExitFv_Outgoing : rowsOwned s6Step134ExitGvAfter [s6Step134ExitFvOut,s6Step134ExitGvOut] :=
  hmrRows_owned_drop s6Step134ExitGvAfter [s6Step134ExitGOut,s6Step134ExitFOut,s6Step134ExitFvOut,s6Step134ExitGvOut] 2 s6Step134ExitBank_outgoingOwned

private theorem s6Step134ExitFv_distinct : (s6Step134ExitFvRow.sign::s6Step134ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step134ExitFv_owned : (s6Step134ExitFvRow.sign::s6Step134ExitFvRow.payload).toFinset⊆s6Step134ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step134ExitFvBefore (fun q => ([(0,201),(202,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step134ExitFv_reserved : s6Step134ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step134ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step134ExitFv_checked : planRowResizeLog s6Step134ExitFvBefore s6Step134ExitFvRow 81 []=
    some (s6Step134ExitFvAfter,s6Step134ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step134ExitFvBefore s6Step134ExitFvAfter s6Step134ExitFvRow 81 []
    s6Step134ExitFv_distinct s6Step134ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step134ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step134ExitFvRow.payload++[]) s6Step134ExitFvRow.sign=s6Step134ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step134ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step134ExitG_Incoming : rowsOwned s6Step134ExitGBefore [s6Step134ExitGRow,s6Step134ExitFRow,s6Step134ExitFvRow,s6Step134ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step134ExitGRow,s6Step134ExitFRow,s6Step134ExitFvRow,s6Step134ExitGvRow] 0 s6Step134ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step134ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step134ExitG_Outgoing : rowsOwned s6Step134ExitGvAfter [s6Step134ExitGOut,s6Step134ExitFOut,s6Step134ExitFvOut,s6Step134ExitGvOut] :=
  hmrRows_owned_drop s6Step134ExitGvAfter [s6Step134ExitGOut,s6Step134ExitFOut,s6Step134ExitFvOut,s6Step134ExitGvOut] 0 s6Step134ExitBank_outgoingOwned

private theorem s6Step134ExitG_distinct : (s6Step134ExitGRow.sign::s6Step134ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step134ExitG_owned : (s6Step134ExitGRow.sign::s6Step134ExitGRow.payload).toFinset⊆s6Step134ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step134ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step134ExitG_retired : s6Step134ExitGBefore.retireSet s6Step134ExitGExtra.toFinset=s6Step134ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step134ExitGBefore s6Step134ExitGAfter s6Step134ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step134ExitGBefore s6Step134ExitGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,201),(202,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step134ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step134ExitG_checked : planRowResizeLog s6Step134ExitGBefore s6Step134ExitGRow 201 []=
    some (s6Step134ExitGAfter,s6Step134ExitGOut,shrinkRow 777 s6Step134ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step134ExitGBefore s6Step134ExitGRow 201 s6Step134ExitG_distinct s6Step134ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step134ExitGRow.payload.take 201) s6Step134ExitGRow.sign=s6Step134ExitGOut := by decide +kernel
  have hi : s6Step134ExitGRow.payload.drop 201=s6Step134ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step134ExitG_retired] at result
  exact result

private def s6Step134ExitGvBefore : Arena := s6Step134ExitFAfter

private theorem s6Step134ExitGv_Incoming : rowsOwned s6Step134ExitGvBefore [s6Step134ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step134ExitGRow,s6Step134ExitFRow,s6Step134ExitFvRow,s6Step134ExitGvRow] 3 s6Step134ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step134ExitGvBefore (fun q => ([(0,201),(202,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step134ExitGv_Outgoing : rowsOwned s6Step134ExitGvAfter [s6Step134ExitGvOut] :=
  hmrRows_owned_drop s6Step134ExitGvAfter [s6Step134ExitGOut,s6Step134ExitFOut,s6Step134ExitFvOut,s6Step134ExitGvOut] 3 s6Step134ExitBank_outgoingOwned

private theorem s6Step134ExitGv_distinct : (s6Step134ExitGvRow.sign::s6Step134ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step134ExitGv_owned : (s6Step134ExitGvRow.sign::s6Step134ExitGvRow.payload).toFinset⊆s6Step134ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step134ExitGvBefore (fun q => ([(0,201),(202,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step134ExitGv_retired : s6Step134ExitGvBefore.retireSet s6Step134ExitGvExtra.toFinset=s6Step134ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step134ExitGvBefore s6Step134ExitGvAfter s6Step134ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step134ExitGvBefore s6Step134ExitGvAfter (fun q => ([(0,201),(202,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,201),(202,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step134ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step134ExitGv_checked : planRowResizeLog s6Step134ExitGvBefore s6Step134ExitGvRow 80 []=
    some (s6Step134ExitGvAfter,s6Step134ExitGvOut,shrinkRow 775 s6Step134ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step134ExitGvBefore s6Step134ExitGvRow 80 s6Step134ExitGv_distinct s6Step134ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step134ExitGvRow.payload.take 80) s6Step134ExitGvRow.sign=s6Step134ExitGvOut := by decide +kernel
  have hi : s6Step134ExitGvRow.payload.drop 80=s6Step134ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step134ExitGv_retired] at result
  exact result

private theorem s6Step134ExitBank_rows : planWindowRowsLog s6Step134ExitGBefore [(s6Step134ExitGRow,201),(s6Step134ExitFRow,202),(s6Step134ExitFvRow,81),(s6Step134ExitGvRow,80)] [[],[],[],[]]=
    some (s6Step134ExitGvAfter,[s6Step134ExitGOut,s6Step134ExitFOut,s6Step134ExitFvOut,s6Step134ExitGvOut],(shrinkRow 777 s6Step134ExitGExtra ++ (shrinkRow 795 s6Step134ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step134ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step134ExitGvAfter [] []=some (s6Step134ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step134ExitGvBefore s6Step134ExitGvAfter s6Step134ExitGvAfter
    s6Step134ExitGvRow s6Step134ExitGvOut 80 [] [] [] []
    (shrinkRow 775 s6Step134ExitGvExtra) ([]) s6Step134ExitGv_Incoming s6Step134ExitGv_checked h4 s6Step134ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step134ExitFvBefore s6Step134ExitFvAfter s6Step134ExitGvAfter
    s6Step134ExitFvRow s6Step134ExitFvOut 81 [] [(s6Step134ExitGvRow,80)] [[]] [s6Step134ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step134ExitGvExtra ++ [])) s6Step134ExitFv_Incoming s6Step134ExitFv_checked h3 s6Step134ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step134ExitFBefore s6Step134ExitFAfter s6Step134ExitGvAfter
    s6Step134ExitFRow s6Step134ExitFOut 202 [] [(s6Step134ExitFvRow,81),(s6Step134ExitGvRow,80)] [[],[]] [s6Step134ExitFvOut,s6Step134ExitGvOut]
    (shrinkRow 795 s6Step134ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step134ExitGvExtra ++ []))) s6Step134ExitF_Incoming s6Step134ExitF_checked h2 s6Step134ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step134ExitGBefore s6Step134ExitGAfter s6Step134ExitGvAfter
    s6Step134ExitGRow s6Step134ExitGOut 201 [] [(s6Step134ExitFRow,202),(s6Step134ExitFvRow,81),(s6Step134ExitGvRow,80)] [[],[],[]] [s6Step134ExitFOut,s6Step134ExitFvOut,s6Step134ExitGvOut]
    (shrinkRow 777 s6Step134ExitGExtra) ((shrinkRow 795 s6Step134ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step134ExitGvExtra ++ [])))) s6Step134ExitG_Incoming s6Step134ExitG_checked h1 s6Step134ExitG_Outgoing
  exact h0

private theorem s6Step134ExitBank_checked : compileHmrBankResizeLog .exit s6Step134ExitGBefore ⟨s6Step134ExitFRow,s6Step134ExitGRow,s6Step134ExitFvRow,s6Step134ExitGvRow⟩ ⟨202,201,81,80⟩ [[],[],[],[]]=
    some (s6Step134ExitGvAfter,⟨s6Step134ExitFOut,s6Step134ExitGOut,s6Step134ExitFvOut,s6Step134ExitGvOut⟩,(shrinkRow 777 s6Step134ExitGExtra ++ (shrinkRow 795 s6Step134ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step134ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step134ExitBank_rows]
  rfl

private theorem s6Step134Add0_apart : Disjoint s6Step134Add0Arena.live s6Step134Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step134Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step134Add0_card : s6Step134Add0Arena.live.card=875 := by
  decide +kernel

private theorem s6Step134Add0_borrowed : s6Step134Add0Arena.checkBorrow (hmrHybridCount s6Step134Add0Arena s6Step134Add0B.length) s6Step134Add0Work=some s6Step134Add0During := by
  have len : s6Step134Add0Work.length=hmrHybridCount s6Step134Add0Arena s6Step134Add0B.length := by
    rw [hmrHybridCount,s6Step134Add0_card]
    decide +kernel
  have nd : s6Step134Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step134Add0Arena s6Step134Add0During s6Step134Add0Work.toFinset s6Step134Add0_bounded s6Step134Add0_apart rfl

private theorem s6Step134Add0_distinct : (807::843::854::(s6Step134Add0A++s6Step134Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step134Add0_owned : (807::843::854::(s6Step134Add0A++s6Step134Add0B)).toFinset⊆s6Step134Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step134Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step134Add0_checked : compileHmrHybridCinLog s6Step134Add0Arena 843 807 854 s6Step134Add0A s6Step134Add0B s6Step134Add0Work=some s6Step134Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step134Add0Arena s6Step134Add0During 843 807 854 s6Step134Add0A s6Step134Add0B s6Step134Add0Work
    (by decide +kernel) (by decide +kernel) s6Step134Add0_distinct
    (fun q hq => s6Step134Add0_owned (List.mem_toFinset.mpr hq)) s6Step134Add0_borrowed

private theorem s6Step134Add1_apart : Disjoint s6Step134Add1Arena.live s6Step134Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step134Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step134Add1_card : s6Step134Add1Arena.live.card=875 := by
  decide +kernel

private theorem s6Step134Add1_borrowed : s6Step134Add1Arena.checkBorrow (hmrHybridCount s6Step134Add1Arena s6Step134Add1B.length) s6Step134Add1Work=some s6Step134Add1During := by
  have len : s6Step134Add1Work.length=hmrHybridCount s6Step134Add1Arena s6Step134Add1B.length := by
    rw [hmrHybridCount,s6Step134Add1_card]
    decide +kernel
  have nd : s6Step134Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step134Add1Arena s6Step134Add1During s6Step134Add1Work.toFinset s6Step134Add1_bounded s6Step134Add1_apart rfl

private theorem s6Step134Add1_distinct : (807::843::854::(s6Step134Add1A++s6Step134Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step134Add1_owned : (807::843::854::(s6Step134Add1A++s6Step134Add1B)).toFinset⊆s6Step134Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step134Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step134Add1_checked : compileHmrHybridCinLog s6Step134Add1Arena 843 807 854 s6Step134Add1A s6Step134Add1B s6Step134Add1Work=some s6Step134Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step134Add1Arena s6Step134Add1During 843 807 854 s6Step134Add1A s6Step134Add1B s6Step134Add1Work
    (by decide +kernel) (by decide +kernel) s6Step134Add1_distinct
    (fun q hq => s6Step134Add1_owned (List.mem_toFinset.mpr hq)) s6Step134Add1_borrowed

private theorem s6Step134F4_apart : Disjoint (s6Step134Add0A++s6Step134Add0B).toFinset (s6Step134Add1A++s6Step134Add1B).toFinset := by
  have nd : ((s6Step134Add0A++s6Step134Add0B)++(s6Step134Add1A++s6Step134Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step134F4_carry : s6Step134F4FlagArena.checkBorrow 1 [854]=some s6Step134Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step134F4FlagArena,s6Step134HeadFvAfter,arenaWires]
  · change s6Step134Add0Arena.live=(s6Step134HeadFvAfter.live∪{807})∪{854}
    apply hmrArena_union_pair_of_filter_check s6Step134HeadFvAfter s6Step134Add0Arena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) 807 854 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step134F4_distinct : (833::843::807::854::((s6Step134Add0A++s6Step134Add1A)++(s6Step134Add0B++s6Step134Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step134F4_flag : s6Step134HeadFvAfter.checkBorrow 1 [807]=some s6Step134F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step134HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step134F4_owned : (833::843::((s6Step134Add0A++s6Step134Add1A)++(s6Step134Add0B++s6Step134Add1B))).toFinset⊆s6Step134HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step134HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step134F4_checked : compileHmrHybridF4Log s6Step134HeadFvAfter 833 843 s6Step134Add0A s6Step134Add0B s6Step134Add1A s6Step134Add1B [807] [854] s6Step134Add0Work s6Step134Add1Work=some s6Step134F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step134HeadFvAfter s6Step134F4FlagArena s6Step134Add0Arena s6Step134Add0During s6Step134Add1During 833 843
    s6Step134Add0A s6Step134Add0B s6Step134Add1A s6Step134Add1B [807] [854] s6Step134Add0Work s6Step134Add1Work
    (fun q hq => s6Step134F4_owned (List.mem_toFinset.mpr hq)) s6Step134F4_flag s6Step134F4_carry
    s6Step134F4_distinct s6Step134F4_apart s6Step134Add0_checked s6Step134Add1_checked

private theorem s6Step134Front_branch : s6Step134FrontSigmaArena.checkBorrow 1 [843]=some s6Step134HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step134FrontSigmaArena,s6Step134EntryGvAfter,s6Step134EntryFBefore,arenaWires]
  · change s6Step134HeadGBefore.live=(s6Step134EntryGvAfter.live∪{833})∪{843}
    apply hmrArena_union_pair_of_filter_check s6Step134EntryGvAfter s6Step134HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 833 843 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step134Front_entry : HmrFrontEntryValid s6Step134EntryFBefore s6Step134FrontBank 202 80 ⟨202,201,81,80⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step134FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step134EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step134EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step134FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step134Front_sigma : s6Step134EntryGvAfter.checkBorrow 1 [833]=some s6Step134FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step134EntryGvAfter,s6Step134EntryFBefore,arenaWires]
  · rfl

private def s6Step134HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step134HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step134HeadFBefore : Arena := s6Step134HeadGAfter

private def s6Step134HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457],795⟩

private def s6Step134HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853],776⟩

private def s6Step134HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201],777⟩

private def s6Step134HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839],775⟩

private theorem s6Step134HeadBank_incomingDistinct : ([s6Step134HeadGRow,s6Step134HeadFRow,s6Step134HeadGvRow,s6Step134HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step134HeadF_Incoming : rowsOwned s6Step134HeadFBefore [s6Step134HeadFRow,s6Step134HeadGvRow,s6Step134HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step134HeadGRow,s6Step134HeadFRow,s6Step134HeadGvRow,s6Step134HeadFvRow] 1 s6Step134HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step134HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step134HeadBank_outgoingOwned : rowsOwned s6Step134HeadFvAfter [s6Step134HeadGOut,s6Step134HeadFOut,s6Step134HeadGvOut,s6Step134HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step134HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step134HeadF_Outgoing : rowsOwned s6Step134HeadFvAfter [s6Step134HeadFOut,s6Step134HeadGvOut,s6Step134HeadFvOut] :=
  hmrRows_owned_drop s6Step134HeadFvAfter [s6Step134HeadGOut,s6Step134HeadFOut,s6Step134HeadGvOut,s6Step134HeadFvOut] 1 s6Step134HeadBank_outgoingOwned

private theorem s6Step134HeadF_distinct : (s6Step134HeadFRow.sign::s6Step134HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step134HeadF_owned : (s6Step134HeadFRow.sign::s6Step134HeadFRow.payload).toFinset⊆s6Step134HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step134HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step134HeadF_reserved : s6Step134HeadFBefore.reserve s6Step134HeadFFresh.toFinset=some s6Step134HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step134HeadFFresh,arenaWires]
  · norm_num [s6Step134HeadFBefore,s6Step134HeadGAfter,s6Step134HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step134HeadFBefore s6Step134HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step134HeadFFresh rfl rfl
    · norm_num [s6Step134HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step134HeadF_checked : planRowResizeLog s6Step134HeadFBefore s6Step134HeadFRow 203 s6Step134HeadFFresh=
    some (s6Step134HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 822],795⟩,growRow 795 s6Step134HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step134HeadFBefore s6Step134HeadFAfter s6Step134HeadFRow 203 s6Step134HeadFFresh
    s6Step134HeadF_distinct s6Step134HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step134HeadF_reserved
  have rowEq : WindowRow.mk (s6Step134HeadFRow.payload++s6Step134HeadFFresh) s6Step134HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 822],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step134HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step134HeadFvBefore : Arena := s6Step134HeadGvAfter

private theorem s6Step134HeadFv_Incoming : rowsOwned s6Step134HeadFvBefore [s6Step134HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step134HeadGRow,s6Step134HeadFRow,s6Step134HeadGvRow,s6Step134HeadFvRow] 3 s6Step134HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step134HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step134HeadFv_Outgoing : rowsOwned s6Step134HeadFvAfter [s6Step134HeadFvOut] :=
  hmrRows_owned_drop s6Step134HeadFvAfter [s6Step134HeadGOut,s6Step134HeadFOut,s6Step134HeadGvOut,s6Step134HeadFvOut] 3 s6Step134HeadBank_outgoingOwned

private theorem s6Step134HeadFv_distinct : (s6Step134HeadFvRow.sign::s6Step134HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step134HeadFv_owned : (s6Step134HeadFvRow.sign::s6Step134HeadFvRow.payload).toFinset⊆s6Step134HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step134HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step134HeadFv_reserved : s6Step134HeadFvBefore.reserve s6Step134HeadFvFresh.toFinset=some s6Step134HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step134HeadFvFresh,arenaWires]
  · norm_num [s6Step134HeadFvBefore,s6Step134HeadGvAfter,s6Step134HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step134HeadFvBefore s6Step134HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step134HeadFvFresh rfl rfl
    · norm_num [s6Step134HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step134HeadFv_checked : planRowResizeLog s6Step134HeadFvBefore s6Step134HeadFvRow 81 s6Step134HeadFvFresh=
    some (s6Step134HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838],776⟩,growRow 776 s6Step134HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step134HeadFvBefore s6Step134HeadFvAfter s6Step134HeadFvRow 81 s6Step134HeadFvFresh
    s6Step134HeadFv_distinct s6Step134HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step134HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step134HeadFvRow.payload++s6Step134HeadFvFresh) s6Step134HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step134HeadG_Incoming : rowsOwned s6Step134HeadGBefore [s6Step134HeadGRow,s6Step134HeadFRow,s6Step134HeadGvRow,s6Step134HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step134HeadGRow,s6Step134HeadFRow,s6Step134HeadGvRow,s6Step134HeadFvRow] 0 s6Step134HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step134HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step134HeadG_Outgoing : rowsOwned s6Step134HeadFvAfter [s6Step134HeadGOut,s6Step134HeadFOut,s6Step134HeadGvOut,s6Step134HeadFvOut] :=
  hmrRows_owned_drop s6Step134HeadFvAfter [s6Step134HeadGOut,s6Step134HeadFOut,s6Step134HeadGvOut,s6Step134HeadFvOut] 0 s6Step134HeadBank_outgoingOwned

private theorem s6Step134HeadG_distinct : (s6Step134HeadGRow.sign::s6Step134HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step134HeadG_owned : (s6Step134HeadGRow.sign::s6Step134HeadGRow.payload).toFinset⊆s6Step134HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step134HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step134HeadG_reserved : s6Step134HeadGBefore.reserve s6Step134HeadGFresh.toFinset=some s6Step134HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step134HeadGFresh,arenaWires]
  · norm_num [s6Step134HeadGBefore,s6Step134HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step134HeadGBefore s6Step134HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step134HeadGFresh rfl rfl
    · norm_num [s6Step134HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step134HeadG_checked : planRowResizeLog s6Step134HeadGBefore s6Step134HeadGRow 203 s6Step134HeadGFresh=
    some (s6Step134HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 869],777⟩,growRow 777 s6Step134HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step134HeadGBefore s6Step134HeadGAfter s6Step134HeadGRow 203 s6Step134HeadGFresh
    s6Step134HeadG_distinct s6Step134HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step134HeadG_reserved
  have rowEq : WindowRow.mk (s6Step134HeadGRow.payload++s6Step134HeadGFresh) s6Step134HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 869],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step134HeadGvBefore : Arena := s6Step134HeadFAfter

private theorem s6Step134HeadGv_Incoming : rowsOwned s6Step134HeadGvBefore [s6Step134HeadGvRow,s6Step134HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step134HeadGRow,s6Step134HeadFRow,s6Step134HeadGvRow,s6Step134HeadFvRow] 2 s6Step134HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step134HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step134HeadGv_Outgoing : rowsOwned s6Step134HeadFvAfter [s6Step134HeadGvOut,s6Step134HeadFvOut] :=
  hmrRows_owned_drop s6Step134HeadFvAfter [s6Step134HeadGOut,s6Step134HeadFOut,s6Step134HeadGvOut,s6Step134HeadFvOut] 2 s6Step134HeadBank_outgoingOwned

private theorem s6Step134HeadGv_distinct : (s6Step134HeadGvRow.sign::s6Step134HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step134HeadGv_owned : (s6Step134HeadGvRow.sign::s6Step134HeadGvRow.payload).toFinset⊆s6Step134HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step134HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step134HeadGv_reserved : s6Step134HeadGvBefore.reserve s6Step134HeadGvFresh.toFinset=some s6Step134HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step134HeadGvFresh,arenaWires]
  · norm_num [s6Step134HeadGvBefore,s6Step134HeadFAfter,s6Step134HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step134HeadGvBefore s6Step134HeadGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step134HeadGvFresh rfl rfl
    · norm_num [s6Step134HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step134HeadGv_checked : planRowResizeLog s6Step134HeadGvBefore s6Step134HeadGvRow 81 s6Step134HeadGvFresh=
    some (s6Step134HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 813],775⟩,growRow 775 s6Step134HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step134HeadGvBefore s6Step134HeadGvAfter s6Step134HeadGvRow 81 s6Step134HeadGvFresh
    s6Step134HeadGv_distinct s6Step134HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step134HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step134HeadGvRow.payload++s6Step134HeadGvFresh) s6Step134HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 813],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step134HeadBank_rows : planWindowRowsLog s6Step134HeadGBefore [(s6Step134HeadGRow,203),(s6Step134HeadFRow,203),(s6Step134HeadGvRow,81),(s6Step134HeadFvRow,81)] [s6Step134HeadGFresh,s6Step134HeadFFresh,s6Step134HeadGvFresh,s6Step134HeadFvFresh]=
    some (s6Step134HeadFvAfter,[s6Step134HeadGOut,s6Step134HeadFOut,s6Step134HeadGvOut,s6Step134HeadFvOut],(growRow 777 s6Step134HeadGFresh ++ (growRow 795 s6Step134HeadFFresh ++ (growRow 775 s6Step134HeadGvFresh ++ (growRow 776 s6Step134HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step134HeadFvAfter [] []=some (s6Step134HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step134HeadFvBefore s6Step134HeadFvAfter s6Step134HeadFvAfter
    s6Step134HeadFvRow s6Step134HeadFvOut 81 s6Step134HeadFvFresh [] [] []
    (growRow 776 s6Step134HeadFvFresh) ([]) s6Step134HeadFv_Incoming s6Step134HeadFv_checked h4 s6Step134HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step134HeadGvBefore s6Step134HeadGvAfter s6Step134HeadFvAfter
    s6Step134HeadGvRow s6Step134HeadGvOut 81 s6Step134HeadGvFresh [(s6Step134HeadFvRow,81)] [s6Step134HeadFvFresh] [s6Step134HeadFvOut]
    (growRow 775 s6Step134HeadGvFresh) ((growRow 776 s6Step134HeadFvFresh ++ [])) s6Step134HeadGv_Incoming s6Step134HeadGv_checked h3 s6Step134HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step134HeadFBefore s6Step134HeadFAfter s6Step134HeadFvAfter
    s6Step134HeadFRow s6Step134HeadFOut 203 s6Step134HeadFFresh [(s6Step134HeadGvRow,81),(s6Step134HeadFvRow,81)] [s6Step134HeadGvFresh,s6Step134HeadFvFresh] [s6Step134HeadGvOut,s6Step134HeadFvOut]
    (growRow 795 s6Step134HeadFFresh) ((growRow 775 s6Step134HeadGvFresh ++ (growRow 776 s6Step134HeadFvFresh ++ []))) s6Step134HeadF_Incoming s6Step134HeadF_checked h2 s6Step134HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step134HeadGBefore s6Step134HeadGAfter s6Step134HeadFvAfter
    s6Step134HeadGRow s6Step134HeadGOut 203 s6Step134HeadGFresh [(s6Step134HeadFRow,203),(s6Step134HeadGvRow,81),(s6Step134HeadFvRow,81)] [s6Step134HeadFFresh,s6Step134HeadGvFresh,s6Step134HeadFvFresh] [s6Step134HeadFOut,s6Step134HeadGvOut,s6Step134HeadFvOut]
    (growRow 777 s6Step134HeadGFresh) ((growRow 795 s6Step134HeadFFresh ++ (growRow 775 s6Step134HeadGvFresh ++ (growRow 776 s6Step134HeadFvFresh ++ [])))) s6Step134HeadG_Incoming s6Step134HeadG_checked h1 s6Step134HeadG_Outgoing
  exact h0

private theorem s6Step134HeadBank_checked : compileHmrBankResizeLog .headroom s6Step134HeadGBefore ⟨s6Step134HeadFRow,s6Step134HeadGRow,s6Step134HeadFvRow,s6Step134HeadGvRow⟩ ⟨203,203,81,81⟩ [s6Step134HeadGFresh,s6Step134HeadFFresh,s6Step134HeadGvFresh,s6Step134HeadFvFresh]=
    some (s6Step134HeadFvAfter,⟨s6Step134HeadFOut,s6Step134HeadGOut,s6Step134HeadFvOut,s6Step134HeadGvOut⟩,(growRow 777 s6Step134HeadGFresh ++ (growRow 795 s6Step134HeadFFresh ++ (growRow 775 s6Step134HeadGvFresh ++ (growRow 776 s6Step134HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step134HeadBank_rows]
  rfl

private theorem s6Step134Front_checked : compileHmrSourceFrontLog s6Step134EntryFBefore s6Step134FrontBank 202 80 ⟨202,201,81,80⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step134FrontLog=some s6Step134FrontPlan := by
  have pairEq : s6Step134FrontPair=⟨s6Step134HeadFRow,s6Step134HeadGRow,s6Step134HeadFvRow,s6Step134HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step134FrontHead=⟨s6Step134ExitFRow,s6Step134ExitGRow,s6Step134ExitFvRow,s6Step134ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step134Add0A=s6Step134FrontHead.f.wires := by decide +kernel
  have gEq : s6Step134Add0B=s6Step134FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step134Add1A=s6Step134FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step134Add1B=s6Step134FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step134EntryFBefore s6Step134FrontBank 202 80 ⟨202,201,81,80⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step134FrontLog s6Step134FrontPlan
  · exact s6Step134Front_entry
  · exact s6Step134EntryBank_checked
  · exact s6Step134Front_sigma
  · rfl
  · exact s6Step134Front_branch
  · rfl
  · simpa only [s6Step134FrontPlan,pairEq] using s6Step134HeadBank_checked
  · simpa only [s6Step134FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step134F4_checked
  · exact s6Step134Counter_checked
  · rfl
  · simpa only [s6Step134FrontPlan,headEq] using s6Step134ExitBank_checked

private theorem s6Step134Complete_explicit_checked : compileHmrEarlyStepLog s6Step134EntryFBefore s6Step134FrontBank 202 80 ⟨202,201,81,80⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step134CompleteLog=some s6Step134CompletePlan := by
  let Q := s6Step134EarlyControlPlan
  have hq := s6Step134EarlyControl_plan_checked
  have fv1 : s6Step134CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step134CompleteOut.fv.payload[2]?.getD s6Step134CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step134CompleteOut.fv.payload[3]?.getD s6Step134CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step134CompleteOut.fv.payload[4]?.getD s6Step134CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step134EntryFBefore s6Step134EarlyControlArena s6Step134FrontBank 202 80 ⟨202,201,81,80⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step134CompleteLog s6Step134FrontPlan Q
    s6Step134Front_checked s6Step134Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step134Complete_owned s6Step134Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step134EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 833 s6Step134CompleteOut.fv.second (s6Step134CompleteOut.fv.payload[2]?.getD s6Step134CompleteOut.fv.sign) (s6Step134CompleteOut.fv.payload[3]?.getD s6Step134CompleteOut.fv.sign) (s6Step134CompleteOut.fv.payload[4]?.getD s6Step134CompleteOut.fv.sign) 843 37 s6Step134EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep134Arena : Arena := s6Step134EntryFBefore
def s6PrivateStep134Bank : WindowBank := s6Step134FrontBank
def s6PrivateStep134Spec : HmrSourceWalkStepLog := ⟨202,80,⟨202,201,81,80⟩,37,.early s6Step134CompleteLog⟩
def s6PrivateStep134Plan : HmrSourceStepPlan := .early s6Step134CompletePlan
theorem s6PrivateStep134_source : s6PrivateStep134Spec=s6ObservedLogs128[6] := rfl
theorem s6PrivateStep134_checked : compileHmrSourceStepLog s6PrivateStep134Arena s6PrivateStep134Bank
    s6PrivateStep134Spec.fgWidth s6PrivateStep134Spec.vWidth s6PrivateStep134Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]
    6 498 134 s6PrivateStep134Spec.need none s6PrivateStep134Spec.log=some s6PrivateStep134Plan := by
  change compileHmrSourceStepLog s6Step134EntryFBefore s6Step134FrontBank 202 80 ⟨202,201,81,80⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 6 498 134 37 none (.early s6Step134CompleteLog)=some (.early s6Step134CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 134<498)]
  rw [s6Step134Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
