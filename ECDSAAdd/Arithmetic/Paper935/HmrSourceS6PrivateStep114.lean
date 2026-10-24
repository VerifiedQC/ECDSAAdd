import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep112
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

private def s6Step114CompleteMoves : List (Wire × Wire) := []

private def s6Step114EarlyControlLog : HmrEarlyControlLog := ⟨[823, 880, 803, 868, 882],[864],[813],[879, 865, 796, 891, 903, 791],[]⟩

private def s6Step114FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [803], [], []],[[868], [880], [823], [892]],[[], [], [], []]⟩,[886],[907],[882],[864],[813, 879, 865, 796, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[813, 879, 865, 796, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[882, 864, 813, 879]⟩

private def s6Step114CompleteLog : HmrEarlyStepLog := ⟨s6Step114FrontLog,s6Step114CompleteMoves,s6Step114EarlyControlLog⟩

private def s6Step114ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467],795⟩

private def s6Step114ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892],776⟩

private def s6Step114ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210],777⟩

private def s6Step114ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793],775⟩

private def s6Step114FrontOut : WindowBank := ⟨s6Step114ExitFOut,s6Step114ExitGOut,s6Step114ExitFvOut,s6Step114ExitGvOut⟩

private def s6Step114CompleteOut : WindowBank := s6Step114FrontOut.repacked s6Step114CompleteMoves

private def s6Step114EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step114EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step114EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step114EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step114EarlyControlPositiveArena,[864],s6Step114EarlyControlEqualityArena,[813],⟨⟨886,false⟩,[⟨⟨864,false⟩,813⟩]⟩⟩

private def s6Step114EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step114EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step114EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step114EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step114EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step114EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step114EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,823⟩,⟨⟨772,false⟩,880⟩,⟨⟨771,false⟩,803⟩,⟨⟨770,false⟩,868⟩,⟨⟨769,false⟩,882⟩]⟩

private def s6Step114EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step114EarlyControlZeroArena,s6Step114EarlyControlZeroPlan,s6Step114EarlyControlClassPlan,s6Step114EarlyControlFlagArena,s6Step114EarlyControlFittedArena,s6Step114EarlyControlHistoryArena,s6Step114EarlyControlSigmaArena,s6Step114EarlyControlOutputArena,s6Step114EarlyControlLog⟩

private def s6Step114CounterWork : List Wire := [882, 864, 813, 879]

private theorem s6Step114Counter_bounded : s6Step114CounterWork.toFinset⊆arenaWires := by norm_num [s6Step114CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step114HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step114CounterDuring : Arena := ⟨s6Step114HeadFvAfter.live∪s6Step114CounterWork.toFinset,Finset.union_subset s6Step114HeadFvAfter.bounded s6Step114Counter_bounded⟩

private def s6Step114EntryFFresh : List Wire := []

private def s6Step114EntryFvFresh : List Wire := []

private def s6Step114EntryGFresh : List Wire := [803]

private def s6Step114EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step114EntryGvAfter : Arena := s6Step114EntryGAfter

private def s6Step114EntryGvFresh : List Wire := []

private def s6Step114ExitFExtra : List Wire := [880]

private def s6Step114ExitGExtra : List Wire := [803, 868]

private def s6Step114ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step114ExitGvExtra : List Wire := [823]

private def s6Step114Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step114Add0Work : List Wire := [813, 879, 865, 796, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step114Add0_bounded : s6Step114Add0Work.toFinset⊆arenaWires := by
  have h : s6Step114Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step114Add0During : Arena := ⟨s6Step114Add0Arena.live∪s6Step114Add0Work.toFinset,Finset.union_subset s6Step114Add0Arena.bounded s6Step114Add0_bounded⟩

private def s6Step114Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step114Add1Work : List Wire := [813, 879, 865, 796, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step114Add1_bounded : s6Step114Add1Work.toFinset⊆arenaWires := by
  have h : s6Step114Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step114Add1During : Arena := ⟨s6Step114Add1Arena.live∪s6Step114Add1Work.toFinset,Finset.union_subset s6Step114Add1Arena.bounded s6Step114Add1_bounded⟩

private def s6Step114F4FlagArena : Arena := ⟨s6Step114HeadFvAfter.live∪{882},Finset.union_subset s6Step114HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step114F4Plan : HmrHybridF4Plan := ⟨s6Step114F4FlagArena,[882],s6Step114Add0Arena,[864],s6Step114Add0During,s6Step114Add0Work,s6Step114Add1During,s6Step114Add1Work⟩

private def s6Step114HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 880],795⟩

private def s6Step114HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892],776⟩

private def s6Step114HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 803, 868],777⟩

private def s6Step114HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 823],775⟩

private def s6Step114FrontHead : WindowBank := ⟨s6Step114HeadFOut,s6Step114HeadGOut,s6Step114HeadFvOut,s6Step114HeadGvOut⟩

private def s6Step114EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467],795⟩

private def s6Step114EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789],776⟩

private def s6Step114EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 803],777⟩

private def s6Step114EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793],775⟩

private def s6Step114FrontPair : WindowBank := ⟨s6Step114EntryFOut,s6Step114EntryGOut,s6Step114EntryFvOut,s6Step114EntryGvOut⟩

private def s6Step114FrontSigmaArena : Arena := ⟨s6Step114EntryGvAfter.live∪{886},Finset.union_subset s6Step114EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step114HeadFFresh : List Wire := [880]

private def s6Step114HeadFvFresh : List Wire := [892]

private def s6Step114HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step114HeadGFresh : List Wire := [868]

private def s6Step114HeadGvFresh : List Wire := [823]

private def s6Step114FrontPlan : HmrSourceFront := ⟨s6Step114EntryGvAfter,s6Step114FrontPair,(growRow 795 s6Step114EntryFFresh ++ (growRow 777 s6Step114EntryGFresh ++ (growRow 776 s6Step114EntryFvFresh ++ (growRow 775 s6Step114EntryGvFresh ++ [])))),s6Step114FrontSigmaArena,[886],s6Step114HeadGBefore,[907],
  s6Step114HeadFvAfter,s6Step114FrontHead,(growRow 777 s6Step114HeadGFresh ++ (growRow 795 s6Step114HeadFFresh ++ (growRow 775 s6Step114HeadGvFresh ++ (growRow 776 s6Step114HeadFvFresh ++ [])))),s6Step114F4Plan,s6Step114CounterDuring,s6Step114CounterWork,s6Step114ExitGvAfter,s6Step114FrontOut,(shrinkRow 777 s6Step114ExitGExtra ++ (shrinkRow 795 s6Step114ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step114ExitGvExtra ++ []))))⟩

private def s6Step114CompletePlan : HmrEarlyStepPlan := ⟨s6Step114FrontPlan,s6Step114EarlyControlArena,s6Step114EarlyControlPlan,s6Step114CompleteMoves⟩

private theorem s6Step114Complete_apart : List.Disjoint (s6Step114CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [886, 907, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] := by
  have nd : ((s6Step114CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[886, 907, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step114Complete_owned : (s6Step114CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step114EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step114EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step114Complete_repack : s6Step114ExitGvAfter.checkRepack s6Step114CompleteMoves=some s6Step114EarlyControlArena := by rfl

private theorem s6Step114EarlyControl_branchOwned : ([907] : List Wire).toFinset⊆s6Step114EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step114EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step114EarlyControl_branch : compileHmrBranchRetirement s6Step114EarlyControlSigmaArena 907=some s6Step114EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step114EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step114EarlyControlSigmaArena s6Step114EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [907] rfl rfl
    decide +kernel

private theorem s6Step114EarlyControl_classEqualityBorrow : s6Step114EarlyControlPositiveArena.checkBorrow (([886, 864] : List Wire).length-1) s6Step114EarlyControlLog.classWork=some s6Step114EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step114EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step114EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step114EarlyControlEqualityArena,s6Step114EarlyControlPositiveArena,s6Step114EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step114EarlyControl_classEqualityOwned : ([886, 864] : List Wire).toFinset⊆s6Step114EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step114EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step114EarlyControl_classEquality : compileHmrEqualityLog s6Step114EarlyControlPositiveArena [886, 864] 0 s6Step114EarlyControlLog.classWork=some (s6Step114EarlyControlEqualityArena,s6Step114EarlyControlLog.classWork,s6Step114EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step114EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step114EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step114EarlyControl_classOwned : ([769, 882, 886] : List Wire).toFinset⊆s6Step114EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step114EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step114EarlyControl_positiveBorrow : s6Step114EarlyControlZeroArena.checkBorrow (1) s6Step114EarlyControlLog.positiveWork=some s6Step114EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step114EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step114EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step114EarlyControlPositiveArena,s6Step114EarlyControlZeroArena,s6Step114EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step114EarlyControl_class : compileHmrSourceClassLog s6Step114EarlyControlZeroArena false 769 s6Step114EarlyControlZeroPlan.top 0 886 s6Step114EarlyControlLog.positiveWork s6Step114EarlyControlLog.classWork=some s6Step114EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step114EarlyControlClassPlan s6Step114EarlyControlZeroArena false 769 s6Step114EarlyControlZeroPlan.top 0 886
  constructor
  · decide +kernel
  · exact s6Step114EarlyControl_classOwned
  · exact s6Step114EarlyControl_positiveBorrow
  · exact s6Step114EarlyControl_classEquality

private theorem s6Step114EarlyControl_entryRecordOwned : ([907, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step114EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step114EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step114EarlyControl_entrySigmaOwned : ([886, 254] : List Wire).toFinset⊆s6Step114EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step114EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step114EarlyControl_fitBorrow : s6Step114EarlyControlFlagArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step114EarlyControlLog.recordFresh=some s6Step114EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step114EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step114EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step114EarlyControlFittedArena,s6Step114EarlyControlFlagArena,s6Step114EarlyControlLog,arenaWires]

private theorem s6Step114EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step114EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step114EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step114EarlyControl_fit : compileHmrRecordGrowLog s6Step114EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step114EarlyControlLog.recordFresh=some s6Step114EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step114EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step114EarlyControl_fitBorrow

private theorem s6Step114EarlyControl_flagsBorrow : s6Step114EarlyControlEqualityArena.checkBorrow (6) s6Step114EarlyControlLog.flagWork=some s6Step114EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step114EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step114EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step114EarlyControlFlagArena,s6Step114EarlyControlEqualityArena,s6Step114EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step114EarlyControl_flagsOwned : ([813, 253, 252, 251] : List Wire).toFinset⊆s6Step114EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step114EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step114EarlyControl_flags : compileHmrFlagsLog s6Step114EarlyControlClassPlan.equalityArena s6Step114EarlyControlClassPlan.equality.top 253 252 251 s6Step114EarlyControlLog.flagWork=some s6Step114EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step114EarlyControl_flagsOwned⟩
  · exact s6Step114EarlyControl_flagsBorrow

private theorem s6Step114EarlyControl_historyBorrow : s6Step114EarlyControlArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step114EarlyControlLog.recordFresh=some s6Step114EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step114EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step114EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step114EarlyControlArena s6Step114EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step114EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step114EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step114EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step114EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step114EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step114EarlyControl_history : compileHmrRecordGrowLog s6Step114EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step114EarlyControlLog.recordFresh=some s6Step114EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step114EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step114EarlyControl_historyBorrow

private theorem s6Step114EarlyControl_sigmaOwned : ([254, 886] : List Wire).toFinset⊆s6Step114EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step114EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step114EarlyControl_sigmaReleaseOwned : ([886] : List Wire).toFinset⊆s6Step114EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step114EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step114EarlyControl_sigmaRelease : s6Step114EarlyControlHistoryArena.release {886} (fun _ => false)=some s6Step114EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step114EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step114EarlyControlHistoryArena s6Step114EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [886] rfl rfl
    decide +kernel

private theorem s6Step114EarlyControl_sigma : compileHmrSigmaDropLog s6Step114EarlyControlHistoryArena false 0 0 254 886 []=some s6Step114EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step114EarlyControl_sigmaOwned⟩
  · exact s6Step114EarlyControl_sigmaRelease

private theorem s6Step114EarlyControl_zeroBorrow : s6Step114EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step114EarlyControlLog.zeroWork=some s6Step114EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step114EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step114EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step114EarlyControlArena s6Step114EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step114EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step114EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step114EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step114EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step114EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step114EarlyControl_zero : compileHmrEqualityLog s6Step114EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step114EarlyControlLog.zeroWork=some (s6Step114EarlyControlZeroArena,s6Step114EarlyControlLog.zeroWork,s6Step114EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step114EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step114EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step114EarlyControl_logged : s6Step114EarlyControlPlan.Logged s6Step114EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 886 254 253 252 251 907 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step114EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step114EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step114EarlyControl_zero
  · exact s6Step114EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step114EarlyControl_flags
  · exact s6Step114EarlyControl_fit
  · exact s6Step114EarlyControl_history
  · exact s6Step114EarlyControl_sigma
  · exact s6Step114EarlyControl_branch

private theorem s6Step114EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step114EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 886 254 253 252 251 907 37 s6Step114EarlyControlLog=some s6Step114EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step114EarlyControlPlan s6Step114EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 886 254 253 252 251 907 37 s6Step114EarlyControl_logged

private def s6Step114EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step114EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467],795⟩

private def s6Step114EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789],776⟩

private def s6Step114EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210],777⟩

private def s6Step114EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793],775⟩

private def s6Step114FrontBank : WindowBank := ⟨s6Step114EntryFRow,s6Step114EntryGRow,s6Step114EntryFvRow,s6Step114EntryGvRow⟩

private def s6Step114Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 880, 795]

private def s6Step114Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 803, 868, 777]

private def s6Step114Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 776]

private def s6Step114Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 823, 775]

private theorem s6Step114Counter_apart : Disjoint s6Step114HeadFvAfter.live s6Step114CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step114HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step114Counter_borrowed : s6Step114HeadFvAfter.checkBorrow 4 s6Step114CounterWork=some s6Step114CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step114HeadFvAfter s6Step114CounterDuring s6Step114CounterWork.toFinset s6Step114Counter_bounded s6Step114Counter_apart rfl

private theorem s6Step114Counter_owned : (886::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step114HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step114HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step114Counter_checked : compileHmrCounterStepLog s6Step114HeadFvAfter true 886 [774, 773, 772, 771, 770, 769] s6Step114CounterWork=some s6Step114CounterDuring := by
  have owned : ∀q∈886::[774, 773, 772, 771, 770, 769],q∈s6Step114HeadFvAfter.live := fun q hq => s6Step114Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step114Counter_borrowed

private def s6Step114EntryFAfter : Arena := s6Step114EntryFBefore

private theorem s6Step114EntryBank_incomingDistinct : ([s6Step114EntryFRow,s6Step114EntryGRow,s6Step114EntryFvRow,s6Step114EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step114EntryF_Incoming : rowsOwned s6Step114EntryFBefore [s6Step114EntryFRow,s6Step114EntryGRow,s6Step114EntryFvRow,s6Step114EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step114EntryFRow,s6Step114EntryGRow,s6Step114EntryFvRow,s6Step114EntryGvRow] 0 s6Step114EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step114EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step114EntryBank_outgoingOwned : rowsOwned s6Step114EntryGvAfter [s6Step114EntryFOut,s6Step114EntryGOut,s6Step114EntryFvOut,s6Step114EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step114EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step114EntryF_Outgoing : rowsOwned s6Step114EntryGvAfter [s6Step114EntryFOut,s6Step114EntryGOut,s6Step114EntryFvOut,s6Step114EntryGvOut] :=
  hmrRows_owned_drop s6Step114EntryGvAfter [s6Step114EntryFOut,s6Step114EntryGOut,s6Step114EntryFvOut,s6Step114EntryGvOut] 0 s6Step114EntryBank_outgoingOwned

private theorem s6Step114EntryF_distinct : (s6Step114EntryFRow.sign::s6Step114EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step114EntryF_owned : (s6Step114EntryFRow.sign::s6Step114EntryFRow.payload).toFinset⊆s6Step114EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step114EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step114EntryF_reserved : s6Step114EntryFBefore.reserve s6Step114EntryFFresh.toFinset=some s6Step114EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step114EntryFFresh,arenaWires]
  · norm_num [s6Step114EntryFBefore,s6Step114EntryFFresh,arenaWires]
  · simp only [s6Step114EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step114EntryF_checked : planRowResizeLog s6Step114EntryFBefore s6Step114EntryFRow 212 s6Step114EntryFFresh=
    some (s6Step114EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467],795⟩,growRow 795 s6Step114EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step114EntryFBefore s6Step114EntryFAfter s6Step114EntryFRow 212 s6Step114EntryFFresh
    s6Step114EntryF_distinct s6Step114EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step114EntryF_reserved
  have rowEq : WindowRow.mk (s6Step114EntryFRow.payload++s6Step114EntryFFresh) s6Step114EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step114EntryFvAfter : Arena := s6Step114EntryGAfter

private def s6Step114EntryFvBefore : Arena := s6Step114EntryGAfter

private theorem s6Step114EntryFv_Incoming : rowsOwned s6Step114EntryFvBefore [s6Step114EntryFvRow,s6Step114EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step114EntryFRow,s6Step114EntryGRow,s6Step114EntryFvRow,s6Step114EntryGvRow] 2 s6Step114EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step114EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step114EntryFv_Outgoing : rowsOwned s6Step114EntryGvAfter [s6Step114EntryFvOut,s6Step114EntryGvOut] :=
  hmrRows_owned_drop s6Step114EntryGvAfter [s6Step114EntryFOut,s6Step114EntryGOut,s6Step114EntryFvOut,s6Step114EntryGvOut] 2 s6Step114EntryBank_outgoingOwned

private theorem s6Step114EntryFv_distinct : (s6Step114EntryFvRow.sign::s6Step114EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step114EntryFv_owned : (s6Step114EntryFvRow.sign::s6Step114EntryFvRow.payload).toFinset⊆s6Step114EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step114EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step114EntryFv_reserved : s6Step114EntryFvBefore.reserve s6Step114EntryFvFresh.toFinset=some s6Step114EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step114EntryFvFresh,arenaWires]
  · norm_num [s6Step114EntryFvBefore,s6Step114EntryGAfter,s6Step114EntryFvFresh,arenaWires]
  · simp only [s6Step114EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step114EntryFv_checked : planRowResizeLog s6Step114EntryFvBefore s6Step114EntryFvRow 70 s6Step114EntryFvFresh=
    some (s6Step114EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789],776⟩,growRow 776 s6Step114EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step114EntryFvBefore s6Step114EntryFvAfter s6Step114EntryFvRow 70 s6Step114EntryFvFresh
    s6Step114EntryFv_distinct s6Step114EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step114EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step114EntryFvRow.payload++s6Step114EntryFvFresh) s6Step114EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step114EntryGBefore : Arena := s6Step114EntryFBefore

private theorem s6Step114EntryG_Incoming : rowsOwned s6Step114EntryGBefore [s6Step114EntryGRow,s6Step114EntryFvRow,s6Step114EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step114EntryFRow,s6Step114EntryGRow,s6Step114EntryFvRow,s6Step114EntryGvRow] 1 s6Step114EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step114EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step114EntryG_Outgoing : rowsOwned s6Step114EntryGvAfter [s6Step114EntryGOut,s6Step114EntryFvOut,s6Step114EntryGvOut] :=
  hmrRows_owned_drop s6Step114EntryGvAfter [s6Step114EntryFOut,s6Step114EntryGOut,s6Step114EntryFvOut,s6Step114EntryGvOut] 1 s6Step114EntryBank_outgoingOwned

private theorem s6Step114EntryG_distinct : (s6Step114EntryGRow.sign::s6Step114EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step114EntryG_owned : (s6Step114EntryGRow.sign::s6Step114EntryGRow.payload).toFinset⊆s6Step114EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step114EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step114EntryG_reserved : s6Step114EntryGBefore.reserve s6Step114EntryGFresh.toFinset=some s6Step114EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step114EntryGFresh,arenaWires]
  · norm_num [s6Step114EntryGBefore,s6Step114EntryFBefore,s6Step114EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step114EntryGBefore s6Step114EntryGAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step114EntryGFresh rfl rfl
    · norm_num [s6Step114EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step114EntryG_checked : planRowResizeLog s6Step114EntryGBefore s6Step114EntryGRow 212 s6Step114EntryGFresh=
    some (s6Step114EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 803],777⟩,growRow 777 s6Step114EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step114EntryGBefore s6Step114EntryGAfter s6Step114EntryGRow 212 s6Step114EntryGFresh
    s6Step114EntryG_distinct s6Step114EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step114EntryG_reserved
  have rowEq : WindowRow.mk (s6Step114EntryGRow.payload++s6Step114EntryGFresh) s6Step114EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 803],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step114EntryGvBefore : Arena := s6Step114EntryGAfter

private theorem s6Step114EntryGv_Incoming : rowsOwned s6Step114EntryGvBefore [s6Step114EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step114EntryFRow,s6Step114EntryGRow,s6Step114EntryFvRow,s6Step114EntryGvRow] 3 s6Step114EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step114EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step114EntryGv_Outgoing : rowsOwned s6Step114EntryGvAfter [s6Step114EntryGvOut] :=
  hmrRows_owned_drop s6Step114EntryGvAfter [s6Step114EntryFOut,s6Step114EntryGOut,s6Step114EntryFvOut,s6Step114EntryGvOut] 3 s6Step114EntryBank_outgoingOwned

private theorem s6Step114EntryGv_distinct : (s6Step114EntryGvRow.sign::s6Step114EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step114EntryGv_owned : (s6Step114EntryGvRow.sign::s6Step114EntryGvRow.payload).toFinset⊆s6Step114EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step114EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step114EntryGv_reserved : s6Step114EntryGvBefore.reserve s6Step114EntryGvFresh.toFinset=some s6Step114EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step114EntryGvFresh,arenaWires]
  · norm_num [s6Step114EntryGvBefore,s6Step114EntryGAfter,s6Step114EntryGvFresh,arenaWires]
  · simp only [s6Step114EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step114EntryGv_checked : planRowResizeLog s6Step114EntryGvBefore s6Step114EntryGvRow 70 s6Step114EntryGvFresh=
    some (s6Step114EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793],775⟩,growRow 775 s6Step114EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step114EntryGvBefore s6Step114EntryGvAfter s6Step114EntryGvRow 70 s6Step114EntryGvFresh
    s6Step114EntryGv_distinct s6Step114EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step114EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step114EntryGvRow.payload++s6Step114EntryGvFresh) s6Step114EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step114EntryBank_rows : planWindowRowsLog s6Step114EntryFBefore [(s6Step114EntryFRow,212),(s6Step114EntryGRow,212),(s6Step114EntryFvRow,70),(s6Step114EntryGvRow,70)] [s6Step114EntryFFresh,s6Step114EntryGFresh,s6Step114EntryFvFresh,s6Step114EntryGvFresh]=
    some (s6Step114EntryGvAfter,[s6Step114EntryFOut,s6Step114EntryGOut,s6Step114EntryFvOut,s6Step114EntryGvOut],(growRow 795 s6Step114EntryFFresh ++ (growRow 777 s6Step114EntryGFresh ++ (growRow 776 s6Step114EntryFvFresh ++ (growRow 775 s6Step114EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step114EntryGvAfter [] []=some (s6Step114EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step114EntryGvBefore s6Step114EntryGvAfter s6Step114EntryGvAfter
    s6Step114EntryGvRow s6Step114EntryGvOut 70 s6Step114EntryGvFresh [] [] []
    (growRow 775 s6Step114EntryGvFresh) ([]) s6Step114EntryGv_Incoming s6Step114EntryGv_checked h4 s6Step114EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step114EntryFvBefore s6Step114EntryFvAfter s6Step114EntryGvAfter
    s6Step114EntryFvRow s6Step114EntryFvOut 70 s6Step114EntryFvFresh [(s6Step114EntryGvRow,70)] [s6Step114EntryGvFresh] [s6Step114EntryGvOut]
    (growRow 776 s6Step114EntryFvFresh) ((growRow 775 s6Step114EntryGvFresh ++ [])) s6Step114EntryFv_Incoming s6Step114EntryFv_checked h3 s6Step114EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step114EntryGBefore s6Step114EntryGAfter s6Step114EntryGvAfter
    s6Step114EntryGRow s6Step114EntryGOut 212 s6Step114EntryGFresh [(s6Step114EntryFvRow,70),(s6Step114EntryGvRow,70)] [s6Step114EntryFvFresh,s6Step114EntryGvFresh] [s6Step114EntryFvOut,s6Step114EntryGvOut]
    (growRow 777 s6Step114EntryGFresh) ((growRow 776 s6Step114EntryFvFresh ++ (growRow 775 s6Step114EntryGvFresh ++ []))) s6Step114EntryG_Incoming s6Step114EntryG_checked h2 s6Step114EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step114EntryFBefore s6Step114EntryFAfter s6Step114EntryGvAfter
    s6Step114EntryFRow s6Step114EntryFOut 212 s6Step114EntryFFresh [(s6Step114EntryGRow,212),(s6Step114EntryFvRow,70),(s6Step114EntryGvRow,70)] [s6Step114EntryGFresh,s6Step114EntryFvFresh,s6Step114EntryGvFresh] [s6Step114EntryGOut,s6Step114EntryFvOut,s6Step114EntryGvOut]
    (growRow 795 s6Step114EntryFFresh) ((growRow 777 s6Step114EntryGFresh ++ (growRow 776 s6Step114EntryFvFresh ++ (growRow 775 s6Step114EntryGvFresh ++ [])))) s6Step114EntryF_Incoming s6Step114EntryF_checked h1 s6Step114EntryF_Outgoing
  exact h0

private theorem s6Step114EntryBank_checked : compileHmrBankResizeLog .entry s6Step114EntryFBefore ⟨s6Step114EntryFRow,s6Step114EntryGRow,s6Step114EntryFvRow,s6Step114EntryGvRow⟩ ⟨212,212,70,70⟩ [s6Step114EntryFFresh,s6Step114EntryGFresh,s6Step114EntryFvFresh,s6Step114EntryGvFresh]=
    some (s6Step114EntryGvAfter,⟨s6Step114EntryFOut,s6Step114EntryGOut,s6Step114EntryFvOut,s6Step114EntryGvOut⟩,(growRow 795 s6Step114EntryFFresh ++ (growRow 777 s6Step114EntryGFresh ++ (growRow 776 s6Step114EntryFvFresh ++ (growRow 775 s6Step114EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step114EntryBank_rows]
  rfl

private def s6Step114ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step114ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step114ExitFBefore : Arena := s6Step114ExitGAfter

private def s6Step114ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 880],795⟩

private def s6Step114ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892],776⟩

private def s6Step114ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 803, 868],777⟩

private def s6Step114ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 823],775⟩

private theorem s6Step114ExitBank_incomingDistinct : ([s6Step114ExitGRow,s6Step114ExitFRow,s6Step114ExitFvRow,s6Step114ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step114ExitF_Incoming : rowsOwned s6Step114ExitFBefore [s6Step114ExitFRow,s6Step114ExitFvRow,s6Step114ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step114ExitGRow,s6Step114ExitFRow,s6Step114ExitFvRow,s6Step114ExitGvRow] 1 s6Step114ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step114ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step114ExitBank_outgoingOwned : rowsOwned s6Step114ExitGvAfter [s6Step114ExitGOut,s6Step114ExitFOut,s6Step114ExitFvOut,s6Step114ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step114ExitGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step114ExitF_Outgoing : rowsOwned s6Step114ExitGvAfter [s6Step114ExitFOut,s6Step114ExitFvOut,s6Step114ExitGvOut] :=
  hmrRows_owned_drop s6Step114ExitGvAfter [s6Step114ExitGOut,s6Step114ExitFOut,s6Step114ExitFvOut,s6Step114ExitGvOut] 1 s6Step114ExitBank_outgoingOwned

private theorem s6Step114ExitF_distinct : (s6Step114ExitFRow.sign::s6Step114ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step114ExitF_owned : (s6Step114ExitFRow.sign::s6Step114ExitFRow.payload).toFinset⊆s6Step114ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step114ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step114ExitF_retired : s6Step114ExitFBefore.retireSet s6Step114ExitFExtra.toFinset=s6Step114ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step114ExitFBefore s6Step114ExitFAfter s6Step114ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step114ExitFBefore s6Step114ExitFAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step114ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step114ExitF_checked : planRowResizeLog s6Step114ExitFBefore s6Step114ExitFRow 212 []=
    some (s6Step114ExitFAfter,s6Step114ExitFOut,shrinkRow 795 s6Step114ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step114ExitFBefore s6Step114ExitFRow 212 s6Step114ExitF_distinct s6Step114ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step114ExitFRow.payload.take 212) s6Step114ExitFRow.sign=s6Step114ExitFOut := by decide +kernel
  have hi : s6Step114ExitFRow.payload.drop 212=s6Step114ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step114ExitF_retired] at result
  exact result

private def s6Step114ExitFvAfter : Arena := s6Step114ExitFAfter

private def s6Step114ExitFvBefore : Arena := s6Step114ExitFAfter

private theorem s6Step114ExitFv_Incoming : rowsOwned s6Step114ExitFvBefore [s6Step114ExitFvRow,s6Step114ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step114ExitGRow,s6Step114ExitFRow,s6Step114ExitFvRow,s6Step114ExitGvRow] 2 s6Step114ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step114ExitFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step114ExitFv_Outgoing : rowsOwned s6Step114ExitGvAfter [s6Step114ExitFvOut,s6Step114ExitGvOut] :=
  hmrRows_owned_drop s6Step114ExitGvAfter [s6Step114ExitGOut,s6Step114ExitFOut,s6Step114ExitFvOut,s6Step114ExitGvOut] 2 s6Step114ExitBank_outgoingOwned

private theorem s6Step114ExitFv_distinct : (s6Step114ExitFvRow.sign::s6Step114ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step114ExitFv_owned : (s6Step114ExitFvRow.sign::s6Step114ExitFvRow.payload).toFinset⊆s6Step114ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step114ExitFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step114ExitFv_reserved : s6Step114ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step114ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step114ExitFv_checked : planRowResizeLog s6Step114ExitFvBefore s6Step114ExitFvRow 71 []=
    some (s6Step114ExitFvAfter,s6Step114ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step114ExitFvBefore s6Step114ExitFvAfter s6Step114ExitFvRow 71 []
    s6Step114ExitFv_distinct s6Step114ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step114ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step114ExitFvRow.payload++[]) s6Step114ExitFvRow.sign=s6Step114ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step114ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step114ExitG_Incoming : rowsOwned s6Step114ExitGBefore [s6Step114ExitGRow,s6Step114ExitFRow,s6Step114ExitFvRow,s6Step114ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step114ExitGRow,s6Step114ExitFRow,s6Step114ExitFvRow,s6Step114ExitGvRow] 0 s6Step114ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step114ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step114ExitG_Outgoing : rowsOwned s6Step114ExitGvAfter [s6Step114ExitGOut,s6Step114ExitFOut,s6Step114ExitFvOut,s6Step114ExitGvOut] :=
  hmrRows_owned_drop s6Step114ExitGvAfter [s6Step114ExitGOut,s6Step114ExitFOut,s6Step114ExitFvOut,s6Step114ExitGvOut] 0 s6Step114ExitBank_outgoingOwned

private theorem s6Step114ExitG_distinct : (s6Step114ExitGRow.sign::s6Step114ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step114ExitG_owned : (s6Step114ExitGRow.sign::s6Step114ExitGRow.payload).toFinset⊆s6Step114ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step114ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step114ExitG_retired : s6Step114ExitGBefore.retireSet s6Step114ExitGExtra.toFinset=s6Step114ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step114ExitGBefore s6Step114ExitGAfter s6Step114ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step114ExitGBefore s6Step114ExitGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step114ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step114ExitG_checked : planRowResizeLog s6Step114ExitGBefore s6Step114ExitGRow 211 []=
    some (s6Step114ExitGAfter,s6Step114ExitGOut,shrinkRow 777 s6Step114ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step114ExitGBefore s6Step114ExitGRow 211 s6Step114ExitG_distinct s6Step114ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step114ExitGRow.payload.take 211) s6Step114ExitGRow.sign=s6Step114ExitGOut := by decide +kernel
  have hi : s6Step114ExitGRow.payload.drop 211=s6Step114ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step114ExitG_retired] at result
  exact result

private def s6Step114ExitGvBefore : Arena := s6Step114ExitFAfter

private theorem s6Step114ExitGv_Incoming : rowsOwned s6Step114ExitGvBefore [s6Step114ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step114ExitGRow,s6Step114ExitFRow,s6Step114ExitFvRow,s6Step114ExitGvRow] 3 s6Step114ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step114ExitGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step114ExitGv_Outgoing : rowsOwned s6Step114ExitGvAfter [s6Step114ExitGvOut] :=
  hmrRows_owned_drop s6Step114ExitGvAfter [s6Step114ExitGOut,s6Step114ExitFOut,s6Step114ExitFvOut,s6Step114ExitGvOut] 3 s6Step114ExitBank_outgoingOwned

private theorem s6Step114ExitGv_distinct : (s6Step114ExitGvRow.sign::s6Step114ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step114ExitGv_owned : (s6Step114ExitGvRow.sign::s6Step114ExitGvRow.payload).toFinset⊆s6Step114ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step114ExitGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step114ExitGv_retired : s6Step114ExitGvBefore.retireSet s6Step114ExitGvExtra.toFinset=s6Step114ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step114ExitGvBefore s6Step114ExitGvAfter s6Step114ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step114ExitGvBefore s6Step114ExitGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step114ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step114ExitGv_checked : planRowResizeLog s6Step114ExitGvBefore s6Step114ExitGvRow 70 []=
    some (s6Step114ExitGvAfter,s6Step114ExitGvOut,shrinkRow 775 s6Step114ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step114ExitGvBefore s6Step114ExitGvRow 70 s6Step114ExitGv_distinct s6Step114ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step114ExitGvRow.payload.take 70) s6Step114ExitGvRow.sign=s6Step114ExitGvOut := by decide +kernel
  have hi : s6Step114ExitGvRow.payload.drop 70=s6Step114ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step114ExitGv_retired] at result
  exact result

private theorem s6Step114ExitBank_rows : planWindowRowsLog s6Step114ExitGBefore [(s6Step114ExitGRow,211),(s6Step114ExitFRow,212),(s6Step114ExitFvRow,71),(s6Step114ExitGvRow,70)] [[],[],[],[]]=
    some (s6Step114ExitGvAfter,[s6Step114ExitGOut,s6Step114ExitFOut,s6Step114ExitFvOut,s6Step114ExitGvOut],(shrinkRow 777 s6Step114ExitGExtra ++ (shrinkRow 795 s6Step114ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step114ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step114ExitGvAfter [] []=some (s6Step114ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step114ExitGvBefore s6Step114ExitGvAfter s6Step114ExitGvAfter
    s6Step114ExitGvRow s6Step114ExitGvOut 70 [] [] [] []
    (shrinkRow 775 s6Step114ExitGvExtra) ([]) s6Step114ExitGv_Incoming s6Step114ExitGv_checked h4 s6Step114ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step114ExitFvBefore s6Step114ExitFvAfter s6Step114ExitGvAfter
    s6Step114ExitFvRow s6Step114ExitFvOut 71 [] [(s6Step114ExitGvRow,70)] [[]] [s6Step114ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step114ExitGvExtra ++ [])) s6Step114ExitFv_Incoming s6Step114ExitFv_checked h3 s6Step114ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step114ExitFBefore s6Step114ExitFAfter s6Step114ExitGvAfter
    s6Step114ExitFRow s6Step114ExitFOut 212 [] [(s6Step114ExitFvRow,71),(s6Step114ExitGvRow,70)] [[],[]] [s6Step114ExitFvOut,s6Step114ExitGvOut]
    (shrinkRow 795 s6Step114ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step114ExitGvExtra ++ []))) s6Step114ExitF_Incoming s6Step114ExitF_checked h2 s6Step114ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step114ExitGBefore s6Step114ExitGAfter s6Step114ExitGvAfter
    s6Step114ExitGRow s6Step114ExitGOut 211 [] [(s6Step114ExitFRow,212),(s6Step114ExitFvRow,71),(s6Step114ExitGvRow,70)] [[],[],[]] [s6Step114ExitFOut,s6Step114ExitFvOut,s6Step114ExitGvOut]
    (shrinkRow 777 s6Step114ExitGExtra) ((shrinkRow 795 s6Step114ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step114ExitGvExtra ++ [])))) s6Step114ExitG_Incoming s6Step114ExitG_checked h1 s6Step114ExitG_Outgoing
  exact h0

private theorem s6Step114ExitBank_checked : compileHmrBankResizeLog .exit s6Step114ExitGBefore ⟨s6Step114ExitFRow,s6Step114ExitGRow,s6Step114ExitFvRow,s6Step114ExitGvRow⟩ ⟨212,211,71,70⟩ [[],[],[],[]]=
    some (s6Step114ExitGvAfter,⟨s6Step114ExitFOut,s6Step114ExitGOut,s6Step114ExitFvOut,s6Step114ExitGvOut⟩,(shrinkRow 777 s6Step114ExitGExtra ++ (shrinkRow 795 s6Step114ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step114ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step114ExitBank_rows]
  rfl

private theorem s6Step114Add0_apart : Disjoint s6Step114Add0Arena.live s6Step114Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step114Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step114Add0_card : s6Step114Add0Arena.live.card=875 := by
  decide +kernel

private theorem s6Step114Add0_borrowed : s6Step114Add0Arena.checkBorrow (hmrHybridCount s6Step114Add0Arena s6Step114Add0B.length) s6Step114Add0Work=some s6Step114Add0During := by
  have len : s6Step114Add0Work.length=hmrHybridCount s6Step114Add0Arena s6Step114Add0B.length := by
    rw [hmrHybridCount,s6Step114Add0_card]
    decide +kernel
  have nd : s6Step114Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step114Add0Arena s6Step114Add0During s6Step114Add0Work.toFinset s6Step114Add0_bounded s6Step114Add0_apart rfl

private theorem s6Step114Add0_distinct : (882::907::864::(s6Step114Add0A++s6Step114Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step114Add0_owned : (882::907::864::(s6Step114Add0A++s6Step114Add0B)).toFinset⊆s6Step114Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step114Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step114Add0_checked : compileHmrHybridCinLog s6Step114Add0Arena 907 882 864 s6Step114Add0A s6Step114Add0B s6Step114Add0Work=some s6Step114Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step114Add0Arena s6Step114Add0During 907 882 864 s6Step114Add0A s6Step114Add0B s6Step114Add0Work
    (by decide +kernel) (by decide +kernel) s6Step114Add0_distinct
    (fun q hq => s6Step114Add0_owned (List.mem_toFinset.mpr hq)) s6Step114Add0_borrowed

private theorem s6Step114Add1_apart : Disjoint s6Step114Add1Arena.live s6Step114Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step114Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step114Add1_card : s6Step114Add1Arena.live.card=875 := by
  decide +kernel

private theorem s6Step114Add1_borrowed : s6Step114Add1Arena.checkBorrow (hmrHybridCount s6Step114Add1Arena s6Step114Add1B.length) s6Step114Add1Work=some s6Step114Add1During := by
  have len : s6Step114Add1Work.length=hmrHybridCount s6Step114Add1Arena s6Step114Add1B.length := by
    rw [hmrHybridCount,s6Step114Add1_card]
    decide +kernel
  have nd : s6Step114Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step114Add1Arena s6Step114Add1During s6Step114Add1Work.toFinset s6Step114Add1_bounded s6Step114Add1_apart rfl

private theorem s6Step114Add1_distinct : (882::907::864::(s6Step114Add1A++s6Step114Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step114Add1_owned : (882::907::864::(s6Step114Add1A++s6Step114Add1B)).toFinset⊆s6Step114Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step114Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step114Add1_checked : compileHmrHybridCinLog s6Step114Add1Arena 907 882 864 s6Step114Add1A s6Step114Add1B s6Step114Add1Work=some s6Step114Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step114Add1Arena s6Step114Add1During 907 882 864 s6Step114Add1A s6Step114Add1B s6Step114Add1Work
    (by decide +kernel) (by decide +kernel) s6Step114Add1_distinct
    (fun q hq => s6Step114Add1_owned (List.mem_toFinset.mpr hq)) s6Step114Add1_borrowed

private theorem s6Step114F4_apart : Disjoint (s6Step114Add0A++s6Step114Add0B).toFinset (s6Step114Add1A++s6Step114Add1B).toFinset := by
  have nd : ((s6Step114Add0A++s6Step114Add0B)++(s6Step114Add1A++s6Step114Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step114F4_carry : s6Step114F4FlagArena.checkBorrow 1 [864]=some s6Step114Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step114F4FlagArena,s6Step114HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step114F4FlagArena,s6Step114HeadFvAfter,s6Step114Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step114F4_distinct : (886::907::882::864::((s6Step114Add0A++s6Step114Add1A)++(s6Step114Add0B++s6Step114Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step114F4_flag : s6Step114HeadFvAfter.checkBorrow 1 [882]=some s6Step114F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step114HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step114F4_owned : (886::907::((s6Step114Add0A++s6Step114Add1A)++(s6Step114Add0B++s6Step114Add1B))).toFinset⊆s6Step114HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step114HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step114F4_checked : compileHmrHybridF4Log s6Step114HeadFvAfter 886 907 s6Step114Add0A s6Step114Add0B s6Step114Add1A s6Step114Add1B [882] [864] s6Step114Add0Work s6Step114Add1Work=some s6Step114F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step114HeadFvAfter s6Step114F4FlagArena s6Step114Add0Arena s6Step114Add0During s6Step114Add1During 886 907
    s6Step114Add0A s6Step114Add0B s6Step114Add1A s6Step114Add1B [882] [864] s6Step114Add0Work s6Step114Add1Work
    (fun q hq => s6Step114F4_owned (List.mem_toFinset.mpr hq)) s6Step114F4_flag s6Step114F4_carry
    s6Step114F4_distinct s6Step114F4_apart s6Step114Add0_checked s6Step114Add1_checked

private theorem s6Step114Front_branch : s6Step114FrontSigmaArena.checkBorrow 1 [907]=some s6Step114HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step114FrontSigmaArena,s6Step114EntryGvAfter,s6Step114EntryGAfter,arenaWires]
  · change s6Step114HeadGBefore.live=(s6Step114EntryGvAfter.live∪{886})∪{907}
    apply hmrArena_union_pair_of_filter_check s6Step114EntryGvAfter s6Step114HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 886 907 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step114Front_entry : HmrFrontEntryValid s6Step114EntryFBefore s6Step114FrontBank 212 70 ⟨212,211,71,70⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step114FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step114EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step114EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,886),(887,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step114FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step114Front_sigma : s6Step114EntryGvAfter.checkBorrow 1 [886]=some s6Step114FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step114EntryGvAfter,s6Step114EntryGAfter,arenaWires]
  · rfl

private def s6Step114HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step114HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step114HeadFBefore : Arena := s6Step114HeadGAfter

private def s6Step114HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467],795⟩

private def s6Step114HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789],776⟩

private def s6Step114HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 803],777⟩

private def s6Step114HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793],775⟩

private theorem s6Step114HeadBank_incomingDistinct : ([s6Step114HeadGRow,s6Step114HeadFRow,s6Step114HeadGvRow,s6Step114HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step114HeadF_Incoming : rowsOwned s6Step114HeadFBefore [s6Step114HeadFRow,s6Step114HeadGvRow,s6Step114HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step114HeadGRow,s6Step114HeadFRow,s6Step114HeadGvRow,s6Step114HeadFvRow] 1 s6Step114HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step114HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step114HeadBank_outgoingOwned : rowsOwned s6Step114HeadFvAfter [s6Step114HeadGOut,s6Step114HeadFOut,s6Step114HeadGvOut,s6Step114HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step114HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step114HeadF_Outgoing : rowsOwned s6Step114HeadFvAfter [s6Step114HeadFOut,s6Step114HeadGvOut,s6Step114HeadFvOut] :=
  hmrRows_owned_drop s6Step114HeadFvAfter [s6Step114HeadGOut,s6Step114HeadFOut,s6Step114HeadGvOut,s6Step114HeadFvOut] 1 s6Step114HeadBank_outgoingOwned

private theorem s6Step114HeadF_distinct : (s6Step114HeadFRow.sign::s6Step114HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step114HeadF_owned : (s6Step114HeadFRow.sign::s6Step114HeadFRow.payload).toFinset⊆s6Step114HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step114HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step114HeadF_reserved : s6Step114HeadFBefore.reserve s6Step114HeadFFresh.toFinset=some s6Step114HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step114HeadFFresh,arenaWires]
  · norm_num [s6Step114HeadFBefore,s6Step114HeadGAfter,s6Step114HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step114HeadFAfter,s6Step114HeadFBefore,s6Step114HeadGAfter,s6Step114HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step114HeadF_checked : planRowResizeLog s6Step114HeadFBefore s6Step114HeadFRow 213 s6Step114HeadFFresh=
    some (s6Step114HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 880],795⟩,growRow 795 s6Step114HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step114HeadFBefore s6Step114HeadFAfter s6Step114HeadFRow 213 s6Step114HeadFFresh
    s6Step114HeadF_distinct s6Step114HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step114HeadF_reserved
  have rowEq : WindowRow.mk (s6Step114HeadFRow.payload++s6Step114HeadFFresh) s6Step114HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 880],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step114HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step114HeadFvBefore : Arena := s6Step114HeadGvAfter

private theorem s6Step114HeadFv_Incoming : rowsOwned s6Step114HeadFvBefore [s6Step114HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step114HeadGRow,s6Step114HeadFRow,s6Step114HeadGvRow,s6Step114HeadFvRow] 3 s6Step114HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step114HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step114HeadFv_Outgoing : rowsOwned s6Step114HeadFvAfter [s6Step114HeadFvOut] :=
  hmrRows_owned_drop s6Step114HeadFvAfter [s6Step114HeadGOut,s6Step114HeadFOut,s6Step114HeadGvOut,s6Step114HeadFvOut] 3 s6Step114HeadBank_outgoingOwned

private theorem s6Step114HeadFv_distinct : (s6Step114HeadFvRow.sign::s6Step114HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step114HeadFv_owned : (s6Step114HeadFvRow.sign::s6Step114HeadFvRow.payload).toFinset⊆s6Step114HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step114HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step114HeadFv_reserved : s6Step114HeadFvBefore.reserve s6Step114HeadFvFresh.toFinset=some s6Step114HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step114HeadFvFresh,arenaWires]
  · norm_num [s6Step114HeadFvBefore,s6Step114HeadGvAfter,s6Step114HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step114HeadFvAfter,s6Step114HeadFvBefore,s6Step114HeadGvAfter,s6Step114HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step114HeadFv_checked : planRowResizeLog s6Step114HeadFvBefore s6Step114HeadFvRow 71 s6Step114HeadFvFresh=
    some (s6Step114HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892],776⟩,growRow 776 s6Step114HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step114HeadFvBefore s6Step114HeadFvAfter s6Step114HeadFvRow 71 s6Step114HeadFvFresh
    s6Step114HeadFv_distinct s6Step114HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step114HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step114HeadFvRow.payload++s6Step114HeadFvFresh) s6Step114HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step114HeadG_Incoming : rowsOwned s6Step114HeadGBefore [s6Step114HeadGRow,s6Step114HeadFRow,s6Step114HeadGvRow,s6Step114HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step114HeadGRow,s6Step114HeadFRow,s6Step114HeadGvRow,s6Step114HeadFvRow] 0 s6Step114HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step114HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step114HeadG_Outgoing : rowsOwned s6Step114HeadFvAfter [s6Step114HeadGOut,s6Step114HeadFOut,s6Step114HeadGvOut,s6Step114HeadFvOut] :=
  hmrRows_owned_drop s6Step114HeadFvAfter [s6Step114HeadGOut,s6Step114HeadFOut,s6Step114HeadGvOut,s6Step114HeadFvOut] 0 s6Step114HeadBank_outgoingOwned

private theorem s6Step114HeadG_distinct : (s6Step114HeadGRow.sign::s6Step114HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step114HeadG_owned : (s6Step114HeadGRow.sign::s6Step114HeadGRow.payload).toFinset⊆s6Step114HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step114HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step114HeadG_reserved : s6Step114HeadGBefore.reserve s6Step114HeadGFresh.toFinset=some s6Step114HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step114HeadGFresh,arenaWires]
  · norm_num [s6Step114HeadGBefore,s6Step114HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step114HeadGBefore s6Step114HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step114HeadGFresh rfl rfl
    · norm_num [s6Step114HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step114HeadG_checked : planRowResizeLog s6Step114HeadGBefore s6Step114HeadGRow 213 s6Step114HeadGFresh=
    some (s6Step114HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 803, 868],777⟩,growRow 777 s6Step114HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step114HeadGBefore s6Step114HeadGAfter s6Step114HeadGRow 213 s6Step114HeadGFresh
    s6Step114HeadG_distinct s6Step114HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step114HeadG_reserved
  have rowEq : WindowRow.mk (s6Step114HeadGRow.payload++s6Step114HeadGFresh) s6Step114HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 803, 868],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step114HeadGvBefore : Arena := s6Step114HeadFAfter

private theorem s6Step114HeadGv_Incoming : rowsOwned s6Step114HeadGvBefore [s6Step114HeadGvRow,s6Step114HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step114HeadGRow,s6Step114HeadFRow,s6Step114HeadGvRow,s6Step114HeadFvRow] 2 s6Step114HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step114HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step114HeadGv_Outgoing : rowsOwned s6Step114HeadFvAfter [s6Step114HeadGvOut,s6Step114HeadFvOut] :=
  hmrRows_owned_drop s6Step114HeadFvAfter [s6Step114HeadGOut,s6Step114HeadFOut,s6Step114HeadGvOut,s6Step114HeadFvOut] 2 s6Step114HeadBank_outgoingOwned

private theorem s6Step114HeadGv_distinct : (s6Step114HeadGvRow.sign::s6Step114HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step114HeadGv_owned : (s6Step114HeadGvRow.sign::s6Step114HeadGvRow.payload).toFinset⊆s6Step114HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step114HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step114HeadGv_reserved : s6Step114HeadGvBefore.reserve s6Step114HeadGvFresh.toFinset=some s6Step114HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step114HeadGvFresh,arenaWires]
  · norm_num [s6Step114HeadGvBefore,s6Step114HeadFAfter,s6Step114HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step114HeadGvAfter,s6Step114HeadGvBefore,s6Step114HeadFAfter,s6Step114HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step114HeadGv_checked : planRowResizeLog s6Step114HeadGvBefore s6Step114HeadGvRow 71 s6Step114HeadGvFresh=
    some (s6Step114HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 823],775⟩,growRow 775 s6Step114HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step114HeadGvBefore s6Step114HeadGvAfter s6Step114HeadGvRow 71 s6Step114HeadGvFresh
    s6Step114HeadGv_distinct s6Step114HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step114HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step114HeadGvRow.payload++s6Step114HeadGvFresh) s6Step114HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 823],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step114HeadBank_rows : planWindowRowsLog s6Step114HeadGBefore [(s6Step114HeadGRow,213),(s6Step114HeadFRow,213),(s6Step114HeadGvRow,71),(s6Step114HeadFvRow,71)] [s6Step114HeadGFresh,s6Step114HeadFFresh,s6Step114HeadGvFresh,s6Step114HeadFvFresh]=
    some (s6Step114HeadFvAfter,[s6Step114HeadGOut,s6Step114HeadFOut,s6Step114HeadGvOut,s6Step114HeadFvOut],(growRow 777 s6Step114HeadGFresh ++ (growRow 795 s6Step114HeadFFresh ++ (growRow 775 s6Step114HeadGvFresh ++ (growRow 776 s6Step114HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step114HeadFvAfter [] []=some (s6Step114HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step114HeadFvBefore s6Step114HeadFvAfter s6Step114HeadFvAfter
    s6Step114HeadFvRow s6Step114HeadFvOut 71 s6Step114HeadFvFresh [] [] []
    (growRow 776 s6Step114HeadFvFresh) ([]) s6Step114HeadFv_Incoming s6Step114HeadFv_checked h4 s6Step114HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step114HeadGvBefore s6Step114HeadGvAfter s6Step114HeadFvAfter
    s6Step114HeadGvRow s6Step114HeadGvOut 71 s6Step114HeadGvFresh [(s6Step114HeadFvRow,71)] [s6Step114HeadFvFresh] [s6Step114HeadFvOut]
    (growRow 775 s6Step114HeadGvFresh) ((growRow 776 s6Step114HeadFvFresh ++ [])) s6Step114HeadGv_Incoming s6Step114HeadGv_checked h3 s6Step114HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step114HeadFBefore s6Step114HeadFAfter s6Step114HeadFvAfter
    s6Step114HeadFRow s6Step114HeadFOut 213 s6Step114HeadFFresh [(s6Step114HeadGvRow,71),(s6Step114HeadFvRow,71)] [s6Step114HeadGvFresh,s6Step114HeadFvFresh] [s6Step114HeadGvOut,s6Step114HeadFvOut]
    (growRow 795 s6Step114HeadFFresh) ((growRow 775 s6Step114HeadGvFresh ++ (growRow 776 s6Step114HeadFvFresh ++ []))) s6Step114HeadF_Incoming s6Step114HeadF_checked h2 s6Step114HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step114HeadGBefore s6Step114HeadGAfter s6Step114HeadFvAfter
    s6Step114HeadGRow s6Step114HeadGOut 213 s6Step114HeadGFresh [(s6Step114HeadFRow,213),(s6Step114HeadGvRow,71),(s6Step114HeadFvRow,71)] [s6Step114HeadFFresh,s6Step114HeadGvFresh,s6Step114HeadFvFresh] [s6Step114HeadFOut,s6Step114HeadGvOut,s6Step114HeadFvOut]
    (growRow 777 s6Step114HeadGFresh) ((growRow 795 s6Step114HeadFFresh ++ (growRow 775 s6Step114HeadGvFresh ++ (growRow 776 s6Step114HeadFvFresh ++ [])))) s6Step114HeadG_Incoming s6Step114HeadG_checked h1 s6Step114HeadG_Outgoing
  exact h0

private theorem s6Step114HeadBank_checked : compileHmrBankResizeLog .headroom s6Step114HeadGBefore ⟨s6Step114HeadFRow,s6Step114HeadGRow,s6Step114HeadFvRow,s6Step114HeadGvRow⟩ ⟨213,213,71,71⟩ [s6Step114HeadGFresh,s6Step114HeadFFresh,s6Step114HeadGvFresh,s6Step114HeadFvFresh]=
    some (s6Step114HeadFvAfter,⟨s6Step114HeadFOut,s6Step114HeadGOut,s6Step114HeadFvOut,s6Step114HeadGvOut⟩,(growRow 777 s6Step114HeadGFresh ++ (growRow 795 s6Step114HeadFFresh ++ (growRow 775 s6Step114HeadGvFresh ++ (growRow 776 s6Step114HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step114HeadBank_rows]
  rfl

private theorem s6Step114Front_checked : compileHmrSourceFrontLog s6Step114EntryFBefore s6Step114FrontBank 212 70 ⟨212,211,71,70⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step114FrontLog=some s6Step114FrontPlan := by
  have pairEq : s6Step114FrontPair=⟨s6Step114HeadFRow,s6Step114HeadGRow,s6Step114HeadFvRow,s6Step114HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step114FrontHead=⟨s6Step114ExitFRow,s6Step114ExitGRow,s6Step114ExitFvRow,s6Step114ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step114Add0A=s6Step114FrontHead.f.wires := by decide +kernel
  have gEq : s6Step114Add0B=s6Step114FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step114Add1A=s6Step114FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step114Add1B=s6Step114FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step114EntryFBefore s6Step114FrontBank 212 70 ⟨212,211,71,70⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step114FrontLog s6Step114FrontPlan
  · exact s6Step114Front_entry
  · exact s6Step114EntryBank_checked
  · exact s6Step114Front_sigma
  · rfl
  · exact s6Step114Front_branch
  · rfl
  · simpa only [s6Step114FrontPlan,pairEq] using s6Step114HeadBank_checked
  · simpa only [s6Step114FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step114F4_checked
  · exact s6Step114Counter_checked
  · rfl
  · simpa only [s6Step114FrontPlan,headEq] using s6Step114ExitBank_checked

private theorem s6Step114Complete_explicit_checked : compileHmrEarlyStepLog s6Step114EntryFBefore s6Step114FrontBank 212 70 ⟨212,211,71,70⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step114CompleteLog=some s6Step114CompletePlan := by
  let Q := s6Step114EarlyControlPlan
  have hq := s6Step114EarlyControl_plan_checked
  have fv1 : s6Step114CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step114CompleteOut.fv.payload[2]?.getD s6Step114CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step114CompleteOut.fv.payload[3]?.getD s6Step114CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step114CompleteOut.fv.payload[4]?.getD s6Step114CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step114EntryFBefore s6Step114EarlyControlArena s6Step114FrontBank 212 70 ⟨212,211,71,70⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step114CompleteLog s6Step114FrontPlan Q
    s6Step114Front_checked s6Step114Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step114Complete_owned s6Step114Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step114EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 886 s6Step114CompleteOut.fv.second (s6Step114CompleteOut.fv.payload[2]?.getD s6Step114CompleteOut.fv.sign) (s6Step114CompleteOut.fv.payload[3]?.getD s6Step114CompleteOut.fv.sign) (s6Step114CompleteOut.fv.payload[4]?.getD s6Step114CompleteOut.fv.sign) 907 37 s6Step114EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep114Arena : Arena := s6Step114EntryFBefore
def s6PrivateStep114Bank : WindowBank := s6Step114FrontBank
def s6PrivateStep114Spec : HmrSourceWalkStepLog := ⟨212,70,⟨212,211,71,70⟩,37,.early s6Step114CompleteLog⟩
def s6PrivateStep114Plan : HmrSourceStepPlan := .early s6Step114CompletePlan
theorem s6PrivateStep114_source : s6PrivateStep114Spec=s6ObservedLogs112[2] := rfl
theorem s6PrivateStep114_checked : compileHmrSourceStepLog s6PrivateStep114Arena s6PrivateStep114Bank
    s6PrivateStep114Spec.fgWidth s6PrivateStep114Spec.vWidth s6PrivateStep114Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]
    6 498 114 s6PrivateStep114Spec.need none s6PrivateStep114Spec.log=some s6PrivateStep114Plan := by
  change compileHmrSourceStepLog s6Step114EntryFBefore s6Step114FrontBank 212 70 ⟨212,211,71,70⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 6 498 114 37 none (.early s6Step114CompleteLog)=some (.early s6Step114CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 114<498)]
  rw [s6Step114Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
