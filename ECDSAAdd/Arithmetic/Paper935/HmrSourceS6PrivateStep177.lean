import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep175
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

private def s6Step177CompleteMoves : List (Wire × Wire) := [(868,180),(888,436)]

private def s6Step177EarlyControlLog : HmrEarlyControlLog := ⟨[888, 868, 876, 865, 830],[907],[863],[890, 891, 903, 791, 825, 810],[]⟩

private def s6Step177FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[865], [876], [922], [857]],[[], [], [], []]⟩,[880],[803],[830],[907],[863, 890, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[863, 890, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 907, 863, 890]⟩

private def s6Step177CompleteLog : HmrEarlyStepLog := ⟨s6Step177FrontLog,s6Step177CompleteMoves,s6Step177EarlyControlLog⟩

private def s6Step177ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435],795⟩

private def s6Step177ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857],776⟩

private def s6Step177ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179],777⟩

private def s6Step177ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922],775⟩

private def s6Step177FrontOut : WindowBank := ⟨s6Step177ExitFOut,s6Step177ExitGOut,s6Step177ExitFvOut,s6Step177ExitGvOut⟩

private def s6Step177CompleteOut : WindowBank := s6Step177FrontOut.repacked s6Step177CompleteMoves

private def s6Step177EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step177EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step177EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step177EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step177EarlyControlPositiveArena,[907],s6Step177EarlyControlEqualityArena,[863],⟨⟨880,false⟩,[⟨⟨907,false⟩,863⟩]⟩⟩

private def s6Step177EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step177EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step177EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step177EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,880),(881,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step177EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,880),(881,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step177EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step177EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,888⟩,⟨⟨772,false⟩,868⟩,⟨⟨771,false⟩,876⟩,⟨⟨770,false⟩,865⟩,⟨⟨769,false⟩,830⟩]⟩

private def s6Step177EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step177EarlyControlZeroArena,s6Step177EarlyControlZeroPlan,s6Step177EarlyControlClassPlan,s6Step177EarlyControlFlagArena,s6Step177EarlyControlFittedArena,s6Step177EarlyControlHistoryArena,s6Step177EarlyControlSigmaArena,s6Step177EarlyControlOutputArena,s6Step177EarlyControlLog⟩

private def s6Step177CounterWork : List Wire := [830, 907, 863, 890]

private theorem s6Step177Counter_bounded : s6Step177CounterWork.toFinset⊆arenaWires := by norm_num [s6Step177CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step177HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step177CounterDuring : Arena := ⟨s6Step177HeadFvAfter.live∪s6Step177CounterWork.toFinset,Finset.union_subset s6Step177HeadFvAfter.bounded s6Step177Counter_bounded⟩

private def s6Step177EntryFFresh : List Wire := []

private def s6Step177EntryFvFresh : List Wire := []

private def s6Step177EntryGFresh : List Wire := []

private def s6Step177EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step177EntryGvAfter : Arena := s6Step177EntryFBefore

private def s6Step177EntryGvFresh : List Wire := []

private def s6Step177ExitFExtra : List Wire := [436, 876]

private def s6Step177ExitGExtra : List Wire := [180, 865]

private def s6Step177ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,180),(181,436),(437,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step177ExitGvAfter : Arena := s6Step177ExitFAfter

private def s6Step177Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step177Add0Work : List Wire := [863, 890, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step177Add0_bounded : s6Step177Add0Work.toFinset⊆arenaWires := by
  have h : s6Step177Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step177Add0During : Arena := ⟨s6Step177Add0Arena.live∪s6Step177Add0Work.toFinset,Finset.union_subset s6Step177Add0Arena.bounded s6Step177Add0_bounded⟩

private def s6Step177Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step177Add1Work : List Wire := [863, 890, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step177Add1_bounded : s6Step177Add1Work.toFinset⊆arenaWires := by
  have h : s6Step177Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step177Add1During : Arena := ⟨s6Step177Add1Arena.live∪s6Step177Add1Work.toFinset,Finset.union_subset s6Step177Add1Arena.bounded s6Step177Add1_bounded⟩

private def s6Step177F4FlagArena : Arena := ⟨s6Step177HeadFvAfter.live∪{830},Finset.union_subset s6Step177HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step177F4Plan : HmrHybridF4Plan := ⟨s6Step177F4FlagArena,[830],s6Step177Add0Arena,[907],s6Step177Add0During,s6Step177Add0Work,s6Step177Add1During,s6Step177Add1Work⟩

private def s6Step177HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 876],795⟩

private def s6Step177HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857],776⟩

private def s6Step177HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 865],777⟩

private def s6Step177HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922],775⟩

private def s6Step177FrontHead : WindowBank := ⟨s6Step177HeadFOut,s6Step177HeadGOut,s6Step177HeadFvOut,s6Step177HeadGvOut⟩

private def s6Step177EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436],795⟩

private def s6Step177EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793],776⟩

private def s6Step177EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180],777⟩

private def s6Step177EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778],775⟩

private def s6Step177FrontPair : WindowBank := ⟨s6Step177EntryFOut,s6Step177EntryGOut,s6Step177EntryFvOut,s6Step177EntryGvOut⟩

private def s6Step177FrontSigmaArena : Arena := ⟨s6Step177EntryGvAfter.live∪{880},Finset.union_subset s6Step177EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step177HeadFFresh : List Wire := [876]

private def s6Step177HeadFvFresh : List Wire := [857]

private def s6Step177HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step177HeadGFresh : List Wire := [865]

private def s6Step177HeadGvFresh : List Wire := [922]

private def s6Step177FrontPlan : HmrSourceFront := ⟨s6Step177EntryGvAfter,s6Step177FrontPair,(growRow 795 s6Step177EntryFFresh ++ (growRow 777 s6Step177EntryGFresh ++ (growRow 776 s6Step177EntryFvFresh ++ (growRow 775 s6Step177EntryGvFresh ++ [])))),s6Step177FrontSigmaArena,[880],s6Step177HeadGBefore,[803],
  s6Step177HeadFvAfter,s6Step177FrontHead,(growRow 777 s6Step177HeadGFresh ++ (growRow 795 s6Step177HeadFFresh ++ (growRow 775 s6Step177HeadGvFresh ++ (growRow 776 s6Step177HeadFvFresh ++ [])))),s6Step177F4Plan,s6Step177CounterDuring,s6Step177CounterWork,s6Step177ExitGvAfter,s6Step177FrontOut,(shrinkRow 777 s6Step177ExitGExtra ++ (shrinkRow 795 s6Step177ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))⟩

private def s6Step177CompletePlan : HmrEarlyStepPlan := ⟨s6Step177FrontPlan,s6Step177EarlyControlArena,s6Step177EarlyControlPlan,s6Step177CompleteMoves⟩

private theorem s6Step177Complete_apart : List.Disjoint (s6Step177CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [880, 803, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step177CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[880, 803, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step177Complete_owned : (s6Step177CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step177EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step177EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step177CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,436),(437,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step177CompleteRelocationMove0Borrowed : Arena := ⟨s6Step177ExitGvAfter.live∪{180},Finset.union_subset s6Step177ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step177CompleteRelocationMove1Borrowed : Arena := ⟨s6Step177CompleteRelocationMove0After.live∪{436},Finset.union_subset s6Step177CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step177CompleteRelocation_move0_owned : 868∈s6Step177ExitGvAfter.live := by norm_num [s6Step177ExitGvAfter,s6Step177ExitFAfter,arenaWires]

private theorem s6Step177CompleteRelocation_move0_reserve : s6Step177ExitGvAfter.reserve {180}=some s6Step177CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step177ExitGvAfter,s6Step177ExitFAfter,arenaWires]
  · rfl

private theorem s6Step177CompleteRelocation_move0_retire : s6Step177CompleteRelocationMove0Borrowed.retireSet {868}=s6Step177CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step177CompleteRelocationMove0Borrowed s6Step177CompleteRelocationMove0After {868}
  change s6Step177CompleteRelocationMove0After.live=(s6Step177ExitGvAfter.live∪{180})\{868}
  apply hmrArena_update_of_filter_check s6Step177ExitGvAfter s6Step177CompleteRelocationMove0After (fun q => ([(0,180),(181,436),(437,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,436),(437,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [180] [868] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step177CompleteRelocation_move1_owned : 888∈s6Step177CompleteRelocationMove0After.live := by norm_num [s6Step177CompleteRelocationMove0After,arenaWires]

private theorem s6Step177CompleteRelocation_move1_reserve : s6Step177CompleteRelocationMove0After.reserve {436}=some s6Step177CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step177CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step177CompleteRelocation_move1_retire : s6Step177CompleteRelocationMove1Borrowed.retireSet {888}=s6Step177EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step177CompleteRelocationMove1Borrowed s6Step177EarlyControlArena {888}
  change s6Step177EarlyControlArena.live=(s6Step177CompleteRelocationMove0After.live∪{436})\{888}
  apply hmrArena_update_of_filter_check s6Step177CompleteRelocationMove0After s6Step177EarlyControlArena (fun q => ([(0,436),(437,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [436] [888] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step177CompleteRelocation_checked : s6Step177ExitGvAfter.checkRepack [(868,180),(888,436)]=some s6Step177EarlyControlArena := by
  have tail2 : s6Step177EarlyControlArena.checkRepack []=some s6Step177EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step177CompleteRelocationMove0After s6Step177CompleteRelocationMove1Borrowed s6Step177EarlyControlArena s6Step177EarlyControlArena 888 436 []
    s6Step177CompleteRelocation_move1_owned s6Step177CompleteRelocation_move1_reserve s6Step177CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step177ExitGvAfter s6Step177CompleteRelocationMove0Borrowed s6Step177CompleteRelocationMove0After s6Step177EarlyControlArena 868 180 [(888,436)]
    s6Step177CompleteRelocation_move0_owned s6Step177CompleteRelocation_move0_reserve s6Step177CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step177Complete_repack : s6Step177ExitGvAfter.checkRepack s6Step177CompleteMoves=some s6Step177EarlyControlArena := by
  simpa only [s6Step177CompleteMoves] using s6Step177CompleteRelocation_checked

private theorem s6Step177EarlyControl_branchOwned : ([803] : List Wire).toFinset⊆s6Step177EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step177EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,880),(881,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step177EarlyControl_branch : compileHmrBranchRetirement s6Step177EarlyControlSigmaArena 803=some s6Step177EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step177EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step177EarlyControlSigmaArena s6Step177EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,880),(881,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,880),(881,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [803] rfl rfl
    decide +kernel

private theorem s6Step177EarlyControl_classEqualityBorrow : s6Step177EarlyControlPositiveArena.checkBorrow (([880, 907] : List Wire).length-1) s6Step177EarlyControlLog.classWork=some s6Step177EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step177EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step177EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step177EarlyControlEqualityArena,s6Step177EarlyControlPositiveArena,s6Step177EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step177EarlyControl_classEqualityOwned : ([880, 907] : List Wire).toFinset⊆s6Step177EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step177EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step177EarlyControl_classEquality : compileHmrEqualityLog s6Step177EarlyControlPositiveArena [880, 907] 0 s6Step177EarlyControlLog.classWork=some (s6Step177EarlyControlEqualityArena,s6Step177EarlyControlLog.classWork,s6Step177EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step177EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step177EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step177EarlyControl_classOwned : ([769, 830, 880] : List Wire).toFinset⊆s6Step177EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step177EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step177EarlyControl_positiveBorrow : s6Step177EarlyControlZeroArena.checkBorrow (1) s6Step177EarlyControlLog.positiveWork=some s6Step177EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step177EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step177EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step177EarlyControlPositiveArena,s6Step177EarlyControlZeroArena,s6Step177EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step177EarlyControl_class : compileHmrSourceClassLog s6Step177EarlyControlZeroArena false 769 s6Step177EarlyControlZeroPlan.top 0 880 s6Step177EarlyControlLog.positiveWork s6Step177EarlyControlLog.classWork=some s6Step177EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step177EarlyControlClassPlan s6Step177EarlyControlZeroArena false 769 s6Step177EarlyControlZeroPlan.top 0 880
  constructor
  · decide +kernel
  · exact s6Step177EarlyControl_classOwned
  · exact s6Step177EarlyControl_positiveBorrow
  · exact s6Step177EarlyControl_classEquality

private theorem s6Step177EarlyControl_entryRecordOwned : ([803, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step177EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step177EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step177EarlyControl_entrySigmaOwned : ([880, 254] : List Wire).toFinset⊆s6Step177EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step177EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step177EarlyControl_fitBorrow : s6Step177EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step177EarlyControlLog.recordFresh=some s6Step177EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step177EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step177EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step177EarlyControlFittedArena,s6Step177EarlyControlFlagArena,s6Step177EarlyControlLog,arenaWires]

private theorem s6Step177EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step177EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step177EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step177EarlyControl_fit : compileHmrRecordGrowLog s6Step177EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step177EarlyControlLog.recordFresh=some s6Step177EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step177EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step177EarlyControl_fitBorrow

private theorem s6Step177EarlyControl_flagsBorrow : s6Step177EarlyControlEqualityArena.checkBorrow (6) s6Step177EarlyControlLog.flagWork=some s6Step177EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step177EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step177EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step177EarlyControlFlagArena,s6Step177EarlyControlEqualityArena,s6Step177EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step177EarlyControl_flagsOwned : ([863, 253, 252, 251] : List Wire).toFinset⊆s6Step177EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step177EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step177EarlyControl_flags : compileHmrFlagsLog s6Step177EarlyControlClassPlan.equalityArena s6Step177EarlyControlClassPlan.equality.top 253 252 251 s6Step177EarlyControlLog.flagWork=some s6Step177EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step177EarlyControl_flagsOwned⟩
  · exact s6Step177EarlyControl_flagsBorrow

private theorem s6Step177EarlyControl_historyBorrow : s6Step177EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step177EarlyControlLog.recordFresh=some s6Step177EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step177EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step177EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step177EarlyControlArena s6Step177EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step177EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step177EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step177EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step177EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step177EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step177EarlyControl_history : compileHmrRecordGrowLog s6Step177EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step177EarlyControlLog.recordFresh=some s6Step177EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step177EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step177EarlyControl_historyBorrow

private theorem s6Step177EarlyControl_sigmaOwned : ([254, 880] : List Wire).toFinset⊆s6Step177EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step177EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step177EarlyControl_sigmaReleaseOwned : ([880] : List Wire).toFinset⊆s6Step177EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step177EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step177EarlyControl_sigmaRelease : s6Step177EarlyControlHistoryArena.release {880} (fun _ => false)=some s6Step177EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step177EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step177EarlyControlHistoryArena s6Step177EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,880),(881,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [880] rfl rfl
    decide +kernel

private theorem s6Step177EarlyControl_sigma : compileHmrSigmaDropLog s6Step177EarlyControlHistoryArena false 0 0 254 880 []=some s6Step177EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step177EarlyControl_sigmaOwned⟩
  · exact s6Step177EarlyControl_sigmaRelease

private theorem s6Step177EarlyControl_zeroBorrow : s6Step177EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step177EarlyControlLog.zeroWork=some s6Step177EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step177EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step177EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step177EarlyControlArena s6Step177EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step177EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step177EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step177EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step177EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step177EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step177EarlyControl_zero : compileHmrEqualityLog s6Step177EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step177EarlyControlLog.zeroWork=some (s6Step177EarlyControlZeroArena,s6Step177EarlyControlLog.zeroWork,s6Step177EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step177EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step177EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step177EarlyControl_logged : s6Step177EarlyControlPlan.Logged s6Step177EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 880 254 253 252 251 803 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step177EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step177EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step177EarlyControl_zero
  · exact s6Step177EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step177EarlyControl_flags
  · exact s6Step177EarlyControl_fit
  · exact s6Step177EarlyControl_history
  · exact s6Step177EarlyControl_sigma
  · exact s6Step177EarlyControl_branch

private theorem s6Step177EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step177EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 880 254 253 252 251 803 42 s6Step177EarlyControlLog=some s6Step177EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step177EarlyControlPlan s6Step177EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 880 254 253 252 251 803 42 s6Step177EarlyControl_logged

private def s6Step177EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436],795⟩

private def s6Step177EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793],776⟩

private def s6Step177EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180],777⟩

private def s6Step177EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778],775⟩

private def s6Step177FrontBank : WindowBank := ⟨s6Step177EntryFRow,s6Step177EntryGRow,s6Step177EntryFvRow,s6Step177EntryGvRow⟩

private def s6Step177Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 876, 795]

private def s6Step177Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 865, 777]

private def s6Step177Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 776]

private def s6Step177Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 775]

private theorem s6Step177Counter_apart : Disjoint s6Step177HeadFvAfter.live s6Step177CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step177HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step177Counter_borrowed : s6Step177HeadFvAfter.checkBorrow 4 s6Step177CounterWork=some s6Step177CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step177HeadFvAfter s6Step177CounterDuring s6Step177CounterWork.toFinset s6Step177Counter_bounded s6Step177Counter_apart rfl

private theorem s6Step177Counter_owned : (880::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step177HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step177HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step177Counter_checked : compileHmrCounterStepLog s6Step177HeadFvAfter true 880 [774, 773, 772, 771, 770, 769] s6Step177CounterWork=some s6Step177CounterDuring := by
  have owned : ∀q∈880::[774, 773, 772, 771, 770, 769],q∈s6Step177HeadFvAfter.live := fun q hq => s6Step177Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step177Counter_borrowed

private def s6Step177EntryFAfter : Arena := s6Step177EntryFBefore

private theorem s6Step177EntryBank_incomingDistinct : ([s6Step177EntryFRow,s6Step177EntryGRow,s6Step177EntryFvRow,s6Step177EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step177EntryF_Incoming : rowsOwned s6Step177EntryFBefore [s6Step177EntryFRow,s6Step177EntryGRow,s6Step177EntryFvRow,s6Step177EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step177EntryFRow,s6Step177EntryGRow,s6Step177EntryFvRow,s6Step177EntryGvRow] 0 s6Step177EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step177EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step177EntryBank_outgoingOwned : rowsOwned s6Step177EntryGvAfter [s6Step177EntryFOut,s6Step177EntryGOut,s6Step177EntryFvOut,s6Step177EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step177EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step177EntryF_Outgoing : rowsOwned s6Step177EntryGvAfter [s6Step177EntryFOut,s6Step177EntryGOut,s6Step177EntryFvOut,s6Step177EntryGvOut] :=
  hmrRows_owned_drop s6Step177EntryGvAfter [s6Step177EntryFOut,s6Step177EntryGOut,s6Step177EntryFvOut,s6Step177EntryGvOut] 0 s6Step177EntryBank_outgoingOwned

private theorem s6Step177EntryF_distinct : (s6Step177EntryFRow.sign::s6Step177EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step177EntryF_owned : (s6Step177EntryFRow.sign::s6Step177EntryFRow.payload).toFinset⊆s6Step177EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step177EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step177EntryF_reserved : s6Step177EntryFBefore.reserve s6Step177EntryFFresh.toFinset=some s6Step177EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step177EntryFFresh,arenaWires]
  · norm_num [s6Step177EntryFBefore,s6Step177EntryFFresh,arenaWires]
  · simp only [s6Step177EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step177EntryF_checked : planRowResizeLog s6Step177EntryFBefore s6Step177EntryFRow 181 s6Step177EntryFFresh=
    some (s6Step177EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436],795⟩,growRow 795 s6Step177EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step177EntryFBefore s6Step177EntryFAfter s6Step177EntryFRow 181 s6Step177EntryFFresh
    s6Step177EntryF_distinct s6Step177EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step177EntryF_reserved
  have rowEq : WindowRow.mk (s6Step177EntryFRow.payload++s6Step177EntryFFresh) s6Step177EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step177EntryFvAfter : Arena := s6Step177EntryFBefore

private def s6Step177EntryFvBefore : Arena := s6Step177EntryFBefore

private theorem s6Step177EntryFv_Incoming : rowsOwned s6Step177EntryFvBefore [s6Step177EntryFvRow,s6Step177EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step177EntryFRow,s6Step177EntryGRow,s6Step177EntryFvRow,s6Step177EntryGvRow] 2 s6Step177EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step177EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step177EntryFv_Outgoing : rowsOwned s6Step177EntryGvAfter [s6Step177EntryFvOut,s6Step177EntryGvOut] :=
  hmrRows_owned_drop s6Step177EntryGvAfter [s6Step177EntryFOut,s6Step177EntryGOut,s6Step177EntryFvOut,s6Step177EntryGvOut] 2 s6Step177EntryBank_outgoingOwned

private theorem s6Step177EntryFv_distinct : (s6Step177EntryFvRow.sign::s6Step177EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step177EntryFv_owned : (s6Step177EntryFvRow.sign::s6Step177EntryFvRow.payload).toFinset⊆s6Step177EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step177EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step177EntryFv_reserved : s6Step177EntryFvBefore.reserve s6Step177EntryFvFresh.toFinset=some s6Step177EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step177EntryFvFresh,arenaWires]
  · norm_num [s6Step177EntryFvBefore,s6Step177EntryFBefore,s6Step177EntryFvFresh,arenaWires]
  · simp only [s6Step177EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step177EntryFv_checked : planRowResizeLog s6Step177EntryFvBefore s6Step177EntryFvRow 102 s6Step177EntryFvFresh=
    some (s6Step177EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793],776⟩,growRow 776 s6Step177EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step177EntryFvBefore s6Step177EntryFvAfter s6Step177EntryFvRow 102 s6Step177EntryFvFresh
    s6Step177EntryFv_distinct s6Step177EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step177EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step177EntryFvRow.payload++s6Step177EntryFvFresh) s6Step177EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step177EntryGAfter : Arena := s6Step177EntryFBefore

private def s6Step177EntryGBefore : Arena := s6Step177EntryFBefore

private theorem s6Step177EntryG_Incoming : rowsOwned s6Step177EntryGBefore [s6Step177EntryGRow,s6Step177EntryFvRow,s6Step177EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step177EntryFRow,s6Step177EntryGRow,s6Step177EntryFvRow,s6Step177EntryGvRow] 1 s6Step177EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step177EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step177EntryG_Outgoing : rowsOwned s6Step177EntryGvAfter [s6Step177EntryGOut,s6Step177EntryFvOut,s6Step177EntryGvOut] :=
  hmrRows_owned_drop s6Step177EntryGvAfter [s6Step177EntryFOut,s6Step177EntryGOut,s6Step177EntryFvOut,s6Step177EntryGvOut] 1 s6Step177EntryBank_outgoingOwned

private theorem s6Step177EntryG_distinct : (s6Step177EntryGRow.sign::s6Step177EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step177EntryG_owned : (s6Step177EntryGRow.sign::s6Step177EntryGRow.payload).toFinset⊆s6Step177EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step177EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step177EntryG_reserved : s6Step177EntryGBefore.reserve s6Step177EntryGFresh.toFinset=some s6Step177EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step177EntryGFresh,arenaWires]
  · norm_num [s6Step177EntryGBefore,s6Step177EntryFBefore,s6Step177EntryGFresh,arenaWires]
  · simp only [s6Step177EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step177EntryG_checked : planRowResizeLog s6Step177EntryGBefore s6Step177EntryGRow 181 s6Step177EntryGFresh=
    some (s6Step177EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180],777⟩,growRow 777 s6Step177EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step177EntryGBefore s6Step177EntryGAfter s6Step177EntryGRow 181 s6Step177EntryGFresh
    s6Step177EntryG_distinct s6Step177EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step177EntryG_reserved
  have rowEq : WindowRow.mk (s6Step177EntryGRow.payload++s6Step177EntryGFresh) s6Step177EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step177EntryGvBefore : Arena := s6Step177EntryFBefore

private theorem s6Step177EntryGv_Incoming : rowsOwned s6Step177EntryGvBefore [s6Step177EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step177EntryFRow,s6Step177EntryGRow,s6Step177EntryFvRow,s6Step177EntryGvRow] 3 s6Step177EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step177EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step177EntryGv_Outgoing : rowsOwned s6Step177EntryGvAfter [s6Step177EntryGvOut] :=
  hmrRows_owned_drop s6Step177EntryGvAfter [s6Step177EntryFOut,s6Step177EntryGOut,s6Step177EntryFvOut,s6Step177EntryGvOut] 3 s6Step177EntryBank_outgoingOwned

private theorem s6Step177EntryGv_distinct : (s6Step177EntryGvRow.sign::s6Step177EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step177EntryGv_owned : (s6Step177EntryGvRow.sign::s6Step177EntryGvRow.payload).toFinset⊆s6Step177EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step177EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step177EntryGv_reserved : s6Step177EntryGvBefore.reserve s6Step177EntryGvFresh.toFinset=some s6Step177EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step177EntryGvFresh,arenaWires]
  · norm_num [s6Step177EntryGvBefore,s6Step177EntryFBefore,s6Step177EntryGvFresh,arenaWires]
  · simp only [s6Step177EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step177EntryGv_checked : planRowResizeLog s6Step177EntryGvBefore s6Step177EntryGvRow 102 s6Step177EntryGvFresh=
    some (s6Step177EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778],775⟩,growRow 775 s6Step177EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step177EntryGvBefore s6Step177EntryGvAfter s6Step177EntryGvRow 102 s6Step177EntryGvFresh
    s6Step177EntryGv_distinct s6Step177EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step177EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step177EntryGvRow.payload++s6Step177EntryGvFresh) s6Step177EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step177EntryBank_rows : planWindowRowsLog s6Step177EntryFBefore [(s6Step177EntryFRow,181),(s6Step177EntryGRow,181),(s6Step177EntryFvRow,102),(s6Step177EntryGvRow,102)] [s6Step177EntryFFresh,s6Step177EntryGFresh,s6Step177EntryFvFresh,s6Step177EntryGvFresh]=
    some (s6Step177EntryGvAfter,[s6Step177EntryFOut,s6Step177EntryGOut,s6Step177EntryFvOut,s6Step177EntryGvOut],(growRow 795 s6Step177EntryFFresh ++ (growRow 777 s6Step177EntryGFresh ++ (growRow 776 s6Step177EntryFvFresh ++ (growRow 775 s6Step177EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step177EntryGvAfter [] []=some (s6Step177EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step177EntryGvBefore s6Step177EntryGvAfter s6Step177EntryGvAfter
    s6Step177EntryGvRow s6Step177EntryGvOut 102 s6Step177EntryGvFresh [] [] []
    (growRow 775 s6Step177EntryGvFresh) ([]) s6Step177EntryGv_Incoming s6Step177EntryGv_checked h4 s6Step177EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step177EntryFvBefore s6Step177EntryFvAfter s6Step177EntryGvAfter
    s6Step177EntryFvRow s6Step177EntryFvOut 102 s6Step177EntryFvFresh [(s6Step177EntryGvRow,102)] [s6Step177EntryGvFresh] [s6Step177EntryGvOut]
    (growRow 776 s6Step177EntryFvFresh) ((growRow 775 s6Step177EntryGvFresh ++ [])) s6Step177EntryFv_Incoming s6Step177EntryFv_checked h3 s6Step177EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step177EntryGBefore s6Step177EntryGAfter s6Step177EntryGvAfter
    s6Step177EntryGRow s6Step177EntryGOut 181 s6Step177EntryGFresh [(s6Step177EntryFvRow,102),(s6Step177EntryGvRow,102)] [s6Step177EntryFvFresh,s6Step177EntryGvFresh] [s6Step177EntryFvOut,s6Step177EntryGvOut]
    (growRow 777 s6Step177EntryGFresh) ((growRow 776 s6Step177EntryFvFresh ++ (growRow 775 s6Step177EntryGvFresh ++ []))) s6Step177EntryG_Incoming s6Step177EntryG_checked h2 s6Step177EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step177EntryFBefore s6Step177EntryFAfter s6Step177EntryGvAfter
    s6Step177EntryFRow s6Step177EntryFOut 181 s6Step177EntryFFresh [(s6Step177EntryGRow,181),(s6Step177EntryFvRow,102),(s6Step177EntryGvRow,102)] [s6Step177EntryGFresh,s6Step177EntryFvFresh,s6Step177EntryGvFresh] [s6Step177EntryGOut,s6Step177EntryFvOut,s6Step177EntryGvOut]
    (growRow 795 s6Step177EntryFFresh) ((growRow 777 s6Step177EntryGFresh ++ (growRow 776 s6Step177EntryFvFresh ++ (growRow 775 s6Step177EntryGvFresh ++ [])))) s6Step177EntryF_Incoming s6Step177EntryF_checked h1 s6Step177EntryF_Outgoing
  exact h0

private theorem s6Step177EntryBank_checked : compileHmrBankResizeLog .entry s6Step177EntryFBefore ⟨s6Step177EntryFRow,s6Step177EntryGRow,s6Step177EntryFvRow,s6Step177EntryGvRow⟩ ⟨181,181,102,102⟩ [s6Step177EntryFFresh,s6Step177EntryGFresh,s6Step177EntryFvFresh,s6Step177EntryGvFresh]=
    some (s6Step177EntryGvAfter,⟨s6Step177EntryFOut,s6Step177EntryGOut,s6Step177EntryFvOut,s6Step177EntryGvOut⟩,(growRow 795 s6Step177EntryFFresh ++ (growRow 777 s6Step177EntryGFresh ++ (growRow 776 s6Step177EntryFvFresh ++ (growRow 775 s6Step177EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step177EntryBank_rows]
  rfl

private def s6Step177ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,180),(181,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step177ExitFBefore : Arena := s6Step177ExitGAfter

private def s6Step177ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 876],795⟩

private def s6Step177ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857],776⟩

private def s6Step177ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 865],777⟩

private def s6Step177ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922],775⟩

private theorem s6Step177ExitBank_incomingDistinct : ([s6Step177ExitGRow,s6Step177ExitFRow,s6Step177ExitFvRow,s6Step177ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step177ExitF_Incoming : rowsOwned s6Step177ExitFBefore [s6Step177ExitFRow,s6Step177ExitFvRow,s6Step177ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step177ExitGRow,s6Step177ExitFRow,s6Step177ExitFvRow,s6Step177ExitGvRow] 1 s6Step177ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step177ExitFBefore (fun q => ([(0,180),(181,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step177ExitBank_outgoingOwned : rowsOwned s6Step177ExitGvAfter [s6Step177ExitGOut,s6Step177ExitFOut,s6Step177ExitFvOut,s6Step177ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step177ExitGvAfter (fun q => ([(0,180),(181,436),(437,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step177ExitF_Outgoing : rowsOwned s6Step177ExitGvAfter [s6Step177ExitFOut,s6Step177ExitFvOut,s6Step177ExitGvOut] :=
  hmrRows_owned_drop s6Step177ExitGvAfter [s6Step177ExitGOut,s6Step177ExitFOut,s6Step177ExitFvOut,s6Step177ExitGvOut] 1 s6Step177ExitBank_outgoingOwned

private theorem s6Step177ExitF_distinct : (s6Step177ExitFRow.sign::s6Step177ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step177ExitF_owned : (s6Step177ExitFRow.sign::s6Step177ExitFRow.payload).toFinset⊆s6Step177ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step177ExitFBefore (fun q => ([(0,180),(181,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step177ExitF_retired : s6Step177ExitFBefore.retireSet s6Step177ExitFExtra.toFinset=s6Step177ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step177ExitFBefore s6Step177ExitFAfter s6Step177ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step177ExitFBefore s6Step177ExitFAfter (fun q => ([(0,180),(181,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,180),(181,436),(437,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step177ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step177ExitF_checked : planRowResizeLog s6Step177ExitFBefore s6Step177ExitFRow 180 []=
    some (s6Step177ExitFAfter,s6Step177ExitFOut,shrinkRow 795 s6Step177ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step177ExitFBefore s6Step177ExitFRow 180 s6Step177ExitF_distinct s6Step177ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step177ExitFRow.payload.take 180) s6Step177ExitFRow.sign=s6Step177ExitFOut := by decide +kernel
  have hi : s6Step177ExitFRow.payload.drop 180=s6Step177ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step177ExitF_retired] at result
  exact result

private def s6Step177ExitFvAfter : Arena := s6Step177ExitFAfter

private def s6Step177ExitFvBefore : Arena := s6Step177ExitFAfter

private theorem s6Step177ExitFv_Incoming : rowsOwned s6Step177ExitFvBefore [s6Step177ExitFvRow,s6Step177ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step177ExitGRow,s6Step177ExitFRow,s6Step177ExitFvRow,s6Step177ExitGvRow] 2 s6Step177ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step177ExitFvBefore (fun q => ([(0,180),(181,436),(437,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step177ExitFv_Outgoing : rowsOwned s6Step177ExitGvAfter [s6Step177ExitFvOut,s6Step177ExitGvOut] :=
  hmrRows_owned_drop s6Step177ExitGvAfter [s6Step177ExitGOut,s6Step177ExitFOut,s6Step177ExitFvOut,s6Step177ExitGvOut] 2 s6Step177ExitBank_outgoingOwned

private theorem s6Step177ExitFv_distinct : (s6Step177ExitFvRow.sign::s6Step177ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step177ExitFv_owned : (s6Step177ExitFvRow.sign::s6Step177ExitFvRow.payload).toFinset⊆s6Step177ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step177ExitFvBefore (fun q => ([(0,180),(181,436),(437,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step177ExitFv_reserved : s6Step177ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step177ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step177ExitFv_checked : planRowResizeLog s6Step177ExitFvBefore s6Step177ExitFvRow 103 []=
    some (s6Step177ExitFvAfter,s6Step177ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step177ExitFvBefore s6Step177ExitFvAfter s6Step177ExitFvRow 103 []
    s6Step177ExitFv_distinct s6Step177ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step177ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step177ExitFvRow.payload++[]) s6Step177ExitFvRow.sign=s6Step177ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step177ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step177ExitG_Incoming : rowsOwned s6Step177ExitGBefore [s6Step177ExitGRow,s6Step177ExitFRow,s6Step177ExitFvRow,s6Step177ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step177ExitGRow,s6Step177ExitFRow,s6Step177ExitFvRow,s6Step177ExitGvRow] 0 s6Step177ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step177ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step177ExitG_Outgoing : rowsOwned s6Step177ExitGvAfter [s6Step177ExitGOut,s6Step177ExitFOut,s6Step177ExitFvOut,s6Step177ExitGvOut] :=
  hmrRows_owned_drop s6Step177ExitGvAfter [s6Step177ExitGOut,s6Step177ExitFOut,s6Step177ExitFvOut,s6Step177ExitGvOut] 0 s6Step177ExitBank_outgoingOwned

private theorem s6Step177ExitG_distinct : (s6Step177ExitGRow.sign::s6Step177ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step177ExitG_owned : (s6Step177ExitGRow.sign::s6Step177ExitGRow.payload).toFinset⊆s6Step177ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step177ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step177ExitG_retired : s6Step177ExitGBefore.retireSet s6Step177ExitGExtra.toFinset=s6Step177ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step177ExitGBefore s6Step177ExitGAfter s6Step177ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step177ExitGBefore s6Step177ExitGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,180),(181,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step177ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step177ExitG_checked : planRowResizeLog s6Step177ExitGBefore s6Step177ExitGRow 180 []=
    some (s6Step177ExitGAfter,s6Step177ExitGOut,shrinkRow 777 s6Step177ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step177ExitGBefore s6Step177ExitGRow 180 s6Step177ExitG_distinct s6Step177ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step177ExitGRow.payload.take 180) s6Step177ExitGRow.sign=s6Step177ExitGOut := by decide +kernel
  have hi : s6Step177ExitGRow.payload.drop 180=s6Step177ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step177ExitG_retired] at result
  exact result

private def s6Step177ExitGvBefore : Arena := s6Step177ExitFAfter

private theorem s6Step177ExitGv_Incoming : rowsOwned s6Step177ExitGvBefore [s6Step177ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step177ExitGRow,s6Step177ExitFRow,s6Step177ExitFvRow,s6Step177ExitGvRow] 3 s6Step177ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step177ExitGvBefore (fun q => ([(0,180),(181,436),(437,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step177ExitGv_Outgoing : rowsOwned s6Step177ExitGvAfter [s6Step177ExitGvOut] :=
  hmrRows_owned_drop s6Step177ExitGvAfter [s6Step177ExitGOut,s6Step177ExitFOut,s6Step177ExitFvOut,s6Step177ExitGvOut] 3 s6Step177ExitBank_outgoingOwned

private theorem s6Step177ExitGv_distinct : (s6Step177ExitGvRow.sign::s6Step177ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step177ExitGv_owned : (s6Step177ExitGvRow.sign::s6Step177ExitGvRow.payload).toFinset⊆s6Step177ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step177ExitGvBefore (fun q => ([(0,180),(181,436),(437,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step177ExitGv_reserved : s6Step177ExitGvBefore.reserve (∅ : Finset Wire)=some s6Step177ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step177ExitGv_checked : planRowResizeLog s6Step177ExitGvBefore s6Step177ExitGvRow 103 []=
    some (s6Step177ExitGvAfter,s6Step177ExitGvOut,growRow 775 []) := by
  have result := planRowResizeLog_of_growth s6Step177ExitGvBefore s6Step177ExitGvAfter s6Step177ExitGvRow 103 []
    s6Step177ExitGv_distinct s6Step177ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step177ExitGv_reserved
  have rowEq : WindowRow.mk (s6Step177ExitGvRow.payload++[]) s6Step177ExitGvRow.sign=s6Step177ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step177ExitBank_rows : planWindowRowsLog s6Step177ExitGBefore [(s6Step177ExitGRow,180),(s6Step177ExitFRow,180),(s6Step177ExitFvRow,103),(s6Step177ExitGvRow,103)] [[],[],[],[]]=
    some (s6Step177ExitGvAfter,[s6Step177ExitGOut,s6Step177ExitFOut,s6Step177ExitFvOut,s6Step177ExitGvOut],(shrinkRow 777 s6Step177ExitGExtra ++ (shrinkRow 795 s6Step177ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  have h4 : planWindowRowsLog s6Step177ExitGvAfter [] []=some (s6Step177ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step177ExitGvBefore s6Step177ExitGvAfter s6Step177ExitGvAfter
    s6Step177ExitGvRow s6Step177ExitGvOut 103 [] [] [] []
    (growRow 775 []) ([]) s6Step177ExitGv_Incoming s6Step177ExitGv_checked h4 s6Step177ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step177ExitFvBefore s6Step177ExitFvAfter s6Step177ExitGvAfter
    s6Step177ExitFvRow s6Step177ExitFvOut 103 [] [(s6Step177ExitGvRow,103)] [[]] [s6Step177ExitGvOut]
    (growRow 776 []) ((growRow 775 [] ++ [])) s6Step177ExitFv_Incoming s6Step177ExitFv_checked h3 s6Step177ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step177ExitFBefore s6Step177ExitFAfter s6Step177ExitGvAfter
    s6Step177ExitFRow s6Step177ExitFOut 180 [] [(s6Step177ExitFvRow,103),(s6Step177ExitGvRow,103)] [[],[]] [s6Step177ExitFvOut,s6Step177ExitGvOut]
    (shrinkRow 795 s6Step177ExitFExtra) ((growRow 776 [] ++ (growRow 775 [] ++ []))) s6Step177ExitF_Incoming s6Step177ExitF_checked h2 s6Step177ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step177ExitGBefore s6Step177ExitGAfter s6Step177ExitGvAfter
    s6Step177ExitGRow s6Step177ExitGOut 180 [] [(s6Step177ExitFRow,180),(s6Step177ExitFvRow,103),(s6Step177ExitGvRow,103)] [[],[],[]] [s6Step177ExitFOut,s6Step177ExitFvOut,s6Step177ExitGvOut]
    (shrinkRow 777 s6Step177ExitGExtra) ((shrinkRow 795 s6Step177ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ [])))) s6Step177ExitG_Incoming s6Step177ExitG_checked h1 s6Step177ExitG_Outgoing
  exact h0

private theorem s6Step177ExitBank_checked : compileHmrBankResizeLog .exit s6Step177ExitGBefore ⟨s6Step177ExitFRow,s6Step177ExitGRow,s6Step177ExitFvRow,s6Step177ExitGvRow⟩ ⟨180,180,103,103⟩ [[],[],[],[]]=
    some (s6Step177ExitGvAfter,⟨s6Step177ExitFOut,s6Step177ExitGOut,s6Step177ExitFvOut,s6Step177ExitGvOut⟩,(shrinkRow 777 s6Step177ExitGExtra ++ (shrinkRow 795 s6Step177ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step177ExitBank_rows]
  rfl

private theorem s6Step177Add0_apart : Disjoint s6Step177Add0Arena.live s6Step177Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step177Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step177Add0_card : s6Step177Add0Arena.live.card=882 := by
  decide +kernel

private theorem s6Step177Add0_borrowed : s6Step177Add0Arena.checkBorrow (hmrHybridCount s6Step177Add0Arena s6Step177Add0B.length) s6Step177Add0Work=some s6Step177Add0During := by
  have len : s6Step177Add0Work.length=hmrHybridCount s6Step177Add0Arena s6Step177Add0B.length := by
    rw [hmrHybridCount,s6Step177Add0_card]
    decide +kernel
  have nd : s6Step177Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step177Add0Arena s6Step177Add0During s6Step177Add0Work.toFinset s6Step177Add0_bounded s6Step177Add0_apart rfl

private theorem s6Step177Add0_distinct : (830::803::907::(s6Step177Add0A++s6Step177Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step177Add0_owned : (830::803::907::(s6Step177Add0A++s6Step177Add0B)).toFinset⊆s6Step177Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step177Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step177Add0_checked : compileHmrHybridCinLog s6Step177Add0Arena 803 830 907 s6Step177Add0A s6Step177Add0B s6Step177Add0Work=some s6Step177Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step177Add0Arena s6Step177Add0During 803 830 907 s6Step177Add0A s6Step177Add0B s6Step177Add0Work
    (by decide +kernel) (by decide +kernel) s6Step177Add0_distinct
    (fun q hq => s6Step177Add0_owned (List.mem_toFinset.mpr hq)) s6Step177Add0_borrowed

private theorem s6Step177Add1_apart : Disjoint s6Step177Add1Arena.live s6Step177Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step177Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step177Add1_card : s6Step177Add1Arena.live.card=882 := by
  decide +kernel

private theorem s6Step177Add1_borrowed : s6Step177Add1Arena.checkBorrow (hmrHybridCount s6Step177Add1Arena s6Step177Add1B.length) s6Step177Add1Work=some s6Step177Add1During := by
  have len : s6Step177Add1Work.length=hmrHybridCount s6Step177Add1Arena s6Step177Add1B.length := by
    rw [hmrHybridCount,s6Step177Add1_card]
    decide +kernel
  have nd : s6Step177Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step177Add1Arena s6Step177Add1During s6Step177Add1Work.toFinset s6Step177Add1_bounded s6Step177Add1_apart rfl

private theorem s6Step177Add1_distinct : (830::803::907::(s6Step177Add1A++s6Step177Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step177Add1_owned : (830::803::907::(s6Step177Add1A++s6Step177Add1B)).toFinset⊆s6Step177Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step177Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step177Add1_checked : compileHmrHybridCinLog s6Step177Add1Arena 803 830 907 s6Step177Add1A s6Step177Add1B s6Step177Add1Work=some s6Step177Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step177Add1Arena s6Step177Add1During 803 830 907 s6Step177Add1A s6Step177Add1B s6Step177Add1Work
    (by decide +kernel) (by decide +kernel) s6Step177Add1_distinct
    (fun q hq => s6Step177Add1_owned (List.mem_toFinset.mpr hq)) s6Step177Add1_borrowed

private theorem s6Step177F4_apart : Disjoint (s6Step177Add0A++s6Step177Add0B).toFinset (s6Step177Add1A++s6Step177Add1B).toFinset := by
  have nd : ((s6Step177Add0A++s6Step177Add0B)++(s6Step177Add1A++s6Step177Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step177F4_carry : s6Step177F4FlagArena.checkBorrow 1 [907]=some s6Step177Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step177F4FlagArena,s6Step177HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step177F4FlagArena,s6Step177HeadFvAfter,s6Step177Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step177F4_distinct : (880::803::830::907::((s6Step177Add0A++s6Step177Add1A)++(s6Step177Add0B++s6Step177Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step177F4_flag : s6Step177HeadFvAfter.checkBorrow 1 [830]=some s6Step177F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step177HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step177F4_owned : (880::803::((s6Step177Add0A++s6Step177Add1A)++(s6Step177Add0B++s6Step177Add1B))).toFinset⊆s6Step177HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step177HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step177F4_checked : compileHmrHybridF4Log s6Step177HeadFvAfter 880 803 s6Step177Add0A s6Step177Add0B s6Step177Add1A s6Step177Add1B [830] [907] s6Step177Add0Work s6Step177Add1Work=some s6Step177F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step177HeadFvAfter s6Step177F4FlagArena s6Step177Add0Arena s6Step177Add0During s6Step177Add1During 880 803
    s6Step177Add0A s6Step177Add0B s6Step177Add1A s6Step177Add1B [830] [907] s6Step177Add0Work s6Step177Add1Work
    (fun q hq => s6Step177F4_owned (List.mem_toFinset.mpr hq)) s6Step177F4_flag s6Step177F4_carry
    s6Step177F4_distinct s6Step177F4_apart s6Step177Add0_checked s6Step177Add1_checked

private theorem s6Step177Front_branch : s6Step177FrontSigmaArena.checkBorrow 1 [803]=some s6Step177HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step177FrontSigmaArena,s6Step177EntryGvAfter,s6Step177EntryFBefore,arenaWires]
  · change s6Step177HeadGBefore.live=(s6Step177EntryGvAfter.live∪{880})∪{803}
    apply hmrArena_union_pair_of_filter_check s6Step177EntryGvAfter s6Step177HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 880 803 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step177Front_entry : HmrFrontEntryValid s6Step177EntryFBefore s6Step177FrontBank 181 102 ⟨180,180,103,103⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step177FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step177EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step177EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step177FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step177Front_sigma : s6Step177EntryGvAfter.checkBorrow 1 [880]=some s6Step177FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step177EntryGvAfter,s6Step177EntryFBefore,arenaWires]
  · rfl

private def s6Step177HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step177HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step177HeadFBefore : Arena := s6Step177HeadGAfter

private def s6Step177HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436],795⟩

private def s6Step177HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793],776⟩

private def s6Step177HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180],777⟩

private def s6Step177HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778],775⟩

private theorem s6Step177HeadBank_incomingDistinct : ([s6Step177HeadGRow,s6Step177HeadFRow,s6Step177HeadGvRow,s6Step177HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step177HeadF_Incoming : rowsOwned s6Step177HeadFBefore [s6Step177HeadFRow,s6Step177HeadGvRow,s6Step177HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step177HeadGRow,s6Step177HeadFRow,s6Step177HeadGvRow,s6Step177HeadFvRow] 1 s6Step177HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step177HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step177HeadBank_outgoingOwned : rowsOwned s6Step177HeadFvAfter [s6Step177HeadGOut,s6Step177HeadFOut,s6Step177HeadGvOut,s6Step177HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step177HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step177HeadF_Outgoing : rowsOwned s6Step177HeadFvAfter [s6Step177HeadFOut,s6Step177HeadGvOut,s6Step177HeadFvOut] :=
  hmrRows_owned_drop s6Step177HeadFvAfter [s6Step177HeadGOut,s6Step177HeadFOut,s6Step177HeadGvOut,s6Step177HeadFvOut] 1 s6Step177HeadBank_outgoingOwned

private theorem s6Step177HeadF_distinct : (s6Step177HeadFRow.sign::s6Step177HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step177HeadF_owned : (s6Step177HeadFRow.sign::s6Step177HeadFRow.payload).toFinset⊆s6Step177HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step177HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step177HeadF_reserved : s6Step177HeadFBefore.reserve s6Step177HeadFFresh.toFinset=some s6Step177HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step177HeadFFresh,arenaWires]
  · norm_num [s6Step177HeadFBefore,s6Step177HeadGAfter,s6Step177HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step177HeadFBefore s6Step177HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step177HeadFFresh rfl rfl
    · norm_num [s6Step177HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step177HeadF_checked : planRowResizeLog s6Step177HeadFBefore s6Step177HeadFRow 182 s6Step177HeadFFresh=
    some (s6Step177HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 876],795⟩,growRow 795 s6Step177HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step177HeadFBefore s6Step177HeadFAfter s6Step177HeadFRow 182 s6Step177HeadFFresh
    s6Step177HeadF_distinct s6Step177HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step177HeadF_reserved
  have rowEq : WindowRow.mk (s6Step177HeadFRow.payload++s6Step177HeadFFresh) s6Step177HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 876],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step177HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step177HeadFvBefore : Arena := s6Step177HeadGvAfter

private theorem s6Step177HeadFv_Incoming : rowsOwned s6Step177HeadFvBefore [s6Step177HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step177HeadGRow,s6Step177HeadFRow,s6Step177HeadGvRow,s6Step177HeadFvRow] 3 s6Step177HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step177HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step177HeadFv_Outgoing : rowsOwned s6Step177HeadFvAfter [s6Step177HeadFvOut] :=
  hmrRows_owned_drop s6Step177HeadFvAfter [s6Step177HeadGOut,s6Step177HeadFOut,s6Step177HeadGvOut,s6Step177HeadFvOut] 3 s6Step177HeadBank_outgoingOwned

private theorem s6Step177HeadFv_distinct : (s6Step177HeadFvRow.sign::s6Step177HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step177HeadFv_owned : (s6Step177HeadFvRow.sign::s6Step177HeadFvRow.payload).toFinset⊆s6Step177HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step177HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step177HeadFv_reserved : s6Step177HeadFvBefore.reserve s6Step177HeadFvFresh.toFinset=some s6Step177HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step177HeadFvFresh,arenaWires]
  · norm_num [s6Step177HeadFvBefore,s6Step177HeadGvAfter,s6Step177HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step177HeadFvBefore s6Step177HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step177HeadFvFresh rfl rfl
    · norm_num [s6Step177HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step177HeadFv_checked : planRowResizeLog s6Step177HeadFvBefore s6Step177HeadFvRow 103 s6Step177HeadFvFresh=
    some (s6Step177HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857],776⟩,growRow 776 s6Step177HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step177HeadFvBefore s6Step177HeadFvAfter s6Step177HeadFvRow 103 s6Step177HeadFvFresh
    s6Step177HeadFv_distinct s6Step177HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step177HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step177HeadFvRow.payload++s6Step177HeadFvFresh) s6Step177HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step177HeadG_Incoming : rowsOwned s6Step177HeadGBefore [s6Step177HeadGRow,s6Step177HeadFRow,s6Step177HeadGvRow,s6Step177HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step177HeadGRow,s6Step177HeadFRow,s6Step177HeadGvRow,s6Step177HeadFvRow] 0 s6Step177HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step177HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step177HeadG_Outgoing : rowsOwned s6Step177HeadFvAfter [s6Step177HeadGOut,s6Step177HeadFOut,s6Step177HeadGvOut,s6Step177HeadFvOut] :=
  hmrRows_owned_drop s6Step177HeadFvAfter [s6Step177HeadGOut,s6Step177HeadFOut,s6Step177HeadGvOut,s6Step177HeadFvOut] 0 s6Step177HeadBank_outgoingOwned

private theorem s6Step177HeadG_distinct : (s6Step177HeadGRow.sign::s6Step177HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step177HeadG_owned : (s6Step177HeadGRow.sign::s6Step177HeadGRow.payload).toFinset⊆s6Step177HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step177HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step177HeadG_reserved : s6Step177HeadGBefore.reserve s6Step177HeadGFresh.toFinset=some s6Step177HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step177HeadGFresh,arenaWires]
  · norm_num [s6Step177HeadGBefore,s6Step177HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step177HeadGBefore s6Step177HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step177HeadGFresh rfl rfl
    · norm_num [s6Step177HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step177HeadG_checked : planRowResizeLog s6Step177HeadGBefore s6Step177HeadGRow 182 s6Step177HeadGFresh=
    some (s6Step177HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 865],777⟩,growRow 777 s6Step177HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step177HeadGBefore s6Step177HeadGAfter s6Step177HeadGRow 182 s6Step177HeadGFresh
    s6Step177HeadG_distinct s6Step177HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step177HeadG_reserved
  have rowEq : WindowRow.mk (s6Step177HeadGRow.payload++s6Step177HeadGFresh) s6Step177HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 865],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step177HeadGvBefore : Arena := s6Step177HeadFAfter

private theorem s6Step177HeadGv_Incoming : rowsOwned s6Step177HeadGvBefore [s6Step177HeadGvRow,s6Step177HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step177HeadGRow,s6Step177HeadFRow,s6Step177HeadGvRow,s6Step177HeadFvRow] 2 s6Step177HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step177HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step177HeadGv_Outgoing : rowsOwned s6Step177HeadFvAfter [s6Step177HeadGvOut,s6Step177HeadFvOut] :=
  hmrRows_owned_drop s6Step177HeadFvAfter [s6Step177HeadGOut,s6Step177HeadFOut,s6Step177HeadGvOut,s6Step177HeadFvOut] 2 s6Step177HeadBank_outgoingOwned

private theorem s6Step177HeadGv_distinct : (s6Step177HeadGvRow.sign::s6Step177HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step177HeadGv_owned : (s6Step177HeadGvRow.sign::s6Step177HeadGvRow.payload).toFinset⊆s6Step177HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step177HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step177HeadGv_reserved : s6Step177HeadGvBefore.reserve s6Step177HeadGvFresh.toFinset=some s6Step177HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step177HeadGvFresh,arenaWires]
  · norm_num [s6Step177HeadGvBefore,s6Step177HeadFAfter,s6Step177HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step177HeadGvBefore s6Step177HeadGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step177HeadGvFresh rfl rfl
    · norm_num [s6Step177HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step177HeadGv_checked : planRowResizeLog s6Step177HeadGvBefore s6Step177HeadGvRow 103 s6Step177HeadGvFresh=
    some (s6Step177HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922],775⟩,growRow 775 s6Step177HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step177HeadGvBefore s6Step177HeadGvAfter s6Step177HeadGvRow 103 s6Step177HeadGvFresh
    s6Step177HeadGv_distinct s6Step177HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step177HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step177HeadGvRow.payload++s6Step177HeadGvFresh) s6Step177HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step177HeadBank_rows : planWindowRowsLog s6Step177HeadGBefore [(s6Step177HeadGRow,182),(s6Step177HeadFRow,182),(s6Step177HeadGvRow,103),(s6Step177HeadFvRow,103)] [s6Step177HeadGFresh,s6Step177HeadFFresh,s6Step177HeadGvFresh,s6Step177HeadFvFresh]=
    some (s6Step177HeadFvAfter,[s6Step177HeadGOut,s6Step177HeadFOut,s6Step177HeadGvOut,s6Step177HeadFvOut],(growRow 777 s6Step177HeadGFresh ++ (growRow 795 s6Step177HeadFFresh ++ (growRow 775 s6Step177HeadGvFresh ++ (growRow 776 s6Step177HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step177HeadFvAfter [] []=some (s6Step177HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step177HeadFvBefore s6Step177HeadFvAfter s6Step177HeadFvAfter
    s6Step177HeadFvRow s6Step177HeadFvOut 103 s6Step177HeadFvFresh [] [] []
    (growRow 776 s6Step177HeadFvFresh) ([]) s6Step177HeadFv_Incoming s6Step177HeadFv_checked h4 s6Step177HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step177HeadGvBefore s6Step177HeadGvAfter s6Step177HeadFvAfter
    s6Step177HeadGvRow s6Step177HeadGvOut 103 s6Step177HeadGvFresh [(s6Step177HeadFvRow,103)] [s6Step177HeadFvFresh] [s6Step177HeadFvOut]
    (growRow 775 s6Step177HeadGvFresh) ((growRow 776 s6Step177HeadFvFresh ++ [])) s6Step177HeadGv_Incoming s6Step177HeadGv_checked h3 s6Step177HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step177HeadFBefore s6Step177HeadFAfter s6Step177HeadFvAfter
    s6Step177HeadFRow s6Step177HeadFOut 182 s6Step177HeadFFresh [(s6Step177HeadGvRow,103),(s6Step177HeadFvRow,103)] [s6Step177HeadGvFresh,s6Step177HeadFvFresh] [s6Step177HeadGvOut,s6Step177HeadFvOut]
    (growRow 795 s6Step177HeadFFresh) ((growRow 775 s6Step177HeadGvFresh ++ (growRow 776 s6Step177HeadFvFresh ++ []))) s6Step177HeadF_Incoming s6Step177HeadF_checked h2 s6Step177HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step177HeadGBefore s6Step177HeadGAfter s6Step177HeadFvAfter
    s6Step177HeadGRow s6Step177HeadGOut 182 s6Step177HeadGFresh [(s6Step177HeadFRow,182),(s6Step177HeadGvRow,103),(s6Step177HeadFvRow,103)] [s6Step177HeadFFresh,s6Step177HeadGvFresh,s6Step177HeadFvFresh] [s6Step177HeadFOut,s6Step177HeadGvOut,s6Step177HeadFvOut]
    (growRow 777 s6Step177HeadGFresh) ((growRow 795 s6Step177HeadFFresh ++ (growRow 775 s6Step177HeadGvFresh ++ (growRow 776 s6Step177HeadFvFresh ++ [])))) s6Step177HeadG_Incoming s6Step177HeadG_checked h1 s6Step177HeadG_Outgoing
  exact h0

private theorem s6Step177HeadBank_checked : compileHmrBankResizeLog .headroom s6Step177HeadGBefore ⟨s6Step177HeadFRow,s6Step177HeadGRow,s6Step177HeadFvRow,s6Step177HeadGvRow⟩ ⟨182,182,103,103⟩ [s6Step177HeadGFresh,s6Step177HeadFFresh,s6Step177HeadGvFresh,s6Step177HeadFvFresh]=
    some (s6Step177HeadFvAfter,⟨s6Step177HeadFOut,s6Step177HeadGOut,s6Step177HeadFvOut,s6Step177HeadGvOut⟩,(growRow 777 s6Step177HeadGFresh ++ (growRow 795 s6Step177HeadFFresh ++ (growRow 775 s6Step177HeadGvFresh ++ (growRow 776 s6Step177HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step177HeadBank_rows]
  rfl

private theorem s6Step177Front_checked : compileHmrSourceFrontLog s6Step177EntryFBefore s6Step177FrontBank 181 102 ⟨180,180,103,103⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step177FrontLog=some s6Step177FrontPlan := by
  have pairEq : s6Step177FrontPair=⟨s6Step177HeadFRow,s6Step177HeadGRow,s6Step177HeadFvRow,s6Step177HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step177FrontHead=⟨s6Step177ExitFRow,s6Step177ExitGRow,s6Step177ExitFvRow,s6Step177ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step177Add0A=s6Step177FrontHead.f.wires := by decide +kernel
  have gEq : s6Step177Add0B=s6Step177FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step177Add1A=s6Step177FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step177Add1B=s6Step177FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step177EntryFBefore s6Step177FrontBank 181 102 ⟨180,180,103,103⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step177FrontLog s6Step177FrontPlan
  · exact s6Step177Front_entry
  · exact s6Step177EntryBank_checked
  · exact s6Step177Front_sigma
  · rfl
  · exact s6Step177Front_branch
  · rfl
  · simpa only [s6Step177FrontPlan,pairEq] using s6Step177HeadBank_checked
  · simpa only [s6Step177FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step177F4_checked
  · exact s6Step177Counter_checked
  · rfl
  · simpa only [s6Step177FrontPlan,headEq] using s6Step177ExitBank_checked

private theorem s6Step177Complete_explicit_checked : compileHmrEarlyStepLog s6Step177EntryFBefore s6Step177FrontBank 181 102 ⟨180,180,103,103⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step177CompleteLog=some s6Step177CompletePlan := by
  let Q := s6Step177EarlyControlPlan
  have hq := s6Step177EarlyControl_plan_checked
  have fv1 : s6Step177CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step177CompleteOut.fv.payload[2]?.getD s6Step177CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step177CompleteOut.fv.payload[3]?.getD s6Step177CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step177CompleteOut.fv.payload[4]?.getD s6Step177CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step177EntryFBefore s6Step177EarlyControlArena s6Step177FrontBank 181 102 ⟨180,180,103,103⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step177CompleteLog s6Step177FrontPlan Q
    s6Step177Front_checked s6Step177Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step177Complete_owned s6Step177Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step177EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 880 s6Step177CompleteOut.fv.second (s6Step177CompleteOut.fv.payload[2]?.getD s6Step177CompleteOut.fv.sign) (s6Step177CompleteOut.fv.payload[3]?.getD s6Step177CompleteOut.fv.sign) (s6Step177CompleteOut.fv.payload[4]?.getD s6Step177CompleteOut.fv.sign) 803 42 s6Step177EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep177Arena : Arena := s6Step177EntryFBefore
def s6PrivateStep177Bank : WindowBank := s6Step177FrontBank
def s6PrivateStep177Spec : HmrSourceWalkStepLog := ⟨181,102,⟨180,180,103,103⟩,42,.early s6Step177CompleteLog⟩
def s6PrivateStep177Plan : HmrSourceStepPlan := .early s6Step177CompletePlan
theorem s6PrivateStep177_source : s6PrivateStep177Spec=s6ObservedLogs176[1] := rfl
theorem s6PrivateStep177_checked : compileHmrSourceStepLog s6PrivateStep177Arena s6PrivateStep177Bank
    s6PrivateStep177Spec.fgWidth s6PrivateStep177Spec.vWidth s6PrivateStep177Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 177 s6PrivateStep177Spec.need none s6PrivateStep177Spec.log=some s6PrivateStep177Plan := by
  change compileHmrSourceStepLog s6Step177EntryFBefore s6Step177FrontBank 181 102 ⟨180,180,103,103⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 177 42 none (.early s6Step177CompleteLog)=some (.early s6Step177CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 177<498)]
  rw [s6Step177Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
