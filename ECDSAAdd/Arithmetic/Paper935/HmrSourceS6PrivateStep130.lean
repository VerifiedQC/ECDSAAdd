import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep128
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

private def s6Step130CompleteMoves : List (Wire × Wire) := [(843,203),(853,459)]

private def s6Step130EarlyControlLog : HmrEarlyControlLog := ⟨[853, 843, 838, 833, 822],[813],[850],[879, 875, 882, 891, 903, 791],[]⟩

private def s6Step130FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [898]],[[813], [822], [838], [833]],[[], [], [], []]⟩,[854],[839],[850],[879],[875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[850, 879, 875, 882]⟩

private def s6Step130CompleteLog : HmrEarlyStepLog := ⟨s6Step130FrontLog,s6Step130CompleteMoves,s6Step130EarlyControlLog⟩

private def s6Step130ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458],795⟩

private def s6Step130ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841],776⟩

private def s6Step130ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202],777⟩

private def s6Step130ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898],775⟩

private def s6Step130FrontOut : WindowBank := ⟨s6Step130ExitFOut,s6Step130ExitGOut,s6Step130ExitFvOut,s6Step130ExitGvOut⟩

private def s6Step130CompleteOut : WindowBank := s6Step130FrontOut.repacked s6Step130CompleteMoves

private def s6Step130EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step130EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step130EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step130EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step130EarlyControlPositiveArena,[813],s6Step130EarlyControlEqualityArena,[850],⟨⟨854,false⟩,[⟨⟨813,false⟩,850⟩]⟩⟩

private def s6Step130EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step130EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step130EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step130EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step130EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step130EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step130EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,853⟩,⟨⟨772,false⟩,843⟩,⟨⟨771,false⟩,838⟩,⟨⟨770,false⟩,833⟩,⟨⟨769,false⟩,822⟩]⟩

private def s6Step130EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step130EarlyControlZeroArena,s6Step130EarlyControlZeroPlan,s6Step130EarlyControlClassPlan,s6Step130EarlyControlFlagArena,s6Step130EarlyControlFittedArena,s6Step130EarlyControlHistoryArena,s6Step130EarlyControlSigmaArena,s6Step130EarlyControlOutputArena,s6Step130EarlyControlLog⟩

private def s6Step130CounterWork : List Wire := [850, 879, 875, 882]

private theorem s6Step130Counter_bounded : s6Step130CounterWork.toFinset⊆arenaWires := by norm_num [s6Step130CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step130HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step130CounterDuring : Arena := ⟨s6Step130HeadFvAfter.live∪s6Step130CounterWork.toFinset,Finset.union_subset s6Step130HeadFvAfter.bounded s6Step130Counter_bounded⟩

private def s6Step130EntryFFresh : List Wire := []

private def s6Step130EntryFvFresh : List Wire := []

private def s6Step130EntryGFresh : List Wire := []

private def s6Step130EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step130EntryGvFresh : List Wire := [898]

private def s6Step130ExitFExtra : List Wire := [459, 822]

private def s6Step130ExitFvExtra : List Wire := [833]

private def s6Step130ExitGExtra : List Wire := [203, 813]

private def s6Step130ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,203),(204,459),(460,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step130ExitGvExtra : List Wire := [838]

private def s6Step130Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step130Add0Work : List Wire := [875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step130Add0_bounded : s6Step130Add0Work.toFinset⊆arenaWires := by
  have h : s6Step130Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step130Add0During : Arena := ⟨s6Step130Add0Arena.live∪s6Step130Add0Work.toFinset,Finset.union_subset s6Step130Add0Arena.bounded s6Step130Add0_bounded⟩

private def s6Step130Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step130Add1Work : List Wire := [875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step130Add1_bounded : s6Step130Add1Work.toFinset⊆arenaWires := by
  have h : s6Step130Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step130Add1During : Arena := ⟨s6Step130Add1Arena.live∪s6Step130Add1Work.toFinset,Finset.union_subset s6Step130Add1Arena.bounded s6Step130Add1_bounded⟩

private def s6Step130F4FlagArena : Arena := ⟨s6Step130HeadFvAfter.live∪{850},Finset.union_subset s6Step130HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step130F4Plan : HmrHybridF4Plan := ⟨s6Step130F4FlagArena,[850],s6Step130Add0Arena,[879],s6Step130Add0During,s6Step130Add0Work,s6Step130Add1During,s6Step130Add1Work⟩

private def s6Step130HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 822],795⟩

private def s6Step130HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 833],776⟩

private def s6Step130HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 813],777⟩

private def s6Step130HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 838],775⟩

private def s6Step130FrontHead : WindowBank := ⟨s6Step130HeadFOut,s6Step130HeadGOut,s6Step130HeadFvOut,s6Step130HeadGvOut⟩

private def s6Step130EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459],795⟩

private def s6Step130EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841],776⟩

private def s6Step130EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203],777⟩

private def s6Step130EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898],775⟩

private def s6Step130FrontPair : WindowBank := ⟨s6Step130EntryFOut,s6Step130EntryGOut,s6Step130EntryFvOut,s6Step130EntryGvOut⟩

private def s6Step130FrontSigmaArena : Arena := ⟨s6Step130EntryGvAfter.live∪{854},Finset.union_subset s6Step130EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step130HeadFFresh : List Wire := [822]

private def s6Step130HeadFvFresh : List Wire := [833]

private def s6Step130HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step130HeadGFresh : List Wire := [813]

private def s6Step130HeadGvFresh : List Wire := [838]

private def s6Step130FrontPlan : HmrSourceFront := ⟨s6Step130EntryGvAfter,s6Step130FrontPair,(growRow 795 s6Step130EntryFFresh ++ (growRow 777 s6Step130EntryGFresh ++ (growRow 776 s6Step130EntryFvFresh ++ (growRow 775 s6Step130EntryGvFresh ++ [])))),s6Step130FrontSigmaArena,[854],s6Step130HeadGBefore,[839],
  s6Step130HeadFvAfter,s6Step130FrontHead,(growRow 777 s6Step130HeadGFresh ++ (growRow 795 s6Step130HeadFFresh ++ (growRow 775 s6Step130HeadGvFresh ++ (growRow 776 s6Step130HeadFvFresh ++ [])))),s6Step130F4Plan,s6Step130CounterDuring,s6Step130CounterWork,s6Step130ExitGvAfter,s6Step130FrontOut,(shrinkRow 777 s6Step130ExitGExtra ++ (shrinkRow 795 s6Step130ExitFExtra ++ (shrinkRow 776 s6Step130ExitFvExtra ++ (shrinkRow 775 s6Step130ExitGvExtra ++ []))))⟩

private def s6Step130CompletePlan : HmrEarlyStepPlan := ⟨s6Step130FrontPlan,s6Step130EarlyControlArena,s6Step130EarlyControlPlan,s6Step130CompleteMoves⟩

private theorem s6Step130Complete_apart : List.Disjoint (s6Step130CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [854, 839, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] := by
  have nd : ((s6Step130CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[854, 839, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step130Complete_owned : (s6Step130CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step130EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step130EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step130CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,459),(460,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step130CompleteRelocationMove0Borrowed : Arena := ⟨s6Step130ExitGvAfter.live∪{203},Finset.union_subset s6Step130ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step130CompleteRelocationMove1Borrowed : Arena := ⟨s6Step130CompleteRelocationMove0After.live∪{459},Finset.union_subset s6Step130CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step130CompleteRelocation_move0_owned : 843∈s6Step130ExitGvAfter.live := by norm_num [s6Step130ExitGvAfter,arenaWires]

private theorem s6Step130CompleteRelocation_move0_reserve : s6Step130ExitGvAfter.reserve {203}=some s6Step130CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step130ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step130CompleteRelocation_move0_retire : s6Step130CompleteRelocationMove0Borrowed.retireSet {843}=s6Step130CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step130CompleteRelocationMove0Borrowed s6Step130CompleteRelocationMove0After {843}
  change s6Step130CompleteRelocationMove0After.live=(s6Step130ExitGvAfter.live∪{203})\{843}
  apply hmrArena_update_of_filter_check s6Step130ExitGvAfter s6Step130CompleteRelocationMove0After (fun q => ([(0,203),(204,459),(460,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,459),(460,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [203] [843] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step130CompleteRelocation_move1_owned : 853∈s6Step130CompleteRelocationMove0After.live := by norm_num [s6Step130CompleteRelocationMove0After,arenaWires]

private theorem s6Step130CompleteRelocation_move1_reserve : s6Step130CompleteRelocationMove0After.reserve {459}=some s6Step130CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step130CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step130CompleteRelocation_move1_retire : s6Step130CompleteRelocationMove1Borrowed.retireSet {853}=s6Step130EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step130CompleteRelocationMove1Borrowed s6Step130EarlyControlArena {853}
  change s6Step130EarlyControlArena.live=(s6Step130CompleteRelocationMove0After.live∪{459})\{853}
  apply hmrArena_update_of_filter_check s6Step130CompleteRelocationMove0After s6Step130EarlyControlArena (fun q => ([(0,459),(460,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [459] [853] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step130CompleteRelocation_checked : s6Step130ExitGvAfter.checkRepack [(843,203),(853,459)]=some s6Step130EarlyControlArena := by
  have tail2 : s6Step130EarlyControlArena.checkRepack []=some s6Step130EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step130CompleteRelocationMove0After s6Step130CompleteRelocationMove1Borrowed s6Step130EarlyControlArena s6Step130EarlyControlArena 853 459 []
    s6Step130CompleteRelocation_move1_owned s6Step130CompleteRelocation_move1_reserve s6Step130CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step130ExitGvAfter s6Step130CompleteRelocationMove0Borrowed s6Step130CompleteRelocationMove0After s6Step130EarlyControlArena 843 203 [(853,459)]
    s6Step130CompleteRelocation_move0_owned s6Step130CompleteRelocation_move0_reserve s6Step130CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step130Complete_repack : s6Step130ExitGvAfter.checkRepack s6Step130CompleteMoves=some s6Step130EarlyControlArena := by
  simpa only [s6Step130CompleteMoves] using s6Step130CompleteRelocation_checked

private theorem s6Step130EarlyControl_branchOwned : ([839] : List Wire).toFinset⊆s6Step130EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step130EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step130EarlyControl_branch : compileHmrBranchRetirement s6Step130EarlyControlSigmaArena 839=some s6Step130EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step130EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step130EarlyControlSigmaArena s6Step130EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [839] rfl rfl
    decide +kernel

private theorem s6Step130EarlyControl_classEqualityBorrow : s6Step130EarlyControlPositiveArena.checkBorrow (([854, 813] : List Wire).length-1) s6Step130EarlyControlLog.classWork=some s6Step130EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step130EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step130EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step130EarlyControlEqualityArena,s6Step130EarlyControlPositiveArena,s6Step130EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step130EarlyControl_classEqualityOwned : ([854, 813] : List Wire).toFinset⊆s6Step130EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step130EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step130EarlyControl_classEquality : compileHmrEqualityLog s6Step130EarlyControlPositiveArena [854, 813] 0 s6Step130EarlyControlLog.classWork=some (s6Step130EarlyControlEqualityArena,s6Step130EarlyControlLog.classWork,s6Step130EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step130EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step130EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step130EarlyControl_classOwned : ([769, 822, 854] : List Wire).toFinset⊆s6Step130EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step130EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step130EarlyControl_positiveBorrow : s6Step130EarlyControlZeroArena.checkBorrow (1) s6Step130EarlyControlLog.positiveWork=some s6Step130EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step130EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step130EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step130EarlyControlPositiveArena,s6Step130EarlyControlZeroArena,s6Step130EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step130EarlyControl_class : compileHmrSourceClassLog s6Step130EarlyControlZeroArena false 769 s6Step130EarlyControlZeroPlan.top 0 854 s6Step130EarlyControlLog.positiveWork s6Step130EarlyControlLog.classWork=some s6Step130EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step130EarlyControlClassPlan s6Step130EarlyControlZeroArena false 769 s6Step130EarlyControlZeroPlan.top 0 854
  constructor
  · decide +kernel
  · exact s6Step130EarlyControl_classOwned
  · exact s6Step130EarlyControl_positiveBorrow
  · exact s6Step130EarlyControl_classEquality

private theorem s6Step130EarlyControl_entryRecordOwned : ([839, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step130EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step130EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step130EarlyControl_entrySigmaOwned : ([854, 254] : List Wire).toFinset⊆s6Step130EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step130EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step130EarlyControl_fitBorrow : s6Step130EarlyControlFlagArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step130EarlyControlLog.recordFresh=some s6Step130EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step130EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step130EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step130EarlyControlFittedArena,s6Step130EarlyControlFlagArena,s6Step130EarlyControlLog,arenaWires]

private theorem s6Step130EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step130EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step130EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step130EarlyControl_fit : compileHmrRecordGrowLog s6Step130EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step130EarlyControlLog.recordFresh=some s6Step130EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step130EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step130EarlyControl_fitBorrow

private theorem s6Step130EarlyControl_flagsBorrow : s6Step130EarlyControlEqualityArena.checkBorrow (6) s6Step130EarlyControlLog.flagWork=some s6Step130EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step130EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step130EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step130EarlyControlFlagArena,s6Step130EarlyControlEqualityArena,s6Step130EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step130EarlyControl_flagsOwned : ([850, 253, 252, 251] : List Wire).toFinset⊆s6Step130EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step130EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step130EarlyControl_flags : compileHmrFlagsLog s6Step130EarlyControlClassPlan.equalityArena s6Step130EarlyControlClassPlan.equality.top 253 252 251 s6Step130EarlyControlLog.flagWork=some s6Step130EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step130EarlyControl_flagsOwned⟩
  · exact s6Step130EarlyControl_flagsBorrow

private theorem s6Step130EarlyControl_historyBorrow : s6Step130EarlyControlArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step130EarlyControlLog.recordFresh=some s6Step130EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step130EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step130EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step130EarlyControlArena s6Step130EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step130EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step130EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step130EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step130EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step130EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step130EarlyControl_history : compileHmrRecordGrowLog s6Step130EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step130EarlyControlLog.recordFresh=some s6Step130EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step130EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step130EarlyControl_historyBorrow

private theorem s6Step130EarlyControl_sigmaOwned : ([254, 854] : List Wire).toFinset⊆s6Step130EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step130EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step130EarlyControl_sigmaReleaseOwned : ([854] : List Wire).toFinset⊆s6Step130EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step130EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step130EarlyControl_sigmaRelease : s6Step130EarlyControlHistoryArena.release {854} (fun _ => false)=some s6Step130EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step130EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step130EarlyControlHistoryArena s6Step130EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [854] rfl rfl
    decide +kernel

private theorem s6Step130EarlyControl_sigma : compileHmrSigmaDropLog s6Step130EarlyControlHistoryArena false 0 0 254 854 []=some s6Step130EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step130EarlyControl_sigmaOwned⟩
  · exact s6Step130EarlyControl_sigmaRelease

private theorem s6Step130EarlyControl_zeroBorrow : s6Step130EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step130EarlyControlLog.zeroWork=some s6Step130EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step130EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step130EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step130EarlyControlArena s6Step130EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step130EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step130EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step130EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step130EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step130EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step130EarlyControl_zero : compileHmrEqualityLog s6Step130EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step130EarlyControlLog.zeroWork=some (s6Step130EarlyControlZeroArena,s6Step130EarlyControlLog.zeroWork,s6Step130EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step130EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step130EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step130EarlyControl_logged : s6Step130EarlyControlPlan.Logged s6Step130EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 854 254 253 252 251 839 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step130EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step130EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step130EarlyControl_zero
  · exact s6Step130EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step130EarlyControl_flags
  · exact s6Step130EarlyControl_fit
  · exact s6Step130EarlyControl_history
  · exact s6Step130EarlyControl_sigma
  · exact s6Step130EarlyControl_branch

private theorem s6Step130EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step130EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 854 254 253 252 251 839 37 s6Step130EarlyControlLog=some s6Step130EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step130EarlyControlPlan s6Step130EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 854 254 253 252 251 839 37 s6Step130EarlyControl_logged

private def s6Step130EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step130EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459],795⟩

private def s6Step130EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841],776⟩

private def s6Step130EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203],777⟩

private def s6Step130EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796],775⟩

private def s6Step130FrontBank : WindowBank := ⟨s6Step130EntryFRow,s6Step130EntryGRow,s6Step130EntryFvRow,s6Step130EntryGvRow⟩

private def s6Step130Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 822, 795]

private def s6Step130Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 813, 777]

private def s6Step130Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 833, 776]

private def s6Step130Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 838, 775]

private theorem s6Step130Counter_apart : Disjoint s6Step130HeadFvAfter.live s6Step130CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step130HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step130Counter_borrowed : s6Step130HeadFvAfter.checkBorrow 4 s6Step130CounterWork=some s6Step130CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step130HeadFvAfter s6Step130CounterDuring s6Step130CounterWork.toFinset s6Step130Counter_bounded s6Step130Counter_apart rfl

private theorem s6Step130Counter_owned : (854::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step130HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step130HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step130Counter_checked : compileHmrCounterStepLog s6Step130HeadFvAfter true 854 [774, 773, 772, 771, 770, 769] s6Step130CounterWork=some s6Step130CounterDuring := by
  have owned : ∀q∈854::[774, 773, 772, 771, 770, 769],q∈s6Step130HeadFvAfter.live := fun q hq => s6Step130Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step130Counter_borrowed

private def s6Step130EntryFAfter : Arena := s6Step130EntryFBefore

private theorem s6Step130EntryBank_incomingDistinct : ([s6Step130EntryFRow,s6Step130EntryGRow,s6Step130EntryFvRow,s6Step130EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step130EntryF_Incoming : rowsOwned s6Step130EntryFBefore [s6Step130EntryFRow,s6Step130EntryGRow,s6Step130EntryFvRow,s6Step130EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step130EntryFRow,s6Step130EntryGRow,s6Step130EntryFvRow,s6Step130EntryGvRow] 0 s6Step130EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step130EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step130EntryBank_outgoingOwned : rowsOwned s6Step130EntryGvAfter [s6Step130EntryFOut,s6Step130EntryGOut,s6Step130EntryFvOut,s6Step130EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step130EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step130EntryF_Outgoing : rowsOwned s6Step130EntryGvAfter [s6Step130EntryFOut,s6Step130EntryGOut,s6Step130EntryFvOut,s6Step130EntryGvOut] :=
  hmrRows_owned_drop s6Step130EntryGvAfter [s6Step130EntryFOut,s6Step130EntryGOut,s6Step130EntryFvOut,s6Step130EntryGvOut] 0 s6Step130EntryBank_outgoingOwned

private theorem s6Step130EntryF_distinct : (s6Step130EntryFRow.sign::s6Step130EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step130EntryF_owned : (s6Step130EntryFRow.sign::s6Step130EntryFRow.payload).toFinset⊆s6Step130EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step130EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step130EntryF_reserved : s6Step130EntryFBefore.reserve s6Step130EntryFFresh.toFinset=some s6Step130EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step130EntryFFresh,arenaWires]
  · norm_num [s6Step130EntryFBefore,s6Step130EntryFFresh,arenaWires]
  · simp only [s6Step130EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step130EntryF_checked : planRowResizeLog s6Step130EntryFBefore s6Step130EntryFRow 204 s6Step130EntryFFresh=
    some (s6Step130EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459],795⟩,growRow 795 s6Step130EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step130EntryFBefore s6Step130EntryFAfter s6Step130EntryFRow 204 s6Step130EntryFFresh
    s6Step130EntryF_distinct s6Step130EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step130EntryF_reserved
  have rowEq : WindowRow.mk (s6Step130EntryFRow.payload++s6Step130EntryFFresh) s6Step130EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step130EntryFvAfter : Arena := s6Step130EntryFBefore

private def s6Step130EntryFvBefore : Arena := s6Step130EntryFBefore

private theorem s6Step130EntryFv_Incoming : rowsOwned s6Step130EntryFvBefore [s6Step130EntryFvRow,s6Step130EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step130EntryFRow,s6Step130EntryGRow,s6Step130EntryFvRow,s6Step130EntryGvRow] 2 s6Step130EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step130EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step130EntryFv_Outgoing : rowsOwned s6Step130EntryGvAfter [s6Step130EntryFvOut,s6Step130EntryGvOut] :=
  hmrRows_owned_drop s6Step130EntryGvAfter [s6Step130EntryFOut,s6Step130EntryGOut,s6Step130EntryFvOut,s6Step130EntryGvOut] 2 s6Step130EntryBank_outgoingOwned

private theorem s6Step130EntryFv_distinct : (s6Step130EntryFvRow.sign::s6Step130EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step130EntryFv_owned : (s6Step130EntryFvRow.sign::s6Step130EntryFvRow.payload).toFinset⊆s6Step130EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step130EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step130EntryFv_reserved : s6Step130EntryFvBefore.reserve s6Step130EntryFvFresh.toFinset=some s6Step130EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step130EntryFvFresh,arenaWires]
  · norm_num [s6Step130EntryFvBefore,s6Step130EntryFBefore,s6Step130EntryFvFresh,arenaWires]
  · simp only [s6Step130EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step130EntryFv_checked : planRowResizeLog s6Step130EntryFvBefore s6Step130EntryFvRow 79 s6Step130EntryFvFresh=
    some (s6Step130EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841],776⟩,growRow 776 s6Step130EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step130EntryFvBefore s6Step130EntryFvAfter s6Step130EntryFvRow 79 s6Step130EntryFvFresh
    s6Step130EntryFv_distinct s6Step130EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step130EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step130EntryFvRow.payload++s6Step130EntryFvFresh) s6Step130EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step130EntryGAfter : Arena := s6Step130EntryFBefore

private def s6Step130EntryGBefore : Arena := s6Step130EntryFBefore

private theorem s6Step130EntryG_Incoming : rowsOwned s6Step130EntryGBefore [s6Step130EntryGRow,s6Step130EntryFvRow,s6Step130EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step130EntryFRow,s6Step130EntryGRow,s6Step130EntryFvRow,s6Step130EntryGvRow] 1 s6Step130EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step130EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step130EntryG_Outgoing : rowsOwned s6Step130EntryGvAfter [s6Step130EntryGOut,s6Step130EntryFvOut,s6Step130EntryGvOut] :=
  hmrRows_owned_drop s6Step130EntryGvAfter [s6Step130EntryFOut,s6Step130EntryGOut,s6Step130EntryFvOut,s6Step130EntryGvOut] 1 s6Step130EntryBank_outgoingOwned

private theorem s6Step130EntryG_distinct : (s6Step130EntryGRow.sign::s6Step130EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step130EntryG_owned : (s6Step130EntryGRow.sign::s6Step130EntryGRow.payload).toFinset⊆s6Step130EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step130EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step130EntryG_reserved : s6Step130EntryGBefore.reserve s6Step130EntryGFresh.toFinset=some s6Step130EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step130EntryGFresh,arenaWires]
  · norm_num [s6Step130EntryGBefore,s6Step130EntryFBefore,s6Step130EntryGFresh,arenaWires]
  · simp only [s6Step130EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step130EntryG_checked : planRowResizeLog s6Step130EntryGBefore s6Step130EntryGRow 204 s6Step130EntryGFresh=
    some (s6Step130EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203],777⟩,growRow 777 s6Step130EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step130EntryGBefore s6Step130EntryGAfter s6Step130EntryGRow 204 s6Step130EntryGFresh
    s6Step130EntryG_distinct s6Step130EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step130EntryG_reserved
  have rowEq : WindowRow.mk (s6Step130EntryGRow.payload++s6Step130EntryGFresh) s6Step130EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step130EntryGvBefore : Arena := s6Step130EntryFBefore

private theorem s6Step130EntryGv_Incoming : rowsOwned s6Step130EntryGvBefore [s6Step130EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step130EntryFRow,s6Step130EntryGRow,s6Step130EntryFvRow,s6Step130EntryGvRow] 3 s6Step130EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step130EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step130EntryGv_Outgoing : rowsOwned s6Step130EntryGvAfter [s6Step130EntryGvOut] :=
  hmrRows_owned_drop s6Step130EntryGvAfter [s6Step130EntryFOut,s6Step130EntryGOut,s6Step130EntryFvOut,s6Step130EntryGvOut] 3 s6Step130EntryBank_outgoingOwned

private theorem s6Step130EntryGv_distinct : (s6Step130EntryGvRow.sign::s6Step130EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step130EntryGv_owned : (s6Step130EntryGvRow.sign::s6Step130EntryGvRow.payload).toFinset⊆s6Step130EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step130EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step130EntryGv_reserved : s6Step130EntryGvBefore.reserve s6Step130EntryGvFresh.toFinset=some s6Step130EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step130EntryGvFresh,arenaWires]
  · norm_num [s6Step130EntryGvBefore,s6Step130EntryFBefore,s6Step130EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step130EntryGvBefore s6Step130EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step130EntryGvFresh rfl rfl
    · norm_num [s6Step130EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step130EntryGv_checked : planRowResizeLog s6Step130EntryGvBefore s6Step130EntryGvRow 79 s6Step130EntryGvFresh=
    some (s6Step130EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898],775⟩,growRow 775 s6Step130EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step130EntryGvBefore s6Step130EntryGvAfter s6Step130EntryGvRow 79 s6Step130EntryGvFresh
    s6Step130EntryGv_distinct s6Step130EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step130EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step130EntryGvRow.payload++s6Step130EntryGvFresh) s6Step130EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step130EntryBank_rows : planWindowRowsLog s6Step130EntryFBefore [(s6Step130EntryFRow,204),(s6Step130EntryGRow,204),(s6Step130EntryFvRow,79),(s6Step130EntryGvRow,79)] [s6Step130EntryFFresh,s6Step130EntryGFresh,s6Step130EntryFvFresh,s6Step130EntryGvFresh]=
    some (s6Step130EntryGvAfter,[s6Step130EntryFOut,s6Step130EntryGOut,s6Step130EntryFvOut,s6Step130EntryGvOut],(growRow 795 s6Step130EntryFFresh ++ (growRow 777 s6Step130EntryGFresh ++ (growRow 776 s6Step130EntryFvFresh ++ (growRow 775 s6Step130EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step130EntryGvAfter [] []=some (s6Step130EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step130EntryGvBefore s6Step130EntryGvAfter s6Step130EntryGvAfter
    s6Step130EntryGvRow s6Step130EntryGvOut 79 s6Step130EntryGvFresh [] [] []
    (growRow 775 s6Step130EntryGvFresh) ([]) s6Step130EntryGv_Incoming s6Step130EntryGv_checked h4 s6Step130EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step130EntryFvBefore s6Step130EntryFvAfter s6Step130EntryGvAfter
    s6Step130EntryFvRow s6Step130EntryFvOut 79 s6Step130EntryFvFresh [(s6Step130EntryGvRow,79)] [s6Step130EntryGvFresh] [s6Step130EntryGvOut]
    (growRow 776 s6Step130EntryFvFresh) ((growRow 775 s6Step130EntryGvFresh ++ [])) s6Step130EntryFv_Incoming s6Step130EntryFv_checked h3 s6Step130EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step130EntryGBefore s6Step130EntryGAfter s6Step130EntryGvAfter
    s6Step130EntryGRow s6Step130EntryGOut 204 s6Step130EntryGFresh [(s6Step130EntryFvRow,79),(s6Step130EntryGvRow,79)] [s6Step130EntryFvFresh,s6Step130EntryGvFresh] [s6Step130EntryFvOut,s6Step130EntryGvOut]
    (growRow 777 s6Step130EntryGFresh) ((growRow 776 s6Step130EntryFvFresh ++ (growRow 775 s6Step130EntryGvFresh ++ []))) s6Step130EntryG_Incoming s6Step130EntryG_checked h2 s6Step130EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step130EntryFBefore s6Step130EntryFAfter s6Step130EntryGvAfter
    s6Step130EntryFRow s6Step130EntryFOut 204 s6Step130EntryFFresh [(s6Step130EntryGRow,204),(s6Step130EntryFvRow,79),(s6Step130EntryGvRow,79)] [s6Step130EntryGFresh,s6Step130EntryFvFresh,s6Step130EntryGvFresh] [s6Step130EntryGOut,s6Step130EntryFvOut,s6Step130EntryGvOut]
    (growRow 795 s6Step130EntryFFresh) ((growRow 777 s6Step130EntryGFresh ++ (growRow 776 s6Step130EntryFvFresh ++ (growRow 775 s6Step130EntryGvFresh ++ [])))) s6Step130EntryF_Incoming s6Step130EntryF_checked h1 s6Step130EntryF_Outgoing
  exact h0

private theorem s6Step130EntryBank_checked : compileHmrBankResizeLog .entry s6Step130EntryFBefore ⟨s6Step130EntryFRow,s6Step130EntryGRow,s6Step130EntryFvRow,s6Step130EntryGvRow⟩ ⟨204,204,79,79⟩ [s6Step130EntryFFresh,s6Step130EntryGFresh,s6Step130EntryFvFresh,s6Step130EntryGvFresh]=
    some (s6Step130EntryGvAfter,⟨s6Step130EntryFOut,s6Step130EntryGOut,s6Step130EntryFvOut,s6Step130EntryGvOut⟩,(growRow 795 s6Step130EntryFFresh ++ (growRow 777 s6Step130EntryGFresh ++ (growRow 776 s6Step130EntryFvFresh ++ (growRow 775 s6Step130EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step130EntryBank_rows]
  rfl

private def s6Step130ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,203),(204,459),(460,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step130ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,203),(204,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step130ExitFBefore : Arena := s6Step130ExitGAfter

private def s6Step130ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 822],795⟩

private def s6Step130ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 833],776⟩

private def s6Step130ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 813],777⟩

private def s6Step130ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 838],775⟩

private theorem s6Step130ExitBank_incomingDistinct : ([s6Step130ExitGRow,s6Step130ExitFRow,s6Step130ExitFvRow,s6Step130ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step130ExitF_Incoming : rowsOwned s6Step130ExitFBefore [s6Step130ExitFRow,s6Step130ExitFvRow,s6Step130ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step130ExitGRow,s6Step130ExitFRow,s6Step130ExitFvRow,s6Step130ExitGvRow] 1 s6Step130ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step130ExitFBefore (fun q => ([(0,203),(204,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step130ExitBank_outgoingOwned : rowsOwned s6Step130ExitGvAfter [s6Step130ExitGOut,s6Step130ExitFOut,s6Step130ExitFvOut,s6Step130ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step130ExitGvAfter (fun q => ([(0,203),(204,459),(460,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step130ExitF_Outgoing : rowsOwned s6Step130ExitGvAfter [s6Step130ExitFOut,s6Step130ExitFvOut,s6Step130ExitGvOut] :=
  hmrRows_owned_drop s6Step130ExitGvAfter [s6Step130ExitGOut,s6Step130ExitFOut,s6Step130ExitFvOut,s6Step130ExitGvOut] 1 s6Step130ExitBank_outgoingOwned

private theorem s6Step130ExitF_distinct : (s6Step130ExitFRow.sign::s6Step130ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step130ExitF_owned : (s6Step130ExitFRow.sign::s6Step130ExitFRow.payload).toFinset⊆s6Step130ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step130ExitFBefore (fun q => ([(0,203),(204,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step130ExitF_retired : s6Step130ExitFBefore.retireSet s6Step130ExitFExtra.toFinset=s6Step130ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step130ExitFBefore s6Step130ExitFAfter s6Step130ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step130ExitFBefore s6Step130ExitFAfter (fun q => ([(0,203),(204,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,203),(204,459),(460,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step130ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step130ExitF_checked : planRowResizeLog s6Step130ExitFBefore s6Step130ExitFRow 203 []=
    some (s6Step130ExitFAfter,s6Step130ExitFOut,shrinkRow 795 s6Step130ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step130ExitFBefore s6Step130ExitFRow 203 s6Step130ExitF_distinct s6Step130ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step130ExitFRow.payload.take 203) s6Step130ExitFRow.sign=s6Step130ExitFOut := by decide +kernel
  have hi : s6Step130ExitFRow.payload.drop 203=s6Step130ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step130ExitF_retired] at result
  exact result

private def s6Step130ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,203),(204,459),(460,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step130ExitFvBefore : Arena := s6Step130ExitFAfter

private theorem s6Step130ExitFv_Incoming : rowsOwned s6Step130ExitFvBefore [s6Step130ExitFvRow,s6Step130ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step130ExitGRow,s6Step130ExitFRow,s6Step130ExitFvRow,s6Step130ExitGvRow] 2 s6Step130ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step130ExitFvBefore (fun q => ([(0,203),(204,459),(460,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step130ExitFv_Outgoing : rowsOwned s6Step130ExitGvAfter [s6Step130ExitFvOut,s6Step130ExitGvOut] :=
  hmrRows_owned_drop s6Step130ExitGvAfter [s6Step130ExitGOut,s6Step130ExitFOut,s6Step130ExitFvOut,s6Step130ExitGvOut] 2 s6Step130ExitBank_outgoingOwned

private theorem s6Step130ExitFv_distinct : (s6Step130ExitFvRow.sign::s6Step130ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step130ExitFv_owned : (s6Step130ExitFvRow.sign::s6Step130ExitFvRow.payload).toFinset⊆s6Step130ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step130ExitFvBefore (fun q => ([(0,203),(204,459),(460,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step130ExitFv_retired : s6Step130ExitFvBefore.retireSet s6Step130ExitFvExtra.toFinset=s6Step130ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step130ExitFvBefore s6Step130ExitFvAfter s6Step130ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step130ExitFvBefore s6Step130ExitFvAfter (fun q => ([(0,203),(204,459),(460,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,203),(204,459),(460,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step130ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step130ExitFv_checked : planRowResizeLog s6Step130ExitFvBefore s6Step130ExitFvRow 79 []=
    some (s6Step130ExitFvAfter,s6Step130ExitFvOut,shrinkRow 776 s6Step130ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step130ExitFvBefore s6Step130ExitFvRow 79 s6Step130ExitFv_distinct s6Step130ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step130ExitFvRow.payload.take 79) s6Step130ExitFvRow.sign=s6Step130ExitFvOut := by decide +kernel
  have hi : s6Step130ExitFvRow.payload.drop 79=s6Step130ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step130ExitFv_retired] at result
  exact result

private def s6Step130ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step130ExitG_Incoming : rowsOwned s6Step130ExitGBefore [s6Step130ExitGRow,s6Step130ExitFRow,s6Step130ExitFvRow,s6Step130ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step130ExitGRow,s6Step130ExitFRow,s6Step130ExitFvRow,s6Step130ExitGvRow] 0 s6Step130ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step130ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step130ExitG_Outgoing : rowsOwned s6Step130ExitGvAfter [s6Step130ExitGOut,s6Step130ExitFOut,s6Step130ExitFvOut,s6Step130ExitGvOut] :=
  hmrRows_owned_drop s6Step130ExitGvAfter [s6Step130ExitGOut,s6Step130ExitFOut,s6Step130ExitFvOut,s6Step130ExitGvOut] 0 s6Step130ExitBank_outgoingOwned

private theorem s6Step130ExitG_distinct : (s6Step130ExitGRow.sign::s6Step130ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step130ExitG_owned : (s6Step130ExitGRow.sign::s6Step130ExitGRow.payload).toFinset⊆s6Step130ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step130ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step130ExitG_retired : s6Step130ExitGBefore.retireSet s6Step130ExitGExtra.toFinset=s6Step130ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step130ExitGBefore s6Step130ExitGAfter s6Step130ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step130ExitGBefore s6Step130ExitGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,203),(204,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step130ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step130ExitG_checked : planRowResizeLog s6Step130ExitGBefore s6Step130ExitGRow 203 []=
    some (s6Step130ExitGAfter,s6Step130ExitGOut,shrinkRow 777 s6Step130ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step130ExitGBefore s6Step130ExitGRow 203 s6Step130ExitG_distinct s6Step130ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step130ExitGRow.payload.take 203) s6Step130ExitGRow.sign=s6Step130ExitGOut := by decide +kernel
  have hi : s6Step130ExitGRow.payload.drop 203=s6Step130ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step130ExitG_retired] at result
  exact result

private def s6Step130ExitGvBefore : Arena := s6Step130ExitFvAfter

private theorem s6Step130ExitGv_Incoming : rowsOwned s6Step130ExitGvBefore [s6Step130ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step130ExitGRow,s6Step130ExitFRow,s6Step130ExitFvRow,s6Step130ExitGvRow] 3 s6Step130ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step130ExitGvBefore (fun q => ([(0,203),(204,459),(460,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step130ExitGv_Outgoing : rowsOwned s6Step130ExitGvAfter [s6Step130ExitGvOut] :=
  hmrRows_owned_drop s6Step130ExitGvAfter [s6Step130ExitGOut,s6Step130ExitFOut,s6Step130ExitFvOut,s6Step130ExitGvOut] 3 s6Step130ExitBank_outgoingOwned

private theorem s6Step130ExitGv_distinct : (s6Step130ExitGvRow.sign::s6Step130ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step130ExitGv_owned : (s6Step130ExitGvRow.sign::s6Step130ExitGvRow.payload).toFinset⊆s6Step130ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step130ExitGvBefore (fun q => ([(0,203),(204,459),(460,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step130ExitGv_retired : s6Step130ExitGvBefore.retireSet s6Step130ExitGvExtra.toFinset=s6Step130ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step130ExitGvBefore s6Step130ExitGvAfter s6Step130ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step130ExitGvBefore s6Step130ExitGvAfter (fun q => ([(0,203),(204,459),(460,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,203),(204,459),(460,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step130ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step130ExitGv_checked : planRowResizeLog s6Step130ExitGvBefore s6Step130ExitGvRow 79 []=
    some (s6Step130ExitGvAfter,s6Step130ExitGvOut,shrinkRow 775 s6Step130ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step130ExitGvBefore s6Step130ExitGvRow 79 s6Step130ExitGv_distinct s6Step130ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step130ExitGvRow.payload.take 79) s6Step130ExitGvRow.sign=s6Step130ExitGvOut := by decide +kernel
  have hi : s6Step130ExitGvRow.payload.drop 79=s6Step130ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step130ExitGv_retired] at result
  exact result

private theorem s6Step130ExitBank_rows : planWindowRowsLog s6Step130ExitGBefore [(s6Step130ExitGRow,203),(s6Step130ExitFRow,203),(s6Step130ExitFvRow,79),(s6Step130ExitGvRow,79)] [[],[],[],[]]=
    some (s6Step130ExitGvAfter,[s6Step130ExitGOut,s6Step130ExitFOut,s6Step130ExitFvOut,s6Step130ExitGvOut],(shrinkRow 777 s6Step130ExitGExtra ++ (shrinkRow 795 s6Step130ExitFExtra ++ (shrinkRow 776 s6Step130ExitFvExtra ++ (shrinkRow 775 s6Step130ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step130ExitGvAfter [] []=some (s6Step130ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step130ExitGvBefore s6Step130ExitGvAfter s6Step130ExitGvAfter
    s6Step130ExitGvRow s6Step130ExitGvOut 79 [] [] [] []
    (shrinkRow 775 s6Step130ExitGvExtra) ([]) s6Step130ExitGv_Incoming s6Step130ExitGv_checked h4 s6Step130ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step130ExitFvBefore s6Step130ExitFvAfter s6Step130ExitGvAfter
    s6Step130ExitFvRow s6Step130ExitFvOut 79 [] [(s6Step130ExitGvRow,79)] [[]] [s6Step130ExitGvOut]
    (shrinkRow 776 s6Step130ExitFvExtra) ((shrinkRow 775 s6Step130ExitGvExtra ++ [])) s6Step130ExitFv_Incoming s6Step130ExitFv_checked h3 s6Step130ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step130ExitFBefore s6Step130ExitFAfter s6Step130ExitGvAfter
    s6Step130ExitFRow s6Step130ExitFOut 203 [] [(s6Step130ExitFvRow,79),(s6Step130ExitGvRow,79)] [[],[]] [s6Step130ExitFvOut,s6Step130ExitGvOut]
    (shrinkRow 795 s6Step130ExitFExtra) ((shrinkRow 776 s6Step130ExitFvExtra ++ (shrinkRow 775 s6Step130ExitGvExtra ++ []))) s6Step130ExitF_Incoming s6Step130ExitF_checked h2 s6Step130ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step130ExitGBefore s6Step130ExitGAfter s6Step130ExitGvAfter
    s6Step130ExitGRow s6Step130ExitGOut 203 [] [(s6Step130ExitFRow,203),(s6Step130ExitFvRow,79),(s6Step130ExitGvRow,79)] [[],[],[]] [s6Step130ExitFOut,s6Step130ExitFvOut,s6Step130ExitGvOut]
    (shrinkRow 777 s6Step130ExitGExtra) ((shrinkRow 795 s6Step130ExitFExtra ++ (shrinkRow 776 s6Step130ExitFvExtra ++ (shrinkRow 775 s6Step130ExitGvExtra ++ [])))) s6Step130ExitG_Incoming s6Step130ExitG_checked h1 s6Step130ExitG_Outgoing
  exact h0

private theorem s6Step130ExitBank_checked : compileHmrBankResizeLog .exit s6Step130ExitGBefore ⟨s6Step130ExitFRow,s6Step130ExitGRow,s6Step130ExitFvRow,s6Step130ExitGvRow⟩ ⟨203,203,79,79⟩ [[],[],[],[]]=
    some (s6Step130ExitGvAfter,⟨s6Step130ExitFOut,s6Step130ExitGOut,s6Step130ExitFvOut,s6Step130ExitGvOut⟩,(shrinkRow 777 s6Step130ExitGExtra ++ (shrinkRow 795 s6Step130ExitFExtra ++ (shrinkRow 776 s6Step130ExitFvExtra ++ (shrinkRow 775 s6Step130ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step130ExitBank_rows]
  rfl

private theorem s6Step130Add0_apart : Disjoint s6Step130Add0Arena.live s6Step130Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step130Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step130Add0_card : s6Step130Add0Arena.live.card=877 := by
  decide +kernel

private theorem s6Step130Add0_borrowed : s6Step130Add0Arena.checkBorrow (hmrHybridCount s6Step130Add0Arena s6Step130Add0B.length) s6Step130Add0Work=some s6Step130Add0During := by
  have len : s6Step130Add0Work.length=hmrHybridCount s6Step130Add0Arena s6Step130Add0B.length := by
    rw [hmrHybridCount,s6Step130Add0_card]
    decide +kernel
  have nd : s6Step130Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step130Add0Arena s6Step130Add0During s6Step130Add0Work.toFinset s6Step130Add0_bounded s6Step130Add0_apart rfl

private theorem s6Step130Add0_distinct : (850::839::879::(s6Step130Add0A++s6Step130Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step130Add0_owned : (850::839::879::(s6Step130Add0A++s6Step130Add0B)).toFinset⊆s6Step130Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step130Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step130Add0_checked : compileHmrHybridCinLog s6Step130Add0Arena 839 850 879 s6Step130Add0A s6Step130Add0B s6Step130Add0Work=some s6Step130Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step130Add0Arena s6Step130Add0During 839 850 879 s6Step130Add0A s6Step130Add0B s6Step130Add0Work
    (by decide +kernel) (by decide +kernel) s6Step130Add0_distinct
    (fun q hq => s6Step130Add0_owned (List.mem_toFinset.mpr hq)) s6Step130Add0_borrowed

private theorem s6Step130Add1_apart : Disjoint s6Step130Add1Arena.live s6Step130Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step130Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step130Add1_card : s6Step130Add1Arena.live.card=877 := by
  decide +kernel

private theorem s6Step130Add1_borrowed : s6Step130Add1Arena.checkBorrow (hmrHybridCount s6Step130Add1Arena s6Step130Add1B.length) s6Step130Add1Work=some s6Step130Add1During := by
  have len : s6Step130Add1Work.length=hmrHybridCount s6Step130Add1Arena s6Step130Add1B.length := by
    rw [hmrHybridCount,s6Step130Add1_card]
    decide +kernel
  have nd : s6Step130Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step130Add1Arena s6Step130Add1During s6Step130Add1Work.toFinset s6Step130Add1_bounded s6Step130Add1_apart rfl

private theorem s6Step130Add1_distinct : (850::839::879::(s6Step130Add1A++s6Step130Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step130Add1_owned : (850::839::879::(s6Step130Add1A++s6Step130Add1B)).toFinset⊆s6Step130Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step130Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step130Add1_checked : compileHmrHybridCinLog s6Step130Add1Arena 839 850 879 s6Step130Add1A s6Step130Add1B s6Step130Add1Work=some s6Step130Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step130Add1Arena s6Step130Add1During 839 850 879 s6Step130Add1A s6Step130Add1B s6Step130Add1Work
    (by decide +kernel) (by decide +kernel) s6Step130Add1_distinct
    (fun q hq => s6Step130Add1_owned (List.mem_toFinset.mpr hq)) s6Step130Add1_borrowed

private theorem s6Step130F4_apart : Disjoint (s6Step130Add0A++s6Step130Add0B).toFinset (s6Step130Add1A++s6Step130Add1B).toFinset := by
  have nd : ((s6Step130Add0A++s6Step130Add0B)++(s6Step130Add1A++s6Step130Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step130F4_carry : s6Step130F4FlagArena.checkBorrow 1 [879]=some s6Step130Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step130F4FlagArena,s6Step130HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step130F4FlagArena,s6Step130HeadFvAfter,s6Step130Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step130F4_distinct : (854::839::850::879::((s6Step130Add0A++s6Step130Add1A)++(s6Step130Add0B++s6Step130Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step130F4_flag : s6Step130HeadFvAfter.checkBorrow 1 [850]=some s6Step130F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step130HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step130F4_owned : (854::839::((s6Step130Add0A++s6Step130Add1A)++(s6Step130Add0B++s6Step130Add1B))).toFinset⊆s6Step130HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step130HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step130F4_checked : compileHmrHybridF4Log s6Step130HeadFvAfter 854 839 s6Step130Add0A s6Step130Add0B s6Step130Add1A s6Step130Add1B [850] [879] s6Step130Add0Work s6Step130Add1Work=some s6Step130F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step130HeadFvAfter s6Step130F4FlagArena s6Step130Add0Arena s6Step130Add0During s6Step130Add1During 854 839
    s6Step130Add0A s6Step130Add0B s6Step130Add1A s6Step130Add1B [850] [879] s6Step130Add0Work s6Step130Add1Work
    (fun q hq => s6Step130F4_owned (List.mem_toFinset.mpr hq)) s6Step130F4_flag s6Step130F4_carry
    s6Step130F4_distinct s6Step130F4_apart s6Step130Add0_checked s6Step130Add1_checked

private theorem s6Step130Front_branch : s6Step130FrontSigmaArena.checkBorrow 1 [839]=some s6Step130HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step130FrontSigmaArena,s6Step130EntryGvAfter,arenaWires]
  · change s6Step130HeadGBefore.live=(s6Step130EntryGvAfter.live∪{854})∪{839}
    apply hmrArena_union_pair_of_filter_check s6Step130EntryGvAfter s6Step130HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 854 839 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step130Front_entry : HmrFrontEntryValid s6Step130EntryFBefore s6Step130FrontBank 204 79 ⟨203,203,79,79⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step130FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step130EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step130EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step130FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step130Front_sigma : s6Step130EntryGvAfter.checkBorrow 1 [854]=some s6Step130FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step130EntryGvAfter,arenaWires]
  · rfl

private def s6Step130HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step130HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step130HeadFBefore : Arena := s6Step130HeadGAfter

private def s6Step130HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459],795⟩

private def s6Step130HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841],776⟩

private def s6Step130HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203],777⟩

private def s6Step130HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898],775⟩

private theorem s6Step130HeadBank_incomingDistinct : ([s6Step130HeadGRow,s6Step130HeadFRow,s6Step130HeadGvRow,s6Step130HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step130HeadF_Incoming : rowsOwned s6Step130HeadFBefore [s6Step130HeadFRow,s6Step130HeadGvRow,s6Step130HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step130HeadGRow,s6Step130HeadFRow,s6Step130HeadGvRow,s6Step130HeadFvRow] 1 s6Step130HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step130HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step130HeadBank_outgoingOwned : rowsOwned s6Step130HeadFvAfter [s6Step130HeadGOut,s6Step130HeadFOut,s6Step130HeadGvOut,s6Step130HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step130HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step130HeadF_Outgoing : rowsOwned s6Step130HeadFvAfter [s6Step130HeadFOut,s6Step130HeadGvOut,s6Step130HeadFvOut] :=
  hmrRows_owned_drop s6Step130HeadFvAfter [s6Step130HeadGOut,s6Step130HeadFOut,s6Step130HeadGvOut,s6Step130HeadFvOut] 1 s6Step130HeadBank_outgoingOwned

private theorem s6Step130HeadF_distinct : (s6Step130HeadFRow.sign::s6Step130HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step130HeadF_owned : (s6Step130HeadFRow.sign::s6Step130HeadFRow.payload).toFinset⊆s6Step130HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step130HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step130HeadF_reserved : s6Step130HeadFBefore.reserve s6Step130HeadFFresh.toFinset=some s6Step130HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step130HeadFFresh,arenaWires]
  · norm_num [s6Step130HeadFBefore,s6Step130HeadGAfter,s6Step130HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step130HeadFBefore s6Step130HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step130HeadFFresh rfl rfl
    · norm_num [s6Step130HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step130HeadF_checked : planRowResizeLog s6Step130HeadFBefore s6Step130HeadFRow 205 s6Step130HeadFFresh=
    some (s6Step130HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 822],795⟩,growRow 795 s6Step130HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step130HeadFBefore s6Step130HeadFAfter s6Step130HeadFRow 205 s6Step130HeadFFresh
    s6Step130HeadF_distinct s6Step130HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step130HeadF_reserved
  have rowEq : WindowRow.mk (s6Step130HeadFRow.payload++s6Step130HeadFFresh) s6Step130HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 822],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step130HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step130HeadFvBefore : Arena := s6Step130HeadGvAfter

private theorem s6Step130HeadFv_Incoming : rowsOwned s6Step130HeadFvBefore [s6Step130HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step130HeadGRow,s6Step130HeadFRow,s6Step130HeadGvRow,s6Step130HeadFvRow] 3 s6Step130HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step130HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step130HeadFv_Outgoing : rowsOwned s6Step130HeadFvAfter [s6Step130HeadFvOut] :=
  hmrRows_owned_drop s6Step130HeadFvAfter [s6Step130HeadGOut,s6Step130HeadFOut,s6Step130HeadGvOut,s6Step130HeadFvOut] 3 s6Step130HeadBank_outgoingOwned

private theorem s6Step130HeadFv_distinct : (s6Step130HeadFvRow.sign::s6Step130HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step130HeadFv_owned : (s6Step130HeadFvRow.sign::s6Step130HeadFvRow.payload).toFinset⊆s6Step130HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step130HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step130HeadFv_reserved : s6Step130HeadFvBefore.reserve s6Step130HeadFvFresh.toFinset=some s6Step130HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step130HeadFvFresh,arenaWires]
  · norm_num [s6Step130HeadFvBefore,s6Step130HeadGvAfter,s6Step130HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step130HeadFvAfter,s6Step130HeadFvBefore,s6Step130HeadGvAfter,s6Step130HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step130HeadFv_checked : planRowResizeLog s6Step130HeadFvBefore s6Step130HeadFvRow 80 s6Step130HeadFvFresh=
    some (s6Step130HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 833],776⟩,growRow 776 s6Step130HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step130HeadFvBefore s6Step130HeadFvAfter s6Step130HeadFvRow 80 s6Step130HeadFvFresh
    s6Step130HeadFv_distinct s6Step130HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step130HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step130HeadFvRow.payload++s6Step130HeadFvFresh) s6Step130HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 833],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step130HeadG_Incoming : rowsOwned s6Step130HeadGBefore [s6Step130HeadGRow,s6Step130HeadFRow,s6Step130HeadGvRow,s6Step130HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step130HeadGRow,s6Step130HeadFRow,s6Step130HeadGvRow,s6Step130HeadFvRow] 0 s6Step130HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step130HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step130HeadG_Outgoing : rowsOwned s6Step130HeadFvAfter [s6Step130HeadGOut,s6Step130HeadFOut,s6Step130HeadGvOut,s6Step130HeadFvOut] :=
  hmrRows_owned_drop s6Step130HeadFvAfter [s6Step130HeadGOut,s6Step130HeadFOut,s6Step130HeadGvOut,s6Step130HeadFvOut] 0 s6Step130HeadBank_outgoingOwned

private theorem s6Step130HeadG_distinct : (s6Step130HeadGRow.sign::s6Step130HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step130HeadG_owned : (s6Step130HeadGRow.sign::s6Step130HeadGRow.payload).toFinset⊆s6Step130HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step130HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step130HeadG_reserved : s6Step130HeadGBefore.reserve s6Step130HeadGFresh.toFinset=some s6Step130HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step130HeadGFresh,arenaWires]
  · norm_num [s6Step130HeadGBefore,s6Step130HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step130HeadGBefore s6Step130HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step130HeadGFresh rfl rfl
    · norm_num [s6Step130HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step130HeadG_checked : planRowResizeLog s6Step130HeadGBefore s6Step130HeadGRow 205 s6Step130HeadGFresh=
    some (s6Step130HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 813],777⟩,growRow 777 s6Step130HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step130HeadGBefore s6Step130HeadGAfter s6Step130HeadGRow 205 s6Step130HeadGFresh
    s6Step130HeadG_distinct s6Step130HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step130HeadG_reserved
  have rowEq : WindowRow.mk (s6Step130HeadGRow.payload++s6Step130HeadGFresh) s6Step130HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 813],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step130HeadGvBefore : Arena := s6Step130HeadFAfter

private theorem s6Step130HeadGv_Incoming : rowsOwned s6Step130HeadGvBefore [s6Step130HeadGvRow,s6Step130HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step130HeadGRow,s6Step130HeadFRow,s6Step130HeadGvRow,s6Step130HeadFvRow] 2 s6Step130HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step130HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step130HeadGv_Outgoing : rowsOwned s6Step130HeadFvAfter [s6Step130HeadGvOut,s6Step130HeadFvOut] :=
  hmrRows_owned_drop s6Step130HeadFvAfter [s6Step130HeadGOut,s6Step130HeadFOut,s6Step130HeadGvOut,s6Step130HeadFvOut] 2 s6Step130HeadBank_outgoingOwned

private theorem s6Step130HeadGv_distinct : (s6Step130HeadGvRow.sign::s6Step130HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step130HeadGv_owned : (s6Step130HeadGvRow.sign::s6Step130HeadGvRow.payload).toFinset⊆s6Step130HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step130HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step130HeadGv_reserved : s6Step130HeadGvBefore.reserve s6Step130HeadGvFresh.toFinset=some s6Step130HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step130HeadGvFresh,arenaWires]
  · norm_num [s6Step130HeadGvBefore,s6Step130HeadFAfter,s6Step130HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step130HeadGvAfter,s6Step130HeadGvBefore,s6Step130HeadFAfter,s6Step130HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step130HeadGv_checked : planRowResizeLog s6Step130HeadGvBefore s6Step130HeadGvRow 80 s6Step130HeadGvFresh=
    some (s6Step130HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 838],775⟩,growRow 775 s6Step130HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step130HeadGvBefore s6Step130HeadGvAfter s6Step130HeadGvRow 80 s6Step130HeadGvFresh
    s6Step130HeadGv_distinct s6Step130HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step130HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step130HeadGvRow.payload++s6Step130HeadGvFresh) s6Step130HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 838],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step130HeadBank_rows : planWindowRowsLog s6Step130HeadGBefore [(s6Step130HeadGRow,205),(s6Step130HeadFRow,205),(s6Step130HeadGvRow,80),(s6Step130HeadFvRow,80)] [s6Step130HeadGFresh,s6Step130HeadFFresh,s6Step130HeadGvFresh,s6Step130HeadFvFresh]=
    some (s6Step130HeadFvAfter,[s6Step130HeadGOut,s6Step130HeadFOut,s6Step130HeadGvOut,s6Step130HeadFvOut],(growRow 777 s6Step130HeadGFresh ++ (growRow 795 s6Step130HeadFFresh ++ (growRow 775 s6Step130HeadGvFresh ++ (growRow 776 s6Step130HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step130HeadFvAfter [] []=some (s6Step130HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step130HeadFvBefore s6Step130HeadFvAfter s6Step130HeadFvAfter
    s6Step130HeadFvRow s6Step130HeadFvOut 80 s6Step130HeadFvFresh [] [] []
    (growRow 776 s6Step130HeadFvFresh) ([]) s6Step130HeadFv_Incoming s6Step130HeadFv_checked h4 s6Step130HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step130HeadGvBefore s6Step130HeadGvAfter s6Step130HeadFvAfter
    s6Step130HeadGvRow s6Step130HeadGvOut 80 s6Step130HeadGvFresh [(s6Step130HeadFvRow,80)] [s6Step130HeadFvFresh] [s6Step130HeadFvOut]
    (growRow 775 s6Step130HeadGvFresh) ((growRow 776 s6Step130HeadFvFresh ++ [])) s6Step130HeadGv_Incoming s6Step130HeadGv_checked h3 s6Step130HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step130HeadFBefore s6Step130HeadFAfter s6Step130HeadFvAfter
    s6Step130HeadFRow s6Step130HeadFOut 205 s6Step130HeadFFresh [(s6Step130HeadGvRow,80),(s6Step130HeadFvRow,80)] [s6Step130HeadGvFresh,s6Step130HeadFvFresh] [s6Step130HeadGvOut,s6Step130HeadFvOut]
    (growRow 795 s6Step130HeadFFresh) ((growRow 775 s6Step130HeadGvFresh ++ (growRow 776 s6Step130HeadFvFresh ++ []))) s6Step130HeadF_Incoming s6Step130HeadF_checked h2 s6Step130HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step130HeadGBefore s6Step130HeadGAfter s6Step130HeadFvAfter
    s6Step130HeadGRow s6Step130HeadGOut 205 s6Step130HeadGFresh [(s6Step130HeadFRow,205),(s6Step130HeadGvRow,80),(s6Step130HeadFvRow,80)] [s6Step130HeadFFresh,s6Step130HeadGvFresh,s6Step130HeadFvFresh] [s6Step130HeadFOut,s6Step130HeadGvOut,s6Step130HeadFvOut]
    (growRow 777 s6Step130HeadGFresh) ((growRow 795 s6Step130HeadFFresh ++ (growRow 775 s6Step130HeadGvFresh ++ (growRow 776 s6Step130HeadFvFresh ++ [])))) s6Step130HeadG_Incoming s6Step130HeadG_checked h1 s6Step130HeadG_Outgoing
  exact h0

private theorem s6Step130HeadBank_checked : compileHmrBankResizeLog .headroom s6Step130HeadGBefore ⟨s6Step130HeadFRow,s6Step130HeadGRow,s6Step130HeadFvRow,s6Step130HeadGvRow⟩ ⟨205,205,80,80⟩ [s6Step130HeadGFresh,s6Step130HeadFFresh,s6Step130HeadGvFresh,s6Step130HeadFvFresh]=
    some (s6Step130HeadFvAfter,⟨s6Step130HeadFOut,s6Step130HeadGOut,s6Step130HeadFvOut,s6Step130HeadGvOut⟩,(growRow 777 s6Step130HeadGFresh ++ (growRow 795 s6Step130HeadFFresh ++ (growRow 775 s6Step130HeadGvFresh ++ (growRow 776 s6Step130HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step130HeadBank_rows]
  rfl

private theorem s6Step130Front_checked : compileHmrSourceFrontLog s6Step130EntryFBefore s6Step130FrontBank 204 79 ⟨203,203,79,79⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step130FrontLog=some s6Step130FrontPlan := by
  have pairEq : s6Step130FrontPair=⟨s6Step130HeadFRow,s6Step130HeadGRow,s6Step130HeadFvRow,s6Step130HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step130FrontHead=⟨s6Step130ExitFRow,s6Step130ExitGRow,s6Step130ExitFvRow,s6Step130ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step130Add0A=s6Step130FrontHead.f.wires := by decide +kernel
  have gEq : s6Step130Add0B=s6Step130FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step130Add1A=s6Step130FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step130Add1B=s6Step130FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step130EntryFBefore s6Step130FrontBank 204 79 ⟨203,203,79,79⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step130FrontLog s6Step130FrontPlan
  · exact s6Step130Front_entry
  · exact s6Step130EntryBank_checked
  · exact s6Step130Front_sigma
  · rfl
  · exact s6Step130Front_branch
  · rfl
  · simpa only [s6Step130FrontPlan,pairEq] using s6Step130HeadBank_checked
  · simpa only [s6Step130FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step130F4_checked
  · exact s6Step130Counter_checked
  · rfl
  · simpa only [s6Step130FrontPlan,headEq] using s6Step130ExitBank_checked

private theorem s6Step130Complete_explicit_checked : compileHmrEarlyStepLog s6Step130EntryFBefore s6Step130FrontBank 204 79 ⟨203,203,79,79⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step130CompleteLog=some s6Step130CompletePlan := by
  let Q := s6Step130EarlyControlPlan
  have hq := s6Step130EarlyControl_plan_checked
  have fv1 : s6Step130CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step130CompleteOut.fv.payload[2]?.getD s6Step130CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step130CompleteOut.fv.payload[3]?.getD s6Step130CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step130CompleteOut.fv.payload[4]?.getD s6Step130CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step130EntryFBefore s6Step130EarlyControlArena s6Step130FrontBank 204 79 ⟨203,203,79,79⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step130CompleteLog s6Step130FrontPlan Q
    s6Step130Front_checked s6Step130Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step130Complete_owned s6Step130Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step130EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 854 s6Step130CompleteOut.fv.second (s6Step130CompleteOut.fv.payload[2]?.getD s6Step130CompleteOut.fv.sign) (s6Step130CompleteOut.fv.payload[3]?.getD s6Step130CompleteOut.fv.sign) (s6Step130CompleteOut.fv.payload[4]?.getD s6Step130CompleteOut.fv.sign) 839 37 s6Step130EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep130Arena : Arena := s6Step130EntryFBefore
def s6PrivateStep130Bank : WindowBank := s6Step130FrontBank
def s6PrivateStep130Spec : HmrSourceWalkStepLog := ⟨204,79,⟨203,203,79,79⟩,37,.early s6Step130CompleteLog⟩
def s6PrivateStep130Plan : HmrSourceStepPlan := .early s6Step130CompletePlan
theorem s6PrivateStep130_source : s6PrivateStep130Spec=s6ObservedLogs128[2] := rfl
theorem s6PrivateStep130_checked : compileHmrSourceStepLog s6PrivateStep130Arena s6PrivateStep130Bank
    s6PrivateStep130Spec.fgWidth s6PrivateStep130Spec.vWidth s6PrivateStep130Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]
    6 498 130 s6PrivateStep130Spec.need none s6PrivateStep130Spec.log=some s6PrivateStep130Plan := by
  change compileHmrSourceStepLog s6Step130EntryFBefore s6Step130FrontBank 204 79 ⟨203,203,79,79⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 6 498 130 37 none (.early s6Step130CompleteLog)=some (.early s6Step130CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 130<498)]
  rw [s6Step130Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
