import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep109
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

private def s6Step111CompleteMoves : List (Wire × Wire) := [(892,212),(880,468)]

private def s6Step111EarlyControlLog : HmrEarlyControlLog := ⟨[880, 892, 803, 789, 907],[868],[882],[864, 813, 879, 865, 796, 891],[]⟩

private def s6Step111FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[868], [907], [803], [789]],[[], [], [], []]⟩,[823],[793],[882],[864],[813, 879, 865, 796, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[813, 879, 865, 796, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[882, 864, 813, 879]⟩

private def s6Step111CompleteLog : HmrEarlyStepLog := ⟨s6Step111FrontLog,s6Step111CompleteMoves,s6Step111EarlyControlLog⟩

private def s6Step111ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467],795⟩

private def s6Step111ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818],776⟩

private def s6Step111ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211],777⟩

private def s6Step111ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805],775⟩

private def s6Step111FrontOut : WindowBank := ⟨s6Step111ExitFOut,s6Step111ExitGOut,s6Step111ExitFvOut,s6Step111ExitGvOut⟩

private def s6Step111CompleteOut : WindowBank := s6Step111FrontOut.repacked s6Step111CompleteMoves

private def s6Step111EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step111EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step111EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step111EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step111EarlyControlPositiveArena,[868],s6Step111EarlyControlEqualityArena,[882],⟨⟨823,false⟩,[⟨⟨868,false⟩,882⟩]⟩⟩

private def s6Step111EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step111EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step111EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step111EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step111EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step111EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step111EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,880⟩,⟨⟨772,false⟩,892⟩,⟨⟨771,false⟩,803⟩,⟨⟨770,false⟩,789⟩,⟨⟨769,false⟩,907⟩]⟩

private def s6Step111EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step111EarlyControlZeroArena,s6Step111EarlyControlZeroPlan,s6Step111EarlyControlClassPlan,s6Step111EarlyControlFlagArena,s6Step111EarlyControlFittedArena,s6Step111EarlyControlHistoryArena,s6Step111EarlyControlSigmaArena,s6Step111EarlyControlOutputArena,s6Step111EarlyControlLog⟩

private def s6Step111CounterWork : List Wire := [882, 864, 813, 879]

private theorem s6Step111Counter_bounded : s6Step111CounterWork.toFinset⊆arenaWires := by norm_num [s6Step111CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step111HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step111CounterDuring : Arena := ⟨s6Step111HeadFvAfter.live∪s6Step111CounterWork.toFinset,Finset.union_subset s6Step111HeadFvAfter.bounded s6Step111Counter_bounded⟩

private def s6Step111EntryFFresh : List Wire := []

private def s6Step111EntryFvFresh : List Wire := []

private def s6Step111EntryGFresh : List Wire := []

private def s6Step111EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step111EntryGvAfter : Arena := s6Step111EntryFBefore

private def s6Step111EntryGvFresh : List Wire := []

private def s6Step111ExitFExtra : List Wire := [468, 907]

private def s6Step111ExitFvExtra : List Wire := [789]

private def s6Step111ExitGExtra : List Wire := [212, 868]

private def s6Step111ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,212),(213,468),(469,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step111ExitGvExtra : List Wire := [803]

private def s6Step111Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step111Add0Work : List Wire := [813, 879, 865, 796, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step111Add0_bounded : s6Step111Add0Work.toFinset⊆arenaWires := by
  have h : s6Step111Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step111Add0During : Arena := ⟨s6Step111Add0Arena.live∪s6Step111Add0Work.toFinset,Finset.union_subset s6Step111Add0Arena.bounded s6Step111Add0_bounded⟩

private def s6Step111Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step111Add1Work : List Wire := [813, 879, 865, 796, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step111Add1_bounded : s6Step111Add1Work.toFinset⊆arenaWires := by
  have h : s6Step111Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step111Add1During : Arena := ⟨s6Step111Add1Arena.live∪s6Step111Add1Work.toFinset,Finset.union_subset s6Step111Add1Arena.bounded s6Step111Add1_bounded⟩

private def s6Step111F4FlagArena : Arena := ⟨s6Step111HeadFvAfter.live∪{882},Finset.union_subset s6Step111HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step111F4Plan : HmrHybridF4Plan := ⟨s6Step111F4FlagArena,[882],s6Step111Add0Arena,[864],s6Step111Add0During,s6Step111Add0Work,s6Step111Add1During,s6Step111Add1Work⟩

private def s6Step111HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 907],795⟩

private def s6Step111HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789],776⟩

private def s6Step111HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 868],777⟩

private def s6Step111HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 803],775⟩

private def s6Step111FrontHead : WindowBank := ⟨s6Step111HeadFOut,s6Step111HeadGOut,s6Step111HeadFvOut,s6Step111HeadGvOut⟩

private def s6Step111EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468],795⟩

private def s6Step111EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818],776⟩

private def s6Step111EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212],777⟩

private def s6Step111EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805],775⟩

private def s6Step111FrontPair : WindowBank := ⟨s6Step111EntryFOut,s6Step111EntryGOut,s6Step111EntryFvOut,s6Step111EntryGvOut⟩

private def s6Step111FrontSigmaArena : Arena := ⟨s6Step111EntryGvAfter.live∪{823},Finset.union_subset s6Step111EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step111HeadFFresh : List Wire := [907]

private def s6Step111HeadFvFresh : List Wire := [789]

private def s6Step111HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step111HeadGFresh : List Wire := [868]

private def s6Step111HeadGvFresh : List Wire := [803]

private def s6Step111FrontPlan : HmrSourceFront := ⟨s6Step111EntryGvAfter,s6Step111FrontPair,(growRow 795 s6Step111EntryFFresh ++ (growRow 777 s6Step111EntryGFresh ++ (growRow 776 s6Step111EntryFvFresh ++ (growRow 775 s6Step111EntryGvFresh ++ [])))),s6Step111FrontSigmaArena,[823],s6Step111HeadGBefore,[793],
  s6Step111HeadFvAfter,s6Step111FrontHead,(growRow 777 s6Step111HeadGFresh ++ (growRow 795 s6Step111HeadFFresh ++ (growRow 775 s6Step111HeadGvFresh ++ (growRow 776 s6Step111HeadFvFresh ++ [])))),s6Step111F4Plan,s6Step111CounterDuring,s6Step111CounterWork,s6Step111ExitGvAfter,s6Step111FrontOut,(shrinkRow 777 s6Step111ExitGExtra ++ (shrinkRow 795 s6Step111ExitFExtra ++ (shrinkRow 776 s6Step111ExitFvExtra ++ (shrinkRow 775 s6Step111ExitGvExtra ++ []))))⟩

private def s6Step111CompletePlan : HmrEarlyStepPlan := ⟨s6Step111FrontPlan,s6Step111EarlyControlArena,s6Step111EarlyControlPlan,s6Step111CompleteMoves⟩

private theorem s6Step111Complete_apart : List.Disjoint (s6Step111CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [823, 793, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] := by
  have nd : ((s6Step111CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[823, 793, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step111Complete_owned : (s6Step111CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step111EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step111EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step111CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,468),(469,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step111CompleteRelocationMove0Borrowed : Arena := ⟨s6Step111ExitGvAfter.live∪{212},Finset.union_subset s6Step111ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step111CompleteRelocationMove1Borrowed : Arena := ⟨s6Step111CompleteRelocationMove0After.live∪{468},Finset.union_subset s6Step111CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step111CompleteRelocation_move0_owned : 892∈s6Step111ExitGvAfter.live := by norm_num [s6Step111ExitGvAfter,arenaWires]

private theorem s6Step111CompleteRelocation_move0_reserve : s6Step111ExitGvAfter.reserve {212}=some s6Step111CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step111ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step111CompleteRelocation_move0_retire : s6Step111CompleteRelocationMove0Borrowed.retireSet {892}=s6Step111CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step111CompleteRelocationMove0Borrowed s6Step111CompleteRelocationMove0After {892}
  change s6Step111CompleteRelocationMove0After.live=(s6Step111ExitGvAfter.live∪{212})\{892}
  apply hmrArena_update_of_filter_check s6Step111ExitGvAfter s6Step111CompleteRelocationMove0After (fun q => ([(0,212),(213,468),(469,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,468),(469,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [212] [892] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step111CompleteRelocation_move1_owned : 880∈s6Step111CompleteRelocationMove0After.live := by norm_num [s6Step111CompleteRelocationMove0After,arenaWires]

private theorem s6Step111CompleteRelocation_move1_reserve : s6Step111CompleteRelocationMove0After.reserve {468}=some s6Step111CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step111CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step111CompleteRelocation_move1_retire : s6Step111CompleteRelocationMove1Borrowed.retireSet {880}=s6Step111EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step111CompleteRelocationMove1Borrowed s6Step111EarlyControlArena {880}
  change s6Step111EarlyControlArena.live=(s6Step111CompleteRelocationMove0After.live∪{468})\{880}
  apply hmrArena_update_of_filter_check s6Step111CompleteRelocationMove0After s6Step111EarlyControlArena (fun q => ([(0,468),(469,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) [468] [880] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step111CompleteRelocation_checked : s6Step111ExitGvAfter.checkRepack [(892,212),(880,468)]=some s6Step111EarlyControlArena := by
  have tail2 : s6Step111EarlyControlArena.checkRepack []=some s6Step111EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step111CompleteRelocationMove0After s6Step111CompleteRelocationMove1Borrowed s6Step111EarlyControlArena s6Step111EarlyControlArena 880 468 []
    s6Step111CompleteRelocation_move1_owned s6Step111CompleteRelocation_move1_reserve s6Step111CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step111ExitGvAfter s6Step111CompleteRelocationMove0Borrowed s6Step111CompleteRelocationMove0After s6Step111EarlyControlArena 892 212 [(880,468)]
    s6Step111CompleteRelocation_move0_owned s6Step111CompleteRelocation_move0_reserve s6Step111CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step111Complete_repack : s6Step111ExitGvAfter.checkRepack s6Step111CompleteMoves=some s6Step111EarlyControlArena := by
  simpa only [s6Step111CompleteMoves] using s6Step111CompleteRelocation_checked

private theorem s6Step111EarlyControl_branchOwned : ([793] : List Wire).toFinset⊆s6Step111EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step111EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step111EarlyControl_branch : compileHmrBranchRetirement s6Step111EarlyControlSigmaArena 793=some s6Step111EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step111EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step111EarlyControlSigmaArena s6Step111EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [793] rfl rfl
    decide +kernel

private theorem s6Step111EarlyControl_classEqualityBorrow : s6Step111EarlyControlPositiveArena.checkBorrow (([823, 868] : List Wire).length-1) s6Step111EarlyControlLog.classWork=some s6Step111EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step111EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step111EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step111EarlyControlEqualityArena,s6Step111EarlyControlPositiveArena,s6Step111EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step111EarlyControl_classEqualityOwned : ([823, 868] : List Wire).toFinset⊆s6Step111EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step111EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step111EarlyControl_classEquality : compileHmrEqualityLog s6Step111EarlyControlPositiveArena [823, 868] 0 s6Step111EarlyControlLog.classWork=some (s6Step111EarlyControlEqualityArena,s6Step111EarlyControlLog.classWork,s6Step111EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step111EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step111EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step111EarlyControl_classOwned : ([769, 907, 823] : List Wire).toFinset⊆s6Step111EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step111EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step111EarlyControl_positiveBorrow : s6Step111EarlyControlZeroArena.checkBorrow (1) s6Step111EarlyControlLog.positiveWork=some s6Step111EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step111EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step111EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step111EarlyControlZeroArena s6Step111EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step111EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step111EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step111EarlyControl_class : compileHmrSourceClassLog s6Step111EarlyControlZeroArena false 769 s6Step111EarlyControlZeroPlan.top 0 823 s6Step111EarlyControlLog.positiveWork s6Step111EarlyControlLog.classWork=some s6Step111EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step111EarlyControlClassPlan s6Step111EarlyControlZeroArena false 769 s6Step111EarlyControlZeroPlan.top 0 823
  constructor
  · decide +kernel
  · exact s6Step111EarlyControl_classOwned
  · exact s6Step111EarlyControl_positiveBorrow
  · exact s6Step111EarlyControl_classEquality

private theorem s6Step111EarlyControl_entryRecordOwned : ([793, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step111EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step111EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step111EarlyControl_entrySigmaOwned : ([823, 254] : List Wire).toFinset⊆s6Step111EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step111EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step111EarlyControl_fitBorrow : s6Step111EarlyControlFlagArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step111EarlyControlLog.recordFresh=some s6Step111EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step111EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step111EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step111EarlyControlFittedArena,s6Step111EarlyControlFlagArena,s6Step111EarlyControlLog,arenaWires]

private theorem s6Step111EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step111EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step111EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step111EarlyControl_fit : compileHmrRecordGrowLog s6Step111EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step111EarlyControlLog.recordFresh=some s6Step111EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step111EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step111EarlyControl_fitBorrow

private theorem s6Step111EarlyControl_flagsBorrow : s6Step111EarlyControlEqualityArena.checkBorrow (6) s6Step111EarlyControlLog.flagWork=some s6Step111EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step111EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step111EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step111EarlyControlFlagArena,s6Step111EarlyControlEqualityArena,s6Step111EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step111EarlyControl_flagsOwned : ([882, 253, 252, 251] : List Wire).toFinset⊆s6Step111EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step111EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step111EarlyControl_flags : compileHmrFlagsLog s6Step111EarlyControlClassPlan.equalityArena s6Step111EarlyControlClassPlan.equality.top 253 252 251 s6Step111EarlyControlLog.flagWork=some s6Step111EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step111EarlyControl_flagsOwned⟩
  · exact s6Step111EarlyControl_flagsBorrow

private theorem s6Step111EarlyControl_historyBorrow : s6Step111EarlyControlArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step111EarlyControlLog.recordFresh=some s6Step111EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step111EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step111EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step111EarlyControlHistoryArena,s6Step111EarlyControlArena,s6Step111EarlyControlLog,arenaWires]

private theorem s6Step111EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step111EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step111EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step111EarlyControl_history : compileHmrRecordGrowLog s6Step111EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step111EarlyControlLog.recordFresh=some s6Step111EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step111EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step111EarlyControl_historyBorrow

private theorem s6Step111EarlyControl_sigmaOwned : ([254, 823] : List Wire).toFinset⊆s6Step111EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step111EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step111EarlyControl_sigmaReleaseOwned : ([823] : List Wire).toFinset⊆s6Step111EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step111EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step111EarlyControl_sigmaRelease : s6Step111EarlyControlHistoryArena.release {823} (fun _ => false)=some s6Step111EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step111EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step111EarlyControlHistoryArena s6Step111EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(881,882),(883,891),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [823] rfl rfl
    decide +kernel

private theorem s6Step111EarlyControl_sigma : compileHmrSigmaDropLog s6Step111EarlyControlHistoryArena false 0 0 254 823 []=some s6Step111EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step111EarlyControl_sigmaOwned⟩
  · exact s6Step111EarlyControl_sigmaRelease

private theorem s6Step111EarlyControl_zeroBorrow : s6Step111EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step111EarlyControlLog.zeroWork=some s6Step111EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step111EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step111EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step111EarlyControlArena s6Step111EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step111EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step111EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step111EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step111EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step111EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step111EarlyControl_zero : compileHmrEqualityLog s6Step111EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step111EarlyControlLog.zeroWork=some (s6Step111EarlyControlZeroArena,s6Step111EarlyControlLog.zeroWork,s6Step111EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step111EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step111EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step111EarlyControl_logged : s6Step111EarlyControlPlan.Logged s6Step111EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 823 254 253 252 251 793 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step111EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step111EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step111EarlyControl_zero
  · exact s6Step111EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step111EarlyControl_flags
  · exact s6Step111EarlyControl_fit
  · exact s6Step111EarlyControl_history
  · exact s6Step111EarlyControl_sigma
  · exact s6Step111EarlyControl_branch

private theorem s6Step111EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step111EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 823 254 253 252 251 793 37 s6Step111EarlyControlLog=some s6Step111EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step111EarlyControlPlan s6Step111EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 823 254 253 252 251 793 37 s6Step111EarlyControl_logged

private def s6Step111EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468],795⟩

private def s6Step111EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818],776⟩

private def s6Step111EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212],777⟩

private def s6Step111EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805],775⟩

private def s6Step111FrontBank : WindowBank := ⟨s6Step111EntryFRow,s6Step111EntryGRow,s6Step111EntryFvRow,s6Step111EntryGvRow⟩

private def s6Step111Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 907, 795]

private def s6Step111Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 868, 777]

private def s6Step111Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 776]

private def s6Step111Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 803, 775]

private theorem s6Step111Counter_apart : Disjoint s6Step111HeadFvAfter.live s6Step111CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step111HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step111Counter_borrowed : s6Step111HeadFvAfter.checkBorrow 4 s6Step111CounterWork=some s6Step111CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step111HeadFvAfter s6Step111CounterDuring s6Step111CounterWork.toFinset s6Step111Counter_bounded s6Step111Counter_apart rfl

private theorem s6Step111Counter_owned : (823::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step111HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step111HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step111Counter_checked : compileHmrCounterStepLog s6Step111HeadFvAfter true 823 [774, 773, 772, 771, 770, 769] s6Step111CounterWork=some s6Step111CounterDuring := by
  have owned : ∀q∈823::[774, 773, 772, 771, 770, 769],q∈s6Step111HeadFvAfter.live := fun q hq => s6Step111Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step111Counter_borrowed

private def s6Step111EntryFAfter : Arena := s6Step111EntryFBefore

private theorem s6Step111EntryBank_incomingDistinct : ([s6Step111EntryFRow,s6Step111EntryGRow,s6Step111EntryFvRow,s6Step111EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step111EntryF_Incoming : rowsOwned s6Step111EntryFBefore [s6Step111EntryFRow,s6Step111EntryGRow,s6Step111EntryFvRow,s6Step111EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step111EntryFRow,s6Step111EntryGRow,s6Step111EntryFvRow,s6Step111EntryGvRow] 0 s6Step111EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step111EntryFBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step111EntryBank_outgoingOwned : rowsOwned s6Step111EntryGvAfter [s6Step111EntryFOut,s6Step111EntryGOut,s6Step111EntryFvOut,s6Step111EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step111EntryGvAfter (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step111EntryF_Outgoing : rowsOwned s6Step111EntryGvAfter [s6Step111EntryFOut,s6Step111EntryGOut,s6Step111EntryFvOut,s6Step111EntryGvOut] :=
  hmrRows_owned_drop s6Step111EntryGvAfter [s6Step111EntryFOut,s6Step111EntryGOut,s6Step111EntryFvOut,s6Step111EntryGvOut] 0 s6Step111EntryBank_outgoingOwned

private theorem s6Step111EntryF_distinct : (s6Step111EntryFRow.sign::s6Step111EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step111EntryF_owned : (s6Step111EntryFRow.sign::s6Step111EntryFRow.payload).toFinset⊆s6Step111EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step111EntryFBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step111EntryF_reserved : s6Step111EntryFBefore.reserve s6Step111EntryFFresh.toFinset=some s6Step111EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step111EntryFFresh,arenaWires]
  · norm_num [s6Step111EntryFBefore,s6Step111EntryFFresh,arenaWires]
  · simp only [s6Step111EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step111EntryF_checked : planRowResizeLog s6Step111EntryFBefore s6Step111EntryFRow 213 s6Step111EntryFFresh=
    some (s6Step111EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468],795⟩,growRow 795 s6Step111EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step111EntryFBefore s6Step111EntryFAfter s6Step111EntryFRow 213 s6Step111EntryFFresh
    s6Step111EntryF_distinct s6Step111EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step111EntryF_reserved
  have rowEq : WindowRow.mk (s6Step111EntryFRow.payload++s6Step111EntryFFresh) s6Step111EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step111EntryFvAfter : Arena := s6Step111EntryFBefore

private def s6Step111EntryFvBefore : Arena := s6Step111EntryFBefore

private theorem s6Step111EntryFv_Incoming : rowsOwned s6Step111EntryFvBefore [s6Step111EntryFvRow,s6Step111EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step111EntryFRow,s6Step111EntryGRow,s6Step111EntryFvRow,s6Step111EntryGvRow] 2 s6Step111EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step111EntryFvBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step111EntryFv_Outgoing : rowsOwned s6Step111EntryGvAfter [s6Step111EntryFvOut,s6Step111EntryGvOut] :=
  hmrRows_owned_drop s6Step111EntryGvAfter [s6Step111EntryFOut,s6Step111EntryGOut,s6Step111EntryFvOut,s6Step111EntryGvOut] 2 s6Step111EntryBank_outgoingOwned

private theorem s6Step111EntryFv_distinct : (s6Step111EntryFvRow.sign::s6Step111EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step111EntryFv_owned : (s6Step111EntryFvRow.sign::s6Step111EntryFvRow.payload).toFinset⊆s6Step111EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step111EntryFvBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step111EntryFv_reserved : s6Step111EntryFvBefore.reserve s6Step111EntryFvFresh.toFinset=some s6Step111EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step111EntryFvFresh,arenaWires]
  · norm_num [s6Step111EntryFvBefore,s6Step111EntryFBefore,s6Step111EntryFvFresh,arenaWires]
  · simp only [s6Step111EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step111EntryFv_checked : planRowResizeLog s6Step111EntryFvBefore s6Step111EntryFvRow 69 s6Step111EntryFvFresh=
    some (s6Step111EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818],776⟩,growRow 776 s6Step111EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step111EntryFvBefore s6Step111EntryFvAfter s6Step111EntryFvRow 69 s6Step111EntryFvFresh
    s6Step111EntryFv_distinct s6Step111EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step111EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step111EntryFvRow.payload++s6Step111EntryFvFresh) s6Step111EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step111EntryGAfter : Arena := s6Step111EntryFBefore

private def s6Step111EntryGBefore : Arena := s6Step111EntryFBefore

private theorem s6Step111EntryG_Incoming : rowsOwned s6Step111EntryGBefore [s6Step111EntryGRow,s6Step111EntryFvRow,s6Step111EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step111EntryFRow,s6Step111EntryGRow,s6Step111EntryFvRow,s6Step111EntryGvRow] 1 s6Step111EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step111EntryGBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step111EntryG_Outgoing : rowsOwned s6Step111EntryGvAfter [s6Step111EntryGOut,s6Step111EntryFvOut,s6Step111EntryGvOut] :=
  hmrRows_owned_drop s6Step111EntryGvAfter [s6Step111EntryFOut,s6Step111EntryGOut,s6Step111EntryFvOut,s6Step111EntryGvOut] 1 s6Step111EntryBank_outgoingOwned

private theorem s6Step111EntryG_distinct : (s6Step111EntryGRow.sign::s6Step111EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step111EntryG_owned : (s6Step111EntryGRow.sign::s6Step111EntryGRow.payload).toFinset⊆s6Step111EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step111EntryGBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step111EntryG_reserved : s6Step111EntryGBefore.reserve s6Step111EntryGFresh.toFinset=some s6Step111EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step111EntryGFresh,arenaWires]
  · norm_num [s6Step111EntryGBefore,s6Step111EntryFBefore,s6Step111EntryGFresh,arenaWires]
  · simp only [s6Step111EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step111EntryG_checked : planRowResizeLog s6Step111EntryGBefore s6Step111EntryGRow 213 s6Step111EntryGFresh=
    some (s6Step111EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212],777⟩,growRow 777 s6Step111EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step111EntryGBefore s6Step111EntryGAfter s6Step111EntryGRow 213 s6Step111EntryGFresh
    s6Step111EntryG_distinct s6Step111EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step111EntryG_reserved
  have rowEq : WindowRow.mk (s6Step111EntryGRow.payload++s6Step111EntryGFresh) s6Step111EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step111EntryGvBefore : Arena := s6Step111EntryFBefore

private theorem s6Step111EntryGv_Incoming : rowsOwned s6Step111EntryGvBefore [s6Step111EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step111EntryFRow,s6Step111EntryGRow,s6Step111EntryFvRow,s6Step111EntryGvRow] 3 s6Step111EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step111EntryGvBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step111EntryGv_Outgoing : rowsOwned s6Step111EntryGvAfter [s6Step111EntryGvOut] :=
  hmrRows_owned_drop s6Step111EntryGvAfter [s6Step111EntryFOut,s6Step111EntryGOut,s6Step111EntryFvOut,s6Step111EntryGvOut] 3 s6Step111EntryBank_outgoingOwned

private theorem s6Step111EntryGv_distinct : (s6Step111EntryGvRow.sign::s6Step111EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step111EntryGv_owned : (s6Step111EntryGvRow.sign::s6Step111EntryGvRow.payload).toFinset⊆s6Step111EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step111EntryGvBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step111EntryGv_reserved : s6Step111EntryGvBefore.reserve s6Step111EntryGvFresh.toFinset=some s6Step111EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step111EntryGvFresh,arenaWires]
  · norm_num [s6Step111EntryGvBefore,s6Step111EntryFBefore,s6Step111EntryGvFresh,arenaWires]
  · simp only [s6Step111EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step111EntryGv_checked : planRowResizeLog s6Step111EntryGvBefore s6Step111EntryGvRow 69 s6Step111EntryGvFresh=
    some (s6Step111EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805],775⟩,growRow 775 s6Step111EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step111EntryGvBefore s6Step111EntryGvAfter s6Step111EntryGvRow 69 s6Step111EntryGvFresh
    s6Step111EntryGv_distinct s6Step111EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step111EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step111EntryGvRow.payload++s6Step111EntryGvFresh) s6Step111EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step111EntryBank_rows : planWindowRowsLog s6Step111EntryFBefore [(s6Step111EntryFRow,213),(s6Step111EntryGRow,213),(s6Step111EntryFvRow,69),(s6Step111EntryGvRow,69)] [s6Step111EntryFFresh,s6Step111EntryGFresh,s6Step111EntryFvFresh,s6Step111EntryGvFresh]=
    some (s6Step111EntryGvAfter,[s6Step111EntryFOut,s6Step111EntryGOut,s6Step111EntryFvOut,s6Step111EntryGvOut],(growRow 795 s6Step111EntryFFresh ++ (growRow 777 s6Step111EntryGFresh ++ (growRow 776 s6Step111EntryFvFresh ++ (growRow 775 s6Step111EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step111EntryGvAfter [] []=some (s6Step111EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step111EntryGvBefore s6Step111EntryGvAfter s6Step111EntryGvAfter
    s6Step111EntryGvRow s6Step111EntryGvOut 69 s6Step111EntryGvFresh [] [] []
    (growRow 775 s6Step111EntryGvFresh) ([]) s6Step111EntryGv_Incoming s6Step111EntryGv_checked h4 s6Step111EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step111EntryFvBefore s6Step111EntryFvAfter s6Step111EntryGvAfter
    s6Step111EntryFvRow s6Step111EntryFvOut 69 s6Step111EntryFvFresh [(s6Step111EntryGvRow,69)] [s6Step111EntryGvFresh] [s6Step111EntryGvOut]
    (growRow 776 s6Step111EntryFvFresh) ((growRow 775 s6Step111EntryGvFresh ++ [])) s6Step111EntryFv_Incoming s6Step111EntryFv_checked h3 s6Step111EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step111EntryGBefore s6Step111EntryGAfter s6Step111EntryGvAfter
    s6Step111EntryGRow s6Step111EntryGOut 213 s6Step111EntryGFresh [(s6Step111EntryFvRow,69),(s6Step111EntryGvRow,69)] [s6Step111EntryFvFresh,s6Step111EntryGvFresh] [s6Step111EntryFvOut,s6Step111EntryGvOut]
    (growRow 777 s6Step111EntryGFresh) ((growRow 776 s6Step111EntryFvFresh ++ (growRow 775 s6Step111EntryGvFresh ++ []))) s6Step111EntryG_Incoming s6Step111EntryG_checked h2 s6Step111EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step111EntryFBefore s6Step111EntryFAfter s6Step111EntryGvAfter
    s6Step111EntryFRow s6Step111EntryFOut 213 s6Step111EntryFFresh [(s6Step111EntryGRow,213),(s6Step111EntryFvRow,69),(s6Step111EntryGvRow,69)] [s6Step111EntryGFresh,s6Step111EntryFvFresh,s6Step111EntryGvFresh] [s6Step111EntryGOut,s6Step111EntryFvOut,s6Step111EntryGvOut]
    (growRow 795 s6Step111EntryFFresh) ((growRow 777 s6Step111EntryGFresh ++ (growRow 776 s6Step111EntryFvFresh ++ (growRow 775 s6Step111EntryGvFresh ++ [])))) s6Step111EntryF_Incoming s6Step111EntryF_checked h1 s6Step111EntryF_Outgoing
  exact h0

private theorem s6Step111EntryBank_checked : compileHmrBankResizeLog .entry s6Step111EntryFBefore ⟨s6Step111EntryFRow,s6Step111EntryGRow,s6Step111EntryFvRow,s6Step111EntryGvRow⟩ ⟨213,213,69,69⟩ [s6Step111EntryFFresh,s6Step111EntryGFresh,s6Step111EntryFvFresh,s6Step111EntryGvFresh]=
    some (s6Step111EntryGvAfter,⟨s6Step111EntryFOut,s6Step111EntryGOut,s6Step111EntryFvOut,s6Step111EntryGvOut⟩,(growRow 795 s6Step111EntryFFresh ++ (growRow 777 s6Step111EntryGFresh ++ (growRow 776 s6Step111EntryFvFresh ++ (growRow 775 s6Step111EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step111EntryBank_rows]
  rfl

private def s6Step111ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,212),(213,468),(469,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step111ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,212),(213,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step111ExitFBefore : Arena := s6Step111ExitGAfter

private def s6Step111ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 907],795⟩

private def s6Step111ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789],776⟩

private def s6Step111ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 868],777⟩

private def s6Step111ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 803],775⟩

private theorem s6Step111ExitBank_incomingDistinct : ([s6Step111ExitGRow,s6Step111ExitFRow,s6Step111ExitFvRow,s6Step111ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step111ExitF_Incoming : rowsOwned s6Step111ExitFBefore [s6Step111ExitFRow,s6Step111ExitFvRow,s6Step111ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step111ExitGRow,s6Step111ExitFRow,s6Step111ExitFvRow,s6Step111ExitGvRow] 1 s6Step111ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step111ExitFBefore (fun q => ([(0,212),(213,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step111ExitBank_outgoingOwned : rowsOwned s6Step111ExitGvAfter [s6Step111ExitGOut,s6Step111ExitFOut,s6Step111ExitFvOut,s6Step111ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step111ExitGvAfter (fun q => ([(0,212),(213,468),(469,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step111ExitF_Outgoing : rowsOwned s6Step111ExitGvAfter [s6Step111ExitFOut,s6Step111ExitFvOut,s6Step111ExitGvOut] :=
  hmrRows_owned_drop s6Step111ExitGvAfter [s6Step111ExitGOut,s6Step111ExitFOut,s6Step111ExitFvOut,s6Step111ExitGvOut] 1 s6Step111ExitBank_outgoingOwned

private theorem s6Step111ExitF_distinct : (s6Step111ExitFRow.sign::s6Step111ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step111ExitF_owned : (s6Step111ExitFRow.sign::s6Step111ExitFRow.payload).toFinset⊆s6Step111ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step111ExitFBefore (fun q => ([(0,212),(213,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step111ExitF_retired : s6Step111ExitFBefore.retireSet s6Step111ExitFExtra.toFinset=s6Step111ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step111ExitFBefore s6Step111ExitFAfter s6Step111ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step111ExitFBefore s6Step111ExitFAfter (fun q => ([(0,212),(213,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,212),(213,468),(469,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step111ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step111ExitF_checked : planRowResizeLog s6Step111ExitFBefore s6Step111ExitFRow 212 []=
    some (s6Step111ExitFAfter,s6Step111ExitFOut,shrinkRow 795 s6Step111ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step111ExitFBefore s6Step111ExitFRow 212 s6Step111ExitF_distinct s6Step111ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step111ExitFRow.payload.take 212) s6Step111ExitFRow.sign=s6Step111ExitFOut := by decide +kernel
  have hi : s6Step111ExitFRow.payload.drop 212=s6Step111ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step111ExitF_retired] at result
  exact result

private def s6Step111ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,212),(213,468),(469,782),(783,787),(788,789),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step111ExitFvBefore : Arena := s6Step111ExitFAfter

private theorem s6Step111ExitFv_Incoming : rowsOwned s6Step111ExitFvBefore [s6Step111ExitFvRow,s6Step111ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step111ExitGRow,s6Step111ExitFRow,s6Step111ExitFvRow,s6Step111ExitGvRow] 2 s6Step111ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step111ExitFvBefore (fun q => ([(0,212),(213,468),(469,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step111ExitFv_Outgoing : rowsOwned s6Step111ExitGvAfter [s6Step111ExitFvOut,s6Step111ExitGvOut] :=
  hmrRows_owned_drop s6Step111ExitGvAfter [s6Step111ExitGOut,s6Step111ExitFOut,s6Step111ExitFvOut,s6Step111ExitGvOut] 2 s6Step111ExitBank_outgoingOwned

private theorem s6Step111ExitFv_distinct : (s6Step111ExitFvRow.sign::s6Step111ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step111ExitFv_owned : (s6Step111ExitFvRow.sign::s6Step111ExitFvRow.payload).toFinset⊆s6Step111ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step111ExitFvBefore (fun q => ([(0,212),(213,468),(469,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step111ExitFv_retired : s6Step111ExitFvBefore.retireSet s6Step111ExitFvExtra.toFinset=s6Step111ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step111ExitFvBefore s6Step111ExitFvAfter s6Step111ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step111ExitFvBefore s6Step111ExitFvAfter (fun q => ([(0,212),(213,468),(469,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,212),(213,468),(469,782),(783,787),(788,789),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step111ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step111ExitFv_checked : planRowResizeLog s6Step111ExitFvBefore s6Step111ExitFvRow 69 []=
    some (s6Step111ExitFvAfter,s6Step111ExitFvOut,shrinkRow 776 s6Step111ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step111ExitFvBefore s6Step111ExitFvRow 69 s6Step111ExitFv_distinct s6Step111ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step111ExitFvRow.payload.take 69) s6Step111ExitFvRow.sign=s6Step111ExitFvOut := by decide +kernel
  have hi : s6Step111ExitFvRow.payload.drop 69=s6Step111ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step111ExitFv_retired] at result
  exact result

private def s6Step111ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step111ExitG_Incoming : rowsOwned s6Step111ExitGBefore [s6Step111ExitGRow,s6Step111ExitFRow,s6Step111ExitFvRow,s6Step111ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step111ExitGRow,s6Step111ExitFRow,s6Step111ExitFvRow,s6Step111ExitGvRow] 0 s6Step111ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step111ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step111ExitG_Outgoing : rowsOwned s6Step111ExitGvAfter [s6Step111ExitGOut,s6Step111ExitFOut,s6Step111ExitFvOut,s6Step111ExitGvOut] :=
  hmrRows_owned_drop s6Step111ExitGvAfter [s6Step111ExitGOut,s6Step111ExitFOut,s6Step111ExitFvOut,s6Step111ExitGvOut] 0 s6Step111ExitBank_outgoingOwned

private theorem s6Step111ExitG_distinct : (s6Step111ExitGRow.sign::s6Step111ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step111ExitG_owned : (s6Step111ExitGRow.sign::s6Step111ExitGRow.payload).toFinset⊆s6Step111ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step111ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step111ExitG_retired : s6Step111ExitGBefore.retireSet s6Step111ExitGExtra.toFinset=s6Step111ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step111ExitGBefore s6Step111ExitGAfter s6Step111ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step111ExitGBefore s6Step111ExitGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,212),(213,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step111ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step111ExitG_checked : planRowResizeLog s6Step111ExitGBefore s6Step111ExitGRow 212 []=
    some (s6Step111ExitGAfter,s6Step111ExitGOut,shrinkRow 777 s6Step111ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step111ExitGBefore s6Step111ExitGRow 212 s6Step111ExitG_distinct s6Step111ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step111ExitGRow.payload.take 212) s6Step111ExitGRow.sign=s6Step111ExitGOut := by decide +kernel
  have hi : s6Step111ExitGRow.payload.drop 212=s6Step111ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step111ExitG_retired] at result
  exact result

private def s6Step111ExitGvBefore : Arena := s6Step111ExitFvAfter

private theorem s6Step111ExitGv_Incoming : rowsOwned s6Step111ExitGvBefore [s6Step111ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step111ExitGRow,s6Step111ExitFRow,s6Step111ExitFvRow,s6Step111ExitGvRow] 3 s6Step111ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step111ExitGvBefore (fun q => ([(0,212),(213,468),(469,782),(783,787),(788,789),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step111ExitGv_Outgoing : rowsOwned s6Step111ExitGvAfter [s6Step111ExitGvOut] :=
  hmrRows_owned_drop s6Step111ExitGvAfter [s6Step111ExitGOut,s6Step111ExitFOut,s6Step111ExitFvOut,s6Step111ExitGvOut] 3 s6Step111ExitBank_outgoingOwned

private theorem s6Step111ExitGv_distinct : (s6Step111ExitGvRow.sign::s6Step111ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step111ExitGv_owned : (s6Step111ExitGvRow.sign::s6Step111ExitGvRow.payload).toFinset⊆s6Step111ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step111ExitGvBefore (fun q => ([(0,212),(213,468),(469,782),(783,787),(788,789),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step111ExitGv_retired : s6Step111ExitGvBefore.retireSet s6Step111ExitGvExtra.toFinset=s6Step111ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step111ExitGvBefore s6Step111ExitGvAfter s6Step111ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step111ExitGvBefore s6Step111ExitGvAfter (fun q => ([(0,212),(213,468),(469,782),(783,787),(788,789),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,212),(213,468),(469,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step111ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step111ExitGv_checked : planRowResizeLog s6Step111ExitGvBefore s6Step111ExitGvRow 69 []=
    some (s6Step111ExitGvAfter,s6Step111ExitGvOut,shrinkRow 775 s6Step111ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step111ExitGvBefore s6Step111ExitGvRow 69 s6Step111ExitGv_distinct s6Step111ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step111ExitGvRow.payload.take 69) s6Step111ExitGvRow.sign=s6Step111ExitGvOut := by decide +kernel
  have hi : s6Step111ExitGvRow.payload.drop 69=s6Step111ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step111ExitGv_retired] at result
  exact result

private theorem s6Step111ExitBank_rows : planWindowRowsLog s6Step111ExitGBefore [(s6Step111ExitGRow,212),(s6Step111ExitFRow,212),(s6Step111ExitFvRow,69),(s6Step111ExitGvRow,69)] [[],[],[],[]]=
    some (s6Step111ExitGvAfter,[s6Step111ExitGOut,s6Step111ExitFOut,s6Step111ExitFvOut,s6Step111ExitGvOut],(shrinkRow 777 s6Step111ExitGExtra ++ (shrinkRow 795 s6Step111ExitFExtra ++ (shrinkRow 776 s6Step111ExitFvExtra ++ (shrinkRow 775 s6Step111ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step111ExitGvAfter [] []=some (s6Step111ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step111ExitGvBefore s6Step111ExitGvAfter s6Step111ExitGvAfter
    s6Step111ExitGvRow s6Step111ExitGvOut 69 [] [] [] []
    (shrinkRow 775 s6Step111ExitGvExtra) ([]) s6Step111ExitGv_Incoming s6Step111ExitGv_checked h4 s6Step111ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step111ExitFvBefore s6Step111ExitFvAfter s6Step111ExitGvAfter
    s6Step111ExitFvRow s6Step111ExitFvOut 69 [] [(s6Step111ExitGvRow,69)] [[]] [s6Step111ExitGvOut]
    (shrinkRow 776 s6Step111ExitFvExtra) ((shrinkRow 775 s6Step111ExitGvExtra ++ [])) s6Step111ExitFv_Incoming s6Step111ExitFv_checked h3 s6Step111ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step111ExitFBefore s6Step111ExitFAfter s6Step111ExitGvAfter
    s6Step111ExitFRow s6Step111ExitFOut 212 [] [(s6Step111ExitFvRow,69),(s6Step111ExitGvRow,69)] [[],[]] [s6Step111ExitFvOut,s6Step111ExitGvOut]
    (shrinkRow 795 s6Step111ExitFExtra) ((shrinkRow 776 s6Step111ExitFvExtra ++ (shrinkRow 775 s6Step111ExitGvExtra ++ []))) s6Step111ExitF_Incoming s6Step111ExitF_checked h2 s6Step111ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step111ExitGBefore s6Step111ExitGAfter s6Step111ExitGvAfter
    s6Step111ExitGRow s6Step111ExitGOut 212 [] [(s6Step111ExitFRow,212),(s6Step111ExitFvRow,69),(s6Step111ExitGvRow,69)] [[],[],[]] [s6Step111ExitFOut,s6Step111ExitFvOut,s6Step111ExitGvOut]
    (shrinkRow 777 s6Step111ExitGExtra) ((shrinkRow 795 s6Step111ExitFExtra ++ (shrinkRow 776 s6Step111ExitFvExtra ++ (shrinkRow 775 s6Step111ExitGvExtra ++ [])))) s6Step111ExitG_Incoming s6Step111ExitG_checked h1 s6Step111ExitG_Outgoing
  exact h0

private theorem s6Step111ExitBank_checked : compileHmrBankResizeLog .exit s6Step111ExitGBefore ⟨s6Step111ExitFRow,s6Step111ExitGRow,s6Step111ExitFvRow,s6Step111ExitGvRow⟩ ⟨212,212,69,69⟩ [[],[],[],[]]=
    some (s6Step111ExitGvAfter,⟨s6Step111ExitFOut,s6Step111ExitGOut,s6Step111ExitFvOut,s6Step111ExitGvOut⟩,(shrinkRow 777 s6Step111ExitGExtra ++ (shrinkRow 795 s6Step111ExitFExtra ++ (shrinkRow 776 s6Step111ExitFvExtra ++ (shrinkRow 775 s6Step111ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step111ExitBank_rows]
  rfl

private theorem s6Step111Add0_apart : Disjoint s6Step111Add0Arena.live s6Step111Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step111Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step111Add0_card : s6Step111Add0Arena.live.card=875 := by
  decide +kernel

private theorem s6Step111Add0_borrowed : s6Step111Add0Arena.checkBorrow (hmrHybridCount s6Step111Add0Arena s6Step111Add0B.length) s6Step111Add0Work=some s6Step111Add0During := by
  have len : s6Step111Add0Work.length=hmrHybridCount s6Step111Add0Arena s6Step111Add0B.length := by
    rw [hmrHybridCount,s6Step111Add0_card]
    decide +kernel
  have nd : s6Step111Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step111Add0Arena s6Step111Add0During s6Step111Add0Work.toFinset s6Step111Add0_bounded s6Step111Add0_apart rfl

private theorem s6Step111Add0_distinct : (882::793::864::(s6Step111Add0A++s6Step111Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step111Add0_owned : (882::793::864::(s6Step111Add0A++s6Step111Add0B)).toFinset⊆s6Step111Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step111Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step111Add0_checked : compileHmrHybridCinLog s6Step111Add0Arena 793 882 864 s6Step111Add0A s6Step111Add0B s6Step111Add0Work=some s6Step111Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step111Add0Arena s6Step111Add0During 793 882 864 s6Step111Add0A s6Step111Add0B s6Step111Add0Work
    (by decide +kernel) (by decide +kernel) s6Step111Add0_distinct
    (fun q hq => s6Step111Add0_owned (List.mem_toFinset.mpr hq)) s6Step111Add0_borrowed

private theorem s6Step111Add1_apart : Disjoint s6Step111Add1Arena.live s6Step111Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step111Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step111Add1_card : s6Step111Add1Arena.live.card=875 := by
  decide +kernel

private theorem s6Step111Add1_borrowed : s6Step111Add1Arena.checkBorrow (hmrHybridCount s6Step111Add1Arena s6Step111Add1B.length) s6Step111Add1Work=some s6Step111Add1During := by
  have len : s6Step111Add1Work.length=hmrHybridCount s6Step111Add1Arena s6Step111Add1B.length := by
    rw [hmrHybridCount,s6Step111Add1_card]
    decide +kernel
  have nd : s6Step111Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step111Add1Arena s6Step111Add1During s6Step111Add1Work.toFinset s6Step111Add1_bounded s6Step111Add1_apart rfl

private theorem s6Step111Add1_distinct : (882::793::864::(s6Step111Add1A++s6Step111Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step111Add1_owned : (882::793::864::(s6Step111Add1A++s6Step111Add1B)).toFinset⊆s6Step111Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step111Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step111Add1_checked : compileHmrHybridCinLog s6Step111Add1Arena 793 882 864 s6Step111Add1A s6Step111Add1B s6Step111Add1Work=some s6Step111Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step111Add1Arena s6Step111Add1During 793 882 864 s6Step111Add1A s6Step111Add1B s6Step111Add1Work
    (by decide +kernel) (by decide +kernel) s6Step111Add1_distinct
    (fun q hq => s6Step111Add1_owned (List.mem_toFinset.mpr hq)) s6Step111Add1_borrowed

private theorem s6Step111F4_apart : Disjoint (s6Step111Add0A++s6Step111Add0B).toFinset (s6Step111Add1A++s6Step111Add1B).toFinset := by
  have nd : ((s6Step111Add0A++s6Step111Add0B)++(s6Step111Add1A++s6Step111Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step111F4_carry : s6Step111F4FlagArena.checkBorrow 1 [864]=some s6Step111Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step111F4FlagArena,s6Step111HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step111F4FlagArena,s6Step111HeadFvAfter,s6Step111Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step111F4_distinct : (823::793::882::864::((s6Step111Add0A++s6Step111Add1A)++(s6Step111Add0B++s6Step111Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step111F4_flag : s6Step111HeadFvAfter.checkBorrow 1 [882]=some s6Step111F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step111HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step111F4_owned : (823::793::((s6Step111Add0A++s6Step111Add1A)++(s6Step111Add0B++s6Step111Add1B))).toFinset⊆s6Step111HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step111HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step111F4_checked : compileHmrHybridF4Log s6Step111HeadFvAfter 823 793 s6Step111Add0A s6Step111Add0B s6Step111Add1A s6Step111Add1B [882] [864] s6Step111Add0Work s6Step111Add1Work=some s6Step111F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step111HeadFvAfter s6Step111F4FlagArena s6Step111Add0Arena s6Step111Add0During s6Step111Add1During 823 793
    s6Step111Add0A s6Step111Add0B s6Step111Add1A s6Step111Add1B [882] [864] s6Step111Add0Work s6Step111Add1Work
    (fun q hq => s6Step111F4_owned (List.mem_toFinset.mpr hq)) s6Step111F4_flag s6Step111F4_carry
    s6Step111F4_distinct s6Step111F4_apart s6Step111Add0_checked s6Step111Add1_checked

private theorem s6Step111Front_branch : s6Step111FrontSigmaArena.checkBorrow 1 [793]=some s6Step111HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step111FrontSigmaArena,s6Step111EntryGvAfter,s6Step111EntryFBefore,arenaWires]
  · change s6Step111HeadGBefore.live=(s6Step111EntryGvAfter.live∪{823})∪{793}
    apply hmrArena_union_pair_of_filter_check s6Step111EntryGvAfter s6Step111HeadGBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 823 793 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step111Front_entry : HmrFrontEntryValid s6Step111EntryFBefore s6Step111FrontBank 213 69 ⟨212,212,69,69⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step111FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step111EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step111EntryFBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step111FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step111Front_sigma : s6Step111EntryGvAfter.checkBorrow 1 [823]=some s6Step111FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step111EntryGvAfter,s6Step111EntryFBefore,arenaWires]
  · rfl

private def s6Step111HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step111HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step111HeadFBefore : Arena := s6Step111HeadGAfter

private def s6Step111HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468],795⟩

private def s6Step111HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818],776⟩

private def s6Step111HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212],777⟩

private def s6Step111HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805],775⟩

private theorem s6Step111HeadBank_incomingDistinct : ([s6Step111HeadGRow,s6Step111HeadFRow,s6Step111HeadGvRow,s6Step111HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step111HeadF_Incoming : rowsOwned s6Step111HeadFBefore [s6Step111HeadFRow,s6Step111HeadGvRow,s6Step111HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step111HeadGRow,s6Step111HeadFRow,s6Step111HeadGvRow,s6Step111HeadFvRow] 1 s6Step111HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step111HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step111HeadBank_outgoingOwned : rowsOwned s6Step111HeadFvAfter [s6Step111HeadGOut,s6Step111HeadFOut,s6Step111HeadGvOut,s6Step111HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step111HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step111HeadF_Outgoing : rowsOwned s6Step111HeadFvAfter [s6Step111HeadFOut,s6Step111HeadGvOut,s6Step111HeadFvOut] :=
  hmrRows_owned_drop s6Step111HeadFvAfter [s6Step111HeadGOut,s6Step111HeadFOut,s6Step111HeadGvOut,s6Step111HeadFvOut] 1 s6Step111HeadBank_outgoingOwned

private theorem s6Step111HeadF_distinct : (s6Step111HeadFRow.sign::s6Step111HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step111HeadF_owned : (s6Step111HeadFRow.sign::s6Step111HeadFRow.payload).toFinset⊆s6Step111HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step111HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step111HeadF_reserved : s6Step111HeadFBefore.reserve s6Step111HeadFFresh.toFinset=some s6Step111HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step111HeadFFresh,arenaWires]
  · norm_num [s6Step111HeadFBefore,s6Step111HeadGAfter,s6Step111HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step111HeadFAfter,s6Step111HeadFBefore,s6Step111HeadGAfter,s6Step111HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step111HeadF_checked : planRowResizeLog s6Step111HeadFBefore s6Step111HeadFRow 214 s6Step111HeadFFresh=
    some (s6Step111HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 907],795⟩,growRow 795 s6Step111HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step111HeadFBefore s6Step111HeadFAfter s6Step111HeadFRow 214 s6Step111HeadFFresh
    s6Step111HeadF_distinct s6Step111HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step111HeadF_reserved
  have rowEq : WindowRow.mk (s6Step111HeadFRow.payload++s6Step111HeadFFresh) s6Step111HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 907],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step111HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step111HeadFvBefore : Arena := s6Step111HeadGvAfter

private theorem s6Step111HeadFv_Incoming : rowsOwned s6Step111HeadFvBefore [s6Step111HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step111HeadGRow,s6Step111HeadFRow,s6Step111HeadGvRow,s6Step111HeadFvRow] 3 s6Step111HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step111HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step111HeadFv_Outgoing : rowsOwned s6Step111HeadFvAfter [s6Step111HeadFvOut] :=
  hmrRows_owned_drop s6Step111HeadFvAfter [s6Step111HeadGOut,s6Step111HeadFOut,s6Step111HeadGvOut,s6Step111HeadFvOut] 3 s6Step111HeadBank_outgoingOwned

private theorem s6Step111HeadFv_distinct : (s6Step111HeadFvRow.sign::s6Step111HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step111HeadFv_owned : (s6Step111HeadFvRow.sign::s6Step111HeadFvRow.payload).toFinset⊆s6Step111HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step111HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step111HeadFv_reserved : s6Step111HeadFvBefore.reserve s6Step111HeadFvFresh.toFinset=some s6Step111HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step111HeadFvFresh,arenaWires]
  · norm_num [s6Step111HeadFvBefore,s6Step111HeadGvAfter,s6Step111HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step111HeadFvAfter,s6Step111HeadFvBefore,s6Step111HeadGvAfter,s6Step111HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step111HeadFv_checked : planRowResizeLog s6Step111HeadFvBefore s6Step111HeadFvRow 70 s6Step111HeadFvFresh=
    some (s6Step111HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789],776⟩,growRow 776 s6Step111HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step111HeadFvBefore s6Step111HeadFvAfter s6Step111HeadFvRow 70 s6Step111HeadFvFresh
    s6Step111HeadFv_distinct s6Step111HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step111HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step111HeadFvRow.payload++s6Step111HeadFvFresh) s6Step111HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step111HeadG_Incoming : rowsOwned s6Step111HeadGBefore [s6Step111HeadGRow,s6Step111HeadFRow,s6Step111HeadGvRow,s6Step111HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step111HeadGRow,s6Step111HeadFRow,s6Step111HeadGvRow,s6Step111HeadFvRow] 0 s6Step111HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step111HeadGBefore (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step111HeadG_Outgoing : rowsOwned s6Step111HeadFvAfter [s6Step111HeadGOut,s6Step111HeadFOut,s6Step111HeadGvOut,s6Step111HeadFvOut] :=
  hmrRows_owned_drop s6Step111HeadFvAfter [s6Step111HeadGOut,s6Step111HeadFOut,s6Step111HeadGvOut,s6Step111HeadFvOut] 0 s6Step111HeadBank_outgoingOwned

private theorem s6Step111HeadG_distinct : (s6Step111HeadGRow.sign::s6Step111HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step111HeadG_owned : (s6Step111HeadGRow.sign::s6Step111HeadGRow.payload).toFinset⊆s6Step111HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step111HeadGBefore (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step111HeadG_reserved : s6Step111HeadGBefore.reserve s6Step111HeadGFresh.toFinset=some s6Step111HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step111HeadGFresh,arenaWires]
  · norm_num [s6Step111HeadGBefore,s6Step111HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step111HeadGBefore s6Step111HeadGAfter (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step111HeadGFresh rfl rfl
    · norm_num [s6Step111HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step111HeadG_checked : planRowResizeLog s6Step111HeadGBefore s6Step111HeadGRow 214 s6Step111HeadGFresh=
    some (s6Step111HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 868],777⟩,growRow 777 s6Step111HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step111HeadGBefore s6Step111HeadGAfter s6Step111HeadGRow 214 s6Step111HeadGFresh
    s6Step111HeadG_distinct s6Step111HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step111HeadG_reserved
  have rowEq : WindowRow.mk (s6Step111HeadGRow.payload++s6Step111HeadGFresh) s6Step111HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 868],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step111HeadGvBefore : Arena := s6Step111HeadFAfter

private theorem s6Step111HeadGv_Incoming : rowsOwned s6Step111HeadGvBefore [s6Step111HeadGvRow,s6Step111HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step111HeadGRow,s6Step111HeadFRow,s6Step111HeadGvRow,s6Step111HeadFvRow] 2 s6Step111HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step111HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step111HeadGv_Outgoing : rowsOwned s6Step111HeadFvAfter [s6Step111HeadGvOut,s6Step111HeadFvOut] :=
  hmrRows_owned_drop s6Step111HeadFvAfter [s6Step111HeadGOut,s6Step111HeadFOut,s6Step111HeadGvOut,s6Step111HeadFvOut] 2 s6Step111HeadBank_outgoingOwned

private theorem s6Step111HeadGv_distinct : (s6Step111HeadGvRow.sign::s6Step111HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step111HeadGv_owned : (s6Step111HeadGvRow.sign::s6Step111HeadGvRow.payload).toFinset⊆s6Step111HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step111HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step111HeadGv_reserved : s6Step111HeadGvBefore.reserve s6Step111HeadGvFresh.toFinset=some s6Step111HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step111HeadGvFresh,arenaWires]
  · norm_num [s6Step111HeadGvBefore,s6Step111HeadFAfter,s6Step111HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step111HeadGvAfter,s6Step111HeadGvBefore,s6Step111HeadFAfter,s6Step111HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step111HeadGv_checked : planRowResizeLog s6Step111HeadGvBefore s6Step111HeadGvRow 70 s6Step111HeadGvFresh=
    some (s6Step111HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 803],775⟩,growRow 775 s6Step111HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step111HeadGvBefore s6Step111HeadGvAfter s6Step111HeadGvRow 70 s6Step111HeadGvFresh
    s6Step111HeadGv_distinct s6Step111HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step111HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step111HeadGvRow.payload++s6Step111HeadGvFresh) s6Step111HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 803],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step111HeadBank_rows : planWindowRowsLog s6Step111HeadGBefore [(s6Step111HeadGRow,214),(s6Step111HeadFRow,214),(s6Step111HeadGvRow,70),(s6Step111HeadFvRow,70)] [s6Step111HeadGFresh,s6Step111HeadFFresh,s6Step111HeadGvFresh,s6Step111HeadFvFresh]=
    some (s6Step111HeadFvAfter,[s6Step111HeadGOut,s6Step111HeadFOut,s6Step111HeadGvOut,s6Step111HeadFvOut],(growRow 777 s6Step111HeadGFresh ++ (growRow 795 s6Step111HeadFFresh ++ (growRow 775 s6Step111HeadGvFresh ++ (growRow 776 s6Step111HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step111HeadFvAfter [] []=some (s6Step111HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step111HeadFvBefore s6Step111HeadFvAfter s6Step111HeadFvAfter
    s6Step111HeadFvRow s6Step111HeadFvOut 70 s6Step111HeadFvFresh [] [] []
    (growRow 776 s6Step111HeadFvFresh) ([]) s6Step111HeadFv_Incoming s6Step111HeadFv_checked h4 s6Step111HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step111HeadGvBefore s6Step111HeadGvAfter s6Step111HeadFvAfter
    s6Step111HeadGvRow s6Step111HeadGvOut 70 s6Step111HeadGvFresh [(s6Step111HeadFvRow,70)] [s6Step111HeadFvFresh] [s6Step111HeadFvOut]
    (growRow 775 s6Step111HeadGvFresh) ((growRow 776 s6Step111HeadFvFresh ++ [])) s6Step111HeadGv_Incoming s6Step111HeadGv_checked h3 s6Step111HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step111HeadFBefore s6Step111HeadFAfter s6Step111HeadFvAfter
    s6Step111HeadFRow s6Step111HeadFOut 214 s6Step111HeadFFresh [(s6Step111HeadGvRow,70),(s6Step111HeadFvRow,70)] [s6Step111HeadGvFresh,s6Step111HeadFvFresh] [s6Step111HeadGvOut,s6Step111HeadFvOut]
    (growRow 795 s6Step111HeadFFresh) ((growRow 775 s6Step111HeadGvFresh ++ (growRow 776 s6Step111HeadFvFresh ++ []))) s6Step111HeadF_Incoming s6Step111HeadF_checked h2 s6Step111HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step111HeadGBefore s6Step111HeadGAfter s6Step111HeadFvAfter
    s6Step111HeadGRow s6Step111HeadGOut 214 s6Step111HeadGFresh [(s6Step111HeadFRow,214),(s6Step111HeadGvRow,70),(s6Step111HeadFvRow,70)] [s6Step111HeadFFresh,s6Step111HeadGvFresh,s6Step111HeadFvFresh] [s6Step111HeadFOut,s6Step111HeadGvOut,s6Step111HeadFvOut]
    (growRow 777 s6Step111HeadGFresh) ((growRow 795 s6Step111HeadFFresh ++ (growRow 775 s6Step111HeadGvFresh ++ (growRow 776 s6Step111HeadFvFresh ++ [])))) s6Step111HeadG_Incoming s6Step111HeadG_checked h1 s6Step111HeadG_Outgoing
  exact h0

private theorem s6Step111HeadBank_checked : compileHmrBankResizeLog .headroom s6Step111HeadGBefore ⟨s6Step111HeadFRow,s6Step111HeadGRow,s6Step111HeadFvRow,s6Step111HeadGvRow⟩ ⟨214,214,70,70⟩ [s6Step111HeadGFresh,s6Step111HeadFFresh,s6Step111HeadGvFresh,s6Step111HeadFvFresh]=
    some (s6Step111HeadFvAfter,⟨s6Step111HeadFOut,s6Step111HeadGOut,s6Step111HeadFvOut,s6Step111HeadGvOut⟩,(growRow 777 s6Step111HeadGFresh ++ (growRow 795 s6Step111HeadFFresh ++ (growRow 775 s6Step111HeadGvFresh ++ (growRow 776 s6Step111HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step111HeadBank_rows]
  rfl

private theorem s6Step111Front_checked : compileHmrSourceFrontLog s6Step111EntryFBefore s6Step111FrontBank 213 69 ⟨212,212,69,69⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step111FrontLog=some s6Step111FrontPlan := by
  have pairEq : s6Step111FrontPair=⟨s6Step111HeadFRow,s6Step111HeadGRow,s6Step111HeadFvRow,s6Step111HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step111FrontHead=⟨s6Step111ExitFRow,s6Step111ExitGRow,s6Step111ExitFvRow,s6Step111ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step111Add0A=s6Step111FrontHead.f.wires := by decide +kernel
  have gEq : s6Step111Add0B=s6Step111FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step111Add1A=s6Step111FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step111Add1B=s6Step111FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step111EntryFBefore s6Step111FrontBank 213 69 ⟨212,212,69,69⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step111FrontLog s6Step111FrontPlan
  · exact s6Step111Front_entry
  · exact s6Step111EntryBank_checked
  · exact s6Step111Front_sigma
  · rfl
  · exact s6Step111Front_branch
  · rfl
  · simpa only [s6Step111FrontPlan,pairEq] using s6Step111HeadBank_checked
  · simpa only [s6Step111FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step111F4_checked
  · exact s6Step111Counter_checked
  · rfl
  · simpa only [s6Step111FrontPlan,headEq] using s6Step111ExitBank_checked

private theorem s6Step111Complete_explicit_checked : compileHmrEarlyStepLog s6Step111EntryFBefore s6Step111FrontBank 213 69 ⟨212,212,69,69⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step111CompleteLog=some s6Step111CompletePlan := by
  let Q := s6Step111EarlyControlPlan
  have hq := s6Step111EarlyControl_plan_checked
  have fv1 : s6Step111CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step111CompleteOut.fv.payload[2]?.getD s6Step111CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step111CompleteOut.fv.payload[3]?.getD s6Step111CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step111CompleteOut.fv.payload[4]?.getD s6Step111CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step111EntryFBefore s6Step111EarlyControlArena s6Step111FrontBank 213 69 ⟨212,212,69,69⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step111CompleteLog s6Step111FrontPlan Q
    s6Step111Front_checked s6Step111Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step111Complete_owned s6Step111Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step111EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 823 s6Step111CompleteOut.fv.second (s6Step111CompleteOut.fv.payload[2]?.getD s6Step111CompleteOut.fv.sign) (s6Step111CompleteOut.fv.payload[3]?.getD s6Step111CompleteOut.fv.sign) (s6Step111CompleteOut.fv.payload[4]?.getD s6Step111CompleteOut.fv.sign) 793 37 s6Step111EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep111Arena : Arena := s6Step111EntryFBefore
def s6PrivateStep111Bank : WindowBank := s6Step111FrontBank
def s6PrivateStep111Spec : HmrSourceWalkStepLog := ⟨213,69,⟨212,212,69,69⟩,37,.early s6Step111CompleteLog⟩
def s6PrivateStep111Plan : HmrSourceStepPlan := .early s6Step111CompletePlan
theorem s6PrivateStep111_source : s6PrivateStep111Spec=s6ObservedLogs96[15] := rfl
theorem s6PrivateStep111_checked : compileHmrSourceStepLog s6PrivateStep111Arena s6PrivateStep111Bank
    s6PrivateStep111Spec.fgWidth s6PrivateStep111Spec.vWidth s6PrivateStep111Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]
    6 498 111 s6PrivateStep111Spec.need none s6PrivateStep111Spec.log=some s6PrivateStep111Plan := by
  change compileHmrSourceStepLog s6Step111EntryFBefore s6Step111FrontBank 213 69 ⟨212,212,69,69⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 6 498 111 37 none (.early s6Step111CompleteLog)=some (.early s6Step111CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 111<498)]
  rw [s6Step111Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
