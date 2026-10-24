import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep111
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

private def s6Step113CompleteMoves : List (Wire × Wire) := []

private def s6Step113EarlyControlLog : HmrEarlyControlLog := ⟨[907, 868, 880, 823, 892],[882],[864],[813, 879, 865, 796, 891, 903],[]⟩

private def s6Step113FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [823], [], [793]],[[892], [880], [907], [868]],[[], [], [], []]⟩,[886],[803],[882],[864],[813, 879, 865, 796, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[813, 879, 865, 796, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[882, 864, 813, 879]⟩

private def s6Step113CompleteLog : HmrEarlyStepLog := ⟨s6Step113FrontLog,s6Step113CompleteMoves,s6Step113EarlyControlLog⟩

private def s6Step113ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467],795⟩

private def s6Step113ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789],776⟩

private def s6Step113ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210],777⟩

private def s6Step113ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793],775⟩

private def s6Step113FrontOut : WindowBank := ⟨s6Step113ExitFOut,s6Step113ExitGOut,s6Step113ExitFvOut,s6Step113ExitGvOut⟩

private def s6Step113CompleteOut : WindowBank := s6Step113FrontOut.repacked s6Step113CompleteMoves

private def s6Step113EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step113EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step113EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step113EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step113EarlyControlPositiveArena,[882],s6Step113EarlyControlEqualityArena,[864],⟨⟨886,false⟩,[⟨⟨882,false⟩,864⟩]⟩⟩

private def s6Step113EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step113EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step113EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step113EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step113EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step113EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step113EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,907⟩,⟨⟨772,false⟩,868⟩,⟨⟨771,false⟩,880⟩,⟨⟨770,false⟩,823⟩,⟨⟨769,false⟩,892⟩]⟩

private def s6Step113EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step113EarlyControlZeroArena,s6Step113EarlyControlZeroPlan,s6Step113EarlyControlClassPlan,s6Step113EarlyControlFlagArena,s6Step113EarlyControlFittedArena,s6Step113EarlyControlHistoryArena,s6Step113EarlyControlSigmaArena,s6Step113EarlyControlOutputArena,s6Step113EarlyControlLog⟩

private def s6Step113CounterWork : List Wire := [882, 864, 813, 879]

private theorem s6Step113Counter_bounded : s6Step113CounterWork.toFinset⊆arenaWires := by norm_num [s6Step113CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step113HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step113CounterDuring : Arena := ⟨s6Step113HeadFvAfter.live∪s6Step113CounterWork.toFinset,Finset.union_subset s6Step113HeadFvAfter.bounded s6Step113Counter_bounded⟩

private def s6Step113EntryFFresh : List Wire := []

private def s6Step113EntryFvFresh : List Wire := []

private def s6Step113EntryGFresh : List Wire := [823]

private def s6Step113EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step113EntryGvFresh : List Wire := [793]

private def s6Step113ExitFExtra : List Wire := [880]

private def s6Step113ExitFvExtra : List Wire := [868]

private def s6Step113ExitGExtra : List Wire := [823, 892]

private def s6Step113ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step113ExitGvExtra : List Wire := [907]

private def s6Step113Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step113Add0Work : List Wire := [813, 879, 865, 796, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step113Add0_bounded : s6Step113Add0Work.toFinset⊆arenaWires := by
  have h : s6Step113Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step113Add0During : Arena := ⟨s6Step113Add0Arena.live∪s6Step113Add0Work.toFinset,Finset.union_subset s6Step113Add0Arena.bounded s6Step113Add0_bounded⟩

private def s6Step113Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step113Add1Work : List Wire := [813, 879, 865, 796, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step113Add1_bounded : s6Step113Add1Work.toFinset⊆arenaWires := by
  have h : s6Step113Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step113Add1During : Arena := ⟨s6Step113Add1Arena.live∪s6Step113Add1Work.toFinset,Finset.union_subset s6Step113Add1Arena.bounded s6Step113Add1_bounded⟩

private def s6Step113F4FlagArena : Arena := ⟨s6Step113HeadFvAfter.live∪{882},Finset.union_subset s6Step113HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step113F4Plan : HmrHybridF4Plan := ⟨s6Step113F4FlagArena,[882],s6Step113Add0Arena,[864],s6Step113Add0During,s6Step113Add0Work,s6Step113Add1During,s6Step113Add1Work⟩

private def s6Step113HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 880],795⟩

private def s6Step113HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 868],776⟩

private def s6Step113HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 823, 892],777⟩

private def s6Step113HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 907],775⟩

private def s6Step113FrontHead : WindowBank := ⟨s6Step113HeadFOut,s6Step113HeadGOut,s6Step113HeadFvOut,s6Step113HeadGvOut⟩

private def s6Step113EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467],795⟩

private def s6Step113EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789],776⟩

private def s6Step113EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 823],777⟩

private def s6Step113EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793],775⟩

private def s6Step113FrontPair : WindowBank := ⟨s6Step113EntryFOut,s6Step113EntryGOut,s6Step113EntryFvOut,s6Step113EntryGvOut⟩

private def s6Step113FrontSigmaArena : Arena := ⟨s6Step113EntryGvAfter.live∪{886},Finset.union_subset s6Step113EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step113HeadFFresh : List Wire := [880]

private def s6Step113HeadFvFresh : List Wire := [868]

private def s6Step113HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step113HeadGFresh : List Wire := [892]

private def s6Step113HeadGvFresh : List Wire := [907]

private def s6Step113FrontPlan : HmrSourceFront := ⟨s6Step113EntryGvAfter,s6Step113FrontPair,(growRow 795 s6Step113EntryFFresh ++ (growRow 777 s6Step113EntryGFresh ++ (growRow 776 s6Step113EntryFvFresh ++ (growRow 775 s6Step113EntryGvFresh ++ [])))),s6Step113FrontSigmaArena,[886],s6Step113HeadGBefore,[803],
  s6Step113HeadFvAfter,s6Step113FrontHead,(growRow 777 s6Step113HeadGFresh ++ (growRow 795 s6Step113HeadFFresh ++ (growRow 775 s6Step113HeadGvFresh ++ (growRow 776 s6Step113HeadFvFresh ++ [])))),s6Step113F4Plan,s6Step113CounterDuring,s6Step113CounterWork,s6Step113ExitGvAfter,s6Step113FrontOut,(shrinkRow 777 s6Step113ExitGExtra ++ (shrinkRow 795 s6Step113ExitFExtra ++ (shrinkRow 776 s6Step113ExitFvExtra ++ (shrinkRow 775 s6Step113ExitGvExtra ++ []))))⟩

private def s6Step113CompletePlan : HmrEarlyStepPlan := ⟨s6Step113FrontPlan,s6Step113EarlyControlArena,s6Step113EarlyControlPlan,s6Step113CompleteMoves⟩

private theorem s6Step113Complete_apart : List.Disjoint (s6Step113CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [886, 803, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] := by
  have nd : ((s6Step113CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[886, 803, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step113Complete_owned : (s6Step113CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step113EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step113EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step113Complete_repack : s6Step113ExitGvAfter.checkRepack s6Step113CompleteMoves=some s6Step113EarlyControlArena := by rfl

private theorem s6Step113EarlyControl_branchOwned : ([803] : List Wire).toFinset⊆s6Step113EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step113EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step113EarlyControl_branch : compileHmrBranchRetirement s6Step113EarlyControlSigmaArena 803=some s6Step113EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step113EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step113EarlyControlSigmaArena s6Step113EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [803] rfl rfl
    decide +kernel

private theorem s6Step113EarlyControl_classEqualityBorrow : s6Step113EarlyControlPositiveArena.checkBorrow (([886, 882] : List Wire).length-1) s6Step113EarlyControlLog.classWork=some s6Step113EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step113EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step113EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step113EarlyControlEqualityArena,s6Step113EarlyControlPositiveArena,s6Step113EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step113EarlyControl_classEqualityOwned : ([886, 882] : List Wire).toFinset⊆s6Step113EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step113EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step113EarlyControl_classEquality : compileHmrEqualityLog s6Step113EarlyControlPositiveArena [886, 882] 0 s6Step113EarlyControlLog.classWork=some (s6Step113EarlyControlEqualityArena,s6Step113EarlyControlLog.classWork,s6Step113EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step113EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step113EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step113EarlyControl_classOwned : ([769, 892, 886] : List Wire).toFinset⊆s6Step113EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step113EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step113EarlyControl_positiveBorrow : s6Step113EarlyControlZeroArena.checkBorrow (1) s6Step113EarlyControlLog.positiveWork=some s6Step113EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step113EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step113EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step113EarlyControlPositiveArena,s6Step113EarlyControlZeroArena,s6Step113EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step113EarlyControl_class : compileHmrSourceClassLog s6Step113EarlyControlZeroArena false 769 s6Step113EarlyControlZeroPlan.top 0 886 s6Step113EarlyControlLog.positiveWork s6Step113EarlyControlLog.classWork=some s6Step113EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step113EarlyControlClassPlan s6Step113EarlyControlZeroArena false 769 s6Step113EarlyControlZeroPlan.top 0 886
  constructor
  · decide +kernel
  · exact s6Step113EarlyControl_classOwned
  · exact s6Step113EarlyControl_positiveBorrow
  · exact s6Step113EarlyControl_classEquality

private theorem s6Step113EarlyControl_entryRecordOwned : ([803, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step113EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step113EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step113EarlyControl_entrySigmaOwned : ([886, 254] : List Wire).toFinset⊆s6Step113EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step113EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step113EarlyControl_fitBorrow : s6Step113EarlyControlFlagArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step113EarlyControlLog.recordFresh=some s6Step113EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step113EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step113EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step113EarlyControlFittedArena,s6Step113EarlyControlFlagArena,s6Step113EarlyControlLog,arenaWires]

private theorem s6Step113EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step113EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step113EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step113EarlyControl_fit : compileHmrRecordGrowLog s6Step113EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step113EarlyControlLog.recordFresh=some s6Step113EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step113EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step113EarlyControl_fitBorrow

private theorem s6Step113EarlyControl_flagsBorrow : s6Step113EarlyControlEqualityArena.checkBorrow (6) s6Step113EarlyControlLog.flagWork=some s6Step113EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step113EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step113EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step113EarlyControlFlagArena,s6Step113EarlyControlEqualityArena,s6Step113EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step113EarlyControl_flagsOwned : ([864, 253, 252, 251] : List Wire).toFinset⊆s6Step113EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step113EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step113EarlyControl_flags : compileHmrFlagsLog s6Step113EarlyControlClassPlan.equalityArena s6Step113EarlyControlClassPlan.equality.top 253 252 251 s6Step113EarlyControlLog.flagWork=some s6Step113EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step113EarlyControl_flagsOwned⟩
  · exact s6Step113EarlyControl_flagsBorrow

private theorem s6Step113EarlyControl_historyBorrow : s6Step113EarlyControlArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step113EarlyControlLog.recordFresh=some s6Step113EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step113EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step113EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step113EarlyControlArena s6Step113EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step113EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step113EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step113EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step113EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step113EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step113EarlyControl_history : compileHmrRecordGrowLog s6Step113EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step113EarlyControlLog.recordFresh=some s6Step113EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step113EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step113EarlyControl_historyBorrow

private theorem s6Step113EarlyControl_sigmaOwned : ([254, 886] : List Wire).toFinset⊆s6Step113EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step113EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step113EarlyControl_sigmaReleaseOwned : ([886] : List Wire).toFinset⊆s6Step113EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step113EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step113EarlyControl_sigmaRelease : s6Step113EarlyControlHistoryArena.release {886} (fun _ => false)=some s6Step113EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step113EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step113EarlyControlHistoryArena s6Step113EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [886] rfl rfl
    decide +kernel

private theorem s6Step113EarlyControl_sigma : compileHmrSigmaDropLog s6Step113EarlyControlHistoryArena false 0 0 254 886 []=some s6Step113EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step113EarlyControl_sigmaOwned⟩
  · exact s6Step113EarlyControl_sigmaRelease

private theorem s6Step113EarlyControl_zeroBorrow : s6Step113EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step113EarlyControlLog.zeroWork=some s6Step113EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step113EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step113EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step113EarlyControlArena s6Step113EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step113EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step113EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step113EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step113EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step113EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step113EarlyControl_zero : compileHmrEqualityLog s6Step113EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step113EarlyControlLog.zeroWork=some (s6Step113EarlyControlZeroArena,s6Step113EarlyControlLog.zeroWork,s6Step113EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step113EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step113EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step113EarlyControl_logged : s6Step113EarlyControlPlan.Logged s6Step113EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 886 254 253 252 251 803 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step113EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step113EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step113EarlyControl_zero
  · exact s6Step113EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step113EarlyControl_flags
  · exact s6Step113EarlyControl_fit
  · exact s6Step113EarlyControl_history
  · exact s6Step113EarlyControl_sigma
  · exact s6Step113EarlyControl_branch

private theorem s6Step113EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step113EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 886 254 253 252 251 803 37 s6Step113EarlyControlLog=some s6Step113EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step113EarlyControlPlan s6Step113EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 886 254 253 252 251 803 37 s6Step113EarlyControl_logged

private def s6Step113EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step113EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467],795⟩

private def s6Step113EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789],776⟩

private def s6Step113EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210],777⟩

private def s6Step113EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805],775⟩

private def s6Step113FrontBank : WindowBank := ⟨s6Step113EntryFRow,s6Step113EntryGRow,s6Step113EntryFvRow,s6Step113EntryGvRow⟩

private def s6Step113Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 880, 795]

private def s6Step113Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 823, 892, 777]

private def s6Step113Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 868, 776]

private def s6Step113Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 907, 775]

private theorem s6Step113Counter_apart : Disjoint s6Step113HeadFvAfter.live s6Step113CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step113HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step113Counter_borrowed : s6Step113HeadFvAfter.checkBorrow 4 s6Step113CounterWork=some s6Step113CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step113HeadFvAfter s6Step113CounterDuring s6Step113CounterWork.toFinset s6Step113Counter_bounded s6Step113Counter_apart rfl

private theorem s6Step113Counter_owned : (886::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step113HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step113HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step113Counter_checked : compileHmrCounterStepLog s6Step113HeadFvAfter true 886 [774, 773, 772, 771, 770, 769] s6Step113CounterWork=some s6Step113CounterDuring := by
  have owned : ∀q∈886::[774, 773, 772, 771, 770, 769],q∈s6Step113HeadFvAfter.live := fun q hq => s6Step113Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step113Counter_borrowed

private def s6Step113EntryFAfter : Arena := s6Step113EntryFBefore

private theorem s6Step113EntryBank_incomingDistinct : ([s6Step113EntryFRow,s6Step113EntryGRow,s6Step113EntryFvRow,s6Step113EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step113EntryF_Incoming : rowsOwned s6Step113EntryFBefore [s6Step113EntryFRow,s6Step113EntryGRow,s6Step113EntryFvRow,s6Step113EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step113EntryFRow,s6Step113EntryGRow,s6Step113EntryFvRow,s6Step113EntryGvRow] 0 s6Step113EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step113EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step113EntryBank_outgoingOwned : rowsOwned s6Step113EntryGvAfter [s6Step113EntryFOut,s6Step113EntryGOut,s6Step113EntryFvOut,s6Step113EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step113EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step113EntryF_Outgoing : rowsOwned s6Step113EntryGvAfter [s6Step113EntryFOut,s6Step113EntryGOut,s6Step113EntryFvOut,s6Step113EntryGvOut] :=
  hmrRows_owned_drop s6Step113EntryGvAfter [s6Step113EntryFOut,s6Step113EntryGOut,s6Step113EntryFvOut,s6Step113EntryGvOut] 0 s6Step113EntryBank_outgoingOwned

private theorem s6Step113EntryF_distinct : (s6Step113EntryFRow.sign::s6Step113EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step113EntryF_owned : (s6Step113EntryFRow.sign::s6Step113EntryFRow.payload).toFinset⊆s6Step113EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step113EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step113EntryF_reserved : s6Step113EntryFBefore.reserve s6Step113EntryFFresh.toFinset=some s6Step113EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step113EntryFFresh,arenaWires]
  · norm_num [s6Step113EntryFBefore,s6Step113EntryFFresh,arenaWires]
  · simp only [s6Step113EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step113EntryF_checked : planRowResizeLog s6Step113EntryFBefore s6Step113EntryFRow 212 s6Step113EntryFFresh=
    some (s6Step113EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467],795⟩,growRow 795 s6Step113EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step113EntryFBefore s6Step113EntryFAfter s6Step113EntryFRow 212 s6Step113EntryFFresh
    s6Step113EntryF_distinct s6Step113EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step113EntryF_reserved
  have rowEq : WindowRow.mk (s6Step113EntryFRow.payload++s6Step113EntryFFresh) s6Step113EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step113EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step113EntryFvAfter : Arena := s6Step113EntryGAfter

private def s6Step113EntryFvBefore : Arena := s6Step113EntryGAfter

private theorem s6Step113EntryFv_Incoming : rowsOwned s6Step113EntryFvBefore [s6Step113EntryFvRow,s6Step113EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step113EntryFRow,s6Step113EntryGRow,s6Step113EntryFvRow,s6Step113EntryGvRow] 2 s6Step113EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step113EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step113EntryFv_Outgoing : rowsOwned s6Step113EntryGvAfter [s6Step113EntryFvOut,s6Step113EntryGvOut] :=
  hmrRows_owned_drop s6Step113EntryGvAfter [s6Step113EntryFOut,s6Step113EntryGOut,s6Step113EntryFvOut,s6Step113EntryGvOut] 2 s6Step113EntryBank_outgoingOwned

private theorem s6Step113EntryFv_distinct : (s6Step113EntryFvRow.sign::s6Step113EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step113EntryFv_owned : (s6Step113EntryFvRow.sign::s6Step113EntryFvRow.payload).toFinset⊆s6Step113EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step113EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step113EntryFv_reserved : s6Step113EntryFvBefore.reserve s6Step113EntryFvFresh.toFinset=some s6Step113EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step113EntryFvFresh,arenaWires]
  · norm_num [s6Step113EntryFvBefore,s6Step113EntryGAfter,s6Step113EntryFvFresh,arenaWires]
  · simp only [s6Step113EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step113EntryFv_checked : planRowResizeLog s6Step113EntryFvBefore s6Step113EntryFvRow 70 s6Step113EntryFvFresh=
    some (s6Step113EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789],776⟩,growRow 776 s6Step113EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step113EntryFvBefore s6Step113EntryFvAfter s6Step113EntryFvRow 70 s6Step113EntryFvFresh
    s6Step113EntryFv_distinct s6Step113EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step113EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step113EntryFvRow.payload++s6Step113EntryFvFresh) s6Step113EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step113EntryGBefore : Arena := s6Step113EntryFBefore

private theorem s6Step113EntryG_Incoming : rowsOwned s6Step113EntryGBefore [s6Step113EntryGRow,s6Step113EntryFvRow,s6Step113EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step113EntryFRow,s6Step113EntryGRow,s6Step113EntryFvRow,s6Step113EntryGvRow] 1 s6Step113EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step113EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step113EntryG_Outgoing : rowsOwned s6Step113EntryGvAfter [s6Step113EntryGOut,s6Step113EntryFvOut,s6Step113EntryGvOut] :=
  hmrRows_owned_drop s6Step113EntryGvAfter [s6Step113EntryFOut,s6Step113EntryGOut,s6Step113EntryFvOut,s6Step113EntryGvOut] 1 s6Step113EntryBank_outgoingOwned

private theorem s6Step113EntryG_distinct : (s6Step113EntryGRow.sign::s6Step113EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step113EntryG_owned : (s6Step113EntryGRow.sign::s6Step113EntryGRow.payload).toFinset⊆s6Step113EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step113EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step113EntryG_reserved : s6Step113EntryGBefore.reserve s6Step113EntryGFresh.toFinset=some s6Step113EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step113EntryGFresh,arenaWires]
  · norm_num [s6Step113EntryGBefore,s6Step113EntryFBefore,s6Step113EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step113EntryGBefore s6Step113EntryGAfter (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step113EntryGFresh rfl rfl
    · norm_num [s6Step113EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step113EntryG_checked : planRowResizeLog s6Step113EntryGBefore s6Step113EntryGRow 212 s6Step113EntryGFresh=
    some (s6Step113EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 823],777⟩,growRow 777 s6Step113EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step113EntryGBefore s6Step113EntryGAfter s6Step113EntryGRow 212 s6Step113EntryGFresh
    s6Step113EntryG_distinct s6Step113EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step113EntryG_reserved
  have rowEq : WindowRow.mk (s6Step113EntryGRow.payload++s6Step113EntryGFresh) s6Step113EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 823],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step113EntryGvBefore : Arena := s6Step113EntryGAfter

private theorem s6Step113EntryGv_Incoming : rowsOwned s6Step113EntryGvBefore [s6Step113EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step113EntryFRow,s6Step113EntryGRow,s6Step113EntryFvRow,s6Step113EntryGvRow] 3 s6Step113EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step113EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step113EntryGv_Outgoing : rowsOwned s6Step113EntryGvAfter [s6Step113EntryGvOut] :=
  hmrRows_owned_drop s6Step113EntryGvAfter [s6Step113EntryFOut,s6Step113EntryGOut,s6Step113EntryFvOut,s6Step113EntryGvOut] 3 s6Step113EntryBank_outgoingOwned

private theorem s6Step113EntryGv_distinct : (s6Step113EntryGvRow.sign::s6Step113EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step113EntryGv_owned : (s6Step113EntryGvRow.sign::s6Step113EntryGvRow.payload).toFinset⊆s6Step113EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step113EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step113EntryGv_reserved : s6Step113EntryGvBefore.reserve s6Step113EntryGvFresh.toFinset=some s6Step113EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step113EntryGvFresh,arenaWires]
  · norm_num [s6Step113EntryGvBefore,s6Step113EntryGAfter,s6Step113EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step113EntryGvBefore s6Step113EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step113EntryGvFresh rfl rfl
    · norm_num [s6Step113EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step113EntryGv_checked : planRowResizeLog s6Step113EntryGvBefore s6Step113EntryGvRow 70 s6Step113EntryGvFresh=
    some (s6Step113EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793],775⟩,growRow 775 s6Step113EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step113EntryGvBefore s6Step113EntryGvAfter s6Step113EntryGvRow 70 s6Step113EntryGvFresh
    s6Step113EntryGv_distinct s6Step113EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step113EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step113EntryGvRow.payload++s6Step113EntryGvFresh) s6Step113EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step113EntryBank_rows : planWindowRowsLog s6Step113EntryFBefore [(s6Step113EntryFRow,212),(s6Step113EntryGRow,212),(s6Step113EntryFvRow,70),(s6Step113EntryGvRow,70)] [s6Step113EntryFFresh,s6Step113EntryGFresh,s6Step113EntryFvFresh,s6Step113EntryGvFresh]=
    some (s6Step113EntryGvAfter,[s6Step113EntryFOut,s6Step113EntryGOut,s6Step113EntryFvOut,s6Step113EntryGvOut],(growRow 795 s6Step113EntryFFresh ++ (growRow 777 s6Step113EntryGFresh ++ (growRow 776 s6Step113EntryFvFresh ++ (growRow 775 s6Step113EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step113EntryGvAfter [] []=some (s6Step113EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step113EntryGvBefore s6Step113EntryGvAfter s6Step113EntryGvAfter
    s6Step113EntryGvRow s6Step113EntryGvOut 70 s6Step113EntryGvFresh [] [] []
    (growRow 775 s6Step113EntryGvFresh) ([]) s6Step113EntryGv_Incoming s6Step113EntryGv_checked h4 s6Step113EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step113EntryFvBefore s6Step113EntryFvAfter s6Step113EntryGvAfter
    s6Step113EntryFvRow s6Step113EntryFvOut 70 s6Step113EntryFvFresh [(s6Step113EntryGvRow,70)] [s6Step113EntryGvFresh] [s6Step113EntryGvOut]
    (growRow 776 s6Step113EntryFvFresh) ((growRow 775 s6Step113EntryGvFresh ++ [])) s6Step113EntryFv_Incoming s6Step113EntryFv_checked h3 s6Step113EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step113EntryGBefore s6Step113EntryGAfter s6Step113EntryGvAfter
    s6Step113EntryGRow s6Step113EntryGOut 212 s6Step113EntryGFresh [(s6Step113EntryFvRow,70),(s6Step113EntryGvRow,70)] [s6Step113EntryFvFresh,s6Step113EntryGvFresh] [s6Step113EntryFvOut,s6Step113EntryGvOut]
    (growRow 777 s6Step113EntryGFresh) ((growRow 776 s6Step113EntryFvFresh ++ (growRow 775 s6Step113EntryGvFresh ++ []))) s6Step113EntryG_Incoming s6Step113EntryG_checked h2 s6Step113EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step113EntryFBefore s6Step113EntryFAfter s6Step113EntryGvAfter
    s6Step113EntryFRow s6Step113EntryFOut 212 s6Step113EntryFFresh [(s6Step113EntryGRow,212),(s6Step113EntryFvRow,70),(s6Step113EntryGvRow,70)] [s6Step113EntryGFresh,s6Step113EntryFvFresh,s6Step113EntryGvFresh] [s6Step113EntryGOut,s6Step113EntryFvOut,s6Step113EntryGvOut]
    (growRow 795 s6Step113EntryFFresh) ((growRow 777 s6Step113EntryGFresh ++ (growRow 776 s6Step113EntryFvFresh ++ (growRow 775 s6Step113EntryGvFresh ++ [])))) s6Step113EntryF_Incoming s6Step113EntryF_checked h1 s6Step113EntryF_Outgoing
  exact h0

private theorem s6Step113EntryBank_checked : compileHmrBankResizeLog .entry s6Step113EntryFBefore ⟨s6Step113EntryFRow,s6Step113EntryGRow,s6Step113EntryFvRow,s6Step113EntryGvRow⟩ ⟨212,212,70,70⟩ [s6Step113EntryFFresh,s6Step113EntryGFresh,s6Step113EntryFvFresh,s6Step113EntryGvFresh]=
    some (s6Step113EntryGvAfter,⟨s6Step113EntryFOut,s6Step113EntryGOut,s6Step113EntryFvOut,s6Step113EntryGvOut⟩,(growRow 795 s6Step113EntryFFresh ++ (growRow 777 s6Step113EntryGFresh ++ (growRow 776 s6Step113EntryFvFresh ++ (growRow 775 s6Step113EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step113EntryBank_rows]
  rfl

private def s6Step113ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step113ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step113ExitFBefore : Arena := s6Step113ExitGAfter

private def s6Step113ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 880],795⟩

private def s6Step113ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 868],776⟩

private def s6Step113ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 823, 892],777⟩

private def s6Step113ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 907],775⟩

private theorem s6Step113ExitBank_incomingDistinct : ([s6Step113ExitGRow,s6Step113ExitFRow,s6Step113ExitFvRow,s6Step113ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step113ExitF_Incoming : rowsOwned s6Step113ExitFBefore [s6Step113ExitFRow,s6Step113ExitFvRow,s6Step113ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step113ExitGRow,s6Step113ExitFRow,s6Step113ExitFvRow,s6Step113ExitGvRow] 1 s6Step113ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step113ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step113ExitBank_outgoingOwned : rowsOwned s6Step113ExitGvAfter [s6Step113ExitGOut,s6Step113ExitFOut,s6Step113ExitFvOut,s6Step113ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step113ExitGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step113ExitF_Outgoing : rowsOwned s6Step113ExitGvAfter [s6Step113ExitFOut,s6Step113ExitFvOut,s6Step113ExitGvOut] :=
  hmrRows_owned_drop s6Step113ExitGvAfter [s6Step113ExitGOut,s6Step113ExitFOut,s6Step113ExitFvOut,s6Step113ExitGvOut] 1 s6Step113ExitBank_outgoingOwned

private theorem s6Step113ExitF_distinct : (s6Step113ExitFRow.sign::s6Step113ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step113ExitF_owned : (s6Step113ExitFRow.sign::s6Step113ExitFRow.payload).toFinset⊆s6Step113ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step113ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step113ExitF_retired : s6Step113ExitFBefore.retireSet s6Step113ExitFExtra.toFinset=s6Step113ExitFAfter := by
  unfold Arena.retireSet s6Step113ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step113ExitFBefore,s6Step113ExitGAfter,s6Step113ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step113ExitF_checked : planRowResizeLog s6Step113ExitFBefore s6Step113ExitFRow 212 []=
    some (s6Step113ExitFAfter,s6Step113ExitFOut,shrinkRow 795 s6Step113ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step113ExitFBefore s6Step113ExitFRow 212 s6Step113ExitF_distinct s6Step113ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step113ExitFRow.payload.take 212) s6Step113ExitFRow.sign=s6Step113ExitFOut := by decide +kernel
  have hi : s6Step113ExitFRow.payload.drop 212=s6Step113ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step113ExitF_retired] at result
  exact result

private def s6Step113ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step113ExitFvBefore : Arena := s6Step113ExitFAfter

private theorem s6Step113ExitFv_Incoming : rowsOwned s6Step113ExitFvBefore [s6Step113ExitFvRow,s6Step113ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step113ExitGRow,s6Step113ExitFRow,s6Step113ExitFvRow,s6Step113ExitGvRow] 2 s6Step113ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step113ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step113ExitFv_Outgoing : rowsOwned s6Step113ExitGvAfter [s6Step113ExitFvOut,s6Step113ExitGvOut] :=
  hmrRows_owned_drop s6Step113ExitGvAfter [s6Step113ExitGOut,s6Step113ExitFOut,s6Step113ExitFvOut,s6Step113ExitGvOut] 2 s6Step113ExitBank_outgoingOwned

private theorem s6Step113ExitFv_distinct : (s6Step113ExitFvRow.sign::s6Step113ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step113ExitFv_owned : (s6Step113ExitFvRow.sign::s6Step113ExitFvRow.payload).toFinset⊆s6Step113ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step113ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step113ExitFv_retired : s6Step113ExitFvBefore.retireSet s6Step113ExitFvExtra.toFinset=s6Step113ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step113ExitFvBefore s6Step113ExitFvAfter s6Step113ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step113ExitFvBefore s6Step113ExitFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step113ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step113ExitFv_checked : planRowResizeLog s6Step113ExitFvBefore s6Step113ExitFvRow 70 []=
    some (s6Step113ExitFvAfter,s6Step113ExitFvOut,shrinkRow 776 s6Step113ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step113ExitFvBefore s6Step113ExitFvRow 70 s6Step113ExitFv_distinct s6Step113ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step113ExitFvRow.payload.take 70) s6Step113ExitFvRow.sign=s6Step113ExitFvOut := by decide +kernel
  have hi : s6Step113ExitFvRow.payload.drop 70=s6Step113ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step113ExitFv_retired] at result
  exact result

private def s6Step113ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step113ExitG_Incoming : rowsOwned s6Step113ExitGBefore [s6Step113ExitGRow,s6Step113ExitFRow,s6Step113ExitFvRow,s6Step113ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step113ExitGRow,s6Step113ExitFRow,s6Step113ExitFvRow,s6Step113ExitGvRow] 0 s6Step113ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step113ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step113ExitG_Outgoing : rowsOwned s6Step113ExitGvAfter [s6Step113ExitGOut,s6Step113ExitFOut,s6Step113ExitFvOut,s6Step113ExitGvOut] :=
  hmrRows_owned_drop s6Step113ExitGvAfter [s6Step113ExitGOut,s6Step113ExitFOut,s6Step113ExitFvOut,s6Step113ExitGvOut] 0 s6Step113ExitBank_outgoingOwned

private theorem s6Step113ExitG_distinct : (s6Step113ExitGRow.sign::s6Step113ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step113ExitG_owned : (s6Step113ExitGRow.sign::s6Step113ExitGRow.payload).toFinset⊆s6Step113ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step113ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step113ExitG_retired : s6Step113ExitGBefore.retireSet s6Step113ExitGExtra.toFinset=s6Step113ExitGAfter := by
  unfold Arena.retireSet s6Step113ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step113ExitGBefore,s6Step113ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step113ExitG_checked : planRowResizeLog s6Step113ExitGBefore s6Step113ExitGRow 211 []=
    some (s6Step113ExitGAfter,s6Step113ExitGOut,shrinkRow 777 s6Step113ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step113ExitGBefore s6Step113ExitGRow 211 s6Step113ExitG_distinct s6Step113ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step113ExitGRow.payload.take 211) s6Step113ExitGRow.sign=s6Step113ExitGOut := by decide +kernel
  have hi : s6Step113ExitGRow.payload.drop 211=s6Step113ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step113ExitG_retired] at result
  exact result

private def s6Step113ExitGvBefore : Arena := s6Step113ExitFvAfter

private theorem s6Step113ExitGv_Incoming : rowsOwned s6Step113ExitGvBefore [s6Step113ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step113ExitGRow,s6Step113ExitFRow,s6Step113ExitFvRow,s6Step113ExitGvRow] 3 s6Step113ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step113ExitGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step113ExitGv_Outgoing : rowsOwned s6Step113ExitGvAfter [s6Step113ExitGvOut] :=
  hmrRows_owned_drop s6Step113ExitGvAfter [s6Step113ExitGOut,s6Step113ExitFOut,s6Step113ExitFvOut,s6Step113ExitGvOut] 3 s6Step113ExitBank_outgoingOwned

private theorem s6Step113ExitGv_distinct : (s6Step113ExitGvRow.sign::s6Step113ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step113ExitGv_owned : (s6Step113ExitGvRow.sign::s6Step113ExitGvRow.payload).toFinset⊆s6Step113ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step113ExitGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step113ExitGv_retired : s6Step113ExitGvBefore.retireSet s6Step113ExitGvExtra.toFinset=s6Step113ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step113ExitGvBefore s6Step113ExitGvAfter s6Step113ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step113ExitGvBefore s6Step113ExitGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step113ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step113ExitGv_checked : planRowResizeLog s6Step113ExitGvBefore s6Step113ExitGvRow 70 []=
    some (s6Step113ExitGvAfter,s6Step113ExitGvOut,shrinkRow 775 s6Step113ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step113ExitGvBefore s6Step113ExitGvRow 70 s6Step113ExitGv_distinct s6Step113ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step113ExitGvRow.payload.take 70) s6Step113ExitGvRow.sign=s6Step113ExitGvOut := by decide +kernel
  have hi : s6Step113ExitGvRow.payload.drop 70=s6Step113ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step113ExitGv_retired] at result
  exact result

private theorem s6Step113ExitBank_rows : planWindowRowsLog s6Step113ExitGBefore [(s6Step113ExitGRow,211),(s6Step113ExitFRow,212),(s6Step113ExitFvRow,70),(s6Step113ExitGvRow,70)] [[],[],[],[]]=
    some (s6Step113ExitGvAfter,[s6Step113ExitGOut,s6Step113ExitFOut,s6Step113ExitFvOut,s6Step113ExitGvOut],(shrinkRow 777 s6Step113ExitGExtra ++ (shrinkRow 795 s6Step113ExitFExtra ++ (shrinkRow 776 s6Step113ExitFvExtra ++ (shrinkRow 775 s6Step113ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step113ExitGvAfter [] []=some (s6Step113ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step113ExitGvBefore s6Step113ExitGvAfter s6Step113ExitGvAfter
    s6Step113ExitGvRow s6Step113ExitGvOut 70 [] [] [] []
    (shrinkRow 775 s6Step113ExitGvExtra) ([]) s6Step113ExitGv_Incoming s6Step113ExitGv_checked h4 s6Step113ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step113ExitFvBefore s6Step113ExitFvAfter s6Step113ExitGvAfter
    s6Step113ExitFvRow s6Step113ExitFvOut 70 [] [(s6Step113ExitGvRow,70)] [[]] [s6Step113ExitGvOut]
    (shrinkRow 776 s6Step113ExitFvExtra) ((shrinkRow 775 s6Step113ExitGvExtra ++ [])) s6Step113ExitFv_Incoming s6Step113ExitFv_checked h3 s6Step113ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step113ExitFBefore s6Step113ExitFAfter s6Step113ExitGvAfter
    s6Step113ExitFRow s6Step113ExitFOut 212 [] [(s6Step113ExitFvRow,70),(s6Step113ExitGvRow,70)] [[],[]] [s6Step113ExitFvOut,s6Step113ExitGvOut]
    (shrinkRow 795 s6Step113ExitFExtra) ((shrinkRow 776 s6Step113ExitFvExtra ++ (shrinkRow 775 s6Step113ExitGvExtra ++ []))) s6Step113ExitF_Incoming s6Step113ExitF_checked h2 s6Step113ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step113ExitGBefore s6Step113ExitGAfter s6Step113ExitGvAfter
    s6Step113ExitGRow s6Step113ExitGOut 211 [] [(s6Step113ExitFRow,212),(s6Step113ExitFvRow,70),(s6Step113ExitGvRow,70)] [[],[],[]] [s6Step113ExitFOut,s6Step113ExitFvOut,s6Step113ExitGvOut]
    (shrinkRow 777 s6Step113ExitGExtra) ((shrinkRow 795 s6Step113ExitFExtra ++ (shrinkRow 776 s6Step113ExitFvExtra ++ (shrinkRow 775 s6Step113ExitGvExtra ++ [])))) s6Step113ExitG_Incoming s6Step113ExitG_checked h1 s6Step113ExitG_Outgoing
  exact h0

private theorem s6Step113ExitBank_checked : compileHmrBankResizeLog .exit s6Step113ExitGBefore ⟨s6Step113ExitFRow,s6Step113ExitGRow,s6Step113ExitFvRow,s6Step113ExitGvRow⟩ ⟨212,211,70,70⟩ [[],[],[],[]]=
    some (s6Step113ExitGvAfter,⟨s6Step113ExitFOut,s6Step113ExitGOut,s6Step113ExitFvOut,s6Step113ExitGvOut⟩,(shrinkRow 777 s6Step113ExitGExtra ++ (shrinkRow 795 s6Step113ExitFExtra ++ (shrinkRow 776 s6Step113ExitFvExtra ++ (shrinkRow 775 s6Step113ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step113ExitBank_rows]
  rfl

private theorem s6Step113Add0_apart : Disjoint s6Step113Add0Arena.live s6Step113Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step113Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step113Add0_card : s6Step113Add0Arena.live.card=875 := by
  decide +kernel

private theorem s6Step113Add0_borrowed : s6Step113Add0Arena.checkBorrow (hmrHybridCount s6Step113Add0Arena s6Step113Add0B.length) s6Step113Add0Work=some s6Step113Add0During := by
  have len : s6Step113Add0Work.length=hmrHybridCount s6Step113Add0Arena s6Step113Add0B.length := by
    rw [hmrHybridCount,s6Step113Add0_card]
    decide +kernel
  have nd : s6Step113Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step113Add0Arena s6Step113Add0During s6Step113Add0Work.toFinset s6Step113Add0_bounded s6Step113Add0_apart rfl

private theorem s6Step113Add0_distinct : (882::803::864::(s6Step113Add0A++s6Step113Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step113Add0_owned : (882::803::864::(s6Step113Add0A++s6Step113Add0B)).toFinset⊆s6Step113Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step113Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step113Add0_checked : compileHmrHybridCinLog s6Step113Add0Arena 803 882 864 s6Step113Add0A s6Step113Add0B s6Step113Add0Work=some s6Step113Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step113Add0Arena s6Step113Add0During 803 882 864 s6Step113Add0A s6Step113Add0B s6Step113Add0Work
    (by decide +kernel) (by decide +kernel) s6Step113Add0_distinct
    (fun q hq => s6Step113Add0_owned (List.mem_toFinset.mpr hq)) s6Step113Add0_borrowed

private theorem s6Step113Add1_apart : Disjoint s6Step113Add1Arena.live s6Step113Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step113Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step113Add1_card : s6Step113Add1Arena.live.card=875 := by
  decide +kernel

private theorem s6Step113Add1_borrowed : s6Step113Add1Arena.checkBorrow (hmrHybridCount s6Step113Add1Arena s6Step113Add1B.length) s6Step113Add1Work=some s6Step113Add1During := by
  have len : s6Step113Add1Work.length=hmrHybridCount s6Step113Add1Arena s6Step113Add1B.length := by
    rw [hmrHybridCount,s6Step113Add1_card]
    decide +kernel
  have nd : s6Step113Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step113Add1Arena s6Step113Add1During s6Step113Add1Work.toFinset s6Step113Add1_bounded s6Step113Add1_apart rfl

private theorem s6Step113Add1_distinct : (882::803::864::(s6Step113Add1A++s6Step113Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step113Add1_owned : (882::803::864::(s6Step113Add1A++s6Step113Add1B)).toFinset⊆s6Step113Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step113Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step113Add1_checked : compileHmrHybridCinLog s6Step113Add1Arena 803 882 864 s6Step113Add1A s6Step113Add1B s6Step113Add1Work=some s6Step113Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step113Add1Arena s6Step113Add1During 803 882 864 s6Step113Add1A s6Step113Add1B s6Step113Add1Work
    (by decide +kernel) (by decide +kernel) s6Step113Add1_distinct
    (fun q hq => s6Step113Add1_owned (List.mem_toFinset.mpr hq)) s6Step113Add1_borrowed

private theorem s6Step113F4_apart : Disjoint (s6Step113Add0A++s6Step113Add0B).toFinset (s6Step113Add1A++s6Step113Add1B).toFinset := by
  have nd : ((s6Step113Add0A++s6Step113Add0B)++(s6Step113Add1A++s6Step113Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step113F4_carry : s6Step113F4FlagArena.checkBorrow 1 [864]=some s6Step113Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step113F4FlagArena,s6Step113HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step113F4FlagArena,s6Step113HeadFvAfter,s6Step113Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step113F4_distinct : (886::803::882::864::((s6Step113Add0A++s6Step113Add1A)++(s6Step113Add0B++s6Step113Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step113F4_flag : s6Step113HeadFvAfter.checkBorrow 1 [882]=some s6Step113F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step113HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step113F4_owned : (886::803::((s6Step113Add0A++s6Step113Add1A)++(s6Step113Add0B++s6Step113Add1B))).toFinset⊆s6Step113HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step113HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step113F4_checked : compileHmrHybridF4Log s6Step113HeadFvAfter 886 803 s6Step113Add0A s6Step113Add0B s6Step113Add1A s6Step113Add1B [882] [864] s6Step113Add0Work s6Step113Add1Work=some s6Step113F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step113HeadFvAfter s6Step113F4FlagArena s6Step113Add0Arena s6Step113Add0During s6Step113Add1During 886 803
    s6Step113Add0A s6Step113Add0B s6Step113Add1A s6Step113Add1B [882] [864] s6Step113Add0Work s6Step113Add1Work
    (fun q hq => s6Step113F4_owned (List.mem_toFinset.mpr hq)) s6Step113F4_flag s6Step113F4_carry
    s6Step113F4_distinct s6Step113F4_apart s6Step113Add0_checked s6Step113Add1_checked

private theorem s6Step113Front_branch : s6Step113FrontSigmaArena.checkBorrow 1 [803]=some s6Step113HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step113FrontSigmaArena,s6Step113EntryGvAfter,arenaWires]
  · change s6Step113HeadGBefore.live=(s6Step113EntryGvAfter.live∪{886})∪{803}
    apply hmrArena_union_pair_of_filter_check s6Step113EntryGvAfter s6Step113HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) 886 803 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step113Front_entry : HmrFrontEntryValid s6Step113EntryFBefore s6Step113FrontBank 212 70 ⟨212,211,70,70⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step113FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step113EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step113EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step113FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step113Front_sigma : s6Step113EntryGvAfter.checkBorrow 1 [886]=some s6Step113FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step113EntryGvAfter,arenaWires]
  · rfl

private def s6Step113HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step113HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step113HeadFBefore : Arena := s6Step113HeadGAfter

private def s6Step113HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467],795⟩

private def s6Step113HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789],776⟩

private def s6Step113HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 823],777⟩

private def s6Step113HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793],775⟩

private theorem s6Step113HeadBank_incomingDistinct : ([s6Step113HeadGRow,s6Step113HeadFRow,s6Step113HeadGvRow,s6Step113HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step113HeadF_Incoming : rowsOwned s6Step113HeadFBefore [s6Step113HeadFRow,s6Step113HeadGvRow,s6Step113HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step113HeadGRow,s6Step113HeadFRow,s6Step113HeadGvRow,s6Step113HeadFvRow] 1 s6Step113HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step113HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step113HeadBank_outgoingOwned : rowsOwned s6Step113HeadFvAfter [s6Step113HeadGOut,s6Step113HeadFOut,s6Step113HeadGvOut,s6Step113HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step113HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step113HeadF_Outgoing : rowsOwned s6Step113HeadFvAfter [s6Step113HeadFOut,s6Step113HeadGvOut,s6Step113HeadFvOut] :=
  hmrRows_owned_drop s6Step113HeadFvAfter [s6Step113HeadGOut,s6Step113HeadFOut,s6Step113HeadGvOut,s6Step113HeadFvOut] 1 s6Step113HeadBank_outgoingOwned

private theorem s6Step113HeadF_distinct : (s6Step113HeadFRow.sign::s6Step113HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step113HeadF_owned : (s6Step113HeadFRow.sign::s6Step113HeadFRow.payload).toFinset⊆s6Step113HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step113HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step113HeadF_reserved : s6Step113HeadFBefore.reserve s6Step113HeadFFresh.toFinset=some s6Step113HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step113HeadFFresh,arenaWires]
  · norm_num [s6Step113HeadFBefore,s6Step113HeadGAfter,s6Step113HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step113HeadFBefore s6Step113HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step113HeadFFresh rfl rfl
    · norm_num [s6Step113HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step113HeadF_checked : planRowResizeLog s6Step113HeadFBefore s6Step113HeadFRow 213 s6Step113HeadFFresh=
    some (s6Step113HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 880],795⟩,growRow 795 s6Step113HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step113HeadFBefore s6Step113HeadFAfter s6Step113HeadFRow 213 s6Step113HeadFFresh
    s6Step113HeadF_distinct s6Step113HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step113HeadF_reserved
  have rowEq : WindowRow.mk (s6Step113HeadFRow.payload++s6Step113HeadFFresh) s6Step113HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 880],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step113HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step113HeadFvBefore : Arena := s6Step113HeadGvAfter

private theorem s6Step113HeadFv_Incoming : rowsOwned s6Step113HeadFvBefore [s6Step113HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step113HeadGRow,s6Step113HeadFRow,s6Step113HeadGvRow,s6Step113HeadFvRow] 3 s6Step113HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step113HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step113HeadFv_Outgoing : rowsOwned s6Step113HeadFvAfter [s6Step113HeadFvOut] :=
  hmrRows_owned_drop s6Step113HeadFvAfter [s6Step113HeadGOut,s6Step113HeadFOut,s6Step113HeadGvOut,s6Step113HeadFvOut] 3 s6Step113HeadBank_outgoingOwned

private theorem s6Step113HeadFv_distinct : (s6Step113HeadFvRow.sign::s6Step113HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step113HeadFv_owned : (s6Step113HeadFvRow.sign::s6Step113HeadFvRow.payload).toFinset⊆s6Step113HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step113HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step113HeadFv_reserved : s6Step113HeadFvBefore.reserve s6Step113HeadFvFresh.toFinset=some s6Step113HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step113HeadFvFresh,arenaWires]
  · norm_num [s6Step113HeadFvBefore,s6Step113HeadGvAfter,s6Step113HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step113HeadFvBefore s6Step113HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step113HeadFvFresh rfl rfl
    · norm_num [s6Step113HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step113HeadFv_checked : planRowResizeLog s6Step113HeadFvBefore s6Step113HeadFvRow 71 s6Step113HeadFvFresh=
    some (s6Step113HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 868],776⟩,growRow 776 s6Step113HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step113HeadFvBefore s6Step113HeadFvAfter s6Step113HeadFvRow 71 s6Step113HeadFvFresh
    s6Step113HeadFv_distinct s6Step113HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step113HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step113HeadFvRow.payload++s6Step113HeadFvFresh) s6Step113HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 868],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step113HeadG_Incoming : rowsOwned s6Step113HeadGBefore [s6Step113HeadGRow,s6Step113HeadFRow,s6Step113HeadGvRow,s6Step113HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step113HeadGRow,s6Step113HeadFRow,s6Step113HeadGvRow,s6Step113HeadFvRow] 0 s6Step113HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step113HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step113HeadG_Outgoing : rowsOwned s6Step113HeadFvAfter [s6Step113HeadGOut,s6Step113HeadFOut,s6Step113HeadGvOut,s6Step113HeadFvOut] :=
  hmrRows_owned_drop s6Step113HeadFvAfter [s6Step113HeadGOut,s6Step113HeadFOut,s6Step113HeadGvOut,s6Step113HeadFvOut] 0 s6Step113HeadBank_outgoingOwned

private theorem s6Step113HeadG_distinct : (s6Step113HeadGRow.sign::s6Step113HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step113HeadG_owned : (s6Step113HeadGRow.sign::s6Step113HeadGRow.payload).toFinset⊆s6Step113HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step113HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step113HeadG_reserved : s6Step113HeadGBefore.reserve s6Step113HeadGFresh.toFinset=some s6Step113HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step113HeadGFresh,arenaWires]
  · norm_num [s6Step113HeadGBefore,s6Step113HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step113HeadGBefore s6Step113HeadGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step113HeadGFresh rfl rfl
    · norm_num [s6Step113HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step113HeadG_checked : planRowResizeLog s6Step113HeadGBefore s6Step113HeadGRow 213 s6Step113HeadGFresh=
    some (s6Step113HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 823, 892],777⟩,growRow 777 s6Step113HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step113HeadGBefore s6Step113HeadGAfter s6Step113HeadGRow 213 s6Step113HeadGFresh
    s6Step113HeadG_distinct s6Step113HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step113HeadG_reserved
  have rowEq : WindowRow.mk (s6Step113HeadGRow.payload++s6Step113HeadGFresh) s6Step113HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 823, 892],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step113HeadGvBefore : Arena := s6Step113HeadFAfter

private theorem s6Step113HeadGv_Incoming : rowsOwned s6Step113HeadGvBefore [s6Step113HeadGvRow,s6Step113HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step113HeadGRow,s6Step113HeadFRow,s6Step113HeadGvRow,s6Step113HeadFvRow] 2 s6Step113HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step113HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step113HeadGv_Outgoing : rowsOwned s6Step113HeadFvAfter [s6Step113HeadGvOut,s6Step113HeadFvOut] :=
  hmrRows_owned_drop s6Step113HeadFvAfter [s6Step113HeadGOut,s6Step113HeadFOut,s6Step113HeadGvOut,s6Step113HeadFvOut] 2 s6Step113HeadBank_outgoingOwned

private theorem s6Step113HeadGv_distinct : (s6Step113HeadGvRow.sign::s6Step113HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step113HeadGv_owned : (s6Step113HeadGvRow.sign::s6Step113HeadGvRow.payload).toFinset⊆s6Step113HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step113HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step113HeadGv_reserved : s6Step113HeadGvBefore.reserve s6Step113HeadGvFresh.toFinset=some s6Step113HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step113HeadGvFresh,arenaWires]
  · norm_num [s6Step113HeadGvBefore,s6Step113HeadFAfter,s6Step113HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step113HeadGvBefore s6Step113HeadGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step113HeadGvFresh rfl rfl
    · norm_num [s6Step113HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step113HeadGv_checked : planRowResizeLog s6Step113HeadGvBefore s6Step113HeadGvRow 71 s6Step113HeadGvFresh=
    some (s6Step113HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 907],775⟩,growRow 775 s6Step113HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step113HeadGvBefore s6Step113HeadGvAfter s6Step113HeadGvRow 71 s6Step113HeadGvFresh
    s6Step113HeadGv_distinct s6Step113HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step113HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step113HeadGvRow.payload++s6Step113HeadGvFresh) s6Step113HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 907],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step113HeadBank_rows : planWindowRowsLog s6Step113HeadGBefore [(s6Step113HeadGRow,213),(s6Step113HeadFRow,213),(s6Step113HeadGvRow,71),(s6Step113HeadFvRow,71)] [s6Step113HeadGFresh,s6Step113HeadFFresh,s6Step113HeadGvFresh,s6Step113HeadFvFresh]=
    some (s6Step113HeadFvAfter,[s6Step113HeadGOut,s6Step113HeadFOut,s6Step113HeadGvOut,s6Step113HeadFvOut],(growRow 777 s6Step113HeadGFresh ++ (growRow 795 s6Step113HeadFFresh ++ (growRow 775 s6Step113HeadGvFresh ++ (growRow 776 s6Step113HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step113HeadFvAfter [] []=some (s6Step113HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step113HeadFvBefore s6Step113HeadFvAfter s6Step113HeadFvAfter
    s6Step113HeadFvRow s6Step113HeadFvOut 71 s6Step113HeadFvFresh [] [] []
    (growRow 776 s6Step113HeadFvFresh) ([]) s6Step113HeadFv_Incoming s6Step113HeadFv_checked h4 s6Step113HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step113HeadGvBefore s6Step113HeadGvAfter s6Step113HeadFvAfter
    s6Step113HeadGvRow s6Step113HeadGvOut 71 s6Step113HeadGvFresh [(s6Step113HeadFvRow,71)] [s6Step113HeadFvFresh] [s6Step113HeadFvOut]
    (growRow 775 s6Step113HeadGvFresh) ((growRow 776 s6Step113HeadFvFresh ++ [])) s6Step113HeadGv_Incoming s6Step113HeadGv_checked h3 s6Step113HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step113HeadFBefore s6Step113HeadFAfter s6Step113HeadFvAfter
    s6Step113HeadFRow s6Step113HeadFOut 213 s6Step113HeadFFresh [(s6Step113HeadGvRow,71),(s6Step113HeadFvRow,71)] [s6Step113HeadGvFresh,s6Step113HeadFvFresh] [s6Step113HeadGvOut,s6Step113HeadFvOut]
    (growRow 795 s6Step113HeadFFresh) ((growRow 775 s6Step113HeadGvFresh ++ (growRow 776 s6Step113HeadFvFresh ++ []))) s6Step113HeadF_Incoming s6Step113HeadF_checked h2 s6Step113HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step113HeadGBefore s6Step113HeadGAfter s6Step113HeadFvAfter
    s6Step113HeadGRow s6Step113HeadGOut 213 s6Step113HeadGFresh [(s6Step113HeadFRow,213),(s6Step113HeadGvRow,71),(s6Step113HeadFvRow,71)] [s6Step113HeadFFresh,s6Step113HeadGvFresh,s6Step113HeadFvFresh] [s6Step113HeadFOut,s6Step113HeadGvOut,s6Step113HeadFvOut]
    (growRow 777 s6Step113HeadGFresh) ((growRow 795 s6Step113HeadFFresh ++ (growRow 775 s6Step113HeadGvFresh ++ (growRow 776 s6Step113HeadFvFresh ++ [])))) s6Step113HeadG_Incoming s6Step113HeadG_checked h1 s6Step113HeadG_Outgoing
  exact h0

private theorem s6Step113HeadBank_checked : compileHmrBankResizeLog .headroom s6Step113HeadGBefore ⟨s6Step113HeadFRow,s6Step113HeadGRow,s6Step113HeadFvRow,s6Step113HeadGvRow⟩ ⟨213,213,71,71⟩ [s6Step113HeadGFresh,s6Step113HeadFFresh,s6Step113HeadGvFresh,s6Step113HeadFvFresh]=
    some (s6Step113HeadFvAfter,⟨s6Step113HeadFOut,s6Step113HeadGOut,s6Step113HeadFvOut,s6Step113HeadGvOut⟩,(growRow 777 s6Step113HeadGFresh ++ (growRow 795 s6Step113HeadFFresh ++ (growRow 775 s6Step113HeadGvFresh ++ (growRow 776 s6Step113HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step113HeadBank_rows]
  rfl

private theorem s6Step113Front_checked : compileHmrSourceFrontLog s6Step113EntryFBefore s6Step113FrontBank 212 70 ⟨212,211,70,70⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step113FrontLog=some s6Step113FrontPlan := by
  have pairEq : s6Step113FrontPair=⟨s6Step113HeadFRow,s6Step113HeadGRow,s6Step113HeadFvRow,s6Step113HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step113FrontHead=⟨s6Step113ExitFRow,s6Step113ExitGRow,s6Step113ExitFvRow,s6Step113ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step113Add0A=s6Step113FrontHead.f.wires := by decide +kernel
  have gEq : s6Step113Add0B=s6Step113FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step113Add1A=s6Step113FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step113Add1B=s6Step113FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step113EntryFBefore s6Step113FrontBank 212 70 ⟨212,211,70,70⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step113FrontLog s6Step113FrontPlan
  · exact s6Step113Front_entry
  · exact s6Step113EntryBank_checked
  · exact s6Step113Front_sigma
  · rfl
  · exact s6Step113Front_branch
  · rfl
  · simpa only [s6Step113FrontPlan,pairEq] using s6Step113HeadBank_checked
  · simpa only [s6Step113FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step113F4_checked
  · exact s6Step113Counter_checked
  · rfl
  · simpa only [s6Step113FrontPlan,headEq] using s6Step113ExitBank_checked

private theorem s6Step113Complete_explicit_checked : compileHmrEarlyStepLog s6Step113EntryFBefore s6Step113FrontBank 212 70 ⟨212,211,70,70⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step113CompleteLog=some s6Step113CompletePlan := by
  let Q := s6Step113EarlyControlPlan
  have hq := s6Step113EarlyControl_plan_checked
  have fv1 : s6Step113CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step113CompleteOut.fv.payload[2]?.getD s6Step113CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step113CompleteOut.fv.payload[3]?.getD s6Step113CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step113CompleteOut.fv.payload[4]?.getD s6Step113CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step113EntryFBefore s6Step113EarlyControlArena s6Step113FrontBank 212 70 ⟨212,211,70,70⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step113CompleteLog s6Step113FrontPlan Q
    s6Step113Front_checked s6Step113Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step113Complete_owned s6Step113Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step113EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 886 s6Step113CompleteOut.fv.second (s6Step113CompleteOut.fv.payload[2]?.getD s6Step113CompleteOut.fv.sign) (s6Step113CompleteOut.fv.payload[3]?.getD s6Step113CompleteOut.fv.sign) (s6Step113CompleteOut.fv.payload[4]?.getD s6Step113CompleteOut.fv.sign) 803 37 s6Step113EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep113Arena : Arena := s6Step113EntryFBefore
def s6PrivateStep113Bank : WindowBank := s6Step113FrontBank
def s6PrivateStep113Spec : HmrSourceWalkStepLog := ⟨212,70,⟨212,211,70,70⟩,37,.early s6Step113CompleteLog⟩
def s6PrivateStep113Plan : HmrSourceStepPlan := .early s6Step113CompletePlan
theorem s6PrivateStep113_source : s6PrivateStep113Spec=s6ObservedLogs112[1] := rfl
theorem s6PrivateStep113_checked : compileHmrSourceStepLog s6PrivateStep113Arena s6PrivateStep113Bank
    s6PrivateStep113Spec.fgWidth s6PrivateStep113Spec.vWidth s6PrivateStep113Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]
    6 498 113 s6PrivateStep113Spec.need none s6PrivateStep113Spec.log=some s6PrivateStep113Plan := by
  change compileHmrSourceStepLog s6Step113EntryFBefore s6Step113FrontBank 212 70 ⟨212,211,70,70⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 6 498 113 37 none (.early s6Step113CompleteLog)=some (.early s6Step113CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 113<498)]
  rw [s6Step113Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
