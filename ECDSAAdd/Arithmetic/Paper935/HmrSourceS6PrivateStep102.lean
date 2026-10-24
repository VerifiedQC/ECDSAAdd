import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep100
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

private def s6Step102CompleteMoves : List (Wire × Wire) := []

private def s6Step102EarlyControlLog : HmrEarlyControlLog := ⟨[803, 890, 784, 876, 813],[879],[865],[796, 891, 903, 885, 791, 844],[]⟩

private def s6Step102FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [856]],[[876], [784], [803], [890]],[[], [], [], []]⟩,[907],[845],[813],[879],[865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[813, 879, 865, 796]⟩

private def s6Step102CompleteLog : HmrEarlyStepLog := ⟨s6Step102FrontLog,s6Step102CompleteMoves,s6Step102EarlyControlLog⟩

private def s6Step102ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473],795⟩

private def s6Step102ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857],776⟩

private def s6Step102ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],777⟩

private def s6Step102ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856],775⟩

private def s6Step102FrontOut : WindowBank := ⟨s6Step102ExitFOut,s6Step102ExitGOut,s6Step102ExitFvOut,s6Step102ExitGvOut⟩

private def s6Step102CompleteOut : WindowBank := s6Step102FrontOut.repacked s6Step102CompleteMoves

private def s6Step102EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step102EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step102EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step102EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step102EarlyControlPositiveArena,[879],s6Step102EarlyControlEqualityArena,[865],⟨⟨907,false⟩,[⟨⟨879,false⟩,865⟩]⟩⟩

private def s6Step102EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step102EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step102EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step102EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step102EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step102EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step102EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,803⟩,⟨⟨772,false⟩,890⟩,⟨⟨771,false⟩,784⟩,⟨⟨770,false⟩,876⟩,⟨⟨769,false⟩,813⟩]⟩

private def s6Step102EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step102EarlyControlZeroArena,s6Step102EarlyControlZeroPlan,s6Step102EarlyControlClassPlan,s6Step102EarlyControlFlagArena,s6Step102EarlyControlFittedArena,s6Step102EarlyControlHistoryArena,s6Step102EarlyControlSigmaArena,s6Step102EarlyControlOutputArena,s6Step102EarlyControlLog⟩

private def s6Step102CounterWork : List Wire := [813, 879, 865, 796]

private theorem s6Step102Counter_bounded : s6Step102CounterWork.toFinset⊆arenaWires := by norm_num [s6Step102CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step102HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step102CounterDuring : Arena := ⟨s6Step102HeadFvAfter.live∪s6Step102CounterWork.toFinset,Finset.union_subset s6Step102HeadFvAfter.bounded s6Step102Counter_bounded⟩

private def s6Step102EntryFFresh : List Wire := []

private def s6Step102EntryFvFresh : List Wire := []

private def s6Step102EntryGFresh : List Wire := []

private def s6Step102EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step102EntryGvFresh : List Wire := [856]

private def s6Step102ExitFExtra : List Wire := [784]

private def s6Step102ExitFvExtra : List Wire := [890]

private def s6Step102ExitGExtra : List Wire := [876]

private def s6Step102ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step102ExitGvExtra : List Wire := [803]

private def s6Step102Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step102Add0Work : List Wire := [865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step102Add0_bounded : s6Step102Add0Work.toFinset⊆arenaWires := by
  have h : s6Step102Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step102Add0During : Arena := ⟨s6Step102Add0Arena.live∪s6Step102Add0Work.toFinset,Finset.union_subset s6Step102Add0Arena.bounded s6Step102Add0_bounded⟩

private def s6Step102Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step102Add1Work : List Wire := [865, 796, 891, 903, 885, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step102Add1_bounded : s6Step102Add1Work.toFinset⊆arenaWires := by
  have h : s6Step102Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step102Add1During : Arena := ⟨s6Step102Add1Arena.live∪s6Step102Add1Work.toFinset,Finset.union_subset s6Step102Add1Arena.bounded s6Step102Add1_bounded⟩

private def s6Step102F4FlagArena : Arena := ⟨s6Step102HeadFvAfter.live∪{813},Finset.union_subset s6Step102HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step102F4Plan : HmrHybridF4Plan := ⟨s6Step102F4FlagArena,[813],s6Step102Add0Arena,[879],s6Step102Add0During,s6Step102Add0Work,s6Step102Add1During,s6Step102Add1Work⟩

private def s6Step102HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 784],795⟩

private def s6Step102HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 890],776⟩

private def s6Step102HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 876],777⟩

private def s6Step102HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 803],775⟩

private def s6Step102FrontHead : WindowBank := ⟨s6Step102HeadFOut,s6Step102HeadGOut,s6Step102HeadFvOut,s6Step102HeadGvOut⟩

private def s6Step102EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473],795⟩

private def s6Step102EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857],776⟩

private def s6Step102EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],777⟩

private def s6Step102EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856],775⟩

private def s6Step102FrontPair : WindowBank := ⟨s6Step102EntryFOut,s6Step102EntryGOut,s6Step102EntryFvOut,s6Step102EntryGvOut⟩

private def s6Step102FrontSigmaArena : Arena := ⟨s6Step102EntryGvAfter.live∪{907},Finset.union_subset s6Step102EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step102HeadFFresh : List Wire := [784]

private def s6Step102HeadFvFresh : List Wire := [890]

private def s6Step102HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step102HeadGFresh : List Wire := [876]

private def s6Step102HeadGvFresh : List Wire := [803]

private def s6Step102FrontPlan : HmrSourceFront := ⟨s6Step102EntryGvAfter,s6Step102FrontPair,(growRow 795 s6Step102EntryFFresh ++ (growRow 777 s6Step102EntryGFresh ++ (growRow 776 s6Step102EntryFvFresh ++ (growRow 775 s6Step102EntryGvFresh ++ [])))),s6Step102FrontSigmaArena,[907],s6Step102HeadGBefore,[845],
  s6Step102HeadFvAfter,s6Step102FrontHead,(growRow 777 s6Step102HeadGFresh ++ (growRow 795 s6Step102HeadFFresh ++ (growRow 775 s6Step102HeadGvFresh ++ (growRow 776 s6Step102HeadFvFresh ++ [])))),s6Step102F4Plan,s6Step102CounterDuring,s6Step102CounterWork,s6Step102ExitGvAfter,s6Step102FrontOut,(shrinkRow 777 s6Step102ExitGExtra ++ (shrinkRow 795 s6Step102ExitFExtra ++ (shrinkRow 776 s6Step102ExitFvExtra ++ (shrinkRow 775 s6Step102ExitGvExtra ++ []))))⟩

private def s6Step102CompletePlan : HmrEarlyStepPlan := ⟨s6Step102FrontPlan,s6Step102EarlyControlArena,s6Step102EarlyControlPlan,s6Step102CompleteMoves⟩

private theorem s6Step102Complete_apart : List.Disjoint (s6Step102CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [907, 845, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] := by
  have nd : ((s6Step102CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[907, 845, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step102Complete_owned : (s6Step102CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step102EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step102EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step102Complete_repack : s6Step102ExitGvAfter.checkRepack s6Step102CompleteMoves=some s6Step102EarlyControlArena := by rfl

private theorem s6Step102EarlyControl_branchOwned : ([845] : List Wire).toFinset⊆s6Step102EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step102EarlyControlSigmaArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step102EarlyControl_branch : compileHmrBranchRetirement s6Step102EarlyControlSigmaArena 845=some s6Step102EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step102EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step102EarlyControlSigmaArena s6Step102EarlyControlOutputArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [845] rfl rfl
    decide +kernel

private theorem s6Step102EarlyControl_classEqualityBorrow : s6Step102EarlyControlPositiveArena.checkBorrow (([907, 879] : List Wire).length-1) s6Step102EarlyControlLog.classWork=some s6Step102EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step102EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step102EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step102EarlyControlEqualityArena,s6Step102EarlyControlPositiveArena,s6Step102EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step102EarlyControl_classEqualityOwned : ([907, 879] : List Wire).toFinset⊆s6Step102EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step102EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step102EarlyControl_classEquality : compileHmrEqualityLog s6Step102EarlyControlPositiveArena [907, 879] 0 s6Step102EarlyControlLog.classWork=some (s6Step102EarlyControlEqualityArena,s6Step102EarlyControlLog.classWork,s6Step102EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step102EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step102EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step102EarlyControl_classOwned : ([769, 813, 907] : List Wire).toFinset⊆s6Step102EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step102EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step102EarlyControl_positiveBorrow : s6Step102EarlyControlZeroArena.checkBorrow (1) s6Step102EarlyControlLog.positiveWork=some s6Step102EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step102EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step102EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step102EarlyControlZeroArena s6Step102EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step102EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step102EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step102EarlyControl_class : compileHmrSourceClassLog s6Step102EarlyControlZeroArena false 769 s6Step102EarlyControlZeroPlan.top 0 907 s6Step102EarlyControlLog.positiveWork s6Step102EarlyControlLog.classWork=some s6Step102EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step102EarlyControlClassPlan s6Step102EarlyControlZeroArena false 769 s6Step102EarlyControlZeroPlan.top 0 907
  constructor
  · decide +kernel
  · exact s6Step102EarlyControl_classOwned
  · exact s6Step102EarlyControl_positiveBorrow
  · exact s6Step102EarlyControl_classEquality

private theorem s6Step102EarlyControl_entryRecordOwned : ([845, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).toFinset⊆s6Step102EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step102EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step102EarlyControl_entrySigmaOwned : ([907, 254] : List Wire).toFinset⊆s6Step102EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step102EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step102EarlyControl_fitBorrow : s6Step102EarlyControlFlagArena.checkBorrow ((35-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).length)) s6Step102EarlyControlLog.recordFresh=some s6Step102EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step102EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step102EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step102EarlyControlFittedArena,s6Step102EarlyControlFlagArena,s6Step102EarlyControlLog,arenaWires]

private theorem s6Step102EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).toFinset⊆s6Step102EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step102EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step102EarlyControl_fit : compileHmrRecordGrowLog s6Step102EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step102EarlyControlLog.recordFresh=some s6Step102EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step102EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step102EarlyControl_fitBorrow

private theorem s6Step102EarlyControl_flagsBorrow : s6Step102EarlyControlEqualityArena.checkBorrow (6) s6Step102EarlyControlLog.flagWork=some s6Step102EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step102EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step102EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step102EarlyControlFlagArena,s6Step102EarlyControlEqualityArena,s6Step102EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step102EarlyControl_flagsOwned : ([865, 253, 252, 251] : List Wire).toFinset⊆s6Step102EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step102EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step102EarlyControl_flags : compileHmrFlagsLog s6Step102EarlyControlClassPlan.equalityArena s6Step102EarlyControlClassPlan.equality.top 253 252 251 s6Step102EarlyControlLog.flagWork=some s6Step102EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step102EarlyControl_flagsOwned⟩
  · exact s6Step102EarlyControl_flagsBorrow

private theorem s6Step102EarlyControl_historyBorrow : s6Step102EarlyControlArena.checkBorrow ((35-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).length)) s6Step102EarlyControlLog.recordFresh=some s6Step102EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step102EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step102EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step102EarlyControlArena s6Step102EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step102EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step102EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step102EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] : List Wire).toFinset⊆s6Step102EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step102EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step102EarlyControl_history : compileHmrRecordGrowLog s6Step102EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step102EarlyControlLog.recordFresh=some s6Step102EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step102EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step102EarlyControl_historyBorrow

private theorem s6Step102EarlyControl_sigmaOwned : ([254, 907] : List Wire).toFinset⊆s6Step102EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step102EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step102EarlyControl_sigmaReleaseOwned : ([907] : List Wire).toFinset⊆s6Step102EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step102EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step102EarlyControl_sigmaRelease : s6Step102EarlyControlHistoryArena.release {907} (fun _ => false)=some s6Step102EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step102EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step102EarlyControlHistoryArena s6Step102EarlyControlSigmaArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [907] rfl rfl
    decide +kernel

private theorem s6Step102EarlyControl_sigma : compileHmrSigmaDropLog s6Step102EarlyControlHistoryArena false 0 0 254 907 []=some s6Step102EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step102EarlyControl_sigmaOwned⟩
  · exact s6Step102EarlyControl_sigmaRelease

private theorem s6Step102EarlyControl_zeroBorrow : s6Step102EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step102EarlyControlLog.zeroWork=some s6Step102EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step102EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step102EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step102EarlyControlArena s6Step102EarlyControlZeroArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step102EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step102EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step102EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step102EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step102EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step102EarlyControl_zero : compileHmrEqualityLog s6Step102EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step102EarlyControlLog.zeroWork=some (s6Step102EarlyControlZeroArena,s6Step102EarlyControlLog.zeroWork,s6Step102EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step102EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step102EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step102EarlyControl_logged : s6Step102EarlyControlPlan.Logged s6Step102EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 907 254 253 252 251 845 35 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step102EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step102EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step102EarlyControl_zero
  · exact s6Step102EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step102EarlyControl_flags
  · exact s6Step102EarlyControl_fit
  · exact s6Step102EarlyControl_history
  · exact s6Step102EarlyControl_sigma
  · exact s6Step102EarlyControl_branch

private theorem s6Step102EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step102EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 907 254 253 252 251 845 35 s6Step102EarlyControlLog=some s6Step102EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step102EarlyControlPlan s6Step102EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 907 254 253 252 251 845 35 s6Step102EarlyControl_logged

private def s6Step102EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,856),(857,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step102EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473],795⟩

private def s6Step102EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857],776⟩

private def s6Step102EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],777⟩

private def s6Step102EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873],775⟩

private def s6Step102FrontBank : WindowBank := ⟨s6Step102EntryFRow,s6Step102EntryGRow,s6Step102EntryFvRow,s6Step102EntryGvRow⟩

private def s6Step102Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 784, 795]

private def s6Step102Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 876, 777]

private def s6Step102Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 890, 776]

private def s6Step102Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 803, 775]

private theorem s6Step102Counter_apart : Disjoint s6Step102HeadFvAfter.live s6Step102CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step102HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step102Counter_borrowed : s6Step102HeadFvAfter.checkBorrow 4 s6Step102CounterWork=some s6Step102CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step102HeadFvAfter s6Step102CounterDuring s6Step102CounterWork.toFinset s6Step102Counter_bounded s6Step102Counter_apart rfl

private theorem s6Step102Counter_owned : (907::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step102HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step102HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step102Counter_checked : compileHmrCounterStepLog s6Step102HeadFvAfter true 907 [774, 773, 772, 771, 770, 769] s6Step102CounterWork=some s6Step102CounterDuring := by
  have owned : ∀q∈907::[774, 773, 772, 771, 770, 769],q∈s6Step102HeadFvAfter.live := fun q hq => s6Step102Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step102Counter_borrowed

private def s6Step102EntryFAfter : Arena := s6Step102EntryFBefore

private theorem s6Step102EntryBank_incomingDistinct : ([s6Step102EntryFRow,s6Step102EntryGRow,s6Step102EntryFvRow,s6Step102EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step102EntryF_Incoming : rowsOwned s6Step102EntryFBefore [s6Step102EntryFRow,s6Step102EntryGRow,s6Step102EntryFvRow,s6Step102EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step102EntryFRow,s6Step102EntryGRow,s6Step102EntryFvRow,s6Step102EntryGvRow] 0 s6Step102EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step102EntryFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,856),(857,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step102EntryBank_outgoingOwned : rowsOwned s6Step102EntryGvAfter [s6Step102EntryFOut,s6Step102EntryGOut,s6Step102EntryFvOut,s6Step102EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step102EntryGvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step102EntryF_Outgoing : rowsOwned s6Step102EntryGvAfter [s6Step102EntryFOut,s6Step102EntryGOut,s6Step102EntryFvOut,s6Step102EntryGvOut] :=
  hmrRows_owned_drop s6Step102EntryGvAfter [s6Step102EntryFOut,s6Step102EntryGOut,s6Step102EntryFvOut,s6Step102EntryGvOut] 0 s6Step102EntryBank_outgoingOwned

private theorem s6Step102EntryF_distinct : (s6Step102EntryFRow.sign::s6Step102EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step102EntryF_owned : (s6Step102EntryFRow.sign::s6Step102EntryFRow.payload).toFinset⊆s6Step102EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step102EntryFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,856),(857,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step102EntryF_reserved : s6Step102EntryFBefore.reserve s6Step102EntryFFresh.toFinset=some s6Step102EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step102EntryFFresh,arenaWires]
  · norm_num [s6Step102EntryFBefore,s6Step102EntryFFresh,arenaWires]
  · simp only [s6Step102EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step102EntryF_checked : planRowResizeLog s6Step102EntryFBefore s6Step102EntryFRow 218 s6Step102EntryFFresh=
    some (s6Step102EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473],795⟩,growRow 795 s6Step102EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step102EntryFBefore s6Step102EntryFAfter s6Step102EntryFRow 218 s6Step102EntryFFresh
    s6Step102EntryF_distinct s6Step102EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step102EntryF_reserved
  have rowEq : WindowRow.mk (s6Step102EntryFRow.payload++s6Step102EntryFFresh) s6Step102EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step102EntryFvAfter : Arena := s6Step102EntryFBefore

private def s6Step102EntryFvBefore : Arena := s6Step102EntryFBefore

private theorem s6Step102EntryFv_Incoming : rowsOwned s6Step102EntryFvBefore [s6Step102EntryFvRow,s6Step102EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step102EntryFRow,s6Step102EntryGRow,s6Step102EntryFvRow,s6Step102EntryGvRow] 2 s6Step102EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step102EntryFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,856),(857,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step102EntryFv_Outgoing : rowsOwned s6Step102EntryGvAfter [s6Step102EntryFvOut,s6Step102EntryGvOut] :=
  hmrRows_owned_drop s6Step102EntryGvAfter [s6Step102EntryFOut,s6Step102EntryGOut,s6Step102EntryFvOut,s6Step102EntryGvOut] 2 s6Step102EntryBank_outgoingOwned

private theorem s6Step102EntryFv_distinct : (s6Step102EntryFvRow.sign::s6Step102EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step102EntryFv_owned : (s6Step102EntryFvRow.sign::s6Step102EntryFvRow.payload).toFinset⊆s6Step102EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step102EntryFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,856),(857,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step102EntryFv_reserved : s6Step102EntryFvBefore.reserve s6Step102EntryFvFresh.toFinset=some s6Step102EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step102EntryFvFresh,arenaWires]
  · norm_num [s6Step102EntryFvBefore,s6Step102EntryFBefore,s6Step102EntryFvFresh,arenaWires]
  · simp only [s6Step102EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step102EntryFv_checked : planRowResizeLog s6Step102EntryFvBefore s6Step102EntryFvRow 65 s6Step102EntryFvFresh=
    some (s6Step102EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857],776⟩,growRow 776 s6Step102EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step102EntryFvBefore s6Step102EntryFvAfter s6Step102EntryFvRow 65 s6Step102EntryFvFresh
    s6Step102EntryFv_distinct s6Step102EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step102EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step102EntryFvRow.payload++s6Step102EntryFvFresh) s6Step102EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step102EntryGAfter : Arena := s6Step102EntryFBefore

private def s6Step102EntryGBefore : Arena := s6Step102EntryFBefore

private theorem s6Step102EntryG_Incoming : rowsOwned s6Step102EntryGBefore [s6Step102EntryGRow,s6Step102EntryFvRow,s6Step102EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step102EntryFRow,s6Step102EntryGRow,s6Step102EntryFvRow,s6Step102EntryGvRow] 1 s6Step102EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step102EntryGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,856),(857,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step102EntryG_Outgoing : rowsOwned s6Step102EntryGvAfter [s6Step102EntryGOut,s6Step102EntryFvOut,s6Step102EntryGvOut] :=
  hmrRows_owned_drop s6Step102EntryGvAfter [s6Step102EntryFOut,s6Step102EntryGOut,s6Step102EntryFvOut,s6Step102EntryGvOut] 1 s6Step102EntryBank_outgoingOwned

private theorem s6Step102EntryG_distinct : (s6Step102EntryGRow.sign::s6Step102EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step102EntryG_owned : (s6Step102EntryGRow.sign::s6Step102EntryGRow.payload).toFinset⊆s6Step102EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step102EntryGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,856),(857,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step102EntryG_reserved : s6Step102EntryGBefore.reserve s6Step102EntryGFresh.toFinset=some s6Step102EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step102EntryGFresh,arenaWires]
  · norm_num [s6Step102EntryGBefore,s6Step102EntryFBefore,s6Step102EntryGFresh,arenaWires]
  · simp only [s6Step102EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step102EntryG_checked : planRowResizeLog s6Step102EntryGBefore s6Step102EntryGRow 218 s6Step102EntryGFresh=
    some (s6Step102EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],777⟩,growRow 777 s6Step102EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step102EntryGBefore s6Step102EntryGAfter s6Step102EntryGRow 218 s6Step102EntryGFresh
    s6Step102EntryG_distinct s6Step102EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step102EntryG_reserved
  have rowEq : WindowRow.mk (s6Step102EntryGRow.payload++s6Step102EntryGFresh) s6Step102EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step102EntryGvBefore : Arena := s6Step102EntryFBefore

private theorem s6Step102EntryGv_Incoming : rowsOwned s6Step102EntryGvBefore [s6Step102EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step102EntryFRow,s6Step102EntryGRow,s6Step102EntryFvRow,s6Step102EntryGvRow] 3 s6Step102EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step102EntryGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,856),(857,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step102EntryGv_Outgoing : rowsOwned s6Step102EntryGvAfter [s6Step102EntryGvOut] :=
  hmrRows_owned_drop s6Step102EntryGvAfter [s6Step102EntryFOut,s6Step102EntryGOut,s6Step102EntryFvOut,s6Step102EntryGvOut] 3 s6Step102EntryBank_outgoingOwned

private theorem s6Step102EntryGv_distinct : (s6Step102EntryGvRow.sign::s6Step102EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step102EntryGv_owned : (s6Step102EntryGvRow.sign::s6Step102EntryGvRow.payload).toFinset⊆s6Step102EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step102EntryGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,856),(857,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step102EntryGv_reserved : s6Step102EntryGvBefore.reserve s6Step102EntryGvFresh.toFinset=some s6Step102EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step102EntryGvFresh,arenaWires]
  · norm_num [s6Step102EntryGvBefore,s6Step102EntryFBefore,s6Step102EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step102EntryGvBefore s6Step102EntryGvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,856),(857,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step102EntryGvFresh rfl rfl
    · norm_num [s6Step102EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step102EntryGv_checked : planRowResizeLog s6Step102EntryGvBefore s6Step102EntryGvRow 65 s6Step102EntryGvFresh=
    some (s6Step102EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856],775⟩,growRow 775 s6Step102EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step102EntryGvBefore s6Step102EntryGvAfter s6Step102EntryGvRow 65 s6Step102EntryGvFresh
    s6Step102EntryGv_distinct s6Step102EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step102EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step102EntryGvRow.payload++s6Step102EntryGvFresh) s6Step102EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step102EntryBank_rows : planWindowRowsLog s6Step102EntryFBefore [(s6Step102EntryFRow,218),(s6Step102EntryGRow,218),(s6Step102EntryFvRow,65),(s6Step102EntryGvRow,65)] [s6Step102EntryFFresh,s6Step102EntryGFresh,s6Step102EntryFvFresh,s6Step102EntryGvFresh]=
    some (s6Step102EntryGvAfter,[s6Step102EntryFOut,s6Step102EntryGOut,s6Step102EntryFvOut,s6Step102EntryGvOut],(growRow 795 s6Step102EntryFFresh ++ (growRow 777 s6Step102EntryGFresh ++ (growRow 776 s6Step102EntryFvFresh ++ (growRow 775 s6Step102EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step102EntryGvAfter [] []=some (s6Step102EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step102EntryGvBefore s6Step102EntryGvAfter s6Step102EntryGvAfter
    s6Step102EntryGvRow s6Step102EntryGvOut 65 s6Step102EntryGvFresh [] [] []
    (growRow 775 s6Step102EntryGvFresh) ([]) s6Step102EntryGv_Incoming s6Step102EntryGv_checked h4 s6Step102EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step102EntryFvBefore s6Step102EntryFvAfter s6Step102EntryGvAfter
    s6Step102EntryFvRow s6Step102EntryFvOut 65 s6Step102EntryFvFresh [(s6Step102EntryGvRow,65)] [s6Step102EntryGvFresh] [s6Step102EntryGvOut]
    (growRow 776 s6Step102EntryFvFresh) ((growRow 775 s6Step102EntryGvFresh ++ [])) s6Step102EntryFv_Incoming s6Step102EntryFv_checked h3 s6Step102EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step102EntryGBefore s6Step102EntryGAfter s6Step102EntryGvAfter
    s6Step102EntryGRow s6Step102EntryGOut 218 s6Step102EntryGFresh [(s6Step102EntryFvRow,65),(s6Step102EntryGvRow,65)] [s6Step102EntryFvFresh,s6Step102EntryGvFresh] [s6Step102EntryFvOut,s6Step102EntryGvOut]
    (growRow 777 s6Step102EntryGFresh) ((growRow 776 s6Step102EntryFvFresh ++ (growRow 775 s6Step102EntryGvFresh ++ []))) s6Step102EntryG_Incoming s6Step102EntryG_checked h2 s6Step102EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step102EntryFBefore s6Step102EntryFAfter s6Step102EntryGvAfter
    s6Step102EntryFRow s6Step102EntryFOut 218 s6Step102EntryFFresh [(s6Step102EntryGRow,218),(s6Step102EntryFvRow,65),(s6Step102EntryGvRow,65)] [s6Step102EntryGFresh,s6Step102EntryFvFresh,s6Step102EntryGvFresh] [s6Step102EntryGOut,s6Step102EntryFvOut,s6Step102EntryGvOut]
    (growRow 795 s6Step102EntryFFresh) ((growRow 777 s6Step102EntryGFresh ++ (growRow 776 s6Step102EntryFvFresh ++ (growRow 775 s6Step102EntryGvFresh ++ [])))) s6Step102EntryF_Incoming s6Step102EntryF_checked h1 s6Step102EntryF_Outgoing
  exact h0

private theorem s6Step102EntryBank_checked : compileHmrBankResizeLog .entry s6Step102EntryFBefore ⟨s6Step102EntryFRow,s6Step102EntryGRow,s6Step102EntryFvRow,s6Step102EntryGvRow⟩ ⟨218,218,65,65⟩ [s6Step102EntryFFresh,s6Step102EntryGFresh,s6Step102EntryFvFresh,s6Step102EntryGvFresh]=
    some (s6Step102EntryGvAfter,⟨s6Step102EntryFOut,s6Step102EntryGOut,s6Step102EntryFvOut,s6Step102EntryGvOut⟩,(growRow 795 s6Step102EntryFFresh ++ (growRow 777 s6Step102EntryGFresh ++ (growRow 776 s6Step102EntryFvFresh ++ (growRow 775 s6Step102EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step102EntryBank_rows]
  rfl

private def s6Step102ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step102ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step102ExitFBefore : Arena := s6Step102ExitGAfter

private def s6Step102ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 784],795⟩

private def s6Step102ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 890],776⟩

private def s6Step102ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 876],777⟩

private def s6Step102ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 803],775⟩

private theorem s6Step102ExitBank_incomingDistinct : ([s6Step102ExitGRow,s6Step102ExitFRow,s6Step102ExitFvRow,s6Step102ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step102ExitF_Incoming : rowsOwned s6Step102ExitFBefore [s6Step102ExitFRow,s6Step102ExitFvRow,s6Step102ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step102ExitGRow,s6Step102ExitFRow,s6Step102ExitFvRow,s6Step102ExitGvRow] 1 s6Step102ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step102ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step102ExitBank_outgoingOwned : rowsOwned s6Step102ExitGvAfter [s6Step102ExitGOut,s6Step102ExitFOut,s6Step102ExitFvOut,s6Step102ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step102ExitGvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step102ExitF_Outgoing : rowsOwned s6Step102ExitGvAfter [s6Step102ExitFOut,s6Step102ExitFvOut,s6Step102ExitGvOut] :=
  hmrRows_owned_drop s6Step102ExitGvAfter [s6Step102ExitGOut,s6Step102ExitFOut,s6Step102ExitFvOut,s6Step102ExitGvOut] 1 s6Step102ExitBank_outgoingOwned

private theorem s6Step102ExitF_distinct : (s6Step102ExitFRow.sign::s6Step102ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step102ExitF_owned : (s6Step102ExitFRow.sign::s6Step102ExitFRow.payload).toFinset⊆s6Step102ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step102ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step102ExitF_retired : s6Step102ExitFBefore.retireSet s6Step102ExitFExtra.toFinset=s6Step102ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step102ExitFBefore s6Step102ExitFAfter s6Step102ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step102ExitFBefore s6Step102ExitFAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step102ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step102ExitF_checked : planRowResizeLog s6Step102ExitFBefore s6Step102ExitFRow 218 []=
    some (s6Step102ExitFAfter,s6Step102ExitFOut,shrinkRow 795 s6Step102ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step102ExitFBefore s6Step102ExitFRow 218 s6Step102ExitF_distinct s6Step102ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step102ExitFRow.payload.take 218) s6Step102ExitFRow.sign=s6Step102ExitFOut := by decide +kernel
  have hi : s6Step102ExitFRow.payload.drop 218=s6Step102ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step102ExitF_retired] at result
  exact result

private def s6Step102ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step102ExitFvBefore : Arena := s6Step102ExitFAfter

private theorem s6Step102ExitFv_Incoming : rowsOwned s6Step102ExitFvBefore [s6Step102ExitFvRow,s6Step102ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step102ExitGRow,s6Step102ExitFRow,s6Step102ExitFvRow,s6Step102ExitGvRow] 2 s6Step102ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step102ExitFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step102ExitFv_Outgoing : rowsOwned s6Step102ExitGvAfter [s6Step102ExitFvOut,s6Step102ExitGvOut] :=
  hmrRows_owned_drop s6Step102ExitGvAfter [s6Step102ExitGOut,s6Step102ExitFOut,s6Step102ExitFvOut,s6Step102ExitGvOut] 2 s6Step102ExitBank_outgoingOwned

private theorem s6Step102ExitFv_distinct : (s6Step102ExitFvRow.sign::s6Step102ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step102ExitFv_owned : (s6Step102ExitFvRow.sign::s6Step102ExitFvRow.payload).toFinset⊆s6Step102ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step102ExitFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step102ExitFv_retired : s6Step102ExitFvBefore.retireSet s6Step102ExitFvExtra.toFinset=s6Step102ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step102ExitFvBefore s6Step102ExitFvAfter s6Step102ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step102ExitFvBefore s6Step102ExitFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step102ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step102ExitFv_checked : planRowResizeLog s6Step102ExitFvBefore s6Step102ExitFvRow 65 []=
    some (s6Step102ExitFvAfter,s6Step102ExitFvOut,shrinkRow 776 s6Step102ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step102ExitFvBefore s6Step102ExitFvRow 65 s6Step102ExitFv_distinct s6Step102ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step102ExitFvRow.payload.take 65) s6Step102ExitFvRow.sign=s6Step102ExitFvOut := by decide +kernel
  have hi : s6Step102ExitFvRow.payload.drop 65=s6Step102ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step102ExitFv_retired] at result
  exact result

private def s6Step102ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step102ExitG_Incoming : rowsOwned s6Step102ExitGBefore [s6Step102ExitGRow,s6Step102ExitFRow,s6Step102ExitFvRow,s6Step102ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step102ExitGRow,s6Step102ExitFRow,s6Step102ExitFvRow,s6Step102ExitGvRow] 0 s6Step102ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step102ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step102ExitG_Outgoing : rowsOwned s6Step102ExitGvAfter [s6Step102ExitGOut,s6Step102ExitFOut,s6Step102ExitFvOut,s6Step102ExitGvOut] :=
  hmrRows_owned_drop s6Step102ExitGvAfter [s6Step102ExitGOut,s6Step102ExitFOut,s6Step102ExitFvOut,s6Step102ExitGvOut] 0 s6Step102ExitBank_outgoingOwned

private theorem s6Step102ExitG_distinct : (s6Step102ExitGRow.sign::s6Step102ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step102ExitG_owned : (s6Step102ExitGRow.sign::s6Step102ExitGRow.payload).toFinset⊆s6Step102ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step102ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step102ExitG_retired : s6Step102ExitGBefore.retireSet s6Step102ExitGExtra.toFinset=s6Step102ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step102ExitGBefore s6Step102ExitGAfter s6Step102ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step102ExitGBefore s6Step102ExitGAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step102ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step102ExitG_checked : planRowResizeLog s6Step102ExitGBefore s6Step102ExitGRow 218 []=
    some (s6Step102ExitGAfter,s6Step102ExitGOut,shrinkRow 777 s6Step102ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step102ExitGBefore s6Step102ExitGRow 218 s6Step102ExitG_distinct s6Step102ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step102ExitGRow.payload.take 218) s6Step102ExitGRow.sign=s6Step102ExitGOut := by decide +kernel
  have hi : s6Step102ExitGRow.payload.drop 218=s6Step102ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step102ExitG_retired] at result
  exact result

private def s6Step102ExitGvBefore : Arena := s6Step102ExitFvAfter

private theorem s6Step102ExitGv_Incoming : rowsOwned s6Step102ExitGvBefore [s6Step102ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step102ExitGRow,s6Step102ExitFRow,s6Step102ExitFvRow,s6Step102ExitGvRow] 3 s6Step102ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step102ExitGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step102ExitGv_Outgoing : rowsOwned s6Step102ExitGvAfter [s6Step102ExitGvOut] :=
  hmrRows_owned_drop s6Step102ExitGvAfter [s6Step102ExitGOut,s6Step102ExitFOut,s6Step102ExitFvOut,s6Step102ExitGvOut] 3 s6Step102ExitBank_outgoingOwned

private theorem s6Step102ExitGv_distinct : (s6Step102ExitGvRow.sign::s6Step102ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step102ExitGv_owned : (s6Step102ExitGvRow.sign::s6Step102ExitGvRow.payload).toFinset⊆s6Step102ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step102ExitGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step102ExitGv_retired : s6Step102ExitGvBefore.retireSet s6Step102ExitGvExtra.toFinset=s6Step102ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step102ExitGvBefore s6Step102ExitGvAfter s6Step102ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step102ExitGvBefore s6Step102ExitGvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step102ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step102ExitGv_checked : planRowResizeLog s6Step102ExitGvBefore s6Step102ExitGvRow 65 []=
    some (s6Step102ExitGvAfter,s6Step102ExitGvOut,shrinkRow 775 s6Step102ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step102ExitGvBefore s6Step102ExitGvRow 65 s6Step102ExitGv_distinct s6Step102ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step102ExitGvRow.payload.take 65) s6Step102ExitGvRow.sign=s6Step102ExitGvOut := by decide +kernel
  have hi : s6Step102ExitGvRow.payload.drop 65=s6Step102ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step102ExitGv_retired] at result
  exact result

private theorem s6Step102ExitBank_rows : planWindowRowsLog s6Step102ExitGBefore [(s6Step102ExitGRow,218),(s6Step102ExitFRow,218),(s6Step102ExitFvRow,65),(s6Step102ExitGvRow,65)] [[],[],[],[]]=
    some (s6Step102ExitGvAfter,[s6Step102ExitGOut,s6Step102ExitFOut,s6Step102ExitFvOut,s6Step102ExitGvOut],(shrinkRow 777 s6Step102ExitGExtra ++ (shrinkRow 795 s6Step102ExitFExtra ++ (shrinkRow 776 s6Step102ExitFvExtra ++ (shrinkRow 775 s6Step102ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step102ExitGvAfter [] []=some (s6Step102ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step102ExitGvBefore s6Step102ExitGvAfter s6Step102ExitGvAfter
    s6Step102ExitGvRow s6Step102ExitGvOut 65 [] [] [] []
    (shrinkRow 775 s6Step102ExitGvExtra) ([]) s6Step102ExitGv_Incoming s6Step102ExitGv_checked h4 s6Step102ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step102ExitFvBefore s6Step102ExitFvAfter s6Step102ExitGvAfter
    s6Step102ExitFvRow s6Step102ExitFvOut 65 [] [(s6Step102ExitGvRow,65)] [[]] [s6Step102ExitGvOut]
    (shrinkRow 776 s6Step102ExitFvExtra) ((shrinkRow 775 s6Step102ExitGvExtra ++ [])) s6Step102ExitFv_Incoming s6Step102ExitFv_checked h3 s6Step102ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step102ExitFBefore s6Step102ExitFAfter s6Step102ExitGvAfter
    s6Step102ExitFRow s6Step102ExitFOut 218 [] [(s6Step102ExitFvRow,65),(s6Step102ExitGvRow,65)] [[],[]] [s6Step102ExitFvOut,s6Step102ExitGvOut]
    (shrinkRow 795 s6Step102ExitFExtra) ((shrinkRow 776 s6Step102ExitFvExtra ++ (shrinkRow 775 s6Step102ExitGvExtra ++ []))) s6Step102ExitF_Incoming s6Step102ExitF_checked h2 s6Step102ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step102ExitGBefore s6Step102ExitGAfter s6Step102ExitGvAfter
    s6Step102ExitGRow s6Step102ExitGOut 218 [] [(s6Step102ExitFRow,218),(s6Step102ExitFvRow,65),(s6Step102ExitGvRow,65)] [[],[],[]] [s6Step102ExitFOut,s6Step102ExitFvOut,s6Step102ExitGvOut]
    (shrinkRow 777 s6Step102ExitGExtra) ((shrinkRow 795 s6Step102ExitFExtra ++ (shrinkRow 776 s6Step102ExitFvExtra ++ (shrinkRow 775 s6Step102ExitGvExtra ++ [])))) s6Step102ExitG_Incoming s6Step102ExitG_checked h1 s6Step102ExitG_Outgoing
  exact h0

private theorem s6Step102ExitBank_checked : compileHmrBankResizeLog .exit s6Step102ExitGBefore ⟨s6Step102ExitFRow,s6Step102ExitGRow,s6Step102ExitFvRow,s6Step102ExitGvRow⟩ ⟨218,218,65,65⟩ [[],[],[],[]]=
    some (s6Step102ExitGvAfter,⟨s6Step102ExitFOut,s6Step102ExitGOut,s6Step102ExitFvOut,s6Step102ExitGvOut⟩,(shrinkRow 777 s6Step102ExitGExtra ++ (shrinkRow 795 s6Step102ExitFExtra ++ (shrinkRow 776 s6Step102ExitFvExtra ++ (shrinkRow 775 s6Step102ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step102ExitBank_rows]
  rfl

private theorem s6Step102Add0_apart : Disjoint s6Step102Add0Arena.live s6Step102Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step102Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step102Add0_card : s6Step102Add0Arena.live.card=875 := by
  decide +kernel

private theorem s6Step102Add0_borrowed : s6Step102Add0Arena.checkBorrow (hmrHybridCount s6Step102Add0Arena s6Step102Add0B.length) s6Step102Add0Work=some s6Step102Add0During := by
  have len : s6Step102Add0Work.length=hmrHybridCount s6Step102Add0Arena s6Step102Add0B.length := by
    rw [hmrHybridCount,s6Step102Add0_card]
    decide +kernel
  have nd : s6Step102Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step102Add0Arena s6Step102Add0During s6Step102Add0Work.toFinset s6Step102Add0_bounded s6Step102Add0_apart rfl

private theorem s6Step102Add0_distinct : (813::845::879::(s6Step102Add0A++s6Step102Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step102Add0_owned : (813::845::879::(s6Step102Add0A++s6Step102Add0B)).toFinset⊆s6Step102Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step102Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step102Add0_checked : compileHmrHybridCinLog s6Step102Add0Arena 845 813 879 s6Step102Add0A s6Step102Add0B s6Step102Add0Work=some s6Step102Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step102Add0Arena s6Step102Add0During 845 813 879 s6Step102Add0A s6Step102Add0B s6Step102Add0Work
    (by decide +kernel) (by decide +kernel) s6Step102Add0_distinct
    (fun q hq => s6Step102Add0_owned (List.mem_toFinset.mpr hq)) s6Step102Add0_borrowed

private theorem s6Step102Add1_apart : Disjoint s6Step102Add1Arena.live s6Step102Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step102Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step102Add1_card : s6Step102Add1Arena.live.card=875 := by
  decide +kernel

private theorem s6Step102Add1_borrowed : s6Step102Add1Arena.checkBorrow (hmrHybridCount s6Step102Add1Arena s6Step102Add1B.length) s6Step102Add1Work=some s6Step102Add1During := by
  have len : s6Step102Add1Work.length=hmrHybridCount s6Step102Add1Arena s6Step102Add1B.length := by
    rw [hmrHybridCount,s6Step102Add1_card]
    decide +kernel
  have nd : s6Step102Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step102Add1Arena s6Step102Add1During s6Step102Add1Work.toFinset s6Step102Add1_bounded s6Step102Add1_apart rfl

private theorem s6Step102Add1_distinct : (813::845::879::(s6Step102Add1A++s6Step102Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step102Add1_owned : (813::845::879::(s6Step102Add1A++s6Step102Add1B)).toFinset⊆s6Step102Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step102Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step102Add1_checked : compileHmrHybridCinLog s6Step102Add1Arena 845 813 879 s6Step102Add1A s6Step102Add1B s6Step102Add1Work=some s6Step102Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step102Add1Arena s6Step102Add1During 845 813 879 s6Step102Add1A s6Step102Add1B s6Step102Add1Work
    (by decide +kernel) (by decide +kernel) s6Step102Add1_distinct
    (fun q hq => s6Step102Add1_owned (List.mem_toFinset.mpr hq)) s6Step102Add1_borrowed

private theorem s6Step102F4_apart : Disjoint (s6Step102Add0A++s6Step102Add0B).toFinset (s6Step102Add1A++s6Step102Add1B).toFinset := by
  have nd : ((s6Step102Add0A++s6Step102Add0B)++(s6Step102Add1A++s6Step102Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step102F4_carry : s6Step102F4FlagArena.checkBorrow 1 [879]=some s6Step102Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step102F4FlagArena,s6Step102HeadFvAfter,arenaWires]
  · change s6Step102Add0Arena.live=(s6Step102HeadFvAfter.live∪{813})∪{879}
    apply hmrArena_union_pair_of_filter_check s6Step102HeadFvAfter s6Step102Add0Arena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) 813 879 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step102F4_distinct : (907::845::813::879::((s6Step102Add0A++s6Step102Add1A)++(s6Step102Add0B++s6Step102Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step102F4_flag : s6Step102HeadFvAfter.checkBorrow 1 [813]=some s6Step102F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step102HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step102F4_owned : (907::845::((s6Step102Add0A++s6Step102Add1A)++(s6Step102Add0B++s6Step102Add1B))).toFinset⊆s6Step102HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step102HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step102F4_checked : compileHmrHybridF4Log s6Step102HeadFvAfter 907 845 s6Step102Add0A s6Step102Add0B s6Step102Add1A s6Step102Add1B [813] [879] s6Step102Add0Work s6Step102Add1Work=some s6Step102F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step102HeadFvAfter s6Step102F4FlagArena s6Step102Add0Arena s6Step102Add0During s6Step102Add1During 907 845
    s6Step102Add0A s6Step102Add0B s6Step102Add1A s6Step102Add1B [813] [879] s6Step102Add0Work s6Step102Add1Work
    (fun q hq => s6Step102F4_owned (List.mem_toFinset.mpr hq)) s6Step102F4_flag s6Step102F4_carry
    s6Step102F4_distinct s6Step102F4_apart s6Step102Add0_checked s6Step102Add1_checked

private theorem s6Step102Front_branch : s6Step102FrontSigmaArena.checkBorrow 1 [845]=some s6Step102HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step102FrontSigmaArena,s6Step102EntryGvAfter,arenaWires]
  · change s6Step102HeadGBefore.live=(s6Step102EntryGvAfter.live∪{907})∪{845}
    apply hmrArena_union_pair_of_filter_check s6Step102EntryGvAfter s6Step102HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 907 845 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step102Front_entry : HmrFrontEntryValid s6Step102EntryFBefore s6Step102FrontBank 218 65 ⟨218,218,65,65⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step102FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step102EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step102EntryFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(846,849),(850,856),(857,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step102FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step102Front_sigma : s6Step102EntryGvAfter.checkBorrow 1 [907]=some s6Step102FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step102EntryGvAfter,arenaWires]
  · rfl

private def s6Step102HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step102HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step102HeadFBefore : Arena := s6Step102HeadGAfter

private def s6Step102HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473],795⟩

private def s6Step102HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857],776⟩

private def s6Step102HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],777⟩

private def s6Step102HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856],775⟩

private theorem s6Step102HeadBank_incomingDistinct : ([s6Step102HeadGRow,s6Step102HeadFRow,s6Step102HeadGvRow,s6Step102HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step102HeadF_Incoming : rowsOwned s6Step102HeadFBefore [s6Step102HeadFRow,s6Step102HeadGvRow,s6Step102HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step102HeadGRow,s6Step102HeadFRow,s6Step102HeadGvRow,s6Step102HeadFvRow] 1 s6Step102HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step102HeadFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step102HeadBank_outgoingOwned : rowsOwned s6Step102HeadFvAfter [s6Step102HeadGOut,s6Step102HeadFOut,s6Step102HeadGvOut,s6Step102HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step102HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step102HeadF_Outgoing : rowsOwned s6Step102HeadFvAfter [s6Step102HeadFOut,s6Step102HeadGvOut,s6Step102HeadFvOut] :=
  hmrRows_owned_drop s6Step102HeadFvAfter [s6Step102HeadGOut,s6Step102HeadFOut,s6Step102HeadGvOut,s6Step102HeadFvOut] 1 s6Step102HeadBank_outgoingOwned

private theorem s6Step102HeadF_distinct : (s6Step102HeadFRow.sign::s6Step102HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step102HeadF_owned : (s6Step102HeadFRow.sign::s6Step102HeadFRow.payload).toFinset⊆s6Step102HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step102HeadFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step102HeadF_reserved : s6Step102HeadFBefore.reserve s6Step102HeadFFresh.toFinset=some s6Step102HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step102HeadFFresh,arenaWires]
  · norm_num [s6Step102HeadFBefore,s6Step102HeadGAfter,s6Step102HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step102HeadFBefore s6Step102HeadFAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step102HeadFFresh rfl rfl
    · norm_num [s6Step102HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step102HeadF_checked : planRowResizeLog s6Step102HeadFBefore s6Step102HeadFRow 219 s6Step102HeadFFresh=
    some (s6Step102HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 784],795⟩,growRow 795 s6Step102HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step102HeadFBefore s6Step102HeadFAfter s6Step102HeadFRow 219 s6Step102HeadFFresh
    s6Step102HeadF_distinct s6Step102HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step102HeadF_reserved
  have rowEq : WindowRow.mk (s6Step102HeadFRow.payload++s6Step102HeadFFresh) s6Step102HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 784],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step102HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step102HeadFvBefore : Arena := s6Step102HeadGvAfter

private theorem s6Step102HeadFv_Incoming : rowsOwned s6Step102HeadFvBefore [s6Step102HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step102HeadGRow,s6Step102HeadFRow,s6Step102HeadGvRow,s6Step102HeadFvRow] 3 s6Step102HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step102HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step102HeadFv_Outgoing : rowsOwned s6Step102HeadFvAfter [s6Step102HeadFvOut] :=
  hmrRows_owned_drop s6Step102HeadFvAfter [s6Step102HeadGOut,s6Step102HeadFOut,s6Step102HeadGvOut,s6Step102HeadFvOut] 3 s6Step102HeadBank_outgoingOwned

private theorem s6Step102HeadFv_distinct : (s6Step102HeadFvRow.sign::s6Step102HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step102HeadFv_owned : (s6Step102HeadFvRow.sign::s6Step102HeadFvRow.payload).toFinset⊆s6Step102HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step102HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step102HeadFv_reserved : s6Step102HeadFvBefore.reserve s6Step102HeadFvFresh.toFinset=some s6Step102HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step102HeadFvFresh,arenaWires]
  · norm_num [s6Step102HeadFvBefore,s6Step102HeadGvAfter,s6Step102HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step102HeadFvBefore s6Step102HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step102HeadFvFresh rfl rfl
    · norm_num [s6Step102HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step102HeadFv_checked : planRowResizeLog s6Step102HeadFvBefore s6Step102HeadFvRow 66 s6Step102HeadFvFresh=
    some (s6Step102HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 890],776⟩,growRow 776 s6Step102HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step102HeadFvBefore s6Step102HeadFvAfter s6Step102HeadFvRow 66 s6Step102HeadFvFresh
    s6Step102HeadFv_distinct s6Step102HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step102HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step102HeadFvRow.payload++s6Step102HeadFvFresh) s6Step102HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 890],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step102HeadG_Incoming : rowsOwned s6Step102HeadGBefore [s6Step102HeadGRow,s6Step102HeadFRow,s6Step102HeadGvRow,s6Step102HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step102HeadGRow,s6Step102HeadFRow,s6Step102HeadGvRow,s6Step102HeadFvRow] 0 s6Step102HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step102HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step102HeadG_Outgoing : rowsOwned s6Step102HeadFvAfter [s6Step102HeadGOut,s6Step102HeadFOut,s6Step102HeadGvOut,s6Step102HeadFvOut] :=
  hmrRows_owned_drop s6Step102HeadFvAfter [s6Step102HeadGOut,s6Step102HeadFOut,s6Step102HeadGvOut,s6Step102HeadFvOut] 0 s6Step102HeadBank_outgoingOwned

private theorem s6Step102HeadG_distinct : (s6Step102HeadGRow.sign::s6Step102HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step102HeadG_owned : (s6Step102HeadGRow.sign::s6Step102HeadGRow.payload).toFinset⊆s6Step102HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step102HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step102HeadG_reserved : s6Step102HeadGBefore.reserve s6Step102HeadGFresh.toFinset=some s6Step102HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step102HeadGFresh,arenaWires]
  · norm_num [s6Step102HeadGBefore,s6Step102HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step102HeadGBefore s6Step102HeadGAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step102HeadGFresh rfl rfl
    · norm_num [s6Step102HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step102HeadG_checked : planRowResizeLog s6Step102HeadGBefore s6Step102HeadGRow 219 s6Step102HeadGFresh=
    some (s6Step102HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 876],777⟩,growRow 777 s6Step102HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step102HeadGBefore s6Step102HeadGAfter s6Step102HeadGRow 219 s6Step102HeadGFresh
    s6Step102HeadG_distinct s6Step102HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step102HeadG_reserved
  have rowEq : WindowRow.mk (s6Step102HeadGRow.payload++s6Step102HeadGFresh) s6Step102HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 876],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step102HeadGvBefore : Arena := s6Step102HeadFAfter

private theorem s6Step102HeadGv_Incoming : rowsOwned s6Step102HeadGvBefore [s6Step102HeadGvRow,s6Step102HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step102HeadGRow,s6Step102HeadFRow,s6Step102HeadGvRow,s6Step102HeadFvRow] 2 s6Step102HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step102HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step102HeadGv_Outgoing : rowsOwned s6Step102HeadFvAfter [s6Step102HeadGvOut,s6Step102HeadFvOut] :=
  hmrRows_owned_drop s6Step102HeadFvAfter [s6Step102HeadGOut,s6Step102HeadFOut,s6Step102HeadGvOut,s6Step102HeadFvOut] 2 s6Step102HeadBank_outgoingOwned

private theorem s6Step102HeadGv_distinct : (s6Step102HeadGvRow.sign::s6Step102HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step102HeadGv_owned : (s6Step102HeadGvRow.sign::s6Step102HeadGvRow.payload).toFinset⊆s6Step102HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step102HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step102HeadGv_reserved : s6Step102HeadGvBefore.reserve s6Step102HeadGvFresh.toFinset=some s6Step102HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step102HeadGvFresh,arenaWires]
  · norm_num [s6Step102HeadGvBefore,s6Step102HeadFAfter,s6Step102HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step102HeadGvBefore s6Step102HeadGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,865),(866,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step102HeadGvFresh rfl rfl
    · norm_num [s6Step102HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step102HeadGv_checked : planRowResizeLog s6Step102HeadGvBefore s6Step102HeadGvRow 66 s6Step102HeadGvFresh=
    some (s6Step102HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 803],775⟩,growRow 775 s6Step102HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step102HeadGvBefore s6Step102HeadGvAfter s6Step102HeadGvRow 66 s6Step102HeadGvFresh
    s6Step102HeadGv_distinct s6Step102HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step102HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step102HeadGvRow.payload++s6Step102HeadGvFresh) s6Step102HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 803],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step102HeadBank_rows : planWindowRowsLog s6Step102HeadGBefore [(s6Step102HeadGRow,219),(s6Step102HeadFRow,219),(s6Step102HeadGvRow,66),(s6Step102HeadFvRow,66)] [s6Step102HeadGFresh,s6Step102HeadFFresh,s6Step102HeadGvFresh,s6Step102HeadFvFresh]=
    some (s6Step102HeadFvAfter,[s6Step102HeadGOut,s6Step102HeadFOut,s6Step102HeadGvOut,s6Step102HeadFvOut],(growRow 777 s6Step102HeadGFresh ++ (growRow 795 s6Step102HeadFFresh ++ (growRow 775 s6Step102HeadGvFresh ++ (growRow 776 s6Step102HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step102HeadFvAfter [] []=some (s6Step102HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step102HeadFvBefore s6Step102HeadFvAfter s6Step102HeadFvAfter
    s6Step102HeadFvRow s6Step102HeadFvOut 66 s6Step102HeadFvFresh [] [] []
    (growRow 776 s6Step102HeadFvFresh) ([]) s6Step102HeadFv_Incoming s6Step102HeadFv_checked h4 s6Step102HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step102HeadGvBefore s6Step102HeadGvAfter s6Step102HeadFvAfter
    s6Step102HeadGvRow s6Step102HeadGvOut 66 s6Step102HeadGvFresh [(s6Step102HeadFvRow,66)] [s6Step102HeadFvFresh] [s6Step102HeadFvOut]
    (growRow 775 s6Step102HeadGvFresh) ((growRow 776 s6Step102HeadFvFresh ++ [])) s6Step102HeadGv_Incoming s6Step102HeadGv_checked h3 s6Step102HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step102HeadFBefore s6Step102HeadFAfter s6Step102HeadFvAfter
    s6Step102HeadFRow s6Step102HeadFOut 219 s6Step102HeadFFresh [(s6Step102HeadGvRow,66),(s6Step102HeadFvRow,66)] [s6Step102HeadGvFresh,s6Step102HeadFvFresh] [s6Step102HeadGvOut,s6Step102HeadFvOut]
    (growRow 795 s6Step102HeadFFresh) ((growRow 775 s6Step102HeadGvFresh ++ (growRow 776 s6Step102HeadFvFresh ++ []))) s6Step102HeadF_Incoming s6Step102HeadF_checked h2 s6Step102HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step102HeadGBefore s6Step102HeadGAfter s6Step102HeadFvAfter
    s6Step102HeadGRow s6Step102HeadGOut 219 s6Step102HeadGFresh [(s6Step102HeadFRow,219),(s6Step102HeadGvRow,66),(s6Step102HeadFvRow,66)] [s6Step102HeadFFresh,s6Step102HeadGvFresh,s6Step102HeadFvFresh] [s6Step102HeadFOut,s6Step102HeadGvOut,s6Step102HeadFvOut]
    (growRow 777 s6Step102HeadGFresh) ((growRow 795 s6Step102HeadFFresh ++ (growRow 775 s6Step102HeadGvFresh ++ (growRow 776 s6Step102HeadFvFresh ++ [])))) s6Step102HeadG_Incoming s6Step102HeadG_checked h1 s6Step102HeadG_Outgoing
  exact h0

private theorem s6Step102HeadBank_checked : compileHmrBankResizeLog .headroom s6Step102HeadGBefore ⟨s6Step102HeadFRow,s6Step102HeadGRow,s6Step102HeadFvRow,s6Step102HeadGvRow⟩ ⟨219,219,66,66⟩ [s6Step102HeadGFresh,s6Step102HeadFFresh,s6Step102HeadGvFresh,s6Step102HeadFvFresh]=
    some (s6Step102HeadFvAfter,⟨s6Step102HeadFOut,s6Step102HeadGOut,s6Step102HeadFvOut,s6Step102HeadGvOut⟩,(growRow 777 s6Step102HeadGFresh ++ (growRow 795 s6Step102HeadFFresh ++ (growRow 775 s6Step102HeadGvFresh ++ (growRow 776 s6Step102HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step102HeadBank_rows]
  rfl

private theorem s6Step102Front_checked : compileHmrSourceFrontLog s6Step102EntryFBefore s6Step102FrontBank 218 65 ⟨218,218,65,65⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step102FrontLog=some s6Step102FrontPlan := by
  have pairEq : s6Step102FrontPair=⟨s6Step102HeadFRow,s6Step102HeadGRow,s6Step102HeadFvRow,s6Step102HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step102FrontHead=⟨s6Step102ExitFRow,s6Step102ExitGRow,s6Step102ExitFvRow,s6Step102ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step102Add0A=s6Step102FrontHead.f.wires := by decide +kernel
  have gEq : s6Step102Add0B=s6Step102FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step102Add1A=s6Step102FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step102Add1B=s6Step102FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step102EntryFBefore s6Step102FrontBank 218 65 ⟨218,218,65,65⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step102FrontLog s6Step102FrontPlan
  · exact s6Step102Front_entry
  · exact s6Step102EntryBank_checked
  · exact s6Step102Front_sigma
  · rfl
  · exact s6Step102Front_branch
  · rfl
  · simpa only [s6Step102FrontPlan,pairEq] using s6Step102HeadBank_checked
  · simpa only [s6Step102FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step102F4_checked
  · exact s6Step102Counter_checked
  · rfl
  · simpa only [s6Step102FrontPlan,headEq] using s6Step102ExitBank_checked

private theorem s6Step102Complete_explicit_checked : compileHmrEarlyStepLog s6Step102EntryFBefore s6Step102FrontBank 218 65 ⟨218,218,65,65⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step102CompleteLog=some s6Step102CompletePlan := by
  let Q := s6Step102EarlyControlPlan
  have hq := s6Step102EarlyControl_plan_checked
  have fv1 : s6Step102CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step102CompleteOut.fv.payload[2]?.getD s6Step102CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step102CompleteOut.fv.payload[3]?.getD s6Step102CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step102CompleteOut.fv.payload[4]?.getD s6Step102CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step102EntryFBefore s6Step102EarlyControlArena s6Step102FrontBank 218 65 ⟨218,218,65,65⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 35 s6Step102CompleteLog s6Step102FrontPlan Q
    s6Step102Front_checked s6Step102Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step102Complete_owned s6Step102Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step102EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 769 907 s6Step102CompleteOut.fv.second (s6Step102CompleteOut.fv.payload[2]?.getD s6Step102CompleteOut.fv.sign) (s6Step102CompleteOut.fv.payload[3]?.getD s6Step102CompleteOut.fv.sign) (s6Step102CompleteOut.fv.payload[4]?.getD s6Step102CompleteOut.fv.sign) 845 35 s6Step102EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep102Arena : Arena := s6Step102EntryFBefore
def s6PrivateStep102Bank : WindowBank := s6Step102FrontBank
def s6PrivateStep102Spec : HmrSourceWalkStepLog := ⟨218,65,⟨218,218,65,65⟩,35,.early s6Step102CompleteLog⟩
def s6PrivateStep102Plan : HmrSourceStepPlan := .early s6Step102CompletePlan
theorem s6PrivateStep102_source : s6PrivateStep102Spec=s6ObservedLogs96[6] := rfl
theorem s6PrivateStep102_checked : compileHmrSourceStepLog s6PrivateStep102Arena s6PrivateStep102Bank
    s6PrivateStep102Spec.fgWidth s6PrivateStep102Spec.vWidth s6PrivateStep102Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840]
    6 498 102 s6PrivateStep102Spec.need none s6PrivateStep102Spec.log=some s6PrivateStep102Plan := by
  change compileHmrSourceStepLog s6Step102EntryFBefore s6Step102FrontBank 218 65 ⟨218,218,65,65⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840] 6 498 102 35 none (.early s6Step102CompleteLog)=some (.early s6Step102CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 102<498)]
  rw [s6Step102Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
