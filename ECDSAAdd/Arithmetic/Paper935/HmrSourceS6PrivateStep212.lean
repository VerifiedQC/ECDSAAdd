import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep210
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

private def s6Step212CompleteMoves : List (Wire × Wire) := [(784,162)]

private def s6Step212EarlyControlLog : HmrEarlyControlLog := ⟨[784, 873, 779, 881, 855],[802],[882],[807, 822, 825, 869, 786, 810],[]⟩

private def s6Step212FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[881], [779], [873], [813]],[[], [], [], []]⟩,[838],[858],[855],[802],[882, 807, 822, 825, 869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[882, 807, 822, 825, 869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[855, 802, 882, 807]⟩

private def s6Step212CompleteLog : HmrEarlyStepLog := ⟨s6Step212FrontLog,s6Step212CompleteMoves,s6Step212EarlyControlLog⟩

private def s6Step212ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418],795⟩

private def s6Step212ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813],776⟩

private def s6Step212ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161],777⟩

private def s6Step212ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867],775⟩

private def s6Step212FrontOut : WindowBank := ⟨s6Step212ExitFOut,s6Step212ExitGOut,s6Step212ExitFvOut,s6Step212ExitGvOut⟩

private def s6Step212CompleteOut : WindowBank := s6Step212FrontOut.repacked s6Step212CompleteMoves

private def s6Step212EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step212EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step212EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step212EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step212EarlyControlPositiveArena,[802],s6Step212EarlyControlEqualityArena,[882],⟨⟨838,false⟩,[⟨⟨802,false⟩,882⟩]⟩⟩

private def s6Step212EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step212EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step212EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step212EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,784),(785,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step212EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,784),(785,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step212EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step212EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,784⟩,⟨⟨772,false⟩,873⟩,⟨⟨771,false⟩,779⟩,⟨⟨770,false⟩,881⟩,⟨⟨769,false⟩,855⟩]⟩

private def s6Step212EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step212EarlyControlZeroArena,s6Step212EarlyControlZeroPlan,s6Step212EarlyControlClassPlan,s6Step212EarlyControlFlagArena,s6Step212EarlyControlFittedArena,s6Step212EarlyControlHistoryArena,s6Step212EarlyControlSigmaArena,s6Step212EarlyControlOutputArena,s6Step212EarlyControlLog⟩

private def s6Step212CounterWork : List Wire := [855, 802, 882, 807]

private theorem s6Step212Counter_bounded : s6Step212CounterWork.toFinset⊆arenaWires := by norm_num [s6Step212CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step212HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step212CounterDuring : Arena := ⟨s6Step212HeadFvAfter.live∪s6Step212CounterWork.toFinset,Finset.union_subset s6Step212HeadFvAfter.bounded s6Step212Counter_bounded⟩

private def s6Step212EntryFFresh : List Wire := []

private def s6Step212EntryFvFresh : List Wire := []

private def s6Step212EntryGFresh : List Wire := []

private def s6Step212EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(814,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step212EntryGvAfter : Arena := s6Step212EntryFBefore

private def s6Step212EntryGvFresh : List Wire := []

private def s6Step212ExitFExtra : List Wire := [779]

private def s6Step212ExitGExtra : List Wire := [162, 881]

private def s6Step212ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<162) ∨ (163≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step212ExitGvExtra : List Wire := [873]

private def s6Step212Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step212Add0Work : List Wire := [882, 807, 822, 825, 869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step212Add0_bounded : s6Step212Add0Work.toFinset⊆arenaWires := by
  have h : s6Step212Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step212Add0During : Arena := ⟨s6Step212Add0Arena.live∪s6Step212Add0Work.toFinset,Finset.union_subset s6Step212Add0Arena.bounded s6Step212Add0_bounded⟩

private def s6Step212Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step212Add1Work : List Wire := [882, 807, 822, 825, 869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step212Add1_bounded : s6Step212Add1Work.toFinset⊆arenaWires := by
  have h : s6Step212Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step212Add1During : Arena := ⟨s6Step212Add1Arena.live∪s6Step212Add1Work.toFinset,Finset.union_subset s6Step212Add1Arena.bounded s6Step212Add1_bounded⟩

private def s6Step212F4FlagArena : Arena := ⟨s6Step212HeadFvAfter.live∪{855},Finset.union_subset s6Step212HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step212F4Plan : HmrHybridF4Plan := ⟨s6Step212F4FlagArena,[855],s6Step212Add0Arena,[802],s6Step212Add0During,s6Step212Add0Work,s6Step212Add1During,s6Step212Add1Work⟩

private def s6Step212HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 779],795⟩

private def s6Step212HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813],776⟩

private def s6Step212HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 881],777⟩

private def s6Step212HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 873],775⟩

private def s6Step212FrontHead : WindowBank := ⟨s6Step212HeadFOut,s6Step212HeadGOut,s6Step212HeadFvOut,s6Step212HeadGvOut⟩

private def s6Step212EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418],795⟩

private def s6Step212EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874],776⟩

private def s6Step212EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162],777⟩

private def s6Step212EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867],775⟩

private def s6Step212FrontPair : WindowBank := ⟨s6Step212EntryFOut,s6Step212EntryGOut,s6Step212EntryFvOut,s6Step212EntryGvOut⟩

private def s6Step212FrontSigmaArena : Arena := ⟨s6Step212EntryGvAfter.live∪{838},Finset.union_subset s6Step212EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step212HeadFFresh : List Wire := [779]

private def s6Step212HeadFvFresh : List Wire := [813]

private def s6Step212HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step212HeadGFresh : List Wire := [881]

private def s6Step212HeadGvFresh : List Wire := [873]

private def s6Step212FrontPlan : HmrSourceFront := ⟨s6Step212EntryGvAfter,s6Step212FrontPair,(growRow 795 s6Step212EntryFFresh ++ (growRow 777 s6Step212EntryGFresh ++ (growRow 776 s6Step212EntryFvFresh ++ (growRow 775 s6Step212EntryGvFresh ++ [])))),s6Step212FrontSigmaArena,[838],s6Step212HeadGBefore,[858],
  s6Step212HeadFvAfter,s6Step212FrontHead,(growRow 777 s6Step212HeadGFresh ++ (growRow 795 s6Step212HeadFFresh ++ (growRow 775 s6Step212HeadGvFresh ++ (growRow 776 s6Step212HeadFvFresh ++ [])))),s6Step212F4Plan,s6Step212CounterDuring,s6Step212CounterWork,s6Step212ExitGvAfter,s6Step212FrontOut,(shrinkRow 777 s6Step212ExitGExtra ++ (shrinkRow 795 s6Step212ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step212ExitGvExtra ++ []))))⟩

private def s6Step212CompletePlan : HmrEarlyStepPlan := ⟨s6Step212FrontPlan,s6Step212EarlyControlArena,s6Step212EarlyControlPlan,s6Step212CompleteMoves⟩

private theorem s6Step212Complete_apart : List.Disjoint (s6Step212CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [838, 858, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] := by
  have nd : ((s6Step212CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[838, 858, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step212Complete_owned : (s6Step212CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step212EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step212EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step212CompleteMoveArena : Arena := ⟨s6Step212ExitGvAfter.live∪{162},Finset.union_subset s6Step212ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step212Complete_repack : s6Step212ExitGvAfter.checkRepack s6Step212CompleteMoves=some s6Step212EarlyControlArena := by
  have owned : 784∈s6Step212ExitGvAfter.live := by norm_num [s6Step212ExitGvAfter,arenaWires]
  have reserve : s6Step212ExitGvAfter.reserve {162}=some s6Step212CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step212ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step212CompleteMoveArena.retireSet {784}=s6Step212EarlyControlArena := by
    unfold Arena.retireSet s6Step212EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step212CompleteMoveArena,s6Step212ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step212CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step212CompleteMoveArena.retireSet {784}).checkRepack []=some s6Step212EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step212EarlyControl_branchOwned : ([858] : List Wire).toFinset⊆s6Step212EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step212EarlyControlSigmaArena (fun q => ([(0,779),(780,782),(783,784),(785,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step212EarlyControl_branch : compileHmrBranchRetirement s6Step212EarlyControlSigmaArena 858=some s6Step212EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step212EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step212EarlyControlSigmaArena s6Step212EarlyControlOutputArena (fun q => ([(0,779),(780,782),(783,784),(785,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(783,784),(785,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [858] rfl rfl
    decide +kernel

private theorem s6Step212EarlyControl_classEqualityBorrow : s6Step212EarlyControlPositiveArena.checkBorrow (([838, 802] : List Wire).length-1) s6Step212EarlyControlLog.classWork=some s6Step212EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step212EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step212EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step212EarlyControlEqualityArena,s6Step212EarlyControlPositiveArena,s6Step212EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step212EarlyControl_classEqualityOwned : ([838, 802] : List Wire).toFinset⊆s6Step212EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step212EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step212EarlyControl_classEquality : compileHmrEqualityLog s6Step212EarlyControlPositiveArena [838, 802] 0 s6Step212EarlyControlLog.classWork=some (s6Step212EarlyControlEqualityArena,s6Step212EarlyControlLog.classWork,s6Step212EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step212EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step212EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step212EarlyControl_classOwned : ([769, 855, 838] : List Wire).toFinset⊆s6Step212EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step212EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step212EarlyControl_positiveBorrow : s6Step212EarlyControlZeroArena.checkBorrow (1) s6Step212EarlyControlLog.positiveWork=some s6Step212EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step212EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step212EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step212EarlyControlPositiveArena,s6Step212EarlyControlZeroArena,s6Step212EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step212EarlyControl_class : compileHmrSourceClassLog s6Step212EarlyControlZeroArena false 769 s6Step212EarlyControlZeroPlan.top 0 838 s6Step212EarlyControlLog.positiveWork s6Step212EarlyControlLog.classWork=some s6Step212EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step212EarlyControlClassPlan s6Step212EarlyControlZeroArena false 769 s6Step212EarlyControlZeroPlan.top 0 838
  constructor
  · decide +kernel
  · exact s6Step212EarlyControl_classOwned
  · exact s6Step212EarlyControl_positiveBorrow
  · exact s6Step212EarlyControl_classEquality

private theorem s6Step212EarlyControl_entryRecordOwned : ([858, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step212EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step212EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step212EarlyControl_entrySigmaOwned : ([838, 254] : List Wire).toFinset⊆s6Step212EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step212EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step212EarlyControl_fitBorrow : s6Step212EarlyControlFlagArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step212EarlyControlLog.recordFresh=some s6Step212EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step212EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step212EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step212EarlyControlFittedArena,s6Step212EarlyControlFlagArena,s6Step212EarlyControlLog,arenaWires]

private theorem s6Step212EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step212EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step212EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step212EarlyControl_fit : compileHmrRecordGrowLog s6Step212EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step212EarlyControlLog.recordFresh=some s6Step212EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step212EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step212EarlyControl_fitBorrow

private theorem s6Step212EarlyControl_flagsBorrow : s6Step212EarlyControlEqualityArena.checkBorrow (6) s6Step212EarlyControlLog.flagWork=some s6Step212EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step212EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step212EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step212EarlyControlFlagArena,s6Step212EarlyControlEqualityArena,s6Step212EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step212EarlyControl_flagsOwned : ([882, 253, 252, 251] : List Wire).toFinset⊆s6Step212EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step212EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step212EarlyControl_flags : compileHmrFlagsLog s6Step212EarlyControlClassPlan.equalityArena s6Step212EarlyControlClassPlan.equality.top 253 252 251 s6Step212EarlyControlLog.flagWork=some s6Step212EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step212EarlyControl_flagsOwned⟩
  · exact s6Step212EarlyControl_flagsBorrow

private theorem s6Step212EarlyControl_historyBorrow : s6Step212EarlyControlArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step212EarlyControlLog.recordFresh=some s6Step212EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step212EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step212EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step212EarlyControlHistoryArena,s6Step212EarlyControlArena,s6Step212EarlyControlLog,arenaWires]

private theorem s6Step212EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step212EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step212EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step212EarlyControl_history : compileHmrRecordGrowLog s6Step212EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step212EarlyControlLog.recordFresh=some s6Step212EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step212EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step212EarlyControl_historyBorrow

private theorem s6Step212EarlyControl_sigmaOwned : ([254, 838] : List Wire).toFinset⊆s6Step212EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step212EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step212EarlyControl_sigmaReleaseOwned : ([838] : List Wire).toFinset⊆s6Step212EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step212EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step212EarlyControl_sigmaRelease : s6Step212EarlyControlHistoryArena.release {838} (fun _ => false)=some s6Step212EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step212EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step212EarlyControlHistoryArena s6Step212EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,779),(780,782),(783,784),(785,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [838] rfl rfl
    decide +kernel

private theorem s6Step212EarlyControl_sigma : compileHmrSigmaDropLog s6Step212EarlyControlHistoryArena false 0 0 254 838 []=some s6Step212EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step212EarlyControl_sigmaOwned⟩
  · exact s6Step212EarlyControl_sigmaRelease

private theorem s6Step212EarlyControl_zeroBorrow : s6Step212EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step212EarlyControlLog.zeroWork=some s6Step212EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step212EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step212EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step212EarlyControlZeroArena,s6Step212EarlyControlArena,s6Step212EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step212EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step212EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step212EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step212EarlyControl_zero : compileHmrEqualityLog s6Step212EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step212EarlyControlLog.zeroWork=some (s6Step212EarlyControlZeroArena,s6Step212EarlyControlLog.zeroWork,s6Step212EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step212EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step212EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step212EarlyControl_logged : s6Step212EarlyControlPlan.Logged s6Step212EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 838 254 253 252 251 858 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step212EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step212EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step212EarlyControl_zero
  · exact s6Step212EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step212EarlyControl_flags
  · exact s6Step212EarlyControl_fit
  · exact s6Step212EarlyControl_history
  · exact s6Step212EarlyControl_sigma
  · exact s6Step212EarlyControl_branch

private theorem s6Step212EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step212EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 838 254 253 252 251 858 47 s6Step212EarlyControlLog=some s6Step212EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step212EarlyControlPlan s6Step212EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 838 254 253 252 251 858 47 s6Step212EarlyControl_logged

private def s6Step212EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418],795⟩

private def s6Step212EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874],776⟩

private def s6Step212EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162],777⟩

private def s6Step212EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867],775⟩

private def s6Step212FrontBank : WindowBank := ⟨s6Step212EntryFRow,s6Step212EntryGRow,s6Step212EntryFvRow,s6Step212EntryGvRow⟩

private def s6Step212Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 779, 795]

private def s6Step212Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 881, 777]

private def s6Step212Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 776]

private def s6Step212Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 873, 775]

private theorem s6Step212Counter_apart : Disjoint s6Step212HeadFvAfter.live s6Step212CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step212HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step212Counter_borrowed : s6Step212HeadFvAfter.checkBorrow 4 s6Step212CounterWork=some s6Step212CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step212HeadFvAfter s6Step212CounterDuring s6Step212CounterWork.toFinset s6Step212Counter_bounded s6Step212Counter_apart rfl

private theorem s6Step212Counter_owned : (838::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step212HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step212HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step212Counter_checked : compileHmrCounterStepLog s6Step212HeadFvAfter true 838 [774, 773, 772, 771, 770, 769] s6Step212CounterWork=some s6Step212CounterDuring := by
  have owned : ∀q∈838::[774, 773, 772, 771, 770, 769],q∈s6Step212HeadFvAfter.live := fun q hq => s6Step212Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step212Counter_borrowed

private def s6Step212EntryFAfter : Arena := s6Step212EntryFBefore

private theorem s6Step212EntryBank_incomingDistinct : ([s6Step212EntryFRow,s6Step212EntryGRow,s6Step212EntryFvRow,s6Step212EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step212EntryF_Incoming : rowsOwned s6Step212EntryFBefore [s6Step212EntryFRow,s6Step212EntryGRow,s6Step212EntryFvRow,s6Step212EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step212EntryFRow,s6Step212EntryGRow,s6Step212EntryFvRow,s6Step212EntryGvRow] 0 s6Step212EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step212EntryFBefore (fun q => ([(0,779),(780,782),(783,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(814,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step212EntryBank_outgoingOwned : rowsOwned s6Step212EntryGvAfter [s6Step212EntryFOut,s6Step212EntryGOut,s6Step212EntryFvOut,s6Step212EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step212EntryGvAfter (fun q => ([(0,779),(780,782),(783,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(814,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step212EntryF_Outgoing : rowsOwned s6Step212EntryGvAfter [s6Step212EntryFOut,s6Step212EntryGOut,s6Step212EntryFvOut,s6Step212EntryGvOut] :=
  hmrRows_owned_drop s6Step212EntryGvAfter [s6Step212EntryFOut,s6Step212EntryGOut,s6Step212EntryFvOut,s6Step212EntryGvOut] 0 s6Step212EntryBank_outgoingOwned

private theorem s6Step212EntryF_distinct : (s6Step212EntryFRow.sign::s6Step212EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step212EntryF_owned : (s6Step212EntryFRow.sign::s6Step212EntryFRow.payload).toFinset⊆s6Step212EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step212EntryFBefore (fun q => ([(0,779),(780,782),(783,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(814,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step212EntryF_reserved : s6Step212EntryFBefore.reserve s6Step212EntryFFresh.toFinset=some s6Step212EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step212EntryFFresh,arenaWires]
  · norm_num [s6Step212EntryFBefore,s6Step212EntryFFresh,arenaWires]
  · simp only [s6Step212EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step212EntryF_checked : planRowResizeLog s6Step212EntryFBefore s6Step212EntryFRow 163 s6Step212EntryFFresh=
    some (s6Step212EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418],795⟩,growRow 795 s6Step212EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step212EntryFBefore s6Step212EntryFAfter s6Step212EntryFRow 163 s6Step212EntryFFresh
    s6Step212EntryF_distinct s6Step212EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step212EntryF_reserved
  have rowEq : WindowRow.mk (s6Step212EntryFRow.payload++s6Step212EntryFFresh) s6Step212EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step212EntryFvAfter : Arena := s6Step212EntryFBefore

private def s6Step212EntryFvBefore : Arena := s6Step212EntryFBefore

private theorem s6Step212EntryFv_Incoming : rowsOwned s6Step212EntryFvBefore [s6Step212EntryFvRow,s6Step212EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step212EntryFRow,s6Step212EntryGRow,s6Step212EntryFvRow,s6Step212EntryGvRow] 2 s6Step212EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step212EntryFvBefore (fun q => ([(0,779),(780,782),(783,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(814,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step212EntryFv_Outgoing : rowsOwned s6Step212EntryGvAfter [s6Step212EntryFvOut,s6Step212EntryGvOut] :=
  hmrRows_owned_drop s6Step212EntryGvAfter [s6Step212EntryFOut,s6Step212EntryGOut,s6Step212EntryFvOut,s6Step212EntryGvOut] 2 s6Step212EntryBank_outgoingOwned

private theorem s6Step212EntryFv_distinct : (s6Step212EntryFvRow.sign::s6Step212EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step212EntryFv_owned : (s6Step212EntryFvRow.sign::s6Step212EntryFvRow.payload).toFinset⊆s6Step212EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step212EntryFvBefore (fun q => ([(0,779),(780,782),(783,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(814,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step212EntryFv_reserved : s6Step212EntryFvBefore.reserve s6Step212EntryFvFresh.toFinset=some s6Step212EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step212EntryFvFresh,arenaWires]
  · norm_num [s6Step212EntryFvBefore,s6Step212EntryFBefore,s6Step212EntryFvFresh,arenaWires]
  · simp only [s6Step212EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step212EntryFv_checked : planRowResizeLog s6Step212EntryFvBefore s6Step212EntryFvRow 120 s6Step212EntryFvFresh=
    some (s6Step212EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874],776⟩,growRow 776 s6Step212EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step212EntryFvBefore s6Step212EntryFvAfter s6Step212EntryFvRow 120 s6Step212EntryFvFresh
    s6Step212EntryFv_distinct s6Step212EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step212EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step212EntryFvRow.payload++s6Step212EntryFvFresh) s6Step212EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step212EntryGAfter : Arena := s6Step212EntryFBefore

private def s6Step212EntryGBefore : Arena := s6Step212EntryFBefore

private theorem s6Step212EntryG_Incoming : rowsOwned s6Step212EntryGBefore [s6Step212EntryGRow,s6Step212EntryFvRow,s6Step212EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step212EntryFRow,s6Step212EntryGRow,s6Step212EntryFvRow,s6Step212EntryGvRow] 1 s6Step212EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step212EntryGBefore (fun q => ([(0,779),(780,782),(783,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(814,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step212EntryG_Outgoing : rowsOwned s6Step212EntryGvAfter [s6Step212EntryGOut,s6Step212EntryFvOut,s6Step212EntryGvOut] :=
  hmrRows_owned_drop s6Step212EntryGvAfter [s6Step212EntryFOut,s6Step212EntryGOut,s6Step212EntryFvOut,s6Step212EntryGvOut] 1 s6Step212EntryBank_outgoingOwned

private theorem s6Step212EntryG_distinct : (s6Step212EntryGRow.sign::s6Step212EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step212EntryG_owned : (s6Step212EntryGRow.sign::s6Step212EntryGRow.payload).toFinset⊆s6Step212EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step212EntryGBefore (fun q => ([(0,779),(780,782),(783,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(814,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step212EntryG_reserved : s6Step212EntryGBefore.reserve s6Step212EntryGFresh.toFinset=some s6Step212EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step212EntryGFresh,arenaWires]
  · norm_num [s6Step212EntryGBefore,s6Step212EntryFBefore,s6Step212EntryGFresh,arenaWires]
  · simp only [s6Step212EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step212EntryG_checked : planRowResizeLog s6Step212EntryGBefore s6Step212EntryGRow 163 s6Step212EntryGFresh=
    some (s6Step212EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162],777⟩,growRow 777 s6Step212EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step212EntryGBefore s6Step212EntryGAfter s6Step212EntryGRow 163 s6Step212EntryGFresh
    s6Step212EntryG_distinct s6Step212EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step212EntryG_reserved
  have rowEq : WindowRow.mk (s6Step212EntryGRow.payload++s6Step212EntryGFresh) s6Step212EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step212EntryGvBefore : Arena := s6Step212EntryFBefore

private theorem s6Step212EntryGv_Incoming : rowsOwned s6Step212EntryGvBefore [s6Step212EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step212EntryFRow,s6Step212EntryGRow,s6Step212EntryFvRow,s6Step212EntryGvRow] 3 s6Step212EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step212EntryGvBefore (fun q => ([(0,779),(780,782),(783,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(814,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step212EntryGv_Outgoing : rowsOwned s6Step212EntryGvAfter [s6Step212EntryGvOut] :=
  hmrRows_owned_drop s6Step212EntryGvAfter [s6Step212EntryFOut,s6Step212EntryGOut,s6Step212EntryFvOut,s6Step212EntryGvOut] 3 s6Step212EntryBank_outgoingOwned

private theorem s6Step212EntryGv_distinct : (s6Step212EntryGvRow.sign::s6Step212EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step212EntryGv_owned : (s6Step212EntryGvRow.sign::s6Step212EntryGvRow.payload).toFinset⊆s6Step212EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step212EntryGvBefore (fun q => ([(0,779),(780,782),(783,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(814,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step212EntryGv_reserved : s6Step212EntryGvBefore.reserve s6Step212EntryGvFresh.toFinset=some s6Step212EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step212EntryGvFresh,arenaWires]
  · norm_num [s6Step212EntryGvBefore,s6Step212EntryFBefore,s6Step212EntryGvFresh,arenaWires]
  · simp only [s6Step212EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step212EntryGv_checked : planRowResizeLog s6Step212EntryGvBefore s6Step212EntryGvRow 120 s6Step212EntryGvFresh=
    some (s6Step212EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867],775⟩,growRow 775 s6Step212EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step212EntryGvBefore s6Step212EntryGvAfter s6Step212EntryGvRow 120 s6Step212EntryGvFresh
    s6Step212EntryGv_distinct s6Step212EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step212EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step212EntryGvRow.payload++s6Step212EntryGvFresh) s6Step212EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step212EntryBank_rows : planWindowRowsLog s6Step212EntryFBefore [(s6Step212EntryFRow,163),(s6Step212EntryGRow,163),(s6Step212EntryFvRow,120),(s6Step212EntryGvRow,120)] [s6Step212EntryFFresh,s6Step212EntryGFresh,s6Step212EntryFvFresh,s6Step212EntryGvFresh]=
    some (s6Step212EntryGvAfter,[s6Step212EntryFOut,s6Step212EntryGOut,s6Step212EntryFvOut,s6Step212EntryGvOut],(growRow 795 s6Step212EntryFFresh ++ (growRow 777 s6Step212EntryGFresh ++ (growRow 776 s6Step212EntryFvFresh ++ (growRow 775 s6Step212EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step212EntryGvAfter [] []=some (s6Step212EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step212EntryGvBefore s6Step212EntryGvAfter s6Step212EntryGvAfter
    s6Step212EntryGvRow s6Step212EntryGvOut 120 s6Step212EntryGvFresh [] [] []
    (growRow 775 s6Step212EntryGvFresh) ([]) s6Step212EntryGv_Incoming s6Step212EntryGv_checked h4 s6Step212EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step212EntryFvBefore s6Step212EntryFvAfter s6Step212EntryGvAfter
    s6Step212EntryFvRow s6Step212EntryFvOut 120 s6Step212EntryFvFresh [(s6Step212EntryGvRow,120)] [s6Step212EntryGvFresh] [s6Step212EntryGvOut]
    (growRow 776 s6Step212EntryFvFresh) ((growRow 775 s6Step212EntryGvFresh ++ [])) s6Step212EntryFv_Incoming s6Step212EntryFv_checked h3 s6Step212EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step212EntryGBefore s6Step212EntryGAfter s6Step212EntryGvAfter
    s6Step212EntryGRow s6Step212EntryGOut 163 s6Step212EntryGFresh [(s6Step212EntryFvRow,120),(s6Step212EntryGvRow,120)] [s6Step212EntryFvFresh,s6Step212EntryGvFresh] [s6Step212EntryFvOut,s6Step212EntryGvOut]
    (growRow 777 s6Step212EntryGFresh) ((growRow 776 s6Step212EntryFvFresh ++ (growRow 775 s6Step212EntryGvFresh ++ []))) s6Step212EntryG_Incoming s6Step212EntryG_checked h2 s6Step212EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step212EntryFBefore s6Step212EntryFAfter s6Step212EntryGvAfter
    s6Step212EntryFRow s6Step212EntryFOut 163 s6Step212EntryFFresh [(s6Step212EntryGRow,163),(s6Step212EntryFvRow,120),(s6Step212EntryGvRow,120)] [s6Step212EntryGFresh,s6Step212EntryFvFresh,s6Step212EntryGvFresh] [s6Step212EntryGOut,s6Step212EntryFvOut,s6Step212EntryGvOut]
    (growRow 795 s6Step212EntryFFresh) ((growRow 777 s6Step212EntryGFresh ++ (growRow 776 s6Step212EntryFvFresh ++ (growRow 775 s6Step212EntryGvFresh ++ [])))) s6Step212EntryF_Incoming s6Step212EntryF_checked h1 s6Step212EntryF_Outgoing
  exact h0

private theorem s6Step212EntryBank_checked : compileHmrBankResizeLog .entry s6Step212EntryFBefore ⟨s6Step212EntryFRow,s6Step212EntryGRow,s6Step212EntryFvRow,s6Step212EntryGvRow⟩ ⟨163,163,120,120⟩ [s6Step212EntryFFresh,s6Step212EntryGFresh,s6Step212EntryFvFresh,s6Step212EntryGvFresh]=
    some (s6Step212EntryGvAfter,⟨s6Step212EntryFOut,s6Step212EntryGOut,s6Step212EntryFvOut,s6Step212EntryGvOut⟩,(growRow 795 s6Step212EntryFFresh ++ (growRow 777 s6Step212EntryGFresh ++ (growRow 776 s6Step212EntryFvFresh ++ (growRow 775 s6Step212EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step212EntryBank_rows]
  rfl

private def s6Step212ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<162) ∨ (163≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step212ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<162) ∨ (163≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step212ExitFBefore : Arena := s6Step212ExitGAfter

private def s6Step212ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 779],795⟩

private def s6Step212ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813],776⟩

private def s6Step212ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 881],777⟩

private def s6Step212ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 873],775⟩

private theorem s6Step212ExitBank_incomingDistinct : ([s6Step212ExitGRow,s6Step212ExitFRow,s6Step212ExitFvRow,s6Step212ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step212ExitF_Incoming : rowsOwned s6Step212ExitFBefore [s6Step212ExitFRow,s6Step212ExitFvRow,s6Step212ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step212ExitGRow,s6Step212ExitFRow,s6Step212ExitFvRow,s6Step212ExitGvRow] 1 s6Step212ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step212ExitFBefore (fun q => (0≤q ∧ q<162) ∨ (163≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step212ExitBank_outgoingOwned : rowsOwned s6Step212ExitGvAfter [s6Step212ExitGOut,s6Step212ExitFOut,s6Step212ExitFvOut,s6Step212ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step212ExitGvAfter (fun q => (0≤q ∧ q<162) ∨ (163≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step212ExitF_Outgoing : rowsOwned s6Step212ExitGvAfter [s6Step212ExitFOut,s6Step212ExitFvOut,s6Step212ExitGvOut] :=
  hmrRows_owned_drop s6Step212ExitGvAfter [s6Step212ExitGOut,s6Step212ExitFOut,s6Step212ExitFvOut,s6Step212ExitGvOut] 1 s6Step212ExitBank_outgoingOwned

private theorem s6Step212ExitF_distinct : (s6Step212ExitFRow.sign::s6Step212ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step212ExitF_owned : (s6Step212ExitFRow.sign::s6Step212ExitFRow.payload).toFinset⊆s6Step212ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step212ExitFBefore (fun q => (0≤q ∧ q<162) ∨ (163≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step212ExitF_retired : s6Step212ExitFBefore.retireSet s6Step212ExitFExtra.toFinset=s6Step212ExitFAfter := by
  unfold Arena.retireSet s6Step212ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step212ExitFBefore,s6Step212ExitGAfter,s6Step212ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step212ExitF_checked : planRowResizeLog s6Step212ExitFBefore s6Step212ExitFRow 163 []=
    some (s6Step212ExitFAfter,s6Step212ExitFOut,shrinkRow 795 s6Step212ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step212ExitFBefore s6Step212ExitFRow 163 s6Step212ExitF_distinct s6Step212ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step212ExitFRow.payload.take 163) s6Step212ExitFRow.sign=s6Step212ExitFOut := by decide +kernel
  have hi : s6Step212ExitFRow.payload.drop 163=s6Step212ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step212ExitF_retired] at result
  exact result

private def s6Step212ExitFvAfter : Arena := s6Step212ExitFAfter

private def s6Step212ExitFvBefore : Arena := s6Step212ExitFAfter

private theorem s6Step212ExitFv_Incoming : rowsOwned s6Step212ExitFvBefore [s6Step212ExitFvRow,s6Step212ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step212ExitGRow,s6Step212ExitFRow,s6Step212ExitFvRow,s6Step212ExitGvRow] 2 s6Step212ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step212ExitFvBefore (fun q => (0≤q ∧ q<162) ∨ (163≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step212ExitFv_Outgoing : rowsOwned s6Step212ExitGvAfter [s6Step212ExitFvOut,s6Step212ExitGvOut] :=
  hmrRows_owned_drop s6Step212ExitGvAfter [s6Step212ExitGOut,s6Step212ExitFOut,s6Step212ExitFvOut,s6Step212ExitGvOut] 2 s6Step212ExitBank_outgoingOwned

private theorem s6Step212ExitFv_distinct : (s6Step212ExitFvRow.sign::s6Step212ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step212ExitFv_owned : (s6Step212ExitFvRow.sign::s6Step212ExitFvRow.payload).toFinset⊆s6Step212ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step212ExitFvBefore (fun q => (0≤q ∧ q<162) ∨ (163≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step212ExitFv_reserved : s6Step212ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step212ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step212ExitFv_checked : planRowResizeLog s6Step212ExitFvBefore s6Step212ExitFvRow 121 []=
    some (s6Step212ExitFvAfter,s6Step212ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step212ExitFvBefore s6Step212ExitFvAfter s6Step212ExitFvRow 121 []
    s6Step212ExitFv_distinct s6Step212ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step212ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step212ExitFvRow.payload++[]) s6Step212ExitFvRow.sign=s6Step212ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step212ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step212ExitG_Incoming : rowsOwned s6Step212ExitGBefore [s6Step212ExitGRow,s6Step212ExitFRow,s6Step212ExitFvRow,s6Step212ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step212ExitGRow,s6Step212ExitFRow,s6Step212ExitFvRow,s6Step212ExitGvRow] 0 s6Step212ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step212ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step212ExitG_Outgoing : rowsOwned s6Step212ExitGvAfter [s6Step212ExitGOut,s6Step212ExitFOut,s6Step212ExitFvOut,s6Step212ExitGvOut] :=
  hmrRows_owned_drop s6Step212ExitGvAfter [s6Step212ExitGOut,s6Step212ExitFOut,s6Step212ExitFvOut,s6Step212ExitGvOut] 0 s6Step212ExitBank_outgoingOwned

private theorem s6Step212ExitG_distinct : (s6Step212ExitGRow.sign::s6Step212ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step212ExitG_owned : (s6Step212ExitGRow.sign::s6Step212ExitGRow.payload).toFinset⊆s6Step212ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step212ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step212ExitG_retired : s6Step212ExitGBefore.retireSet s6Step212ExitGExtra.toFinset=s6Step212ExitGAfter := by
  unfold Arena.retireSet s6Step212ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step212ExitGBefore,s6Step212ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step212ExitG_checked : planRowResizeLog s6Step212ExitGBefore s6Step212ExitGRow 162 []=
    some (s6Step212ExitGAfter,s6Step212ExitGOut,shrinkRow 777 s6Step212ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step212ExitGBefore s6Step212ExitGRow 162 s6Step212ExitG_distinct s6Step212ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step212ExitGRow.payload.take 162) s6Step212ExitGRow.sign=s6Step212ExitGOut := by decide +kernel
  have hi : s6Step212ExitGRow.payload.drop 162=s6Step212ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step212ExitG_retired] at result
  exact result

private def s6Step212ExitGvBefore : Arena := s6Step212ExitFAfter

private theorem s6Step212ExitGv_Incoming : rowsOwned s6Step212ExitGvBefore [s6Step212ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step212ExitGRow,s6Step212ExitFRow,s6Step212ExitFvRow,s6Step212ExitGvRow] 3 s6Step212ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step212ExitGvBefore (fun q => (0≤q ∧ q<162) ∨ (163≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step212ExitGv_Outgoing : rowsOwned s6Step212ExitGvAfter [s6Step212ExitGvOut] :=
  hmrRows_owned_drop s6Step212ExitGvAfter [s6Step212ExitGOut,s6Step212ExitFOut,s6Step212ExitFvOut,s6Step212ExitGvOut] 3 s6Step212ExitBank_outgoingOwned

private theorem s6Step212ExitGv_distinct : (s6Step212ExitGvRow.sign::s6Step212ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step212ExitGv_owned : (s6Step212ExitGvRow.sign::s6Step212ExitGvRow.payload).toFinset⊆s6Step212ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step212ExitGvBefore (fun q => (0≤q ∧ q<162) ∨ (163≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step212ExitGv_retired : s6Step212ExitGvBefore.retireSet s6Step212ExitGvExtra.toFinset=s6Step212ExitGvAfter := by
  unfold Arena.retireSet s6Step212ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step212ExitGvBefore,s6Step212ExitFAfter,s6Step212ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step212ExitGv_checked : planRowResizeLog s6Step212ExitGvBefore s6Step212ExitGvRow 120 []=
    some (s6Step212ExitGvAfter,s6Step212ExitGvOut,shrinkRow 775 s6Step212ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step212ExitGvBefore s6Step212ExitGvRow 120 s6Step212ExitGv_distinct s6Step212ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step212ExitGvRow.payload.take 120) s6Step212ExitGvRow.sign=s6Step212ExitGvOut := by decide +kernel
  have hi : s6Step212ExitGvRow.payload.drop 120=s6Step212ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step212ExitGv_retired] at result
  exact result

private theorem s6Step212ExitBank_rows : planWindowRowsLog s6Step212ExitGBefore [(s6Step212ExitGRow,162),(s6Step212ExitFRow,163),(s6Step212ExitFvRow,121),(s6Step212ExitGvRow,120)] [[],[],[],[]]=
    some (s6Step212ExitGvAfter,[s6Step212ExitGOut,s6Step212ExitFOut,s6Step212ExitFvOut,s6Step212ExitGvOut],(shrinkRow 777 s6Step212ExitGExtra ++ (shrinkRow 795 s6Step212ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step212ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step212ExitGvAfter [] []=some (s6Step212ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step212ExitGvBefore s6Step212ExitGvAfter s6Step212ExitGvAfter
    s6Step212ExitGvRow s6Step212ExitGvOut 120 [] [] [] []
    (shrinkRow 775 s6Step212ExitGvExtra) ([]) s6Step212ExitGv_Incoming s6Step212ExitGv_checked h4 s6Step212ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step212ExitFvBefore s6Step212ExitFvAfter s6Step212ExitGvAfter
    s6Step212ExitFvRow s6Step212ExitFvOut 121 [] [(s6Step212ExitGvRow,120)] [[]] [s6Step212ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step212ExitGvExtra ++ [])) s6Step212ExitFv_Incoming s6Step212ExitFv_checked h3 s6Step212ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step212ExitFBefore s6Step212ExitFAfter s6Step212ExitGvAfter
    s6Step212ExitFRow s6Step212ExitFOut 163 [] [(s6Step212ExitFvRow,121),(s6Step212ExitGvRow,120)] [[],[]] [s6Step212ExitFvOut,s6Step212ExitGvOut]
    (shrinkRow 795 s6Step212ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step212ExitGvExtra ++ []))) s6Step212ExitF_Incoming s6Step212ExitF_checked h2 s6Step212ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step212ExitGBefore s6Step212ExitGAfter s6Step212ExitGvAfter
    s6Step212ExitGRow s6Step212ExitGOut 162 [] [(s6Step212ExitFRow,163),(s6Step212ExitFvRow,121),(s6Step212ExitGvRow,120)] [[],[],[]] [s6Step212ExitFOut,s6Step212ExitFvOut,s6Step212ExitGvOut]
    (shrinkRow 777 s6Step212ExitGExtra) ((shrinkRow 795 s6Step212ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step212ExitGvExtra ++ [])))) s6Step212ExitG_Incoming s6Step212ExitG_checked h1 s6Step212ExitG_Outgoing
  exact h0

private theorem s6Step212ExitBank_checked : compileHmrBankResizeLog .exit s6Step212ExitGBefore ⟨s6Step212ExitFRow,s6Step212ExitGRow,s6Step212ExitFvRow,s6Step212ExitGvRow⟩ ⟨163,162,121,120⟩ [[],[],[],[]]=
    some (s6Step212ExitGvAfter,⟨s6Step212ExitFOut,s6Step212ExitGOut,s6Step212ExitFvOut,s6Step212ExitGvOut⟩,(shrinkRow 777 s6Step212ExitGExtra ++ (shrinkRow 795 s6Step212ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step212ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step212ExitBank_rows]
  rfl

private theorem s6Step212Add0_apart : Disjoint s6Step212Add0Arena.live s6Step212Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step212Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step212Add0_card : s6Step212Add0Arena.live.card=887 := by
  decide +kernel

private theorem s6Step212Add0_borrowed : s6Step212Add0Arena.checkBorrow (hmrHybridCount s6Step212Add0Arena s6Step212Add0B.length) s6Step212Add0Work=some s6Step212Add0During := by
  have len : s6Step212Add0Work.length=hmrHybridCount s6Step212Add0Arena s6Step212Add0B.length := by
    rw [hmrHybridCount,s6Step212Add0_card]
    decide +kernel
  have nd : s6Step212Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step212Add0Arena s6Step212Add0During s6Step212Add0Work.toFinset s6Step212Add0_bounded s6Step212Add0_apart rfl

private theorem s6Step212Add0_distinct : (855::858::802::(s6Step212Add0A++s6Step212Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step212Add0_owned : (855::858::802::(s6Step212Add0A++s6Step212Add0B)).toFinset⊆s6Step212Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step212Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step212Add0_checked : compileHmrHybridCinLog s6Step212Add0Arena 858 855 802 s6Step212Add0A s6Step212Add0B s6Step212Add0Work=some s6Step212Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step212Add0Arena s6Step212Add0During 858 855 802 s6Step212Add0A s6Step212Add0B s6Step212Add0Work
    (by decide +kernel) (by decide +kernel) s6Step212Add0_distinct
    (fun q hq => s6Step212Add0_owned (List.mem_toFinset.mpr hq)) s6Step212Add0_borrowed

private theorem s6Step212Add1_apart : Disjoint s6Step212Add1Arena.live s6Step212Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step212Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step212Add1_card : s6Step212Add1Arena.live.card=887 := by
  decide +kernel

private theorem s6Step212Add1_borrowed : s6Step212Add1Arena.checkBorrow (hmrHybridCount s6Step212Add1Arena s6Step212Add1B.length) s6Step212Add1Work=some s6Step212Add1During := by
  have len : s6Step212Add1Work.length=hmrHybridCount s6Step212Add1Arena s6Step212Add1B.length := by
    rw [hmrHybridCount,s6Step212Add1_card]
    decide +kernel
  have nd : s6Step212Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step212Add1Arena s6Step212Add1During s6Step212Add1Work.toFinset s6Step212Add1_bounded s6Step212Add1_apart rfl

private theorem s6Step212Add1_distinct : (855::858::802::(s6Step212Add1A++s6Step212Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step212Add1_owned : (855::858::802::(s6Step212Add1A++s6Step212Add1B)).toFinset⊆s6Step212Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step212Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step212Add1_checked : compileHmrHybridCinLog s6Step212Add1Arena 858 855 802 s6Step212Add1A s6Step212Add1B s6Step212Add1Work=some s6Step212Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step212Add1Arena s6Step212Add1During 858 855 802 s6Step212Add1A s6Step212Add1B s6Step212Add1Work
    (by decide +kernel) (by decide +kernel) s6Step212Add1_distinct
    (fun q hq => s6Step212Add1_owned (List.mem_toFinset.mpr hq)) s6Step212Add1_borrowed

private theorem s6Step212F4_apart : Disjoint (s6Step212Add0A++s6Step212Add0B).toFinset (s6Step212Add1A++s6Step212Add1B).toFinset := by
  have nd : ((s6Step212Add0A++s6Step212Add0B)++(s6Step212Add1A++s6Step212Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step212F4_carry : s6Step212F4FlagArena.checkBorrow 1 [802]=some s6Step212Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step212F4FlagArena,s6Step212HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step212F4FlagArena,s6Step212HeadFvAfter,s6Step212Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step212F4_distinct : (838::858::855::802::((s6Step212Add0A++s6Step212Add1A)++(s6Step212Add0B++s6Step212Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step212F4_flag : s6Step212HeadFvAfter.checkBorrow 1 [855]=some s6Step212F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step212HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step212F4_owned : (838::858::((s6Step212Add0A++s6Step212Add1A)++(s6Step212Add0B++s6Step212Add1B))).toFinset⊆s6Step212HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step212HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step212F4_checked : compileHmrHybridF4Log s6Step212HeadFvAfter 838 858 s6Step212Add0A s6Step212Add0B s6Step212Add1A s6Step212Add1B [855] [802] s6Step212Add0Work s6Step212Add1Work=some s6Step212F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step212HeadFvAfter s6Step212F4FlagArena s6Step212Add0Arena s6Step212Add0During s6Step212Add1During 838 858
    s6Step212Add0A s6Step212Add0B s6Step212Add1A s6Step212Add1B [855] [802] s6Step212Add0Work s6Step212Add1Work
    (fun q hq => s6Step212F4_owned (List.mem_toFinset.mpr hq)) s6Step212F4_flag s6Step212F4_carry
    s6Step212F4_distinct s6Step212F4_apart s6Step212Add0_checked s6Step212Add1_checked

private theorem s6Step212Front_branch : s6Step212FrontSigmaArena.checkBorrow 1 [858]=some s6Step212HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step212FrontSigmaArena,s6Step212EntryGvAfter,s6Step212EntryFBefore,arenaWires]
  · change s6Step212HeadGBefore.live=(s6Step212EntryGvAfter.live∪{838})∪{858}
    apply hmrArena_union_pair_of_filter_check s6Step212EntryGvAfter s6Step212HeadGBefore (fun q => ([(0,779),(780,782),(783,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(814,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) 838 858 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step212Front_entry : HmrFrontEntryValid s6Step212EntryFBefore s6Step212FrontBank 163 120 ⟨163,162,121,120⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step212FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step212EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step212EntryFBefore (fun q => ([(0,779),(780,782),(783,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(814,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step212FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step212Front_sigma : s6Step212EntryGvAfter.checkBorrow 1 [838]=some s6Step212FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step212EntryGvAfter,s6Step212EntryFBefore,arenaWires]
  · rfl

private def s6Step212HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step212HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step212HeadFBefore : Arena := s6Step212HeadGAfter

private def s6Step212HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418],795⟩

private def s6Step212HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874],776⟩

private def s6Step212HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162],777⟩

private def s6Step212HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867],775⟩

private theorem s6Step212HeadBank_incomingDistinct : ([s6Step212HeadGRow,s6Step212HeadFRow,s6Step212HeadGvRow,s6Step212HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step212HeadF_Incoming : rowsOwned s6Step212HeadFBefore [s6Step212HeadFRow,s6Step212HeadGvRow,s6Step212HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step212HeadGRow,s6Step212HeadFRow,s6Step212HeadGvRow,s6Step212HeadFvRow] 1 s6Step212HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step212HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step212HeadBank_outgoingOwned : rowsOwned s6Step212HeadFvAfter [s6Step212HeadGOut,s6Step212HeadFOut,s6Step212HeadGvOut,s6Step212HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step212HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step212HeadF_Outgoing : rowsOwned s6Step212HeadFvAfter [s6Step212HeadFOut,s6Step212HeadGvOut,s6Step212HeadFvOut] :=
  hmrRows_owned_drop s6Step212HeadFvAfter [s6Step212HeadGOut,s6Step212HeadFOut,s6Step212HeadGvOut,s6Step212HeadFvOut] 1 s6Step212HeadBank_outgoingOwned

private theorem s6Step212HeadF_distinct : (s6Step212HeadFRow.sign::s6Step212HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step212HeadF_owned : (s6Step212HeadFRow.sign::s6Step212HeadFRow.payload).toFinset⊆s6Step212HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step212HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step212HeadF_reserved : s6Step212HeadFBefore.reserve s6Step212HeadFFresh.toFinset=some s6Step212HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step212HeadFFresh,arenaWires]
  · norm_num [s6Step212HeadFBefore,s6Step212HeadGAfter,s6Step212HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step212HeadFAfter,s6Step212HeadFBefore,s6Step212HeadGAfter,s6Step212HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step212HeadF_checked : planRowResizeLog s6Step212HeadFBefore s6Step212HeadFRow 164 s6Step212HeadFFresh=
    some (s6Step212HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 779],795⟩,growRow 795 s6Step212HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step212HeadFBefore s6Step212HeadFAfter s6Step212HeadFRow 164 s6Step212HeadFFresh
    s6Step212HeadF_distinct s6Step212HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step212HeadF_reserved
  have rowEq : WindowRow.mk (s6Step212HeadFRow.payload++s6Step212HeadFFresh) s6Step212HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 779],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step212HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step212HeadFvBefore : Arena := s6Step212HeadGvAfter

private theorem s6Step212HeadFv_Incoming : rowsOwned s6Step212HeadFvBefore [s6Step212HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step212HeadGRow,s6Step212HeadFRow,s6Step212HeadGvRow,s6Step212HeadFvRow] 3 s6Step212HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step212HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step212HeadFv_Outgoing : rowsOwned s6Step212HeadFvAfter [s6Step212HeadFvOut] :=
  hmrRows_owned_drop s6Step212HeadFvAfter [s6Step212HeadGOut,s6Step212HeadFOut,s6Step212HeadGvOut,s6Step212HeadFvOut] 3 s6Step212HeadBank_outgoingOwned

private theorem s6Step212HeadFv_distinct : (s6Step212HeadFvRow.sign::s6Step212HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step212HeadFv_owned : (s6Step212HeadFvRow.sign::s6Step212HeadFvRow.payload).toFinset⊆s6Step212HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step212HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step212HeadFv_reserved : s6Step212HeadFvBefore.reserve s6Step212HeadFvFresh.toFinset=some s6Step212HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step212HeadFvFresh,arenaWires]
  · norm_num [s6Step212HeadFvBefore,s6Step212HeadGvAfter,s6Step212HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step212HeadFvAfter,s6Step212HeadFvBefore,s6Step212HeadGvAfter,s6Step212HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step212HeadFv_checked : planRowResizeLog s6Step212HeadFvBefore s6Step212HeadFvRow 121 s6Step212HeadFvFresh=
    some (s6Step212HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813],776⟩,growRow 776 s6Step212HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step212HeadFvBefore s6Step212HeadFvAfter s6Step212HeadFvRow 121 s6Step212HeadFvFresh
    s6Step212HeadFv_distinct s6Step212HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step212HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step212HeadFvRow.payload++s6Step212HeadFvFresh) s6Step212HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step212HeadG_Incoming : rowsOwned s6Step212HeadGBefore [s6Step212HeadGRow,s6Step212HeadFRow,s6Step212HeadGvRow,s6Step212HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step212HeadGRow,s6Step212HeadFRow,s6Step212HeadGvRow,s6Step212HeadFvRow] 0 s6Step212HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step212HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step212HeadG_Outgoing : rowsOwned s6Step212HeadFvAfter [s6Step212HeadGOut,s6Step212HeadFOut,s6Step212HeadGvOut,s6Step212HeadFvOut] :=
  hmrRows_owned_drop s6Step212HeadFvAfter [s6Step212HeadGOut,s6Step212HeadFOut,s6Step212HeadGvOut,s6Step212HeadFvOut] 0 s6Step212HeadBank_outgoingOwned

private theorem s6Step212HeadG_distinct : (s6Step212HeadGRow.sign::s6Step212HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step212HeadG_owned : (s6Step212HeadGRow.sign::s6Step212HeadGRow.payload).toFinset⊆s6Step212HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step212HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step212HeadG_reserved : s6Step212HeadGBefore.reserve s6Step212HeadGFresh.toFinset=some s6Step212HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step212HeadGFresh,arenaWires]
  · norm_num [s6Step212HeadGBefore,s6Step212HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step212HeadGAfter,s6Step212HeadGBefore,s6Step212HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step212HeadG_checked : planRowResizeLog s6Step212HeadGBefore s6Step212HeadGRow 164 s6Step212HeadGFresh=
    some (s6Step212HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 881],777⟩,growRow 777 s6Step212HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step212HeadGBefore s6Step212HeadGAfter s6Step212HeadGRow 164 s6Step212HeadGFresh
    s6Step212HeadG_distinct s6Step212HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step212HeadG_reserved
  have rowEq : WindowRow.mk (s6Step212HeadGRow.payload++s6Step212HeadGFresh) s6Step212HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 881],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step212HeadGvBefore : Arena := s6Step212HeadFAfter

private theorem s6Step212HeadGv_Incoming : rowsOwned s6Step212HeadGvBefore [s6Step212HeadGvRow,s6Step212HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step212HeadGRow,s6Step212HeadFRow,s6Step212HeadGvRow,s6Step212HeadFvRow] 2 s6Step212HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step212HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step212HeadGv_Outgoing : rowsOwned s6Step212HeadFvAfter [s6Step212HeadGvOut,s6Step212HeadFvOut] :=
  hmrRows_owned_drop s6Step212HeadFvAfter [s6Step212HeadGOut,s6Step212HeadFOut,s6Step212HeadGvOut,s6Step212HeadFvOut] 2 s6Step212HeadBank_outgoingOwned

private theorem s6Step212HeadGv_distinct : (s6Step212HeadGvRow.sign::s6Step212HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step212HeadGv_owned : (s6Step212HeadGvRow.sign::s6Step212HeadGvRow.payload).toFinset⊆s6Step212HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step212HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step212HeadGv_reserved : s6Step212HeadGvBefore.reserve s6Step212HeadGvFresh.toFinset=some s6Step212HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step212HeadGvFresh,arenaWires]
  · norm_num [s6Step212HeadGvBefore,s6Step212HeadFAfter,s6Step212HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step212HeadGvAfter,s6Step212HeadGvBefore,s6Step212HeadFAfter,s6Step212HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step212HeadGv_checked : planRowResizeLog s6Step212HeadGvBefore s6Step212HeadGvRow 121 s6Step212HeadGvFresh=
    some (s6Step212HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 873],775⟩,growRow 775 s6Step212HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step212HeadGvBefore s6Step212HeadGvAfter s6Step212HeadGvRow 121 s6Step212HeadGvFresh
    s6Step212HeadGv_distinct s6Step212HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step212HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step212HeadGvRow.payload++s6Step212HeadGvFresh) s6Step212HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 873],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step212HeadBank_rows : planWindowRowsLog s6Step212HeadGBefore [(s6Step212HeadGRow,164),(s6Step212HeadFRow,164),(s6Step212HeadGvRow,121),(s6Step212HeadFvRow,121)] [s6Step212HeadGFresh,s6Step212HeadFFresh,s6Step212HeadGvFresh,s6Step212HeadFvFresh]=
    some (s6Step212HeadFvAfter,[s6Step212HeadGOut,s6Step212HeadFOut,s6Step212HeadGvOut,s6Step212HeadFvOut],(growRow 777 s6Step212HeadGFresh ++ (growRow 795 s6Step212HeadFFresh ++ (growRow 775 s6Step212HeadGvFresh ++ (growRow 776 s6Step212HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step212HeadFvAfter [] []=some (s6Step212HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step212HeadFvBefore s6Step212HeadFvAfter s6Step212HeadFvAfter
    s6Step212HeadFvRow s6Step212HeadFvOut 121 s6Step212HeadFvFresh [] [] []
    (growRow 776 s6Step212HeadFvFresh) ([]) s6Step212HeadFv_Incoming s6Step212HeadFv_checked h4 s6Step212HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step212HeadGvBefore s6Step212HeadGvAfter s6Step212HeadFvAfter
    s6Step212HeadGvRow s6Step212HeadGvOut 121 s6Step212HeadGvFresh [(s6Step212HeadFvRow,121)] [s6Step212HeadFvFresh] [s6Step212HeadFvOut]
    (growRow 775 s6Step212HeadGvFresh) ((growRow 776 s6Step212HeadFvFresh ++ [])) s6Step212HeadGv_Incoming s6Step212HeadGv_checked h3 s6Step212HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step212HeadFBefore s6Step212HeadFAfter s6Step212HeadFvAfter
    s6Step212HeadFRow s6Step212HeadFOut 164 s6Step212HeadFFresh [(s6Step212HeadGvRow,121),(s6Step212HeadFvRow,121)] [s6Step212HeadGvFresh,s6Step212HeadFvFresh] [s6Step212HeadGvOut,s6Step212HeadFvOut]
    (growRow 795 s6Step212HeadFFresh) ((growRow 775 s6Step212HeadGvFresh ++ (growRow 776 s6Step212HeadFvFresh ++ []))) s6Step212HeadF_Incoming s6Step212HeadF_checked h2 s6Step212HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step212HeadGBefore s6Step212HeadGAfter s6Step212HeadFvAfter
    s6Step212HeadGRow s6Step212HeadGOut 164 s6Step212HeadGFresh [(s6Step212HeadFRow,164),(s6Step212HeadGvRow,121),(s6Step212HeadFvRow,121)] [s6Step212HeadFFresh,s6Step212HeadGvFresh,s6Step212HeadFvFresh] [s6Step212HeadFOut,s6Step212HeadGvOut,s6Step212HeadFvOut]
    (growRow 777 s6Step212HeadGFresh) ((growRow 795 s6Step212HeadFFresh ++ (growRow 775 s6Step212HeadGvFresh ++ (growRow 776 s6Step212HeadFvFresh ++ [])))) s6Step212HeadG_Incoming s6Step212HeadG_checked h1 s6Step212HeadG_Outgoing
  exact h0

private theorem s6Step212HeadBank_checked : compileHmrBankResizeLog .headroom s6Step212HeadGBefore ⟨s6Step212HeadFRow,s6Step212HeadGRow,s6Step212HeadFvRow,s6Step212HeadGvRow⟩ ⟨164,164,121,121⟩ [s6Step212HeadGFresh,s6Step212HeadFFresh,s6Step212HeadGvFresh,s6Step212HeadFvFresh]=
    some (s6Step212HeadFvAfter,⟨s6Step212HeadFOut,s6Step212HeadGOut,s6Step212HeadFvOut,s6Step212HeadGvOut⟩,(growRow 777 s6Step212HeadGFresh ++ (growRow 795 s6Step212HeadFFresh ++ (growRow 775 s6Step212HeadGvFresh ++ (growRow 776 s6Step212HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step212HeadBank_rows]
  rfl

private theorem s6Step212Front_checked : compileHmrSourceFrontLog s6Step212EntryFBefore s6Step212FrontBank 163 120 ⟨163,162,121,120⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step212FrontLog=some s6Step212FrontPlan := by
  have pairEq : s6Step212FrontPair=⟨s6Step212HeadFRow,s6Step212HeadGRow,s6Step212HeadFvRow,s6Step212HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step212FrontHead=⟨s6Step212ExitFRow,s6Step212ExitGRow,s6Step212ExitFvRow,s6Step212ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step212Add0A=s6Step212FrontHead.f.wires := by decide +kernel
  have gEq : s6Step212Add0B=s6Step212FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step212Add1A=s6Step212FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step212Add1B=s6Step212FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step212EntryFBefore s6Step212FrontBank 163 120 ⟨163,162,121,120⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step212FrontLog s6Step212FrontPlan
  · exact s6Step212Front_entry
  · exact s6Step212EntryBank_checked
  · exact s6Step212Front_sigma
  · rfl
  · exact s6Step212Front_branch
  · rfl
  · simpa only [s6Step212FrontPlan,pairEq] using s6Step212HeadBank_checked
  · simpa only [s6Step212FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step212F4_checked
  · exact s6Step212Counter_checked
  · rfl
  · simpa only [s6Step212FrontPlan,headEq] using s6Step212ExitBank_checked

private theorem s6Step212Complete_explicit_checked : compileHmrEarlyStepLog s6Step212EntryFBefore s6Step212FrontBank 163 120 ⟨163,162,121,120⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step212CompleteLog=some s6Step212CompletePlan := by
  let Q := s6Step212EarlyControlPlan
  have hq := s6Step212EarlyControl_plan_checked
  have fv1 : s6Step212CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step212CompleteOut.fv.payload[2]?.getD s6Step212CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step212CompleteOut.fv.payload[3]?.getD s6Step212CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step212CompleteOut.fv.payload[4]?.getD s6Step212CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step212EntryFBefore s6Step212EarlyControlArena s6Step212FrontBank 163 120 ⟨163,162,121,120⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step212CompleteLog s6Step212FrontPlan Q
    s6Step212Front_checked s6Step212Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step212Complete_owned s6Step212Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step212EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 838 s6Step212CompleteOut.fv.second (s6Step212CompleteOut.fv.payload[2]?.getD s6Step212CompleteOut.fv.sign) (s6Step212CompleteOut.fv.payload[3]?.getD s6Step212CompleteOut.fv.sign) (s6Step212CompleteOut.fv.payload[4]?.getD s6Step212CompleteOut.fv.sign) 858 47 s6Step212EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep212Arena : Arena := s6Step212EntryFBefore
def s6PrivateStep212Bank : WindowBank := s6Step212FrontBank
def s6PrivateStep212Spec : HmrSourceWalkStepLog := ⟨163,120,⟨163,162,121,120⟩,47,.early s6Step212CompleteLog⟩
def s6PrivateStep212Plan : HmrSourceStepPlan := .early s6Step212CompletePlan
theorem s6PrivateStep212_source : s6PrivateStep212Spec=s6ObservedLogs208[4] := rfl
theorem s6PrivateStep212_checked : compileHmrSourceStepLog s6PrivateStep212Arena s6PrivateStep212Bank
    s6PrivateStep212Spec.fgWidth s6PrivateStep212Spec.vWidth s6PrivateStep212Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]
    6 498 212 s6PrivateStep212Spec.need none s6PrivateStep212Spec.log=some s6PrivateStep212Plan := by
  change compileHmrSourceStepLog s6Step212EntryFBefore s6Step212FrontBank 163 120 ⟨163,162,121,120⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 6 498 212 47 none (.early s6Step212CompleteLog)=some (.early s6Step212CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 212<498)]
  rw [s6Step212Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
