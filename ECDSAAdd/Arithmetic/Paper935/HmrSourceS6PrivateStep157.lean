import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep155
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

private def s6Step157CompleteMoves : List (Wire × Wire) := [(845,190),(784,446)]

private def s6Step157EarlyControlLog : HmrEarlyControlLog := ⟨[784, 845, 875, 908, 857],[856],[922],[887, 891, 903, 791, 825, 810],[]⟩

private def s6Step157FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[856], [857], [875], [908]],[[], [], [], []]⟩,[879],[768],[922],[887],[891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[922, 887, 891, 903]⟩

private def s6Step157CompleteLog : HmrEarlyStepLog := ⟨s6Step157FrontLog,s6Step157CompleteMoves,s6Step157EarlyControlLog⟩

private def s6Step157ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445],795⟩

private def s6Step157ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873],776⟩

private def s6Step157ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189],777⟩

private def s6Step157ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881],775⟩

private def s6Step157FrontOut : WindowBank := ⟨s6Step157ExitFOut,s6Step157ExitGOut,s6Step157ExitFvOut,s6Step157ExitGvOut⟩

private def s6Step157CompleteOut : WindowBank := s6Step157FrontOut.repacked s6Step157CompleteMoves

private def s6Step157EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step157EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step157EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step157EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step157EarlyControlPositiveArena,[856],s6Step157EarlyControlEqualityArena,[922],⟨⟨879,false⟩,[⟨⟨856,false⟩,922⟩]⟩⟩

private def s6Step157EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step157EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step157EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step157EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step157EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step157EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step157EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,784⟩,⟨⟨772,false⟩,845⟩,⟨⟨771,false⟩,875⟩,⟨⟨770,false⟩,908⟩,⟨⟨769,false⟩,857⟩]⟩

private def s6Step157EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step157EarlyControlZeroArena,s6Step157EarlyControlZeroPlan,s6Step157EarlyControlClassPlan,s6Step157EarlyControlFlagArena,s6Step157EarlyControlFittedArena,s6Step157EarlyControlHistoryArena,s6Step157EarlyControlSigmaArena,s6Step157EarlyControlOutputArena,s6Step157EarlyControlLog⟩

private def s6Step157CounterWork : List Wire := [922, 887, 891, 903]

private theorem s6Step157Counter_bounded : s6Step157CounterWork.toFinset⊆arenaWires := by norm_num [s6Step157CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step157HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step157CounterDuring : Arena := ⟨s6Step157HeadFvAfter.live∪s6Step157CounterWork.toFinset,Finset.union_subset s6Step157HeadFvAfter.bounded s6Step157Counter_bounded⟩

private def s6Step157EntryFFresh : List Wire := []

private def s6Step157EntryFvFresh : List Wire := []

private def s6Step157EntryGFresh : List Wire := []

private def s6Step157EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step157EntryGvAfter : Arena := s6Step157EntryFBefore

private def s6Step157EntryGvFresh : List Wire := []

private def s6Step157ExitFExtra : List Wire := [446, 857]

private def s6Step157ExitFvExtra : List Wire := [908]

private def s6Step157ExitGExtra : List Wire := [190, 856]

private def s6Step157ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,190),(191,446),(447,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step157ExitGvExtra : List Wire := [875]

private def s6Step157Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step157Add0Work : List Wire := [891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step157Add0_bounded : s6Step157Add0Work.toFinset⊆arenaWires := by
  have h : s6Step157Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step157Add0During : Arena := ⟨s6Step157Add0Arena.live∪s6Step157Add0Work.toFinset,Finset.union_subset s6Step157Add0Arena.bounded s6Step157Add0_bounded⟩

private def s6Step157Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step157Add1Work : List Wire := [891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step157Add1_bounded : s6Step157Add1Work.toFinset⊆arenaWires := by
  have h : s6Step157Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step157Add1During : Arena := ⟨s6Step157Add1Arena.live∪s6Step157Add1Work.toFinset,Finset.union_subset s6Step157Add1Arena.bounded s6Step157Add1_bounded⟩

private def s6Step157F4FlagArena : Arena := ⟨s6Step157HeadFvAfter.live∪{922},Finset.union_subset s6Step157HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step157F4Plan : HmrHybridF4Plan := ⟨s6Step157F4FlagArena,[922],s6Step157Add0Arena,[887],s6Step157Add0During,s6Step157Add0Work,s6Step157Add1During,s6Step157Add1Work⟩

private def s6Step157HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 857],795⟩

private def s6Step157HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 908],776⟩

private def s6Step157HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 856],777⟩

private def s6Step157HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 875],775⟩

private def s6Step157FrontHead : WindowBank := ⟨s6Step157HeadFOut,s6Step157HeadGOut,s6Step157HeadFvOut,s6Step157HeadGvOut⟩

private def s6Step157EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446],795⟩

private def s6Step157EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873],776⟩

private def s6Step157EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190],777⟩

private def s6Step157EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881],775⟩

private def s6Step157FrontPair : WindowBank := ⟨s6Step157EntryFOut,s6Step157EntryGOut,s6Step157EntryFvOut,s6Step157EntryGvOut⟩

private def s6Step157FrontSigmaArena : Arena := ⟨s6Step157EntryGvAfter.live∪{879},Finset.union_subset s6Step157EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step157HeadFFresh : List Wire := [857]

private def s6Step157HeadFvFresh : List Wire := [908]

private def s6Step157HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step157HeadGFresh : List Wire := [856]

private def s6Step157HeadGvFresh : List Wire := [875]

private def s6Step157FrontPlan : HmrSourceFront := ⟨s6Step157EntryGvAfter,s6Step157FrontPair,(growRow 795 s6Step157EntryFFresh ++ (growRow 777 s6Step157EntryGFresh ++ (growRow 776 s6Step157EntryFvFresh ++ (growRow 775 s6Step157EntryGvFresh ++ [])))),s6Step157FrontSigmaArena,[879],s6Step157HeadGBefore,[768],
  s6Step157HeadFvAfter,s6Step157FrontHead,(growRow 777 s6Step157HeadGFresh ++ (growRow 795 s6Step157HeadFFresh ++ (growRow 775 s6Step157HeadGvFresh ++ (growRow 776 s6Step157HeadFvFresh ++ [])))),s6Step157F4Plan,s6Step157CounterDuring,s6Step157CounterWork,s6Step157ExitGvAfter,s6Step157FrontOut,(shrinkRow 777 s6Step157ExitGExtra ++ (shrinkRow 795 s6Step157ExitFExtra ++ (shrinkRow 776 s6Step157ExitFvExtra ++ (shrinkRow 775 s6Step157ExitGvExtra ++ []))))⟩

private def s6Step157CompletePlan : HmrEarlyStepPlan := ⟨s6Step157FrontPlan,s6Step157EarlyControlArena,s6Step157EarlyControlPlan,s6Step157CompleteMoves⟩

private theorem s6Step157Complete_apart : List.Disjoint (s6Step157CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [879, 768, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step157CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[879, 768, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step157Complete_owned : (s6Step157CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step157EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step157EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step157CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,446),(447,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step157CompleteRelocationMove0Borrowed : Arena := ⟨s6Step157ExitGvAfter.live∪{190},Finset.union_subset s6Step157ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step157CompleteRelocationMove1Borrowed : Arena := ⟨s6Step157CompleteRelocationMove0After.live∪{446},Finset.union_subset s6Step157CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step157CompleteRelocation_move0_owned : 845∈s6Step157ExitGvAfter.live := by norm_num [s6Step157ExitGvAfter,arenaWires]

private theorem s6Step157CompleteRelocation_move0_reserve : s6Step157ExitGvAfter.reserve {190}=some s6Step157CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step157ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step157CompleteRelocation_move0_retire : s6Step157CompleteRelocationMove0Borrowed.retireSet {845}=s6Step157CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step157CompleteRelocationMove0Borrowed s6Step157CompleteRelocationMove0After {845}
  change s6Step157CompleteRelocationMove0After.live=(s6Step157ExitGvAfter.live∪{190})\{845}
  apply hmrArena_update_of_filter_check s6Step157ExitGvAfter s6Step157CompleteRelocationMove0After (fun q => ([(0,190),(191,446),(447,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,446),(447,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [190] [845] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step157CompleteRelocation_move1_owned : 784∈s6Step157CompleteRelocationMove0After.live := by norm_num [s6Step157CompleteRelocationMove0After,arenaWires]

private theorem s6Step157CompleteRelocation_move1_reserve : s6Step157CompleteRelocationMove0After.reserve {446}=some s6Step157CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step157CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step157CompleteRelocation_move1_retire : s6Step157CompleteRelocationMove1Borrowed.retireSet {784}=s6Step157EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step157CompleteRelocationMove1Borrowed s6Step157EarlyControlArena {784}
  change s6Step157EarlyControlArena.live=(s6Step157CompleteRelocationMove0After.live∪{446})\{784}
  apply hmrArena_update_of_filter_check s6Step157CompleteRelocationMove0After s6Step157EarlyControlArena (fun q => ([(0,446),(447,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [446] [784] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step157CompleteRelocation_checked : s6Step157ExitGvAfter.checkRepack [(845,190),(784,446)]=some s6Step157EarlyControlArena := by
  have tail2 : s6Step157EarlyControlArena.checkRepack []=some s6Step157EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step157CompleteRelocationMove0After s6Step157CompleteRelocationMove1Borrowed s6Step157EarlyControlArena s6Step157EarlyControlArena 784 446 []
    s6Step157CompleteRelocation_move1_owned s6Step157CompleteRelocation_move1_reserve s6Step157CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step157ExitGvAfter s6Step157CompleteRelocationMove0Borrowed s6Step157CompleteRelocationMove0After s6Step157EarlyControlArena 845 190 [(784,446)]
    s6Step157CompleteRelocation_move0_owned s6Step157CompleteRelocation_move0_reserve s6Step157CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step157Complete_repack : s6Step157ExitGvAfter.checkRepack s6Step157CompleteMoves=some s6Step157EarlyControlArena := by
  simpa only [s6Step157CompleteMoves] using s6Step157CompleteRelocation_checked

private theorem s6Step157EarlyControl_branchOwned : ([768] : List Wire).toFinset⊆s6Step157EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step157EarlyControlSigmaArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step157EarlyControl_branch : compileHmrBranchRetirement s6Step157EarlyControlSigmaArena 768=some s6Step157EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step157EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step157EarlyControlSigmaArena s6Step157EarlyControlOutputArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [768] rfl rfl
    decide +kernel

private theorem s6Step157EarlyControl_classEqualityBorrow : s6Step157EarlyControlPositiveArena.checkBorrow (([879, 856] : List Wire).length-1) s6Step157EarlyControlLog.classWork=some s6Step157EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step157EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step157EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step157EarlyControlEqualityArena,s6Step157EarlyControlPositiveArena,s6Step157EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step157EarlyControl_classEqualityOwned : ([879, 856] : List Wire).toFinset⊆s6Step157EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step157EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step157EarlyControl_classEquality : compileHmrEqualityLog s6Step157EarlyControlPositiveArena [879, 856] 0 s6Step157EarlyControlLog.classWork=some (s6Step157EarlyControlEqualityArena,s6Step157EarlyControlLog.classWork,s6Step157EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step157EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step157EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step157EarlyControl_classOwned : ([769, 857, 879] : List Wire).toFinset⊆s6Step157EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step157EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step157EarlyControl_positiveBorrow : s6Step157EarlyControlZeroArena.checkBorrow (1) s6Step157EarlyControlLog.positiveWork=some s6Step157EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step157EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step157EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step157EarlyControlPositiveArena,s6Step157EarlyControlZeroArena,s6Step157EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step157EarlyControl_class : compileHmrSourceClassLog s6Step157EarlyControlZeroArena false 769 s6Step157EarlyControlZeroPlan.top 0 879 s6Step157EarlyControlLog.positiveWork s6Step157EarlyControlLog.classWork=some s6Step157EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step157EarlyControlClassPlan s6Step157EarlyControlZeroArena false 769 s6Step157EarlyControlZeroPlan.top 0 879
  constructor
  · decide +kernel
  · exact s6Step157EarlyControl_classOwned
  · exact s6Step157EarlyControl_positiveBorrow
  · exact s6Step157EarlyControl_classEquality

private theorem s6Step157EarlyControl_entryRecordOwned : ([768, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step157EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step157EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step157EarlyControl_entrySigmaOwned : ([879, 254] : List Wire).toFinset⊆s6Step157EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step157EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step157EarlyControl_fitBorrow : s6Step157EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step157EarlyControlLog.recordFresh=some s6Step157EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step157EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step157EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step157EarlyControlFittedArena,s6Step157EarlyControlFlagArena,s6Step157EarlyControlLog,arenaWires]

private theorem s6Step157EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step157EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step157EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step157EarlyControl_fit : compileHmrRecordGrowLog s6Step157EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step157EarlyControlLog.recordFresh=some s6Step157EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step157EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step157EarlyControl_fitBorrow

private theorem s6Step157EarlyControl_flagsBorrow : s6Step157EarlyControlEqualityArena.checkBorrow (6) s6Step157EarlyControlLog.flagWork=some s6Step157EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step157EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step157EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step157EarlyControlFlagArena,s6Step157EarlyControlEqualityArena,s6Step157EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step157EarlyControl_flagsOwned : ([922, 253, 252, 251] : List Wire).toFinset⊆s6Step157EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step157EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step157EarlyControl_flags : compileHmrFlagsLog s6Step157EarlyControlClassPlan.equalityArena s6Step157EarlyControlClassPlan.equality.top 253 252 251 s6Step157EarlyControlLog.flagWork=some s6Step157EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step157EarlyControl_flagsOwned⟩
  · exact s6Step157EarlyControl_flagsBorrow

private theorem s6Step157EarlyControl_historyBorrow : s6Step157EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step157EarlyControlLog.recordFresh=some s6Step157EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step157EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step157EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step157EarlyControlArena s6Step157EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step157EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step157EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step157EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step157EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step157EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step157EarlyControl_history : compileHmrRecordGrowLog s6Step157EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step157EarlyControlLog.recordFresh=some s6Step157EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step157EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step157EarlyControl_historyBorrow

private theorem s6Step157EarlyControl_sigmaOwned : ([254, 879] : List Wire).toFinset⊆s6Step157EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step157EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step157EarlyControl_sigmaReleaseOwned : ([879] : List Wire).toFinset⊆s6Step157EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step157EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step157EarlyControl_sigmaRelease : s6Step157EarlyControlHistoryArena.release {879} (fun _ => false)=some s6Step157EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step157EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step157EarlyControlHistoryArena s6Step157EarlyControlSigmaArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [879] rfl rfl
    decide +kernel

private theorem s6Step157EarlyControl_sigma : compileHmrSigmaDropLog s6Step157EarlyControlHistoryArena false 0 0 254 879 []=some s6Step157EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step157EarlyControl_sigmaOwned⟩
  · exact s6Step157EarlyControl_sigmaRelease

private theorem s6Step157EarlyControl_zeroBorrow : s6Step157EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step157EarlyControlLog.zeroWork=some s6Step157EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step157EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step157EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step157EarlyControlArena s6Step157EarlyControlZeroArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step157EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step157EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step157EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step157EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step157EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step157EarlyControl_zero : compileHmrEqualityLog s6Step157EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step157EarlyControlLog.zeroWork=some (s6Step157EarlyControlZeroArena,s6Step157EarlyControlLog.zeroWork,s6Step157EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step157EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step157EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step157EarlyControl_logged : s6Step157EarlyControlPlan.Logged s6Step157EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 879 254 253 252 251 768 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step157EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step157EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step157EarlyControl_zero
  · exact s6Step157EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step157EarlyControl_flags
  · exact s6Step157EarlyControl_fit
  · exact s6Step157EarlyControl_history
  · exact s6Step157EarlyControl_sigma
  · exact s6Step157EarlyControl_branch

private theorem s6Step157EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step157EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 879 254 253 252 251 768 42 s6Step157EarlyControlLog=some s6Step157EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step157EarlyControlPlan s6Step157EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 879 254 253 252 251 768 42 s6Step157EarlyControl_logged

private def s6Step157EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446],795⟩

private def s6Step157EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873],776⟩

private def s6Step157EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190],777⟩

private def s6Step157EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881],775⟩

private def s6Step157FrontBank : WindowBank := ⟨s6Step157EntryFRow,s6Step157EntryGRow,s6Step157EntryFvRow,s6Step157EntryGvRow⟩

private def s6Step157Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 857, 795]

private def s6Step157Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 856, 777]

private def s6Step157Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 908, 776]

private def s6Step157Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 875, 775]

private theorem s6Step157Counter_apart : Disjoint s6Step157HeadFvAfter.live s6Step157CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step157HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step157Counter_borrowed : s6Step157HeadFvAfter.checkBorrow 4 s6Step157CounterWork=some s6Step157CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step157HeadFvAfter s6Step157CounterDuring s6Step157CounterWork.toFinset s6Step157Counter_bounded s6Step157Counter_apart rfl

private theorem s6Step157Counter_owned : (879::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step157HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step157HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step157Counter_checked : compileHmrCounterStepLog s6Step157HeadFvAfter true 879 [774, 773, 772, 771, 770, 769] s6Step157CounterWork=some s6Step157CounterDuring := by
  have owned : ∀q∈879::[774, 773, 772, 771, 770, 769],q∈s6Step157HeadFvAfter.live := fun q hq => s6Step157Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step157Counter_borrowed

private def s6Step157EntryFAfter : Arena := s6Step157EntryFBefore

private theorem s6Step157EntryBank_incomingDistinct : ([s6Step157EntryFRow,s6Step157EntryGRow,s6Step157EntryFvRow,s6Step157EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step157EntryF_Incoming : rowsOwned s6Step157EntryFBefore [s6Step157EntryFRow,s6Step157EntryGRow,s6Step157EntryFvRow,s6Step157EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step157EntryFRow,s6Step157EntryGRow,s6Step157EntryFvRow,s6Step157EntryGvRow] 0 s6Step157EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step157EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step157EntryBank_outgoingOwned : rowsOwned s6Step157EntryGvAfter [s6Step157EntryFOut,s6Step157EntryGOut,s6Step157EntryFvOut,s6Step157EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step157EntryGvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step157EntryF_Outgoing : rowsOwned s6Step157EntryGvAfter [s6Step157EntryFOut,s6Step157EntryGOut,s6Step157EntryFvOut,s6Step157EntryGvOut] :=
  hmrRows_owned_drop s6Step157EntryGvAfter [s6Step157EntryFOut,s6Step157EntryGOut,s6Step157EntryFvOut,s6Step157EntryGvOut] 0 s6Step157EntryBank_outgoingOwned

private theorem s6Step157EntryF_distinct : (s6Step157EntryFRow.sign::s6Step157EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step157EntryF_owned : (s6Step157EntryFRow.sign::s6Step157EntryFRow.payload).toFinset⊆s6Step157EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step157EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step157EntryF_reserved : s6Step157EntryFBefore.reserve s6Step157EntryFFresh.toFinset=some s6Step157EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step157EntryFFresh,arenaWires]
  · norm_num [s6Step157EntryFBefore,s6Step157EntryFFresh,arenaWires]
  · simp only [s6Step157EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step157EntryF_checked : planRowResizeLog s6Step157EntryFBefore s6Step157EntryFRow 191 s6Step157EntryFFresh=
    some (s6Step157EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446],795⟩,growRow 795 s6Step157EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step157EntryFBefore s6Step157EntryFAfter s6Step157EntryFRow 191 s6Step157EntryFFresh
    s6Step157EntryF_distinct s6Step157EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step157EntryF_reserved
  have rowEq : WindowRow.mk (s6Step157EntryFRow.payload++s6Step157EntryFFresh) s6Step157EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step157EntryFvAfter : Arena := s6Step157EntryFBefore

private def s6Step157EntryFvBefore : Arena := s6Step157EntryFBefore

private theorem s6Step157EntryFv_Incoming : rowsOwned s6Step157EntryFvBefore [s6Step157EntryFvRow,s6Step157EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step157EntryFRow,s6Step157EntryGRow,s6Step157EntryFvRow,s6Step157EntryGvRow] 2 s6Step157EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step157EntryFvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step157EntryFv_Outgoing : rowsOwned s6Step157EntryGvAfter [s6Step157EntryFvOut,s6Step157EntryGvOut] :=
  hmrRows_owned_drop s6Step157EntryGvAfter [s6Step157EntryFOut,s6Step157EntryGOut,s6Step157EntryFvOut,s6Step157EntryGvOut] 2 s6Step157EntryBank_outgoingOwned

private theorem s6Step157EntryFv_distinct : (s6Step157EntryFvRow.sign::s6Step157EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step157EntryFv_owned : (s6Step157EntryFvRow.sign::s6Step157EntryFvRow.payload).toFinset⊆s6Step157EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step157EntryFvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step157EntryFv_reserved : s6Step157EntryFvBefore.reserve s6Step157EntryFvFresh.toFinset=some s6Step157EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step157EntryFvFresh,arenaWires]
  · norm_num [s6Step157EntryFvBefore,s6Step157EntryFBefore,s6Step157EntryFvFresh,arenaWires]
  · simp only [s6Step157EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step157EntryFv_checked : planRowResizeLog s6Step157EntryFvBefore s6Step157EntryFvRow 93 s6Step157EntryFvFresh=
    some (s6Step157EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873],776⟩,growRow 776 s6Step157EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step157EntryFvBefore s6Step157EntryFvAfter s6Step157EntryFvRow 93 s6Step157EntryFvFresh
    s6Step157EntryFv_distinct s6Step157EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step157EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step157EntryFvRow.payload++s6Step157EntryFvFresh) s6Step157EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step157EntryGAfter : Arena := s6Step157EntryFBefore

private def s6Step157EntryGBefore : Arena := s6Step157EntryFBefore

private theorem s6Step157EntryG_Incoming : rowsOwned s6Step157EntryGBefore [s6Step157EntryGRow,s6Step157EntryFvRow,s6Step157EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step157EntryFRow,s6Step157EntryGRow,s6Step157EntryFvRow,s6Step157EntryGvRow] 1 s6Step157EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step157EntryGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step157EntryG_Outgoing : rowsOwned s6Step157EntryGvAfter [s6Step157EntryGOut,s6Step157EntryFvOut,s6Step157EntryGvOut] :=
  hmrRows_owned_drop s6Step157EntryGvAfter [s6Step157EntryFOut,s6Step157EntryGOut,s6Step157EntryFvOut,s6Step157EntryGvOut] 1 s6Step157EntryBank_outgoingOwned

private theorem s6Step157EntryG_distinct : (s6Step157EntryGRow.sign::s6Step157EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step157EntryG_owned : (s6Step157EntryGRow.sign::s6Step157EntryGRow.payload).toFinset⊆s6Step157EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step157EntryGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step157EntryG_reserved : s6Step157EntryGBefore.reserve s6Step157EntryGFresh.toFinset=some s6Step157EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step157EntryGFresh,arenaWires]
  · norm_num [s6Step157EntryGBefore,s6Step157EntryFBefore,s6Step157EntryGFresh,arenaWires]
  · simp only [s6Step157EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step157EntryG_checked : planRowResizeLog s6Step157EntryGBefore s6Step157EntryGRow 191 s6Step157EntryGFresh=
    some (s6Step157EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190],777⟩,growRow 777 s6Step157EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step157EntryGBefore s6Step157EntryGAfter s6Step157EntryGRow 191 s6Step157EntryGFresh
    s6Step157EntryG_distinct s6Step157EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step157EntryG_reserved
  have rowEq : WindowRow.mk (s6Step157EntryGRow.payload++s6Step157EntryGFresh) s6Step157EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step157EntryGvBefore : Arena := s6Step157EntryFBefore

private theorem s6Step157EntryGv_Incoming : rowsOwned s6Step157EntryGvBefore [s6Step157EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step157EntryFRow,s6Step157EntryGRow,s6Step157EntryFvRow,s6Step157EntryGvRow] 3 s6Step157EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step157EntryGvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step157EntryGv_Outgoing : rowsOwned s6Step157EntryGvAfter [s6Step157EntryGvOut] :=
  hmrRows_owned_drop s6Step157EntryGvAfter [s6Step157EntryFOut,s6Step157EntryGOut,s6Step157EntryFvOut,s6Step157EntryGvOut] 3 s6Step157EntryBank_outgoingOwned

private theorem s6Step157EntryGv_distinct : (s6Step157EntryGvRow.sign::s6Step157EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step157EntryGv_owned : (s6Step157EntryGvRow.sign::s6Step157EntryGvRow.payload).toFinset⊆s6Step157EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step157EntryGvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step157EntryGv_reserved : s6Step157EntryGvBefore.reserve s6Step157EntryGvFresh.toFinset=some s6Step157EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step157EntryGvFresh,arenaWires]
  · norm_num [s6Step157EntryGvBefore,s6Step157EntryFBefore,s6Step157EntryGvFresh,arenaWires]
  · simp only [s6Step157EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step157EntryGv_checked : planRowResizeLog s6Step157EntryGvBefore s6Step157EntryGvRow 93 s6Step157EntryGvFresh=
    some (s6Step157EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881],775⟩,growRow 775 s6Step157EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step157EntryGvBefore s6Step157EntryGvAfter s6Step157EntryGvRow 93 s6Step157EntryGvFresh
    s6Step157EntryGv_distinct s6Step157EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step157EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step157EntryGvRow.payload++s6Step157EntryGvFresh) s6Step157EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step157EntryBank_rows : planWindowRowsLog s6Step157EntryFBefore [(s6Step157EntryFRow,191),(s6Step157EntryGRow,191),(s6Step157EntryFvRow,93),(s6Step157EntryGvRow,93)] [s6Step157EntryFFresh,s6Step157EntryGFresh,s6Step157EntryFvFresh,s6Step157EntryGvFresh]=
    some (s6Step157EntryGvAfter,[s6Step157EntryFOut,s6Step157EntryGOut,s6Step157EntryFvOut,s6Step157EntryGvOut],(growRow 795 s6Step157EntryFFresh ++ (growRow 777 s6Step157EntryGFresh ++ (growRow 776 s6Step157EntryFvFresh ++ (growRow 775 s6Step157EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step157EntryGvAfter [] []=some (s6Step157EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step157EntryGvBefore s6Step157EntryGvAfter s6Step157EntryGvAfter
    s6Step157EntryGvRow s6Step157EntryGvOut 93 s6Step157EntryGvFresh [] [] []
    (growRow 775 s6Step157EntryGvFresh) ([]) s6Step157EntryGv_Incoming s6Step157EntryGv_checked h4 s6Step157EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step157EntryFvBefore s6Step157EntryFvAfter s6Step157EntryGvAfter
    s6Step157EntryFvRow s6Step157EntryFvOut 93 s6Step157EntryFvFresh [(s6Step157EntryGvRow,93)] [s6Step157EntryGvFresh] [s6Step157EntryGvOut]
    (growRow 776 s6Step157EntryFvFresh) ((growRow 775 s6Step157EntryGvFresh ++ [])) s6Step157EntryFv_Incoming s6Step157EntryFv_checked h3 s6Step157EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step157EntryGBefore s6Step157EntryGAfter s6Step157EntryGvAfter
    s6Step157EntryGRow s6Step157EntryGOut 191 s6Step157EntryGFresh [(s6Step157EntryFvRow,93),(s6Step157EntryGvRow,93)] [s6Step157EntryFvFresh,s6Step157EntryGvFresh] [s6Step157EntryFvOut,s6Step157EntryGvOut]
    (growRow 777 s6Step157EntryGFresh) ((growRow 776 s6Step157EntryFvFresh ++ (growRow 775 s6Step157EntryGvFresh ++ []))) s6Step157EntryG_Incoming s6Step157EntryG_checked h2 s6Step157EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step157EntryFBefore s6Step157EntryFAfter s6Step157EntryGvAfter
    s6Step157EntryFRow s6Step157EntryFOut 191 s6Step157EntryFFresh [(s6Step157EntryGRow,191),(s6Step157EntryFvRow,93),(s6Step157EntryGvRow,93)] [s6Step157EntryGFresh,s6Step157EntryFvFresh,s6Step157EntryGvFresh] [s6Step157EntryGOut,s6Step157EntryFvOut,s6Step157EntryGvOut]
    (growRow 795 s6Step157EntryFFresh) ((growRow 777 s6Step157EntryGFresh ++ (growRow 776 s6Step157EntryFvFresh ++ (growRow 775 s6Step157EntryGvFresh ++ [])))) s6Step157EntryF_Incoming s6Step157EntryF_checked h1 s6Step157EntryF_Outgoing
  exact h0

private theorem s6Step157EntryBank_checked : compileHmrBankResizeLog .entry s6Step157EntryFBefore ⟨s6Step157EntryFRow,s6Step157EntryGRow,s6Step157EntryFvRow,s6Step157EntryGvRow⟩ ⟨191,191,93,93⟩ [s6Step157EntryFFresh,s6Step157EntryGFresh,s6Step157EntryFvFresh,s6Step157EntryGvFresh]=
    some (s6Step157EntryGvAfter,⟨s6Step157EntryFOut,s6Step157EntryGOut,s6Step157EntryFvOut,s6Step157EntryGvOut⟩,(growRow 795 s6Step157EntryFFresh ++ (growRow 777 s6Step157EntryGFresh ++ (growRow 776 s6Step157EntryFvFresh ++ (growRow 775 s6Step157EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step157EntryBank_rows]
  rfl

private def s6Step157ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,190),(191,446),(447,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step157ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,190),(191,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(857,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step157ExitFBefore : Arena := s6Step157ExitGAfter

private def s6Step157ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 857],795⟩

private def s6Step157ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 908],776⟩

private def s6Step157ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 856],777⟩

private def s6Step157ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 875],775⟩

private theorem s6Step157ExitBank_incomingDistinct : ([s6Step157ExitGRow,s6Step157ExitFRow,s6Step157ExitFvRow,s6Step157ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step157ExitF_Incoming : rowsOwned s6Step157ExitFBefore [s6Step157ExitFRow,s6Step157ExitFvRow,s6Step157ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step157ExitGRow,s6Step157ExitFRow,s6Step157ExitFvRow,s6Step157ExitGvRow] 1 s6Step157ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step157ExitFBefore (fun q => ([(0,190),(191,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(857,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step157ExitBank_outgoingOwned : rowsOwned s6Step157ExitGvAfter [s6Step157ExitGOut,s6Step157ExitFOut,s6Step157ExitFvOut,s6Step157ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step157ExitGvAfter (fun q => ([(0,190),(191,446),(447,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step157ExitF_Outgoing : rowsOwned s6Step157ExitGvAfter [s6Step157ExitFOut,s6Step157ExitFvOut,s6Step157ExitGvOut] :=
  hmrRows_owned_drop s6Step157ExitGvAfter [s6Step157ExitGOut,s6Step157ExitFOut,s6Step157ExitFvOut,s6Step157ExitGvOut] 1 s6Step157ExitBank_outgoingOwned

private theorem s6Step157ExitF_distinct : (s6Step157ExitFRow.sign::s6Step157ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step157ExitF_owned : (s6Step157ExitFRow.sign::s6Step157ExitFRow.payload).toFinset⊆s6Step157ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step157ExitFBefore (fun q => ([(0,190),(191,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(857,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step157ExitF_retired : s6Step157ExitFBefore.retireSet s6Step157ExitFExtra.toFinset=s6Step157ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step157ExitFBefore s6Step157ExitFAfter s6Step157ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step157ExitFBefore s6Step157ExitFAfter (fun q => ([(0,190),(191,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(857,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,190),(191,446),(447,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step157ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step157ExitF_checked : planRowResizeLog s6Step157ExitFBefore s6Step157ExitFRow 190 []=
    some (s6Step157ExitFAfter,s6Step157ExitFOut,shrinkRow 795 s6Step157ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step157ExitFBefore s6Step157ExitFRow 190 s6Step157ExitF_distinct s6Step157ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step157ExitFRow.payload.take 190) s6Step157ExitFRow.sign=s6Step157ExitFOut := by decide +kernel
  have hi : s6Step157ExitFRow.payload.drop 190=s6Step157ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step157ExitF_retired] at result
  exact result

private def s6Step157ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,190),(191,446),(447,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step157ExitFvBefore : Arena := s6Step157ExitFAfter

private theorem s6Step157ExitFv_Incoming : rowsOwned s6Step157ExitFvBefore [s6Step157ExitFvRow,s6Step157ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step157ExitGRow,s6Step157ExitFRow,s6Step157ExitFvRow,s6Step157ExitGvRow] 2 s6Step157ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step157ExitFvBefore (fun q => ([(0,190),(191,446),(447,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step157ExitFv_Outgoing : rowsOwned s6Step157ExitGvAfter [s6Step157ExitFvOut,s6Step157ExitGvOut] :=
  hmrRows_owned_drop s6Step157ExitGvAfter [s6Step157ExitGOut,s6Step157ExitFOut,s6Step157ExitFvOut,s6Step157ExitGvOut] 2 s6Step157ExitBank_outgoingOwned

private theorem s6Step157ExitFv_distinct : (s6Step157ExitFvRow.sign::s6Step157ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step157ExitFv_owned : (s6Step157ExitFvRow.sign::s6Step157ExitFvRow.payload).toFinset⊆s6Step157ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step157ExitFvBefore (fun q => ([(0,190),(191,446),(447,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step157ExitFv_retired : s6Step157ExitFvBefore.retireSet s6Step157ExitFvExtra.toFinset=s6Step157ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step157ExitFvBefore s6Step157ExitFvAfter s6Step157ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step157ExitFvBefore s6Step157ExitFvAfter (fun q => ([(0,190),(191,446),(447,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,190),(191,446),(447,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step157ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step157ExitFv_checked : planRowResizeLog s6Step157ExitFvBefore s6Step157ExitFvRow 93 []=
    some (s6Step157ExitFvAfter,s6Step157ExitFvOut,shrinkRow 776 s6Step157ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step157ExitFvBefore s6Step157ExitFvRow 93 s6Step157ExitFv_distinct s6Step157ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step157ExitFvRow.payload.take 93) s6Step157ExitFvRow.sign=s6Step157ExitFvOut := by decide +kernel
  have hi : s6Step157ExitFvRow.payload.drop 93=s6Step157ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step157ExitFv_retired] at result
  exact result

private def s6Step157ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step157ExitG_Incoming : rowsOwned s6Step157ExitGBefore [s6Step157ExitGRow,s6Step157ExitFRow,s6Step157ExitFvRow,s6Step157ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step157ExitGRow,s6Step157ExitFRow,s6Step157ExitFvRow,s6Step157ExitGvRow] 0 s6Step157ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step157ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step157ExitG_Outgoing : rowsOwned s6Step157ExitGvAfter [s6Step157ExitGOut,s6Step157ExitFOut,s6Step157ExitFvOut,s6Step157ExitGvOut] :=
  hmrRows_owned_drop s6Step157ExitGvAfter [s6Step157ExitGOut,s6Step157ExitFOut,s6Step157ExitFvOut,s6Step157ExitGvOut] 0 s6Step157ExitBank_outgoingOwned

private theorem s6Step157ExitG_distinct : (s6Step157ExitGRow.sign::s6Step157ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step157ExitG_owned : (s6Step157ExitGRow.sign::s6Step157ExitGRow.payload).toFinset⊆s6Step157ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step157ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step157ExitG_retired : s6Step157ExitGBefore.retireSet s6Step157ExitGExtra.toFinset=s6Step157ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step157ExitGBefore s6Step157ExitGAfter s6Step157ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step157ExitGBefore s6Step157ExitGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,190),(191,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(857,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step157ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step157ExitG_checked : planRowResizeLog s6Step157ExitGBefore s6Step157ExitGRow 190 []=
    some (s6Step157ExitGAfter,s6Step157ExitGOut,shrinkRow 777 s6Step157ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step157ExitGBefore s6Step157ExitGRow 190 s6Step157ExitG_distinct s6Step157ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step157ExitGRow.payload.take 190) s6Step157ExitGRow.sign=s6Step157ExitGOut := by decide +kernel
  have hi : s6Step157ExitGRow.payload.drop 190=s6Step157ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step157ExitG_retired] at result
  exact result

private def s6Step157ExitGvBefore : Arena := s6Step157ExitFvAfter

private theorem s6Step157ExitGv_Incoming : rowsOwned s6Step157ExitGvBefore [s6Step157ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step157ExitGRow,s6Step157ExitFRow,s6Step157ExitFvRow,s6Step157ExitGvRow] 3 s6Step157ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step157ExitGvBefore (fun q => ([(0,190),(191,446),(447,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step157ExitGv_Outgoing : rowsOwned s6Step157ExitGvAfter [s6Step157ExitGvOut] :=
  hmrRows_owned_drop s6Step157ExitGvAfter [s6Step157ExitGOut,s6Step157ExitFOut,s6Step157ExitFvOut,s6Step157ExitGvOut] 3 s6Step157ExitBank_outgoingOwned

private theorem s6Step157ExitGv_distinct : (s6Step157ExitGvRow.sign::s6Step157ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step157ExitGv_owned : (s6Step157ExitGvRow.sign::s6Step157ExitGvRow.payload).toFinset⊆s6Step157ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step157ExitGvBefore (fun q => ([(0,190),(191,446),(447,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step157ExitGv_retired : s6Step157ExitGvBefore.retireSet s6Step157ExitGvExtra.toFinset=s6Step157ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step157ExitGvBefore s6Step157ExitGvAfter s6Step157ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step157ExitGvBefore s6Step157ExitGvAfter (fun q => ([(0,190),(191,446),(447,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,190),(191,446),(447,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step157ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step157ExitGv_checked : planRowResizeLog s6Step157ExitGvBefore s6Step157ExitGvRow 93 []=
    some (s6Step157ExitGvAfter,s6Step157ExitGvOut,shrinkRow 775 s6Step157ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step157ExitGvBefore s6Step157ExitGvRow 93 s6Step157ExitGv_distinct s6Step157ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step157ExitGvRow.payload.take 93) s6Step157ExitGvRow.sign=s6Step157ExitGvOut := by decide +kernel
  have hi : s6Step157ExitGvRow.payload.drop 93=s6Step157ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step157ExitGv_retired] at result
  exact result

private theorem s6Step157ExitBank_rows : planWindowRowsLog s6Step157ExitGBefore [(s6Step157ExitGRow,190),(s6Step157ExitFRow,190),(s6Step157ExitFvRow,93),(s6Step157ExitGvRow,93)] [[],[],[],[]]=
    some (s6Step157ExitGvAfter,[s6Step157ExitGOut,s6Step157ExitFOut,s6Step157ExitFvOut,s6Step157ExitGvOut],(shrinkRow 777 s6Step157ExitGExtra ++ (shrinkRow 795 s6Step157ExitFExtra ++ (shrinkRow 776 s6Step157ExitFvExtra ++ (shrinkRow 775 s6Step157ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step157ExitGvAfter [] []=some (s6Step157ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step157ExitGvBefore s6Step157ExitGvAfter s6Step157ExitGvAfter
    s6Step157ExitGvRow s6Step157ExitGvOut 93 [] [] [] []
    (shrinkRow 775 s6Step157ExitGvExtra) ([]) s6Step157ExitGv_Incoming s6Step157ExitGv_checked h4 s6Step157ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step157ExitFvBefore s6Step157ExitFvAfter s6Step157ExitGvAfter
    s6Step157ExitFvRow s6Step157ExitFvOut 93 [] [(s6Step157ExitGvRow,93)] [[]] [s6Step157ExitGvOut]
    (shrinkRow 776 s6Step157ExitFvExtra) ((shrinkRow 775 s6Step157ExitGvExtra ++ [])) s6Step157ExitFv_Incoming s6Step157ExitFv_checked h3 s6Step157ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step157ExitFBefore s6Step157ExitFAfter s6Step157ExitGvAfter
    s6Step157ExitFRow s6Step157ExitFOut 190 [] [(s6Step157ExitFvRow,93),(s6Step157ExitGvRow,93)] [[],[]] [s6Step157ExitFvOut,s6Step157ExitGvOut]
    (shrinkRow 795 s6Step157ExitFExtra) ((shrinkRow 776 s6Step157ExitFvExtra ++ (shrinkRow 775 s6Step157ExitGvExtra ++ []))) s6Step157ExitF_Incoming s6Step157ExitF_checked h2 s6Step157ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step157ExitGBefore s6Step157ExitGAfter s6Step157ExitGvAfter
    s6Step157ExitGRow s6Step157ExitGOut 190 [] [(s6Step157ExitFRow,190),(s6Step157ExitFvRow,93),(s6Step157ExitGvRow,93)] [[],[],[]] [s6Step157ExitFOut,s6Step157ExitFvOut,s6Step157ExitGvOut]
    (shrinkRow 777 s6Step157ExitGExtra) ((shrinkRow 795 s6Step157ExitFExtra ++ (shrinkRow 776 s6Step157ExitFvExtra ++ (shrinkRow 775 s6Step157ExitGvExtra ++ [])))) s6Step157ExitG_Incoming s6Step157ExitG_checked h1 s6Step157ExitG_Outgoing
  exact h0

private theorem s6Step157ExitBank_checked : compileHmrBankResizeLog .exit s6Step157ExitGBefore ⟨s6Step157ExitFRow,s6Step157ExitGRow,s6Step157ExitFvRow,s6Step157ExitGvRow⟩ ⟨190,190,93,93⟩ [[],[],[],[]]=
    some (s6Step157ExitGvAfter,⟨s6Step157ExitFOut,s6Step157ExitGOut,s6Step157ExitFvOut,s6Step157ExitGvOut⟩,(shrinkRow 777 s6Step157ExitGExtra ++ (shrinkRow 795 s6Step157ExitFExtra ++ (shrinkRow 776 s6Step157ExitFvExtra ++ (shrinkRow 775 s6Step157ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step157ExitBank_rows]
  rfl

private theorem s6Step157Add0_apart : Disjoint s6Step157Add0Arena.live s6Step157Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step157Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step157Add0_card : s6Step157Add0Arena.live.card=884 := by
  decide +kernel

private theorem s6Step157Add0_borrowed : s6Step157Add0Arena.checkBorrow (hmrHybridCount s6Step157Add0Arena s6Step157Add0B.length) s6Step157Add0Work=some s6Step157Add0During := by
  have len : s6Step157Add0Work.length=hmrHybridCount s6Step157Add0Arena s6Step157Add0B.length := by
    rw [hmrHybridCount,s6Step157Add0_card]
    decide +kernel
  have nd : s6Step157Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step157Add0Arena s6Step157Add0During s6Step157Add0Work.toFinset s6Step157Add0_bounded s6Step157Add0_apart rfl

private theorem s6Step157Add0_distinct : (922::768::887::(s6Step157Add0A++s6Step157Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step157Add0_owned : (922::768::887::(s6Step157Add0A++s6Step157Add0B)).toFinset⊆s6Step157Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step157Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step157Add0_checked : compileHmrHybridCinLog s6Step157Add0Arena 768 922 887 s6Step157Add0A s6Step157Add0B s6Step157Add0Work=some s6Step157Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step157Add0Arena s6Step157Add0During 768 922 887 s6Step157Add0A s6Step157Add0B s6Step157Add0Work
    (by decide +kernel) (by decide +kernel) s6Step157Add0_distinct
    (fun q hq => s6Step157Add0_owned (List.mem_toFinset.mpr hq)) s6Step157Add0_borrowed

private theorem s6Step157Add1_apart : Disjoint s6Step157Add1Arena.live s6Step157Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step157Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step157Add1_card : s6Step157Add1Arena.live.card=884 := by
  decide +kernel

private theorem s6Step157Add1_borrowed : s6Step157Add1Arena.checkBorrow (hmrHybridCount s6Step157Add1Arena s6Step157Add1B.length) s6Step157Add1Work=some s6Step157Add1During := by
  have len : s6Step157Add1Work.length=hmrHybridCount s6Step157Add1Arena s6Step157Add1B.length := by
    rw [hmrHybridCount,s6Step157Add1_card]
    decide +kernel
  have nd : s6Step157Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step157Add1Arena s6Step157Add1During s6Step157Add1Work.toFinset s6Step157Add1_bounded s6Step157Add1_apart rfl

private theorem s6Step157Add1_distinct : (922::768::887::(s6Step157Add1A++s6Step157Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step157Add1_owned : (922::768::887::(s6Step157Add1A++s6Step157Add1B)).toFinset⊆s6Step157Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step157Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step157Add1_checked : compileHmrHybridCinLog s6Step157Add1Arena 768 922 887 s6Step157Add1A s6Step157Add1B s6Step157Add1Work=some s6Step157Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step157Add1Arena s6Step157Add1During 768 922 887 s6Step157Add1A s6Step157Add1B s6Step157Add1Work
    (by decide +kernel) (by decide +kernel) s6Step157Add1_distinct
    (fun q hq => s6Step157Add1_owned (List.mem_toFinset.mpr hq)) s6Step157Add1_borrowed

private theorem s6Step157F4_apart : Disjoint (s6Step157Add0A++s6Step157Add0B).toFinset (s6Step157Add1A++s6Step157Add1B).toFinset := by
  have nd : ((s6Step157Add0A++s6Step157Add0B)++(s6Step157Add1A++s6Step157Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step157F4_carry : s6Step157F4FlagArena.checkBorrow 1 [887]=some s6Step157Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step157F4FlagArena,s6Step157HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step157F4FlagArena,s6Step157HeadFvAfter,s6Step157Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step157F4_distinct : (879::768::922::887::((s6Step157Add0A++s6Step157Add1A)++(s6Step157Add0B++s6Step157Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step157F4_flag : s6Step157HeadFvAfter.checkBorrow 1 [922]=some s6Step157F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step157HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step157F4_owned : (879::768::((s6Step157Add0A++s6Step157Add1A)++(s6Step157Add0B++s6Step157Add1B))).toFinset⊆s6Step157HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step157HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step157F4_checked : compileHmrHybridF4Log s6Step157HeadFvAfter 879 768 s6Step157Add0A s6Step157Add0B s6Step157Add1A s6Step157Add1B [922] [887] s6Step157Add0Work s6Step157Add1Work=some s6Step157F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step157HeadFvAfter s6Step157F4FlagArena s6Step157Add0Arena s6Step157Add0During s6Step157Add1During 879 768
    s6Step157Add0A s6Step157Add0B s6Step157Add1A s6Step157Add1B [922] [887] s6Step157Add0Work s6Step157Add1Work
    (fun q hq => s6Step157F4_owned (List.mem_toFinset.mpr hq)) s6Step157F4_flag s6Step157F4_carry
    s6Step157F4_distinct s6Step157F4_apart s6Step157Add0_checked s6Step157Add1_checked

private theorem s6Step157Front_branch : s6Step157FrontSigmaArena.checkBorrow 1 [768]=some s6Step157HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step157FrontSigmaArena,s6Step157EntryGvAfter,s6Step157EntryFBefore,arenaWires]
  · change s6Step157HeadGBefore.live=(s6Step157EntryGvAfter.live∪{879})∪{768}
    apply hmrArena_union_pair_of_filter_check s6Step157EntryGvAfter s6Step157HeadGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 879 768 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step157Front_entry : HmrFrontEntryValid s6Step157EntryFBefore s6Step157FrontBank 191 93 ⟨190,190,93,93⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step157FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step157EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step157EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step157FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step157Front_sigma : s6Step157EntryGvAfter.checkBorrow 1 [879]=some s6Step157FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step157EntryGvAfter,s6Step157EntryFBefore,arenaWires]
  · rfl

private def s6Step157HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step157HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step157HeadFBefore : Arena := s6Step157HeadGAfter

private def s6Step157HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446],795⟩

private def s6Step157HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873],776⟩

private def s6Step157HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190],777⟩

private def s6Step157HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881],775⟩

private theorem s6Step157HeadBank_incomingDistinct : ([s6Step157HeadGRow,s6Step157HeadFRow,s6Step157HeadGvRow,s6Step157HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step157HeadF_Incoming : rowsOwned s6Step157HeadFBefore [s6Step157HeadFRow,s6Step157HeadGvRow,s6Step157HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step157HeadGRow,s6Step157HeadFRow,s6Step157HeadGvRow,s6Step157HeadFvRow] 1 s6Step157HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step157HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step157HeadBank_outgoingOwned : rowsOwned s6Step157HeadFvAfter [s6Step157HeadGOut,s6Step157HeadFOut,s6Step157HeadGvOut,s6Step157HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step157HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step157HeadF_Outgoing : rowsOwned s6Step157HeadFvAfter [s6Step157HeadFOut,s6Step157HeadGvOut,s6Step157HeadFvOut] :=
  hmrRows_owned_drop s6Step157HeadFvAfter [s6Step157HeadGOut,s6Step157HeadFOut,s6Step157HeadGvOut,s6Step157HeadFvOut] 1 s6Step157HeadBank_outgoingOwned

private theorem s6Step157HeadF_distinct : (s6Step157HeadFRow.sign::s6Step157HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step157HeadF_owned : (s6Step157HeadFRow.sign::s6Step157HeadFRow.payload).toFinset⊆s6Step157HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step157HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step157HeadF_reserved : s6Step157HeadFBefore.reserve s6Step157HeadFFresh.toFinset=some s6Step157HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step157HeadFFresh,arenaWires]
  · norm_num [s6Step157HeadFBefore,s6Step157HeadGAfter,s6Step157HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step157HeadFBefore s6Step157HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step157HeadFFresh rfl rfl
    · norm_num [s6Step157HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step157HeadF_checked : planRowResizeLog s6Step157HeadFBefore s6Step157HeadFRow 192 s6Step157HeadFFresh=
    some (s6Step157HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 857],795⟩,growRow 795 s6Step157HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step157HeadFBefore s6Step157HeadFAfter s6Step157HeadFRow 192 s6Step157HeadFFresh
    s6Step157HeadF_distinct s6Step157HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step157HeadF_reserved
  have rowEq : WindowRow.mk (s6Step157HeadFRow.payload++s6Step157HeadFFresh) s6Step157HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 857],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step157HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step157HeadFvBefore : Arena := s6Step157HeadGvAfter

private theorem s6Step157HeadFv_Incoming : rowsOwned s6Step157HeadFvBefore [s6Step157HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step157HeadGRow,s6Step157HeadFRow,s6Step157HeadGvRow,s6Step157HeadFvRow] 3 s6Step157HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step157HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step157HeadFv_Outgoing : rowsOwned s6Step157HeadFvAfter [s6Step157HeadFvOut] :=
  hmrRows_owned_drop s6Step157HeadFvAfter [s6Step157HeadGOut,s6Step157HeadFOut,s6Step157HeadGvOut,s6Step157HeadFvOut] 3 s6Step157HeadBank_outgoingOwned

private theorem s6Step157HeadFv_distinct : (s6Step157HeadFvRow.sign::s6Step157HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step157HeadFv_owned : (s6Step157HeadFvRow.sign::s6Step157HeadFvRow.payload).toFinset⊆s6Step157HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step157HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step157HeadFv_reserved : s6Step157HeadFvBefore.reserve s6Step157HeadFvFresh.toFinset=some s6Step157HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step157HeadFvFresh,arenaWires]
  · norm_num [s6Step157HeadFvBefore,s6Step157HeadGvAfter,s6Step157HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step157HeadFvAfter,s6Step157HeadFvBefore,s6Step157HeadGvAfter,s6Step157HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step157HeadFv_checked : planRowResizeLog s6Step157HeadFvBefore s6Step157HeadFvRow 94 s6Step157HeadFvFresh=
    some (s6Step157HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 908],776⟩,growRow 776 s6Step157HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step157HeadFvBefore s6Step157HeadFvAfter s6Step157HeadFvRow 94 s6Step157HeadFvFresh
    s6Step157HeadFv_distinct s6Step157HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step157HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step157HeadFvRow.payload++s6Step157HeadFvFresh) s6Step157HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 908],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step157HeadG_Incoming : rowsOwned s6Step157HeadGBefore [s6Step157HeadGRow,s6Step157HeadFRow,s6Step157HeadGvRow,s6Step157HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step157HeadGRow,s6Step157HeadFRow,s6Step157HeadGvRow,s6Step157HeadFvRow] 0 s6Step157HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step157HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step157HeadG_Outgoing : rowsOwned s6Step157HeadFvAfter [s6Step157HeadGOut,s6Step157HeadFOut,s6Step157HeadGvOut,s6Step157HeadFvOut] :=
  hmrRows_owned_drop s6Step157HeadFvAfter [s6Step157HeadGOut,s6Step157HeadFOut,s6Step157HeadGvOut,s6Step157HeadFvOut] 0 s6Step157HeadBank_outgoingOwned

private theorem s6Step157HeadG_distinct : (s6Step157HeadGRow.sign::s6Step157HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step157HeadG_owned : (s6Step157HeadGRow.sign::s6Step157HeadGRow.payload).toFinset⊆s6Step157HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step157HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step157HeadG_reserved : s6Step157HeadGBefore.reserve s6Step157HeadGFresh.toFinset=some s6Step157HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step157HeadGFresh,arenaWires]
  · norm_num [s6Step157HeadGBefore,s6Step157HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step157HeadGBefore s6Step157HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step157HeadGFresh rfl rfl
    · norm_num [s6Step157HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step157HeadG_checked : planRowResizeLog s6Step157HeadGBefore s6Step157HeadGRow 192 s6Step157HeadGFresh=
    some (s6Step157HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 856],777⟩,growRow 777 s6Step157HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step157HeadGBefore s6Step157HeadGAfter s6Step157HeadGRow 192 s6Step157HeadGFresh
    s6Step157HeadG_distinct s6Step157HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step157HeadG_reserved
  have rowEq : WindowRow.mk (s6Step157HeadGRow.payload++s6Step157HeadGFresh) s6Step157HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 856],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step157HeadGvBefore : Arena := s6Step157HeadFAfter

private theorem s6Step157HeadGv_Incoming : rowsOwned s6Step157HeadGvBefore [s6Step157HeadGvRow,s6Step157HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step157HeadGRow,s6Step157HeadFRow,s6Step157HeadGvRow,s6Step157HeadFvRow] 2 s6Step157HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step157HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step157HeadGv_Outgoing : rowsOwned s6Step157HeadFvAfter [s6Step157HeadGvOut,s6Step157HeadFvOut] :=
  hmrRows_owned_drop s6Step157HeadFvAfter [s6Step157HeadGOut,s6Step157HeadFOut,s6Step157HeadGvOut,s6Step157HeadFvOut] 2 s6Step157HeadBank_outgoingOwned

private theorem s6Step157HeadGv_distinct : (s6Step157HeadGvRow.sign::s6Step157HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step157HeadGv_owned : (s6Step157HeadGvRow.sign::s6Step157HeadGvRow.payload).toFinset⊆s6Step157HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step157HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step157HeadGv_reserved : s6Step157HeadGvBefore.reserve s6Step157HeadGvFresh.toFinset=some s6Step157HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step157HeadGvFresh,arenaWires]
  · norm_num [s6Step157HeadGvBefore,s6Step157HeadFAfter,s6Step157HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step157HeadGvAfter,s6Step157HeadGvBefore,s6Step157HeadFAfter,s6Step157HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step157HeadGv_checked : planRowResizeLog s6Step157HeadGvBefore s6Step157HeadGvRow 94 s6Step157HeadGvFresh=
    some (s6Step157HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 875],775⟩,growRow 775 s6Step157HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step157HeadGvBefore s6Step157HeadGvAfter s6Step157HeadGvRow 94 s6Step157HeadGvFresh
    s6Step157HeadGv_distinct s6Step157HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step157HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step157HeadGvRow.payload++s6Step157HeadGvFresh) s6Step157HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 875],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step157HeadBank_rows : planWindowRowsLog s6Step157HeadGBefore [(s6Step157HeadGRow,192),(s6Step157HeadFRow,192),(s6Step157HeadGvRow,94),(s6Step157HeadFvRow,94)] [s6Step157HeadGFresh,s6Step157HeadFFresh,s6Step157HeadGvFresh,s6Step157HeadFvFresh]=
    some (s6Step157HeadFvAfter,[s6Step157HeadGOut,s6Step157HeadFOut,s6Step157HeadGvOut,s6Step157HeadFvOut],(growRow 777 s6Step157HeadGFresh ++ (growRow 795 s6Step157HeadFFresh ++ (growRow 775 s6Step157HeadGvFresh ++ (growRow 776 s6Step157HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step157HeadFvAfter [] []=some (s6Step157HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step157HeadFvBefore s6Step157HeadFvAfter s6Step157HeadFvAfter
    s6Step157HeadFvRow s6Step157HeadFvOut 94 s6Step157HeadFvFresh [] [] []
    (growRow 776 s6Step157HeadFvFresh) ([]) s6Step157HeadFv_Incoming s6Step157HeadFv_checked h4 s6Step157HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step157HeadGvBefore s6Step157HeadGvAfter s6Step157HeadFvAfter
    s6Step157HeadGvRow s6Step157HeadGvOut 94 s6Step157HeadGvFresh [(s6Step157HeadFvRow,94)] [s6Step157HeadFvFresh] [s6Step157HeadFvOut]
    (growRow 775 s6Step157HeadGvFresh) ((growRow 776 s6Step157HeadFvFresh ++ [])) s6Step157HeadGv_Incoming s6Step157HeadGv_checked h3 s6Step157HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step157HeadFBefore s6Step157HeadFAfter s6Step157HeadFvAfter
    s6Step157HeadFRow s6Step157HeadFOut 192 s6Step157HeadFFresh [(s6Step157HeadGvRow,94),(s6Step157HeadFvRow,94)] [s6Step157HeadGvFresh,s6Step157HeadFvFresh] [s6Step157HeadGvOut,s6Step157HeadFvOut]
    (growRow 795 s6Step157HeadFFresh) ((growRow 775 s6Step157HeadGvFresh ++ (growRow 776 s6Step157HeadFvFresh ++ []))) s6Step157HeadF_Incoming s6Step157HeadF_checked h2 s6Step157HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step157HeadGBefore s6Step157HeadGAfter s6Step157HeadFvAfter
    s6Step157HeadGRow s6Step157HeadGOut 192 s6Step157HeadGFresh [(s6Step157HeadFRow,192),(s6Step157HeadGvRow,94),(s6Step157HeadFvRow,94)] [s6Step157HeadFFresh,s6Step157HeadGvFresh,s6Step157HeadFvFresh] [s6Step157HeadFOut,s6Step157HeadGvOut,s6Step157HeadFvOut]
    (growRow 777 s6Step157HeadGFresh) ((growRow 795 s6Step157HeadFFresh ++ (growRow 775 s6Step157HeadGvFresh ++ (growRow 776 s6Step157HeadFvFresh ++ [])))) s6Step157HeadG_Incoming s6Step157HeadG_checked h1 s6Step157HeadG_Outgoing
  exact h0

private theorem s6Step157HeadBank_checked : compileHmrBankResizeLog .headroom s6Step157HeadGBefore ⟨s6Step157HeadFRow,s6Step157HeadGRow,s6Step157HeadFvRow,s6Step157HeadGvRow⟩ ⟨192,192,94,94⟩ [s6Step157HeadGFresh,s6Step157HeadFFresh,s6Step157HeadGvFresh,s6Step157HeadFvFresh]=
    some (s6Step157HeadFvAfter,⟨s6Step157HeadFOut,s6Step157HeadGOut,s6Step157HeadFvOut,s6Step157HeadGvOut⟩,(growRow 777 s6Step157HeadGFresh ++ (growRow 795 s6Step157HeadFFresh ++ (growRow 775 s6Step157HeadGvFresh ++ (growRow 776 s6Step157HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step157HeadBank_rows]
  rfl

private theorem s6Step157Front_checked : compileHmrSourceFrontLog s6Step157EntryFBefore s6Step157FrontBank 191 93 ⟨190,190,93,93⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step157FrontLog=some s6Step157FrontPlan := by
  have pairEq : s6Step157FrontPair=⟨s6Step157HeadFRow,s6Step157HeadGRow,s6Step157HeadFvRow,s6Step157HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step157FrontHead=⟨s6Step157ExitFRow,s6Step157ExitGRow,s6Step157ExitFvRow,s6Step157ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step157Add0A=s6Step157FrontHead.f.wires := by decide +kernel
  have gEq : s6Step157Add0B=s6Step157FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step157Add1A=s6Step157FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step157Add1B=s6Step157FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step157EntryFBefore s6Step157FrontBank 191 93 ⟨190,190,93,93⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step157FrontLog s6Step157FrontPlan
  · exact s6Step157Front_entry
  · exact s6Step157EntryBank_checked
  · exact s6Step157Front_sigma
  · rfl
  · exact s6Step157Front_branch
  · rfl
  · simpa only [s6Step157FrontPlan,pairEq] using s6Step157HeadBank_checked
  · simpa only [s6Step157FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step157F4_checked
  · exact s6Step157Counter_checked
  · rfl
  · simpa only [s6Step157FrontPlan,headEq] using s6Step157ExitBank_checked

private theorem s6Step157Complete_explicit_checked : compileHmrEarlyStepLog s6Step157EntryFBefore s6Step157FrontBank 191 93 ⟨190,190,93,93⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step157CompleteLog=some s6Step157CompletePlan := by
  let Q := s6Step157EarlyControlPlan
  have hq := s6Step157EarlyControl_plan_checked
  have fv1 : s6Step157CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step157CompleteOut.fv.payload[2]?.getD s6Step157CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step157CompleteOut.fv.payload[3]?.getD s6Step157CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step157CompleteOut.fv.payload[4]?.getD s6Step157CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step157EntryFBefore s6Step157EarlyControlArena s6Step157FrontBank 191 93 ⟨190,190,93,93⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step157CompleteLog s6Step157FrontPlan Q
    s6Step157Front_checked s6Step157Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step157Complete_owned s6Step157Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step157EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 879 s6Step157CompleteOut.fv.second (s6Step157CompleteOut.fv.payload[2]?.getD s6Step157CompleteOut.fv.sign) (s6Step157CompleteOut.fv.payload[3]?.getD s6Step157CompleteOut.fv.sign) (s6Step157CompleteOut.fv.payload[4]?.getD s6Step157CompleteOut.fv.sign) 768 42 s6Step157EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep157Arena : Arena := s6Step157EntryFBefore
def s6PrivateStep157Bank : WindowBank := s6Step157FrontBank
def s6PrivateStep157Spec : HmrSourceWalkStepLog := ⟨191,93,⟨190,190,93,93⟩,42,.early s6Step157CompleteLog⟩
def s6PrivateStep157Plan : HmrSourceStepPlan := .early s6Step157CompletePlan
theorem s6PrivateStep157_source : s6PrivateStep157Spec=s6ObservedLogs144[13] := rfl
theorem s6PrivateStep157_checked : compileHmrSourceStepLog s6PrivateStep157Arena s6PrivateStep157Bank
    s6PrivateStep157Spec.fgWidth s6PrivateStep157Spec.vWidth s6PrivateStep157Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 157 s6PrivateStep157Spec.need none s6PrivateStep157Spec.log=some s6PrivateStep157Plan := by
  change compileHmrSourceStepLog s6Step157EntryFBefore s6Step157FrontBank 191 93 ⟨190,190,93,93⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 157 42 none (.early s6Step157CompleteLog)=some (.early s6Step157CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 157<498)]
  rw [s6Step157Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
