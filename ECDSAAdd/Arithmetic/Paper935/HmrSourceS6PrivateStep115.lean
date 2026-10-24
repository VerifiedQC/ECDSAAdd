import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep113
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

private def s6Step115CompleteMoves : List (Wire × Wire) := []

private def s6Step115EarlyControlLog : HmrEarlyControlLog := ⟨[882, 868, 907, 803, 813],[879],[865],[796, 891, 903, 791, 825, 836],[]⟩

private def s6Step115FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [907], [], [886]],[[803], [868], [882], [864]],[[], [], [], []]⟩,[823],[880],[813],[879],[865, 796, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[865, 796, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[813, 879, 865, 796]⟩

private def s6Step115CompleteLog : HmrEarlyStepLog := ⟨s6Step115FrontLog,s6Step115CompleteMoves,s6Step115EarlyControlLog⟩

private def s6Step115ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467],795⟩

private def s6Step115ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864],776⟩

private def s6Step115ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210],777⟩

private def s6Step115ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886],775⟩

private def s6Step115FrontOut : WindowBank := ⟨s6Step115ExitFOut,s6Step115ExitGOut,s6Step115ExitFvOut,s6Step115ExitGvOut⟩

private def s6Step115CompleteOut : WindowBank := s6Step115FrontOut.repacked s6Step115CompleteMoves

private def s6Step115EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step115EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step115EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step115EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step115EarlyControlPositiveArena,[879],s6Step115EarlyControlEqualityArena,[865],⟨⟨823,false⟩,[⟨⟨879,false⟩,865⟩]⟩⟩

private def s6Step115EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step115EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step115EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step115EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step115EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step115EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step115EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,882⟩,⟨⟨772,false⟩,868⟩,⟨⟨771,false⟩,907⟩,⟨⟨770,false⟩,803⟩,⟨⟨769,false⟩,813⟩]⟩

private def s6Step115EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step115EarlyControlZeroArena,s6Step115EarlyControlZeroPlan,s6Step115EarlyControlClassPlan,s6Step115EarlyControlFlagArena,s6Step115EarlyControlFittedArena,s6Step115EarlyControlHistoryArena,s6Step115EarlyControlSigmaArena,s6Step115EarlyControlOutputArena,s6Step115EarlyControlLog⟩

private def s6Step115CounterWork : List Wire := [813, 879, 865, 796]

private theorem s6Step115Counter_bounded : s6Step115CounterWork.toFinset⊆arenaWires := by norm_num [s6Step115CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step115HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step115CounterDuring : Arena := ⟨s6Step115HeadFvAfter.live∪s6Step115CounterWork.toFinset,Finset.union_subset s6Step115HeadFvAfter.bounded s6Step115Counter_bounded⟩

private def s6Step115EntryFFresh : List Wire := []

private def s6Step115EntryFvFresh : List Wire := []

private def s6Step115EntryGFresh : List Wire := [907]

private def s6Step115EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step115EntryGvFresh : List Wire := [886]

private def s6Step115ExitFExtra : List Wire := [868]

private def s6Step115ExitGExtra : List Wire := [907, 803]

private def s6Step115ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step115ExitGvExtra : List Wire := [882]

private def s6Step115Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step115Add0Work : List Wire := [865, 796, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step115Add0_bounded : s6Step115Add0Work.toFinset⊆arenaWires := by
  have h : s6Step115Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step115Add0During : Arena := ⟨s6Step115Add0Arena.live∪s6Step115Add0Work.toFinset,Finset.union_subset s6Step115Add0Arena.bounded s6Step115Add0_bounded⟩

private def s6Step115Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step115Add1Work : List Wire := [865, 796, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step115Add1_bounded : s6Step115Add1Work.toFinset⊆arenaWires := by
  have h : s6Step115Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step115Add1During : Arena := ⟨s6Step115Add1Arena.live∪s6Step115Add1Work.toFinset,Finset.union_subset s6Step115Add1Arena.bounded s6Step115Add1_bounded⟩

private def s6Step115F4FlagArena : Arena := ⟨s6Step115HeadFvAfter.live∪{813},Finset.union_subset s6Step115HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step115F4Plan : HmrHybridF4Plan := ⟨s6Step115F4FlagArena,[813],s6Step115Add0Arena,[879],s6Step115Add0During,s6Step115Add0Work,s6Step115Add1During,s6Step115Add1Work⟩

private def s6Step115HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 868],795⟩

private def s6Step115HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864],776⟩

private def s6Step115HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 907, 803],777⟩

private def s6Step115HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 882],775⟩

private def s6Step115FrontHead : WindowBank := ⟨s6Step115HeadFOut,s6Step115HeadGOut,s6Step115HeadFvOut,s6Step115HeadGvOut⟩

private def s6Step115EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467],795⟩

private def s6Step115EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892],776⟩

private def s6Step115EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 907],777⟩

private def s6Step115EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886],775⟩

private def s6Step115FrontPair : WindowBank := ⟨s6Step115EntryFOut,s6Step115EntryGOut,s6Step115EntryFvOut,s6Step115EntryGvOut⟩

private def s6Step115FrontSigmaArena : Arena := ⟨s6Step115EntryGvAfter.live∪{823},Finset.union_subset s6Step115EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step115HeadFFresh : List Wire := [868]

private def s6Step115HeadFvFresh : List Wire := [864]

private def s6Step115HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step115HeadGFresh : List Wire := [803]

private def s6Step115HeadGvFresh : List Wire := [882]

private def s6Step115FrontPlan : HmrSourceFront := ⟨s6Step115EntryGvAfter,s6Step115FrontPair,(growRow 795 s6Step115EntryFFresh ++ (growRow 777 s6Step115EntryGFresh ++ (growRow 776 s6Step115EntryFvFresh ++ (growRow 775 s6Step115EntryGvFresh ++ [])))),s6Step115FrontSigmaArena,[823],s6Step115HeadGBefore,[880],
  s6Step115HeadFvAfter,s6Step115FrontHead,(growRow 777 s6Step115HeadGFresh ++ (growRow 795 s6Step115HeadFFresh ++ (growRow 775 s6Step115HeadGvFresh ++ (growRow 776 s6Step115HeadFvFresh ++ [])))),s6Step115F4Plan,s6Step115CounterDuring,s6Step115CounterWork,s6Step115ExitGvAfter,s6Step115FrontOut,(shrinkRow 777 s6Step115ExitGExtra ++ (shrinkRow 795 s6Step115ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step115ExitGvExtra ++ []))))⟩

private def s6Step115CompletePlan : HmrEarlyStepPlan := ⟨s6Step115FrontPlan,s6Step115EarlyControlArena,s6Step115EarlyControlPlan,s6Step115CompleteMoves⟩

private theorem s6Step115Complete_apart : List.Disjoint (s6Step115CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [823, 880, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] := by
  have nd : ((s6Step115CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[823, 880, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step115Complete_owned : (s6Step115CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step115EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step115EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step115Complete_repack : s6Step115ExitGvAfter.checkRepack s6Step115CompleteMoves=some s6Step115EarlyControlArena := by rfl

private theorem s6Step115EarlyControl_branchOwned : ([880] : List Wire).toFinset⊆s6Step115EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step115EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step115EarlyControl_branch : compileHmrBranchRetirement s6Step115EarlyControlSigmaArena 880=some s6Step115EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step115EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step115EarlyControlSigmaArena s6Step115EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [880] rfl rfl
    decide +kernel

private theorem s6Step115EarlyControl_classEqualityBorrow : s6Step115EarlyControlPositiveArena.checkBorrow (([823, 879] : List Wire).length-1) s6Step115EarlyControlLog.classWork=some s6Step115EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step115EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step115EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step115EarlyControlEqualityArena,s6Step115EarlyControlPositiveArena,s6Step115EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step115EarlyControl_classEqualityOwned : ([823, 879] : List Wire).toFinset⊆s6Step115EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step115EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step115EarlyControl_classEquality : compileHmrEqualityLog s6Step115EarlyControlPositiveArena [823, 879] 0 s6Step115EarlyControlLog.classWork=some (s6Step115EarlyControlEqualityArena,s6Step115EarlyControlLog.classWork,s6Step115EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step115EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step115EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step115EarlyControl_classOwned : ([769, 813, 823] : List Wire).toFinset⊆s6Step115EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step115EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step115EarlyControl_positiveBorrow : s6Step115EarlyControlZeroArena.checkBorrow (1) s6Step115EarlyControlLog.positiveWork=some s6Step115EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step115EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step115EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step115EarlyControlPositiveArena,s6Step115EarlyControlZeroArena,s6Step115EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step115EarlyControl_class : compileHmrSourceClassLog s6Step115EarlyControlZeroArena false 769 s6Step115EarlyControlZeroPlan.top 0 823 s6Step115EarlyControlLog.positiveWork s6Step115EarlyControlLog.classWork=some s6Step115EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step115EarlyControlClassPlan s6Step115EarlyControlZeroArena false 769 s6Step115EarlyControlZeroPlan.top 0 823
  constructor
  · decide +kernel
  · exact s6Step115EarlyControl_classOwned
  · exact s6Step115EarlyControl_positiveBorrow
  · exact s6Step115EarlyControl_classEquality

private theorem s6Step115EarlyControl_entryRecordOwned : ([880, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step115EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step115EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step115EarlyControl_entrySigmaOwned : ([823, 254] : List Wire).toFinset⊆s6Step115EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step115EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step115EarlyControl_fitBorrow : s6Step115EarlyControlFlagArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step115EarlyControlLog.recordFresh=some s6Step115EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step115EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step115EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step115EarlyControlFittedArena,s6Step115EarlyControlFlagArena,s6Step115EarlyControlLog,arenaWires]

private theorem s6Step115EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step115EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step115EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step115EarlyControl_fit : compileHmrRecordGrowLog s6Step115EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step115EarlyControlLog.recordFresh=some s6Step115EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step115EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step115EarlyControl_fitBorrow

private theorem s6Step115EarlyControl_flagsBorrow : s6Step115EarlyControlEqualityArena.checkBorrow (6) s6Step115EarlyControlLog.flagWork=some s6Step115EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step115EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step115EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step115EarlyControlFlagArena,s6Step115EarlyControlEqualityArena,s6Step115EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step115EarlyControl_flagsOwned : ([865, 253, 252, 251] : List Wire).toFinset⊆s6Step115EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step115EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step115EarlyControl_flags : compileHmrFlagsLog s6Step115EarlyControlClassPlan.equalityArena s6Step115EarlyControlClassPlan.equality.top 253 252 251 s6Step115EarlyControlLog.flagWork=some s6Step115EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step115EarlyControl_flagsOwned⟩
  · exact s6Step115EarlyControl_flagsBorrow

private theorem s6Step115EarlyControl_historyBorrow : s6Step115EarlyControlArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step115EarlyControlLog.recordFresh=some s6Step115EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step115EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step115EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step115EarlyControlArena s6Step115EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step115EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step115EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step115EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step115EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step115EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step115EarlyControl_history : compileHmrRecordGrowLog s6Step115EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step115EarlyControlLog.recordFresh=some s6Step115EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step115EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step115EarlyControl_historyBorrow

private theorem s6Step115EarlyControl_sigmaOwned : ([254, 823] : List Wire).toFinset⊆s6Step115EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step115EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step115EarlyControl_sigmaReleaseOwned : ([823] : List Wire).toFinset⊆s6Step115EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step115EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step115EarlyControl_sigmaRelease : s6Step115EarlyControlHistoryArena.release {823} (fun _ => false)=some s6Step115EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step115EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step115EarlyControlHistoryArena s6Step115EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [823] rfl rfl
    decide +kernel

private theorem s6Step115EarlyControl_sigma : compileHmrSigmaDropLog s6Step115EarlyControlHistoryArena false 0 0 254 823 []=some s6Step115EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step115EarlyControl_sigmaOwned⟩
  · exact s6Step115EarlyControl_sigmaRelease

private theorem s6Step115EarlyControl_zeroBorrow : s6Step115EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step115EarlyControlLog.zeroWork=some s6Step115EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step115EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step115EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step115EarlyControlArena s6Step115EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step115EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step115EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step115EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step115EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step115EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step115EarlyControl_zero : compileHmrEqualityLog s6Step115EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step115EarlyControlLog.zeroWork=some (s6Step115EarlyControlZeroArena,s6Step115EarlyControlLog.zeroWork,s6Step115EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step115EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step115EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step115EarlyControl_logged : s6Step115EarlyControlPlan.Logged s6Step115EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 823 254 253 252 251 880 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step115EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step115EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step115EarlyControl_zero
  · exact s6Step115EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step115EarlyControl_flags
  · exact s6Step115EarlyControl_fit
  · exact s6Step115EarlyControl_history
  · exact s6Step115EarlyControl_sigma
  · exact s6Step115EarlyControl_branch

private theorem s6Step115EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step115EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 823 254 253 252 251 880 37 s6Step115EarlyControlLog=some s6Step115EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step115EarlyControlPlan s6Step115EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 823 254 253 252 251 880 37 s6Step115EarlyControl_logged

private def s6Step115EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step115EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467],795⟩

private def s6Step115EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892],776⟩

private def s6Step115EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210],777⟩

private def s6Step115EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793],775⟩

private def s6Step115FrontBank : WindowBank := ⟨s6Step115EntryFRow,s6Step115EntryGRow,s6Step115EntryFvRow,s6Step115EntryGvRow⟩

private def s6Step115Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 868, 795]

private def s6Step115Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 907, 803, 777]

private def s6Step115Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 776]

private def s6Step115Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 882, 775]

private theorem s6Step115Counter_apart : Disjoint s6Step115HeadFvAfter.live s6Step115CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step115HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step115Counter_borrowed : s6Step115HeadFvAfter.checkBorrow 4 s6Step115CounterWork=some s6Step115CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step115HeadFvAfter s6Step115CounterDuring s6Step115CounterWork.toFinset s6Step115Counter_bounded s6Step115Counter_apart rfl

private theorem s6Step115Counter_owned : (823::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step115HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step115HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step115Counter_checked : compileHmrCounterStepLog s6Step115HeadFvAfter true 823 [774, 773, 772, 771, 770, 769] s6Step115CounterWork=some s6Step115CounterDuring := by
  have owned : ∀q∈823::[774, 773, 772, 771, 770, 769],q∈s6Step115HeadFvAfter.live := fun q hq => s6Step115Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step115Counter_borrowed

private def s6Step115EntryFAfter : Arena := s6Step115EntryFBefore

private theorem s6Step115EntryBank_incomingDistinct : ([s6Step115EntryFRow,s6Step115EntryGRow,s6Step115EntryFvRow,s6Step115EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step115EntryF_Incoming : rowsOwned s6Step115EntryFBefore [s6Step115EntryFRow,s6Step115EntryGRow,s6Step115EntryFvRow,s6Step115EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step115EntryFRow,s6Step115EntryGRow,s6Step115EntryFvRow,s6Step115EntryGvRow] 0 s6Step115EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step115EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step115EntryBank_outgoingOwned : rowsOwned s6Step115EntryGvAfter [s6Step115EntryFOut,s6Step115EntryGOut,s6Step115EntryFvOut,s6Step115EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step115EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step115EntryF_Outgoing : rowsOwned s6Step115EntryGvAfter [s6Step115EntryFOut,s6Step115EntryGOut,s6Step115EntryFvOut,s6Step115EntryGvOut] :=
  hmrRows_owned_drop s6Step115EntryGvAfter [s6Step115EntryFOut,s6Step115EntryGOut,s6Step115EntryFvOut,s6Step115EntryGvOut] 0 s6Step115EntryBank_outgoingOwned

private theorem s6Step115EntryF_distinct : (s6Step115EntryFRow.sign::s6Step115EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step115EntryF_owned : (s6Step115EntryFRow.sign::s6Step115EntryFRow.payload).toFinset⊆s6Step115EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step115EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step115EntryF_reserved : s6Step115EntryFBefore.reserve s6Step115EntryFFresh.toFinset=some s6Step115EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step115EntryFFresh,arenaWires]
  · norm_num [s6Step115EntryFBefore,s6Step115EntryFFresh,arenaWires]
  · simp only [s6Step115EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step115EntryF_checked : planRowResizeLog s6Step115EntryFBefore s6Step115EntryFRow 212 s6Step115EntryFFresh=
    some (s6Step115EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467],795⟩,growRow 795 s6Step115EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step115EntryFBefore s6Step115EntryFAfter s6Step115EntryFRow 212 s6Step115EntryFFresh
    s6Step115EntryF_distinct s6Step115EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step115EntryF_reserved
  have rowEq : WindowRow.mk (s6Step115EntryFRow.payload++s6Step115EntryFFresh) s6Step115EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step115EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step115EntryFvAfter : Arena := s6Step115EntryGAfter

private def s6Step115EntryFvBefore : Arena := s6Step115EntryGAfter

private theorem s6Step115EntryFv_Incoming : rowsOwned s6Step115EntryFvBefore [s6Step115EntryFvRow,s6Step115EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step115EntryFRow,s6Step115EntryGRow,s6Step115EntryFvRow,s6Step115EntryGvRow] 2 s6Step115EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step115EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step115EntryFv_Outgoing : rowsOwned s6Step115EntryGvAfter [s6Step115EntryFvOut,s6Step115EntryGvOut] :=
  hmrRows_owned_drop s6Step115EntryGvAfter [s6Step115EntryFOut,s6Step115EntryGOut,s6Step115EntryFvOut,s6Step115EntryGvOut] 2 s6Step115EntryBank_outgoingOwned

private theorem s6Step115EntryFv_distinct : (s6Step115EntryFvRow.sign::s6Step115EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step115EntryFv_owned : (s6Step115EntryFvRow.sign::s6Step115EntryFvRow.payload).toFinset⊆s6Step115EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step115EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step115EntryFv_reserved : s6Step115EntryFvBefore.reserve s6Step115EntryFvFresh.toFinset=some s6Step115EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step115EntryFvFresh,arenaWires]
  · norm_num [s6Step115EntryFvBefore,s6Step115EntryGAfter,s6Step115EntryFvFresh,arenaWires]
  · simp only [s6Step115EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step115EntryFv_checked : planRowResizeLog s6Step115EntryFvBefore s6Step115EntryFvRow 71 s6Step115EntryFvFresh=
    some (s6Step115EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892],776⟩,growRow 776 s6Step115EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step115EntryFvBefore s6Step115EntryFvAfter s6Step115EntryFvRow 71 s6Step115EntryFvFresh
    s6Step115EntryFv_distinct s6Step115EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step115EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step115EntryFvRow.payload++s6Step115EntryFvFresh) s6Step115EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step115EntryGBefore : Arena := s6Step115EntryFBefore

private theorem s6Step115EntryG_Incoming : rowsOwned s6Step115EntryGBefore [s6Step115EntryGRow,s6Step115EntryFvRow,s6Step115EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step115EntryFRow,s6Step115EntryGRow,s6Step115EntryFvRow,s6Step115EntryGvRow] 1 s6Step115EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step115EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step115EntryG_Outgoing : rowsOwned s6Step115EntryGvAfter [s6Step115EntryGOut,s6Step115EntryFvOut,s6Step115EntryGvOut] :=
  hmrRows_owned_drop s6Step115EntryGvAfter [s6Step115EntryFOut,s6Step115EntryGOut,s6Step115EntryFvOut,s6Step115EntryGvOut] 1 s6Step115EntryBank_outgoingOwned

private theorem s6Step115EntryG_distinct : (s6Step115EntryGRow.sign::s6Step115EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step115EntryG_owned : (s6Step115EntryGRow.sign::s6Step115EntryGRow.payload).toFinset⊆s6Step115EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step115EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step115EntryG_reserved : s6Step115EntryGBefore.reserve s6Step115EntryGFresh.toFinset=some s6Step115EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step115EntryGFresh,arenaWires]
  · norm_num [s6Step115EntryGBefore,s6Step115EntryFBefore,s6Step115EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step115EntryGBefore s6Step115EntryGAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step115EntryGFresh rfl rfl
    · norm_num [s6Step115EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step115EntryG_checked : planRowResizeLog s6Step115EntryGBefore s6Step115EntryGRow 212 s6Step115EntryGFresh=
    some (s6Step115EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 907],777⟩,growRow 777 s6Step115EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step115EntryGBefore s6Step115EntryGAfter s6Step115EntryGRow 212 s6Step115EntryGFresh
    s6Step115EntryG_distinct s6Step115EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step115EntryG_reserved
  have rowEq : WindowRow.mk (s6Step115EntryGRow.payload++s6Step115EntryGFresh) s6Step115EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 907],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step115EntryGvBefore : Arena := s6Step115EntryGAfter

private theorem s6Step115EntryGv_Incoming : rowsOwned s6Step115EntryGvBefore [s6Step115EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step115EntryFRow,s6Step115EntryGRow,s6Step115EntryFvRow,s6Step115EntryGvRow] 3 s6Step115EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step115EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step115EntryGv_Outgoing : rowsOwned s6Step115EntryGvAfter [s6Step115EntryGvOut] :=
  hmrRows_owned_drop s6Step115EntryGvAfter [s6Step115EntryFOut,s6Step115EntryGOut,s6Step115EntryFvOut,s6Step115EntryGvOut] 3 s6Step115EntryBank_outgoingOwned

private theorem s6Step115EntryGv_distinct : (s6Step115EntryGvRow.sign::s6Step115EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step115EntryGv_owned : (s6Step115EntryGvRow.sign::s6Step115EntryGvRow.payload).toFinset⊆s6Step115EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step115EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step115EntryGv_reserved : s6Step115EntryGvBefore.reserve s6Step115EntryGvFresh.toFinset=some s6Step115EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step115EntryGvFresh,arenaWires]
  · norm_num [s6Step115EntryGvBefore,s6Step115EntryGAfter,s6Step115EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step115EntryGvBefore s6Step115EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step115EntryGvFresh rfl rfl
    · norm_num [s6Step115EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step115EntryGv_checked : planRowResizeLog s6Step115EntryGvBefore s6Step115EntryGvRow 71 s6Step115EntryGvFresh=
    some (s6Step115EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886],775⟩,growRow 775 s6Step115EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step115EntryGvBefore s6Step115EntryGvAfter s6Step115EntryGvRow 71 s6Step115EntryGvFresh
    s6Step115EntryGv_distinct s6Step115EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step115EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step115EntryGvRow.payload++s6Step115EntryGvFresh) s6Step115EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step115EntryBank_rows : planWindowRowsLog s6Step115EntryFBefore [(s6Step115EntryFRow,212),(s6Step115EntryGRow,212),(s6Step115EntryFvRow,71),(s6Step115EntryGvRow,71)] [s6Step115EntryFFresh,s6Step115EntryGFresh,s6Step115EntryFvFresh,s6Step115EntryGvFresh]=
    some (s6Step115EntryGvAfter,[s6Step115EntryFOut,s6Step115EntryGOut,s6Step115EntryFvOut,s6Step115EntryGvOut],(growRow 795 s6Step115EntryFFresh ++ (growRow 777 s6Step115EntryGFresh ++ (growRow 776 s6Step115EntryFvFresh ++ (growRow 775 s6Step115EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step115EntryGvAfter [] []=some (s6Step115EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step115EntryGvBefore s6Step115EntryGvAfter s6Step115EntryGvAfter
    s6Step115EntryGvRow s6Step115EntryGvOut 71 s6Step115EntryGvFresh [] [] []
    (growRow 775 s6Step115EntryGvFresh) ([]) s6Step115EntryGv_Incoming s6Step115EntryGv_checked h4 s6Step115EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step115EntryFvBefore s6Step115EntryFvAfter s6Step115EntryGvAfter
    s6Step115EntryFvRow s6Step115EntryFvOut 71 s6Step115EntryFvFresh [(s6Step115EntryGvRow,71)] [s6Step115EntryGvFresh] [s6Step115EntryGvOut]
    (growRow 776 s6Step115EntryFvFresh) ((growRow 775 s6Step115EntryGvFresh ++ [])) s6Step115EntryFv_Incoming s6Step115EntryFv_checked h3 s6Step115EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step115EntryGBefore s6Step115EntryGAfter s6Step115EntryGvAfter
    s6Step115EntryGRow s6Step115EntryGOut 212 s6Step115EntryGFresh [(s6Step115EntryFvRow,71),(s6Step115EntryGvRow,71)] [s6Step115EntryFvFresh,s6Step115EntryGvFresh] [s6Step115EntryFvOut,s6Step115EntryGvOut]
    (growRow 777 s6Step115EntryGFresh) ((growRow 776 s6Step115EntryFvFresh ++ (growRow 775 s6Step115EntryGvFresh ++ []))) s6Step115EntryG_Incoming s6Step115EntryG_checked h2 s6Step115EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step115EntryFBefore s6Step115EntryFAfter s6Step115EntryGvAfter
    s6Step115EntryFRow s6Step115EntryFOut 212 s6Step115EntryFFresh [(s6Step115EntryGRow,212),(s6Step115EntryFvRow,71),(s6Step115EntryGvRow,71)] [s6Step115EntryGFresh,s6Step115EntryFvFresh,s6Step115EntryGvFresh] [s6Step115EntryGOut,s6Step115EntryFvOut,s6Step115EntryGvOut]
    (growRow 795 s6Step115EntryFFresh) ((growRow 777 s6Step115EntryGFresh ++ (growRow 776 s6Step115EntryFvFresh ++ (growRow 775 s6Step115EntryGvFresh ++ [])))) s6Step115EntryF_Incoming s6Step115EntryF_checked h1 s6Step115EntryF_Outgoing
  exact h0

private theorem s6Step115EntryBank_checked : compileHmrBankResizeLog .entry s6Step115EntryFBefore ⟨s6Step115EntryFRow,s6Step115EntryGRow,s6Step115EntryFvRow,s6Step115EntryGvRow⟩ ⟨212,212,71,71⟩ [s6Step115EntryFFresh,s6Step115EntryGFresh,s6Step115EntryFvFresh,s6Step115EntryGvFresh]=
    some (s6Step115EntryGvAfter,⟨s6Step115EntryFOut,s6Step115EntryGOut,s6Step115EntryFvOut,s6Step115EntryGvOut⟩,(growRow 795 s6Step115EntryFFresh ++ (growRow 777 s6Step115EntryGFresh ++ (growRow 776 s6Step115EntryFvFresh ++ (growRow 775 s6Step115EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step115EntryBank_rows]
  rfl

private def s6Step115ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step115ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step115ExitFBefore : Arena := s6Step115ExitGAfter

private def s6Step115ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 868],795⟩

private def s6Step115ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864],776⟩

private def s6Step115ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 907, 803],777⟩

private def s6Step115ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 882],775⟩

private theorem s6Step115ExitBank_incomingDistinct : ([s6Step115ExitGRow,s6Step115ExitFRow,s6Step115ExitFvRow,s6Step115ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step115ExitF_Incoming : rowsOwned s6Step115ExitFBefore [s6Step115ExitFRow,s6Step115ExitFvRow,s6Step115ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step115ExitGRow,s6Step115ExitFRow,s6Step115ExitFvRow,s6Step115ExitGvRow] 1 s6Step115ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step115ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step115ExitBank_outgoingOwned : rowsOwned s6Step115ExitGvAfter [s6Step115ExitGOut,s6Step115ExitFOut,s6Step115ExitFvOut,s6Step115ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step115ExitGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step115ExitF_Outgoing : rowsOwned s6Step115ExitGvAfter [s6Step115ExitFOut,s6Step115ExitFvOut,s6Step115ExitGvOut] :=
  hmrRows_owned_drop s6Step115ExitGvAfter [s6Step115ExitGOut,s6Step115ExitFOut,s6Step115ExitFvOut,s6Step115ExitGvOut] 1 s6Step115ExitBank_outgoingOwned

private theorem s6Step115ExitF_distinct : (s6Step115ExitFRow.sign::s6Step115ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step115ExitF_owned : (s6Step115ExitFRow.sign::s6Step115ExitFRow.payload).toFinset⊆s6Step115ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step115ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step115ExitF_retired : s6Step115ExitFBefore.retireSet s6Step115ExitFExtra.toFinset=s6Step115ExitFAfter := by
  unfold Arena.retireSet s6Step115ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step115ExitFBefore,s6Step115ExitGAfter,s6Step115ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step115ExitF_checked : planRowResizeLog s6Step115ExitFBefore s6Step115ExitFRow 212 []=
    some (s6Step115ExitFAfter,s6Step115ExitFOut,shrinkRow 795 s6Step115ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step115ExitFBefore s6Step115ExitFRow 212 s6Step115ExitF_distinct s6Step115ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step115ExitFRow.payload.take 212) s6Step115ExitFRow.sign=s6Step115ExitFOut := by decide +kernel
  have hi : s6Step115ExitFRow.payload.drop 212=s6Step115ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step115ExitF_retired] at result
  exact result

private def s6Step115ExitFvAfter : Arena := s6Step115ExitFAfter

private def s6Step115ExitFvBefore : Arena := s6Step115ExitFAfter

private theorem s6Step115ExitFv_Incoming : rowsOwned s6Step115ExitFvBefore [s6Step115ExitFvRow,s6Step115ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step115ExitGRow,s6Step115ExitFRow,s6Step115ExitFvRow,s6Step115ExitGvRow] 2 s6Step115ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step115ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step115ExitFv_Outgoing : rowsOwned s6Step115ExitGvAfter [s6Step115ExitFvOut,s6Step115ExitGvOut] :=
  hmrRows_owned_drop s6Step115ExitGvAfter [s6Step115ExitGOut,s6Step115ExitFOut,s6Step115ExitFvOut,s6Step115ExitGvOut] 2 s6Step115ExitBank_outgoingOwned

private theorem s6Step115ExitFv_distinct : (s6Step115ExitFvRow.sign::s6Step115ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step115ExitFv_owned : (s6Step115ExitFvRow.sign::s6Step115ExitFvRow.payload).toFinset⊆s6Step115ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step115ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step115ExitFv_reserved : s6Step115ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step115ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step115ExitFv_checked : planRowResizeLog s6Step115ExitFvBefore s6Step115ExitFvRow 72 []=
    some (s6Step115ExitFvAfter,s6Step115ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step115ExitFvBefore s6Step115ExitFvAfter s6Step115ExitFvRow 72 []
    s6Step115ExitFv_distinct s6Step115ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step115ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step115ExitFvRow.payload++[]) s6Step115ExitFvRow.sign=s6Step115ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step115ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step115ExitG_Incoming : rowsOwned s6Step115ExitGBefore [s6Step115ExitGRow,s6Step115ExitFRow,s6Step115ExitFvRow,s6Step115ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step115ExitGRow,s6Step115ExitFRow,s6Step115ExitFvRow,s6Step115ExitGvRow] 0 s6Step115ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step115ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step115ExitG_Outgoing : rowsOwned s6Step115ExitGvAfter [s6Step115ExitGOut,s6Step115ExitFOut,s6Step115ExitFvOut,s6Step115ExitGvOut] :=
  hmrRows_owned_drop s6Step115ExitGvAfter [s6Step115ExitGOut,s6Step115ExitFOut,s6Step115ExitFvOut,s6Step115ExitGvOut] 0 s6Step115ExitBank_outgoingOwned

private theorem s6Step115ExitG_distinct : (s6Step115ExitGRow.sign::s6Step115ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step115ExitG_owned : (s6Step115ExitGRow.sign::s6Step115ExitGRow.payload).toFinset⊆s6Step115ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step115ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step115ExitG_retired : s6Step115ExitGBefore.retireSet s6Step115ExitGExtra.toFinset=s6Step115ExitGAfter := by
  unfold Arena.retireSet s6Step115ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step115ExitGBefore,s6Step115ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step115ExitG_checked : planRowResizeLog s6Step115ExitGBefore s6Step115ExitGRow 211 []=
    some (s6Step115ExitGAfter,s6Step115ExitGOut,shrinkRow 777 s6Step115ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step115ExitGBefore s6Step115ExitGRow 211 s6Step115ExitG_distinct s6Step115ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step115ExitGRow.payload.take 211) s6Step115ExitGRow.sign=s6Step115ExitGOut := by decide +kernel
  have hi : s6Step115ExitGRow.payload.drop 211=s6Step115ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step115ExitG_retired] at result
  exact result

private def s6Step115ExitGvBefore : Arena := s6Step115ExitFAfter

private theorem s6Step115ExitGv_Incoming : rowsOwned s6Step115ExitGvBefore [s6Step115ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step115ExitGRow,s6Step115ExitFRow,s6Step115ExitFvRow,s6Step115ExitGvRow] 3 s6Step115ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step115ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step115ExitGv_Outgoing : rowsOwned s6Step115ExitGvAfter [s6Step115ExitGvOut] :=
  hmrRows_owned_drop s6Step115ExitGvAfter [s6Step115ExitGOut,s6Step115ExitFOut,s6Step115ExitFvOut,s6Step115ExitGvOut] 3 s6Step115ExitBank_outgoingOwned

private theorem s6Step115ExitGv_distinct : (s6Step115ExitGvRow.sign::s6Step115ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step115ExitGv_owned : (s6Step115ExitGvRow.sign::s6Step115ExitGvRow.payload).toFinset⊆s6Step115ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step115ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step115ExitGv_retired : s6Step115ExitGvBefore.retireSet s6Step115ExitGvExtra.toFinset=s6Step115ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step115ExitGvBefore s6Step115ExitGvAfter s6Step115ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step115ExitGvBefore s6Step115ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step115ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step115ExitGv_checked : planRowResizeLog s6Step115ExitGvBefore s6Step115ExitGvRow 71 []=
    some (s6Step115ExitGvAfter,s6Step115ExitGvOut,shrinkRow 775 s6Step115ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step115ExitGvBefore s6Step115ExitGvRow 71 s6Step115ExitGv_distinct s6Step115ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step115ExitGvRow.payload.take 71) s6Step115ExitGvRow.sign=s6Step115ExitGvOut := by decide +kernel
  have hi : s6Step115ExitGvRow.payload.drop 71=s6Step115ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step115ExitGv_retired] at result
  exact result

private theorem s6Step115ExitBank_rows : planWindowRowsLog s6Step115ExitGBefore [(s6Step115ExitGRow,211),(s6Step115ExitFRow,212),(s6Step115ExitFvRow,72),(s6Step115ExitGvRow,71)] [[],[],[],[]]=
    some (s6Step115ExitGvAfter,[s6Step115ExitGOut,s6Step115ExitFOut,s6Step115ExitFvOut,s6Step115ExitGvOut],(shrinkRow 777 s6Step115ExitGExtra ++ (shrinkRow 795 s6Step115ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step115ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step115ExitGvAfter [] []=some (s6Step115ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step115ExitGvBefore s6Step115ExitGvAfter s6Step115ExitGvAfter
    s6Step115ExitGvRow s6Step115ExitGvOut 71 [] [] [] []
    (shrinkRow 775 s6Step115ExitGvExtra) ([]) s6Step115ExitGv_Incoming s6Step115ExitGv_checked h4 s6Step115ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step115ExitFvBefore s6Step115ExitFvAfter s6Step115ExitGvAfter
    s6Step115ExitFvRow s6Step115ExitFvOut 72 [] [(s6Step115ExitGvRow,71)] [[]] [s6Step115ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step115ExitGvExtra ++ [])) s6Step115ExitFv_Incoming s6Step115ExitFv_checked h3 s6Step115ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step115ExitFBefore s6Step115ExitFAfter s6Step115ExitGvAfter
    s6Step115ExitFRow s6Step115ExitFOut 212 [] [(s6Step115ExitFvRow,72),(s6Step115ExitGvRow,71)] [[],[]] [s6Step115ExitFvOut,s6Step115ExitGvOut]
    (shrinkRow 795 s6Step115ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step115ExitGvExtra ++ []))) s6Step115ExitF_Incoming s6Step115ExitF_checked h2 s6Step115ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step115ExitGBefore s6Step115ExitGAfter s6Step115ExitGvAfter
    s6Step115ExitGRow s6Step115ExitGOut 211 [] [(s6Step115ExitFRow,212),(s6Step115ExitFvRow,72),(s6Step115ExitGvRow,71)] [[],[],[]] [s6Step115ExitFOut,s6Step115ExitFvOut,s6Step115ExitGvOut]
    (shrinkRow 777 s6Step115ExitGExtra) ((shrinkRow 795 s6Step115ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step115ExitGvExtra ++ [])))) s6Step115ExitG_Incoming s6Step115ExitG_checked h1 s6Step115ExitG_Outgoing
  exact h0

private theorem s6Step115ExitBank_checked : compileHmrBankResizeLog .exit s6Step115ExitGBefore ⟨s6Step115ExitFRow,s6Step115ExitGRow,s6Step115ExitFvRow,s6Step115ExitGvRow⟩ ⟨212,211,72,71⟩ [[],[],[],[]]=
    some (s6Step115ExitGvAfter,⟨s6Step115ExitFOut,s6Step115ExitGOut,s6Step115ExitFvOut,s6Step115ExitGvOut⟩,(shrinkRow 777 s6Step115ExitGExtra ++ (shrinkRow 795 s6Step115ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step115ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step115ExitBank_rows]
  rfl

private theorem s6Step115Add0_apart : Disjoint s6Step115Add0Arena.live s6Step115Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step115Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step115Add0_card : s6Step115Add0Arena.live.card=877 := by
  decide +kernel

private theorem s6Step115Add0_borrowed : s6Step115Add0Arena.checkBorrow (hmrHybridCount s6Step115Add0Arena s6Step115Add0B.length) s6Step115Add0Work=some s6Step115Add0During := by
  have len : s6Step115Add0Work.length=hmrHybridCount s6Step115Add0Arena s6Step115Add0B.length := by
    rw [hmrHybridCount,s6Step115Add0_card]
    decide +kernel
  have nd : s6Step115Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step115Add0Arena s6Step115Add0During s6Step115Add0Work.toFinset s6Step115Add0_bounded s6Step115Add0_apart rfl

private theorem s6Step115Add0_distinct : (813::880::879::(s6Step115Add0A++s6Step115Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step115Add0_owned : (813::880::879::(s6Step115Add0A++s6Step115Add0B)).toFinset⊆s6Step115Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step115Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step115Add0_checked : compileHmrHybridCinLog s6Step115Add0Arena 880 813 879 s6Step115Add0A s6Step115Add0B s6Step115Add0Work=some s6Step115Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step115Add0Arena s6Step115Add0During 880 813 879 s6Step115Add0A s6Step115Add0B s6Step115Add0Work
    (by decide +kernel) (by decide +kernel) s6Step115Add0_distinct
    (fun q hq => s6Step115Add0_owned (List.mem_toFinset.mpr hq)) s6Step115Add0_borrowed

private theorem s6Step115Add1_apart : Disjoint s6Step115Add1Arena.live s6Step115Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step115Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step115Add1_card : s6Step115Add1Arena.live.card=877 := by
  decide +kernel

private theorem s6Step115Add1_borrowed : s6Step115Add1Arena.checkBorrow (hmrHybridCount s6Step115Add1Arena s6Step115Add1B.length) s6Step115Add1Work=some s6Step115Add1During := by
  have len : s6Step115Add1Work.length=hmrHybridCount s6Step115Add1Arena s6Step115Add1B.length := by
    rw [hmrHybridCount,s6Step115Add1_card]
    decide +kernel
  have nd : s6Step115Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step115Add1Arena s6Step115Add1During s6Step115Add1Work.toFinset s6Step115Add1_bounded s6Step115Add1_apart rfl

private theorem s6Step115Add1_distinct : (813::880::879::(s6Step115Add1A++s6Step115Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step115Add1_owned : (813::880::879::(s6Step115Add1A++s6Step115Add1B)).toFinset⊆s6Step115Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step115Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step115Add1_checked : compileHmrHybridCinLog s6Step115Add1Arena 880 813 879 s6Step115Add1A s6Step115Add1B s6Step115Add1Work=some s6Step115Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step115Add1Arena s6Step115Add1During 880 813 879 s6Step115Add1A s6Step115Add1B s6Step115Add1Work
    (by decide +kernel) (by decide +kernel) s6Step115Add1_distinct
    (fun q hq => s6Step115Add1_owned (List.mem_toFinset.mpr hq)) s6Step115Add1_borrowed

private theorem s6Step115F4_apart : Disjoint (s6Step115Add0A++s6Step115Add0B).toFinset (s6Step115Add1A++s6Step115Add1B).toFinset := by
  have nd : ((s6Step115Add0A++s6Step115Add0B)++(s6Step115Add1A++s6Step115Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step115F4_carry : s6Step115F4FlagArena.checkBorrow 1 [879]=some s6Step115Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step115F4FlagArena,s6Step115HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step115F4FlagArena,s6Step115HeadFvAfter,s6Step115Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step115F4_distinct : (823::880::813::879::((s6Step115Add0A++s6Step115Add1A)++(s6Step115Add0B++s6Step115Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step115F4_flag : s6Step115HeadFvAfter.checkBorrow 1 [813]=some s6Step115F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step115HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step115F4_owned : (823::880::((s6Step115Add0A++s6Step115Add1A)++(s6Step115Add0B++s6Step115Add1B))).toFinset⊆s6Step115HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step115HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step115F4_checked : compileHmrHybridF4Log s6Step115HeadFvAfter 823 880 s6Step115Add0A s6Step115Add0B s6Step115Add1A s6Step115Add1B [813] [879] s6Step115Add0Work s6Step115Add1Work=some s6Step115F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step115HeadFvAfter s6Step115F4FlagArena s6Step115Add0Arena s6Step115Add0During s6Step115Add1During 823 880
    s6Step115Add0A s6Step115Add0B s6Step115Add1A s6Step115Add1B [813] [879] s6Step115Add0Work s6Step115Add1Work
    (fun q hq => s6Step115F4_owned (List.mem_toFinset.mpr hq)) s6Step115F4_flag s6Step115F4_carry
    s6Step115F4_distinct s6Step115F4_apart s6Step115Add0_checked s6Step115Add1_checked

private theorem s6Step115Front_branch : s6Step115FrontSigmaArena.checkBorrow 1 [880]=some s6Step115HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step115FrontSigmaArena,s6Step115EntryGvAfter,arenaWires]
  · change s6Step115HeadGBefore.live=(s6Step115EntryGvAfter.live∪{823})∪{880}
    apply hmrArena_union_pair_of_filter_check s6Step115EntryGvAfter s6Step115HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 823 880 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step115Front_entry : HmrFrontEntryValid s6Step115EntryFBefore s6Step115FrontBank 212 71 ⟨212,211,72,71⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step115FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step115EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step115EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step115FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step115Front_sigma : s6Step115EntryGvAfter.checkBorrow 1 [823]=some s6Step115FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step115EntryGvAfter,arenaWires]
  · rfl

private def s6Step115HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step115HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step115HeadFBefore : Arena := s6Step115HeadGAfter

private def s6Step115HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467],795⟩

private def s6Step115HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892],776⟩

private def s6Step115HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 907],777⟩

private def s6Step115HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886],775⟩

private theorem s6Step115HeadBank_incomingDistinct : ([s6Step115HeadGRow,s6Step115HeadFRow,s6Step115HeadGvRow,s6Step115HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step115HeadF_Incoming : rowsOwned s6Step115HeadFBefore [s6Step115HeadFRow,s6Step115HeadGvRow,s6Step115HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step115HeadGRow,s6Step115HeadFRow,s6Step115HeadGvRow,s6Step115HeadFvRow] 1 s6Step115HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step115HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step115HeadBank_outgoingOwned : rowsOwned s6Step115HeadFvAfter [s6Step115HeadGOut,s6Step115HeadFOut,s6Step115HeadGvOut,s6Step115HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step115HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step115HeadF_Outgoing : rowsOwned s6Step115HeadFvAfter [s6Step115HeadFOut,s6Step115HeadGvOut,s6Step115HeadFvOut] :=
  hmrRows_owned_drop s6Step115HeadFvAfter [s6Step115HeadGOut,s6Step115HeadFOut,s6Step115HeadGvOut,s6Step115HeadFvOut] 1 s6Step115HeadBank_outgoingOwned

private theorem s6Step115HeadF_distinct : (s6Step115HeadFRow.sign::s6Step115HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step115HeadF_owned : (s6Step115HeadFRow.sign::s6Step115HeadFRow.payload).toFinset⊆s6Step115HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step115HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step115HeadF_reserved : s6Step115HeadFBefore.reserve s6Step115HeadFFresh.toFinset=some s6Step115HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step115HeadFFresh,arenaWires]
  · norm_num [s6Step115HeadFBefore,s6Step115HeadGAfter,s6Step115HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step115HeadFBefore s6Step115HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step115HeadFFresh rfl rfl
    · norm_num [s6Step115HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step115HeadF_checked : planRowResizeLog s6Step115HeadFBefore s6Step115HeadFRow 213 s6Step115HeadFFresh=
    some (s6Step115HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 868],795⟩,growRow 795 s6Step115HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step115HeadFBefore s6Step115HeadFAfter s6Step115HeadFRow 213 s6Step115HeadFFresh
    s6Step115HeadF_distinct s6Step115HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step115HeadF_reserved
  have rowEq : WindowRow.mk (s6Step115HeadFRow.payload++s6Step115HeadFFresh) s6Step115HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 868],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step115HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step115HeadFvBefore : Arena := s6Step115HeadGvAfter

private theorem s6Step115HeadFv_Incoming : rowsOwned s6Step115HeadFvBefore [s6Step115HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step115HeadGRow,s6Step115HeadFRow,s6Step115HeadGvRow,s6Step115HeadFvRow] 3 s6Step115HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step115HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step115HeadFv_Outgoing : rowsOwned s6Step115HeadFvAfter [s6Step115HeadFvOut] :=
  hmrRows_owned_drop s6Step115HeadFvAfter [s6Step115HeadGOut,s6Step115HeadFOut,s6Step115HeadGvOut,s6Step115HeadFvOut] 3 s6Step115HeadBank_outgoingOwned

private theorem s6Step115HeadFv_distinct : (s6Step115HeadFvRow.sign::s6Step115HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step115HeadFv_owned : (s6Step115HeadFvRow.sign::s6Step115HeadFvRow.payload).toFinset⊆s6Step115HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step115HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step115HeadFv_reserved : s6Step115HeadFvBefore.reserve s6Step115HeadFvFresh.toFinset=some s6Step115HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step115HeadFvFresh,arenaWires]
  · norm_num [s6Step115HeadFvBefore,s6Step115HeadGvAfter,s6Step115HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step115HeadFvAfter,s6Step115HeadFvBefore,s6Step115HeadGvAfter,s6Step115HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step115HeadFv_checked : planRowResizeLog s6Step115HeadFvBefore s6Step115HeadFvRow 72 s6Step115HeadFvFresh=
    some (s6Step115HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864],776⟩,growRow 776 s6Step115HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step115HeadFvBefore s6Step115HeadFvAfter s6Step115HeadFvRow 72 s6Step115HeadFvFresh
    s6Step115HeadFv_distinct s6Step115HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step115HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step115HeadFvRow.payload++s6Step115HeadFvFresh) s6Step115HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step115HeadG_Incoming : rowsOwned s6Step115HeadGBefore [s6Step115HeadGRow,s6Step115HeadFRow,s6Step115HeadGvRow,s6Step115HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step115HeadGRow,s6Step115HeadFRow,s6Step115HeadGvRow,s6Step115HeadFvRow] 0 s6Step115HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step115HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step115HeadG_Outgoing : rowsOwned s6Step115HeadFvAfter [s6Step115HeadGOut,s6Step115HeadFOut,s6Step115HeadGvOut,s6Step115HeadFvOut] :=
  hmrRows_owned_drop s6Step115HeadFvAfter [s6Step115HeadGOut,s6Step115HeadFOut,s6Step115HeadGvOut,s6Step115HeadFvOut] 0 s6Step115HeadBank_outgoingOwned

private theorem s6Step115HeadG_distinct : (s6Step115HeadGRow.sign::s6Step115HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step115HeadG_owned : (s6Step115HeadGRow.sign::s6Step115HeadGRow.payload).toFinset⊆s6Step115HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step115HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step115HeadG_reserved : s6Step115HeadGBefore.reserve s6Step115HeadGFresh.toFinset=some s6Step115HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step115HeadGFresh,arenaWires]
  · norm_num [s6Step115HeadGBefore,s6Step115HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step115HeadGBefore s6Step115HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step115HeadGFresh rfl rfl
    · norm_num [s6Step115HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step115HeadG_checked : planRowResizeLog s6Step115HeadGBefore s6Step115HeadGRow 213 s6Step115HeadGFresh=
    some (s6Step115HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 907, 803],777⟩,growRow 777 s6Step115HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step115HeadGBefore s6Step115HeadGAfter s6Step115HeadGRow 213 s6Step115HeadGFresh
    s6Step115HeadG_distinct s6Step115HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step115HeadG_reserved
  have rowEq : WindowRow.mk (s6Step115HeadGRow.payload++s6Step115HeadGFresh) s6Step115HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 907, 803],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step115HeadGvBefore : Arena := s6Step115HeadFAfter

private theorem s6Step115HeadGv_Incoming : rowsOwned s6Step115HeadGvBefore [s6Step115HeadGvRow,s6Step115HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step115HeadGRow,s6Step115HeadFRow,s6Step115HeadGvRow,s6Step115HeadFvRow] 2 s6Step115HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step115HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step115HeadGv_Outgoing : rowsOwned s6Step115HeadFvAfter [s6Step115HeadGvOut,s6Step115HeadFvOut] :=
  hmrRows_owned_drop s6Step115HeadFvAfter [s6Step115HeadGOut,s6Step115HeadFOut,s6Step115HeadGvOut,s6Step115HeadFvOut] 2 s6Step115HeadBank_outgoingOwned

private theorem s6Step115HeadGv_distinct : (s6Step115HeadGvRow.sign::s6Step115HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step115HeadGv_owned : (s6Step115HeadGvRow.sign::s6Step115HeadGvRow.payload).toFinset⊆s6Step115HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step115HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step115HeadGv_reserved : s6Step115HeadGvBefore.reserve s6Step115HeadGvFresh.toFinset=some s6Step115HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step115HeadGvFresh,arenaWires]
  · norm_num [s6Step115HeadGvBefore,s6Step115HeadFAfter,s6Step115HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step115HeadGvAfter,s6Step115HeadGvBefore,s6Step115HeadFAfter,s6Step115HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step115HeadGv_checked : planRowResizeLog s6Step115HeadGvBefore s6Step115HeadGvRow 72 s6Step115HeadGvFresh=
    some (s6Step115HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 882],775⟩,growRow 775 s6Step115HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step115HeadGvBefore s6Step115HeadGvAfter s6Step115HeadGvRow 72 s6Step115HeadGvFresh
    s6Step115HeadGv_distinct s6Step115HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step115HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step115HeadGvRow.payload++s6Step115HeadGvFresh) s6Step115HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 882],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step115HeadBank_rows : planWindowRowsLog s6Step115HeadGBefore [(s6Step115HeadGRow,213),(s6Step115HeadFRow,213),(s6Step115HeadGvRow,72),(s6Step115HeadFvRow,72)] [s6Step115HeadGFresh,s6Step115HeadFFresh,s6Step115HeadGvFresh,s6Step115HeadFvFresh]=
    some (s6Step115HeadFvAfter,[s6Step115HeadGOut,s6Step115HeadFOut,s6Step115HeadGvOut,s6Step115HeadFvOut],(growRow 777 s6Step115HeadGFresh ++ (growRow 795 s6Step115HeadFFresh ++ (growRow 775 s6Step115HeadGvFresh ++ (growRow 776 s6Step115HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step115HeadFvAfter [] []=some (s6Step115HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step115HeadFvBefore s6Step115HeadFvAfter s6Step115HeadFvAfter
    s6Step115HeadFvRow s6Step115HeadFvOut 72 s6Step115HeadFvFresh [] [] []
    (growRow 776 s6Step115HeadFvFresh) ([]) s6Step115HeadFv_Incoming s6Step115HeadFv_checked h4 s6Step115HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step115HeadGvBefore s6Step115HeadGvAfter s6Step115HeadFvAfter
    s6Step115HeadGvRow s6Step115HeadGvOut 72 s6Step115HeadGvFresh [(s6Step115HeadFvRow,72)] [s6Step115HeadFvFresh] [s6Step115HeadFvOut]
    (growRow 775 s6Step115HeadGvFresh) ((growRow 776 s6Step115HeadFvFresh ++ [])) s6Step115HeadGv_Incoming s6Step115HeadGv_checked h3 s6Step115HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step115HeadFBefore s6Step115HeadFAfter s6Step115HeadFvAfter
    s6Step115HeadFRow s6Step115HeadFOut 213 s6Step115HeadFFresh [(s6Step115HeadGvRow,72),(s6Step115HeadFvRow,72)] [s6Step115HeadGvFresh,s6Step115HeadFvFresh] [s6Step115HeadGvOut,s6Step115HeadFvOut]
    (growRow 795 s6Step115HeadFFresh) ((growRow 775 s6Step115HeadGvFresh ++ (growRow 776 s6Step115HeadFvFresh ++ []))) s6Step115HeadF_Incoming s6Step115HeadF_checked h2 s6Step115HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step115HeadGBefore s6Step115HeadGAfter s6Step115HeadFvAfter
    s6Step115HeadGRow s6Step115HeadGOut 213 s6Step115HeadGFresh [(s6Step115HeadFRow,213),(s6Step115HeadGvRow,72),(s6Step115HeadFvRow,72)] [s6Step115HeadFFresh,s6Step115HeadGvFresh,s6Step115HeadFvFresh] [s6Step115HeadFOut,s6Step115HeadGvOut,s6Step115HeadFvOut]
    (growRow 777 s6Step115HeadGFresh) ((growRow 795 s6Step115HeadFFresh ++ (growRow 775 s6Step115HeadGvFresh ++ (growRow 776 s6Step115HeadFvFresh ++ [])))) s6Step115HeadG_Incoming s6Step115HeadG_checked h1 s6Step115HeadG_Outgoing
  exact h0

private theorem s6Step115HeadBank_checked : compileHmrBankResizeLog .headroom s6Step115HeadGBefore ⟨s6Step115HeadFRow,s6Step115HeadGRow,s6Step115HeadFvRow,s6Step115HeadGvRow⟩ ⟨213,213,72,72⟩ [s6Step115HeadGFresh,s6Step115HeadFFresh,s6Step115HeadGvFresh,s6Step115HeadFvFresh]=
    some (s6Step115HeadFvAfter,⟨s6Step115HeadFOut,s6Step115HeadGOut,s6Step115HeadFvOut,s6Step115HeadGvOut⟩,(growRow 777 s6Step115HeadGFresh ++ (growRow 795 s6Step115HeadFFresh ++ (growRow 775 s6Step115HeadGvFresh ++ (growRow 776 s6Step115HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step115HeadBank_rows]
  rfl

private theorem s6Step115Front_checked : compileHmrSourceFrontLog s6Step115EntryFBefore s6Step115FrontBank 212 71 ⟨212,211,72,71⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step115FrontLog=some s6Step115FrontPlan := by
  have pairEq : s6Step115FrontPair=⟨s6Step115HeadFRow,s6Step115HeadGRow,s6Step115HeadFvRow,s6Step115HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step115FrontHead=⟨s6Step115ExitFRow,s6Step115ExitGRow,s6Step115ExitFvRow,s6Step115ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step115Add0A=s6Step115FrontHead.f.wires := by decide +kernel
  have gEq : s6Step115Add0B=s6Step115FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step115Add1A=s6Step115FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step115Add1B=s6Step115FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step115EntryFBefore s6Step115FrontBank 212 71 ⟨212,211,72,71⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step115FrontLog s6Step115FrontPlan
  · exact s6Step115Front_entry
  · exact s6Step115EntryBank_checked
  · exact s6Step115Front_sigma
  · rfl
  · exact s6Step115Front_branch
  · rfl
  · simpa only [s6Step115FrontPlan,pairEq] using s6Step115HeadBank_checked
  · simpa only [s6Step115FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step115F4_checked
  · exact s6Step115Counter_checked
  · rfl
  · simpa only [s6Step115FrontPlan,headEq] using s6Step115ExitBank_checked

private theorem s6Step115Complete_explicit_checked : compileHmrEarlyStepLog s6Step115EntryFBefore s6Step115FrontBank 212 71 ⟨212,211,72,71⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step115CompleteLog=some s6Step115CompletePlan := by
  let Q := s6Step115EarlyControlPlan
  have hq := s6Step115EarlyControl_plan_checked
  have fv1 : s6Step115CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step115CompleteOut.fv.payload[2]?.getD s6Step115CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step115CompleteOut.fv.payload[3]?.getD s6Step115CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step115CompleteOut.fv.payload[4]?.getD s6Step115CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step115EntryFBefore s6Step115EarlyControlArena s6Step115FrontBank 212 71 ⟨212,211,72,71⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step115CompleteLog s6Step115FrontPlan Q
    s6Step115Front_checked s6Step115Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step115Complete_owned s6Step115Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step115EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 823 s6Step115CompleteOut.fv.second (s6Step115CompleteOut.fv.payload[2]?.getD s6Step115CompleteOut.fv.sign) (s6Step115CompleteOut.fv.payload[3]?.getD s6Step115CompleteOut.fv.sign) (s6Step115CompleteOut.fv.payload[4]?.getD s6Step115CompleteOut.fv.sign) 880 37 s6Step115EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep115Arena : Arena := s6Step115EntryFBefore
def s6PrivateStep115Bank : WindowBank := s6Step115FrontBank
def s6PrivateStep115Spec : HmrSourceWalkStepLog := ⟨212,71,⟨212,211,72,71⟩,37,.early s6Step115CompleteLog⟩
def s6PrivateStep115Plan : HmrSourceStepPlan := .early s6Step115CompletePlan
theorem s6PrivateStep115_source : s6PrivateStep115Spec=s6ObservedLogs112[3] := rfl
theorem s6PrivateStep115_checked : compileHmrSourceStepLog s6PrivateStep115Arena s6PrivateStep115Bank
    s6PrivateStep115Spec.fgWidth s6PrivateStep115Spec.vWidth s6PrivateStep115Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]
    6 498 115 s6PrivateStep115Spec.need none s6PrivateStep115Spec.log=some s6PrivateStep115Plan := by
  change compileHmrSourceStepLog s6Step115EntryFBefore s6Step115FrontBank 212 71 ⟨212,211,72,71⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 6 498 115 37 none (.early s6Step115CompleteLog)=some (.early s6Step115CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 115<498)]
  rw [s6Step115Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
