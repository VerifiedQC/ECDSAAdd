import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep211
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

private def s6Step213CompleteMoves : List (Wire × Wire) := []

private def s6Step213EarlyControlLog : HmrEarlyControlLog := ⟨[855, 802, 881, 858, 779],[882],[807],[822, 825, 869, 786, 810, 809],[]⟩

private def s6Step213FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [858], [], [838]],[[779], [881], [855], [802]],[[], [], [], []]⟩,[784],[873],[882],[807],[822, 825, 869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[822, 825, 869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[882, 807, 822, 825]⟩

private def s6Step213CompleteLog : HmrEarlyStepLog := ⟨s6Step213FrontLog,s6Step213CompleteMoves,s6Step213EarlyControlLog⟩

private def s6Step213ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418],795⟩

private def s6Step213ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813],776⟩

private def s6Step213ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161],777⟩

private def s6Step213ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838],775⟩

private def s6Step213FrontOut : WindowBank := ⟨s6Step213ExitFOut,s6Step213ExitGOut,s6Step213ExitFvOut,s6Step213ExitGvOut⟩

private def s6Step213CompleteOut : WindowBank := s6Step213FrontOut.repacked s6Step213CompleteMoves

private def s6Step213EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step213EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step213EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step213EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step213EarlyControlPositiveArena,[882],s6Step213EarlyControlEqualityArena,[807],⟨⟨784,false⟩,[⟨⟨882,false⟩,807⟩]⟩⟩

private def s6Step213EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step213EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step213EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step213EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,784),(785,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step213EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step213EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step213EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,855⟩,⟨⟨772,false⟩,802⟩,⟨⟨771,false⟩,881⟩,⟨⟨770,false⟩,858⟩,⟨⟨769,false⟩,779⟩]⟩

private def s6Step213EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step213EarlyControlZeroArena,s6Step213EarlyControlZeroPlan,s6Step213EarlyControlClassPlan,s6Step213EarlyControlFlagArena,s6Step213EarlyControlFittedArena,s6Step213EarlyControlHistoryArena,s6Step213EarlyControlSigmaArena,s6Step213EarlyControlOutputArena,s6Step213EarlyControlLog⟩

private def s6Step213CounterWork : List Wire := [882, 807, 822, 825]

private theorem s6Step213Counter_bounded : s6Step213CounterWork.toFinset⊆arenaWires := by norm_num [s6Step213CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step213HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step213CounterDuring : Arena := ⟨s6Step213HeadFvAfter.live∪s6Step213CounterWork.toFinset,Finset.union_subset s6Step213HeadFvAfter.bounded s6Step213Counter_bounded⟩

private def s6Step213EntryFFresh : List Wire := []

private def s6Step213EntryFvFresh : List Wire := []

private def s6Step213EntryGFresh : List Wire := [858]

private def s6Step213EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step213EntryGvFresh : List Wire := [838]

private def s6Step213ExitFExtra : List Wire := [881]

private def s6Step213ExitFvExtra : List Wire := [802]

private def s6Step213ExitGExtra : List Wire := [858, 779]

private def s6Step213ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step213ExitGvExtra : List Wire := [855]

private def s6Step213Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step213Add0Work : List Wire := [822, 825, 869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step213Add0_bounded : s6Step213Add0Work.toFinset⊆arenaWires := by
  have h : s6Step213Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step213Add0During : Arena := ⟨s6Step213Add0Arena.live∪s6Step213Add0Work.toFinset,Finset.union_subset s6Step213Add0Arena.bounded s6Step213Add0_bounded⟩

private def s6Step213Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step213Add1Work : List Wire := [822, 825, 869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step213Add1_bounded : s6Step213Add1Work.toFinset⊆arenaWires := by
  have h : s6Step213Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step213Add1During : Arena := ⟨s6Step213Add1Arena.live∪s6Step213Add1Work.toFinset,Finset.union_subset s6Step213Add1Arena.bounded s6Step213Add1_bounded⟩

private def s6Step213F4FlagArena : Arena := ⟨s6Step213HeadFvAfter.live∪{882},Finset.union_subset s6Step213HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step213F4Plan : HmrHybridF4Plan := ⟨s6Step213F4FlagArena,[882],s6Step213Add0Arena,[807],s6Step213Add0During,s6Step213Add0Work,s6Step213Add1During,s6Step213Add1Work⟩

private def s6Step213HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 881],795⟩

private def s6Step213HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 802],776⟩

private def s6Step213HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 858, 779],777⟩

private def s6Step213HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 855],775⟩

private def s6Step213FrontHead : WindowBank := ⟨s6Step213HeadFOut,s6Step213HeadGOut,s6Step213HeadFvOut,s6Step213HeadGvOut⟩

private def s6Step213EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418],795⟩

private def s6Step213EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813],776⟩

private def s6Step213EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 858],777⟩

private def s6Step213EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838],775⟩

private def s6Step213FrontPair : WindowBank := ⟨s6Step213EntryFOut,s6Step213EntryGOut,s6Step213EntryFvOut,s6Step213EntryGvOut⟩

private def s6Step213FrontSigmaArena : Arena := ⟨s6Step213EntryGvAfter.live∪{784},Finset.union_subset s6Step213EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step213HeadFFresh : List Wire := [881]

private def s6Step213HeadFvFresh : List Wire := [802]

private def s6Step213HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step213HeadGFresh : List Wire := [779]

private def s6Step213HeadGvFresh : List Wire := [855]

private def s6Step213FrontPlan : HmrSourceFront := ⟨s6Step213EntryGvAfter,s6Step213FrontPair,(growRow 795 s6Step213EntryFFresh ++ (growRow 777 s6Step213EntryGFresh ++ (growRow 776 s6Step213EntryFvFresh ++ (growRow 775 s6Step213EntryGvFresh ++ [])))),s6Step213FrontSigmaArena,[784],s6Step213HeadGBefore,[873],
  s6Step213HeadFvAfter,s6Step213FrontHead,(growRow 777 s6Step213HeadGFresh ++ (growRow 795 s6Step213HeadFFresh ++ (growRow 775 s6Step213HeadGvFresh ++ (growRow 776 s6Step213HeadFvFresh ++ [])))),s6Step213F4Plan,s6Step213CounterDuring,s6Step213CounterWork,s6Step213ExitGvAfter,s6Step213FrontOut,(shrinkRow 777 s6Step213ExitGExtra ++ (shrinkRow 795 s6Step213ExitFExtra ++ (shrinkRow 776 s6Step213ExitFvExtra ++ (shrinkRow 775 s6Step213ExitGvExtra ++ []))))⟩

private def s6Step213CompletePlan : HmrEarlyStepPlan := ⟨s6Step213FrontPlan,s6Step213EarlyControlArena,s6Step213EarlyControlPlan,s6Step213CompleteMoves⟩

private theorem s6Step213Complete_apart : List.Disjoint (s6Step213CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [784, 873, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] := by
  have nd : ((s6Step213CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[784, 873, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step213Complete_owned : (s6Step213CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step213EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step213EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step213Complete_repack : s6Step213ExitGvAfter.checkRepack s6Step213CompleteMoves=some s6Step213EarlyControlArena := by rfl

private theorem s6Step213EarlyControl_branchOwned : ([873] : List Wire).toFinset⊆s6Step213EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step213EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step213EarlyControl_branch : compileHmrBranchRetirement s6Step213EarlyControlSigmaArena 873=some s6Step213EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step213EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step213EarlyControlSigmaArena s6Step213EarlyControlOutputArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,779),(780,782),(783,784),(785,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [873] rfl rfl
    decide +kernel

private theorem s6Step213EarlyControl_classEqualityBorrow : s6Step213EarlyControlPositiveArena.checkBorrow (([784, 882] : List Wire).length-1) s6Step213EarlyControlLog.classWork=some s6Step213EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step213EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step213EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step213EarlyControlEqualityArena,s6Step213EarlyControlPositiveArena,s6Step213EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step213EarlyControl_classEqualityOwned : ([784, 882] : List Wire).toFinset⊆s6Step213EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step213EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step213EarlyControl_classEquality : compileHmrEqualityLog s6Step213EarlyControlPositiveArena [784, 882] 0 s6Step213EarlyControlLog.classWork=some (s6Step213EarlyControlEqualityArena,s6Step213EarlyControlLog.classWork,s6Step213EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step213EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step213EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step213EarlyControl_classOwned : ([769, 779, 784] : List Wire).toFinset⊆s6Step213EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step213EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step213EarlyControl_positiveBorrow : s6Step213EarlyControlZeroArena.checkBorrow (1) s6Step213EarlyControlLog.positiveWork=some s6Step213EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step213EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step213EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step213EarlyControlPositiveArena,s6Step213EarlyControlZeroArena,s6Step213EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step213EarlyControl_class : compileHmrSourceClassLog s6Step213EarlyControlZeroArena false 769 s6Step213EarlyControlZeroPlan.top 0 784 s6Step213EarlyControlLog.positiveWork s6Step213EarlyControlLog.classWork=some s6Step213EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step213EarlyControlClassPlan s6Step213EarlyControlZeroArena false 769 s6Step213EarlyControlZeroPlan.top 0 784
  constructor
  · decide +kernel
  · exact s6Step213EarlyControl_classOwned
  · exact s6Step213EarlyControl_positiveBorrow
  · exact s6Step213EarlyControl_classEquality

private theorem s6Step213EarlyControl_entryRecordOwned : ([873, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step213EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step213EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step213EarlyControl_entrySigmaOwned : ([784, 254] : List Wire).toFinset⊆s6Step213EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step213EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step213EarlyControl_fitBorrow : s6Step213EarlyControlFlagArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step213EarlyControlLog.recordFresh=some s6Step213EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step213EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step213EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step213EarlyControlFittedArena,s6Step213EarlyControlFlagArena,s6Step213EarlyControlLog,arenaWires]

private theorem s6Step213EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step213EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step213EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step213EarlyControl_fit : compileHmrRecordGrowLog s6Step213EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step213EarlyControlLog.recordFresh=some s6Step213EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step213EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step213EarlyControl_fitBorrow

private theorem s6Step213EarlyControl_flagsBorrow : s6Step213EarlyControlEqualityArena.checkBorrow (6) s6Step213EarlyControlLog.flagWork=some s6Step213EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step213EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step213EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step213EarlyControlFlagArena,s6Step213EarlyControlEqualityArena,s6Step213EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step213EarlyControl_flagsOwned : ([807, 253, 252, 251] : List Wire).toFinset⊆s6Step213EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step213EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step213EarlyControl_flags : compileHmrFlagsLog s6Step213EarlyControlClassPlan.equalityArena s6Step213EarlyControlClassPlan.equality.top 253 252 251 s6Step213EarlyControlLog.flagWork=some s6Step213EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step213EarlyControl_flagsOwned⟩
  · exact s6Step213EarlyControl_flagsBorrow

private theorem s6Step213EarlyControl_historyBorrow : s6Step213EarlyControlArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step213EarlyControlLog.recordFresh=some s6Step213EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step213EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step213EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step213EarlyControlHistoryArena,s6Step213EarlyControlArena,s6Step213EarlyControlLog,arenaWires]

private theorem s6Step213EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step213EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step213EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step213EarlyControl_history : compileHmrRecordGrowLog s6Step213EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step213EarlyControlLog.recordFresh=some s6Step213EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step213EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step213EarlyControl_historyBorrow

private theorem s6Step213EarlyControl_sigmaOwned : ([254, 784] : List Wire).toFinset⊆s6Step213EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step213EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step213EarlyControl_sigmaReleaseOwned : ([784] : List Wire).toFinset⊆s6Step213EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step213EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step213EarlyControl_sigmaRelease : s6Step213EarlyControlHistoryArena.release {784} (fun _ => false)=some s6Step213EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step213EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step213EarlyControlSigmaArena,s6Step213EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step213EarlyControl_sigma : compileHmrSigmaDropLog s6Step213EarlyControlHistoryArena false 0 0 254 784 []=some s6Step213EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step213EarlyControl_sigmaOwned⟩
  · exact s6Step213EarlyControl_sigmaRelease

private theorem s6Step213EarlyControl_zeroBorrow : s6Step213EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step213EarlyControlLog.zeroWork=some s6Step213EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step213EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step213EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step213EarlyControlZeroArena,s6Step213EarlyControlArena,s6Step213EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step213EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step213EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step213EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step213EarlyControl_zero : compileHmrEqualityLog s6Step213EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step213EarlyControlLog.zeroWork=some (s6Step213EarlyControlZeroArena,s6Step213EarlyControlLog.zeroWork,s6Step213EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step213EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step213EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step213EarlyControl_logged : s6Step213EarlyControlPlan.Logged s6Step213EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 784 254 253 252 251 873 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step213EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step213EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step213EarlyControl_zero
  · exact s6Step213EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step213EarlyControl_flags
  · exact s6Step213EarlyControl_fit
  · exact s6Step213EarlyControl_history
  · exact s6Step213EarlyControl_sigma
  · exact s6Step213EarlyControl_branch

private theorem s6Step213EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step213EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 784 254 253 252 251 873 47 s6Step213EarlyControlLog=some s6Step213EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step213EarlyControlPlan s6Step213EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 784 254 253 252 251 873 47 s6Step213EarlyControl_logged

private def s6Step213EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,784),(785,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step213EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418],795⟩

private def s6Step213EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813],776⟩

private def s6Step213EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161],777⟩

private def s6Step213EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867],775⟩

private def s6Step213FrontBank : WindowBank := ⟨s6Step213EntryFRow,s6Step213EntryGRow,s6Step213EntryFvRow,s6Step213EntryGvRow⟩

private def s6Step213Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 881, 795]

private def s6Step213Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 858, 779, 777]

private def s6Step213Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 802, 776]

private def s6Step213Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 855, 775]

private theorem s6Step213Counter_apart : Disjoint s6Step213HeadFvAfter.live s6Step213CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step213HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step213Counter_borrowed : s6Step213HeadFvAfter.checkBorrow 4 s6Step213CounterWork=some s6Step213CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step213HeadFvAfter s6Step213CounterDuring s6Step213CounterWork.toFinset s6Step213Counter_bounded s6Step213Counter_apart rfl

private theorem s6Step213Counter_owned : (784::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step213HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step213HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step213Counter_checked : compileHmrCounterStepLog s6Step213HeadFvAfter true 784 [774, 773, 772, 771, 770, 769] s6Step213CounterWork=some s6Step213CounterDuring := by
  have owned : ∀q∈784::[774, 773, 772, 771, 770, 769],q∈s6Step213HeadFvAfter.live := fun q hq => s6Step213Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step213Counter_borrowed

private def s6Step213EntryFAfter : Arena := s6Step213EntryFBefore

private theorem s6Step213EntryBank_incomingDistinct : ([s6Step213EntryFRow,s6Step213EntryGRow,s6Step213EntryFvRow,s6Step213EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step213EntryF_Incoming : rowsOwned s6Step213EntryFBefore [s6Step213EntryFRow,s6Step213EntryGRow,s6Step213EntryFvRow,s6Step213EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step213EntryFRow,s6Step213EntryGRow,s6Step213EntryFvRow,s6Step213EntryGvRow] 0 s6Step213EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step213EntryFBefore (fun q => ([(0,779),(780,782),(783,784),(785,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step213EntryBank_outgoingOwned : rowsOwned s6Step213EntryGvAfter [s6Step213EntryFOut,s6Step213EntryGOut,s6Step213EntryFvOut,s6Step213EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step213EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step213EntryF_Outgoing : rowsOwned s6Step213EntryGvAfter [s6Step213EntryFOut,s6Step213EntryGOut,s6Step213EntryFvOut,s6Step213EntryGvOut] :=
  hmrRows_owned_drop s6Step213EntryGvAfter [s6Step213EntryFOut,s6Step213EntryGOut,s6Step213EntryFvOut,s6Step213EntryGvOut] 0 s6Step213EntryBank_outgoingOwned

private theorem s6Step213EntryF_distinct : (s6Step213EntryFRow.sign::s6Step213EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step213EntryF_owned : (s6Step213EntryFRow.sign::s6Step213EntryFRow.payload).toFinset⊆s6Step213EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step213EntryFBefore (fun q => ([(0,779),(780,782),(783,784),(785,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step213EntryF_reserved : s6Step213EntryFBefore.reserve s6Step213EntryFFresh.toFinset=some s6Step213EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step213EntryFFresh,arenaWires]
  · norm_num [s6Step213EntryFBefore,s6Step213EntryFFresh,arenaWires]
  · simp only [s6Step213EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step213EntryF_checked : planRowResizeLog s6Step213EntryFBefore s6Step213EntryFRow 163 s6Step213EntryFFresh=
    some (s6Step213EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418],795⟩,growRow 795 s6Step213EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step213EntryFBefore s6Step213EntryFAfter s6Step213EntryFRow 163 s6Step213EntryFFresh
    s6Step213EntryF_distinct s6Step213EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step213EntryF_reserved
  have rowEq : WindowRow.mk (s6Step213EntryFRow.payload++s6Step213EntryFFresh) s6Step213EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step213EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,784),(785,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step213EntryFvAfter : Arena := s6Step213EntryGAfter

private def s6Step213EntryFvBefore : Arena := s6Step213EntryGAfter

private theorem s6Step213EntryFv_Incoming : rowsOwned s6Step213EntryFvBefore [s6Step213EntryFvRow,s6Step213EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step213EntryFRow,s6Step213EntryGRow,s6Step213EntryFvRow,s6Step213EntryGvRow] 2 s6Step213EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step213EntryFvBefore (fun q => ([(0,779),(780,782),(783,784),(785,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step213EntryFv_Outgoing : rowsOwned s6Step213EntryGvAfter [s6Step213EntryFvOut,s6Step213EntryGvOut] :=
  hmrRows_owned_drop s6Step213EntryGvAfter [s6Step213EntryFOut,s6Step213EntryGOut,s6Step213EntryFvOut,s6Step213EntryGvOut] 2 s6Step213EntryBank_outgoingOwned

private theorem s6Step213EntryFv_distinct : (s6Step213EntryFvRow.sign::s6Step213EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step213EntryFv_owned : (s6Step213EntryFvRow.sign::s6Step213EntryFvRow.payload).toFinset⊆s6Step213EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step213EntryFvBefore (fun q => ([(0,779),(780,782),(783,784),(785,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step213EntryFv_reserved : s6Step213EntryFvBefore.reserve s6Step213EntryFvFresh.toFinset=some s6Step213EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step213EntryFvFresh,arenaWires]
  · norm_num [s6Step213EntryFvBefore,s6Step213EntryGAfter,s6Step213EntryFvFresh,arenaWires]
  · simp only [s6Step213EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step213EntryFv_checked : planRowResizeLog s6Step213EntryFvBefore s6Step213EntryFvRow 121 s6Step213EntryFvFresh=
    some (s6Step213EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813],776⟩,growRow 776 s6Step213EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step213EntryFvBefore s6Step213EntryFvAfter s6Step213EntryFvRow 121 s6Step213EntryFvFresh
    s6Step213EntryFv_distinct s6Step213EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step213EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step213EntryFvRow.payload++s6Step213EntryFvFresh) s6Step213EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step213EntryGBefore : Arena := s6Step213EntryFBefore

private theorem s6Step213EntryG_Incoming : rowsOwned s6Step213EntryGBefore [s6Step213EntryGRow,s6Step213EntryFvRow,s6Step213EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step213EntryFRow,s6Step213EntryGRow,s6Step213EntryFvRow,s6Step213EntryGvRow] 1 s6Step213EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step213EntryGBefore (fun q => ([(0,779),(780,782),(783,784),(785,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step213EntryG_Outgoing : rowsOwned s6Step213EntryGvAfter [s6Step213EntryGOut,s6Step213EntryFvOut,s6Step213EntryGvOut] :=
  hmrRows_owned_drop s6Step213EntryGvAfter [s6Step213EntryFOut,s6Step213EntryGOut,s6Step213EntryFvOut,s6Step213EntryGvOut] 1 s6Step213EntryBank_outgoingOwned

private theorem s6Step213EntryG_distinct : (s6Step213EntryGRow.sign::s6Step213EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step213EntryG_owned : (s6Step213EntryGRow.sign::s6Step213EntryGRow.payload).toFinset⊆s6Step213EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step213EntryGBefore (fun q => ([(0,779),(780,782),(783,784),(785,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step213EntryG_reserved : s6Step213EntryGBefore.reserve s6Step213EntryGFresh.toFinset=some s6Step213EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step213EntryGFresh,arenaWires]
  · norm_num [s6Step213EntryGBefore,s6Step213EntryFBefore,s6Step213EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step213EntryGBefore s6Step213EntryGAfter (fun q => ([(0,779),(780,782),(783,784),(785,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(783,784),(785,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step213EntryGFresh rfl rfl
    · norm_num [s6Step213EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step213EntryG_checked : planRowResizeLog s6Step213EntryGBefore s6Step213EntryGRow 163 s6Step213EntryGFresh=
    some (s6Step213EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 858],777⟩,growRow 777 s6Step213EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step213EntryGBefore s6Step213EntryGAfter s6Step213EntryGRow 163 s6Step213EntryGFresh
    s6Step213EntryG_distinct s6Step213EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step213EntryG_reserved
  have rowEq : WindowRow.mk (s6Step213EntryGRow.payload++s6Step213EntryGFresh) s6Step213EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 858],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step213EntryGvBefore : Arena := s6Step213EntryGAfter

private theorem s6Step213EntryGv_Incoming : rowsOwned s6Step213EntryGvBefore [s6Step213EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step213EntryFRow,s6Step213EntryGRow,s6Step213EntryFvRow,s6Step213EntryGvRow] 3 s6Step213EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step213EntryGvBefore (fun q => ([(0,779),(780,782),(783,784),(785,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step213EntryGv_Outgoing : rowsOwned s6Step213EntryGvAfter [s6Step213EntryGvOut] :=
  hmrRows_owned_drop s6Step213EntryGvAfter [s6Step213EntryFOut,s6Step213EntryGOut,s6Step213EntryFvOut,s6Step213EntryGvOut] 3 s6Step213EntryBank_outgoingOwned

private theorem s6Step213EntryGv_distinct : (s6Step213EntryGvRow.sign::s6Step213EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step213EntryGv_owned : (s6Step213EntryGvRow.sign::s6Step213EntryGvRow.payload).toFinset⊆s6Step213EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step213EntryGvBefore (fun q => ([(0,779),(780,782),(783,784),(785,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step213EntryGv_reserved : s6Step213EntryGvBefore.reserve s6Step213EntryGvFresh.toFinset=some s6Step213EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step213EntryGvFresh,arenaWires]
  · norm_num [s6Step213EntryGvBefore,s6Step213EntryGAfter,s6Step213EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step213EntryGvBefore s6Step213EntryGvAfter (fun q => ([(0,779),(780,782),(783,784),(785,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step213EntryGvFresh rfl rfl
    · norm_num [s6Step213EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step213EntryGv_checked : planRowResizeLog s6Step213EntryGvBefore s6Step213EntryGvRow 121 s6Step213EntryGvFresh=
    some (s6Step213EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838],775⟩,growRow 775 s6Step213EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step213EntryGvBefore s6Step213EntryGvAfter s6Step213EntryGvRow 121 s6Step213EntryGvFresh
    s6Step213EntryGv_distinct s6Step213EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step213EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step213EntryGvRow.payload++s6Step213EntryGvFresh) s6Step213EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step213EntryBank_rows : planWindowRowsLog s6Step213EntryFBefore [(s6Step213EntryFRow,163),(s6Step213EntryGRow,163),(s6Step213EntryFvRow,121),(s6Step213EntryGvRow,121)] [s6Step213EntryFFresh,s6Step213EntryGFresh,s6Step213EntryFvFresh,s6Step213EntryGvFresh]=
    some (s6Step213EntryGvAfter,[s6Step213EntryFOut,s6Step213EntryGOut,s6Step213EntryFvOut,s6Step213EntryGvOut],(growRow 795 s6Step213EntryFFresh ++ (growRow 777 s6Step213EntryGFresh ++ (growRow 776 s6Step213EntryFvFresh ++ (growRow 775 s6Step213EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step213EntryGvAfter [] []=some (s6Step213EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step213EntryGvBefore s6Step213EntryGvAfter s6Step213EntryGvAfter
    s6Step213EntryGvRow s6Step213EntryGvOut 121 s6Step213EntryGvFresh [] [] []
    (growRow 775 s6Step213EntryGvFresh) ([]) s6Step213EntryGv_Incoming s6Step213EntryGv_checked h4 s6Step213EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step213EntryFvBefore s6Step213EntryFvAfter s6Step213EntryGvAfter
    s6Step213EntryFvRow s6Step213EntryFvOut 121 s6Step213EntryFvFresh [(s6Step213EntryGvRow,121)] [s6Step213EntryGvFresh] [s6Step213EntryGvOut]
    (growRow 776 s6Step213EntryFvFresh) ((growRow 775 s6Step213EntryGvFresh ++ [])) s6Step213EntryFv_Incoming s6Step213EntryFv_checked h3 s6Step213EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step213EntryGBefore s6Step213EntryGAfter s6Step213EntryGvAfter
    s6Step213EntryGRow s6Step213EntryGOut 163 s6Step213EntryGFresh [(s6Step213EntryFvRow,121),(s6Step213EntryGvRow,121)] [s6Step213EntryFvFresh,s6Step213EntryGvFresh] [s6Step213EntryFvOut,s6Step213EntryGvOut]
    (growRow 777 s6Step213EntryGFresh) ((growRow 776 s6Step213EntryFvFresh ++ (growRow 775 s6Step213EntryGvFresh ++ []))) s6Step213EntryG_Incoming s6Step213EntryG_checked h2 s6Step213EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step213EntryFBefore s6Step213EntryFAfter s6Step213EntryGvAfter
    s6Step213EntryFRow s6Step213EntryFOut 163 s6Step213EntryFFresh [(s6Step213EntryGRow,163),(s6Step213EntryFvRow,121),(s6Step213EntryGvRow,121)] [s6Step213EntryGFresh,s6Step213EntryFvFresh,s6Step213EntryGvFresh] [s6Step213EntryGOut,s6Step213EntryFvOut,s6Step213EntryGvOut]
    (growRow 795 s6Step213EntryFFresh) ((growRow 777 s6Step213EntryGFresh ++ (growRow 776 s6Step213EntryFvFresh ++ (growRow 775 s6Step213EntryGvFresh ++ [])))) s6Step213EntryF_Incoming s6Step213EntryF_checked h1 s6Step213EntryF_Outgoing
  exact h0

private theorem s6Step213EntryBank_checked : compileHmrBankResizeLog .entry s6Step213EntryFBefore ⟨s6Step213EntryFRow,s6Step213EntryGRow,s6Step213EntryFvRow,s6Step213EntryGvRow⟩ ⟨163,163,121,121⟩ [s6Step213EntryFFresh,s6Step213EntryGFresh,s6Step213EntryFvFresh,s6Step213EntryGvFresh]=
    some (s6Step213EntryGvAfter,⟨s6Step213EntryFOut,s6Step213EntryGOut,s6Step213EntryFvOut,s6Step213EntryGvOut⟩,(growRow 795 s6Step213EntryFFresh ++ (growRow 777 s6Step213EntryGFresh ++ (growRow 776 s6Step213EntryFvFresh ++ (growRow 775 s6Step213EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step213EntryBank_rows]
  rfl

private def s6Step213ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step213ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step213ExitFBefore : Arena := s6Step213ExitGAfter

private def s6Step213ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 881],795⟩

private def s6Step213ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 802],776⟩

private def s6Step213ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 858, 779],777⟩

private def s6Step213ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 855],775⟩

private theorem s6Step213ExitBank_incomingDistinct : ([s6Step213ExitGRow,s6Step213ExitFRow,s6Step213ExitFvRow,s6Step213ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step213ExitF_Incoming : rowsOwned s6Step213ExitFBefore [s6Step213ExitFRow,s6Step213ExitFvRow,s6Step213ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step213ExitGRow,s6Step213ExitFRow,s6Step213ExitFvRow,s6Step213ExitGvRow] 1 s6Step213ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step213ExitFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step213ExitBank_outgoingOwned : rowsOwned s6Step213ExitGvAfter [s6Step213ExitGOut,s6Step213ExitFOut,s6Step213ExitFvOut,s6Step213ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step213ExitGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step213ExitF_Outgoing : rowsOwned s6Step213ExitGvAfter [s6Step213ExitFOut,s6Step213ExitFvOut,s6Step213ExitGvOut] :=
  hmrRows_owned_drop s6Step213ExitGvAfter [s6Step213ExitGOut,s6Step213ExitFOut,s6Step213ExitFvOut,s6Step213ExitGvOut] 1 s6Step213ExitBank_outgoingOwned

private theorem s6Step213ExitF_distinct : (s6Step213ExitFRow.sign::s6Step213ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step213ExitF_owned : (s6Step213ExitFRow.sign::s6Step213ExitFRow.payload).toFinset⊆s6Step213ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step213ExitFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step213ExitF_retired : s6Step213ExitFBefore.retireSet s6Step213ExitFExtra.toFinset=s6Step213ExitFAfter := by
  unfold Arena.retireSet s6Step213ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step213ExitFBefore,s6Step213ExitGAfter,s6Step213ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step213ExitF_checked : planRowResizeLog s6Step213ExitFBefore s6Step213ExitFRow 163 []=
    some (s6Step213ExitFAfter,s6Step213ExitFOut,shrinkRow 795 s6Step213ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step213ExitFBefore s6Step213ExitFRow 163 s6Step213ExitF_distinct s6Step213ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step213ExitFRow.payload.take 163) s6Step213ExitFRow.sign=s6Step213ExitFOut := by decide +kernel
  have hi : s6Step213ExitFRow.payload.drop 163=s6Step213ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step213ExitF_retired] at result
  exact result

private def s6Step213ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step213ExitFvBefore : Arena := s6Step213ExitFAfter

private theorem s6Step213ExitFv_Incoming : rowsOwned s6Step213ExitFvBefore [s6Step213ExitFvRow,s6Step213ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step213ExitGRow,s6Step213ExitFRow,s6Step213ExitFvRow,s6Step213ExitGvRow] 2 s6Step213ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step213ExitFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step213ExitFv_Outgoing : rowsOwned s6Step213ExitGvAfter [s6Step213ExitFvOut,s6Step213ExitGvOut] :=
  hmrRows_owned_drop s6Step213ExitGvAfter [s6Step213ExitGOut,s6Step213ExitFOut,s6Step213ExitFvOut,s6Step213ExitGvOut] 2 s6Step213ExitBank_outgoingOwned

private theorem s6Step213ExitFv_distinct : (s6Step213ExitFvRow.sign::s6Step213ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step213ExitFv_owned : (s6Step213ExitFvRow.sign::s6Step213ExitFvRow.payload).toFinset⊆s6Step213ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step213ExitFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step213ExitFv_retired : s6Step213ExitFvBefore.retireSet s6Step213ExitFvExtra.toFinset=s6Step213ExitFvAfter := by
  unfold Arena.retireSet s6Step213ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step213ExitFvBefore,s6Step213ExitFAfter,s6Step213ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step213ExitFv_checked : planRowResizeLog s6Step213ExitFvBefore s6Step213ExitFvRow 121 []=
    some (s6Step213ExitFvAfter,s6Step213ExitFvOut,shrinkRow 776 s6Step213ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step213ExitFvBefore s6Step213ExitFvRow 121 s6Step213ExitFv_distinct s6Step213ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step213ExitFvRow.payload.take 121) s6Step213ExitFvRow.sign=s6Step213ExitFvOut := by decide +kernel
  have hi : s6Step213ExitFvRow.payload.drop 121=s6Step213ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step213ExitFv_retired] at result
  exact result

private def s6Step213ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step213ExitG_Incoming : rowsOwned s6Step213ExitGBefore [s6Step213ExitGRow,s6Step213ExitFRow,s6Step213ExitFvRow,s6Step213ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step213ExitGRow,s6Step213ExitFRow,s6Step213ExitFvRow,s6Step213ExitGvRow] 0 s6Step213ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step213ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step213ExitG_Outgoing : rowsOwned s6Step213ExitGvAfter [s6Step213ExitGOut,s6Step213ExitFOut,s6Step213ExitFvOut,s6Step213ExitGvOut] :=
  hmrRows_owned_drop s6Step213ExitGvAfter [s6Step213ExitGOut,s6Step213ExitFOut,s6Step213ExitFvOut,s6Step213ExitGvOut] 0 s6Step213ExitBank_outgoingOwned

private theorem s6Step213ExitG_distinct : (s6Step213ExitGRow.sign::s6Step213ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step213ExitG_owned : (s6Step213ExitGRow.sign::s6Step213ExitGRow.payload).toFinset⊆s6Step213ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step213ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step213ExitG_retired : s6Step213ExitGBefore.retireSet s6Step213ExitGExtra.toFinset=s6Step213ExitGAfter := by
  unfold Arena.retireSet s6Step213ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step213ExitGBefore,s6Step213ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step213ExitG_checked : planRowResizeLog s6Step213ExitGBefore s6Step213ExitGRow 162 []=
    some (s6Step213ExitGAfter,s6Step213ExitGOut,shrinkRow 777 s6Step213ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step213ExitGBefore s6Step213ExitGRow 162 s6Step213ExitG_distinct s6Step213ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step213ExitGRow.payload.take 162) s6Step213ExitGRow.sign=s6Step213ExitGOut := by decide +kernel
  have hi : s6Step213ExitGRow.payload.drop 162=s6Step213ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step213ExitG_retired] at result
  exact result

private def s6Step213ExitGvBefore : Arena := s6Step213ExitFvAfter

private theorem s6Step213ExitGv_Incoming : rowsOwned s6Step213ExitGvBefore [s6Step213ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step213ExitGRow,s6Step213ExitFRow,s6Step213ExitFvRow,s6Step213ExitGvRow] 3 s6Step213ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step213ExitGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step213ExitGv_Outgoing : rowsOwned s6Step213ExitGvAfter [s6Step213ExitGvOut] :=
  hmrRows_owned_drop s6Step213ExitGvAfter [s6Step213ExitGOut,s6Step213ExitFOut,s6Step213ExitFvOut,s6Step213ExitGvOut] 3 s6Step213ExitBank_outgoingOwned

private theorem s6Step213ExitGv_distinct : (s6Step213ExitGvRow.sign::s6Step213ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step213ExitGv_owned : (s6Step213ExitGvRow.sign::s6Step213ExitGvRow.payload).toFinset⊆s6Step213ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step213ExitGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step213ExitGv_retired : s6Step213ExitGvBefore.retireSet s6Step213ExitGvExtra.toFinset=s6Step213ExitGvAfter := by
  unfold Arena.retireSet s6Step213ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step213ExitGvBefore,s6Step213ExitFvAfter,s6Step213ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step213ExitGv_checked : planRowResizeLog s6Step213ExitGvBefore s6Step213ExitGvRow 121 []=
    some (s6Step213ExitGvAfter,s6Step213ExitGvOut,shrinkRow 775 s6Step213ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step213ExitGvBefore s6Step213ExitGvRow 121 s6Step213ExitGv_distinct s6Step213ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step213ExitGvRow.payload.take 121) s6Step213ExitGvRow.sign=s6Step213ExitGvOut := by decide +kernel
  have hi : s6Step213ExitGvRow.payload.drop 121=s6Step213ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step213ExitGv_retired] at result
  exact result

private theorem s6Step213ExitBank_rows : planWindowRowsLog s6Step213ExitGBefore [(s6Step213ExitGRow,162),(s6Step213ExitFRow,163),(s6Step213ExitFvRow,121),(s6Step213ExitGvRow,121)] [[],[],[],[]]=
    some (s6Step213ExitGvAfter,[s6Step213ExitGOut,s6Step213ExitFOut,s6Step213ExitFvOut,s6Step213ExitGvOut],(shrinkRow 777 s6Step213ExitGExtra ++ (shrinkRow 795 s6Step213ExitFExtra ++ (shrinkRow 776 s6Step213ExitFvExtra ++ (shrinkRow 775 s6Step213ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step213ExitGvAfter [] []=some (s6Step213ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step213ExitGvBefore s6Step213ExitGvAfter s6Step213ExitGvAfter
    s6Step213ExitGvRow s6Step213ExitGvOut 121 [] [] [] []
    (shrinkRow 775 s6Step213ExitGvExtra) ([]) s6Step213ExitGv_Incoming s6Step213ExitGv_checked h4 s6Step213ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step213ExitFvBefore s6Step213ExitFvAfter s6Step213ExitGvAfter
    s6Step213ExitFvRow s6Step213ExitFvOut 121 [] [(s6Step213ExitGvRow,121)] [[]] [s6Step213ExitGvOut]
    (shrinkRow 776 s6Step213ExitFvExtra) ((shrinkRow 775 s6Step213ExitGvExtra ++ [])) s6Step213ExitFv_Incoming s6Step213ExitFv_checked h3 s6Step213ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step213ExitFBefore s6Step213ExitFAfter s6Step213ExitGvAfter
    s6Step213ExitFRow s6Step213ExitFOut 163 [] [(s6Step213ExitFvRow,121),(s6Step213ExitGvRow,121)] [[],[]] [s6Step213ExitFvOut,s6Step213ExitGvOut]
    (shrinkRow 795 s6Step213ExitFExtra) ((shrinkRow 776 s6Step213ExitFvExtra ++ (shrinkRow 775 s6Step213ExitGvExtra ++ []))) s6Step213ExitF_Incoming s6Step213ExitF_checked h2 s6Step213ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step213ExitGBefore s6Step213ExitGAfter s6Step213ExitGvAfter
    s6Step213ExitGRow s6Step213ExitGOut 162 [] [(s6Step213ExitFRow,163),(s6Step213ExitFvRow,121),(s6Step213ExitGvRow,121)] [[],[],[]] [s6Step213ExitFOut,s6Step213ExitFvOut,s6Step213ExitGvOut]
    (shrinkRow 777 s6Step213ExitGExtra) ((shrinkRow 795 s6Step213ExitFExtra ++ (shrinkRow 776 s6Step213ExitFvExtra ++ (shrinkRow 775 s6Step213ExitGvExtra ++ [])))) s6Step213ExitG_Incoming s6Step213ExitG_checked h1 s6Step213ExitG_Outgoing
  exact h0

private theorem s6Step213ExitBank_checked : compileHmrBankResizeLog .exit s6Step213ExitGBefore ⟨s6Step213ExitFRow,s6Step213ExitGRow,s6Step213ExitFvRow,s6Step213ExitGvRow⟩ ⟨163,162,121,121⟩ [[],[],[],[]]=
    some (s6Step213ExitGvAfter,⟨s6Step213ExitFOut,s6Step213ExitGOut,s6Step213ExitFvOut,s6Step213ExitGvOut⟩,(shrinkRow 777 s6Step213ExitGExtra ++ (shrinkRow 795 s6Step213ExitFExtra ++ (shrinkRow 776 s6Step213ExitFvExtra ++ (shrinkRow 775 s6Step213ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step213ExitBank_rows]
  rfl

private theorem s6Step213Add0_apart : Disjoint s6Step213Add0Arena.live s6Step213Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step213Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step213Add0_card : s6Step213Add0Arena.live.card=889 := by
  decide +kernel

private theorem s6Step213Add0_borrowed : s6Step213Add0Arena.checkBorrow (hmrHybridCount s6Step213Add0Arena s6Step213Add0B.length) s6Step213Add0Work=some s6Step213Add0During := by
  have len : s6Step213Add0Work.length=hmrHybridCount s6Step213Add0Arena s6Step213Add0B.length := by
    rw [hmrHybridCount,s6Step213Add0_card]
    decide +kernel
  have nd : s6Step213Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step213Add0Arena s6Step213Add0During s6Step213Add0Work.toFinset s6Step213Add0_bounded s6Step213Add0_apart rfl

private theorem s6Step213Add0_distinct : (882::873::807::(s6Step213Add0A++s6Step213Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step213Add0_owned : (882::873::807::(s6Step213Add0A++s6Step213Add0B)).toFinset⊆s6Step213Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step213Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step213Add0_checked : compileHmrHybridCinLog s6Step213Add0Arena 873 882 807 s6Step213Add0A s6Step213Add0B s6Step213Add0Work=some s6Step213Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step213Add0Arena s6Step213Add0During 873 882 807 s6Step213Add0A s6Step213Add0B s6Step213Add0Work
    (by decide +kernel) (by decide +kernel) s6Step213Add0_distinct
    (fun q hq => s6Step213Add0_owned (List.mem_toFinset.mpr hq)) s6Step213Add0_borrowed

private theorem s6Step213Add1_apart : Disjoint s6Step213Add1Arena.live s6Step213Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step213Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step213Add1_card : s6Step213Add1Arena.live.card=889 := by
  decide +kernel

private theorem s6Step213Add1_borrowed : s6Step213Add1Arena.checkBorrow (hmrHybridCount s6Step213Add1Arena s6Step213Add1B.length) s6Step213Add1Work=some s6Step213Add1During := by
  have len : s6Step213Add1Work.length=hmrHybridCount s6Step213Add1Arena s6Step213Add1B.length := by
    rw [hmrHybridCount,s6Step213Add1_card]
    decide +kernel
  have nd : s6Step213Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step213Add1Arena s6Step213Add1During s6Step213Add1Work.toFinset s6Step213Add1_bounded s6Step213Add1_apart rfl

private theorem s6Step213Add1_distinct : (882::873::807::(s6Step213Add1A++s6Step213Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step213Add1_owned : (882::873::807::(s6Step213Add1A++s6Step213Add1B)).toFinset⊆s6Step213Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step213Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step213Add1_checked : compileHmrHybridCinLog s6Step213Add1Arena 873 882 807 s6Step213Add1A s6Step213Add1B s6Step213Add1Work=some s6Step213Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step213Add1Arena s6Step213Add1During 873 882 807 s6Step213Add1A s6Step213Add1B s6Step213Add1Work
    (by decide +kernel) (by decide +kernel) s6Step213Add1_distinct
    (fun q hq => s6Step213Add1_owned (List.mem_toFinset.mpr hq)) s6Step213Add1_borrowed

private theorem s6Step213F4_apart : Disjoint (s6Step213Add0A++s6Step213Add0B).toFinset (s6Step213Add1A++s6Step213Add1B).toFinset := by
  have nd : ((s6Step213Add0A++s6Step213Add0B)++(s6Step213Add1A++s6Step213Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step213F4_carry : s6Step213F4FlagArena.checkBorrow 1 [807]=some s6Step213Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step213F4FlagArena,s6Step213HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step213F4FlagArena,s6Step213HeadFvAfter,s6Step213Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step213F4_distinct : (784::873::882::807::((s6Step213Add0A++s6Step213Add1A)++(s6Step213Add0B++s6Step213Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step213F4_flag : s6Step213HeadFvAfter.checkBorrow 1 [882]=some s6Step213F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step213HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step213F4_owned : (784::873::((s6Step213Add0A++s6Step213Add1A)++(s6Step213Add0B++s6Step213Add1B))).toFinset⊆s6Step213HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step213HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step213F4_checked : compileHmrHybridF4Log s6Step213HeadFvAfter 784 873 s6Step213Add0A s6Step213Add0B s6Step213Add1A s6Step213Add1B [882] [807] s6Step213Add0Work s6Step213Add1Work=some s6Step213F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step213HeadFvAfter s6Step213F4FlagArena s6Step213Add0Arena s6Step213Add0During s6Step213Add1During 784 873
    s6Step213Add0A s6Step213Add0B s6Step213Add1A s6Step213Add1B [882] [807] s6Step213Add0Work s6Step213Add1Work
    (fun q hq => s6Step213F4_owned (List.mem_toFinset.mpr hq)) s6Step213F4_flag s6Step213F4_carry
    s6Step213F4_distinct s6Step213F4_apart s6Step213Add0_checked s6Step213Add1_checked

private theorem s6Step213Front_branch : s6Step213FrontSigmaArena.checkBorrow 1 [873]=some s6Step213HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step213FrontSigmaArena,s6Step213EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step213FrontSigmaArena,s6Step213EntryGvAfter,s6Step213HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step213Front_entry : HmrFrontEntryValid s6Step213EntryFBefore s6Step213FrontBank 163 121 ⟨163,162,121,121⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step213FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step213EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step213EntryFBefore (fun q => ([(0,779),(780,782),(783,784),(785,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step213FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step213Front_sigma : s6Step213EntryGvAfter.checkBorrow 1 [784]=some s6Step213FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step213EntryGvAfter,arenaWires]
  · rfl

private def s6Step213HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step213HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step213HeadFBefore : Arena := s6Step213HeadGAfter

private def s6Step213HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418],795⟩

private def s6Step213HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813],776⟩

private def s6Step213HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 858],777⟩

private def s6Step213HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838],775⟩

private theorem s6Step213HeadBank_incomingDistinct : ([s6Step213HeadGRow,s6Step213HeadFRow,s6Step213HeadGvRow,s6Step213HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step213HeadF_Incoming : rowsOwned s6Step213HeadFBefore [s6Step213HeadFRow,s6Step213HeadGvRow,s6Step213HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step213HeadGRow,s6Step213HeadFRow,s6Step213HeadGvRow,s6Step213HeadFvRow] 1 s6Step213HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step213HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step213HeadBank_outgoingOwned : rowsOwned s6Step213HeadFvAfter [s6Step213HeadGOut,s6Step213HeadFOut,s6Step213HeadGvOut,s6Step213HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step213HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step213HeadF_Outgoing : rowsOwned s6Step213HeadFvAfter [s6Step213HeadFOut,s6Step213HeadGvOut,s6Step213HeadFvOut] :=
  hmrRows_owned_drop s6Step213HeadFvAfter [s6Step213HeadGOut,s6Step213HeadFOut,s6Step213HeadGvOut,s6Step213HeadFvOut] 1 s6Step213HeadBank_outgoingOwned

private theorem s6Step213HeadF_distinct : (s6Step213HeadFRow.sign::s6Step213HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step213HeadF_owned : (s6Step213HeadFRow.sign::s6Step213HeadFRow.payload).toFinset⊆s6Step213HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step213HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step213HeadF_reserved : s6Step213HeadFBefore.reserve s6Step213HeadFFresh.toFinset=some s6Step213HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step213HeadFFresh,arenaWires]
  · norm_num [s6Step213HeadFBefore,s6Step213HeadGAfter,s6Step213HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step213HeadFAfter,s6Step213HeadFBefore,s6Step213HeadGAfter,s6Step213HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step213HeadF_checked : planRowResizeLog s6Step213HeadFBefore s6Step213HeadFRow 164 s6Step213HeadFFresh=
    some (s6Step213HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 881],795⟩,growRow 795 s6Step213HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step213HeadFBefore s6Step213HeadFAfter s6Step213HeadFRow 164 s6Step213HeadFFresh
    s6Step213HeadF_distinct s6Step213HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step213HeadF_reserved
  have rowEq : WindowRow.mk (s6Step213HeadFRow.payload++s6Step213HeadFFresh) s6Step213HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 881],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step213HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step213HeadFvBefore : Arena := s6Step213HeadGvAfter

private theorem s6Step213HeadFv_Incoming : rowsOwned s6Step213HeadFvBefore [s6Step213HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step213HeadGRow,s6Step213HeadFRow,s6Step213HeadGvRow,s6Step213HeadFvRow] 3 s6Step213HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step213HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step213HeadFv_Outgoing : rowsOwned s6Step213HeadFvAfter [s6Step213HeadFvOut] :=
  hmrRows_owned_drop s6Step213HeadFvAfter [s6Step213HeadGOut,s6Step213HeadFOut,s6Step213HeadGvOut,s6Step213HeadFvOut] 3 s6Step213HeadBank_outgoingOwned

private theorem s6Step213HeadFv_distinct : (s6Step213HeadFvRow.sign::s6Step213HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step213HeadFv_owned : (s6Step213HeadFvRow.sign::s6Step213HeadFvRow.payload).toFinset⊆s6Step213HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step213HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step213HeadFv_reserved : s6Step213HeadFvBefore.reserve s6Step213HeadFvFresh.toFinset=some s6Step213HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step213HeadFvFresh,arenaWires]
  · norm_num [s6Step213HeadFvBefore,s6Step213HeadGvAfter,s6Step213HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step213HeadFvAfter,s6Step213HeadFvBefore,s6Step213HeadGvAfter,s6Step213HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step213HeadFv_checked : planRowResizeLog s6Step213HeadFvBefore s6Step213HeadFvRow 122 s6Step213HeadFvFresh=
    some (s6Step213HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 802],776⟩,growRow 776 s6Step213HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step213HeadFvBefore s6Step213HeadFvAfter s6Step213HeadFvRow 122 s6Step213HeadFvFresh
    s6Step213HeadFv_distinct s6Step213HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step213HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step213HeadFvRow.payload++s6Step213HeadFvFresh) s6Step213HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 802],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step213HeadG_Incoming : rowsOwned s6Step213HeadGBefore [s6Step213HeadGRow,s6Step213HeadFRow,s6Step213HeadGvRow,s6Step213HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step213HeadGRow,s6Step213HeadFRow,s6Step213HeadGvRow,s6Step213HeadFvRow] 0 s6Step213HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step213HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step213HeadG_Outgoing : rowsOwned s6Step213HeadFvAfter [s6Step213HeadGOut,s6Step213HeadFOut,s6Step213HeadGvOut,s6Step213HeadFvOut] :=
  hmrRows_owned_drop s6Step213HeadFvAfter [s6Step213HeadGOut,s6Step213HeadFOut,s6Step213HeadGvOut,s6Step213HeadFvOut] 0 s6Step213HeadBank_outgoingOwned

private theorem s6Step213HeadG_distinct : (s6Step213HeadGRow.sign::s6Step213HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step213HeadG_owned : (s6Step213HeadGRow.sign::s6Step213HeadGRow.payload).toFinset⊆s6Step213HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step213HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step213HeadG_reserved : s6Step213HeadGBefore.reserve s6Step213HeadGFresh.toFinset=some s6Step213HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step213HeadGFresh,arenaWires]
  · norm_num [s6Step213HeadGBefore,s6Step213HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step213HeadGAfter,s6Step213HeadGBefore,s6Step213HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step213HeadG_checked : planRowResizeLog s6Step213HeadGBefore s6Step213HeadGRow 164 s6Step213HeadGFresh=
    some (s6Step213HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 858, 779],777⟩,growRow 777 s6Step213HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step213HeadGBefore s6Step213HeadGAfter s6Step213HeadGRow 164 s6Step213HeadGFresh
    s6Step213HeadG_distinct s6Step213HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step213HeadG_reserved
  have rowEq : WindowRow.mk (s6Step213HeadGRow.payload++s6Step213HeadGFresh) s6Step213HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 858, 779],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step213HeadGvBefore : Arena := s6Step213HeadFAfter

private theorem s6Step213HeadGv_Incoming : rowsOwned s6Step213HeadGvBefore [s6Step213HeadGvRow,s6Step213HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step213HeadGRow,s6Step213HeadFRow,s6Step213HeadGvRow,s6Step213HeadFvRow] 2 s6Step213HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step213HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step213HeadGv_Outgoing : rowsOwned s6Step213HeadFvAfter [s6Step213HeadGvOut,s6Step213HeadFvOut] :=
  hmrRows_owned_drop s6Step213HeadFvAfter [s6Step213HeadGOut,s6Step213HeadFOut,s6Step213HeadGvOut,s6Step213HeadFvOut] 2 s6Step213HeadBank_outgoingOwned

private theorem s6Step213HeadGv_distinct : (s6Step213HeadGvRow.sign::s6Step213HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step213HeadGv_owned : (s6Step213HeadGvRow.sign::s6Step213HeadGvRow.payload).toFinset⊆s6Step213HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step213HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step213HeadGv_reserved : s6Step213HeadGvBefore.reserve s6Step213HeadGvFresh.toFinset=some s6Step213HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step213HeadGvFresh,arenaWires]
  · norm_num [s6Step213HeadGvBefore,s6Step213HeadFAfter,s6Step213HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step213HeadGvAfter,s6Step213HeadGvBefore,s6Step213HeadFAfter,s6Step213HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step213HeadGv_checked : planRowResizeLog s6Step213HeadGvBefore s6Step213HeadGvRow 122 s6Step213HeadGvFresh=
    some (s6Step213HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 855],775⟩,growRow 775 s6Step213HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step213HeadGvBefore s6Step213HeadGvAfter s6Step213HeadGvRow 122 s6Step213HeadGvFresh
    s6Step213HeadGv_distinct s6Step213HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step213HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step213HeadGvRow.payload++s6Step213HeadGvFresh) s6Step213HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 855],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step213HeadBank_rows : planWindowRowsLog s6Step213HeadGBefore [(s6Step213HeadGRow,164),(s6Step213HeadFRow,164),(s6Step213HeadGvRow,122),(s6Step213HeadFvRow,122)] [s6Step213HeadGFresh,s6Step213HeadFFresh,s6Step213HeadGvFresh,s6Step213HeadFvFresh]=
    some (s6Step213HeadFvAfter,[s6Step213HeadGOut,s6Step213HeadFOut,s6Step213HeadGvOut,s6Step213HeadFvOut],(growRow 777 s6Step213HeadGFresh ++ (growRow 795 s6Step213HeadFFresh ++ (growRow 775 s6Step213HeadGvFresh ++ (growRow 776 s6Step213HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step213HeadFvAfter [] []=some (s6Step213HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step213HeadFvBefore s6Step213HeadFvAfter s6Step213HeadFvAfter
    s6Step213HeadFvRow s6Step213HeadFvOut 122 s6Step213HeadFvFresh [] [] []
    (growRow 776 s6Step213HeadFvFresh) ([]) s6Step213HeadFv_Incoming s6Step213HeadFv_checked h4 s6Step213HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step213HeadGvBefore s6Step213HeadGvAfter s6Step213HeadFvAfter
    s6Step213HeadGvRow s6Step213HeadGvOut 122 s6Step213HeadGvFresh [(s6Step213HeadFvRow,122)] [s6Step213HeadFvFresh] [s6Step213HeadFvOut]
    (growRow 775 s6Step213HeadGvFresh) ((growRow 776 s6Step213HeadFvFresh ++ [])) s6Step213HeadGv_Incoming s6Step213HeadGv_checked h3 s6Step213HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step213HeadFBefore s6Step213HeadFAfter s6Step213HeadFvAfter
    s6Step213HeadFRow s6Step213HeadFOut 164 s6Step213HeadFFresh [(s6Step213HeadGvRow,122),(s6Step213HeadFvRow,122)] [s6Step213HeadGvFresh,s6Step213HeadFvFresh] [s6Step213HeadGvOut,s6Step213HeadFvOut]
    (growRow 795 s6Step213HeadFFresh) ((growRow 775 s6Step213HeadGvFresh ++ (growRow 776 s6Step213HeadFvFresh ++ []))) s6Step213HeadF_Incoming s6Step213HeadF_checked h2 s6Step213HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step213HeadGBefore s6Step213HeadGAfter s6Step213HeadFvAfter
    s6Step213HeadGRow s6Step213HeadGOut 164 s6Step213HeadGFresh [(s6Step213HeadFRow,164),(s6Step213HeadGvRow,122),(s6Step213HeadFvRow,122)] [s6Step213HeadFFresh,s6Step213HeadGvFresh,s6Step213HeadFvFresh] [s6Step213HeadFOut,s6Step213HeadGvOut,s6Step213HeadFvOut]
    (growRow 777 s6Step213HeadGFresh) ((growRow 795 s6Step213HeadFFresh ++ (growRow 775 s6Step213HeadGvFresh ++ (growRow 776 s6Step213HeadFvFresh ++ [])))) s6Step213HeadG_Incoming s6Step213HeadG_checked h1 s6Step213HeadG_Outgoing
  exact h0

private theorem s6Step213HeadBank_checked : compileHmrBankResizeLog .headroom s6Step213HeadGBefore ⟨s6Step213HeadFRow,s6Step213HeadGRow,s6Step213HeadFvRow,s6Step213HeadGvRow⟩ ⟨164,164,122,122⟩ [s6Step213HeadGFresh,s6Step213HeadFFresh,s6Step213HeadGvFresh,s6Step213HeadFvFresh]=
    some (s6Step213HeadFvAfter,⟨s6Step213HeadFOut,s6Step213HeadGOut,s6Step213HeadFvOut,s6Step213HeadGvOut⟩,(growRow 777 s6Step213HeadGFresh ++ (growRow 795 s6Step213HeadFFresh ++ (growRow 775 s6Step213HeadGvFresh ++ (growRow 776 s6Step213HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step213HeadBank_rows]
  rfl

private theorem s6Step213Front_checked : compileHmrSourceFrontLog s6Step213EntryFBefore s6Step213FrontBank 163 121 ⟨163,162,121,121⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step213FrontLog=some s6Step213FrontPlan := by
  have pairEq : s6Step213FrontPair=⟨s6Step213HeadFRow,s6Step213HeadGRow,s6Step213HeadFvRow,s6Step213HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step213FrontHead=⟨s6Step213ExitFRow,s6Step213ExitGRow,s6Step213ExitFvRow,s6Step213ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step213Add0A=s6Step213FrontHead.f.wires := by decide +kernel
  have gEq : s6Step213Add0B=s6Step213FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step213Add1A=s6Step213FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step213Add1B=s6Step213FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step213EntryFBefore s6Step213FrontBank 163 121 ⟨163,162,121,121⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step213FrontLog s6Step213FrontPlan
  · exact s6Step213Front_entry
  · exact s6Step213EntryBank_checked
  · exact s6Step213Front_sigma
  · rfl
  · exact s6Step213Front_branch
  · rfl
  · simpa only [s6Step213FrontPlan,pairEq] using s6Step213HeadBank_checked
  · simpa only [s6Step213FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step213F4_checked
  · exact s6Step213Counter_checked
  · rfl
  · simpa only [s6Step213FrontPlan,headEq] using s6Step213ExitBank_checked

private theorem s6Step213Complete_explicit_checked : compileHmrEarlyStepLog s6Step213EntryFBefore s6Step213FrontBank 163 121 ⟨163,162,121,121⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step213CompleteLog=some s6Step213CompletePlan := by
  let Q := s6Step213EarlyControlPlan
  have hq := s6Step213EarlyControl_plan_checked
  have fv1 : s6Step213CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step213CompleteOut.fv.payload[2]?.getD s6Step213CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step213CompleteOut.fv.payload[3]?.getD s6Step213CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step213CompleteOut.fv.payload[4]?.getD s6Step213CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step213EntryFBefore s6Step213EarlyControlArena s6Step213FrontBank 163 121 ⟨163,162,121,121⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step213CompleteLog s6Step213FrontPlan Q
    s6Step213Front_checked s6Step213Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step213Complete_owned s6Step213Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step213EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 784 s6Step213CompleteOut.fv.second (s6Step213CompleteOut.fv.payload[2]?.getD s6Step213CompleteOut.fv.sign) (s6Step213CompleteOut.fv.payload[3]?.getD s6Step213CompleteOut.fv.sign) (s6Step213CompleteOut.fv.payload[4]?.getD s6Step213CompleteOut.fv.sign) 873 47 s6Step213EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep213Arena : Arena := s6Step213EntryFBefore
def s6PrivateStep213Bank : WindowBank := s6Step213FrontBank
def s6PrivateStep213Spec : HmrSourceWalkStepLog := ⟨163,121,⟨163,162,121,121⟩,47,.early s6Step213CompleteLog⟩
def s6PrivateStep213Plan : HmrSourceStepPlan := .early s6Step213CompletePlan
theorem s6PrivateStep213_source : s6PrivateStep213Spec=s6ObservedLogs208[5] := rfl
theorem s6PrivateStep213_checked : compileHmrSourceStepLog s6PrivateStep213Arena s6PrivateStep213Bank
    s6PrivateStep213Spec.fgWidth s6PrivateStep213Spec.vWidth s6PrivateStep213Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]
    6 498 213 s6PrivateStep213Spec.need none s6PrivateStep213Spec.log=some s6PrivateStep213Plan := by
  change compileHmrSourceStepLog s6Step213EntryFBefore s6Step213FrontBank 163 121 ⟨163,162,121,121⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 6 498 213 47 none (.early s6Step213CompleteLog)=some (.early s6Step213CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 213<498)]
  rw [s6Step213Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
