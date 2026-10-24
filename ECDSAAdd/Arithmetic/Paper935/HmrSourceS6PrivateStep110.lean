import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep108
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

private def s6Step110CompleteMoves : List (Wire × Wire) := [(868,469)]

private def s6Step110EarlyControlLog : HmrEarlyControlLog := ⟨[868, 907, 803, 789, 882],[864],[813],[879, 865, 796, 891, 903, 791],[844]⟩

private def s6Step110FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [882], [], [890, 805]],[[864], [789], [907], [803]],[[], [], [], []]⟩,[793],[823],[813],[879],[865, 796, 891, 903, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[865, 796, 891, 903, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[813, 879, 865, 796]⟩

private def s6Step110CompleteLog : HmrEarlyStepLog := ⟨s6Step110FrontLog,s6Step110CompleteMoves,s6Step110EarlyControlLog⟩

private def s6Step110ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468],795⟩

private def s6Step110ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818],776⟩

private def s6Step110ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212],777⟩

private def s6Step110ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805],775⟩

private def s6Step110FrontOut : WindowBank := ⟨s6Step110ExitFOut,s6Step110ExitGOut,s6Step110ExitFvOut,s6Step110ExitGvOut⟩

private def s6Step110CompleteOut : WindowBank := s6Step110FrontOut.repacked s6Step110CompleteMoves

private def s6Step110EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step110EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step110EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step110EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step110EarlyControlPositiveArena,[864],s6Step110EarlyControlEqualityArena,[813],⟨⟨793,false⟩,[⟨⟨864,false⟩,813⟩]⟩⟩

private def s6Step110EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step110EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step110EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step110EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step110EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step110EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step110EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,868⟩,⟨⟨772,false⟩,907⟩,⟨⟨771,false⟩,803⟩,⟨⟨770,false⟩,789⟩,⟨⟨769,false⟩,882⟩]⟩

private def s6Step110EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step110EarlyControlZeroArena,s6Step110EarlyControlZeroPlan,s6Step110EarlyControlClassPlan,s6Step110EarlyControlFlagArena,s6Step110EarlyControlFittedArena,s6Step110EarlyControlHistoryArena,s6Step110EarlyControlSigmaArena,s6Step110EarlyControlOutputArena,s6Step110EarlyControlLog⟩

private def s6Step110CounterWork : List Wire := [813, 879, 865, 796]

private theorem s6Step110Counter_bounded : s6Step110CounterWork.toFinset⊆arenaWires := by norm_num [s6Step110CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step110HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step110CounterDuring : Arena := ⟨s6Step110HeadFvAfter.live∪s6Step110CounterWork.toFinset,Finset.union_subset s6Step110HeadFvAfter.bounded s6Step110Counter_bounded⟩

private def s6Step110EntryFFresh : List Wire := []

private def s6Step110EntryFvFresh : List Wire := []

private def s6Step110EntryGFresh : List Wire := [882]

private def s6Step110EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step110EntryGvFresh : List Wire := [890, 805]

private def s6Step110ExitFExtra : List Wire := [469, 789]

private def s6Step110ExitFvExtra : List Wire := [803]

private def s6Step110ExitGExtra : List Wire := [882, 864]

private def s6Step110ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,469),(470,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step110ExitGvExtra : List Wire := [907]

private def s6Step110Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step110Add0Work : List Wire := [865, 796, 891, 903, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step110Add0_bounded : s6Step110Add0Work.toFinset⊆arenaWires := by
  have h : s6Step110Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step110Add0During : Arena := ⟨s6Step110Add0Arena.live∪s6Step110Add0Work.toFinset,Finset.union_subset s6Step110Add0Arena.bounded s6Step110Add0_bounded⟩

private def s6Step110Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step110Add1Work : List Wire := [865, 796, 891, 903, 791, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step110Add1_bounded : s6Step110Add1Work.toFinset⊆arenaWires := by
  have h : s6Step110Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step110Add1During : Arena := ⟨s6Step110Add1Arena.live∪s6Step110Add1Work.toFinset,Finset.union_subset s6Step110Add1Arena.bounded s6Step110Add1_bounded⟩

private def s6Step110F4FlagArena : Arena := ⟨s6Step110HeadFvAfter.live∪{813},Finset.union_subset s6Step110HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step110F4Plan : HmrHybridF4Plan := ⟨s6Step110F4FlagArena,[813],s6Step110Add0Arena,[879],s6Step110Add0During,s6Step110Add0Work,s6Step110Add1During,s6Step110Add1Work⟩

private def s6Step110HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 789],795⟩

private def s6Step110HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 803],776⟩

private def s6Step110HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 882, 864],777⟩

private def s6Step110HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 907],775⟩

private def s6Step110FrontHead : WindowBank := ⟨s6Step110HeadFOut,s6Step110HeadGOut,s6Step110HeadFvOut,s6Step110HeadGvOut⟩

private def s6Step110EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469],795⟩

private def s6Step110EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818],776⟩

private def s6Step110EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 882],777⟩

private def s6Step110EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805],775⟩

private def s6Step110FrontPair : WindowBank := ⟨s6Step110EntryFOut,s6Step110EntryGOut,s6Step110EntryFvOut,s6Step110EntryGvOut⟩

private def s6Step110FrontSigmaArena : Arena := ⟨s6Step110EntryGvAfter.live∪{793},Finset.union_subset s6Step110EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step110HeadFFresh : List Wire := [789]

private def s6Step110HeadFvFresh : List Wire := [803]

private def s6Step110HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step110HeadGFresh : List Wire := [864]

private def s6Step110HeadGvFresh : List Wire := [907]

private def s6Step110FrontPlan : HmrSourceFront := ⟨s6Step110EntryGvAfter,s6Step110FrontPair,(growRow 795 s6Step110EntryFFresh ++ (growRow 777 s6Step110EntryGFresh ++ (growRow 776 s6Step110EntryFvFresh ++ (growRow 775 s6Step110EntryGvFresh ++ [])))),s6Step110FrontSigmaArena,[793],s6Step110HeadGBefore,[823],
  s6Step110HeadFvAfter,s6Step110FrontHead,(growRow 777 s6Step110HeadGFresh ++ (growRow 795 s6Step110HeadFFresh ++ (growRow 775 s6Step110HeadGvFresh ++ (growRow 776 s6Step110HeadFvFresh ++ [])))),s6Step110F4Plan,s6Step110CounterDuring,s6Step110CounterWork,s6Step110ExitGvAfter,s6Step110FrontOut,(shrinkRow 777 s6Step110ExitGExtra ++ (shrinkRow 795 s6Step110ExitFExtra ++ (shrinkRow 776 s6Step110ExitFvExtra ++ (shrinkRow 775 s6Step110ExitGvExtra ++ []))))⟩

private def s6Step110CompletePlan : HmrEarlyStepPlan := ⟨s6Step110FrontPlan,s6Step110EarlyControlArena,s6Step110EarlyControlPlan,s6Step110CompleteMoves⟩

private theorem s6Step110Complete_apart : List.Disjoint (s6Step110CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [793, 823, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885] := by
  have nd : ((s6Step110CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[793, 823, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step110Complete_owned : (s6Step110CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step110EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step110EarlyControlArena (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step110CompleteRelocationMove0Borrowed : Arena := ⟨s6Step110ExitGvAfter.live∪{469},Finset.union_subset s6Step110ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step110CompleteRelocation_move0_owned : 868∈s6Step110ExitGvAfter.live := by norm_num [s6Step110ExitGvAfter,arenaWires]

private theorem s6Step110CompleteRelocation_move0_reserve : s6Step110ExitGvAfter.reserve {469}=some s6Step110CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step110ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step110CompleteRelocation_move0_retire : s6Step110CompleteRelocationMove0Borrowed.retireSet {868}=s6Step110EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step110CompleteRelocationMove0Borrowed s6Step110EarlyControlArena {868}
  change s6Step110EarlyControlArena.live=(s6Step110ExitGvAfter.live∪{469})\{868}
  apply hmrArena_update_of_filter_check s6Step110ExitGvAfter s6Step110EarlyControlArena (fun q => ([(0,469),(470,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [469] [868] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step110CompleteRelocation_checked : s6Step110ExitGvAfter.checkRepack [(868,469)]=some s6Step110EarlyControlArena := by
  have tail1 : s6Step110EarlyControlArena.checkRepack []=some s6Step110EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step110ExitGvAfter s6Step110CompleteRelocationMove0Borrowed s6Step110EarlyControlArena s6Step110EarlyControlArena 868 469 []
    s6Step110CompleteRelocation_move0_owned s6Step110CompleteRelocation_move0_reserve s6Step110CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step110Complete_repack : s6Step110ExitGvAfter.checkRepack s6Step110CompleteMoves=some s6Step110EarlyControlArena := by
  simpa only [s6Step110CompleteMoves] using s6Step110CompleteRelocation_checked

private theorem s6Step110EarlyControl_branchOwned : ([823] : List Wire).toFinset⊆s6Step110EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step110EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step110EarlyControl_branch : compileHmrBranchRetirement s6Step110EarlyControlSigmaArena 823=some s6Step110EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step110EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step110EarlyControlSigmaArena s6Step110EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [823] rfl rfl
    decide +kernel

private theorem s6Step110EarlyControl_classEqualityBorrow : s6Step110EarlyControlPositiveArena.checkBorrow (([793, 864] : List Wire).length-1) s6Step110EarlyControlLog.classWork=some s6Step110EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step110EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step110EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step110EarlyControlEqualityArena,s6Step110EarlyControlPositiveArena,s6Step110EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step110EarlyControl_classEqualityOwned : ([793, 864] : List Wire).toFinset⊆s6Step110EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step110EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step110EarlyControl_classEquality : compileHmrEqualityLog s6Step110EarlyControlPositiveArena [793, 864] 0 s6Step110EarlyControlLog.classWork=some (s6Step110EarlyControlEqualityArena,s6Step110EarlyControlLog.classWork,s6Step110EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step110EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step110EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step110EarlyControl_classOwned : ([769, 882, 793] : List Wire).toFinset⊆s6Step110EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step110EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step110EarlyControl_positiveBorrow : s6Step110EarlyControlZeroArena.checkBorrow (1) s6Step110EarlyControlLog.positiveWork=some s6Step110EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step110EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step110EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step110EarlyControlPositiveArena,s6Step110EarlyControlZeroArena,s6Step110EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step110EarlyControl_class : compileHmrSourceClassLog s6Step110EarlyControlZeroArena false 769 s6Step110EarlyControlZeroPlan.top 0 793 s6Step110EarlyControlLog.positiveWork s6Step110EarlyControlLog.classWork=some s6Step110EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step110EarlyControlClassPlan s6Step110EarlyControlZeroArena false 769 s6Step110EarlyControlZeroPlan.top 0 793
  constructor
  · decide +kernel
  · exact s6Step110EarlyControl_classOwned
  · exact s6Step110EarlyControl_positiveBorrow
  · exact s6Step110EarlyControl_classEquality

private theorem s6Step110EarlyControl_entryRecordOwned : ([823, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885] : List Wire).toFinset⊆s6Step110EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step110EarlyControlArena (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step110EarlyControl_entrySigmaOwned : ([793, 254] : List Wire).toFinset⊆s6Step110EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step110EarlyControlArena (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step110EarlyControl_fitBorrow : s6Step110EarlyControlFlagArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885] : List Wire).length)) s6Step110EarlyControlLog.recordFresh=some s6Step110EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step110EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step110EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step110EarlyControlFittedArena,s6Step110EarlyControlFlagArena,s6Step110EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step110EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885] : List Wire).toFinset⊆s6Step110EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step110EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step110EarlyControl_fit : compileHmrRecordGrowLog s6Step110EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885] 37 s6Step110EarlyControlLog.recordFresh=some s6Step110EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step110EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step110EarlyControl_fitBorrow

private theorem s6Step110EarlyControl_flagsBorrow : s6Step110EarlyControlEqualityArena.checkBorrow (6) s6Step110EarlyControlLog.flagWork=some s6Step110EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step110EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step110EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step110EarlyControlFlagArena,s6Step110EarlyControlEqualityArena,s6Step110EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step110EarlyControl_flagsOwned : ([813, 253, 252, 251] : List Wire).toFinset⊆s6Step110EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step110EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step110EarlyControl_flags : compileHmrFlagsLog s6Step110EarlyControlClassPlan.equalityArena s6Step110EarlyControlClassPlan.equality.top 253 252 251 s6Step110EarlyControlLog.flagWork=some s6Step110EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step110EarlyControl_flagsOwned⟩
  · exact s6Step110EarlyControl_flagsBorrow

private theorem s6Step110EarlyControl_historyBorrow : s6Step110EarlyControlArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885] : List Wire).length)) s6Step110EarlyControlLog.recordFresh=some s6Step110EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step110EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step110EarlyControlArena (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step110EarlyControlArena s6Step110EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step110EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step110EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step110EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885] : List Wire).toFinset⊆s6Step110EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step110EarlyControlArena (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step110EarlyControl_history : compileHmrRecordGrowLog s6Step110EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885] 37 s6Step110EarlyControlLog.recordFresh=some s6Step110EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step110EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step110EarlyControl_historyBorrow

private theorem s6Step110EarlyControl_sigmaOwned : ([254, 793] : List Wire).toFinset⊆s6Step110EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step110EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step110EarlyControl_sigmaReleaseOwned : ([793] : List Wire).toFinset⊆s6Step110EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step110EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step110EarlyControl_sigmaRelease : s6Step110EarlyControlHistoryArena.release {793} (fun _ => false)=some s6Step110EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step110EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step110EarlyControlHistoryArena s6Step110EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [793] rfl rfl
    decide +kernel

private theorem s6Step110EarlyControl_sigma : compileHmrSigmaDropLog s6Step110EarlyControlHistoryArena false 0 0 254 793 []=some s6Step110EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step110EarlyControl_sigmaOwned⟩
  · exact s6Step110EarlyControl_sigmaRelease

private theorem s6Step110EarlyControl_zeroBorrow : s6Step110EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step110EarlyControlLog.zeroWork=some s6Step110EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step110EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step110EarlyControlArena (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step110EarlyControlArena s6Step110EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step110EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step110EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step110EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step110EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step110EarlyControlArena (fun q => ([(0,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,868),(869,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step110EarlyControl_zero : compileHmrEqualityLog s6Step110EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step110EarlyControlLog.zeroWork=some (s6Step110EarlyControlZeroArena,s6Step110EarlyControlLog.zeroWork,s6Step110EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step110EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step110EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step110EarlyControl_logged : s6Step110EarlyControlPlan.Logged s6Step110EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885] 769 793 254 253 252 251 823 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step110EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step110EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step110EarlyControl_zero
  · exact s6Step110EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step110EarlyControl_flags
  · exact s6Step110EarlyControl_fit
  · exact s6Step110EarlyControl_history
  · exact s6Step110EarlyControl_sigma
  · exact s6Step110EarlyControl_branch

private theorem s6Step110EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step110EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885] 769 793 254 253 252 251 823 37 s6Step110EarlyControlLog=some s6Step110EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step110EarlyControlPlan s6Step110EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885] 769 793 254 253 252 251 823 37 s6Step110EarlyControl_logged

private def s6Step110EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step110EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469],795⟩

private def s6Step110EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818],776⟩

private def s6Step110EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212],777⟩

private def s6Step110EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828],775⟩

private def s6Step110FrontBank : WindowBank := ⟨s6Step110EntryFRow,s6Step110EntryGRow,s6Step110EntryFvRow,s6Step110EntryGvRow⟩

private def s6Step110Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 789, 795]

private def s6Step110Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 882, 864, 777]

private def s6Step110Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 803, 776]

private def s6Step110Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 907, 775]

private theorem s6Step110Counter_apart : Disjoint s6Step110HeadFvAfter.live s6Step110CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step110HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step110Counter_borrowed : s6Step110HeadFvAfter.checkBorrow 4 s6Step110CounterWork=some s6Step110CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step110HeadFvAfter s6Step110CounterDuring s6Step110CounterWork.toFinset s6Step110Counter_bounded s6Step110Counter_apart rfl

private theorem s6Step110Counter_owned : (793::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step110HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step110HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step110Counter_checked : compileHmrCounterStepLog s6Step110HeadFvAfter true 793 [774, 773, 772, 771, 770, 769] s6Step110CounterWork=some s6Step110CounterDuring := by
  have owned : ∀q∈793::[774, 773, 772, 771, 770, 769],q∈s6Step110HeadFvAfter.live := fun q hq => s6Step110Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step110Counter_borrowed

private def s6Step110EntryFAfter : Arena := s6Step110EntryFBefore

private theorem s6Step110EntryBank_incomingDistinct : ([s6Step110EntryFRow,s6Step110EntryGRow,s6Step110EntryFvRow,s6Step110EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step110EntryF_Incoming : rowsOwned s6Step110EntryFBefore [s6Step110EntryFRow,s6Step110EntryGRow,s6Step110EntryFvRow,s6Step110EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step110EntryFRow,s6Step110EntryGRow,s6Step110EntryFvRow,s6Step110EntryGvRow] 0 s6Step110EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step110EntryFBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step110EntryBank_outgoingOwned : rowsOwned s6Step110EntryGvAfter [s6Step110EntryFOut,s6Step110EntryGOut,s6Step110EntryFvOut,s6Step110EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step110EntryGvAfter (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step110EntryF_Outgoing : rowsOwned s6Step110EntryGvAfter [s6Step110EntryFOut,s6Step110EntryGOut,s6Step110EntryFvOut,s6Step110EntryGvOut] :=
  hmrRows_owned_drop s6Step110EntryGvAfter [s6Step110EntryFOut,s6Step110EntryGOut,s6Step110EntryFvOut,s6Step110EntryGvOut] 0 s6Step110EntryBank_outgoingOwned

private theorem s6Step110EntryF_distinct : (s6Step110EntryFRow.sign::s6Step110EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step110EntryF_owned : (s6Step110EntryFRow.sign::s6Step110EntryFRow.payload).toFinset⊆s6Step110EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step110EntryFBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step110EntryF_reserved : s6Step110EntryFBefore.reserve s6Step110EntryFFresh.toFinset=some s6Step110EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step110EntryFFresh,arenaWires]
  · norm_num [s6Step110EntryFBefore,s6Step110EntryFFresh,arenaWires]
  · simp only [s6Step110EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step110EntryF_checked : planRowResizeLog s6Step110EntryFBefore s6Step110EntryFRow 214 s6Step110EntryFFresh=
    some (s6Step110EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469],795⟩,growRow 795 s6Step110EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step110EntryFBefore s6Step110EntryFAfter s6Step110EntryFRow 214 s6Step110EntryFFresh
    s6Step110EntryF_distinct s6Step110EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step110EntryF_reserved
  have rowEq : WindowRow.mk (s6Step110EntryFRow.payload++s6Step110EntryFFresh) s6Step110EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step110EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step110EntryFvAfter : Arena := s6Step110EntryGAfter

private def s6Step110EntryFvBefore : Arena := s6Step110EntryGAfter

private theorem s6Step110EntryFv_Incoming : rowsOwned s6Step110EntryFvBefore [s6Step110EntryFvRow,s6Step110EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step110EntryFRow,s6Step110EntryGRow,s6Step110EntryFvRow,s6Step110EntryGvRow] 2 s6Step110EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step110EntryFvBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step110EntryFv_Outgoing : rowsOwned s6Step110EntryGvAfter [s6Step110EntryFvOut,s6Step110EntryGvOut] :=
  hmrRows_owned_drop s6Step110EntryGvAfter [s6Step110EntryFOut,s6Step110EntryGOut,s6Step110EntryFvOut,s6Step110EntryGvOut] 2 s6Step110EntryBank_outgoingOwned

private theorem s6Step110EntryFv_distinct : (s6Step110EntryFvRow.sign::s6Step110EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step110EntryFv_owned : (s6Step110EntryFvRow.sign::s6Step110EntryFvRow.payload).toFinset⊆s6Step110EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step110EntryFvBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step110EntryFv_reserved : s6Step110EntryFvBefore.reserve s6Step110EntryFvFresh.toFinset=some s6Step110EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step110EntryFvFresh,arenaWires]
  · norm_num [s6Step110EntryFvBefore,s6Step110EntryGAfter,s6Step110EntryFvFresh,arenaWires]
  · simp only [s6Step110EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step110EntryFv_checked : planRowResizeLog s6Step110EntryFvBefore s6Step110EntryFvRow 69 s6Step110EntryFvFresh=
    some (s6Step110EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818],776⟩,growRow 776 s6Step110EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step110EntryFvBefore s6Step110EntryFvAfter s6Step110EntryFvRow 69 s6Step110EntryFvFresh
    s6Step110EntryFv_distinct s6Step110EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step110EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step110EntryFvRow.payload++s6Step110EntryFvFresh) s6Step110EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step110EntryGBefore : Arena := s6Step110EntryFBefore

private theorem s6Step110EntryG_Incoming : rowsOwned s6Step110EntryGBefore [s6Step110EntryGRow,s6Step110EntryFvRow,s6Step110EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step110EntryFRow,s6Step110EntryGRow,s6Step110EntryFvRow,s6Step110EntryGvRow] 1 s6Step110EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step110EntryGBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step110EntryG_Outgoing : rowsOwned s6Step110EntryGvAfter [s6Step110EntryGOut,s6Step110EntryFvOut,s6Step110EntryGvOut] :=
  hmrRows_owned_drop s6Step110EntryGvAfter [s6Step110EntryFOut,s6Step110EntryGOut,s6Step110EntryFvOut,s6Step110EntryGvOut] 1 s6Step110EntryBank_outgoingOwned

private theorem s6Step110EntryG_distinct : (s6Step110EntryGRow.sign::s6Step110EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step110EntryG_owned : (s6Step110EntryGRow.sign::s6Step110EntryGRow.payload).toFinset⊆s6Step110EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step110EntryGBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step110EntryG_reserved : s6Step110EntryGBefore.reserve s6Step110EntryGFresh.toFinset=some s6Step110EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step110EntryGFresh,arenaWires]
  · norm_num [s6Step110EntryGBefore,s6Step110EntryFBefore,s6Step110EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step110EntryGBefore s6Step110EntryGAfter (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step110EntryGFresh rfl rfl
    · norm_num [s6Step110EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step110EntryG_checked : planRowResizeLog s6Step110EntryGBefore s6Step110EntryGRow 214 s6Step110EntryGFresh=
    some (s6Step110EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 882],777⟩,growRow 777 s6Step110EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step110EntryGBefore s6Step110EntryGAfter s6Step110EntryGRow 214 s6Step110EntryGFresh
    s6Step110EntryG_distinct s6Step110EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step110EntryG_reserved
  have rowEq : WindowRow.mk (s6Step110EntryGRow.payload++s6Step110EntryGFresh) s6Step110EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 882],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step110EntryGvBefore : Arena := s6Step110EntryGAfter

private theorem s6Step110EntryGv_Incoming : rowsOwned s6Step110EntryGvBefore [s6Step110EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step110EntryFRow,s6Step110EntryGRow,s6Step110EntryFvRow,s6Step110EntryGvRow] 3 s6Step110EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step110EntryGvBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step110EntryGv_Outgoing : rowsOwned s6Step110EntryGvAfter [s6Step110EntryGvOut] :=
  hmrRows_owned_drop s6Step110EntryGvAfter [s6Step110EntryFOut,s6Step110EntryGOut,s6Step110EntryFvOut,s6Step110EntryGvOut] 3 s6Step110EntryBank_outgoingOwned

private theorem s6Step110EntryGv_distinct : (s6Step110EntryGvRow.sign::s6Step110EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step110EntryGv_owned : (s6Step110EntryGvRow.sign::s6Step110EntryGvRow.payload).toFinset⊆s6Step110EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step110EntryGvBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step110EntryGv_reserved : s6Step110EntryGvBefore.reserve s6Step110EntryGvFresh.toFinset=some s6Step110EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step110EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step110EntryGvBefore,s6Step110EntryGAfter,s6Step110EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step110EntryGvBefore s6Step110EntryGvAfter (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step110EntryGvFresh rfl rfl
    · norm_num [s6Step110EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step110EntryGv_checked : planRowResizeLog s6Step110EntryGvBefore s6Step110EntryGvRow 69 s6Step110EntryGvFresh=
    some (s6Step110EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805],775⟩,growRow 775 s6Step110EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step110EntryGvBefore s6Step110EntryGvAfter s6Step110EntryGvRow 69 s6Step110EntryGvFresh
    s6Step110EntryGv_distinct s6Step110EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step110EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step110EntryGvRow.payload++s6Step110EntryGvFresh) s6Step110EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step110EntryBank_rows : planWindowRowsLog s6Step110EntryFBefore [(s6Step110EntryFRow,214),(s6Step110EntryGRow,214),(s6Step110EntryFvRow,69),(s6Step110EntryGvRow,69)] [s6Step110EntryFFresh,s6Step110EntryGFresh,s6Step110EntryFvFresh,s6Step110EntryGvFresh]=
    some (s6Step110EntryGvAfter,[s6Step110EntryFOut,s6Step110EntryGOut,s6Step110EntryFvOut,s6Step110EntryGvOut],(growRow 795 s6Step110EntryFFresh ++ (growRow 777 s6Step110EntryGFresh ++ (growRow 776 s6Step110EntryFvFresh ++ (growRow 775 s6Step110EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step110EntryGvAfter [] []=some (s6Step110EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step110EntryGvBefore s6Step110EntryGvAfter s6Step110EntryGvAfter
    s6Step110EntryGvRow s6Step110EntryGvOut 69 s6Step110EntryGvFresh [] [] []
    (growRow 775 s6Step110EntryGvFresh) ([]) s6Step110EntryGv_Incoming s6Step110EntryGv_checked h4 s6Step110EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step110EntryFvBefore s6Step110EntryFvAfter s6Step110EntryGvAfter
    s6Step110EntryFvRow s6Step110EntryFvOut 69 s6Step110EntryFvFresh [(s6Step110EntryGvRow,69)] [s6Step110EntryGvFresh] [s6Step110EntryGvOut]
    (growRow 776 s6Step110EntryFvFresh) ((growRow 775 s6Step110EntryGvFresh ++ [])) s6Step110EntryFv_Incoming s6Step110EntryFv_checked h3 s6Step110EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step110EntryGBefore s6Step110EntryGAfter s6Step110EntryGvAfter
    s6Step110EntryGRow s6Step110EntryGOut 214 s6Step110EntryGFresh [(s6Step110EntryFvRow,69),(s6Step110EntryGvRow,69)] [s6Step110EntryFvFresh,s6Step110EntryGvFresh] [s6Step110EntryFvOut,s6Step110EntryGvOut]
    (growRow 777 s6Step110EntryGFresh) ((growRow 776 s6Step110EntryFvFresh ++ (growRow 775 s6Step110EntryGvFresh ++ []))) s6Step110EntryG_Incoming s6Step110EntryG_checked h2 s6Step110EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step110EntryFBefore s6Step110EntryFAfter s6Step110EntryGvAfter
    s6Step110EntryFRow s6Step110EntryFOut 214 s6Step110EntryFFresh [(s6Step110EntryGRow,214),(s6Step110EntryFvRow,69),(s6Step110EntryGvRow,69)] [s6Step110EntryGFresh,s6Step110EntryFvFresh,s6Step110EntryGvFresh] [s6Step110EntryGOut,s6Step110EntryFvOut,s6Step110EntryGvOut]
    (growRow 795 s6Step110EntryFFresh) ((growRow 777 s6Step110EntryGFresh ++ (growRow 776 s6Step110EntryFvFresh ++ (growRow 775 s6Step110EntryGvFresh ++ [])))) s6Step110EntryF_Incoming s6Step110EntryF_checked h1 s6Step110EntryF_Outgoing
  exact h0

private theorem s6Step110EntryBank_checked : compileHmrBankResizeLog .entry s6Step110EntryFBefore ⟨s6Step110EntryFRow,s6Step110EntryGRow,s6Step110EntryFvRow,s6Step110EntryGvRow⟩ ⟨214,214,69,69⟩ [s6Step110EntryFFresh,s6Step110EntryGFresh,s6Step110EntryFvFresh,s6Step110EntryGvFresh]=
    some (s6Step110EntryGvAfter,⟨s6Step110EntryFOut,s6Step110EntryGOut,s6Step110EntryFvOut,s6Step110EntryGvOut⟩,(growRow 795 s6Step110EntryFFresh ++ (growRow 777 s6Step110EntryGFresh ++ (growRow 776 s6Step110EntryFvFresh ++ (growRow 775 s6Step110EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step110EntryBank_rows]
  rfl

private def s6Step110ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,469),(470,782),(783,787),(788,789),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step110ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step110ExitFBefore : Arena := s6Step110ExitGAfter

private def s6Step110ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 789],795⟩

private def s6Step110ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 803],776⟩

private def s6Step110ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 882, 864],777⟩

private def s6Step110ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 907],775⟩

private theorem s6Step110ExitBank_incomingDistinct : ([s6Step110ExitGRow,s6Step110ExitFRow,s6Step110ExitFvRow,s6Step110ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step110ExitF_Incoming : rowsOwned s6Step110ExitFBefore [s6Step110ExitFRow,s6Step110ExitFvRow,s6Step110ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step110ExitGRow,s6Step110ExitFRow,s6Step110ExitFvRow,s6Step110ExitGvRow] 1 s6Step110ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step110ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step110ExitBank_outgoingOwned : rowsOwned s6Step110ExitGvAfter [s6Step110ExitGOut,s6Step110ExitFOut,s6Step110ExitFvOut,s6Step110ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step110ExitGvAfter (fun q => ([(0,469),(470,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step110ExitF_Outgoing : rowsOwned s6Step110ExitGvAfter [s6Step110ExitFOut,s6Step110ExitFvOut,s6Step110ExitGvOut] :=
  hmrRows_owned_drop s6Step110ExitGvAfter [s6Step110ExitGOut,s6Step110ExitFOut,s6Step110ExitFvOut,s6Step110ExitGvOut] 1 s6Step110ExitBank_outgoingOwned

private theorem s6Step110ExitF_distinct : (s6Step110ExitFRow.sign::s6Step110ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step110ExitF_owned : (s6Step110ExitFRow.sign::s6Step110ExitFRow.payload).toFinset⊆s6Step110ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step110ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step110ExitF_retired : s6Step110ExitFBefore.retireSet s6Step110ExitFExtra.toFinset=s6Step110ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step110ExitFBefore s6Step110ExitFAfter s6Step110ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step110ExitFBefore s6Step110ExitFAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,469),(470,782),(783,787),(788,789),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step110ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step110ExitF_checked : planRowResizeLog s6Step110ExitFBefore s6Step110ExitFRow 213 []=
    some (s6Step110ExitFAfter,s6Step110ExitFOut,shrinkRow 795 s6Step110ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step110ExitFBefore s6Step110ExitFRow 213 s6Step110ExitF_distinct s6Step110ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step110ExitFRow.payload.take 213) s6Step110ExitFRow.sign=s6Step110ExitFOut := by decide +kernel
  have hi : s6Step110ExitFRow.payload.drop 213=s6Step110ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step110ExitF_retired] at result
  exact result

private def s6Step110ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,469),(470,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step110ExitFvBefore : Arena := s6Step110ExitFAfter

private theorem s6Step110ExitFv_Incoming : rowsOwned s6Step110ExitFvBefore [s6Step110ExitFvRow,s6Step110ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step110ExitGRow,s6Step110ExitFRow,s6Step110ExitFvRow,s6Step110ExitGvRow] 2 s6Step110ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step110ExitFvBefore (fun q => ([(0,469),(470,782),(783,787),(788,789),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step110ExitFv_Outgoing : rowsOwned s6Step110ExitGvAfter [s6Step110ExitFvOut,s6Step110ExitGvOut] :=
  hmrRows_owned_drop s6Step110ExitGvAfter [s6Step110ExitGOut,s6Step110ExitFOut,s6Step110ExitFvOut,s6Step110ExitGvOut] 2 s6Step110ExitBank_outgoingOwned

private theorem s6Step110ExitFv_distinct : (s6Step110ExitFvRow.sign::s6Step110ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step110ExitFv_owned : (s6Step110ExitFvRow.sign::s6Step110ExitFvRow.payload).toFinset⊆s6Step110ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step110ExitFvBefore (fun q => ([(0,469),(470,782),(783,787),(788,789),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step110ExitFv_retired : s6Step110ExitFvBefore.retireSet s6Step110ExitFvExtra.toFinset=s6Step110ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step110ExitFvBefore s6Step110ExitFvAfter s6Step110ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step110ExitFvBefore s6Step110ExitFvAfter (fun q => ([(0,469),(470,782),(783,787),(788,789),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,469),(470,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step110ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step110ExitFv_checked : planRowResizeLog s6Step110ExitFvBefore s6Step110ExitFvRow 69 []=
    some (s6Step110ExitFvAfter,s6Step110ExitFvOut,shrinkRow 776 s6Step110ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step110ExitFvBefore s6Step110ExitFvRow 69 s6Step110ExitFv_distinct s6Step110ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step110ExitFvRow.payload.take 69) s6Step110ExitFvRow.sign=s6Step110ExitFvOut := by decide +kernel
  have hi : s6Step110ExitFvRow.payload.drop 69=s6Step110ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step110ExitFv_retired] at result
  exact result

private def s6Step110ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step110ExitG_Incoming : rowsOwned s6Step110ExitGBefore [s6Step110ExitGRow,s6Step110ExitFRow,s6Step110ExitFvRow,s6Step110ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step110ExitGRow,s6Step110ExitFRow,s6Step110ExitFvRow,s6Step110ExitGvRow] 0 s6Step110ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step110ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step110ExitG_Outgoing : rowsOwned s6Step110ExitGvAfter [s6Step110ExitGOut,s6Step110ExitFOut,s6Step110ExitFvOut,s6Step110ExitGvOut] :=
  hmrRows_owned_drop s6Step110ExitGvAfter [s6Step110ExitGOut,s6Step110ExitFOut,s6Step110ExitFvOut,s6Step110ExitGvOut] 0 s6Step110ExitBank_outgoingOwned

private theorem s6Step110ExitG_distinct : (s6Step110ExitGRow.sign::s6Step110ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step110ExitG_owned : (s6Step110ExitGRow.sign::s6Step110ExitGRow.payload).toFinset⊆s6Step110ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step110ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step110ExitG_retired : s6Step110ExitGBefore.retireSet s6Step110ExitGExtra.toFinset=s6Step110ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step110ExitGBefore s6Step110ExitGAfter s6Step110ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step110ExitGBefore s6Step110ExitGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step110ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step110ExitG_checked : planRowResizeLog s6Step110ExitGBefore s6Step110ExitGRow 213 []=
    some (s6Step110ExitGAfter,s6Step110ExitGOut,shrinkRow 777 s6Step110ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step110ExitGBefore s6Step110ExitGRow 213 s6Step110ExitG_distinct s6Step110ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step110ExitGRow.payload.take 213) s6Step110ExitGRow.sign=s6Step110ExitGOut := by decide +kernel
  have hi : s6Step110ExitGRow.payload.drop 213=s6Step110ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step110ExitG_retired] at result
  exact result

private def s6Step110ExitGvBefore : Arena := s6Step110ExitFvAfter

private theorem s6Step110ExitGv_Incoming : rowsOwned s6Step110ExitGvBefore [s6Step110ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step110ExitGRow,s6Step110ExitFRow,s6Step110ExitFvRow,s6Step110ExitGvRow] 3 s6Step110ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step110ExitGvBefore (fun q => ([(0,469),(470,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step110ExitGv_Outgoing : rowsOwned s6Step110ExitGvAfter [s6Step110ExitGvOut] :=
  hmrRows_owned_drop s6Step110ExitGvAfter [s6Step110ExitGOut,s6Step110ExitFOut,s6Step110ExitFvOut,s6Step110ExitGvOut] 3 s6Step110ExitBank_outgoingOwned

private theorem s6Step110ExitGv_distinct : (s6Step110ExitGvRow.sign::s6Step110ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step110ExitGv_owned : (s6Step110ExitGvRow.sign::s6Step110ExitGvRow.payload).toFinset⊆s6Step110ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step110ExitGvBefore (fun q => ([(0,469),(470,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step110ExitGv_retired : s6Step110ExitGvBefore.retireSet s6Step110ExitGvExtra.toFinset=s6Step110ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step110ExitGvBefore s6Step110ExitGvAfter s6Step110ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step110ExitGvBefore s6Step110ExitGvAfter (fun q => ([(0,469),(470,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,469),(470,782),(783,787),(788,789),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step110ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step110ExitGv_checked : planRowResizeLog s6Step110ExitGvBefore s6Step110ExitGvRow 69 []=
    some (s6Step110ExitGvAfter,s6Step110ExitGvOut,shrinkRow 775 s6Step110ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step110ExitGvBefore s6Step110ExitGvRow 69 s6Step110ExitGv_distinct s6Step110ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step110ExitGvRow.payload.take 69) s6Step110ExitGvRow.sign=s6Step110ExitGvOut := by decide +kernel
  have hi : s6Step110ExitGvRow.payload.drop 69=s6Step110ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step110ExitGv_retired] at result
  exact result

private theorem s6Step110ExitBank_rows : planWindowRowsLog s6Step110ExitGBefore [(s6Step110ExitGRow,213),(s6Step110ExitFRow,213),(s6Step110ExitFvRow,69),(s6Step110ExitGvRow,69)] [[],[],[],[]]=
    some (s6Step110ExitGvAfter,[s6Step110ExitGOut,s6Step110ExitFOut,s6Step110ExitFvOut,s6Step110ExitGvOut],(shrinkRow 777 s6Step110ExitGExtra ++ (shrinkRow 795 s6Step110ExitFExtra ++ (shrinkRow 776 s6Step110ExitFvExtra ++ (shrinkRow 775 s6Step110ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step110ExitGvAfter [] []=some (s6Step110ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step110ExitGvBefore s6Step110ExitGvAfter s6Step110ExitGvAfter
    s6Step110ExitGvRow s6Step110ExitGvOut 69 [] [] [] []
    (shrinkRow 775 s6Step110ExitGvExtra) ([]) s6Step110ExitGv_Incoming s6Step110ExitGv_checked h4 s6Step110ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step110ExitFvBefore s6Step110ExitFvAfter s6Step110ExitGvAfter
    s6Step110ExitFvRow s6Step110ExitFvOut 69 [] [(s6Step110ExitGvRow,69)] [[]] [s6Step110ExitGvOut]
    (shrinkRow 776 s6Step110ExitFvExtra) ((shrinkRow 775 s6Step110ExitGvExtra ++ [])) s6Step110ExitFv_Incoming s6Step110ExitFv_checked h3 s6Step110ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step110ExitFBefore s6Step110ExitFAfter s6Step110ExitGvAfter
    s6Step110ExitFRow s6Step110ExitFOut 213 [] [(s6Step110ExitFvRow,69),(s6Step110ExitGvRow,69)] [[],[]] [s6Step110ExitFvOut,s6Step110ExitGvOut]
    (shrinkRow 795 s6Step110ExitFExtra) ((shrinkRow 776 s6Step110ExitFvExtra ++ (shrinkRow 775 s6Step110ExitGvExtra ++ []))) s6Step110ExitF_Incoming s6Step110ExitF_checked h2 s6Step110ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step110ExitGBefore s6Step110ExitGAfter s6Step110ExitGvAfter
    s6Step110ExitGRow s6Step110ExitGOut 213 [] [(s6Step110ExitFRow,213),(s6Step110ExitFvRow,69),(s6Step110ExitGvRow,69)] [[],[],[]] [s6Step110ExitFOut,s6Step110ExitFvOut,s6Step110ExitGvOut]
    (shrinkRow 777 s6Step110ExitGExtra) ((shrinkRow 795 s6Step110ExitFExtra ++ (shrinkRow 776 s6Step110ExitFvExtra ++ (shrinkRow 775 s6Step110ExitGvExtra ++ [])))) s6Step110ExitG_Incoming s6Step110ExitG_checked h1 s6Step110ExitG_Outgoing
  exact h0

private theorem s6Step110ExitBank_checked : compileHmrBankResizeLog .exit s6Step110ExitGBefore ⟨s6Step110ExitFRow,s6Step110ExitGRow,s6Step110ExitFvRow,s6Step110ExitGvRow⟩ ⟨213,213,69,69⟩ [[],[],[],[]]=
    some (s6Step110ExitGvAfter,⟨s6Step110ExitFOut,s6Step110ExitGOut,s6Step110ExitFvOut,s6Step110ExitGvOut⟩,(shrinkRow 777 s6Step110ExitGExtra ++ (shrinkRow 795 s6Step110ExitFExtra ++ (shrinkRow 776 s6Step110ExitFvExtra ++ (shrinkRow 775 s6Step110ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step110ExitBank_rows]
  rfl

private theorem s6Step110Add0_apart : Disjoint s6Step110Add0Arena.live s6Step110Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step110Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step110Add0_card : s6Step110Add0Arena.live.card=876 := by
  decide +kernel

private theorem s6Step110Add0_borrowed : s6Step110Add0Arena.checkBorrow (hmrHybridCount s6Step110Add0Arena s6Step110Add0B.length) s6Step110Add0Work=some s6Step110Add0During := by
  have len : s6Step110Add0Work.length=hmrHybridCount s6Step110Add0Arena s6Step110Add0B.length := by
    rw [hmrHybridCount,s6Step110Add0_card]
    decide +kernel
  have nd : s6Step110Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step110Add0Arena s6Step110Add0During s6Step110Add0Work.toFinset s6Step110Add0_bounded s6Step110Add0_apart rfl

private theorem s6Step110Add0_distinct : (813::823::879::(s6Step110Add0A++s6Step110Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step110Add0_owned : (813::823::879::(s6Step110Add0A++s6Step110Add0B)).toFinset⊆s6Step110Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step110Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step110Add0_checked : compileHmrHybridCinLog s6Step110Add0Arena 823 813 879 s6Step110Add0A s6Step110Add0B s6Step110Add0Work=some s6Step110Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step110Add0Arena s6Step110Add0During 823 813 879 s6Step110Add0A s6Step110Add0B s6Step110Add0Work
    (by decide +kernel) (by decide +kernel) s6Step110Add0_distinct
    (fun q hq => s6Step110Add0_owned (List.mem_toFinset.mpr hq)) s6Step110Add0_borrowed

private theorem s6Step110Add1_apart : Disjoint s6Step110Add1Arena.live s6Step110Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step110Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step110Add1_card : s6Step110Add1Arena.live.card=876 := by
  decide +kernel

private theorem s6Step110Add1_borrowed : s6Step110Add1Arena.checkBorrow (hmrHybridCount s6Step110Add1Arena s6Step110Add1B.length) s6Step110Add1Work=some s6Step110Add1During := by
  have len : s6Step110Add1Work.length=hmrHybridCount s6Step110Add1Arena s6Step110Add1B.length := by
    rw [hmrHybridCount,s6Step110Add1_card]
    decide +kernel
  have nd : s6Step110Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step110Add1Arena s6Step110Add1During s6Step110Add1Work.toFinset s6Step110Add1_bounded s6Step110Add1_apart rfl

private theorem s6Step110Add1_distinct : (813::823::879::(s6Step110Add1A++s6Step110Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step110Add1_owned : (813::823::879::(s6Step110Add1A++s6Step110Add1B)).toFinset⊆s6Step110Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step110Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step110Add1_checked : compileHmrHybridCinLog s6Step110Add1Arena 823 813 879 s6Step110Add1A s6Step110Add1B s6Step110Add1Work=some s6Step110Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step110Add1Arena s6Step110Add1During 823 813 879 s6Step110Add1A s6Step110Add1B s6Step110Add1Work
    (by decide +kernel) (by decide +kernel) s6Step110Add1_distinct
    (fun q hq => s6Step110Add1_owned (List.mem_toFinset.mpr hq)) s6Step110Add1_borrowed

private theorem s6Step110F4_apart : Disjoint (s6Step110Add0A++s6Step110Add0B).toFinset (s6Step110Add1A++s6Step110Add1B).toFinset := by
  have nd : ((s6Step110Add0A++s6Step110Add0B)++(s6Step110Add1A++s6Step110Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step110F4_carry : s6Step110F4FlagArena.checkBorrow 1 [879]=some s6Step110Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step110F4FlagArena,s6Step110HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step110F4FlagArena,s6Step110HeadFvAfter,s6Step110Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step110F4_distinct : (793::823::813::879::((s6Step110Add0A++s6Step110Add1A)++(s6Step110Add0B++s6Step110Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step110F4_flag : s6Step110HeadFvAfter.checkBorrow 1 [813]=some s6Step110F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step110HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step110F4_owned : (793::823::((s6Step110Add0A++s6Step110Add1A)++(s6Step110Add0B++s6Step110Add1B))).toFinset⊆s6Step110HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step110HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step110F4_checked : compileHmrHybridF4Log s6Step110HeadFvAfter 793 823 s6Step110Add0A s6Step110Add0B s6Step110Add1A s6Step110Add1B [813] [879] s6Step110Add0Work s6Step110Add1Work=some s6Step110F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step110HeadFvAfter s6Step110F4FlagArena s6Step110Add0Arena s6Step110Add0During s6Step110Add1During 793 823
    s6Step110Add0A s6Step110Add0B s6Step110Add1A s6Step110Add1B [813] [879] s6Step110Add0Work s6Step110Add1Work
    (fun q hq => s6Step110F4_owned (List.mem_toFinset.mpr hq)) s6Step110F4_flag s6Step110F4_carry
    s6Step110F4_distinct s6Step110F4_apart s6Step110Add0_checked s6Step110Add1_checked

private theorem s6Step110Front_branch : s6Step110FrontSigmaArena.checkBorrow 1 [823]=some s6Step110HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step110FrontSigmaArena,s6Step110EntryGvAfter,arenaWires]
  · change s6Step110HeadGBefore.live=(s6Step110EntryGvAfter.live∪{793})∪{823}
    apply hmrArena_union_pair_of_filter_check s6Step110EntryGvAfter s6Step110HeadGBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) 793 823 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step110Front_entry : HmrFrontEntryValid s6Step110EntryFBefore s6Step110FrontBank 214 69 ⟨213,213,69,69⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step110FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step110EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step110EntryFBefore (fun q => ([(0,782),(783,787),(788,789),(794,796),(799,800),(802,803),(806,808),(814,815),(818,819),(821,823),(824,825),(827,832),(833,834),(835,836),(837,842),(843,844),(845,849),(850,864),(866,879),(880,882),(883,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step110FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step110Front_sigma : s6Step110EntryGvAfter.checkBorrow 1 [793]=some s6Step110FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step110EntryGvAfter,arenaWires]
  · rfl

private def s6Step110HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step110HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step110HeadFBefore : Arena := s6Step110HeadGAfter

private def s6Step110HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469],795⟩

private def s6Step110HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818],776⟩

private def s6Step110HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 882],777⟩

private def s6Step110HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805],775⟩

private theorem s6Step110HeadBank_incomingDistinct : ([s6Step110HeadGRow,s6Step110HeadFRow,s6Step110HeadGvRow,s6Step110HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step110HeadF_Incoming : rowsOwned s6Step110HeadFBefore [s6Step110HeadFRow,s6Step110HeadGvRow,s6Step110HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step110HeadGRow,s6Step110HeadFRow,s6Step110HeadGvRow,s6Step110HeadFvRow] 1 s6Step110HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step110HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step110HeadBank_outgoingOwned : rowsOwned s6Step110HeadFvAfter [s6Step110HeadGOut,s6Step110HeadFOut,s6Step110HeadGvOut,s6Step110HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step110HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step110HeadF_Outgoing : rowsOwned s6Step110HeadFvAfter [s6Step110HeadFOut,s6Step110HeadGvOut,s6Step110HeadFvOut] :=
  hmrRows_owned_drop s6Step110HeadFvAfter [s6Step110HeadGOut,s6Step110HeadFOut,s6Step110HeadGvOut,s6Step110HeadFvOut] 1 s6Step110HeadBank_outgoingOwned

private theorem s6Step110HeadF_distinct : (s6Step110HeadFRow.sign::s6Step110HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step110HeadF_owned : (s6Step110HeadFRow.sign::s6Step110HeadFRow.payload).toFinset⊆s6Step110HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step110HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step110HeadF_reserved : s6Step110HeadFBefore.reserve s6Step110HeadFFresh.toFinset=some s6Step110HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step110HeadFFresh,arenaWires]
  · norm_num [s6Step110HeadFBefore,s6Step110HeadGAfter,s6Step110HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step110HeadFAfter,s6Step110HeadFBefore,s6Step110HeadGAfter,s6Step110HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step110HeadF_checked : planRowResizeLog s6Step110HeadFBefore s6Step110HeadFRow 215 s6Step110HeadFFresh=
    some (s6Step110HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 789],795⟩,growRow 795 s6Step110HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step110HeadFBefore s6Step110HeadFAfter s6Step110HeadFRow 215 s6Step110HeadFFresh
    s6Step110HeadF_distinct s6Step110HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step110HeadF_reserved
  have rowEq : WindowRow.mk (s6Step110HeadFRow.payload++s6Step110HeadFFresh) s6Step110HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 789],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step110HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step110HeadFvBefore : Arena := s6Step110HeadGvAfter

private theorem s6Step110HeadFv_Incoming : rowsOwned s6Step110HeadFvBefore [s6Step110HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step110HeadGRow,s6Step110HeadFRow,s6Step110HeadGvRow,s6Step110HeadFvRow] 3 s6Step110HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step110HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step110HeadFv_Outgoing : rowsOwned s6Step110HeadFvAfter [s6Step110HeadFvOut] :=
  hmrRows_owned_drop s6Step110HeadFvAfter [s6Step110HeadGOut,s6Step110HeadFOut,s6Step110HeadGvOut,s6Step110HeadFvOut] 3 s6Step110HeadBank_outgoingOwned

private theorem s6Step110HeadFv_distinct : (s6Step110HeadFvRow.sign::s6Step110HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step110HeadFv_owned : (s6Step110HeadFvRow.sign::s6Step110HeadFvRow.payload).toFinset⊆s6Step110HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step110HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step110HeadFv_reserved : s6Step110HeadFvBefore.reserve s6Step110HeadFvFresh.toFinset=some s6Step110HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step110HeadFvFresh,arenaWires]
  · norm_num [s6Step110HeadFvBefore,s6Step110HeadGvAfter,s6Step110HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step110HeadFvAfter,s6Step110HeadFvBefore,s6Step110HeadGvAfter,s6Step110HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step110HeadFv_checked : planRowResizeLog s6Step110HeadFvBefore s6Step110HeadFvRow 70 s6Step110HeadFvFresh=
    some (s6Step110HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 803],776⟩,growRow 776 s6Step110HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step110HeadFvBefore s6Step110HeadFvAfter s6Step110HeadFvRow 70 s6Step110HeadFvFresh
    s6Step110HeadFv_distinct s6Step110HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step110HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step110HeadFvRow.payload++s6Step110HeadFvFresh) s6Step110HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 803],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step110HeadG_Incoming : rowsOwned s6Step110HeadGBefore [s6Step110HeadGRow,s6Step110HeadFRow,s6Step110HeadGvRow,s6Step110HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step110HeadGRow,s6Step110HeadFRow,s6Step110HeadGvRow,s6Step110HeadFvRow] 0 s6Step110HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step110HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step110HeadG_Outgoing : rowsOwned s6Step110HeadFvAfter [s6Step110HeadGOut,s6Step110HeadFOut,s6Step110HeadGvOut,s6Step110HeadFvOut] :=
  hmrRows_owned_drop s6Step110HeadFvAfter [s6Step110HeadGOut,s6Step110HeadFOut,s6Step110HeadGvOut,s6Step110HeadFvOut] 0 s6Step110HeadBank_outgoingOwned

private theorem s6Step110HeadG_distinct : (s6Step110HeadGRow.sign::s6Step110HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step110HeadG_owned : (s6Step110HeadGRow.sign::s6Step110HeadGRow.payload).toFinset⊆s6Step110HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step110HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step110HeadG_reserved : s6Step110HeadGBefore.reserve s6Step110HeadGFresh.toFinset=some s6Step110HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step110HeadGFresh,arenaWires]
  · norm_num [s6Step110HeadGBefore,s6Step110HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step110HeadGAfter,s6Step110HeadGBefore,s6Step110HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step110HeadG_checked : planRowResizeLog s6Step110HeadGBefore s6Step110HeadGRow 215 s6Step110HeadGFresh=
    some (s6Step110HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 882, 864],777⟩,growRow 777 s6Step110HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step110HeadGBefore s6Step110HeadGAfter s6Step110HeadGRow 215 s6Step110HeadGFresh
    s6Step110HeadG_distinct s6Step110HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step110HeadG_reserved
  have rowEq : WindowRow.mk (s6Step110HeadGRow.payload++s6Step110HeadGFresh) s6Step110HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 882, 864],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step110HeadGvBefore : Arena := s6Step110HeadFAfter

private theorem s6Step110HeadGv_Incoming : rowsOwned s6Step110HeadGvBefore [s6Step110HeadGvRow,s6Step110HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step110HeadGRow,s6Step110HeadFRow,s6Step110HeadGvRow,s6Step110HeadFvRow] 2 s6Step110HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step110HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step110HeadGv_Outgoing : rowsOwned s6Step110HeadFvAfter [s6Step110HeadGvOut,s6Step110HeadFvOut] :=
  hmrRows_owned_drop s6Step110HeadFvAfter [s6Step110HeadGOut,s6Step110HeadFOut,s6Step110HeadGvOut,s6Step110HeadFvOut] 2 s6Step110HeadBank_outgoingOwned

private theorem s6Step110HeadGv_distinct : (s6Step110HeadGvRow.sign::s6Step110HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step110HeadGv_owned : (s6Step110HeadGvRow.sign::s6Step110HeadGvRow.payload).toFinset⊆s6Step110HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step110HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step110HeadGv_reserved : s6Step110HeadGvBefore.reserve s6Step110HeadGvFresh.toFinset=some s6Step110HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step110HeadGvFresh,arenaWires]
  · norm_num [s6Step110HeadGvBefore,s6Step110HeadFAfter,s6Step110HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step110HeadGvAfter,s6Step110HeadGvBefore,s6Step110HeadFAfter,s6Step110HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step110HeadGv_checked : planRowResizeLog s6Step110HeadGvBefore s6Step110HeadGvRow 70 s6Step110HeadGvFresh=
    some (s6Step110HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 907],775⟩,growRow 775 s6Step110HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step110HeadGvBefore s6Step110HeadGvAfter s6Step110HeadGvRow 70 s6Step110HeadGvFresh
    s6Step110HeadGv_distinct s6Step110HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step110HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step110HeadGvRow.payload++s6Step110HeadGvFresh) s6Step110HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 907],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step110HeadBank_rows : planWindowRowsLog s6Step110HeadGBefore [(s6Step110HeadGRow,215),(s6Step110HeadFRow,215),(s6Step110HeadGvRow,70),(s6Step110HeadFvRow,70)] [s6Step110HeadGFresh,s6Step110HeadFFresh,s6Step110HeadGvFresh,s6Step110HeadFvFresh]=
    some (s6Step110HeadFvAfter,[s6Step110HeadGOut,s6Step110HeadFOut,s6Step110HeadGvOut,s6Step110HeadFvOut],(growRow 777 s6Step110HeadGFresh ++ (growRow 795 s6Step110HeadFFresh ++ (growRow 775 s6Step110HeadGvFresh ++ (growRow 776 s6Step110HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step110HeadFvAfter [] []=some (s6Step110HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step110HeadFvBefore s6Step110HeadFvAfter s6Step110HeadFvAfter
    s6Step110HeadFvRow s6Step110HeadFvOut 70 s6Step110HeadFvFresh [] [] []
    (growRow 776 s6Step110HeadFvFresh) ([]) s6Step110HeadFv_Incoming s6Step110HeadFv_checked h4 s6Step110HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step110HeadGvBefore s6Step110HeadGvAfter s6Step110HeadFvAfter
    s6Step110HeadGvRow s6Step110HeadGvOut 70 s6Step110HeadGvFresh [(s6Step110HeadFvRow,70)] [s6Step110HeadFvFresh] [s6Step110HeadFvOut]
    (growRow 775 s6Step110HeadGvFresh) ((growRow 776 s6Step110HeadFvFresh ++ [])) s6Step110HeadGv_Incoming s6Step110HeadGv_checked h3 s6Step110HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step110HeadFBefore s6Step110HeadFAfter s6Step110HeadFvAfter
    s6Step110HeadFRow s6Step110HeadFOut 215 s6Step110HeadFFresh [(s6Step110HeadGvRow,70),(s6Step110HeadFvRow,70)] [s6Step110HeadGvFresh,s6Step110HeadFvFresh] [s6Step110HeadGvOut,s6Step110HeadFvOut]
    (growRow 795 s6Step110HeadFFresh) ((growRow 775 s6Step110HeadGvFresh ++ (growRow 776 s6Step110HeadFvFresh ++ []))) s6Step110HeadF_Incoming s6Step110HeadF_checked h2 s6Step110HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step110HeadGBefore s6Step110HeadGAfter s6Step110HeadFvAfter
    s6Step110HeadGRow s6Step110HeadGOut 215 s6Step110HeadGFresh [(s6Step110HeadFRow,215),(s6Step110HeadGvRow,70),(s6Step110HeadFvRow,70)] [s6Step110HeadFFresh,s6Step110HeadGvFresh,s6Step110HeadFvFresh] [s6Step110HeadFOut,s6Step110HeadGvOut,s6Step110HeadFvOut]
    (growRow 777 s6Step110HeadGFresh) ((growRow 795 s6Step110HeadFFresh ++ (growRow 775 s6Step110HeadGvFresh ++ (growRow 776 s6Step110HeadFvFresh ++ [])))) s6Step110HeadG_Incoming s6Step110HeadG_checked h1 s6Step110HeadG_Outgoing
  exact h0

private theorem s6Step110HeadBank_checked : compileHmrBankResizeLog .headroom s6Step110HeadGBefore ⟨s6Step110HeadFRow,s6Step110HeadGRow,s6Step110HeadFvRow,s6Step110HeadGvRow⟩ ⟨215,215,70,70⟩ [s6Step110HeadGFresh,s6Step110HeadFFresh,s6Step110HeadGvFresh,s6Step110HeadFvFresh]=
    some (s6Step110HeadFvAfter,⟨s6Step110HeadFOut,s6Step110HeadGOut,s6Step110HeadFvOut,s6Step110HeadGvOut⟩,(growRow 777 s6Step110HeadGFresh ++ (growRow 795 s6Step110HeadFFresh ++ (growRow 775 s6Step110HeadGvFresh ++ (growRow 776 s6Step110HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step110HeadBank_rows]
  rfl

private theorem s6Step110Front_checked : compileHmrSourceFrontLog s6Step110EntryFBefore s6Step110FrontBank 214 69 ⟨213,213,69,69⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step110FrontLog=some s6Step110FrontPlan := by
  have pairEq : s6Step110FrontPair=⟨s6Step110HeadFRow,s6Step110HeadGRow,s6Step110HeadFvRow,s6Step110HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step110FrontHead=⟨s6Step110ExitFRow,s6Step110ExitGRow,s6Step110ExitFvRow,s6Step110ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step110Add0A=s6Step110FrontHead.f.wires := by decide +kernel
  have gEq : s6Step110Add0B=s6Step110FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step110Add1A=s6Step110FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step110Add1B=s6Step110FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step110EntryFBefore s6Step110FrontBank 214 69 ⟨213,213,69,69⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step110FrontLog s6Step110FrontPlan
  · exact s6Step110Front_entry
  · exact s6Step110EntryBank_checked
  · exact s6Step110Front_sigma
  · rfl
  · exact s6Step110Front_branch
  · rfl
  · simpa only [s6Step110FrontPlan,pairEq] using s6Step110HeadBank_checked
  · simpa only [s6Step110FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step110F4_checked
  · exact s6Step110Counter_checked
  · rfl
  · simpa only [s6Step110FrontPlan,headEq] using s6Step110ExitBank_checked

private theorem s6Step110Complete_explicit_checked : compileHmrEarlyStepLog s6Step110EntryFBefore s6Step110FrontBank 214 69 ⟨213,213,69,69⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885] 37 s6Step110CompleteLog=some s6Step110CompletePlan := by
  let Q := s6Step110EarlyControlPlan
  have hq := s6Step110EarlyControl_plan_checked
  have fv1 : s6Step110CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step110CompleteOut.fv.payload[2]?.getD s6Step110CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step110CompleteOut.fv.payload[3]?.getD s6Step110CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step110CompleteOut.fv.payload[4]?.getD s6Step110CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step110EntryFBefore s6Step110EarlyControlArena s6Step110FrontBank 214 69 ⟨213,213,69,69⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885] 37 s6Step110CompleteLog s6Step110FrontPlan Q
    s6Step110Front_checked s6Step110Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step110Complete_owned s6Step110Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step110EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885] 769 793 s6Step110CompleteOut.fv.second (s6Step110CompleteOut.fv.payload[2]?.getD s6Step110CompleteOut.fv.sign) (s6Step110CompleteOut.fv.payload[3]?.getD s6Step110CompleteOut.fv.sign) (s6Step110CompleteOut.fv.payload[4]?.getD s6Step110CompleteOut.fv.sign) 823 37 s6Step110EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep110Arena : Arena := s6Step110EntryFBefore
def s6PrivateStep110Bank : WindowBank := s6Step110FrontBank
def s6PrivateStep110Spec : HmrSourceWalkStepLog := ⟨214,69,⟨213,213,69,69⟩,37,.early s6Step110CompleteLog⟩
def s6PrivateStep110Plan : HmrSourceStepPlan := .early s6Step110CompletePlan
theorem s6PrivateStep110_source : s6PrivateStep110Spec=s6ObservedLogs96[14] := rfl
theorem s6PrivateStep110_checked : compileHmrSourceStepLog s6PrivateStep110Arena s6PrivateStep110Bank
    s6PrivateStep110Spec.fgWidth s6PrivateStep110Spec.vWidth s6PrivateStep110Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885]
    6 498 110 s6PrivateStep110Spec.need none s6PrivateStep110Spec.log=some s6PrivateStep110Plan := by
  change compileHmrSourceStepLog s6Step110EntryFBefore s6Step110FrontBank 214 69 ⟨213,213,69,69⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885] 6 498 110 37 none (.early s6Step110CompleteLog)=some (.early s6Step110CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 110<498)]
  rw [s6Step110Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
