import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep97
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

private def s6Step99CompleteMoves : List (Wire × Wire) := [(856,475),(873,476)]

private def s6Step99EarlyControlLog : HmrEarlyControlLog := ⟨[873, 856, 907, 803, 879],[857],[890],[876, 865, 796, 891, 903, 885],[]⟩

private def s6Step99FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [890, 876, 865], [], [907, 803]],[[796], [857], [879], [784]],[[], [], [], []]⟩,[874],[813],[891],[903],[885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 885, 791]⟩

private def s6Step99CompleteLog : HmrEarlyStepLog := ⟨s6Step99FrontLog,s6Step99CompleteMoves,s6Step99EarlyControlLog⟩

private def s6Step99ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474],795⟩

private def s6Step99ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 784],776⟩

private def s6Step99ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],777⟩

private def s6Step99ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779],775⟩

private def s6Step99FrontOut : WindowBank := ⟨s6Step99ExitFOut,s6Step99ExitGOut,s6Step99ExitFvOut,s6Step99ExitGvOut⟩

private def s6Step99CompleteOut : WindowBank := s6Step99FrontOut.repacked s6Step99CompleteMoves

private def s6Step99EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(874,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step99EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,876),(877,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step99EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step99EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step99EarlyControlPositiveArena,[857],s6Step99EarlyControlEqualityArena,[890],⟨⟨874,false⟩,[⟨⟨857,false⟩,890⟩]⟩⟩

private def s6Step99EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step99EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step99EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(874,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step99EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step99EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step99EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step99EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,873⟩,⟨⟨772,false⟩,856⟩,⟨⟨771,false⟩,907⟩,⟨⟨770,false⟩,803⟩,⟨⟨769,false⟩,879⟩]⟩

private def s6Step99EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step99EarlyControlZeroArena,s6Step99EarlyControlZeroPlan,s6Step99EarlyControlClassPlan,s6Step99EarlyControlFlagArena,s6Step99EarlyControlFittedArena,s6Step99EarlyControlHistoryArena,s6Step99EarlyControlSigmaArena,s6Step99EarlyControlOutputArena,s6Step99EarlyControlLog⟩

private def s6Step99CounterWork : List Wire := [891, 903, 885, 791]

private theorem s6Step99Counter_bounded : s6Step99CounterWork.toFinset⊆arenaWires := by norm_num [s6Step99CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step99HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step99CounterDuring : Arena := ⟨s6Step99HeadFvAfter.live∪s6Step99CounterWork.toFinset,Finset.union_subset s6Step99HeadFvAfter.bounded s6Step99Counter_bounded⟩

private def s6Step99EntryFFresh : List Wire := []

private def s6Step99EntryFvFresh : List Wire := []

private def s6Step99EntryGFresh : List Wire := [890, 876, 865]

private def s6Step99EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step99EntryGvFresh : List Wire := [907, 803]

private def s6Step99ExitFExtra : List Wire := [475, 476, 857]

private def s6Step99ExitGExtra : List Wire := [890, 876, 865, 796]

private def s6Step99ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,475),(477,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step99ExitGvExtra : List Wire := [907, 803, 879]

private def s6Step99Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step99Add0Work : List Wire := [885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step99Add0_bounded : s6Step99Add0Work.toFinset⊆arenaWires := by
  have h : s6Step99Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step99Add0During : Arena := ⟨s6Step99Add0Arena.live∪s6Step99Add0Work.toFinset,Finset.union_subset s6Step99Add0Arena.bounded s6Step99Add0_bounded⟩

private def s6Step99Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step99Add1Work : List Wire := [885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step99Add1_bounded : s6Step99Add1Work.toFinset⊆arenaWires := by
  have h : s6Step99Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step99Add1During : Arena := ⟨s6Step99Add1Arena.live∪s6Step99Add1Work.toFinset,Finset.union_subset s6Step99Add1Arena.bounded s6Step99Add1_bounded⟩

private def s6Step99F4FlagArena : Arena := ⟨s6Step99HeadFvAfter.live∪{891},Finset.union_subset s6Step99HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step99F4Plan : HmrHybridF4Plan := ⟨s6Step99F4FlagArena,[891],s6Step99Add0Arena,[903],s6Step99Add0During,s6Step99Add0Work,s6Step99Add1During,s6Step99Add1Work⟩

private def s6Step99HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 857],795⟩

private def s6Step99HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 784],776⟩

private def s6Step99HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 890, 876, 865, 796],777⟩

private def s6Step99HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 907, 803, 879],775⟩

private def s6Step99FrontHead : WindowBank := ⟨s6Step99HeadFOut,s6Step99HeadGOut,s6Step99HeadFvOut,s6Step99HeadGvOut⟩

private def s6Step99EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476],795⟩

private def s6Step99EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922],776⟩

private def s6Step99EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 890, 876, 865],777⟩

private def s6Step99EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 907, 803],775⟩

private def s6Step99FrontPair : WindowBank := ⟨s6Step99EntryFOut,s6Step99EntryGOut,s6Step99EntryFvOut,s6Step99EntryGvOut⟩

private def s6Step99FrontSigmaArena : Arena := ⟨s6Step99EntryGvAfter.live∪{874},Finset.union_subset s6Step99EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step99HeadFFresh : List Wire := [857]

private def s6Step99HeadFvFresh : List Wire := [784]

private def s6Step99HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step99HeadGFresh : List Wire := [796]

private def s6Step99HeadGvFresh : List Wire := [879]

private def s6Step99FrontPlan : HmrSourceFront := ⟨s6Step99EntryGvAfter,s6Step99FrontPair,(growRow 795 s6Step99EntryFFresh ++ (growRow 777 s6Step99EntryGFresh ++ (growRow 776 s6Step99EntryFvFresh ++ (growRow 775 s6Step99EntryGvFresh ++ [])))),s6Step99FrontSigmaArena,[874],s6Step99HeadGBefore,[813],
  s6Step99HeadFvAfter,s6Step99FrontHead,(growRow 777 s6Step99HeadGFresh ++ (growRow 795 s6Step99HeadFFresh ++ (growRow 775 s6Step99HeadGvFresh ++ (growRow 776 s6Step99HeadFvFresh ++ [])))),s6Step99F4Plan,s6Step99CounterDuring,s6Step99CounterWork,s6Step99ExitGvAfter,s6Step99FrontOut,(shrinkRow 777 s6Step99ExitGExtra ++ (shrinkRow 795 s6Step99ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step99ExitGvExtra ++ []))))⟩

private def s6Step99CompletePlan : HmrEarlyStepPlan := ⟨s6Step99FrontPlan,s6Step99EarlyControlArena,s6Step99EarlyControlPlan,s6Step99CompleteMoves⟩

private theorem s6Step99Complete_apart : List.Disjoint (s6Step99CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [874, 813, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] := by
  have nd : ((s6Step99CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[874, 813, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step99Complete_owned : (s6Step99CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step99EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step99EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(874,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step99CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,476),(477,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step99CompleteRelocationMove0Borrowed : Arena := ⟨s6Step99ExitGvAfter.live∪{475},Finset.union_subset s6Step99ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step99CompleteRelocationMove1Borrowed : Arena := ⟨s6Step99CompleteRelocationMove0After.live∪{476},Finset.union_subset s6Step99CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step99CompleteRelocation_move0_owned : 856∈s6Step99ExitGvAfter.live := by norm_num [s6Step99ExitGvAfter,arenaWires]

private theorem s6Step99CompleteRelocation_move0_reserve : s6Step99ExitGvAfter.reserve {475}=some s6Step99CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step99ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step99CompleteRelocation_move0_retire : s6Step99CompleteRelocationMove0Borrowed.retireSet {856}=s6Step99CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step99CompleteRelocationMove0Borrowed s6Step99CompleteRelocationMove0After {856}
  change s6Step99CompleteRelocationMove0After.live=(s6Step99ExitGvAfter.live∪{475})\{856}
  apply hmrArena_update_of_filter_check s6Step99ExitGvAfter s6Step99CompleteRelocationMove0After (fun q => ([(0,475),(477,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,476),(477,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [475] [856] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step99CompleteRelocation_move1_owned : 873∈s6Step99CompleteRelocationMove0After.live := by norm_num [s6Step99CompleteRelocationMove0After,arenaWires]

private theorem s6Step99CompleteRelocation_move1_reserve : s6Step99CompleteRelocationMove0After.reserve {476}=some s6Step99CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step99CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step99CompleteRelocation_move1_retire : s6Step99CompleteRelocationMove1Borrowed.retireSet {873}=s6Step99EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step99CompleteRelocationMove1Borrowed s6Step99EarlyControlArena {873}
  change s6Step99EarlyControlArena.live=(s6Step99CompleteRelocationMove0After.live∪{476})\{873}
  apply hmrArena_update_of_filter_check s6Step99CompleteRelocationMove0After s6Step99EarlyControlArena (fun q => ([(0,476),(477,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(874,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [476] [873] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step99CompleteRelocation_checked : s6Step99ExitGvAfter.checkRepack [(856,475),(873,476)]=some s6Step99EarlyControlArena := by
  have tail2 : s6Step99EarlyControlArena.checkRepack []=some s6Step99EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step99CompleteRelocationMove0After s6Step99CompleteRelocationMove1Borrowed s6Step99EarlyControlArena s6Step99EarlyControlArena 873 476 []
    s6Step99CompleteRelocation_move1_owned s6Step99CompleteRelocation_move1_reserve s6Step99CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step99ExitGvAfter s6Step99CompleteRelocationMove0Borrowed s6Step99CompleteRelocationMove0After s6Step99EarlyControlArena 856 475 [(873,476)]
    s6Step99CompleteRelocation_move0_owned s6Step99CompleteRelocation_move0_reserve s6Step99CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step99Complete_repack : s6Step99ExitGvAfter.checkRepack s6Step99CompleteMoves=some s6Step99EarlyControlArena := by
  simpa only [s6Step99CompleteMoves] using s6Step99CompleteRelocation_checked

private theorem s6Step99EarlyControl_branchOwned : ([813] : List Wire).toFinset⊆s6Step99EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step99EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step99EarlyControl_branch : compileHmrBranchRetirement s6Step99EarlyControlSigmaArena 813=some s6Step99EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step99EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step99EarlyControlSigmaArena s6Step99EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [813] rfl rfl
    decide +kernel

private theorem s6Step99EarlyControl_classEqualityBorrow : s6Step99EarlyControlPositiveArena.checkBorrow (([874, 857] : List Wire).length-1) s6Step99EarlyControlLog.classWork=some s6Step99EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step99EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step99EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step99EarlyControlPositiveArena s6Step99EarlyControlEqualityArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,876),(877,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step99EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step99EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step99EarlyControl_classEqualityOwned : ([874, 857] : List Wire).toFinset⊆s6Step99EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step99EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step99EarlyControl_classEquality : compileHmrEqualityLog s6Step99EarlyControlPositiveArena [874, 857] 0 s6Step99EarlyControlLog.classWork=some (s6Step99EarlyControlEqualityArena,s6Step99EarlyControlLog.classWork,s6Step99EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step99EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step99EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step99EarlyControl_classOwned : ([769, 879, 874] : List Wire).toFinset⊆s6Step99EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step99EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step99EarlyControl_positiveBorrow : s6Step99EarlyControlZeroArena.checkBorrow (1) s6Step99EarlyControlLog.positiveWork=some s6Step99EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step99EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step99EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step99EarlyControlZeroArena s6Step99EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step99EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step99EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step99EarlyControl_class : compileHmrSourceClassLog s6Step99EarlyControlZeroArena false 769 s6Step99EarlyControlZeroPlan.top 0 874 s6Step99EarlyControlLog.positiveWork s6Step99EarlyControlLog.classWork=some s6Step99EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step99EarlyControlClassPlan s6Step99EarlyControlZeroArena false 769 s6Step99EarlyControlZeroPlan.top 0 874
  constructor
  · decide +kernel
  · exact s6Step99EarlyControl_classOwned
  · exact s6Step99EarlyControl_positiveBorrow
  · exact s6Step99EarlyControl_classEquality

private theorem s6Step99EarlyControl_entryRecordOwned : ([813, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).toFinset⊆s6Step99EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step99EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(874,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step99EarlyControl_entrySigmaOwned : ([874, 254] : List Wire).toFinset⊆s6Step99EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step99EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(874,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step99EarlyControl_fitBorrow : s6Step99EarlyControlFlagArena.checkBorrow ((34-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).length)) s6Step99EarlyControlLog.recordFresh=some s6Step99EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step99EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step99EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step99EarlyControlFittedArena,s6Step99EarlyControlFlagArena,s6Step99EarlyControlLog,arenaWires]

private theorem s6Step99EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).toFinset⊆s6Step99EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step99EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step99EarlyControl_fit : compileHmrRecordGrowLog s6Step99EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 34 s6Step99EarlyControlLog.recordFresh=some s6Step99EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step99EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step99EarlyControl_fitBorrow

private theorem s6Step99EarlyControl_flagsBorrow : s6Step99EarlyControlEqualityArena.checkBorrow (6) s6Step99EarlyControlLog.flagWork=some s6Step99EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step99EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step99EarlyControlEqualityArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,876),(877,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step99EarlyControlEqualityArena s6Step99EarlyControlFlagArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,876),(877,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step99EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step99EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step99EarlyControl_flagsOwned : ([890, 253, 252, 251] : List Wire).toFinset⊆s6Step99EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step99EarlyControlEqualityArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,876),(877,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step99EarlyControl_flags : compileHmrFlagsLog s6Step99EarlyControlClassPlan.equalityArena s6Step99EarlyControlClassPlan.equality.top 253 252 251 s6Step99EarlyControlLog.flagWork=some s6Step99EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step99EarlyControl_flagsOwned⟩
  · exact s6Step99EarlyControl_flagsBorrow

private theorem s6Step99EarlyControl_historyBorrow : s6Step99EarlyControlArena.checkBorrow ((34-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).length)) s6Step99EarlyControlLog.recordFresh=some s6Step99EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step99EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step99EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(874,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step99EarlyControlArena s6Step99EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(874,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(874,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step99EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step99EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step99EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] : List Wire).toFinset⊆s6Step99EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step99EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(874,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step99EarlyControl_history : compileHmrRecordGrowLog s6Step99EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 34 s6Step99EarlyControlLog.recordFresh=some s6Step99EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step99EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step99EarlyControl_historyBorrow

private theorem s6Step99EarlyControl_sigmaOwned : ([254, 874] : List Wire).toFinset⊆s6Step99EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step99EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(874,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step99EarlyControl_sigmaReleaseOwned : ([874] : List Wire).toFinset⊆s6Step99EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step99EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(874,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step99EarlyControl_sigmaRelease : s6Step99EarlyControlHistoryArena.release {874} (fun _ => false)=some s6Step99EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step99EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step99EarlyControlHistoryArena s6Step99EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(874,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [874] rfl rfl
    decide +kernel

private theorem s6Step99EarlyControl_sigma : compileHmrSigmaDropLog s6Step99EarlyControlHistoryArena false 0 0 254 874 []=some s6Step99EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step99EarlyControl_sigmaOwned⟩
  · exact s6Step99EarlyControl_sigmaRelease

private theorem s6Step99EarlyControl_zeroBorrow : s6Step99EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step99EarlyControlLog.zeroWork=some s6Step99EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step99EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step99EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(874,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step99EarlyControlArena s6Step99EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(874,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step99EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step99EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step99EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step99EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step99EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,856),(858,865),(866,873),(874,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step99EarlyControl_zero : compileHmrEqualityLog s6Step99EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step99EarlyControlLog.zeroWork=some (s6Step99EarlyControlZeroArena,s6Step99EarlyControlLog.zeroWork,s6Step99EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step99EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step99EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step99EarlyControl_logged : s6Step99EarlyControlPlan.Logged s6Step99EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 874 254 253 252 251 813 34 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step99EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step99EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step99EarlyControl_zero
  · exact s6Step99EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step99EarlyControl_flags
  · exact s6Step99EarlyControl_fit
  · exact s6Step99EarlyControl_history
  · exact s6Step99EarlyControl_sigma
  · exact s6Step99EarlyControl_branch

private theorem s6Step99EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step99EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 874 254 253 252 251 813 34 s6Step99EarlyControlLog=some s6Step99EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step99EarlyControlPlan s6Step99EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 874 254 253 252 251 813 34 s6Step99EarlyControl_logged

private def s6Step99EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step99EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476],795⟩

private def s6Step99EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922],776⟩

private def s6Step99EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],777⟩

private def s6Step99EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779],775⟩

private def s6Step99FrontBank : WindowBank := ⟨s6Step99EntryFRow,s6Step99EntryGRow,s6Step99EntryFvRow,s6Step99EntryGvRow⟩

private def s6Step99Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 857, 795]

private def s6Step99Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 890, 876, 865, 796, 777]

private def s6Step99Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 784, 776]

private def s6Step99Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 907, 803, 879, 775]

private theorem s6Step99Counter_apart : Disjoint s6Step99HeadFvAfter.live s6Step99CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step99HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step99Counter_borrowed : s6Step99HeadFvAfter.checkBorrow 4 s6Step99CounterWork=some s6Step99CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step99HeadFvAfter s6Step99CounterDuring s6Step99CounterWork.toFinset s6Step99Counter_bounded s6Step99Counter_apart rfl

private theorem s6Step99Counter_owned : (874::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step99HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step99HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step99Counter_checked : compileHmrCounterStepLog s6Step99HeadFvAfter true 874 [774, 773, 772, 771, 770, 769] s6Step99CounterWork=some s6Step99CounterDuring := by
  have owned : ∀q∈874::[774, 773, 772, 771, 770, 769],q∈s6Step99HeadFvAfter.live := fun q hq => s6Step99Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step99Counter_borrowed

private def s6Step99EntryFAfter : Arena := s6Step99EntryFBefore

private theorem s6Step99EntryBank_incomingDistinct : ([s6Step99EntryFRow,s6Step99EntryGRow,s6Step99EntryFvRow,s6Step99EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step99EntryF_Incoming : rowsOwned s6Step99EntryFBefore [s6Step99EntryFRow,s6Step99EntryGRow,s6Step99EntryFvRow,s6Step99EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step99EntryFRow,s6Step99EntryGRow,s6Step99EntryFvRow,s6Step99EntryGvRow] 0 s6Step99EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step99EntryFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step99EntryBank_outgoingOwned : rowsOwned s6Step99EntryGvAfter [s6Step99EntryFOut,s6Step99EntryGOut,s6Step99EntryFvOut,s6Step99EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step99EntryGvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step99EntryF_Outgoing : rowsOwned s6Step99EntryGvAfter [s6Step99EntryFOut,s6Step99EntryGOut,s6Step99EntryFvOut,s6Step99EntryGvOut] :=
  hmrRows_owned_drop s6Step99EntryGvAfter [s6Step99EntryFOut,s6Step99EntryGOut,s6Step99EntryFvOut,s6Step99EntryGvOut] 0 s6Step99EntryBank_outgoingOwned

private theorem s6Step99EntryF_distinct : (s6Step99EntryFRow.sign::s6Step99EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step99EntryF_owned : (s6Step99EntryFRow.sign::s6Step99EntryFRow.payload).toFinset⊆s6Step99EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step99EntryFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step99EntryF_reserved : s6Step99EntryFBefore.reserve s6Step99EntryFFresh.toFinset=some s6Step99EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step99EntryFFresh,arenaWires]
  · norm_num [s6Step99EntryFBefore,s6Step99EntryFFresh,arenaWires]
  · simp only [s6Step99EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step99EntryF_checked : planRowResizeLog s6Step99EntryFBefore s6Step99EntryFRow 221 s6Step99EntryFFresh=
    some (s6Step99EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476],795⟩,growRow 795 s6Step99EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step99EntryFBefore s6Step99EntryFAfter s6Step99EntryFRow 221 s6Step99EntryFFresh
    s6Step99EntryF_distinct s6Step99EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step99EntryF_reserved
  have rowEq : WindowRow.mk (s6Step99EntryFRow.payload++s6Step99EntryFFresh) s6Step99EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step99EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step99EntryFvAfter : Arena := s6Step99EntryGAfter

private def s6Step99EntryFvBefore : Arena := s6Step99EntryGAfter

private theorem s6Step99EntryFv_Incoming : rowsOwned s6Step99EntryFvBefore [s6Step99EntryFvRow,s6Step99EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step99EntryFRow,s6Step99EntryGRow,s6Step99EntryFvRow,s6Step99EntryGvRow] 2 s6Step99EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step99EntryFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step99EntryFv_Outgoing : rowsOwned s6Step99EntryGvAfter [s6Step99EntryFvOut,s6Step99EntryGvOut] :=
  hmrRows_owned_drop s6Step99EntryGvAfter [s6Step99EntryFOut,s6Step99EntryGOut,s6Step99EntryFvOut,s6Step99EntryGvOut] 2 s6Step99EntryBank_outgoingOwned

private theorem s6Step99EntryFv_distinct : (s6Step99EntryFvRow.sign::s6Step99EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step99EntryFv_owned : (s6Step99EntryFvRow.sign::s6Step99EntryFvRow.payload).toFinset⊆s6Step99EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step99EntryFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step99EntryFv_reserved : s6Step99EntryFvBefore.reserve s6Step99EntryFvFresh.toFinset=some s6Step99EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step99EntryFvFresh,arenaWires]
  · norm_num [s6Step99EntryFvBefore,s6Step99EntryGAfter,s6Step99EntryFvFresh,arenaWires]
  · simp only [s6Step99EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step99EntryFv_checked : planRowResizeLog s6Step99EntryFvBefore s6Step99EntryFvRow 64 s6Step99EntryFvFresh=
    some (s6Step99EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922],776⟩,growRow 776 s6Step99EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step99EntryFvBefore s6Step99EntryFvAfter s6Step99EntryFvRow 64 s6Step99EntryFvFresh
    s6Step99EntryFv_distinct s6Step99EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step99EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step99EntryFvRow.payload++s6Step99EntryFvFresh) s6Step99EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step99EntryGBefore : Arena := s6Step99EntryFBefore

private theorem s6Step99EntryG_Incoming : rowsOwned s6Step99EntryGBefore [s6Step99EntryGRow,s6Step99EntryFvRow,s6Step99EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step99EntryFRow,s6Step99EntryGRow,s6Step99EntryFvRow,s6Step99EntryGvRow] 1 s6Step99EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step99EntryGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step99EntryG_Outgoing : rowsOwned s6Step99EntryGvAfter [s6Step99EntryGOut,s6Step99EntryFvOut,s6Step99EntryGvOut] :=
  hmrRows_owned_drop s6Step99EntryGvAfter [s6Step99EntryFOut,s6Step99EntryGOut,s6Step99EntryFvOut,s6Step99EntryGvOut] 1 s6Step99EntryBank_outgoingOwned

private theorem s6Step99EntryG_distinct : (s6Step99EntryGRow.sign::s6Step99EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step99EntryG_owned : (s6Step99EntryGRow.sign::s6Step99EntryGRow.payload).toFinset⊆s6Step99EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step99EntryGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step99EntryG_reserved : s6Step99EntryGBefore.reserve s6Step99EntryGFresh.toFinset=some s6Step99EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step99EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step99EntryGBefore,s6Step99EntryFBefore,s6Step99EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step99EntryGBefore s6Step99EntryGAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step99EntryGFresh rfl rfl
    · norm_num [s6Step99EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step99EntryG_checked : planRowResizeLog s6Step99EntryGBefore s6Step99EntryGRow 221 s6Step99EntryGFresh=
    some (s6Step99EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 890, 876, 865],777⟩,growRow 777 s6Step99EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step99EntryGBefore s6Step99EntryGAfter s6Step99EntryGRow 221 s6Step99EntryGFresh
    s6Step99EntryG_distinct s6Step99EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step99EntryG_reserved
  have rowEq : WindowRow.mk (s6Step99EntryGRow.payload++s6Step99EntryGFresh) s6Step99EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 890, 876, 865],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step99EntryGvBefore : Arena := s6Step99EntryGAfter

private theorem s6Step99EntryGv_Incoming : rowsOwned s6Step99EntryGvBefore [s6Step99EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step99EntryFRow,s6Step99EntryGRow,s6Step99EntryFvRow,s6Step99EntryGvRow] 3 s6Step99EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step99EntryGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step99EntryGv_Outgoing : rowsOwned s6Step99EntryGvAfter [s6Step99EntryGvOut] :=
  hmrRows_owned_drop s6Step99EntryGvAfter [s6Step99EntryFOut,s6Step99EntryGOut,s6Step99EntryFvOut,s6Step99EntryGvOut] 3 s6Step99EntryBank_outgoingOwned

private theorem s6Step99EntryGv_distinct : (s6Step99EntryGvRow.sign::s6Step99EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step99EntryGv_owned : (s6Step99EntryGvRow.sign::s6Step99EntryGvRow.payload).toFinset⊆s6Step99EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step99EntryGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step99EntryGv_reserved : s6Step99EntryGvBefore.reserve s6Step99EntryGvFresh.toFinset=some s6Step99EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step99EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step99EntryGvBefore,s6Step99EntryGAfter,s6Step99EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step99EntryGvBefore s6Step99EntryGvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step99EntryGvFresh rfl rfl
    · norm_num [s6Step99EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step99EntryGv_checked : planRowResizeLog s6Step99EntryGvBefore s6Step99EntryGvRow 64 s6Step99EntryGvFresh=
    some (s6Step99EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 907, 803],775⟩,growRow 775 s6Step99EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step99EntryGvBefore s6Step99EntryGvAfter s6Step99EntryGvRow 64 s6Step99EntryGvFresh
    s6Step99EntryGv_distinct s6Step99EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step99EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step99EntryGvRow.payload++s6Step99EntryGvFresh) s6Step99EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 907, 803],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step99EntryBank_rows : planWindowRowsLog s6Step99EntryFBefore [(s6Step99EntryFRow,221),(s6Step99EntryGRow,221),(s6Step99EntryFvRow,64),(s6Step99EntryGvRow,64)] [s6Step99EntryFFresh,s6Step99EntryGFresh,s6Step99EntryFvFresh,s6Step99EntryGvFresh]=
    some (s6Step99EntryGvAfter,[s6Step99EntryFOut,s6Step99EntryGOut,s6Step99EntryFvOut,s6Step99EntryGvOut],(growRow 795 s6Step99EntryFFresh ++ (growRow 777 s6Step99EntryGFresh ++ (growRow 776 s6Step99EntryFvFresh ++ (growRow 775 s6Step99EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step99EntryGvAfter [] []=some (s6Step99EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step99EntryGvBefore s6Step99EntryGvAfter s6Step99EntryGvAfter
    s6Step99EntryGvRow s6Step99EntryGvOut 64 s6Step99EntryGvFresh [] [] []
    (growRow 775 s6Step99EntryGvFresh) ([]) s6Step99EntryGv_Incoming s6Step99EntryGv_checked h4 s6Step99EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step99EntryFvBefore s6Step99EntryFvAfter s6Step99EntryGvAfter
    s6Step99EntryFvRow s6Step99EntryFvOut 64 s6Step99EntryFvFresh [(s6Step99EntryGvRow,64)] [s6Step99EntryGvFresh] [s6Step99EntryGvOut]
    (growRow 776 s6Step99EntryFvFresh) ((growRow 775 s6Step99EntryGvFresh ++ [])) s6Step99EntryFv_Incoming s6Step99EntryFv_checked h3 s6Step99EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step99EntryGBefore s6Step99EntryGAfter s6Step99EntryGvAfter
    s6Step99EntryGRow s6Step99EntryGOut 221 s6Step99EntryGFresh [(s6Step99EntryFvRow,64),(s6Step99EntryGvRow,64)] [s6Step99EntryFvFresh,s6Step99EntryGvFresh] [s6Step99EntryFvOut,s6Step99EntryGvOut]
    (growRow 777 s6Step99EntryGFresh) ((growRow 776 s6Step99EntryFvFresh ++ (growRow 775 s6Step99EntryGvFresh ++ []))) s6Step99EntryG_Incoming s6Step99EntryG_checked h2 s6Step99EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step99EntryFBefore s6Step99EntryFAfter s6Step99EntryGvAfter
    s6Step99EntryFRow s6Step99EntryFOut 221 s6Step99EntryFFresh [(s6Step99EntryGRow,221),(s6Step99EntryFvRow,64),(s6Step99EntryGvRow,64)] [s6Step99EntryGFresh,s6Step99EntryFvFresh,s6Step99EntryGvFresh] [s6Step99EntryGOut,s6Step99EntryFvOut,s6Step99EntryGvOut]
    (growRow 795 s6Step99EntryFFresh) ((growRow 777 s6Step99EntryGFresh ++ (growRow 776 s6Step99EntryFvFresh ++ (growRow 775 s6Step99EntryGvFresh ++ [])))) s6Step99EntryF_Incoming s6Step99EntryF_checked h1 s6Step99EntryF_Outgoing
  exact h0

private theorem s6Step99EntryBank_checked : compileHmrBankResizeLog .entry s6Step99EntryFBefore ⟨s6Step99EntryFRow,s6Step99EntryGRow,s6Step99EntryFvRow,s6Step99EntryGvRow⟩ ⟨221,221,64,64⟩ [s6Step99EntryFFresh,s6Step99EntryGFresh,s6Step99EntryFvFresh,s6Step99EntryGvFresh]=
    some (s6Step99EntryGvAfter,⟨s6Step99EntryFOut,s6Step99EntryGOut,s6Step99EntryFvOut,s6Step99EntryGvOut⟩,(growRow 795 s6Step99EntryFFresh ++ (growRow 777 s6Step99EntryGFresh ++ (growRow 776 s6Step99EntryFvFresh ++ (growRow 775 s6Step99EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step99EntryBank_rows]
  rfl

private def s6Step99ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,475),(477,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step99ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step99ExitFBefore : Arena := s6Step99ExitGAfter

private def s6Step99ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 857],795⟩

private def s6Step99ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 784],776⟩

private def s6Step99ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 890, 876, 865, 796],777⟩

private def s6Step99ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 907, 803, 879],775⟩

private theorem s6Step99ExitBank_incomingDistinct : ([s6Step99ExitGRow,s6Step99ExitFRow,s6Step99ExitFvRow,s6Step99ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step99ExitF_Incoming : rowsOwned s6Step99ExitFBefore [s6Step99ExitFRow,s6Step99ExitFvRow,s6Step99ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step99ExitGRow,s6Step99ExitFRow,s6Step99ExitFvRow,s6Step99ExitGvRow] 1 s6Step99ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step99ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step99ExitBank_outgoingOwned : rowsOwned s6Step99ExitGvAfter [s6Step99ExitGOut,s6Step99ExitFOut,s6Step99ExitFvOut,s6Step99ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step99ExitGvAfter (fun q => ([(0,475),(477,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step99ExitF_Outgoing : rowsOwned s6Step99ExitGvAfter [s6Step99ExitFOut,s6Step99ExitFvOut,s6Step99ExitGvOut] :=
  hmrRows_owned_drop s6Step99ExitGvAfter [s6Step99ExitGOut,s6Step99ExitFOut,s6Step99ExitFvOut,s6Step99ExitGvOut] 1 s6Step99ExitBank_outgoingOwned

private theorem s6Step99ExitF_distinct : (s6Step99ExitFRow.sign::s6Step99ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step99ExitF_owned : (s6Step99ExitFRow.sign::s6Step99ExitFRow.payload).toFinset⊆s6Step99ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step99ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step99ExitF_retired : s6Step99ExitFBefore.retireSet s6Step99ExitFExtra.toFinset=s6Step99ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step99ExitFBefore s6Step99ExitFAfter s6Step99ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step99ExitFBefore s6Step99ExitFAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,475),(477,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step99ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step99ExitF_checked : planRowResizeLog s6Step99ExitFBefore s6Step99ExitFRow 219 []=
    some (s6Step99ExitFAfter,s6Step99ExitFOut,shrinkRow 795 s6Step99ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step99ExitFBefore s6Step99ExitFRow 219 s6Step99ExitF_distinct s6Step99ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step99ExitFRow.payload.take 219) s6Step99ExitFRow.sign=s6Step99ExitFOut := by decide +kernel
  have hi : s6Step99ExitFRow.payload.drop 219=s6Step99ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step99ExitF_retired] at result
  exact result

private def s6Step99ExitFvAfter : Arena := s6Step99ExitFAfter

private def s6Step99ExitFvBefore : Arena := s6Step99ExitFAfter

private theorem s6Step99ExitFv_Incoming : rowsOwned s6Step99ExitFvBefore [s6Step99ExitFvRow,s6Step99ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step99ExitGRow,s6Step99ExitFRow,s6Step99ExitFvRow,s6Step99ExitGvRow] 2 s6Step99ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step99ExitFvBefore (fun q => ([(0,475),(477,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step99ExitFv_Outgoing : rowsOwned s6Step99ExitGvAfter [s6Step99ExitFvOut,s6Step99ExitGvOut] :=
  hmrRows_owned_drop s6Step99ExitGvAfter [s6Step99ExitGOut,s6Step99ExitFOut,s6Step99ExitFvOut,s6Step99ExitGvOut] 2 s6Step99ExitBank_outgoingOwned

private theorem s6Step99ExitFv_distinct : (s6Step99ExitFvRow.sign::s6Step99ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step99ExitFv_owned : (s6Step99ExitFvRow.sign::s6Step99ExitFvRow.payload).toFinset⊆s6Step99ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step99ExitFvBefore (fun q => ([(0,475),(477,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step99ExitFv_reserved : s6Step99ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step99ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step99ExitFv_checked : planRowResizeLog s6Step99ExitFvBefore s6Step99ExitFvRow 65 []=
    some (s6Step99ExitFvAfter,s6Step99ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step99ExitFvBefore s6Step99ExitFvAfter s6Step99ExitFvRow 65 []
    s6Step99ExitFv_distinct s6Step99ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step99ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step99ExitFvRow.payload++[]) s6Step99ExitFvRow.sign=s6Step99ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step99ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step99ExitG_Incoming : rowsOwned s6Step99ExitGBefore [s6Step99ExitGRow,s6Step99ExitFRow,s6Step99ExitFvRow,s6Step99ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step99ExitGRow,s6Step99ExitFRow,s6Step99ExitFvRow,s6Step99ExitGvRow] 0 s6Step99ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step99ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step99ExitG_Outgoing : rowsOwned s6Step99ExitGvAfter [s6Step99ExitGOut,s6Step99ExitFOut,s6Step99ExitFvOut,s6Step99ExitGvOut] :=
  hmrRows_owned_drop s6Step99ExitGvAfter [s6Step99ExitGOut,s6Step99ExitFOut,s6Step99ExitFvOut,s6Step99ExitGvOut] 0 s6Step99ExitBank_outgoingOwned

private theorem s6Step99ExitG_distinct : (s6Step99ExitGRow.sign::s6Step99ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step99ExitG_owned : (s6Step99ExitGRow.sign::s6Step99ExitGRow.payload).toFinset⊆s6Step99ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step99ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step99ExitG_retired : s6Step99ExitGBefore.retireSet s6Step99ExitGExtra.toFinset=s6Step99ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step99ExitGBefore s6Step99ExitGAfter s6Step99ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step99ExitGBefore s6Step99ExitGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step99ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step99ExitG_checked : planRowResizeLog s6Step99ExitGBefore s6Step99ExitGRow 218 []=
    some (s6Step99ExitGAfter,s6Step99ExitGOut,shrinkRow 777 s6Step99ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step99ExitGBefore s6Step99ExitGRow 218 s6Step99ExitG_distinct s6Step99ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step99ExitGRow.payload.take 218) s6Step99ExitGRow.sign=s6Step99ExitGOut := by decide +kernel
  have hi : s6Step99ExitGRow.payload.drop 218=s6Step99ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step99ExitG_retired] at result
  exact result

private def s6Step99ExitGvBefore : Arena := s6Step99ExitFAfter

private theorem s6Step99ExitGv_Incoming : rowsOwned s6Step99ExitGvBefore [s6Step99ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step99ExitGRow,s6Step99ExitFRow,s6Step99ExitFvRow,s6Step99ExitGvRow] 3 s6Step99ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step99ExitGvBefore (fun q => ([(0,475),(477,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step99ExitGv_Outgoing : rowsOwned s6Step99ExitGvAfter [s6Step99ExitGvOut] :=
  hmrRows_owned_drop s6Step99ExitGvAfter [s6Step99ExitGOut,s6Step99ExitFOut,s6Step99ExitFvOut,s6Step99ExitGvOut] 3 s6Step99ExitBank_outgoingOwned

private theorem s6Step99ExitGv_distinct : (s6Step99ExitGvRow.sign::s6Step99ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step99ExitGv_owned : (s6Step99ExitGvRow.sign::s6Step99ExitGvRow.payload).toFinset⊆s6Step99ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step99ExitGvBefore (fun q => ([(0,475),(477,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step99ExitGv_retired : s6Step99ExitGvBefore.retireSet s6Step99ExitGvExtra.toFinset=s6Step99ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step99ExitGvBefore s6Step99ExitGvAfter s6Step99ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step99ExitGvBefore s6Step99ExitGvAfter (fun q => ([(0,475),(477,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,885),(886,890),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,475),(477,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step99ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step99ExitGv_checked : planRowResizeLog s6Step99ExitGvBefore s6Step99ExitGvRow 62 []=
    some (s6Step99ExitGvAfter,s6Step99ExitGvOut,shrinkRow 775 s6Step99ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step99ExitGvBefore s6Step99ExitGvRow 62 s6Step99ExitGv_distinct s6Step99ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step99ExitGvRow.payload.take 62) s6Step99ExitGvRow.sign=s6Step99ExitGvOut := by decide +kernel
  have hi : s6Step99ExitGvRow.payload.drop 62=s6Step99ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step99ExitGv_retired] at result
  exact result

private theorem s6Step99ExitBank_rows : planWindowRowsLog s6Step99ExitGBefore [(s6Step99ExitGRow,218),(s6Step99ExitFRow,219),(s6Step99ExitFvRow,65),(s6Step99ExitGvRow,62)] [[],[],[],[]]=
    some (s6Step99ExitGvAfter,[s6Step99ExitGOut,s6Step99ExitFOut,s6Step99ExitFvOut,s6Step99ExitGvOut],(shrinkRow 777 s6Step99ExitGExtra ++ (shrinkRow 795 s6Step99ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step99ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step99ExitGvAfter [] []=some (s6Step99ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step99ExitGvBefore s6Step99ExitGvAfter s6Step99ExitGvAfter
    s6Step99ExitGvRow s6Step99ExitGvOut 62 [] [] [] []
    (shrinkRow 775 s6Step99ExitGvExtra) ([]) s6Step99ExitGv_Incoming s6Step99ExitGv_checked h4 s6Step99ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step99ExitFvBefore s6Step99ExitFvAfter s6Step99ExitGvAfter
    s6Step99ExitFvRow s6Step99ExitFvOut 65 [] [(s6Step99ExitGvRow,62)] [[]] [s6Step99ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step99ExitGvExtra ++ [])) s6Step99ExitFv_Incoming s6Step99ExitFv_checked h3 s6Step99ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step99ExitFBefore s6Step99ExitFAfter s6Step99ExitGvAfter
    s6Step99ExitFRow s6Step99ExitFOut 219 [] [(s6Step99ExitFvRow,65),(s6Step99ExitGvRow,62)] [[],[]] [s6Step99ExitFvOut,s6Step99ExitGvOut]
    (shrinkRow 795 s6Step99ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step99ExitGvExtra ++ []))) s6Step99ExitF_Incoming s6Step99ExitF_checked h2 s6Step99ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step99ExitGBefore s6Step99ExitGAfter s6Step99ExitGvAfter
    s6Step99ExitGRow s6Step99ExitGOut 218 [] [(s6Step99ExitFRow,219),(s6Step99ExitFvRow,65),(s6Step99ExitGvRow,62)] [[],[],[]] [s6Step99ExitFOut,s6Step99ExitFvOut,s6Step99ExitGvOut]
    (shrinkRow 777 s6Step99ExitGExtra) ((shrinkRow 795 s6Step99ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step99ExitGvExtra ++ [])))) s6Step99ExitG_Incoming s6Step99ExitG_checked h1 s6Step99ExitG_Outgoing
  exact h0

private theorem s6Step99ExitBank_checked : compileHmrBankResizeLog .exit s6Step99ExitGBefore ⟨s6Step99ExitFRow,s6Step99ExitGRow,s6Step99ExitFvRow,s6Step99ExitGvRow⟩ ⟨219,218,65,62⟩ [[],[],[],[]]=
    some (s6Step99ExitGvAfter,⟨s6Step99ExitFOut,s6Step99ExitGOut,s6Step99ExitFvOut,s6Step99ExitGvOut⟩,(shrinkRow 777 s6Step99ExitGExtra ++ (shrinkRow 795 s6Step99ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step99ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step99ExitBank_rows]
  rfl

private theorem s6Step99Add0_apart : Disjoint s6Step99Add0Arena.live s6Step99Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step99Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step99Add0_card : s6Step99Add0Arena.live.card=878 := by
  decide +kernel

private theorem s6Step99Add0_borrowed : s6Step99Add0Arena.checkBorrow (hmrHybridCount s6Step99Add0Arena s6Step99Add0B.length) s6Step99Add0Work=some s6Step99Add0During := by
  have len : s6Step99Add0Work.length=hmrHybridCount s6Step99Add0Arena s6Step99Add0B.length := by
    rw [hmrHybridCount,s6Step99Add0_card]
    decide +kernel
  have nd : s6Step99Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step99Add0Arena s6Step99Add0During s6Step99Add0Work.toFinset s6Step99Add0_bounded s6Step99Add0_apart rfl

private theorem s6Step99Add0_distinct : (891::813::903::(s6Step99Add0A++s6Step99Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step99Add0_owned : (891::813::903::(s6Step99Add0A++s6Step99Add0B)).toFinset⊆s6Step99Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step99Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step99Add0_checked : compileHmrHybridCinLog s6Step99Add0Arena 813 891 903 s6Step99Add0A s6Step99Add0B s6Step99Add0Work=some s6Step99Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step99Add0Arena s6Step99Add0During 813 891 903 s6Step99Add0A s6Step99Add0B s6Step99Add0Work
    (by decide +kernel) (by decide +kernel) s6Step99Add0_distinct
    (fun q hq => s6Step99Add0_owned (List.mem_toFinset.mpr hq)) s6Step99Add0_borrowed

private theorem s6Step99Add1_apart : Disjoint s6Step99Add1Arena.live s6Step99Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step99Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step99Add1_card : s6Step99Add1Arena.live.card=878 := by
  decide +kernel

private theorem s6Step99Add1_borrowed : s6Step99Add1Arena.checkBorrow (hmrHybridCount s6Step99Add1Arena s6Step99Add1B.length) s6Step99Add1Work=some s6Step99Add1During := by
  have len : s6Step99Add1Work.length=hmrHybridCount s6Step99Add1Arena s6Step99Add1B.length := by
    rw [hmrHybridCount,s6Step99Add1_card]
    decide +kernel
  have nd : s6Step99Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step99Add1Arena s6Step99Add1During s6Step99Add1Work.toFinset s6Step99Add1_bounded s6Step99Add1_apart rfl

private theorem s6Step99Add1_distinct : (891::813::903::(s6Step99Add1A++s6Step99Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step99Add1_owned : (891::813::903::(s6Step99Add1A++s6Step99Add1B)).toFinset⊆s6Step99Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step99Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step99Add1_checked : compileHmrHybridCinLog s6Step99Add1Arena 813 891 903 s6Step99Add1A s6Step99Add1B s6Step99Add1Work=some s6Step99Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step99Add1Arena s6Step99Add1During 813 891 903 s6Step99Add1A s6Step99Add1B s6Step99Add1Work
    (by decide +kernel) (by decide +kernel) s6Step99Add1_distinct
    (fun q hq => s6Step99Add1_owned (List.mem_toFinset.mpr hq)) s6Step99Add1_borrowed

private theorem s6Step99F4_apart : Disjoint (s6Step99Add0A++s6Step99Add0B).toFinset (s6Step99Add1A++s6Step99Add1B).toFinset := by
  have nd : ((s6Step99Add0A++s6Step99Add0B)++(s6Step99Add1A++s6Step99Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step99F4_carry : s6Step99F4FlagArena.checkBorrow 1 [903]=some s6Step99Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step99F4FlagArena,s6Step99HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step99F4FlagArena,s6Step99HeadFvAfter,s6Step99Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step99F4_distinct : (874::813::891::903::((s6Step99Add0A++s6Step99Add1A)++(s6Step99Add0B++s6Step99Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step99F4_flag : s6Step99HeadFvAfter.checkBorrow 1 [891]=some s6Step99F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step99HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step99F4_owned : (874::813::((s6Step99Add0A++s6Step99Add1A)++(s6Step99Add0B++s6Step99Add1B))).toFinset⊆s6Step99HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step99HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step99F4_checked : compileHmrHybridF4Log s6Step99HeadFvAfter 874 813 s6Step99Add0A s6Step99Add0B s6Step99Add1A s6Step99Add1B [891] [903] s6Step99Add0Work s6Step99Add1Work=some s6Step99F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step99HeadFvAfter s6Step99F4FlagArena s6Step99Add0Arena s6Step99Add0During s6Step99Add1During 874 813
    s6Step99Add0A s6Step99Add0B s6Step99Add1A s6Step99Add1B [891] [903] s6Step99Add0Work s6Step99Add1Work
    (fun q hq => s6Step99F4_owned (List.mem_toFinset.mpr hq)) s6Step99F4_flag s6Step99F4_carry
    s6Step99F4_distinct s6Step99F4_apart s6Step99Add0_checked s6Step99Add1_checked

private theorem s6Step99Front_branch : s6Step99FrontSigmaArena.checkBorrow 1 [813]=some s6Step99HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step99FrontSigmaArena,s6Step99EntryGvAfter,arenaWires]
  · change s6Step99HeadGBefore.live=(s6Step99EntryGvAfter.live∪{874})∪{813}
    apply hmrArena_union_pair_of_filter_check s6Step99EntryGvAfter s6Step99HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,874),(875,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 874 813 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step99Front_entry : HmrFrontEntryValid s6Step99EntryFBefore s6Step99FrontBank 221 64 ⟨219,218,65,62⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step99FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step99EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step99EntryFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,865),(866,874),(875,876),(877,879),(880,885),(886,890),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step99FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step99Front_sigma : s6Step99EntryGvAfter.checkBorrow 1 [874]=some s6Step99FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step99EntryGvAfter,arenaWires]
  · rfl

private def s6Step99HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step99HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step99HeadFBefore : Arena := s6Step99HeadGAfter

private def s6Step99HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476],795⟩

private def s6Step99HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922],776⟩

private def s6Step99HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 890, 876, 865],777⟩

private def s6Step99HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 907, 803],775⟩

private theorem s6Step99HeadBank_incomingDistinct : ([s6Step99HeadGRow,s6Step99HeadFRow,s6Step99HeadGvRow,s6Step99HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step99HeadF_Incoming : rowsOwned s6Step99HeadFBefore [s6Step99HeadFRow,s6Step99HeadGvRow,s6Step99HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step99HeadGRow,s6Step99HeadFRow,s6Step99HeadGvRow,s6Step99HeadFvRow] 1 s6Step99HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step99HeadFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step99HeadBank_outgoingOwned : rowsOwned s6Step99HeadFvAfter [s6Step99HeadGOut,s6Step99HeadFOut,s6Step99HeadGvOut,s6Step99HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step99HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step99HeadF_Outgoing : rowsOwned s6Step99HeadFvAfter [s6Step99HeadFOut,s6Step99HeadGvOut,s6Step99HeadFvOut] :=
  hmrRows_owned_drop s6Step99HeadFvAfter [s6Step99HeadGOut,s6Step99HeadFOut,s6Step99HeadGvOut,s6Step99HeadFvOut] 1 s6Step99HeadBank_outgoingOwned

private theorem s6Step99HeadF_distinct : (s6Step99HeadFRow.sign::s6Step99HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step99HeadF_owned : (s6Step99HeadFRow.sign::s6Step99HeadFRow.payload).toFinset⊆s6Step99HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step99HeadFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step99HeadF_reserved : s6Step99HeadFBefore.reserve s6Step99HeadFFresh.toFinset=some s6Step99HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step99HeadFFresh,arenaWires]
  · norm_num [s6Step99HeadFBefore,s6Step99HeadGAfter,s6Step99HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step99HeadFBefore s6Step99HeadFAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step99HeadFFresh rfl rfl
    · norm_num [s6Step99HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step99HeadF_checked : planRowResizeLog s6Step99HeadFBefore s6Step99HeadFRow 222 s6Step99HeadFFresh=
    some (s6Step99HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 857],795⟩,growRow 795 s6Step99HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step99HeadFBefore s6Step99HeadFAfter s6Step99HeadFRow 222 s6Step99HeadFFresh
    s6Step99HeadF_distinct s6Step99HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step99HeadF_reserved
  have rowEq : WindowRow.mk (s6Step99HeadFRow.payload++s6Step99HeadFFresh) s6Step99HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 857],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step99HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step99HeadFvBefore : Arena := s6Step99HeadGvAfter

private theorem s6Step99HeadFv_Incoming : rowsOwned s6Step99HeadFvBefore [s6Step99HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step99HeadGRow,s6Step99HeadFRow,s6Step99HeadGvRow,s6Step99HeadFvRow] 3 s6Step99HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step99HeadFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step99HeadFv_Outgoing : rowsOwned s6Step99HeadFvAfter [s6Step99HeadFvOut] :=
  hmrRows_owned_drop s6Step99HeadFvAfter [s6Step99HeadGOut,s6Step99HeadFOut,s6Step99HeadGvOut,s6Step99HeadFvOut] 3 s6Step99HeadBank_outgoingOwned

private theorem s6Step99HeadFv_distinct : (s6Step99HeadFvRow.sign::s6Step99HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step99HeadFv_owned : (s6Step99HeadFvRow.sign::s6Step99HeadFvRow.payload).toFinset⊆s6Step99HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step99HeadFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step99HeadFv_reserved : s6Step99HeadFvBefore.reserve s6Step99HeadFvFresh.toFinset=some s6Step99HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step99HeadFvFresh,arenaWires]
  · norm_num [s6Step99HeadFvBefore,s6Step99HeadGvAfter,s6Step99HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step99HeadFvBefore s6Step99HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step99HeadFvFresh rfl rfl
    · norm_num [s6Step99HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step99HeadFv_checked : planRowResizeLog s6Step99HeadFvBefore s6Step99HeadFvRow 65 s6Step99HeadFvFresh=
    some (s6Step99HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 784],776⟩,growRow 776 s6Step99HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step99HeadFvBefore s6Step99HeadFvAfter s6Step99HeadFvRow 65 s6Step99HeadFvFresh
    s6Step99HeadFv_distinct s6Step99HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step99HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step99HeadFvRow.payload++s6Step99HeadFvFresh) s6Step99HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 823, 863, 793, 789, 805, 892, 886, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 784],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step99HeadG_Incoming : rowsOwned s6Step99HeadGBefore [s6Step99HeadGRow,s6Step99HeadFRow,s6Step99HeadGvRow,s6Step99HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step99HeadGRow,s6Step99HeadFRow,s6Step99HeadGvRow,s6Step99HeadFvRow] 0 s6Step99HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step99HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step99HeadG_Outgoing : rowsOwned s6Step99HeadFvAfter [s6Step99HeadGOut,s6Step99HeadFOut,s6Step99HeadGvOut,s6Step99HeadFvOut] :=
  hmrRows_owned_drop s6Step99HeadFvAfter [s6Step99HeadGOut,s6Step99HeadFOut,s6Step99HeadGvOut,s6Step99HeadFvOut] 0 s6Step99HeadBank_outgoingOwned

private theorem s6Step99HeadG_distinct : (s6Step99HeadGRow.sign::s6Step99HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step99HeadG_owned : (s6Step99HeadGRow.sign::s6Step99HeadGRow.payload).toFinset⊆s6Step99HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step99HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step99HeadG_reserved : s6Step99HeadGBefore.reserve s6Step99HeadGFresh.toFinset=some s6Step99HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step99HeadGFresh,arenaWires]
  · norm_num [s6Step99HeadGBefore,s6Step99HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step99HeadGBefore s6Step99HeadGAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,857),(858,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step99HeadGFresh rfl rfl
    · norm_num [s6Step99HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step99HeadG_checked : planRowResizeLog s6Step99HeadGBefore s6Step99HeadGRow 222 s6Step99HeadGFresh=
    some (s6Step99HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 890, 876, 865, 796],777⟩,growRow 777 s6Step99HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step99HeadGBefore s6Step99HeadGAfter s6Step99HeadGRow 222 s6Step99HeadGFresh
    s6Step99HeadG_distinct s6Step99HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step99HeadG_reserved
  have rowEq : WindowRow.mk (s6Step99HeadGRow.payload++s6Step99HeadGFresh) s6Step99HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 890, 876, 865, 796],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step99HeadGvBefore : Arena := s6Step99HeadFAfter

private theorem s6Step99HeadGv_Incoming : rowsOwned s6Step99HeadGvBefore [s6Step99HeadGvRow,s6Step99HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step99HeadGRow,s6Step99HeadFRow,s6Step99HeadGvRow,s6Step99HeadFvRow] 2 s6Step99HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step99HeadGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step99HeadGv_Outgoing : rowsOwned s6Step99HeadFvAfter [s6Step99HeadGvOut,s6Step99HeadFvOut] :=
  hmrRows_owned_drop s6Step99HeadFvAfter [s6Step99HeadGOut,s6Step99HeadFOut,s6Step99HeadGvOut,s6Step99HeadFvOut] 2 s6Step99HeadBank_outgoingOwned

private theorem s6Step99HeadGv_distinct : (s6Step99HeadGvRow.sign::s6Step99HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step99HeadGv_owned : (s6Step99HeadGvRow.sign::s6Step99HeadGvRow.payload).toFinset⊆s6Step99HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step99HeadGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step99HeadGv_reserved : s6Step99HeadGvBefore.reserve s6Step99HeadGvFresh.toFinset=some s6Step99HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step99HeadGvFresh,arenaWires]
  · norm_num [s6Step99HeadGvBefore,s6Step99HeadFAfter,s6Step99HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step99HeadGvBefore s6Step99HeadGvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,879),(880,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,849),(850,885),(886,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step99HeadGvFresh rfl rfl
    · norm_num [s6Step99HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step99HeadGv_checked : planRowResizeLog s6Step99HeadGvBefore s6Step99HeadGvRow 65 s6Step99HeadGvFresh=
    some (s6Step99HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 907, 803, 879],775⟩,growRow 775 s6Step99HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step99HeadGvBefore s6Step99HeadGvAfter s6Step99HeadGvRow 65 s6Step99HeadGvFresh
    s6Step99HeadGv_distinct s6Step99HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step99HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step99HeadGvRow.payload++s6Step99HeadGvFresh) s6Step99HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 856, 873, 845, 864, 828, 818, 882, 868, 880, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 907, 803, 879],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step99HeadBank_rows : planWindowRowsLog s6Step99HeadGBefore [(s6Step99HeadGRow,222),(s6Step99HeadFRow,222),(s6Step99HeadGvRow,65),(s6Step99HeadFvRow,65)] [s6Step99HeadGFresh,s6Step99HeadFFresh,s6Step99HeadGvFresh,s6Step99HeadFvFresh]=
    some (s6Step99HeadFvAfter,[s6Step99HeadGOut,s6Step99HeadFOut,s6Step99HeadGvOut,s6Step99HeadFvOut],(growRow 777 s6Step99HeadGFresh ++ (growRow 795 s6Step99HeadFFresh ++ (growRow 775 s6Step99HeadGvFresh ++ (growRow 776 s6Step99HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step99HeadFvAfter [] []=some (s6Step99HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step99HeadFvBefore s6Step99HeadFvAfter s6Step99HeadFvAfter
    s6Step99HeadFvRow s6Step99HeadFvOut 65 s6Step99HeadFvFresh [] [] []
    (growRow 776 s6Step99HeadFvFresh) ([]) s6Step99HeadFv_Incoming s6Step99HeadFv_checked h4 s6Step99HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step99HeadGvBefore s6Step99HeadGvAfter s6Step99HeadFvAfter
    s6Step99HeadGvRow s6Step99HeadGvOut 65 s6Step99HeadGvFresh [(s6Step99HeadFvRow,65)] [s6Step99HeadFvFresh] [s6Step99HeadFvOut]
    (growRow 775 s6Step99HeadGvFresh) ((growRow 776 s6Step99HeadFvFresh ++ [])) s6Step99HeadGv_Incoming s6Step99HeadGv_checked h3 s6Step99HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step99HeadFBefore s6Step99HeadFAfter s6Step99HeadFvAfter
    s6Step99HeadFRow s6Step99HeadFOut 222 s6Step99HeadFFresh [(s6Step99HeadGvRow,65),(s6Step99HeadFvRow,65)] [s6Step99HeadGvFresh,s6Step99HeadFvFresh] [s6Step99HeadGvOut,s6Step99HeadFvOut]
    (growRow 795 s6Step99HeadFFresh) ((growRow 775 s6Step99HeadGvFresh ++ (growRow 776 s6Step99HeadFvFresh ++ []))) s6Step99HeadF_Incoming s6Step99HeadF_checked h2 s6Step99HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step99HeadGBefore s6Step99HeadGAfter s6Step99HeadFvAfter
    s6Step99HeadGRow s6Step99HeadGOut 222 s6Step99HeadGFresh [(s6Step99HeadFRow,222),(s6Step99HeadGvRow,65),(s6Step99HeadFvRow,65)] [s6Step99HeadFFresh,s6Step99HeadGvFresh,s6Step99HeadFvFresh] [s6Step99HeadFOut,s6Step99HeadGvOut,s6Step99HeadFvOut]
    (growRow 777 s6Step99HeadGFresh) ((growRow 795 s6Step99HeadFFresh ++ (growRow 775 s6Step99HeadGvFresh ++ (growRow 776 s6Step99HeadFvFresh ++ [])))) s6Step99HeadG_Incoming s6Step99HeadG_checked h1 s6Step99HeadG_Outgoing
  exact h0

private theorem s6Step99HeadBank_checked : compileHmrBankResizeLog .headroom s6Step99HeadGBefore ⟨s6Step99HeadFRow,s6Step99HeadGRow,s6Step99HeadFvRow,s6Step99HeadGvRow⟩ ⟨222,222,65,65⟩ [s6Step99HeadGFresh,s6Step99HeadFFresh,s6Step99HeadGvFresh,s6Step99HeadFvFresh]=
    some (s6Step99HeadFvAfter,⟨s6Step99HeadFOut,s6Step99HeadGOut,s6Step99HeadFvOut,s6Step99HeadGvOut⟩,(growRow 777 s6Step99HeadGFresh ++ (growRow 795 s6Step99HeadFFresh ++ (growRow 775 s6Step99HeadGvFresh ++ (growRow 776 s6Step99HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step99HeadBank_rows]
  rfl

private theorem s6Step99Front_checked : compileHmrSourceFrontLog s6Step99EntryFBefore s6Step99FrontBank 221 64 ⟨219,218,65,62⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step99FrontLog=some s6Step99FrontPlan := by
  have pairEq : s6Step99FrontPair=⟨s6Step99HeadFRow,s6Step99HeadGRow,s6Step99HeadFvRow,s6Step99HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step99FrontHead=⟨s6Step99ExitFRow,s6Step99ExitGRow,s6Step99ExitFvRow,s6Step99ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step99Add0A=s6Step99FrontHead.f.wires := by decide +kernel
  have gEq : s6Step99Add0B=s6Step99FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step99Add1A=s6Step99FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step99Add1B=s6Step99FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step99EntryFBefore s6Step99FrontBank 221 64 ⟨219,218,65,62⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step99FrontLog s6Step99FrontPlan
  · exact s6Step99Front_entry
  · exact s6Step99EntryBank_checked
  · exact s6Step99Front_sigma
  · rfl
  · exact s6Step99Front_branch
  · rfl
  · simpa only [s6Step99FrontPlan,pairEq] using s6Step99HeadBank_checked
  · simpa only [s6Step99FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step99F4_checked
  · exact s6Step99Counter_checked
  · rfl
  · simpa only [s6Step99FrontPlan,headEq] using s6Step99ExitBank_checked

private theorem s6Step99Complete_explicit_checked : compileHmrEarlyStepLog s6Step99EntryFBefore s6Step99FrontBank 221 64 ⟨219,218,65,62⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 34 s6Step99CompleteLog=some s6Step99CompletePlan := by
  let Q := s6Step99EarlyControlPlan
  have hq := s6Step99EarlyControl_plan_checked
  have fv1 : s6Step99CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step99CompleteOut.fv.payload[2]?.getD s6Step99CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step99CompleteOut.fv.payload[3]?.getD s6Step99CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step99CompleteOut.fv.payload[4]?.getD s6Step99CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step99EntryFBefore s6Step99EarlyControlArena s6Step99FrontBank 221 64 ⟨219,218,65,62⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 34 s6Step99CompleteLog s6Step99FrontPlan Q
    s6Step99Front_checked s6Step99Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step99Complete_owned s6Step99Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step99EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 769 874 s6Step99CompleteOut.fv.second (s6Step99CompleteOut.fv.payload[2]?.getD s6Step99CompleteOut.fv.sign) (s6Step99CompleteOut.fv.payload[3]?.getD s6Step99CompleteOut.fv.sign) (s6Step99CompleteOut.fv.payload[4]?.getD s6Step99CompleteOut.fv.sign) 813 34 s6Step99EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep99Arena : Arena := s6Step99EntryFBefore
def s6PrivateStep99Bank : WindowBank := s6Step99FrontBank
def s6PrivateStep99Spec : HmrSourceWalkStepLog := ⟨221,64,⟨219,218,65,62⟩,34,.early s6Step99CompleteLog⟩
def s6PrivateStep99Plan : HmrSourceStepPlan := .early s6Step99CompletePlan
theorem s6PrivateStep99_source : s6PrivateStep99Spec=s6ObservedLogs96[3] := rfl
theorem s6PrivateStep99_checked : compileHmrSourceStepLog s6PrivateStep99Arena s6PrivateStep99Bank
    s6PrivateStep99Spec.fgWidth s6PrivateStep99Spec.vWidth s6PrivateStep99Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847]
    6 498 99 s6PrivateStep99Spec.need none s6PrivateStep99Spec.log=some s6PrivateStep99Plan := by
  change compileHmrSourceStepLog s6Step99EntryFBefore s6Step99FrontBank 221 64 ⟨219,218,65,62⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] 6 498 99 34 none (.early s6Step99CompleteLog)=some (.early s6Step99CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 99<498)]
  rw [s6Step99Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
