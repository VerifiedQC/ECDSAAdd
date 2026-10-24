import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep131
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

private def s6Step133CompleteMoves : List (Wire × Wire) := [(869,458)]

private def s6Step133EarlyControlLog : HmrEarlyControlLog := ⟨[869, 822, 813, 838, 807],[854],[850],[879, 875, 882, 891, 903, 791],[]⟩

private def s6Step133FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [807], [], [839]],[[854], [838], [822], [813]],[[], [], [], []]⟩,[843],[833],[850],[879],[875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[850, 879, 875, 882]⟩

private def s6Step133CompleteLog : HmrEarlyStepLog := ⟨s6Step133FrontLog,s6Step133CompleteMoves,s6Step133EarlyControlLog⟩

private def s6Step133ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457],795⟩

private def s6Step133ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853],776⟩

private def s6Step133ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201],777⟩

private def s6Step133ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839],775⟩

private def s6Step133FrontOut : WindowBank := ⟨s6Step133ExitFOut,s6Step133ExitGOut,s6Step133ExitFvOut,s6Step133ExitGvOut⟩

private def s6Step133CompleteOut : WindowBank := s6Step133FrontOut.repacked s6Step133CompleteMoves

private def s6Step133EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step133EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step133EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step133EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step133EarlyControlPositiveArena,[854],s6Step133EarlyControlEqualityArena,[850],⟨⟨843,false⟩,[⟨⟨854,false⟩,850⟩]⟩⟩

private def s6Step133EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step133EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step133EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step133EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step133EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(844,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step133EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step133EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,869⟩,⟨⟨772,false⟩,822⟩,⟨⟨771,false⟩,813⟩,⟨⟨770,false⟩,838⟩,⟨⟨769,false⟩,807⟩]⟩

private def s6Step133EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step133EarlyControlZeroArena,s6Step133EarlyControlZeroPlan,s6Step133EarlyControlClassPlan,s6Step133EarlyControlFlagArena,s6Step133EarlyControlFittedArena,s6Step133EarlyControlHistoryArena,s6Step133EarlyControlSigmaArena,s6Step133EarlyControlOutputArena,s6Step133EarlyControlLog⟩

private def s6Step133CounterWork : List Wire := [850, 879, 875, 882]

private theorem s6Step133Counter_bounded : s6Step133CounterWork.toFinset⊆arenaWires := by norm_num [s6Step133CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step133HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step133CounterDuring : Arena := ⟨s6Step133HeadFvAfter.live∪s6Step133CounterWork.toFinset,Finset.union_subset s6Step133HeadFvAfter.bounded s6Step133Counter_bounded⟩

private def s6Step133EntryFFresh : List Wire := []

private def s6Step133EntryFvFresh : List Wire := []

private def s6Step133EntryGFresh : List Wire := [807]

private def s6Step133EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step133EntryGvFresh : List Wire := [839]

private def s6Step133ExitFExtra : List Wire := [458, 838]

private def s6Step133ExitFvExtra : List Wire := [813]

private def s6Step133ExitGExtra : List Wire := [807, 854]

private def s6Step133ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,458),(459,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step133ExitGvExtra : List Wire := [822]

private def s6Step133Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step133Add0Work : List Wire := [875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step133Add0_bounded : s6Step133Add0Work.toFinset⊆arenaWires := by
  have h : s6Step133Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step133Add0During : Arena := ⟨s6Step133Add0Arena.live∪s6Step133Add0Work.toFinset,Finset.union_subset s6Step133Add0Arena.bounded s6Step133Add0_bounded⟩

private def s6Step133Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step133Add1Work : List Wire := [875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step133Add1_bounded : s6Step133Add1Work.toFinset⊆arenaWires := by
  have h : s6Step133Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step133Add1During : Arena := ⟨s6Step133Add1Arena.live∪s6Step133Add1Work.toFinset,Finset.union_subset s6Step133Add1Arena.bounded s6Step133Add1_bounded⟩

private def s6Step133F4FlagArena : Arena := ⟨s6Step133HeadFvAfter.live∪{850},Finset.union_subset s6Step133HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step133F4Plan : HmrHybridF4Plan := ⟨s6Step133F4FlagArena,[850],s6Step133Add0Arena,[879],s6Step133Add0During,s6Step133Add0Work,s6Step133Add1During,s6Step133Add1Work⟩

private def s6Step133HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 838],795⟩

private def s6Step133HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 813],776⟩

private def s6Step133HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 807, 854],777⟩

private def s6Step133HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 822],775⟩

private def s6Step133FrontHead : WindowBank := ⟨s6Step133HeadFOut,s6Step133HeadGOut,s6Step133HeadFvOut,s6Step133HeadGvOut⟩

private def s6Step133EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458],795⟩

private def s6Step133EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853],776⟩

private def s6Step133EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 807],777⟩

private def s6Step133EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839],775⟩

private def s6Step133FrontPair : WindowBank := ⟨s6Step133EntryFOut,s6Step133EntryGOut,s6Step133EntryFvOut,s6Step133EntryGvOut⟩

private def s6Step133FrontSigmaArena : Arena := ⟨s6Step133EntryGvAfter.live∪{843},Finset.union_subset s6Step133EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step133HeadFFresh : List Wire := [838]

private def s6Step133HeadFvFresh : List Wire := [813]

private def s6Step133HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step133HeadGFresh : List Wire := [854]

private def s6Step133HeadGvFresh : List Wire := [822]

private def s6Step133FrontPlan : HmrSourceFront := ⟨s6Step133EntryGvAfter,s6Step133FrontPair,(growRow 795 s6Step133EntryFFresh ++ (growRow 777 s6Step133EntryGFresh ++ (growRow 776 s6Step133EntryFvFresh ++ (growRow 775 s6Step133EntryGvFresh ++ [])))),s6Step133FrontSigmaArena,[843],s6Step133HeadGBefore,[833],
  s6Step133HeadFvAfter,s6Step133FrontHead,(growRow 777 s6Step133HeadGFresh ++ (growRow 795 s6Step133HeadFFresh ++ (growRow 775 s6Step133HeadGvFresh ++ (growRow 776 s6Step133HeadFvFresh ++ [])))),s6Step133F4Plan,s6Step133CounterDuring,s6Step133CounterWork,s6Step133ExitGvAfter,s6Step133FrontOut,(shrinkRow 777 s6Step133ExitGExtra ++ (shrinkRow 795 s6Step133ExitFExtra ++ (shrinkRow 776 s6Step133ExitFvExtra ++ (shrinkRow 775 s6Step133ExitGvExtra ++ []))))⟩

private def s6Step133CompletePlan : HmrEarlyStepPlan := ⟨s6Step133FrontPlan,s6Step133EarlyControlArena,s6Step133EarlyControlPlan,s6Step133CompleteMoves⟩

private theorem s6Step133Complete_apart : List.Disjoint (s6Step133CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [843, 833, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] := by
  have nd : ((s6Step133CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[843, 833, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step133Complete_owned : (s6Step133CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step133EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step133EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step133CompleteRelocationMove0Borrowed : Arena := ⟨s6Step133ExitGvAfter.live∪{458},Finset.union_subset s6Step133ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step133CompleteRelocation_move0_owned : 869∈s6Step133ExitGvAfter.live := by norm_num [s6Step133ExitGvAfter,arenaWires]

private theorem s6Step133CompleteRelocation_move0_reserve : s6Step133ExitGvAfter.reserve {458}=some s6Step133CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step133ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step133CompleteRelocation_move0_retire : s6Step133CompleteRelocationMove0Borrowed.retireSet {869}=s6Step133EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step133CompleteRelocationMove0Borrowed s6Step133EarlyControlArena {869}
  change s6Step133EarlyControlArena.live=(s6Step133ExitGvAfter.live∪{458})\{869}
  apply hmrArena_update_of_filter_check s6Step133ExitGvAfter s6Step133EarlyControlArena (fun q => ([(0,458),(459,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [458] [869] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step133CompleteRelocation_checked : s6Step133ExitGvAfter.checkRepack [(869,458)]=some s6Step133EarlyControlArena := by
  have tail1 : s6Step133EarlyControlArena.checkRepack []=some s6Step133EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step133ExitGvAfter s6Step133CompleteRelocationMove0Borrowed s6Step133EarlyControlArena s6Step133EarlyControlArena 869 458 []
    s6Step133CompleteRelocation_move0_owned s6Step133CompleteRelocation_move0_reserve s6Step133CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step133Complete_repack : s6Step133ExitGvAfter.checkRepack s6Step133CompleteMoves=some s6Step133EarlyControlArena := by
  simpa only [s6Step133CompleteMoves] using s6Step133CompleteRelocation_checked

private theorem s6Step133EarlyControl_branchOwned : ([833] : List Wire).toFinset⊆s6Step133EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step133EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(844,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step133EarlyControl_branch : compileHmrBranchRetirement s6Step133EarlyControlSigmaArena 833=some s6Step133EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step133EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step133EarlyControlSigmaArena s6Step133EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(844,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [833] rfl rfl
    decide +kernel

private theorem s6Step133EarlyControl_classEqualityBorrow : s6Step133EarlyControlPositiveArena.checkBorrow (([843, 854] : List Wire).length-1) s6Step133EarlyControlLog.classWork=some s6Step133EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step133EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step133EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step133EarlyControlEqualityArena,s6Step133EarlyControlPositiveArena,s6Step133EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step133EarlyControl_classEqualityOwned : ([843, 854] : List Wire).toFinset⊆s6Step133EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step133EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step133EarlyControl_classEquality : compileHmrEqualityLog s6Step133EarlyControlPositiveArena [843, 854] 0 s6Step133EarlyControlLog.classWork=some (s6Step133EarlyControlEqualityArena,s6Step133EarlyControlLog.classWork,s6Step133EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step133EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step133EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step133EarlyControl_classOwned : ([769, 807, 843] : List Wire).toFinset⊆s6Step133EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step133EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step133EarlyControl_positiveBorrow : s6Step133EarlyControlZeroArena.checkBorrow (1) s6Step133EarlyControlLog.positiveWork=some s6Step133EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step133EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step133EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step133EarlyControlZeroArena s6Step133EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step133EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step133EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step133EarlyControl_class : compileHmrSourceClassLog s6Step133EarlyControlZeroArena false 769 s6Step133EarlyControlZeroPlan.top 0 843 s6Step133EarlyControlLog.positiveWork s6Step133EarlyControlLog.classWork=some s6Step133EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step133EarlyControlClassPlan s6Step133EarlyControlZeroArena false 769 s6Step133EarlyControlZeroPlan.top 0 843
  constructor
  · decide +kernel
  · exact s6Step133EarlyControl_classOwned
  · exact s6Step133EarlyControl_positiveBorrow
  · exact s6Step133EarlyControl_classEquality

private theorem s6Step133EarlyControl_entryRecordOwned : ([833, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step133EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step133EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step133EarlyControl_entrySigmaOwned : ([843, 254] : List Wire).toFinset⊆s6Step133EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step133EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step133EarlyControl_fitBorrow : s6Step133EarlyControlFlagArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step133EarlyControlLog.recordFresh=some s6Step133EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step133EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step133EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step133EarlyControlFittedArena,s6Step133EarlyControlFlagArena,s6Step133EarlyControlLog,arenaWires]

private theorem s6Step133EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step133EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step133EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step133EarlyControl_fit : compileHmrRecordGrowLog s6Step133EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step133EarlyControlLog.recordFresh=some s6Step133EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step133EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step133EarlyControl_fitBorrow

private theorem s6Step133EarlyControl_flagsBorrow : s6Step133EarlyControlEqualityArena.checkBorrow (6) s6Step133EarlyControlLog.flagWork=some s6Step133EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step133EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step133EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step133EarlyControlFlagArena,s6Step133EarlyControlEqualityArena,s6Step133EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step133EarlyControl_flagsOwned : ([850, 253, 252, 251] : List Wire).toFinset⊆s6Step133EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step133EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step133EarlyControl_flags : compileHmrFlagsLog s6Step133EarlyControlClassPlan.equalityArena s6Step133EarlyControlClassPlan.equality.top 253 252 251 s6Step133EarlyControlLog.flagWork=some s6Step133EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step133EarlyControl_flagsOwned⟩
  · exact s6Step133EarlyControl_flagsBorrow

private theorem s6Step133EarlyControl_historyBorrow : s6Step133EarlyControlArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step133EarlyControlLog.recordFresh=some s6Step133EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step133EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step133EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step133EarlyControlArena s6Step133EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step133EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step133EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step133EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step133EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step133EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step133EarlyControl_history : compileHmrRecordGrowLog s6Step133EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step133EarlyControlLog.recordFresh=some s6Step133EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step133EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step133EarlyControl_historyBorrow

private theorem s6Step133EarlyControl_sigmaOwned : ([254, 843] : List Wire).toFinset⊆s6Step133EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step133EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step133EarlyControl_sigmaReleaseOwned : ([843] : List Wire).toFinset⊆s6Step133EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step133EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step133EarlyControl_sigmaRelease : s6Step133EarlyControlHistoryArena.release {843} (fun _ => false)=some s6Step133EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step133EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step133EarlyControlHistoryArena s6Step133EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(844,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [843] rfl rfl
    decide +kernel

private theorem s6Step133EarlyControl_sigma : compileHmrSigmaDropLog s6Step133EarlyControlHistoryArena false 0 0 254 843 []=some s6Step133EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step133EarlyControl_sigmaOwned⟩
  · exact s6Step133EarlyControl_sigmaRelease

private theorem s6Step133EarlyControl_zeroBorrow : s6Step133EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step133EarlyControlLog.zeroWork=some s6Step133EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step133EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step133EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step133EarlyControlArena s6Step133EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step133EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step133EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step133EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step133EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step133EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step133EarlyControl_zero : compileHmrEqualityLog s6Step133EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step133EarlyControlLog.zeroWork=some (s6Step133EarlyControlZeroArena,s6Step133EarlyControlLog.zeroWork,s6Step133EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step133EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step133EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step133EarlyControl_logged : s6Step133EarlyControlPlan.Logged s6Step133EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 843 254 253 252 251 833 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step133EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step133EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step133EarlyControl_zero
  · exact s6Step133EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step133EarlyControl_flags
  · exact s6Step133EarlyControl_fit
  · exact s6Step133EarlyControl_history
  · exact s6Step133EarlyControl_sigma
  · exact s6Step133EarlyControl_branch

private theorem s6Step133EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step133EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 843 254 253 252 251 833 37 s6Step133EarlyControlLog=some s6Step133EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step133EarlyControlPlan s6Step133EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 843 254 253 252 251 833 37 s6Step133EarlyControl_logged

private def s6Step133EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step133EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458],795⟩

private def s6Step133EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853],776⟩

private def s6Step133EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201],777⟩

private def s6Step133EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898],775⟩

private def s6Step133FrontBank : WindowBank := ⟨s6Step133EntryFRow,s6Step133EntryGRow,s6Step133EntryFvRow,s6Step133EntryGvRow⟩

private def s6Step133Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 838, 795]

private def s6Step133Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 807, 854, 777]

private def s6Step133Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 813, 776]

private def s6Step133Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 822, 775]

private theorem s6Step133Counter_apart : Disjoint s6Step133HeadFvAfter.live s6Step133CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step133HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step133Counter_borrowed : s6Step133HeadFvAfter.checkBorrow 4 s6Step133CounterWork=some s6Step133CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step133HeadFvAfter s6Step133CounterDuring s6Step133CounterWork.toFinset s6Step133Counter_bounded s6Step133Counter_apart rfl

private theorem s6Step133Counter_owned : (843::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step133HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step133HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step133Counter_checked : compileHmrCounterStepLog s6Step133HeadFvAfter true 843 [774, 773, 772, 771, 770, 769] s6Step133CounterWork=some s6Step133CounterDuring := by
  have owned : ∀q∈843::[774, 773, 772, 771, 770, 769],q∈s6Step133HeadFvAfter.live := fun q hq => s6Step133Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step133Counter_borrowed

private def s6Step133EntryFAfter : Arena := s6Step133EntryFBefore

private theorem s6Step133EntryBank_incomingDistinct : ([s6Step133EntryFRow,s6Step133EntryGRow,s6Step133EntryFvRow,s6Step133EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step133EntryF_Incoming : rowsOwned s6Step133EntryFBefore [s6Step133EntryFRow,s6Step133EntryGRow,s6Step133EntryFvRow,s6Step133EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step133EntryFRow,s6Step133EntryGRow,s6Step133EntryFvRow,s6Step133EntryGvRow] 0 s6Step133EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step133EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step133EntryBank_outgoingOwned : rowsOwned s6Step133EntryGvAfter [s6Step133EntryFOut,s6Step133EntryGOut,s6Step133EntryFvOut,s6Step133EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step133EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step133EntryF_Outgoing : rowsOwned s6Step133EntryGvAfter [s6Step133EntryFOut,s6Step133EntryGOut,s6Step133EntryFvOut,s6Step133EntryGvOut] :=
  hmrRows_owned_drop s6Step133EntryGvAfter [s6Step133EntryFOut,s6Step133EntryGOut,s6Step133EntryFvOut,s6Step133EntryGvOut] 0 s6Step133EntryBank_outgoingOwned

private theorem s6Step133EntryF_distinct : (s6Step133EntryFRow.sign::s6Step133EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step133EntryF_owned : (s6Step133EntryFRow.sign::s6Step133EntryFRow.payload).toFinset⊆s6Step133EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step133EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step133EntryF_reserved : s6Step133EntryFBefore.reserve s6Step133EntryFFresh.toFinset=some s6Step133EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step133EntryFFresh,arenaWires]
  · norm_num [s6Step133EntryFBefore,s6Step133EntryFFresh,arenaWires]
  · simp only [s6Step133EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step133EntryF_checked : planRowResizeLog s6Step133EntryFBefore s6Step133EntryFRow 203 s6Step133EntryFFresh=
    some (s6Step133EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458],795⟩,growRow 795 s6Step133EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step133EntryFBefore s6Step133EntryFAfter s6Step133EntryFRow 203 s6Step133EntryFFresh
    s6Step133EntryF_distinct s6Step133EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step133EntryF_reserved
  have rowEq : WindowRow.mk (s6Step133EntryFRow.payload++s6Step133EntryFFresh) s6Step133EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step133EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step133EntryFvAfter : Arena := s6Step133EntryGAfter

private def s6Step133EntryFvBefore : Arena := s6Step133EntryGAfter

private theorem s6Step133EntryFv_Incoming : rowsOwned s6Step133EntryFvBefore [s6Step133EntryFvRow,s6Step133EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step133EntryFRow,s6Step133EntryGRow,s6Step133EntryFvRow,s6Step133EntryGvRow] 2 s6Step133EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step133EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step133EntryFv_Outgoing : rowsOwned s6Step133EntryGvAfter [s6Step133EntryFvOut,s6Step133EntryGvOut] :=
  hmrRows_owned_drop s6Step133EntryGvAfter [s6Step133EntryFOut,s6Step133EntryGOut,s6Step133EntryFvOut,s6Step133EntryGvOut] 2 s6Step133EntryBank_outgoingOwned

private theorem s6Step133EntryFv_distinct : (s6Step133EntryFvRow.sign::s6Step133EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step133EntryFv_owned : (s6Step133EntryFvRow.sign::s6Step133EntryFvRow.payload).toFinset⊆s6Step133EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step133EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step133EntryFv_reserved : s6Step133EntryFvBefore.reserve s6Step133EntryFvFresh.toFinset=some s6Step133EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step133EntryFvFresh,arenaWires]
  · norm_num [s6Step133EntryFvBefore,s6Step133EntryGAfter,s6Step133EntryFvFresh,arenaWires]
  · simp only [s6Step133EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step133EntryFv_checked : planRowResizeLog s6Step133EntryFvBefore s6Step133EntryFvRow 80 s6Step133EntryFvFresh=
    some (s6Step133EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853],776⟩,growRow 776 s6Step133EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step133EntryFvBefore s6Step133EntryFvAfter s6Step133EntryFvRow 80 s6Step133EntryFvFresh
    s6Step133EntryFv_distinct s6Step133EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step133EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step133EntryFvRow.payload++s6Step133EntryFvFresh) s6Step133EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step133EntryGBefore : Arena := s6Step133EntryFBefore

private theorem s6Step133EntryG_Incoming : rowsOwned s6Step133EntryGBefore [s6Step133EntryGRow,s6Step133EntryFvRow,s6Step133EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step133EntryFRow,s6Step133EntryGRow,s6Step133EntryFvRow,s6Step133EntryGvRow] 1 s6Step133EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step133EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step133EntryG_Outgoing : rowsOwned s6Step133EntryGvAfter [s6Step133EntryGOut,s6Step133EntryFvOut,s6Step133EntryGvOut] :=
  hmrRows_owned_drop s6Step133EntryGvAfter [s6Step133EntryFOut,s6Step133EntryGOut,s6Step133EntryFvOut,s6Step133EntryGvOut] 1 s6Step133EntryBank_outgoingOwned

private theorem s6Step133EntryG_distinct : (s6Step133EntryGRow.sign::s6Step133EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step133EntryG_owned : (s6Step133EntryGRow.sign::s6Step133EntryGRow.payload).toFinset⊆s6Step133EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step133EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step133EntryG_reserved : s6Step133EntryGBefore.reserve s6Step133EntryGFresh.toFinset=some s6Step133EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step133EntryGFresh,arenaWires]
  · norm_num [s6Step133EntryGBefore,s6Step133EntryFBefore,s6Step133EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step133EntryGBefore s6Step133EntryGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step133EntryGFresh rfl rfl
    · norm_num [s6Step133EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step133EntryG_checked : planRowResizeLog s6Step133EntryGBefore s6Step133EntryGRow 203 s6Step133EntryGFresh=
    some (s6Step133EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 807],777⟩,growRow 777 s6Step133EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step133EntryGBefore s6Step133EntryGAfter s6Step133EntryGRow 203 s6Step133EntryGFresh
    s6Step133EntryG_distinct s6Step133EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step133EntryG_reserved
  have rowEq : WindowRow.mk (s6Step133EntryGRow.payload++s6Step133EntryGFresh) s6Step133EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 807],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step133EntryGvBefore : Arena := s6Step133EntryGAfter

private theorem s6Step133EntryGv_Incoming : rowsOwned s6Step133EntryGvBefore [s6Step133EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step133EntryFRow,s6Step133EntryGRow,s6Step133EntryFvRow,s6Step133EntryGvRow] 3 s6Step133EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step133EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step133EntryGv_Outgoing : rowsOwned s6Step133EntryGvAfter [s6Step133EntryGvOut] :=
  hmrRows_owned_drop s6Step133EntryGvAfter [s6Step133EntryFOut,s6Step133EntryGOut,s6Step133EntryFvOut,s6Step133EntryGvOut] 3 s6Step133EntryBank_outgoingOwned

private theorem s6Step133EntryGv_distinct : (s6Step133EntryGvRow.sign::s6Step133EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step133EntryGv_owned : (s6Step133EntryGvRow.sign::s6Step133EntryGvRow.payload).toFinset⊆s6Step133EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step133EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step133EntryGv_reserved : s6Step133EntryGvBefore.reserve s6Step133EntryGvFresh.toFinset=some s6Step133EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step133EntryGvFresh,arenaWires]
  · norm_num [s6Step133EntryGvBefore,s6Step133EntryGAfter,s6Step133EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step133EntryGvBefore s6Step133EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step133EntryGvFresh rfl rfl
    · norm_num [s6Step133EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step133EntryGv_checked : planRowResizeLog s6Step133EntryGvBefore s6Step133EntryGvRow 80 s6Step133EntryGvFresh=
    some (s6Step133EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839],775⟩,growRow 775 s6Step133EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step133EntryGvBefore s6Step133EntryGvAfter s6Step133EntryGvRow 80 s6Step133EntryGvFresh
    s6Step133EntryGv_distinct s6Step133EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step133EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step133EntryGvRow.payload++s6Step133EntryGvFresh) s6Step133EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step133EntryBank_rows : planWindowRowsLog s6Step133EntryFBefore [(s6Step133EntryFRow,203),(s6Step133EntryGRow,203),(s6Step133EntryFvRow,80),(s6Step133EntryGvRow,80)] [s6Step133EntryFFresh,s6Step133EntryGFresh,s6Step133EntryFvFresh,s6Step133EntryGvFresh]=
    some (s6Step133EntryGvAfter,[s6Step133EntryFOut,s6Step133EntryGOut,s6Step133EntryFvOut,s6Step133EntryGvOut],(growRow 795 s6Step133EntryFFresh ++ (growRow 777 s6Step133EntryGFresh ++ (growRow 776 s6Step133EntryFvFresh ++ (growRow 775 s6Step133EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step133EntryGvAfter [] []=some (s6Step133EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step133EntryGvBefore s6Step133EntryGvAfter s6Step133EntryGvAfter
    s6Step133EntryGvRow s6Step133EntryGvOut 80 s6Step133EntryGvFresh [] [] []
    (growRow 775 s6Step133EntryGvFresh) ([]) s6Step133EntryGv_Incoming s6Step133EntryGv_checked h4 s6Step133EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step133EntryFvBefore s6Step133EntryFvAfter s6Step133EntryGvAfter
    s6Step133EntryFvRow s6Step133EntryFvOut 80 s6Step133EntryFvFresh [(s6Step133EntryGvRow,80)] [s6Step133EntryGvFresh] [s6Step133EntryGvOut]
    (growRow 776 s6Step133EntryFvFresh) ((growRow 775 s6Step133EntryGvFresh ++ [])) s6Step133EntryFv_Incoming s6Step133EntryFv_checked h3 s6Step133EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step133EntryGBefore s6Step133EntryGAfter s6Step133EntryGvAfter
    s6Step133EntryGRow s6Step133EntryGOut 203 s6Step133EntryGFresh [(s6Step133EntryFvRow,80),(s6Step133EntryGvRow,80)] [s6Step133EntryFvFresh,s6Step133EntryGvFresh] [s6Step133EntryFvOut,s6Step133EntryGvOut]
    (growRow 777 s6Step133EntryGFresh) ((growRow 776 s6Step133EntryFvFresh ++ (growRow 775 s6Step133EntryGvFresh ++ []))) s6Step133EntryG_Incoming s6Step133EntryG_checked h2 s6Step133EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step133EntryFBefore s6Step133EntryFAfter s6Step133EntryGvAfter
    s6Step133EntryFRow s6Step133EntryFOut 203 s6Step133EntryFFresh [(s6Step133EntryGRow,203),(s6Step133EntryFvRow,80),(s6Step133EntryGvRow,80)] [s6Step133EntryGFresh,s6Step133EntryFvFresh,s6Step133EntryGvFresh] [s6Step133EntryGOut,s6Step133EntryFvOut,s6Step133EntryGvOut]
    (growRow 795 s6Step133EntryFFresh) ((growRow 777 s6Step133EntryGFresh ++ (growRow 776 s6Step133EntryFvFresh ++ (growRow 775 s6Step133EntryGvFresh ++ [])))) s6Step133EntryF_Incoming s6Step133EntryF_checked h1 s6Step133EntryF_Outgoing
  exact h0

private theorem s6Step133EntryBank_checked : compileHmrBankResizeLog .entry s6Step133EntryFBefore ⟨s6Step133EntryFRow,s6Step133EntryGRow,s6Step133EntryFvRow,s6Step133EntryGvRow⟩ ⟨203,203,80,80⟩ [s6Step133EntryFFresh,s6Step133EntryGFresh,s6Step133EntryFvFresh,s6Step133EntryGvFresh]=
    some (s6Step133EntryGvAfter,⟨s6Step133EntryFOut,s6Step133EntryGOut,s6Step133EntryFvOut,s6Step133EntryGvOut⟩,(growRow 795 s6Step133EntryFFresh ++ (growRow 777 s6Step133EntryGFresh ++ (growRow 776 s6Step133EntryFvFresh ++ (growRow 775 s6Step133EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step133EntryBank_rows]
  rfl

private def s6Step133ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,458),(459,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step133ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step133ExitFBefore : Arena := s6Step133ExitGAfter

private def s6Step133ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 838],795⟩

private def s6Step133ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 813],776⟩

private def s6Step133ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 807, 854],777⟩

private def s6Step133ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 822],775⟩

private theorem s6Step133ExitBank_incomingDistinct : ([s6Step133ExitGRow,s6Step133ExitFRow,s6Step133ExitFvRow,s6Step133ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step133ExitF_Incoming : rowsOwned s6Step133ExitFBefore [s6Step133ExitFRow,s6Step133ExitFvRow,s6Step133ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step133ExitGRow,s6Step133ExitFRow,s6Step133ExitFvRow,s6Step133ExitGvRow] 1 s6Step133ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step133ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step133ExitBank_outgoingOwned : rowsOwned s6Step133ExitGvAfter [s6Step133ExitGOut,s6Step133ExitFOut,s6Step133ExitFvOut,s6Step133ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step133ExitGvAfter (fun q => ([(0,458),(459,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step133ExitF_Outgoing : rowsOwned s6Step133ExitGvAfter [s6Step133ExitFOut,s6Step133ExitFvOut,s6Step133ExitGvOut] :=
  hmrRows_owned_drop s6Step133ExitGvAfter [s6Step133ExitGOut,s6Step133ExitFOut,s6Step133ExitFvOut,s6Step133ExitGvOut] 1 s6Step133ExitBank_outgoingOwned

private theorem s6Step133ExitF_distinct : (s6Step133ExitFRow.sign::s6Step133ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step133ExitF_owned : (s6Step133ExitFRow.sign::s6Step133ExitFRow.payload).toFinset⊆s6Step133ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step133ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step133ExitF_retired : s6Step133ExitFBefore.retireSet s6Step133ExitFExtra.toFinset=s6Step133ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step133ExitFBefore s6Step133ExitFAfter s6Step133ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step133ExitFBefore s6Step133ExitFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,458),(459,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step133ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step133ExitF_checked : planRowResizeLog s6Step133ExitFBefore s6Step133ExitFRow 202 []=
    some (s6Step133ExitFAfter,s6Step133ExitFOut,shrinkRow 795 s6Step133ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step133ExitFBefore s6Step133ExitFRow 202 s6Step133ExitF_distinct s6Step133ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step133ExitFRow.payload.take 202) s6Step133ExitFRow.sign=s6Step133ExitFOut := by decide +kernel
  have hi : s6Step133ExitFRow.payload.drop 202=s6Step133ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step133ExitF_retired] at result
  exact result

private def s6Step133ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,458),(459,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step133ExitFvBefore : Arena := s6Step133ExitFAfter

private theorem s6Step133ExitFv_Incoming : rowsOwned s6Step133ExitFvBefore [s6Step133ExitFvRow,s6Step133ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step133ExitGRow,s6Step133ExitFRow,s6Step133ExitFvRow,s6Step133ExitGvRow] 2 s6Step133ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step133ExitFvBefore (fun q => ([(0,458),(459,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step133ExitFv_Outgoing : rowsOwned s6Step133ExitGvAfter [s6Step133ExitFvOut,s6Step133ExitGvOut] :=
  hmrRows_owned_drop s6Step133ExitGvAfter [s6Step133ExitGOut,s6Step133ExitFOut,s6Step133ExitFvOut,s6Step133ExitGvOut] 2 s6Step133ExitBank_outgoingOwned

private theorem s6Step133ExitFv_distinct : (s6Step133ExitFvRow.sign::s6Step133ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step133ExitFv_owned : (s6Step133ExitFvRow.sign::s6Step133ExitFvRow.payload).toFinset⊆s6Step133ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step133ExitFvBefore (fun q => ([(0,458),(459,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step133ExitFv_retired : s6Step133ExitFvBefore.retireSet s6Step133ExitFvExtra.toFinset=s6Step133ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step133ExitFvBefore s6Step133ExitFvAfter s6Step133ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step133ExitFvBefore s6Step133ExitFvAfter (fun q => ([(0,458),(459,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,458),(459,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step133ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step133ExitFv_checked : planRowResizeLog s6Step133ExitFvBefore s6Step133ExitFvRow 80 []=
    some (s6Step133ExitFvAfter,s6Step133ExitFvOut,shrinkRow 776 s6Step133ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step133ExitFvBefore s6Step133ExitFvRow 80 s6Step133ExitFv_distinct s6Step133ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step133ExitFvRow.payload.take 80) s6Step133ExitFvRow.sign=s6Step133ExitFvOut := by decide +kernel
  have hi : s6Step133ExitFvRow.payload.drop 80=s6Step133ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step133ExitFv_retired] at result
  exact result

private def s6Step133ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step133ExitG_Incoming : rowsOwned s6Step133ExitGBefore [s6Step133ExitGRow,s6Step133ExitFRow,s6Step133ExitFvRow,s6Step133ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step133ExitGRow,s6Step133ExitFRow,s6Step133ExitFvRow,s6Step133ExitGvRow] 0 s6Step133ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step133ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step133ExitG_Outgoing : rowsOwned s6Step133ExitGvAfter [s6Step133ExitGOut,s6Step133ExitFOut,s6Step133ExitFvOut,s6Step133ExitGvOut] :=
  hmrRows_owned_drop s6Step133ExitGvAfter [s6Step133ExitGOut,s6Step133ExitFOut,s6Step133ExitFvOut,s6Step133ExitGvOut] 0 s6Step133ExitBank_outgoingOwned

private theorem s6Step133ExitG_distinct : (s6Step133ExitGRow.sign::s6Step133ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step133ExitG_owned : (s6Step133ExitGRow.sign::s6Step133ExitGRow.payload).toFinset⊆s6Step133ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step133ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step133ExitG_retired : s6Step133ExitGBefore.retireSet s6Step133ExitGExtra.toFinset=s6Step133ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step133ExitGBefore s6Step133ExitGAfter s6Step133ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step133ExitGBefore s6Step133ExitGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step133ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step133ExitG_checked : planRowResizeLog s6Step133ExitGBefore s6Step133ExitGRow 202 []=
    some (s6Step133ExitGAfter,s6Step133ExitGOut,shrinkRow 777 s6Step133ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step133ExitGBefore s6Step133ExitGRow 202 s6Step133ExitG_distinct s6Step133ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step133ExitGRow.payload.take 202) s6Step133ExitGRow.sign=s6Step133ExitGOut := by decide +kernel
  have hi : s6Step133ExitGRow.payload.drop 202=s6Step133ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step133ExitG_retired] at result
  exact result

private def s6Step133ExitGvBefore : Arena := s6Step133ExitFvAfter

private theorem s6Step133ExitGv_Incoming : rowsOwned s6Step133ExitGvBefore [s6Step133ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step133ExitGRow,s6Step133ExitFRow,s6Step133ExitFvRow,s6Step133ExitGvRow] 3 s6Step133ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step133ExitGvBefore (fun q => ([(0,458),(459,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step133ExitGv_Outgoing : rowsOwned s6Step133ExitGvAfter [s6Step133ExitGvOut] :=
  hmrRows_owned_drop s6Step133ExitGvAfter [s6Step133ExitGOut,s6Step133ExitFOut,s6Step133ExitFvOut,s6Step133ExitGvOut] 3 s6Step133ExitBank_outgoingOwned

private theorem s6Step133ExitGv_distinct : (s6Step133ExitGvRow.sign::s6Step133ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step133ExitGv_owned : (s6Step133ExitGvRow.sign::s6Step133ExitGvRow.payload).toFinset⊆s6Step133ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step133ExitGvBefore (fun q => ([(0,458),(459,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step133ExitGv_retired : s6Step133ExitGvBefore.retireSet s6Step133ExitGvExtra.toFinset=s6Step133ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step133ExitGvBefore s6Step133ExitGvAfter s6Step133ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step133ExitGvBefore s6Step133ExitGvAfter (fun q => ([(0,458),(459,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,458),(459,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step133ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step133ExitGv_checked : planRowResizeLog s6Step133ExitGvBefore s6Step133ExitGvRow 80 []=
    some (s6Step133ExitGvAfter,s6Step133ExitGvOut,shrinkRow 775 s6Step133ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step133ExitGvBefore s6Step133ExitGvRow 80 s6Step133ExitGv_distinct s6Step133ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step133ExitGvRow.payload.take 80) s6Step133ExitGvRow.sign=s6Step133ExitGvOut := by decide +kernel
  have hi : s6Step133ExitGvRow.payload.drop 80=s6Step133ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step133ExitGv_retired] at result
  exact result

private theorem s6Step133ExitBank_rows : planWindowRowsLog s6Step133ExitGBefore [(s6Step133ExitGRow,202),(s6Step133ExitFRow,202),(s6Step133ExitFvRow,80),(s6Step133ExitGvRow,80)] [[],[],[],[]]=
    some (s6Step133ExitGvAfter,[s6Step133ExitGOut,s6Step133ExitFOut,s6Step133ExitFvOut,s6Step133ExitGvOut],(shrinkRow 777 s6Step133ExitGExtra ++ (shrinkRow 795 s6Step133ExitFExtra ++ (shrinkRow 776 s6Step133ExitFvExtra ++ (shrinkRow 775 s6Step133ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step133ExitGvAfter [] []=some (s6Step133ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step133ExitGvBefore s6Step133ExitGvAfter s6Step133ExitGvAfter
    s6Step133ExitGvRow s6Step133ExitGvOut 80 [] [] [] []
    (shrinkRow 775 s6Step133ExitGvExtra) ([]) s6Step133ExitGv_Incoming s6Step133ExitGv_checked h4 s6Step133ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step133ExitFvBefore s6Step133ExitFvAfter s6Step133ExitGvAfter
    s6Step133ExitFvRow s6Step133ExitFvOut 80 [] [(s6Step133ExitGvRow,80)] [[]] [s6Step133ExitGvOut]
    (shrinkRow 776 s6Step133ExitFvExtra) ((shrinkRow 775 s6Step133ExitGvExtra ++ [])) s6Step133ExitFv_Incoming s6Step133ExitFv_checked h3 s6Step133ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step133ExitFBefore s6Step133ExitFAfter s6Step133ExitGvAfter
    s6Step133ExitFRow s6Step133ExitFOut 202 [] [(s6Step133ExitFvRow,80),(s6Step133ExitGvRow,80)] [[],[]] [s6Step133ExitFvOut,s6Step133ExitGvOut]
    (shrinkRow 795 s6Step133ExitFExtra) ((shrinkRow 776 s6Step133ExitFvExtra ++ (shrinkRow 775 s6Step133ExitGvExtra ++ []))) s6Step133ExitF_Incoming s6Step133ExitF_checked h2 s6Step133ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step133ExitGBefore s6Step133ExitGAfter s6Step133ExitGvAfter
    s6Step133ExitGRow s6Step133ExitGOut 202 [] [(s6Step133ExitFRow,202),(s6Step133ExitFvRow,80),(s6Step133ExitGvRow,80)] [[],[],[]] [s6Step133ExitFOut,s6Step133ExitFvOut,s6Step133ExitGvOut]
    (shrinkRow 777 s6Step133ExitGExtra) ((shrinkRow 795 s6Step133ExitFExtra ++ (shrinkRow 776 s6Step133ExitFvExtra ++ (shrinkRow 775 s6Step133ExitGvExtra ++ [])))) s6Step133ExitG_Incoming s6Step133ExitG_checked h1 s6Step133ExitG_Outgoing
  exact h0

private theorem s6Step133ExitBank_checked : compileHmrBankResizeLog .exit s6Step133ExitGBefore ⟨s6Step133ExitFRow,s6Step133ExitGRow,s6Step133ExitFvRow,s6Step133ExitGvRow⟩ ⟨202,202,80,80⟩ [[],[],[],[]]=
    some (s6Step133ExitGvAfter,⟨s6Step133ExitFOut,s6Step133ExitGOut,s6Step133ExitFvOut,s6Step133ExitGvOut⟩,(shrinkRow 777 s6Step133ExitGExtra ++ (shrinkRow 795 s6Step133ExitFExtra ++ (shrinkRow 776 s6Step133ExitFvExtra ++ (shrinkRow 775 s6Step133ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step133ExitBank_rows]
  rfl

private theorem s6Step133Add0_apart : Disjoint s6Step133Add0Arena.live s6Step133Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step133Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step133Add0_card : s6Step133Add0Arena.live.card=877 := by
  decide +kernel

private theorem s6Step133Add0_borrowed : s6Step133Add0Arena.checkBorrow (hmrHybridCount s6Step133Add0Arena s6Step133Add0B.length) s6Step133Add0Work=some s6Step133Add0During := by
  have len : s6Step133Add0Work.length=hmrHybridCount s6Step133Add0Arena s6Step133Add0B.length := by
    rw [hmrHybridCount,s6Step133Add0_card]
    decide +kernel
  have nd : s6Step133Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step133Add0Arena s6Step133Add0During s6Step133Add0Work.toFinset s6Step133Add0_bounded s6Step133Add0_apart rfl

private theorem s6Step133Add0_distinct : (850::833::879::(s6Step133Add0A++s6Step133Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step133Add0_owned : (850::833::879::(s6Step133Add0A++s6Step133Add0B)).toFinset⊆s6Step133Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step133Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step133Add0_checked : compileHmrHybridCinLog s6Step133Add0Arena 833 850 879 s6Step133Add0A s6Step133Add0B s6Step133Add0Work=some s6Step133Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step133Add0Arena s6Step133Add0During 833 850 879 s6Step133Add0A s6Step133Add0B s6Step133Add0Work
    (by decide +kernel) (by decide +kernel) s6Step133Add0_distinct
    (fun q hq => s6Step133Add0_owned (List.mem_toFinset.mpr hq)) s6Step133Add0_borrowed

private theorem s6Step133Add1_apart : Disjoint s6Step133Add1Arena.live s6Step133Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step133Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step133Add1_card : s6Step133Add1Arena.live.card=877 := by
  decide +kernel

private theorem s6Step133Add1_borrowed : s6Step133Add1Arena.checkBorrow (hmrHybridCount s6Step133Add1Arena s6Step133Add1B.length) s6Step133Add1Work=some s6Step133Add1During := by
  have len : s6Step133Add1Work.length=hmrHybridCount s6Step133Add1Arena s6Step133Add1B.length := by
    rw [hmrHybridCount,s6Step133Add1_card]
    decide +kernel
  have nd : s6Step133Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step133Add1Arena s6Step133Add1During s6Step133Add1Work.toFinset s6Step133Add1_bounded s6Step133Add1_apart rfl

private theorem s6Step133Add1_distinct : (850::833::879::(s6Step133Add1A++s6Step133Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step133Add1_owned : (850::833::879::(s6Step133Add1A++s6Step133Add1B)).toFinset⊆s6Step133Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step133Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step133Add1_checked : compileHmrHybridCinLog s6Step133Add1Arena 833 850 879 s6Step133Add1A s6Step133Add1B s6Step133Add1Work=some s6Step133Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step133Add1Arena s6Step133Add1During 833 850 879 s6Step133Add1A s6Step133Add1B s6Step133Add1Work
    (by decide +kernel) (by decide +kernel) s6Step133Add1_distinct
    (fun q hq => s6Step133Add1_owned (List.mem_toFinset.mpr hq)) s6Step133Add1_borrowed

private theorem s6Step133F4_apart : Disjoint (s6Step133Add0A++s6Step133Add0B).toFinset (s6Step133Add1A++s6Step133Add1B).toFinset := by
  have nd : ((s6Step133Add0A++s6Step133Add0B)++(s6Step133Add1A++s6Step133Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step133F4_carry : s6Step133F4FlagArena.checkBorrow 1 [879]=some s6Step133Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step133F4FlagArena,s6Step133HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step133F4FlagArena,s6Step133HeadFvAfter,s6Step133Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step133F4_distinct : (843::833::850::879::((s6Step133Add0A++s6Step133Add1A)++(s6Step133Add0B++s6Step133Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step133F4_flag : s6Step133HeadFvAfter.checkBorrow 1 [850]=some s6Step133F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step133HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step133F4_owned : (843::833::((s6Step133Add0A++s6Step133Add1A)++(s6Step133Add0B++s6Step133Add1B))).toFinset⊆s6Step133HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step133HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step133F4_checked : compileHmrHybridF4Log s6Step133HeadFvAfter 843 833 s6Step133Add0A s6Step133Add0B s6Step133Add1A s6Step133Add1B [850] [879] s6Step133Add0Work s6Step133Add1Work=some s6Step133F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step133HeadFvAfter s6Step133F4FlagArena s6Step133Add0Arena s6Step133Add0During s6Step133Add1During 843 833
    s6Step133Add0A s6Step133Add0B s6Step133Add1A s6Step133Add1B [850] [879] s6Step133Add0Work s6Step133Add1Work
    (fun q hq => s6Step133F4_owned (List.mem_toFinset.mpr hq)) s6Step133F4_flag s6Step133F4_carry
    s6Step133F4_distinct s6Step133F4_apart s6Step133Add0_checked s6Step133Add1_checked

private theorem s6Step133Front_branch : s6Step133FrontSigmaArena.checkBorrow 1 [833]=some s6Step133HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step133FrontSigmaArena,s6Step133EntryGvAfter,arenaWires]
  · change s6Step133HeadGBefore.live=(s6Step133EntryGvAfter.live∪{843})∪{833}
    apply hmrArena_union_pair_of_filter_check s6Step133EntryGvAfter s6Step133HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 843 833 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step133Front_entry : HmrFrontEntryValid s6Step133EntryFBefore s6Step133FrontBank 203 80 ⟨202,202,80,80⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step133FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step133EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step133EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step133FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step133Front_sigma : s6Step133EntryGvAfter.checkBorrow 1 [843]=some s6Step133FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step133EntryGvAfter,arenaWires]
  · rfl

private def s6Step133HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step133HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step133HeadFBefore : Arena := s6Step133HeadGAfter

private def s6Step133HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458],795⟩

private def s6Step133HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853],776⟩

private def s6Step133HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 807],777⟩

private def s6Step133HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839],775⟩

private theorem s6Step133HeadBank_incomingDistinct : ([s6Step133HeadGRow,s6Step133HeadFRow,s6Step133HeadGvRow,s6Step133HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step133HeadF_Incoming : rowsOwned s6Step133HeadFBefore [s6Step133HeadFRow,s6Step133HeadGvRow,s6Step133HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step133HeadGRow,s6Step133HeadFRow,s6Step133HeadGvRow,s6Step133HeadFvRow] 1 s6Step133HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step133HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step133HeadBank_outgoingOwned : rowsOwned s6Step133HeadFvAfter [s6Step133HeadGOut,s6Step133HeadFOut,s6Step133HeadGvOut,s6Step133HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step133HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step133HeadF_Outgoing : rowsOwned s6Step133HeadFvAfter [s6Step133HeadFOut,s6Step133HeadGvOut,s6Step133HeadFvOut] :=
  hmrRows_owned_drop s6Step133HeadFvAfter [s6Step133HeadGOut,s6Step133HeadFOut,s6Step133HeadGvOut,s6Step133HeadFvOut] 1 s6Step133HeadBank_outgoingOwned

private theorem s6Step133HeadF_distinct : (s6Step133HeadFRow.sign::s6Step133HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step133HeadF_owned : (s6Step133HeadFRow.sign::s6Step133HeadFRow.payload).toFinset⊆s6Step133HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step133HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step133HeadF_reserved : s6Step133HeadFBefore.reserve s6Step133HeadFFresh.toFinset=some s6Step133HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step133HeadFFresh,arenaWires]
  · norm_num [s6Step133HeadFBefore,s6Step133HeadGAfter,s6Step133HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step133HeadFBefore s6Step133HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step133HeadFFresh rfl rfl
    · norm_num [s6Step133HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step133HeadF_checked : planRowResizeLog s6Step133HeadFBefore s6Step133HeadFRow 204 s6Step133HeadFFresh=
    some (s6Step133HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 838],795⟩,growRow 795 s6Step133HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step133HeadFBefore s6Step133HeadFAfter s6Step133HeadFRow 204 s6Step133HeadFFresh
    s6Step133HeadF_distinct s6Step133HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step133HeadF_reserved
  have rowEq : WindowRow.mk (s6Step133HeadFRow.payload++s6Step133HeadFFresh) s6Step133HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 838],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step133HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step133HeadFvBefore : Arena := s6Step133HeadGvAfter

private theorem s6Step133HeadFv_Incoming : rowsOwned s6Step133HeadFvBefore [s6Step133HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step133HeadGRow,s6Step133HeadFRow,s6Step133HeadGvRow,s6Step133HeadFvRow] 3 s6Step133HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step133HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step133HeadFv_Outgoing : rowsOwned s6Step133HeadFvAfter [s6Step133HeadFvOut] :=
  hmrRows_owned_drop s6Step133HeadFvAfter [s6Step133HeadGOut,s6Step133HeadFOut,s6Step133HeadGvOut,s6Step133HeadFvOut] 3 s6Step133HeadBank_outgoingOwned

private theorem s6Step133HeadFv_distinct : (s6Step133HeadFvRow.sign::s6Step133HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step133HeadFv_owned : (s6Step133HeadFvRow.sign::s6Step133HeadFvRow.payload).toFinset⊆s6Step133HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step133HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step133HeadFv_reserved : s6Step133HeadFvBefore.reserve s6Step133HeadFvFresh.toFinset=some s6Step133HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step133HeadFvFresh,arenaWires]
  · norm_num [s6Step133HeadFvBefore,s6Step133HeadGvAfter,s6Step133HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step133HeadFvAfter,s6Step133HeadFvBefore,s6Step133HeadGvAfter,s6Step133HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step133HeadFv_checked : planRowResizeLog s6Step133HeadFvBefore s6Step133HeadFvRow 81 s6Step133HeadFvFresh=
    some (s6Step133HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 813],776⟩,growRow 776 s6Step133HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step133HeadFvBefore s6Step133HeadFvAfter s6Step133HeadFvRow 81 s6Step133HeadFvFresh
    s6Step133HeadFv_distinct s6Step133HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step133HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step133HeadFvRow.payload++s6Step133HeadFvFresh) s6Step133HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 813],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step133HeadG_Incoming : rowsOwned s6Step133HeadGBefore [s6Step133HeadGRow,s6Step133HeadFRow,s6Step133HeadGvRow,s6Step133HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step133HeadGRow,s6Step133HeadFRow,s6Step133HeadGvRow,s6Step133HeadFvRow] 0 s6Step133HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step133HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step133HeadG_Outgoing : rowsOwned s6Step133HeadFvAfter [s6Step133HeadGOut,s6Step133HeadFOut,s6Step133HeadGvOut,s6Step133HeadFvOut] :=
  hmrRows_owned_drop s6Step133HeadFvAfter [s6Step133HeadGOut,s6Step133HeadFOut,s6Step133HeadGvOut,s6Step133HeadFvOut] 0 s6Step133HeadBank_outgoingOwned

private theorem s6Step133HeadG_distinct : (s6Step133HeadGRow.sign::s6Step133HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step133HeadG_owned : (s6Step133HeadGRow.sign::s6Step133HeadGRow.payload).toFinset⊆s6Step133HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step133HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step133HeadG_reserved : s6Step133HeadGBefore.reserve s6Step133HeadGFresh.toFinset=some s6Step133HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step133HeadGFresh,arenaWires]
  · norm_num [s6Step133HeadGBefore,s6Step133HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step133HeadGBefore s6Step133HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step133HeadGFresh rfl rfl
    · norm_num [s6Step133HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step133HeadG_checked : planRowResizeLog s6Step133HeadGBefore s6Step133HeadGRow 204 s6Step133HeadGFresh=
    some (s6Step133HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 807, 854],777⟩,growRow 777 s6Step133HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step133HeadGBefore s6Step133HeadGAfter s6Step133HeadGRow 204 s6Step133HeadGFresh
    s6Step133HeadG_distinct s6Step133HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step133HeadG_reserved
  have rowEq : WindowRow.mk (s6Step133HeadGRow.payload++s6Step133HeadGFresh) s6Step133HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 807, 854],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step133HeadGvBefore : Arena := s6Step133HeadFAfter

private theorem s6Step133HeadGv_Incoming : rowsOwned s6Step133HeadGvBefore [s6Step133HeadGvRow,s6Step133HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step133HeadGRow,s6Step133HeadFRow,s6Step133HeadGvRow,s6Step133HeadFvRow] 2 s6Step133HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step133HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step133HeadGv_Outgoing : rowsOwned s6Step133HeadFvAfter [s6Step133HeadGvOut,s6Step133HeadFvOut] :=
  hmrRows_owned_drop s6Step133HeadFvAfter [s6Step133HeadGOut,s6Step133HeadFOut,s6Step133HeadGvOut,s6Step133HeadFvOut] 2 s6Step133HeadBank_outgoingOwned

private theorem s6Step133HeadGv_distinct : (s6Step133HeadGvRow.sign::s6Step133HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step133HeadGv_owned : (s6Step133HeadGvRow.sign::s6Step133HeadGvRow.payload).toFinset⊆s6Step133HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step133HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step133HeadGv_reserved : s6Step133HeadGvBefore.reserve s6Step133HeadGvFresh.toFinset=some s6Step133HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step133HeadGvFresh,arenaWires]
  · norm_num [s6Step133HeadGvBefore,s6Step133HeadFAfter,s6Step133HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step133HeadGvBefore s6Step133HeadGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step133HeadGvFresh rfl rfl
    · norm_num [s6Step133HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step133HeadGv_checked : planRowResizeLog s6Step133HeadGvBefore s6Step133HeadGvRow 81 s6Step133HeadGvFresh=
    some (s6Step133HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 822],775⟩,growRow 775 s6Step133HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step133HeadGvBefore s6Step133HeadGvAfter s6Step133HeadGvRow 81 s6Step133HeadGvFresh
    s6Step133HeadGv_distinct s6Step133HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step133HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step133HeadGvRow.payload++s6Step133HeadGvFresh) s6Step133HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 822],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step133HeadBank_rows : planWindowRowsLog s6Step133HeadGBefore [(s6Step133HeadGRow,204),(s6Step133HeadFRow,204),(s6Step133HeadGvRow,81),(s6Step133HeadFvRow,81)] [s6Step133HeadGFresh,s6Step133HeadFFresh,s6Step133HeadGvFresh,s6Step133HeadFvFresh]=
    some (s6Step133HeadFvAfter,[s6Step133HeadGOut,s6Step133HeadFOut,s6Step133HeadGvOut,s6Step133HeadFvOut],(growRow 777 s6Step133HeadGFresh ++ (growRow 795 s6Step133HeadFFresh ++ (growRow 775 s6Step133HeadGvFresh ++ (growRow 776 s6Step133HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step133HeadFvAfter [] []=some (s6Step133HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step133HeadFvBefore s6Step133HeadFvAfter s6Step133HeadFvAfter
    s6Step133HeadFvRow s6Step133HeadFvOut 81 s6Step133HeadFvFresh [] [] []
    (growRow 776 s6Step133HeadFvFresh) ([]) s6Step133HeadFv_Incoming s6Step133HeadFv_checked h4 s6Step133HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step133HeadGvBefore s6Step133HeadGvAfter s6Step133HeadFvAfter
    s6Step133HeadGvRow s6Step133HeadGvOut 81 s6Step133HeadGvFresh [(s6Step133HeadFvRow,81)] [s6Step133HeadFvFresh] [s6Step133HeadFvOut]
    (growRow 775 s6Step133HeadGvFresh) ((growRow 776 s6Step133HeadFvFresh ++ [])) s6Step133HeadGv_Incoming s6Step133HeadGv_checked h3 s6Step133HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step133HeadFBefore s6Step133HeadFAfter s6Step133HeadFvAfter
    s6Step133HeadFRow s6Step133HeadFOut 204 s6Step133HeadFFresh [(s6Step133HeadGvRow,81),(s6Step133HeadFvRow,81)] [s6Step133HeadGvFresh,s6Step133HeadFvFresh] [s6Step133HeadGvOut,s6Step133HeadFvOut]
    (growRow 795 s6Step133HeadFFresh) ((growRow 775 s6Step133HeadGvFresh ++ (growRow 776 s6Step133HeadFvFresh ++ []))) s6Step133HeadF_Incoming s6Step133HeadF_checked h2 s6Step133HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step133HeadGBefore s6Step133HeadGAfter s6Step133HeadFvAfter
    s6Step133HeadGRow s6Step133HeadGOut 204 s6Step133HeadGFresh [(s6Step133HeadFRow,204),(s6Step133HeadGvRow,81),(s6Step133HeadFvRow,81)] [s6Step133HeadFFresh,s6Step133HeadGvFresh,s6Step133HeadFvFresh] [s6Step133HeadFOut,s6Step133HeadGvOut,s6Step133HeadFvOut]
    (growRow 777 s6Step133HeadGFresh) ((growRow 795 s6Step133HeadFFresh ++ (growRow 775 s6Step133HeadGvFresh ++ (growRow 776 s6Step133HeadFvFresh ++ [])))) s6Step133HeadG_Incoming s6Step133HeadG_checked h1 s6Step133HeadG_Outgoing
  exact h0

private theorem s6Step133HeadBank_checked : compileHmrBankResizeLog .headroom s6Step133HeadGBefore ⟨s6Step133HeadFRow,s6Step133HeadGRow,s6Step133HeadFvRow,s6Step133HeadGvRow⟩ ⟨204,204,81,81⟩ [s6Step133HeadGFresh,s6Step133HeadFFresh,s6Step133HeadGvFresh,s6Step133HeadFvFresh]=
    some (s6Step133HeadFvAfter,⟨s6Step133HeadFOut,s6Step133HeadGOut,s6Step133HeadFvOut,s6Step133HeadGvOut⟩,(growRow 777 s6Step133HeadGFresh ++ (growRow 795 s6Step133HeadFFresh ++ (growRow 775 s6Step133HeadGvFresh ++ (growRow 776 s6Step133HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step133HeadBank_rows]
  rfl

private theorem s6Step133Front_checked : compileHmrSourceFrontLog s6Step133EntryFBefore s6Step133FrontBank 203 80 ⟨202,202,80,80⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step133FrontLog=some s6Step133FrontPlan := by
  have pairEq : s6Step133FrontPair=⟨s6Step133HeadFRow,s6Step133HeadGRow,s6Step133HeadFvRow,s6Step133HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step133FrontHead=⟨s6Step133ExitFRow,s6Step133ExitGRow,s6Step133ExitFvRow,s6Step133ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step133Add0A=s6Step133FrontHead.f.wires := by decide +kernel
  have gEq : s6Step133Add0B=s6Step133FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step133Add1A=s6Step133FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step133Add1B=s6Step133FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step133EntryFBefore s6Step133FrontBank 203 80 ⟨202,202,80,80⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step133FrontLog s6Step133FrontPlan
  · exact s6Step133Front_entry
  · exact s6Step133EntryBank_checked
  · exact s6Step133Front_sigma
  · rfl
  · exact s6Step133Front_branch
  · rfl
  · simpa only [s6Step133FrontPlan,pairEq] using s6Step133HeadBank_checked
  · simpa only [s6Step133FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step133F4_checked
  · exact s6Step133Counter_checked
  · rfl
  · simpa only [s6Step133FrontPlan,headEq] using s6Step133ExitBank_checked

private theorem s6Step133Complete_explicit_checked : compileHmrEarlyStepLog s6Step133EntryFBefore s6Step133FrontBank 203 80 ⟨202,202,80,80⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step133CompleteLog=some s6Step133CompletePlan := by
  let Q := s6Step133EarlyControlPlan
  have hq := s6Step133EarlyControl_plan_checked
  have fv1 : s6Step133CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step133CompleteOut.fv.payload[2]?.getD s6Step133CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step133CompleteOut.fv.payload[3]?.getD s6Step133CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step133CompleteOut.fv.payload[4]?.getD s6Step133CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step133EntryFBefore s6Step133EarlyControlArena s6Step133FrontBank 203 80 ⟨202,202,80,80⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step133CompleteLog s6Step133FrontPlan Q
    s6Step133Front_checked s6Step133Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step133Complete_owned s6Step133Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step133EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 843 s6Step133CompleteOut.fv.second (s6Step133CompleteOut.fv.payload[2]?.getD s6Step133CompleteOut.fv.sign) (s6Step133CompleteOut.fv.payload[3]?.getD s6Step133CompleteOut.fv.sign) (s6Step133CompleteOut.fv.payload[4]?.getD s6Step133CompleteOut.fv.sign) 833 37 s6Step133EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep133Arena : Arena := s6Step133EntryFBefore
def s6PrivateStep133Bank : WindowBank := s6Step133FrontBank
def s6PrivateStep133Spec : HmrSourceWalkStepLog := ⟨203,80,⟨202,202,80,80⟩,37,.early s6Step133CompleteLog⟩
def s6PrivateStep133Plan : HmrSourceStepPlan := .early s6Step133CompletePlan
theorem s6PrivateStep133_source : s6PrivateStep133Spec=s6ObservedLogs128[5] := rfl
theorem s6PrivateStep133_checked : compileHmrSourceStepLog s6PrivateStep133Arena s6PrivateStep133Bank
    s6PrivateStep133Spec.fgWidth s6PrivateStep133Spec.vWidth s6PrivateStep133Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]
    6 498 133 s6PrivateStep133Spec.need none s6PrivateStep133Spec.log=some s6PrivateStep133Plan := by
  change compileHmrSourceStepLog s6Step133EntryFBefore s6Step133FrontBank 203 80 ⟨202,202,80,80⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 6 498 133 37 none (.early s6Step133CompleteLog)=some (.early s6Step133CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 133<498)]
  rw [s6Step133Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
