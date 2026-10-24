import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep176
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

private def s6Step178CompleteMoves : List (Wire × Wire) := [(814,179)]

private def s6Step178EarlyControlLog : HmrEarlyControlLog := ⟨[814, 876, 865, 868, 888],[830],[907],[863, 890, 891, 903, 791, 825],[]⟩

private def s6Step178FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[888], [868], [876], [865]],[[], [], [], []]⟩,[803],[880],[830],[907],[863, 890, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[863, 890, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 907, 863, 890]⟩

private def s6Step178CompleteLog : HmrEarlyStepLog := ⟨s6Step178FrontLog,s6Step178CompleteMoves,s6Step178EarlyControlLog⟩

private def s6Step178ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435],795⟩

private def s6Step178ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857],776⟩

private def s6Step178ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178],777⟩

private def s6Step178ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922],775⟩

private def s6Step178FrontOut : WindowBank := ⟨s6Step178ExitFOut,s6Step178ExitGOut,s6Step178ExitFvOut,s6Step178ExitGvOut⟩

private def s6Step178CompleteOut : WindowBank := s6Step178FrontOut.repacked s6Step178CompleteMoves

private def s6Step178EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step178EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step178EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step178EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step178EarlyControlPositiveArena,[830],s6Step178EarlyControlEqualityArena,[907],⟨⟨803,false⟩,[⟨⟨830,false⟩,907⟩]⟩⟩

private def s6Step178EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step178EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step178EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step178EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,880),(881,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step178EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step178EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step178EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,814⟩,⟨⟨772,false⟩,876⟩,⟨⟨771,false⟩,865⟩,⟨⟨770,false⟩,868⟩,⟨⟨769,false⟩,888⟩]⟩

private def s6Step178EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step178EarlyControlZeroArena,s6Step178EarlyControlZeroPlan,s6Step178EarlyControlClassPlan,s6Step178EarlyControlFlagArena,s6Step178EarlyControlFittedArena,s6Step178EarlyControlHistoryArena,s6Step178EarlyControlSigmaArena,s6Step178EarlyControlOutputArena,s6Step178EarlyControlLog⟩

private def s6Step178CounterWork : List Wire := [830, 907, 863, 890]

private theorem s6Step178Counter_bounded : s6Step178CounterWork.toFinset⊆arenaWires := by norm_num [s6Step178CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step178HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step178CounterDuring : Arena := ⟨s6Step178HeadFvAfter.live∪s6Step178CounterWork.toFinset,Finset.union_subset s6Step178HeadFvAfter.bounded s6Step178Counter_bounded⟩

private def s6Step178EntryFFresh : List Wire := []

private def s6Step178EntryFvFresh : List Wire := []

private def s6Step178EntryGFresh : List Wire := []

private def s6Step178EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,880),(881,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step178EntryGvAfter : Arena := s6Step178EntryFBefore

private def s6Step178EntryGvFresh : List Wire := []

private def s6Step178ExitFExtra : List Wire := [868]

private def s6Step178ExitFvExtra : List Wire := [865]

private def s6Step178ExitGExtra : List Wire := [179, 888]

private def s6Step178ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,179),(180,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step178ExitGvExtra : List Wire := [876]

private def s6Step178Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step178Add0Work : List Wire := [863, 890, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step178Add0_bounded : s6Step178Add0Work.toFinset⊆arenaWires := by
  have h : s6Step178Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step178Add0During : Arena := ⟨s6Step178Add0Arena.live∪s6Step178Add0Work.toFinset,Finset.union_subset s6Step178Add0Arena.bounded s6Step178Add0_bounded⟩

private def s6Step178Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step178Add1Work : List Wire := [863, 890, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step178Add1_bounded : s6Step178Add1Work.toFinset⊆arenaWires := by
  have h : s6Step178Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step178Add1During : Arena := ⟨s6Step178Add1Arena.live∪s6Step178Add1Work.toFinset,Finset.union_subset s6Step178Add1Arena.bounded s6Step178Add1_bounded⟩

private def s6Step178F4FlagArena : Arena := ⟨s6Step178HeadFvAfter.live∪{830},Finset.union_subset s6Step178HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step178F4Plan : HmrHybridF4Plan := ⟨s6Step178F4FlagArena,[830],s6Step178Add0Arena,[907],s6Step178Add0During,s6Step178Add0Work,s6Step178Add1During,s6Step178Add1Work⟩

private def s6Step178HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 868],795⟩

private def s6Step178HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 865],776⟩

private def s6Step178HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 888],777⟩

private def s6Step178HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 876],775⟩

private def s6Step178FrontHead : WindowBank := ⟨s6Step178HeadFOut,s6Step178HeadGOut,s6Step178HeadFvOut,s6Step178HeadGvOut⟩

private def s6Step178EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435],795⟩

private def s6Step178EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857],776⟩

private def s6Step178EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179],777⟩

private def s6Step178EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922],775⟩

private def s6Step178FrontPair : WindowBank := ⟨s6Step178EntryFOut,s6Step178EntryGOut,s6Step178EntryFvOut,s6Step178EntryGvOut⟩

private def s6Step178FrontSigmaArena : Arena := ⟨s6Step178EntryGvAfter.live∪{803},Finset.union_subset s6Step178EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step178HeadFFresh : List Wire := [868]

private def s6Step178HeadFvFresh : List Wire := [865]

private def s6Step178HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step178HeadGFresh : List Wire := [888]

private def s6Step178HeadGvFresh : List Wire := [876]

private def s6Step178FrontPlan : HmrSourceFront := ⟨s6Step178EntryGvAfter,s6Step178FrontPair,(growRow 795 s6Step178EntryFFresh ++ (growRow 777 s6Step178EntryGFresh ++ (growRow 776 s6Step178EntryFvFresh ++ (growRow 775 s6Step178EntryGvFresh ++ [])))),s6Step178FrontSigmaArena,[803],s6Step178HeadGBefore,[880],
  s6Step178HeadFvAfter,s6Step178FrontHead,(growRow 777 s6Step178HeadGFresh ++ (growRow 795 s6Step178HeadFFresh ++ (growRow 775 s6Step178HeadGvFresh ++ (growRow 776 s6Step178HeadFvFresh ++ [])))),s6Step178F4Plan,s6Step178CounterDuring,s6Step178CounterWork,s6Step178ExitGvAfter,s6Step178FrontOut,(shrinkRow 777 s6Step178ExitGExtra ++ (shrinkRow 795 s6Step178ExitFExtra ++ (shrinkRow 776 s6Step178ExitFvExtra ++ (shrinkRow 775 s6Step178ExitGvExtra ++ []))))⟩

private def s6Step178CompletePlan : HmrEarlyStepPlan := ⟨s6Step178FrontPlan,s6Step178EarlyControlArena,s6Step178EarlyControlPlan,s6Step178CompleteMoves⟩

private theorem s6Step178Complete_apart : List.Disjoint (s6Step178CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [803, 880, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step178CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[803, 880, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step178Complete_owned : (s6Step178CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step178EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step178EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step178CompleteRelocationMove0Borrowed : Arena := ⟨s6Step178ExitGvAfter.live∪{179},Finset.union_subset s6Step178ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step178CompleteRelocation_move0_owned : 814∈s6Step178ExitGvAfter.live := by norm_num [s6Step178ExitGvAfter,arenaWires]

private theorem s6Step178CompleteRelocation_move0_reserve : s6Step178ExitGvAfter.reserve {179}=some s6Step178CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step178ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step178CompleteRelocation_move0_retire : s6Step178CompleteRelocationMove0Borrowed.retireSet {814}=s6Step178EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step178CompleteRelocationMove0Borrowed s6Step178EarlyControlArena {814}
  change s6Step178EarlyControlArena.live=(s6Step178ExitGvAfter.live∪{179})\{814}
  apply hmrArena_update_of_filter_check s6Step178ExitGvAfter s6Step178EarlyControlArena (fun q => ([(0,179),(180,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [179] [814] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step178CompleteRelocation_checked : s6Step178ExitGvAfter.checkRepack [(814,179)]=some s6Step178EarlyControlArena := by
  have tail1 : s6Step178EarlyControlArena.checkRepack []=some s6Step178EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step178ExitGvAfter s6Step178CompleteRelocationMove0Borrowed s6Step178EarlyControlArena s6Step178EarlyControlArena 814 179 []
    s6Step178CompleteRelocation_move0_owned s6Step178CompleteRelocation_move0_reserve s6Step178CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step178Complete_repack : s6Step178ExitGvAfter.checkRepack s6Step178CompleteMoves=some s6Step178EarlyControlArena := by
  simpa only [s6Step178CompleteMoves] using s6Step178CompleteRelocation_checked

private theorem s6Step178EarlyControl_branchOwned : ([880] : List Wire).toFinset⊆s6Step178EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step178EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step178EarlyControl_branch : compileHmrBranchRetirement s6Step178EarlyControlSigmaArena 880=some s6Step178EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step178EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step178EarlyControlSigmaArena s6Step178EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,880),(881,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [880] rfl rfl
    decide +kernel

private theorem s6Step178EarlyControl_classEqualityBorrow : s6Step178EarlyControlPositiveArena.checkBorrow (([803, 830] : List Wire).length-1) s6Step178EarlyControlLog.classWork=some s6Step178EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step178EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step178EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step178EarlyControlEqualityArena,s6Step178EarlyControlPositiveArena,s6Step178EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step178EarlyControl_classEqualityOwned : ([803, 830] : List Wire).toFinset⊆s6Step178EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step178EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step178EarlyControl_classEquality : compileHmrEqualityLog s6Step178EarlyControlPositiveArena [803, 830] 0 s6Step178EarlyControlLog.classWork=some (s6Step178EarlyControlEqualityArena,s6Step178EarlyControlLog.classWork,s6Step178EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step178EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step178EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step178EarlyControl_classOwned : ([769, 888, 803] : List Wire).toFinset⊆s6Step178EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step178EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step178EarlyControl_positiveBorrow : s6Step178EarlyControlZeroArena.checkBorrow (1) s6Step178EarlyControlLog.positiveWork=some s6Step178EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step178EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step178EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step178EarlyControlPositiveArena,s6Step178EarlyControlZeroArena,s6Step178EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step178EarlyControl_class : compileHmrSourceClassLog s6Step178EarlyControlZeroArena false 769 s6Step178EarlyControlZeroPlan.top 0 803 s6Step178EarlyControlLog.positiveWork s6Step178EarlyControlLog.classWork=some s6Step178EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step178EarlyControlClassPlan s6Step178EarlyControlZeroArena false 769 s6Step178EarlyControlZeroPlan.top 0 803
  constructor
  · decide +kernel
  · exact s6Step178EarlyControl_classOwned
  · exact s6Step178EarlyControl_positiveBorrow
  · exact s6Step178EarlyControl_classEquality

private theorem s6Step178EarlyControl_entryRecordOwned : ([880, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step178EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step178EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step178EarlyControl_entrySigmaOwned : ([803, 254] : List Wire).toFinset⊆s6Step178EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step178EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step178EarlyControl_fitBorrow : s6Step178EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step178EarlyControlLog.recordFresh=some s6Step178EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step178EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step178EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step178EarlyControlFittedArena,s6Step178EarlyControlFlagArena,s6Step178EarlyControlLog,arenaWires]

private theorem s6Step178EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step178EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step178EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step178EarlyControl_fit : compileHmrRecordGrowLog s6Step178EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step178EarlyControlLog.recordFresh=some s6Step178EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step178EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step178EarlyControl_fitBorrow

private theorem s6Step178EarlyControl_flagsBorrow : s6Step178EarlyControlEqualityArena.checkBorrow (6) s6Step178EarlyControlLog.flagWork=some s6Step178EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step178EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step178EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step178EarlyControlFlagArena,s6Step178EarlyControlEqualityArena,s6Step178EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step178EarlyControl_flagsOwned : ([907, 253, 252, 251] : List Wire).toFinset⊆s6Step178EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step178EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step178EarlyControl_flags : compileHmrFlagsLog s6Step178EarlyControlClassPlan.equalityArena s6Step178EarlyControlClassPlan.equality.top 253 252 251 s6Step178EarlyControlLog.flagWork=some s6Step178EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step178EarlyControl_flagsOwned⟩
  · exact s6Step178EarlyControl_flagsBorrow

private theorem s6Step178EarlyControl_historyBorrow : s6Step178EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step178EarlyControlLog.recordFresh=some s6Step178EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step178EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step178EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step178EarlyControlArena s6Step178EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step178EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step178EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step178EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step178EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step178EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step178EarlyControl_history : compileHmrRecordGrowLog s6Step178EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step178EarlyControlLog.recordFresh=some s6Step178EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step178EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step178EarlyControl_historyBorrow

private theorem s6Step178EarlyControl_sigmaOwned : ([254, 803] : List Wire).toFinset⊆s6Step178EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step178EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step178EarlyControl_sigmaReleaseOwned : ([803] : List Wire).toFinset⊆s6Step178EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step178EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step178EarlyControl_sigmaRelease : s6Step178EarlyControlHistoryArena.release {803} (fun _ => false)=some s6Step178EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step178EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step178EarlyControlHistoryArena s6Step178EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [803] rfl rfl
    decide +kernel

private theorem s6Step178EarlyControl_sigma : compileHmrSigmaDropLog s6Step178EarlyControlHistoryArena false 0 0 254 803 []=some s6Step178EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step178EarlyControl_sigmaOwned⟩
  · exact s6Step178EarlyControl_sigmaRelease

private theorem s6Step178EarlyControl_zeroBorrow : s6Step178EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step178EarlyControlLog.zeroWork=some s6Step178EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step178EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step178EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step178EarlyControlArena s6Step178EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step178EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step178EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step178EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step178EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step178EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step178EarlyControl_zero : compileHmrEqualityLog s6Step178EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step178EarlyControlLog.zeroWork=some (s6Step178EarlyControlZeroArena,s6Step178EarlyControlLog.zeroWork,s6Step178EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step178EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step178EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step178EarlyControl_logged : s6Step178EarlyControlPlan.Logged s6Step178EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 254 253 252 251 880 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step178EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step178EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step178EarlyControl_zero
  · exact s6Step178EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step178EarlyControl_flags
  · exact s6Step178EarlyControl_fit
  · exact s6Step178EarlyControl_history
  · exact s6Step178EarlyControl_sigma
  · exact s6Step178EarlyControl_branch

private theorem s6Step178EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step178EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 254 253 252 251 880 42 s6Step178EarlyControlLog=some s6Step178EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step178EarlyControlPlan s6Step178EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 254 253 252 251 880 42 s6Step178EarlyControl_logged

private def s6Step178EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435],795⟩

private def s6Step178EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857],776⟩

private def s6Step178EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179],777⟩

private def s6Step178EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922],775⟩

private def s6Step178FrontBank : WindowBank := ⟨s6Step178EntryFRow,s6Step178EntryGRow,s6Step178EntryFvRow,s6Step178EntryGvRow⟩

private def s6Step178Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 868, 795]

private def s6Step178Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 888, 777]

private def s6Step178Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 865, 776]

private def s6Step178Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 876, 775]

private theorem s6Step178Counter_apart : Disjoint s6Step178HeadFvAfter.live s6Step178CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step178HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step178Counter_borrowed : s6Step178HeadFvAfter.checkBorrow 4 s6Step178CounterWork=some s6Step178CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step178HeadFvAfter s6Step178CounterDuring s6Step178CounterWork.toFinset s6Step178Counter_bounded s6Step178Counter_apart rfl

private theorem s6Step178Counter_owned : (803::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step178HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step178HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step178Counter_checked : compileHmrCounterStepLog s6Step178HeadFvAfter true 803 [774, 773, 772, 771, 770, 769] s6Step178CounterWork=some s6Step178CounterDuring := by
  have owned : ∀q∈803::[774, 773, 772, 771, 770, 769],q∈s6Step178HeadFvAfter.live := fun q hq => s6Step178Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step178Counter_borrowed

private def s6Step178EntryFAfter : Arena := s6Step178EntryFBefore

private theorem s6Step178EntryBank_incomingDistinct : ([s6Step178EntryFRow,s6Step178EntryGRow,s6Step178EntryFvRow,s6Step178EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step178EntryF_Incoming : rowsOwned s6Step178EntryFBefore [s6Step178EntryFRow,s6Step178EntryGRow,s6Step178EntryFvRow,s6Step178EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step178EntryFRow,s6Step178EntryGRow,s6Step178EntryFvRow,s6Step178EntryGvRow] 0 s6Step178EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step178EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,880),(881,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step178EntryBank_outgoingOwned : rowsOwned s6Step178EntryGvAfter [s6Step178EntryFOut,s6Step178EntryGOut,s6Step178EntryFvOut,s6Step178EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step178EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,880),(881,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step178EntryF_Outgoing : rowsOwned s6Step178EntryGvAfter [s6Step178EntryFOut,s6Step178EntryGOut,s6Step178EntryFvOut,s6Step178EntryGvOut] :=
  hmrRows_owned_drop s6Step178EntryGvAfter [s6Step178EntryFOut,s6Step178EntryGOut,s6Step178EntryFvOut,s6Step178EntryGvOut] 0 s6Step178EntryBank_outgoingOwned

private theorem s6Step178EntryF_distinct : (s6Step178EntryFRow.sign::s6Step178EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step178EntryF_owned : (s6Step178EntryFRow.sign::s6Step178EntryFRow.payload).toFinset⊆s6Step178EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step178EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,880),(881,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step178EntryF_reserved : s6Step178EntryFBefore.reserve s6Step178EntryFFresh.toFinset=some s6Step178EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step178EntryFFresh,arenaWires]
  · norm_num [s6Step178EntryFBefore,s6Step178EntryFFresh,arenaWires]
  · simp only [s6Step178EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step178EntryF_checked : planRowResizeLog s6Step178EntryFBefore s6Step178EntryFRow 180 s6Step178EntryFFresh=
    some (s6Step178EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435],795⟩,growRow 795 s6Step178EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step178EntryFBefore s6Step178EntryFAfter s6Step178EntryFRow 180 s6Step178EntryFFresh
    s6Step178EntryF_distinct s6Step178EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step178EntryF_reserved
  have rowEq : WindowRow.mk (s6Step178EntryFRow.payload++s6Step178EntryFFresh) s6Step178EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step178EntryFvAfter : Arena := s6Step178EntryFBefore

private def s6Step178EntryFvBefore : Arena := s6Step178EntryFBefore

private theorem s6Step178EntryFv_Incoming : rowsOwned s6Step178EntryFvBefore [s6Step178EntryFvRow,s6Step178EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step178EntryFRow,s6Step178EntryGRow,s6Step178EntryFvRow,s6Step178EntryGvRow] 2 s6Step178EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step178EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,880),(881,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step178EntryFv_Outgoing : rowsOwned s6Step178EntryGvAfter [s6Step178EntryFvOut,s6Step178EntryGvOut] :=
  hmrRows_owned_drop s6Step178EntryGvAfter [s6Step178EntryFOut,s6Step178EntryGOut,s6Step178EntryFvOut,s6Step178EntryGvOut] 2 s6Step178EntryBank_outgoingOwned

private theorem s6Step178EntryFv_distinct : (s6Step178EntryFvRow.sign::s6Step178EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step178EntryFv_owned : (s6Step178EntryFvRow.sign::s6Step178EntryFvRow.payload).toFinset⊆s6Step178EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step178EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,880),(881,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step178EntryFv_reserved : s6Step178EntryFvBefore.reserve s6Step178EntryFvFresh.toFinset=some s6Step178EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step178EntryFvFresh,arenaWires]
  · norm_num [s6Step178EntryFvBefore,s6Step178EntryFBefore,s6Step178EntryFvFresh,arenaWires]
  · simp only [s6Step178EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step178EntryFv_checked : planRowResizeLog s6Step178EntryFvBefore s6Step178EntryFvRow 103 s6Step178EntryFvFresh=
    some (s6Step178EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857],776⟩,growRow 776 s6Step178EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step178EntryFvBefore s6Step178EntryFvAfter s6Step178EntryFvRow 103 s6Step178EntryFvFresh
    s6Step178EntryFv_distinct s6Step178EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step178EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step178EntryFvRow.payload++s6Step178EntryFvFresh) s6Step178EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step178EntryGAfter : Arena := s6Step178EntryFBefore

private def s6Step178EntryGBefore : Arena := s6Step178EntryFBefore

private theorem s6Step178EntryG_Incoming : rowsOwned s6Step178EntryGBefore [s6Step178EntryGRow,s6Step178EntryFvRow,s6Step178EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step178EntryFRow,s6Step178EntryGRow,s6Step178EntryFvRow,s6Step178EntryGvRow] 1 s6Step178EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step178EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,880),(881,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step178EntryG_Outgoing : rowsOwned s6Step178EntryGvAfter [s6Step178EntryGOut,s6Step178EntryFvOut,s6Step178EntryGvOut] :=
  hmrRows_owned_drop s6Step178EntryGvAfter [s6Step178EntryFOut,s6Step178EntryGOut,s6Step178EntryFvOut,s6Step178EntryGvOut] 1 s6Step178EntryBank_outgoingOwned

private theorem s6Step178EntryG_distinct : (s6Step178EntryGRow.sign::s6Step178EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step178EntryG_owned : (s6Step178EntryGRow.sign::s6Step178EntryGRow.payload).toFinset⊆s6Step178EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step178EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,880),(881,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step178EntryG_reserved : s6Step178EntryGBefore.reserve s6Step178EntryGFresh.toFinset=some s6Step178EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step178EntryGFresh,arenaWires]
  · norm_num [s6Step178EntryGBefore,s6Step178EntryFBefore,s6Step178EntryGFresh,arenaWires]
  · simp only [s6Step178EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step178EntryG_checked : planRowResizeLog s6Step178EntryGBefore s6Step178EntryGRow 180 s6Step178EntryGFresh=
    some (s6Step178EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179],777⟩,growRow 777 s6Step178EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step178EntryGBefore s6Step178EntryGAfter s6Step178EntryGRow 180 s6Step178EntryGFresh
    s6Step178EntryG_distinct s6Step178EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step178EntryG_reserved
  have rowEq : WindowRow.mk (s6Step178EntryGRow.payload++s6Step178EntryGFresh) s6Step178EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step178EntryGvBefore : Arena := s6Step178EntryFBefore

private theorem s6Step178EntryGv_Incoming : rowsOwned s6Step178EntryGvBefore [s6Step178EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step178EntryFRow,s6Step178EntryGRow,s6Step178EntryFvRow,s6Step178EntryGvRow] 3 s6Step178EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step178EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,880),(881,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step178EntryGv_Outgoing : rowsOwned s6Step178EntryGvAfter [s6Step178EntryGvOut] :=
  hmrRows_owned_drop s6Step178EntryGvAfter [s6Step178EntryFOut,s6Step178EntryGOut,s6Step178EntryFvOut,s6Step178EntryGvOut] 3 s6Step178EntryBank_outgoingOwned

private theorem s6Step178EntryGv_distinct : (s6Step178EntryGvRow.sign::s6Step178EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step178EntryGv_owned : (s6Step178EntryGvRow.sign::s6Step178EntryGvRow.payload).toFinset⊆s6Step178EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step178EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,880),(881,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step178EntryGv_reserved : s6Step178EntryGvBefore.reserve s6Step178EntryGvFresh.toFinset=some s6Step178EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step178EntryGvFresh,arenaWires]
  · norm_num [s6Step178EntryGvBefore,s6Step178EntryFBefore,s6Step178EntryGvFresh,arenaWires]
  · simp only [s6Step178EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step178EntryGv_checked : planRowResizeLog s6Step178EntryGvBefore s6Step178EntryGvRow 103 s6Step178EntryGvFresh=
    some (s6Step178EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922],775⟩,growRow 775 s6Step178EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step178EntryGvBefore s6Step178EntryGvAfter s6Step178EntryGvRow 103 s6Step178EntryGvFresh
    s6Step178EntryGv_distinct s6Step178EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step178EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step178EntryGvRow.payload++s6Step178EntryGvFresh) s6Step178EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step178EntryBank_rows : planWindowRowsLog s6Step178EntryFBefore [(s6Step178EntryFRow,180),(s6Step178EntryGRow,180),(s6Step178EntryFvRow,103),(s6Step178EntryGvRow,103)] [s6Step178EntryFFresh,s6Step178EntryGFresh,s6Step178EntryFvFresh,s6Step178EntryGvFresh]=
    some (s6Step178EntryGvAfter,[s6Step178EntryFOut,s6Step178EntryGOut,s6Step178EntryFvOut,s6Step178EntryGvOut],(growRow 795 s6Step178EntryFFresh ++ (growRow 777 s6Step178EntryGFresh ++ (growRow 776 s6Step178EntryFvFresh ++ (growRow 775 s6Step178EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step178EntryGvAfter [] []=some (s6Step178EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step178EntryGvBefore s6Step178EntryGvAfter s6Step178EntryGvAfter
    s6Step178EntryGvRow s6Step178EntryGvOut 103 s6Step178EntryGvFresh [] [] []
    (growRow 775 s6Step178EntryGvFresh) ([]) s6Step178EntryGv_Incoming s6Step178EntryGv_checked h4 s6Step178EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step178EntryFvBefore s6Step178EntryFvAfter s6Step178EntryGvAfter
    s6Step178EntryFvRow s6Step178EntryFvOut 103 s6Step178EntryFvFresh [(s6Step178EntryGvRow,103)] [s6Step178EntryGvFresh] [s6Step178EntryGvOut]
    (growRow 776 s6Step178EntryFvFresh) ((growRow 775 s6Step178EntryGvFresh ++ [])) s6Step178EntryFv_Incoming s6Step178EntryFv_checked h3 s6Step178EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step178EntryGBefore s6Step178EntryGAfter s6Step178EntryGvAfter
    s6Step178EntryGRow s6Step178EntryGOut 180 s6Step178EntryGFresh [(s6Step178EntryFvRow,103),(s6Step178EntryGvRow,103)] [s6Step178EntryFvFresh,s6Step178EntryGvFresh] [s6Step178EntryFvOut,s6Step178EntryGvOut]
    (growRow 777 s6Step178EntryGFresh) ((growRow 776 s6Step178EntryFvFresh ++ (growRow 775 s6Step178EntryGvFresh ++ []))) s6Step178EntryG_Incoming s6Step178EntryG_checked h2 s6Step178EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step178EntryFBefore s6Step178EntryFAfter s6Step178EntryGvAfter
    s6Step178EntryFRow s6Step178EntryFOut 180 s6Step178EntryFFresh [(s6Step178EntryGRow,180),(s6Step178EntryFvRow,103),(s6Step178EntryGvRow,103)] [s6Step178EntryGFresh,s6Step178EntryFvFresh,s6Step178EntryGvFresh] [s6Step178EntryGOut,s6Step178EntryFvOut,s6Step178EntryGvOut]
    (growRow 795 s6Step178EntryFFresh) ((growRow 777 s6Step178EntryGFresh ++ (growRow 776 s6Step178EntryFvFresh ++ (growRow 775 s6Step178EntryGvFresh ++ [])))) s6Step178EntryF_Incoming s6Step178EntryF_checked h1 s6Step178EntryF_Outgoing
  exact h0

private theorem s6Step178EntryBank_checked : compileHmrBankResizeLog .entry s6Step178EntryFBefore ⟨s6Step178EntryFRow,s6Step178EntryGRow,s6Step178EntryFvRow,s6Step178EntryGvRow⟩ ⟨180,180,103,103⟩ [s6Step178EntryFFresh,s6Step178EntryGFresh,s6Step178EntryFvFresh,s6Step178EntryGvFresh]=
    some (s6Step178EntryGvAfter,⟨s6Step178EntryFOut,s6Step178EntryGOut,s6Step178EntryFvOut,s6Step178EntryGvOut⟩,(growRow 795 s6Step178EntryFFresh ++ (growRow 777 s6Step178EntryGFresh ++ (growRow 776 s6Step178EntryFvFresh ++ (growRow 775 s6Step178EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step178EntryBank_rows]
  rfl

private def s6Step178ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,179),(180,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,868),(869,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step178ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,179),(180,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step178ExitFBefore : Arena := s6Step178ExitGAfter

private def s6Step178ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 868],795⟩

private def s6Step178ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 865],776⟩

private def s6Step178ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 888],777⟩

private def s6Step178ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 876],775⟩

private theorem s6Step178ExitBank_incomingDistinct : ([s6Step178ExitGRow,s6Step178ExitFRow,s6Step178ExitFvRow,s6Step178ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step178ExitF_Incoming : rowsOwned s6Step178ExitFBefore [s6Step178ExitFRow,s6Step178ExitFvRow,s6Step178ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step178ExitGRow,s6Step178ExitFRow,s6Step178ExitFvRow,s6Step178ExitGvRow] 1 s6Step178ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step178ExitFBefore (fun q => ([(0,179),(180,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step178ExitBank_outgoingOwned : rowsOwned s6Step178ExitGvAfter [s6Step178ExitGOut,s6Step178ExitFOut,s6Step178ExitFvOut,s6Step178ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step178ExitGvAfter (fun q => ([(0,179),(180,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step178ExitF_Outgoing : rowsOwned s6Step178ExitGvAfter [s6Step178ExitFOut,s6Step178ExitFvOut,s6Step178ExitGvOut] :=
  hmrRows_owned_drop s6Step178ExitGvAfter [s6Step178ExitGOut,s6Step178ExitFOut,s6Step178ExitFvOut,s6Step178ExitGvOut] 1 s6Step178ExitBank_outgoingOwned

private theorem s6Step178ExitF_distinct : (s6Step178ExitFRow.sign::s6Step178ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step178ExitF_owned : (s6Step178ExitFRow.sign::s6Step178ExitFRow.payload).toFinset⊆s6Step178ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step178ExitFBefore (fun q => ([(0,179),(180,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step178ExitF_retired : s6Step178ExitFBefore.retireSet s6Step178ExitFExtra.toFinset=s6Step178ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step178ExitFBefore s6Step178ExitFAfter s6Step178ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step178ExitFBefore s6Step178ExitFAfter (fun q => ([(0,179),(180,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,179),(180,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,868),(869,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step178ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step178ExitF_checked : planRowResizeLog s6Step178ExitFBefore s6Step178ExitFRow 180 []=
    some (s6Step178ExitFAfter,s6Step178ExitFOut,shrinkRow 795 s6Step178ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step178ExitFBefore s6Step178ExitFRow 180 s6Step178ExitF_distinct s6Step178ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step178ExitFRow.payload.take 180) s6Step178ExitFRow.sign=s6Step178ExitFOut := by decide +kernel
  have hi : s6Step178ExitFRow.payload.drop 180=s6Step178ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step178ExitF_retired] at result
  exact result

private def s6Step178ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,179),(180,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step178ExitFvBefore : Arena := s6Step178ExitFAfter

private theorem s6Step178ExitFv_Incoming : rowsOwned s6Step178ExitFvBefore [s6Step178ExitFvRow,s6Step178ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step178ExitGRow,s6Step178ExitFRow,s6Step178ExitFvRow,s6Step178ExitGvRow] 2 s6Step178ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step178ExitFvBefore (fun q => ([(0,179),(180,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,868),(869,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step178ExitFv_Outgoing : rowsOwned s6Step178ExitGvAfter [s6Step178ExitFvOut,s6Step178ExitGvOut] :=
  hmrRows_owned_drop s6Step178ExitGvAfter [s6Step178ExitGOut,s6Step178ExitFOut,s6Step178ExitFvOut,s6Step178ExitGvOut] 2 s6Step178ExitBank_outgoingOwned

private theorem s6Step178ExitFv_distinct : (s6Step178ExitFvRow.sign::s6Step178ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step178ExitFv_owned : (s6Step178ExitFvRow.sign::s6Step178ExitFvRow.payload).toFinset⊆s6Step178ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step178ExitFvBefore (fun q => ([(0,179),(180,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,868),(869,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step178ExitFv_retired : s6Step178ExitFvBefore.retireSet s6Step178ExitFvExtra.toFinset=s6Step178ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step178ExitFvBefore s6Step178ExitFvAfter s6Step178ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step178ExitFvBefore s6Step178ExitFvAfter (fun q => ([(0,179),(180,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,868),(869,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,179),(180,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step178ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step178ExitFv_checked : planRowResizeLog s6Step178ExitFvBefore s6Step178ExitFvRow 103 []=
    some (s6Step178ExitFvAfter,s6Step178ExitFvOut,shrinkRow 776 s6Step178ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step178ExitFvBefore s6Step178ExitFvRow 103 s6Step178ExitFv_distinct s6Step178ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step178ExitFvRow.payload.take 103) s6Step178ExitFvRow.sign=s6Step178ExitFvOut := by decide +kernel
  have hi : s6Step178ExitFvRow.payload.drop 103=s6Step178ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step178ExitFv_retired] at result
  exact result

private def s6Step178ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step178ExitG_Incoming : rowsOwned s6Step178ExitGBefore [s6Step178ExitGRow,s6Step178ExitFRow,s6Step178ExitFvRow,s6Step178ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step178ExitGRow,s6Step178ExitFRow,s6Step178ExitFvRow,s6Step178ExitGvRow] 0 s6Step178ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step178ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step178ExitG_Outgoing : rowsOwned s6Step178ExitGvAfter [s6Step178ExitGOut,s6Step178ExitFOut,s6Step178ExitFvOut,s6Step178ExitGvOut] :=
  hmrRows_owned_drop s6Step178ExitGvAfter [s6Step178ExitGOut,s6Step178ExitFOut,s6Step178ExitFvOut,s6Step178ExitGvOut] 0 s6Step178ExitBank_outgoingOwned

private theorem s6Step178ExitG_distinct : (s6Step178ExitGRow.sign::s6Step178ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step178ExitG_owned : (s6Step178ExitGRow.sign::s6Step178ExitGRow.payload).toFinset⊆s6Step178ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step178ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step178ExitG_retired : s6Step178ExitGBefore.retireSet s6Step178ExitGExtra.toFinset=s6Step178ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step178ExitGBefore s6Step178ExitGAfter s6Step178ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step178ExitGBefore s6Step178ExitGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,179),(180,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step178ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step178ExitG_checked : planRowResizeLog s6Step178ExitGBefore s6Step178ExitGRow 179 []=
    some (s6Step178ExitGAfter,s6Step178ExitGOut,shrinkRow 777 s6Step178ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step178ExitGBefore s6Step178ExitGRow 179 s6Step178ExitG_distinct s6Step178ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step178ExitGRow.payload.take 179) s6Step178ExitGRow.sign=s6Step178ExitGOut := by decide +kernel
  have hi : s6Step178ExitGRow.payload.drop 179=s6Step178ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step178ExitG_retired] at result
  exact result

private def s6Step178ExitGvBefore : Arena := s6Step178ExitFvAfter

private theorem s6Step178ExitGv_Incoming : rowsOwned s6Step178ExitGvBefore [s6Step178ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step178ExitGRow,s6Step178ExitFRow,s6Step178ExitFvRow,s6Step178ExitGvRow] 3 s6Step178ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step178ExitGvBefore (fun q => ([(0,179),(180,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step178ExitGv_Outgoing : rowsOwned s6Step178ExitGvAfter [s6Step178ExitGvOut] :=
  hmrRows_owned_drop s6Step178ExitGvAfter [s6Step178ExitGOut,s6Step178ExitFOut,s6Step178ExitFvOut,s6Step178ExitGvOut] 3 s6Step178ExitBank_outgoingOwned

private theorem s6Step178ExitGv_distinct : (s6Step178ExitGvRow.sign::s6Step178ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step178ExitGv_owned : (s6Step178ExitGvRow.sign::s6Step178ExitGvRow.payload).toFinset⊆s6Step178ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step178ExitGvBefore (fun q => ([(0,179),(180,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step178ExitGv_retired : s6Step178ExitGvBefore.retireSet s6Step178ExitGvExtra.toFinset=s6Step178ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step178ExitGvBefore s6Step178ExitGvAfter s6Step178ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step178ExitGvBefore s6Step178ExitGvAfter (fun q => ([(0,179),(180,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,179),(180,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step178ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step178ExitGv_checked : planRowResizeLog s6Step178ExitGvBefore s6Step178ExitGvRow 103 []=
    some (s6Step178ExitGvAfter,s6Step178ExitGvOut,shrinkRow 775 s6Step178ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step178ExitGvBefore s6Step178ExitGvRow 103 s6Step178ExitGv_distinct s6Step178ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step178ExitGvRow.payload.take 103) s6Step178ExitGvRow.sign=s6Step178ExitGvOut := by decide +kernel
  have hi : s6Step178ExitGvRow.payload.drop 103=s6Step178ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step178ExitGv_retired] at result
  exact result

private theorem s6Step178ExitBank_rows : planWindowRowsLog s6Step178ExitGBefore [(s6Step178ExitGRow,179),(s6Step178ExitFRow,180),(s6Step178ExitFvRow,103),(s6Step178ExitGvRow,103)] [[],[],[],[]]=
    some (s6Step178ExitGvAfter,[s6Step178ExitGOut,s6Step178ExitFOut,s6Step178ExitFvOut,s6Step178ExitGvOut],(shrinkRow 777 s6Step178ExitGExtra ++ (shrinkRow 795 s6Step178ExitFExtra ++ (shrinkRow 776 s6Step178ExitFvExtra ++ (shrinkRow 775 s6Step178ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step178ExitGvAfter [] []=some (s6Step178ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step178ExitGvBefore s6Step178ExitGvAfter s6Step178ExitGvAfter
    s6Step178ExitGvRow s6Step178ExitGvOut 103 [] [] [] []
    (shrinkRow 775 s6Step178ExitGvExtra) ([]) s6Step178ExitGv_Incoming s6Step178ExitGv_checked h4 s6Step178ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step178ExitFvBefore s6Step178ExitFvAfter s6Step178ExitGvAfter
    s6Step178ExitFvRow s6Step178ExitFvOut 103 [] [(s6Step178ExitGvRow,103)] [[]] [s6Step178ExitGvOut]
    (shrinkRow 776 s6Step178ExitFvExtra) ((shrinkRow 775 s6Step178ExitGvExtra ++ [])) s6Step178ExitFv_Incoming s6Step178ExitFv_checked h3 s6Step178ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step178ExitFBefore s6Step178ExitFAfter s6Step178ExitGvAfter
    s6Step178ExitFRow s6Step178ExitFOut 180 [] [(s6Step178ExitFvRow,103),(s6Step178ExitGvRow,103)] [[],[]] [s6Step178ExitFvOut,s6Step178ExitGvOut]
    (shrinkRow 795 s6Step178ExitFExtra) ((shrinkRow 776 s6Step178ExitFvExtra ++ (shrinkRow 775 s6Step178ExitGvExtra ++ []))) s6Step178ExitF_Incoming s6Step178ExitF_checked h2 s6Step178ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step178ExitGBefore s6Step178ExitGAfter s6Step178ExitGvAfter
    s6Step178ExitGRow s6Step178ExitGOut 179 [] [(s6Step178ExitFRow,180),(s6Step178ExitFvRow,103),(s6Step178ExitGvRow,103)] [[],[],[]] [s6Step178ExitFOut,s6Step178ExitFvOut,s6Step178ExitGvOut]
    (shrinkRow 777 s6Step178ExitGExtra) ((shrinkRow 795 s6Step178ExitFExtra ++ (shrinkRow 776 s6Step178ExitFvExtra ++ (shrinkRow 775 s6Step178ExitGvExtra ++ [])))) s6Step178ExitG_Incoming s6Step178ExitG_checked h1 s6Step178ExitG_Outgoing
  exact h0

private theorem s6Step178ExitBank_checked : compileHmrBankResizeLog .exit s6Step178ExitGBefore ⟨s6Step178ExitFRow,s6Step178ExitGRow,s6Step178ExitFvRow,s6Step178ExitGvRow⟩ ⟨180,179,103,103⟩ [[],[],[],[]]=
    some (s6Step178ExitGvAfter,⟨s6Step178ExitFOut,s6Step178ExitGOut,s6Step178ExitFvOut,s6Step178ExitGvOut⟩,(shrinkRow 777 s6Step178ExitGExtra ++ (shrinkRow 795 s6Step178ExitFExtra ++ (shrinkRow 776 s6Step178ExitFvExtra ++ (shrinkRow 775 s6Step178ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step178ExitBank_rows]
  rfl

private theorem s6Step178Add0_apart : Disjoint s6Step178Add0Arena.live s6Step178Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step178Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step178Add0_card : s6Step178Add0Arena.live.card=882 := by
  decide +kernel

private theorem s6Step178Add0_borrowed : s6Step178Add0Arena.checkBorrow (hmrHybridCount s6Step178Add0Arena s6Step178Add0B.length) s6Step178Add0Work=some s6Step178Add0During := by
  have len : s6Step178Add0Work.length=hmrHybridCount s6Step178Add0Arena s6Step178Add0B.length := by
    rw [hmrHybridCount,s6Step178Add0_card]
    decide +kernel
  have nd : s6Step178Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step178Add0Arena s6Step178Add0During s6Step178Add0Work.toFinset s6Step178Add0_bounded s6Step178Add0_apart rfl

private theorem s6Step178Add0_distinct : (830::880::907::(s6Step178Add0A++s6Step178Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step178Add0_owned : (830::880::907::(s6Step178Add0A++s6Step178Add0B)).toFinset⊆s6Step178Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step178Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step178Add0_checked : compileHmrHybridCinLog s6Step178Add0Arena 880 830 907 s6Step178Add0A s6Step178Add0B s6Step178Add0Work=some s6Step178Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step178Add0Arena s6Step178Add0During 880 830 907 s6Step178Add0A s6Step178Add0B s6Step178Add0Work
    (by decide +kernel) (by decide +kernel) s6Step178Add0_distinct
    (fun q hq => s6Step178Add0_owned (List.mem_toFinset.mpr hq)) s6Step178Add0_borrowed

private theorem s6Step178Add1_apart : Disjoint s6Step178Add1Arena.live s6Step178Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step178Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step178Add1_card : s6Step178Add1Arena.live.card=882 := by
  decide +kernel

private theorem s6Step178Add1_borrowed : s6Step178Add1Arena.checkBorrow (hmrHybridCount s6Step178Add1Arena s6Step178Add1B.length) s6Step178Add1Work=some s6Step178Add1During := by
  have len : s6Step178Add1Work.length=hmrHybridCount s6Step178Add1Arena s6Step178Add1B.length := by
    rw [hmrHybridCount,s6Step178Add1_card]
    decide +kernel
  have nd : s6Step178Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step178Add1Arena s6Step178Add1During s6Step178Add1Work.toFinset s6Step178Add1_bounded s6Step178Add1_apart rfl

private theorem s6Step178Add1_distinct : (830::880::907::(s6Step178Add1A++s6Step178Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step178Add1_owned : (830::880::907::(s6Step178Add1A++s6Step178Add1B)).toFinset⊆s6Step178Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step178Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step178Add1_checked : compileHmrHybridCinLog s6Step178Add1Arena 880 830 907 s6Step178Add1A s6Step178Add1B s6Step178Add1Work=some s6Step178Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step178Add1Arena s6Step178Add1During 880 830 907 s6Step178Add1A s6Step178Add1B s6Step178Add1Work
    (by decide +kernel) (by decide +kernel) s6Step178Add1_distinct
    (fun q hq => s6Step178Add1_owned (List.mem_toFinset.mpr hq)) s6Step178Add1_borrowed

private theorem s6Step178F4_apart : Disjoint (s6Step178Add0A++s6Step178Add0B).toFinset (s6Step178Add1A++s6Step178Add1B).toFinset := by
  have nd : ((s6Step178Add0A++s6Step178Add0B)++(s6Step178Add1A++s6Step178Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step178F4_carry : s6Step178F4FlagArena.checkBorrow 1 [907]=some s6Step178Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step178F4FlagArena,s6Step178HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step178F4FlagArena,s6Step178HeadFvAfter,s6Step178Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step178F4_distinct : (803::880::830::907::((s6Step178Add0A++s6Step178Add1A)++(s6Step178Add0B++s6Step178Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step178F4_flag : s6Step178HeadFvAfter.checkBorrow 1 [830]=some s6Step178F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step178HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step178F4_owned : (803::880::((s6Step178Add0A++s6Step178Add1A)++(s6Step178Add0B++s6Step178Add1B))).toFinset⊆s6Step178HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step178HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step178F4_checked : compileHmrHybridF4Log s6Step178HeadFvAfter 803 880 s6Step178Add0A s6Step178Add0B s6Step178Add1A s6Step178Add1B [830] [907] s6Step178Add0Work s6Step178Add1Work=some s6Step178F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step178HeadFvAfter s6Step178F4FlagArena s6Step178Add0Arena s6Step178Add0During s6Step178Add1During 803 880
    s6Step178Add0A s6Step178Add0B s6Step178Add1A s6Step178Add1B [830] [907] s6Step178Add0Work s6Step178Add1Work
    (fun q hq => s6Step178F4_owned (List.mem_toFinset.mpr hq)) s6Step178F4_flag s6Step178F4_carry
    s6Step178F4_distinct s6Step178F4_apart s6Step178Add0_checked s6Step178Add1_checked

private theorem s6Step178Front_branch : s6Step178FrontSigmaArena.checkBorrow 1 [880]=some s6Step178HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step178FrontSigmaArena,s6Step178EntryGvAfter,s6Step178EntryFBefore,arenaWires]
  · change s6Step178HeadGBefore.live=(s6Step178EntryGvAfter.live∪{803})∪{880}
    apply hmrArena_union_pair_of_filter_check s6Step178EntryGvAfter s6Step178HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,880),(881,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 803 880 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step178Front_entry : HmrFrontEntryValid s6Step178EntryFBefore s6Step178FrontBank 180 103 ⟨180,179,103,103⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step178FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step178EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step178EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,880),(881,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step178FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step178Front_sigma : s6Step178EntryGvAfter.checkBorrow 1 [803]=some s6Step178FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step178EntryGvAfter,s6Step178EntryFBefore,arenaWires]
  · rfl

private def s6Step178HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step178HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step178HeadFBefore : Arena := s6Step178HeadGAfter

private def s6Step178HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435],795⟩

private def s6Step178HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857],776⟩

private def s6Step178HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179],777⟩

private def s6Step178HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922],775⟩

private theorem s6Step178HeadBank_incomingDistinct : ([s6Step178HeadGRow,s6Step178HeadFRow,s6Step178HeadGvRow,s6Step178HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step178HeadF_Incoming : rowsOwned s6Step178HeadFBefore [s6Step178HeadFRow,s6Step178HeadGvRow,s6Step178HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step178HeadGRow,s6Step178HeadFRow,s6Step178HeadGvRow,s6Step178HeadFvRow] 1 s6Step178HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step178HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step178HeadBank_outgoingOwned : rowsOwned s6Step178HeadFvAfter [s6Step178HeadGOut,s6Step178HeadFOut,s6Step178HeadGvOut,s6Step178HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step178HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step178HeadF_Outgoing : rowsOwned s6Step178HeadFvAfter [s6Step178HeadFOut,s6Step178HeadGvOut,s6Step178HeadFvOut] :=
  hmrRows_owned_drop s6Step178HeadFvAfter [s6Step178HeadGOut,s6Step178HeadFOut,s6Step178HeadGvOut,s6Step178HeadFvOut] 1 s6Step178HeadBank_outgoingOwned

private theorem s6Step178HeadF_distinct : (s6Step178HeadFRow.sign::s6Step178HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step178HeadF_owned : (s6Step178HeadFRow.sign::s6Step178HeadFRow.payload).toFinset⊆s6Step178HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step178HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step178HeadF_reserved : s6Step178HeadFBefore.reserve s6Step178HeadFFresh.toFinset=some s6Step178HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step178HeadFFresh,arenaWires]
  · norm_num [s6Step178HeadFBefore,s6Step178HeadGAfter,s6Step178HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step178HeadFBefore s6Step178HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step178HeadFFresh rfl rfl
    · norm_num [s6Step178HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step178HeadF_checked : planRowResizeLog s6Step178HeadFBefore s6Step178HeadFRow 181 s6Step178HeadFFresh=
    some (s6Step178HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 868],795⟩,growRow 795 s6Step178HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step178HeadFBefore s6Step178HeadFAfter s6Step178HeadFRow 181 s6Step178HeadFFresh
    s6Step178HeadF_distinct s6Step178HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step178HeadF_reserved
  have rowEq : WindowRow.mk (s6Step178HeadFRow.payload++s6Step178HeadFFresh) s6Step178HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 868],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step178HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step178HeadFvBefore : Arena := s6Step178HeadGvAfter

private theorem s6Step178HeadFv_Incoming : rowsOwned s6Step178HeadFvBefore [s6Step178HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step178HeadGRow,s6Step178HeadFRow,s6Step178HeadGvRow,s6Step178HeadFvRow] 3 s6Step178HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step178HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step178HeadFv_Outgoing : rowsOwned s6Step178HeadFvAfter [s6Step178HeadFvOut] :=
  hmrRows_owned_drop s6Step178HeadFvAfter [s6Step178HeadGOut,s6Step178HeadFOut,s6Step178HeadGvOut,s6Step178HeadFvOut] 3 s6Step178HeadBank_outgoingOwned

private theorem s6Step178HeadFv_distinct : (s6Step178HeadFvRow.sign::s6Step178HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step178HeadFv_owned : (s6Step178HeadFvRow.sign::s6Step178HeadFvRow.payload).toFinset⊆s6Step178HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step178HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step178HeadFv_reserved : s6Step178HeadFvBefore.reserve s6Step178HeadFvFresh.toFinset=some s6Step178HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step178HeadFvFresh,arenaWires]
  · norm_num [s6Step178HeadFvBefore,s6Step178HeadGvAfter,s6Step178HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step178HeadFvBefore s6Step178HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step178HeadFvFresh rfl rfl
    · norm_num [s6Step178HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step178HeadFv_checked : planRowResizeLog s6Step178HeadFvBefore s6Step178HeadFvRow 104 s6Step178HeadFvFresh=
    some (s6Step178HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 865],776⟩,growRow 776 s6Step178HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step178HeadFvBefore s6Step178HeadFvAfter s6Step178HeadFvRow 104 s6Step178HeadFvFresh
    s6Step178HeadFv_distinct s6Step178HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step178HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step178HeadFvRow.payload++s6Step178HeadFvFresh) s6Step178HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 865],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step178HeadG_Incoming : rowsOwned s6Step178HeadGBefore [s6Step178HeadGRow,s6Step178HeadFRow,s6Step178HeadGvRow,s6Step178HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step178HeadGRow,s6Step178HeadFRow,s6Step178HeadGvRow,s6Step178HeadFvRow] 0 s6Step178HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step178HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step178HeadG_Outgoing : rowsOwned s6Step178HeadFvAfter [s6Step178HeadGOut,s6Step178HeadFOut,s6Step178HeadGvOut,s6Step178HeadFvOut] :=
  hmrRows_owned_drop s6Step178HeadFvAfter [s6Step178HeadGOut,s6Step178HeadFOut,s6Step178HeadGvOut,s6Step178HeadFvOut] 0 s6Step178HeadBank_outgoingOwned

private theorem s6Step178HeadG_distinct : (s6Step178HeadGRow.sign::s6Step178HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step178HeadG_owned : (s6Step178HeadGRow.sign::s6Step178HeadGRow.payload).toFinset⊆s6Step178HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step178HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step178HeadG_reserved : s6Step178HeadGBefore.reserve s6Step178HeadGFresh.toFinset=some s6Step178HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step178HeadGFresh,arenaWires]
  · norm_num [s6Step178HeadGBefore,s6Step178HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step178HeadGBefore s6Step178HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step178HeadGFresh rfl rfl
    · norm_num [s6Step178HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step178HeadG_checked : planRowResizeLog s6Step178HeadGBefore s6Step178HeadGRow 181 s6Step178HeadGFresh=
    some (s6Step178HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 888],777⟩,growRow 777 s6Step178HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step178HeadGBefore s6Step178HeadGAfter s6Step178HeadGRow 181 s6Step178HeadGFresh
    s6Step178HeadG_distinct s6Step178HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step178HeadG_reserved
  have rowEq : WindowRow.mk (s6Step178HeadGRow.payload++s6Step178HeadGFresh) s6Step178HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 888],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step178HeadGvBefore : Arena := s6Step178HeadFAfter

private theorem s6Step178HeadGv_Incoming : rowsOwned s6Step178HeadGvBefore [s6Step178HeadGvRow,s6Step178HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step178HeadGRow,s6Step178HeadFRow,s6Step178HeadGvRow,s6Step178HeadFvRow] 2 s6Step178HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step178HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step178HeadGv_Outgoing : rowsOwned s6Step178HeadFvAfter [s6Step178HeadGvOut,s6Step178HeadFvOut] :=
  hmrRows_owned_drop s6Step178HeadFvAfter [s6Step178HeadGOut,s6Step178HeadFOut,s6Step178HeadGvOut,s6Step178HeadFvOut] 2 s6Step178HeadBank_outgoingOwned

private theorem s6Step178HeadGv_distinct : (s6Step178HeadGvRow.sign::s6Step178HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step178HeadGv_owned : (s6Step178HeadGvRow.sign::s6Step178HeadGvRow.payload).toFinset⊆s6Step178HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step178HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step178HeadGv_reserved : s6Step178HeadGvBefore.reserve s6Step178HeadGvFresh.toFinset=some s6Step178HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step178HeadGvFresh,arenaWires]
  · norm_num [s6Step178HeadGvBefore,s6Step178HeadFAfter,s6Step178HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step178HeadGvBefore s6Step178HeadGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step178HeadGvFresh rfl rfl
    · norm_num [s6Step178HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step178HeadGv_checked : planRowResizeLog s6Step178HeadGvBefore s6Step178HeadGvRow 104 s6Step178HeadGvFresh=
    some (s6Step178HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 876],775⟩,growRow 775 s6Step178HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step178HeadGvBefore s6Step178HeadGvAfter s6Step178HeadGvRow 104 s6Step178HeadGvFresh
    s6Step178HeadGv_distinct s6Step178HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step178HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step178HeadGvRow.payload++s6Step178HeadGvFresh) s6Step178HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 876],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step178HeadBank_rows : planWindowRowsLog s6Step178HeadGBefore [(s6Step178HeadGRow,181),(s6Step178HeadFRow,181),(s6Step178HeadGvRow,104),(s6Step178HeadFvRow,104)] [s6Step178HeadGFresh,s6Step178HeadFFresh,s6Step178HeadGvFresh,s6Step178HeadFvFresh]=
    some (s6Step178HeadFvAfter,[s6Step178HeadGOut,s6Step178HeadFOut,s6Step178HeadGvOut,s6Step178HeadFvOut],(growRow 777 s6Step178HeadGFresh ++ (growRow 795 s6Step178HeadFFresh ++ (growRow 775 s6Step178HeadGvFresh ++ (growRow 776 s6Step178HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step178HeadFvAfter [] []=some (s6Step178HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step178HeadFvBefore s6Step178HeadFvAfter s6Step178HeadFvAfter
    s6Step178HeadFvRow s6Step178HeadFvOut 104 s6Step178HeadFvFresh [] [] []
    (growRow 776 s6Step178HeadFvFresh) ([]) s6Step178HeadFv_Incoming s6Step178HeadFv_checked h4 s6Step178HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step178HeadGvBefore s6Step178HeadGvAfter s6Step178HeadFvAfter
    s6Step178HeadGvRow s6Step178HeadGvOut 104 s6Step178HeadGvFresh [(s6Step178HeadFvRow,104)] [s6Step178HeadFvFresh] [s6Step178HeadFvOut]
    (growRow 775 s6Step178HeadGvFresh) ((growRow 776 s6Step178HeadFvFresh ++ [])) s6Step178HeadGv_Incoming s6Step178HeadGv_checked h3 s6Step178HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step178HeadFBefore s6Step178HeadFAfter s6Step178HeadFvAfter
    s6Step178HeadFRow s6Step178HeadFOut 181 s6Step178HeadFFresh [(s6Step178HeadGvRow,104),(s6Step178HeadFvRow,104)] [s6Step178HeadGvFresh,s6Step178HeadFvFresh] [s6Step178HeadGvOut,s6Step178HeadFvOut]
    (growRow 795 s6Step178HeadFFresh) ((growRow 775 s6Step178HeadGvFresh ++ (growRow 776 s6Step178HeadFvFresh ++ []))) s6Step178HeadF_Incoming s6Step178HeadF_checked h2 s6Step178HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step178HeadGBefore s6Step178HeadGAfter s6Step178HeadFvAfter
    s6Step178HeadGRow s6Step178HeadGOut 181 s6Step178HeadGFresh [(s6Step178HeadFRow,181),(s6Step178HeadGvRow,104),(s6Step178HeadFvRow,104)] [s6Step178HeadFFresh,s6Step178HeadGvFresh,s6Step178HeadFvFresh] [s6Step178HeadFOut,s6Step178HeadGvOut,s6Step178HeadFvOut]
    (growRow 777 s6Step178HeadGFresh) ((growRow 795 s6Step178HeadFFresh ++ (growRow 775 s6Step178HeadGvFresh ++ (growRow 776 s6Step178HeadFvFresh ++ [])))) s6Step178HeadG_Incoming s6Step178HeadG_checked h1 s6Step178HeadG_Outgoing
  exact h0

private theorem s6Step178HeadBank_checked : compileHmrBankResizeLog .headroom s6Step178HeadGBefore ⟨s6Step178HeadFRow,s6Step178HeadGRow,s6Step178HeadFvRow,s6Step178HeadGvRow⟩ ⟨181,181,104,104⟩ [s6Step178HeadGFresh,s6Step178HeadFFresh,s6Step178HeadGvFresh,s6Step178HeadFvFresh]=
    some (s6Step178HeadFvAfter,⟨s6Step178HeadFOut,s6Step178HeadGOut,s6Step178HeadFvOut,s6Step178HeadGvOut⟩,(growRow 777 s6Step178HeadGFresh ++ (growRow 795 s6Step178HeadFFresh ++ (growRow 775 s6Step178HeadGvFresh ++ (growRow 776 s6Step178HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step178HeadBank_rows]
  rfl

private theorem s6Step178Front_checked : compileHmrSourceFrontLog s6Step178EntryFBefore s6Step178FrontBank 180 103 ⟨180,179,103,103⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step178FrontLog=some s6Step178FrontPlan := by
  have pairEq : s6Step178FrontPair=⟨s6Step178HeadFRow,s6Step178HeadGRow,s6Step178HeadFvRow,s6Step178HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step178FrontHead=⟨s6Step178ExitFRow,s6Step178ExitGRow,s6Step178ExitFvRow,s6Step178ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step178Add0A=s6Step178FrontHead.f.wires := by decide +kernel
  have gEq : s6Step178Add0B=s6Step178FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step178Add1A=s6Step178FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step178Add1B=s6Step178FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step178EntryFBefore s6Step178FrontBank 180 103 ⟨180,179,103,103⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step178FrontLog s6Step178FrontPlan
  · exact s6Step178Front_entry
  · exact s6Step178EntryBank_checked
  · exact s6Step178Front_sigma
  · rfl
  · exact s6Step178Front_branch
  · rfl
  · simpa only [s6Step178FrontPlan,pairEq] using s6Step178HeadBank_checked
  · simpa only [s6Step178FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step178F4_checked
  · exact s6Step178Counter_checked
  · rfl
  · simpa only [s6Step178FrontPlan,headEq] using s6Step178ExitBank_checked

private theorem s6Step178Complete_explicit_checked : compileHmrEarlyStepLog s6Step178EntryFBefore s6Step178FrontBank 180 103 ⟨180,179,103,103⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step178CompleteLog=some s6Step178CompletePlan := by
  let Q := s6Step178EarlyControlPlan
  have hq := s6Step178EarlyControl_plan_checked
  have fv1 : s6Step178CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step178CompleteOut.fv.payload[2]?.getD s6Step178CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step178CompleteOut.fv.payload[3]?.getD s6Step178CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step178CompleteOut.fv.payload[4]?.getD s6Step178CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step178EntryFBefore s6Step178EarlyControlArena s6Step178FrontBank 180 103 ⟨180,179,103,103⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step178CompleteLog s6Step178FrontPlan Q
    s6Step178Front_checked s6Step178Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step178Complete_owned s6Step178Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step178EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 s6Step178CompleteOut.fv.second (s6Step178CompleteOut.fv.payload[2]?.getD s6Step178CompleteOut.fv.sign) (s6Step178CompleteOut.fv.payload[3]?.getD s6Step178CompleteOut.fv.sign) (s6Step178CompleteOut.fv.payload[4]?.getD s6Step178CompleteOut.fv.sign) 880 42 s6Step178EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep178Arena : Arena := s6Step178EntryFBefore
def s6PrivateStep178Bank : WindowBank := s6Step178FrontBank
def s6PrivateStep178Spec : HmrSourceWalkStepLog := ⟨180,103,⟨180,179,103,103⟩,42,.early s6Step178CompleteLog⟩
def s6PrivateStep178Plan : HmrSourceStepPlan := .early s6Step178CompletePlan
theorem s6PrivateStep178_source : s6PrivateStep178Spec=s6ObservedLogs176[2] := rfl
theorem s6PrivateStep178_checked : compileHmrSourceStepLog s6PrivateStep178Arena s6PrivateStep178Bank
    s6PrivateStep178Spec.fgWidth s6PrivateStep178Spec.vWidth s6PrivateStep178Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 178 s6PrivateStep178Spec.need none s6PrivateStep178Spec.log=some s6PrivateStep178Plan := by
  change compileHmrSourceStepLog s6Step178EntryFBefore s6Step178FrontBank 180 103 ⟨180,179,103,103⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 178 42 none (.early s6Step178CompleteLog)=some (.early s6Step178CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 178<498)]
  rw [s6Step178Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
