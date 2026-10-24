import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep236
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

private def s6Step238CompleteMoves : List (Wire × Wire) := [(848,406),(841,407)]

private def s6Step238EarlyControlLog : HmrEarlyControlLog := ⟨[841, 848, 869, 864, 786],[818],[868],[805, 810, 809, 817, 812, 909],[]⟩

private def s6Step238FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [822, 868], [], [865, 908]],[[805], [818], [869], [786]],[[], [], [], []]⟩,[888],[857],[810],[809],[817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[810, 809, 817, 812]⟩

private def s6Step238CompleteLog : HmrEarlyStepLog := ⟨s6Step238FrontLog,s6Step238CompleteMoves,s6Step238EarlyControlLog⟩

private def s6Step238ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405],795⟩

private def s6Step238ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825],776⟩

private def s6Step238ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 822],777⟩

private def s6Step238ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908],775⟩

private def s6Step238FrontOut : WindowBank := ⟨s6Step238ExitFOut,s6Step238ExitGOut,s6Step238ExitFvOut,s6Step238ExitGvOut⟩

private def s6Step238CompleteOut : WindowBank := s6Step238FrontOut.repacked s6Step238CompleteMoves

private def s6Step238EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step238EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step238EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step238EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step238EarlyControlPositiveArena,[818],s6Step238EarlyControlEqualityArena,[868],⟨⟨888,false⟩,[⟨⟨818,false⟩,868⟩]⟩⟩

private def s6Step238EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step238EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step238EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step238EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step238EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step238EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step238EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,841⟩,⟨⟨772,false⟩,848⟩,⟨⟨771,false⟩,869⟩,⟨⟨770,false⟩,864⟩,⟨⟨769,false⟩,786⟩]⟩

private def s6Step238EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step238EarlyControlZeroArena,s6Step238EarlyControlZeroPlan,s6Step238EarlyControlClassPlan,s6Step238EarlyControlFlagArena,s6Step238EarlyControlFittedArena,s6Step238EarlyControlHistoryArena,s6Step238EarlyControlSigmaArena,s6Step238EarlyControlOutputArena,s6Step238EarlyControlLog⟩

private def s6Step238CounterWork : List Wire := [810, 809, 817, 812]

private theorem s6Step238Counter_bounded : s6Step238CounterWork.toFinset⊆arenaWires := by norm_num [s6Step238CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step238HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step238CounterDuring : Arena := ⟨s6Step238HeadFvAfter.live∪s6Step238CounterWork.toFinset,Finset.union_subset s6Step238HeadFvAfter.bounded s6Step238Counter_bounded⟩

private def s6Step238EntryFFresh : List Wire := []

private def s6Step238EntryFvFresh : List Wire := []

private def s6Step238EntryGFresh : List Wire := [822, 868]

private def s6Step238EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step238EntryGvFresh : List Wire := [865, 908]

private def s6Step238ExitFExtra : List Wire := [406, 407, 818]

private def s6Step238ExitFvExtra : List Wire := [864, 786]

private def s6Step238ExitGExtra : List Wire := [868, 805]

private def s6Step238ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<406) ∨ (408≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step238ExitGvExtra : List Wire := [869]

private def s6Step238Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step238Add0Work : List Wire := [817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step238Add0_bounded : s6Step238Add0Work.toFinset⊆arenaWires := by
  have h : s6Step238Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step238Add0During : Arena := ⟨s6Step238Add0Arena.live∪s6Step238Add0Work.toFinset,Finset.union_subset s6Step238Add0Arena.bounded s6Step238Add0_bounded⟩

private def s6Step238Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step238Add1Work : List Wire := [817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step238Add1_bounded : s6Step238Add1Work.toFinset⊆arenaWires := by
  have h : s6Step238Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step238Add1During : Arena := ⟨s6Step238Add1Arena.live∪s6Step238Add1Work.toFinset,Finset.union_subset s6Step238Add1Arena.bounded s6Step238Add1_bounded⟩

private def s6Step238F4FlagArena : Arena := ⟨s6Step238HeadFvAfter.live∪{810},Finset.union_subset s6Step238HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step238F4Plan : HmrHybridF4Plan := ⟨s6Step238F4FlagArena,[810],s6Step238Add0Arena,[809],s6Step238Add0During,s6Step238Add0Work,s6Step238Add1During,s6Step238Add1Work⟩

private def s6Step238HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 818],795⟩

private def s6Step238HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 864, 786],776⟩

private def s6Step238HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 822, 868, 805],777⟩

private def s6Step238HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 869],775⟩

private def s6Step238FrontHead : WindowBank := ⟨s6Step238HeadFOut,s6Step238HeadGOut,s6Step238HeadFvOut,s6Step238HeadGvOut⟩

private def s6Step238EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407],795⟩

private def s6Step238EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 864],776⟩

private def s6Step238EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 822, 868],777⟩

private def s6Step238EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908],775⟩

private def s6Step238FrontPair : WindowBank := ⟨s6Step238EntryFOut,s6Step238EntryGOut,s6Step238EntryFvOut,s6Step238EntryGvOut⟩

private def s6Step238FrontSigmaArena : Arena := ⟨s6Step238EntryGvAfter.live∪{888},Finset.union_subset s6Step238EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step238HeadFFresh : List Wire := [818]

private def s6Step238HeadFvFresh : List Wire := [786]

private def s6Step238HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step238HeadGFresh : List Wire := [805]

private def s6Step238HeadGvFresh : List Wire := [869]

private def s6Step238FrontPlan : HmrSourceFront := ⟨s6Step238EntryGvAfter,s6Step238FrontPair,(growRow 795 s6Step238EntryFFresh ++ (growRow 777 s6Step238EntryGFresh ++ (growRow 776 s6Step238EntryFvFresh ++ (growRow 775 s6Step238EntryGvFresh ++ [])))),s6Step238FrontSigmaArena,[888],s6Step238HeadGBefore,[857],
  s6Step238HeadFvAfter,s6Step238FrontHead,(growRow 777 s6Step238HeadGFresh ++ (growRow 795 s6Step238HeadFFresh ++ (growRow 775 s6Step238HeadGvFresh ++ (growRow 776 s6Step238HeadFvFresh ++ [])))),s6Step238F4Plan,s6Step238CounterDuring,s6Step238CounterWork,s6Step238ExitGvAfter,s6Step238FrontOut,(shrinkRow 777 s6Step238ExitGExtra ++ (shrinkRow 795 s6Step238ExitFExtra ++ (shrinkRow 776 s6Step238ExitFvExtra ++ (shrinkRow 775 s6Step238ExitGvExtra ++ []))))⟩

private def s6Step238CompletePlan : HmrEarlyStepPlan := ⟨s6Step238FrontPlan,s6Step238EarlyControlArena,s6Step238EarlyControlPlan,s6Step238CompleteMoves⟩

private theorem s6Step238Complete_apart : List.Disjoint (s6Step238CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [888, 857, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] := by
  have nd : ((s6Step238CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[888, 857, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step238Complete_owned : (s6Step238CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step238EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step238EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step238CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,407),(408,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,805),(806,808),(813,815),(821,832),(833,842),(843,848),(850,864),(865,868),(870,896),(897,899),(900,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step238CompleteRelocationMove0Borrowed : Arena := ⟨s6Step238ExitGvAfter.live∪{406},Finset.union_subset s6Step238ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step238CompleteRelocationMove1Borrowed : Arena := ⟨s6Step238CompleteRelocationMove0After.live∪{407},Finset.union_subset s6Step238CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step238CompleteRelocation_move0_owned : 848∈s6Step238ExitGvAfter.live := by norm_num [s6Step238ExitGvAfter,arenaWires]

private theorem s6Step238CompleteRelocation_move0_reserve : s6Step238ExitGvAfter.reserve {406}=some s6Step238CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step238ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step238CompleteRelocation_move0_retire : s6Step238CompleteRelocationMove0Borrowed.retireSet {848}=s6Step238CompleteRelocationMove0After := by
  unfold Arena.retireSet s6Step238CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step238CompleteRelocationMove0Borrowed,s6Step238ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step238CompleteRelocation_move1_owned : 841∈s6Step238CompleteRelocationMove0After.live := by norm_num [s6Step238CompleteRelocationMove0After,arenaWires]

private theorem s6Step238CompleteRelocation_move1_reserve : s6Step238CompleteRelocationMove0After.reserve {407}=some s6Step238CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step238CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step238CompleteRelocation_move1_retire : s6Step238CompleteRelocationMove1Borrowed.retireSet {841}=s6Step238EarlyControlArena := by
  unfold Arena.retireSet s6Step238EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step238CompleteRelocationMove1Borrowed,s6Step238CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step238CompleteRelocation_checked : s6Step238ExitGvAfter.checkRepack [(848,406),(841,407)]=some s6Step238EarlyControlArena := by
  have tail2 : s6Step238EarlyControlArena.checkRepack []=some s6Step238EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step238CompleteRelocationMove0After s6Step238CompleteRelocationMove1Borrowed s6Step238EarlyControlArena s6Step238EarlyControlArena 841 407 []
    s6Step238CompleteRelocation_move1_owned s6Step238CompleteRelocation_move1_reserve s6Step238CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step238ExitGvAfter s6Step238CompleteRelocationMove0Borrowed s6Step238CompleteRelocationMove0After s6Step238EarlyControlArena 848 406 [(841,407)]
    s6Step238CompleteRelocation_move0_owned s6Step238CompleteRelocation_move0_reserve s6Step238CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step238Complete_repack : s6Step238ExitGvAfter.checkRepack s6Step238CompleteMoves=some s6Step238EarlyControlArena := by
  simpa only [s6Step238CompleteMoves] using s6Step238CompleteRelocation_checked

private theorem s6Step238EarlyControl_branchOwned : ([857] : List Wire).toFinset⊆s6Step238EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step238EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step238EarlyControl_branch : compileHmrBranchRetirement s6Step238EarlyControlSigmaArena 857=some s6Step238EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step238EarlyControl_branchOwned
  · ext q
    simp [s6Step238EarlyControlOutputArena,s6Step238EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step238EarlyControl_classEqualityBorrow : s6Step238EarlyControlPositiveArena.checkBorrow (([888, 818] : List Wire).length-1) s6Step238EarlyControlLog.classWork=some s6Step238EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step238EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step238EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step238EarlyControlEqualityArena,s6Step238EarlyControlPositiveArena,s6Step238EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step238EarlyControl_classEqualityOwned : ([888, 818] : List Wire).toFinset⊆s6Step238EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step238EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step238EarlyControl_classEquality : compileHmrEqualityLog s6Step238EarlyControlPositiveArena [888, 818] 0 s6Step238EarlyControlLog.classWork=some (s6Step238EarlyControlEqualityArena,s6Step238EarlyControlLog.classWork,s6Step238EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step238EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step238EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step238EarlyControl_classOwned : ([769, 786, 888] : List Wire).toFinset⊆s6Step238EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step238EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step238EarlyControl_positiveBorrow : s6Step238EarlyControlZeroArena.checkBorrow (1) s6Step238EarlyControlLog.positiveWork=some s6Step238EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step238EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step238EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step238EarlyControlPositiveArena,s6Step238EarlyControlZeroArena,s6Step238EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step238EarlyControl_class : compileHmrSourceClassLog s6Step238EarlyControlZeroArena false 769 s6Step238EarlyControlZeroPlan.top 0 888 s6Step238EarlyControlLog.positiveWork s6Step238EarlyControlLog.classWork=some s6Step238EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step238EarlyControlClassPlan s6Step238EarlyControlZeroArena false 769 s6Step238EarlyControlZeroPlan.top 0 888
  constructor
  · decide +kernel
  · exact s6Step238EarlyControl_classOwned
  · exact s6Step238EarlyControl_positiveBorrow
  · exact s6Step238EarlyControl_classEquality

private theorem s6Step238EarlyControl_entryRecordOwned : ([857, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).toFinset⊆s6Step238EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step238EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step238EarlyControl_entrySigmaOwned : ([888, 254] : List Wire).toFinset⊆s6Step238EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step238EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step238EarlyControl_fitBorrow : s6Step238EarlyControlFlagArena.checkBorrow ((49-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).length)) s6Step238EarlyControlLog.recordFresh=some s6Step238EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step238EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step238EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step238EarlyControlFittedArena,s6Step238EarlyControlFlagArena,s6Step238EarlyControlLog,arenaWires]

private theorem s6Step238EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).toFinset⊆s6Step238EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step238EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step238EarlyControl_fit : compileHmrRecordGrowLog s6Step238EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step238EarlyControlLog.recordFresh=some s6Step238EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step238EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step238EarlyControl_fitBorrow

private theorem s6Step238EarlyControl_flagsBorrow : s6Step238EarlyControlEqualityArena.checkBorrow (6) s6Step238EarlyControlLog.flagWork=some s6Step238EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step238EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step238EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step238EarlyControlFlagArena,s6Step238EarlyControlEqualityArena,s6Step238EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step238EarlyControl_flagsOwned : ([868, 253, 252, 251] : List Wire).toFinset⊆s6Step238EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step238EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step238EarlyControl_flags : compileHmrFlagsLog s6Step238EarlyControlClassPlan.equalityArena s6Step238EarlyControlClassPlan.equality.top 253 252 251 s6Step238EarlyControlLog.flagWork=some s6Step238EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step238EarlyControl_flagsOwned⟩
  · exact s6Step238EarlyControl_flagsBorrow

private theorem s6Step238EarlyControl_historyBorrow : s6Step238EarlyControlArena.checkBorrow ((49-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).length)) s6Step238EarlyControlLog.recordFresh=some s6Step238EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step238EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step238EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step238EarlyControlHistoryArena,s6Step238EarlyControlArena,s6Step238EarlyControlLog,arenaWires]

private theorem s6Step238EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).toFinset⊆s6Step238EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step238EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step238EarlyControl_history : compileHmrRecordGrowLog s6Step238EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step238EarlyControlLog.recordFresh=some s6Step238EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step238EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step238EarlyControl_historyBorrow

private theorem s6Step238EarlyControl_sigmaOwned : ([254, 888] : List Wire).toFinset⊆s6Step238EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step238EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step238EarlyControl_sigmaReleaseOwned : ([888] : List Wire).toFinset⊆s6Step238EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step238EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step238EarlyControl_sigmaRelease : s6Step238EarlyControlHistoryArena.release {888} (fun _ => false)=some s6Step238EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step238EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step238EarlyControlSigmaArena,s6Step238EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step238EarlyControl_sigma : compileHmrSigmaDropLog s6Step238EarlyControlHistoryArena false 0 0 254 888 []=some s6Step238EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step238EarlyControl_sigmaOwned⟩
  · exact s6Step238EarlyControl_sigmaRelease

private theorem s6Step238EarlyControl_zeroBorrow : s6Step238EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step238EarlyControlLog.zeroWork=some s6Step238EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step238EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step238EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step238EarlyControlZeroArena,s6Step238EarlyControlArena,s6Step238EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step238EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step238EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step238EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step238EarlyControl_zero : compileHmrEqualityLog s6Step238EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step238EarlyControlLog.zeroWork=some (s6Step238EarlyControlZeroArena,s6Step238EarlyControlLog.zeroWork,s6Step238EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step238EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step238EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step238EarlyControl_logged : s6Step238EarlyControlPlan.Logged s6Step238EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 888 254 253 252 251 857 49 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step238EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step238EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step238EarlyControl_zero
  · exact s6Step238EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step238EarlyControl_flags
  · exact s6Step238EarlyControl_fit
  · exact s6Step238EarlyControl_history
  · exact s6Step238EarlyControl_sigma
  · exact s6Step238EarlyControl_branch

private theorem s6Step238EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step238EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 888 254 253 252 251 857 49 s6Step238EarlyControlLog=some s6Step238EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step238EarlyControlPlan s6Step238EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 888 254 253 252 251 857 49 s6Step238EarlyControl_logged

private def s6Step238EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step238EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407],795⟩

private def s6Step238EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 864],776⟩

private def s6Step238EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149],777⟩

private def s6Step238EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876],775⟩

private def s6Step238FrontBank : WindowBank := ⟨s6Step238EntryFRow,s6Step238EntryGRow,s6Step238EntryFvRow,s6Step238EntryGvRow⟩

private def s6Step238Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 818, 795]

private def s6Step238Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 822, 868, 805, 777]

private def s6Step238Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 864, 786, 776]

private def s6Step238Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 869, 775]

private theorem s6Step238Counter_apart : Disjoint s6Step238HeadFvAfter.live s6Step238CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step238HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step238Counter_borrowed : s6Step238HeadFvAfter.checkBorrow 4 s6Step238CounterWork=some s6Step238CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step238HeadFvAfter s6Step238CounterDuring s6Step238CounterWork.toFinset s6Step238Counter_bounded s6Step238Counter_apart rfl

private theorem s6Step238Counter_owned : (888::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step238HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step238HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step238Counter_checked : compileHmrCounterStepLog s6Step238HeadFvAfter true 888 [774, 773, 772, 771, 770, 769] s6Step238CounterWork=some s6Step238CounterDuring := by
  have owned : ∀q∈888::[774, 773, 772, 771, 770, 769],q∈s6Step238HeadFvAfter.live := fun q hq => s6Step238Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step238Counter_borrowed

private def s6Step238EntryFAfter : Arena := s6Step238EntryFBefore

private theorem s6Step238EntryBank_incomingDistinct : ([s6Step238EntryFRow,s6Step238EntryGRow,s6Step238EntryFvRow,s6Step238EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step238EntryF_Incoming : rowsOwned s6Step238EntryFBefore [s6Step238EntryFRow,s6Step238EntryGRow,s6Step238EntryFvRow,s6Step238EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step238EntryFRow,s6Step238EntryGRow,s6Step238EntryFvRow,s6Step238EntryGvRow] 0 s6Step238EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step238EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step238EntryBank_outgoingOwned : rowsOwned s6Step238EntryGvAfter [s6Step238EntryFOut,s6Step238EntryGOut,s6Step238EntryFvOut,s6Step238EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step238EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step238EntryF_Outgoing : rowsOwned s6Step238EntryGvAfter [s6Step238EntryFOut,s6Step238EntryGOut,s6Step238EntryFvOut,s6Step238EntryGvOut] :=
  hmrRows_owned_drop s6Step238EntryGvAfter [s6Step238EntryFOut,s6Step238EntryGOut,s6Step238EntryFvOut,s6Step238EntryGvOut] 0 s6Step238EntryBank_outgoingOwned

private theorem s6Step238EntryF_distinct : (s6Step238EntryFRow.sign::s6Step238EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step238EntryF_owned : (s6Step238EntryFRow.sign::s6Step238EntryFRow.payload).toFinset⊆s6Step238EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step238EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step238EntryF_reserved : s6Step238EntryFBefore.reserve s6Step238EntryFFresh.toFinset=some s6Step238EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step238EntryFFresh,arenaWires]
  · norm_num [s6Step238EntryFBefore,s6Step238EntryFFresh,arenaWires]
  · simp only [s6Step238EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step238EntryF_checked : planRowResizeLog s6Step238EntryFBefore s6Step238EntryFRow 152 s6Step238EntryFFresh=
    some (s6Step238EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407],795⟩,growRow 795 s6Step238EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step238EntryFBefore s6Step238EntryFAfter s6Step238EntryFRow 152 s6Step238EntryFFresh
    s6Step238EntryF_distinct s6Step238EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step238EntryF_reserved
  have rowEq : WindowRow.mk (s6Step238EntryFRow.payload++s6Step238EntryFFresh) s6Step238EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step238EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step238EntryFvAfter : Arena := s6Step238EntryGAfter

private def s6Step238EntryFvBefore : Arena := s6Step238EntryGAfter

private theorem s6Step238EntryFv_Incoming : rowsOwned s6Step238EntryFvBefore [s6Step238EntryFvRow,s6Step238EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step238EntryFRow,s6Step238EntryGRow,s6Step238EntryFvRow,s6Step238EntryGvRow] 2 s6Step238EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step238EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step238EntryFv_Outgoing : rowsOwned s6Step238EntryGvAfter [s6Step238EntryFvOut,s6Step238EntryGvOut] :=
  hmrRows_owned_drop s6Step238EntryGvAfter [s6Step238EntryFOut,s6Step238EntryGOut,s6Step238EntryFvOut,s6Step238EntryGvOut] 2 s6Step238EntryBank_outgoingOwned

private theorem s6Step238EntryFv_distinct : (s6Step238EntryFvRow.sign::s6Step238EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step238EntryFv_owned : (s6Step238EntryFvRow.sign::s6Step238EntryFvRow.payload).toFinset⊆s6Step238EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step238EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step238EntryFv_reserved : s6Step238EntryFvBefore.reserve s6Step238EntryFvFresh.toFinset=some s6Step238EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step238EntryFvFresh,arenaWires]
  · norm_num [s6Step238EntryFvBefore,s6Step238EntryGAfter,s6Step238EntryFvFresh,arenaWires]
  · simp only [s6Step238EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step238EntryFv_checked : planRowResizeLog s6Step238EntryFvBefore s6Step238EntryFvRow 135 s6Step238EntryFvFresh=
    some (s6Step238EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 864],776⟩,growRow 776 s6Step238EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step238EntryFvBefore s6Step238EntryFvAfter s6Step238EntryFvRow 135 s6Step238EntryFvFresh
    s6Step238EntryFv_distinct s6Step238EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step238EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step238EntryFvRow.payload++s6Step238EntryFvFresh) s6Step238EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 864],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step238EntryGBefore : Arena := s6Step238EntryFBefore

private theorem s6Step238EntryG_Incoming : rowsOwned s6Step238EntryGBefore [s6Step238EntryGRow,s6Step238EntryFvRow,s6Step238EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step238EntryFRow,s6Step238EntryGRow,s6Step238EntryFvRow,s6Step238EntryGvRow] 1 s6Step238EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step238EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step238EntryG_Outgoing : rowsOwned s6Step238EntryGvAfter [s6Step238EntryGOut,s6Step238EntryFvOut,s6Step238EntryGvOut] :=
  hmrRows_owned_drop s6Step238EntryGvAfter [s6Step238EntryFOut,s6Step238EntryGOut,s6Step238EntryFvOut,s6Step238EntryGvOut] 1 s6Step238EntryBank_outgoingOwned

private theorem s6Step238EntryG_distinct : (s6Step238EntryGRow.sign::s6Step238EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step238EntryG_owned : (s6Step238EntryGRow.sign::s6Step238EntryGRow.payload).toFinset⊆s6Step238EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step238EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step238EntryG_reserved : s6Step238EntryGBefore.reserve s6Step238EntryGFresh.toFinset=some s6Step238EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step238EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step238EntryGBefore,s6Step238EntryFBefore,s6Step238EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step238EntryGAfter,s6Step238EntryGBefore,s6Step238EntryFBefore,s6Step238EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step238EntryG_checked : planRowResizeLog s6Step238EntryGBefore s6Step238EntryGRow 152 s6Step238EntryGFresh=
    some (s6Step238EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 822, 868],777⟩,growRow 777 s6Step238EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step238EntryGBefore s6Step238EntryGAfter s6Step238EntryGRow 152 s6Step238EntryGFresh
    s6Step238EntryG_distinct s6Step238EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step238EntryG_reserved
  have rowEq : WindowRow.mk (s6Step238EntryGRow.payload++s6Step238EntryGFresh) s6Step238EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 822, 868],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step238EntryGvBefore : Arena := s6Step238EntryGAfter

private theorem s6Step238EntryGv_Incoming : rowsOwned s6Step238EntryGvBefore [s6Step238EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step238EntryFRow,s6Step238EntryGRow,s6Step238EntryFvRow,s6Step238EntryGvRow] 3 s6Step238EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step238EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step238EntryGv_Outgoing : rowsOwned s6Step238EntryGvAfter [s6Step238EntryGvOut] :=
  hmrRows_owned_drop s6Step238EntryGvAfter [s6Step238EntryFOut,s6Step238EntryGOut,s6Step238EntryFvOut,s6Step238EntryGvOut] 3 s6Step238EntryBank_outgoingOwned

private theorem s6Step238EntryGv_distinct : (s6Step238EntryGvRow.sign::s6Step238EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step238EntryGv_owned : (s6Step238EntryGvRow.sign::s6Step238EntryGvRow.payload).toFinset⊆s6Step238EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step238EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step238EntryGv_reserved : s6Step238EntryGvBefore.reserve s6Step238EntryGvFresh.toFinset=some s6Step238EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step238EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step238EntryGvBefore,s6Step238EntryGAfter,s6Step238EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step238EntryGvAfter,s6Step238EntryGvBefore,s6Step238EntryGAfter,s6Step238EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step238EntryGv_checked : planRowResizeLog s6Step238EntryGvBefore s6Step238EntryGvRow 135 s6Step238EntryGvFresh=
    some (s6Step238EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908],775⟩,growRow 775 s6Step238EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step238EntryGvBefore s6Step238EntryGvAfter s6Step238EntryGvRow 135 s6Step238EntryGvFresh
    s6Step238EntryGv_distinct s6Step238EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step238EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step238EntryGvRow.payload++s6Step238EntryGvFresh) s6Step238EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step238EntryBank_rows : planWindowRowsLog s6Step238EntryFBefore [(s6Step238EntryFRow,152),(s6Step238EntryGRow,152),(s6Step238EntryFvRow,135),(s6Step238EntryGvRow,135)] [s6Step238EntryFFresh,s6Step238EntryGFresh,s6Step238EntryFvFresh,s6Step238EntryGvFresh]=
    some (s6Step238EntryGvAfter,[s6Step238EntryFOut,s6Step238EntryGOut,s6Step238EntryFvOut,s6Step238EntryGvOut],(growRow 795 s6Step238EntryFFresh ++ (growRow 777 s6Step238EntryGFresh ++ (growRow 776 s6Step238EntryFvFresh ++ (growRow 775 s6Step238EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step238EntryGvAfter [] []=some (s6Step238EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step238EntryGvBefore s6Step238EntryGvAfter s6Step238EntryGvAfter
    s6Step238EntryGvRow s6Step238EntryGvOut 135 s6Step238EntryGvFresh [] [] []
    (growRow 775 s6Step238EntryGvFresh) ([]) s6Step238EntryGv_Incoming s6Step238EntryGv_checked h4 s6Step238EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step238EntryFvBefore s6Step238EntryFvAfter s6Step238EntryGvAfter
    s6Step238EntryFvRow s6Step238EntryFvOut 135 s6Step238EntryFvFresh [(s6Step238EntryGvRow,135)] [s6Step238EntryGvFresh] [s6Step238EntryGvOut]
    (growRow 776 s6Step238EntryFvFresh) ((growRow 775 s6Step238EntryGvFresh ++ [])) s6Step238EntryFv_Incoming s6Step238EntryFv_checked h3 s6Step238EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step238EntryGBefore s6Step238EntryGAfter s6Step238EntryGvAfter
    s6Step238EntryGRow s6Step238EntryGOut 152 s6Step238EntryGFresh [(s6Step238EntryFvRow,135),(s6Step238EntryGvRow,135)] [s6Step238EntryFvFresh,s6Step238EntryGvFresh] [s6Step238EntryFvOut,s6Step238EntryGvOut]
    (growRow 777 s6Step238EntryGFresh) ((growRow 776 s6Step238EntryFvFresh ++ (growRow 775 s6Step238EntryGvFresh ++ []))) s6Step238EntryG_Incoming s6Step238EntryG_checked h2 s6Step238EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step238EntryFBefore s6Step238EntryFAfter s6Step238EntryGvAfter
    s6Step238EntryFRow s6Step238EntryFOut 152 s6Step238EntryFFresh [(s6Step238EntryGRow,152),(s6Step238EntryFvRow,135),(s6Step238EntryGvRow,135)] [s6Step238EntryGFresh,s6Step238EntryFvFresh,s6Step238EntryGvFresh] [s6Step238EntryGOut,s6Step238EntryFvOut,s6Step238EntryGvOut]
    (growRow 795 s6Step238EntryFFresh) ((growRow 777 s6Step238EntryGFresh ++ (growRow 776 s6Step238EntryFvFresh ++ (growRow 775 s6Step238EntryGvFresh ++ [])))) s6Step238EntryF_Incoming s6Step238EntryF_checked h1 s6Step238EntryF_Outgoing
  exact h0

private theorem s6Step238EntryBank_checked : compileHmrBankResizeLog .entry s6Step238EntryFBefore ⟨s6Step238EntryFRow,s6Step238EntryGRow,s6Step238EntryFvRow,s6Step238EntryGvRow⟩ ⟨152,152,135,135⟩ [s6Step238EntryFFresh,s6Step238EntryGFresh,s6Step238EntryFvFresh,s6Step238EntryGvFresh]=
    some (s6Step238EntryGvAfter,⟨s6Step238EntryFOut,s6Step238EntryGOut,s6Step238EntryFvOut,s6Step238EntryGvOut⟩,(growRow 795 s6Step238EntryFFresh ++ (growRow 777 s6Step238EntryGFresh ++ (growRow 776 s6Step238EntryFvFresh ++ (growRow 775 s6Step238EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step238EntryBank_rows]
  rfl

private def s6Step238ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<406) ∨ (408≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step238ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step238ExitFBefore : Arena := s6Step238ExitGAfter

private def s6Step238ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 818],795⟩

private def s6Step238ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 864, 786],776⟩

private def s6Step238ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 822, 868, 805],777⟩

private def s6Step238ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 869],775⟩

private theorem s6Step238ExitBank_incomingDistinct : ([s6Step238ExitGRow,s6Step238ExitFRow,s6Step238ExitFvRow,s6Step238ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step238ExitF_Incoming : rowsOwned s6Step238ExitFBefore [s6Step238ExitFRow,s6Step238ExitFvRow,s6Step238ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step238ExitGRow,s6Step238ExitFRow,s6Step238ExitFvRow,s6Step238ExitGvRow] 1 s6Step238ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step238ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step238ExitBank_outgoingOwned : rowsOwned s6Step238ExitGvAfter [s6Step238ExitGOut,s6Step238ExitFOut,s6Step238ExitFvOut,s6Step238ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step238ExitGvAfter (fun q => (0≤q ∧ q<406) ∨ (408≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step238ExitF_Outgoing : rowsOwned s6Step238ExitGvAfter [s6Step238ExitFOut,s6Step238ExitFvOut,s6Step238ExitGvOut] :=
  hmrRows_owned_drop s6Step238ExitGvAfter [s6Step238ExitGOut,s6Step238ExitFOut,s6Step238ExitFvOut,s6Step238ExitGvOut] 1 s6Step238ExitBank_outgoingOwned

private theorem s6Step238ExitF_distinct : (s6Step238ExitFRow.sign::s6Step238ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step238ExitF_owned : (s6Step238ExitFRow.sign::s6Step238ExitFRow.payload).toFinset⊆s6Step238ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step238ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step238ExitF_retired : s6Step238ExitFBefore.retireSet s6Step238ExitFExtra.toFinset=s6Step238ExitFAfter := by
  unfold Arena.retireSet s6Step238ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step238ExitFBefore,s6Step238ExitGAfter,s6Step238ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step238ExitF_checked : planRowResizeLog s6Step238ExitFBefore s6Step238ExitFRow 150 []=
    some (s6Step238ExitFAfter,s6Step238ExitFOut,shrinkRow 795 s6Step238ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step238ExitFBefore s6Step238ExitFRow 150 s6Step238ExitF_distinct s6Step238ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step238ExitFRow.payload.take 150) s6Step238ExitFRow.sign=s6Step238ExitFOut := by decide +kernel
  have hi : s6Step238ExitFRow.payload.drop 150=s6Step238ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step238ExitF_retired] at result
  exact result

private def s6Step238ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<406) ∨ (408≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step238ExitFvBefore : Arena := s6Step238ExitFAfter

private theorem s6Step238ExitFv_Incoming : rowsOwned s6Step238ExitFvBefore [s6Step238ExitFvRow,s6Step238ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step238ExitGRow,s6Step238ExitFRow,s6Step238ExitFvRow,s6Step238ExitGvRow] 2 s6Step238ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step238ExitFvBefore (fun q => (0≤q ∧ q<406) ∨ (408≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step238ExitFv_Outgoing : rowsOwned s6Step238ExitGvAfter [s6Step238ExitFvOut,s6Step238ExitGvOut] :=
  hmrRows_owned_drop s6Step238ExitGvAfter [s6Step238ExitGOut,s6Step238ExitFOut,s6Step238ExitFvOut,s6Step238ExitGvOut] 2 s6Step238ExitBank_outgoingOwned

private theorem s6Step238ExitFv_distinct : (s6Step238ExitFvRow.sign::s6Step238ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step238ExitFv_owned : (s6Step238ExitFvRow.sign::s6Step238ExitFvRow.payload).toFinset⊆s6Step238ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step238ExitFvBefore (fun q => (0≤q ∧ q<406) ∨ (408≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step238ExitFv_retired : s6Step238ExitFvBefore.retireSet s6Step238ExitFvExtra.toFinset=s6Step238ExitFvAfter := by
  unfold Arena.retireSet s6Step238ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step238ExitFvBefore,s6Step238ExitFAfter,s6Step238ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step238ExitFv_checked : planRowResizeLog s6Step238ExitFvBefore s6Step238ExitFvRow 134 []=
    some (s6Step238ExitFvAfter,s6Step238ExitFvOut,shrinkRow 776 s6Step238ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step238ExitFvBefore s6Step238ExitFvRow 134 s6Step238ExitFv_distinct s6Step238ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step238ExitFvRow.payload.take 134) s6Step238ExitFvRow.sign=s6Step238ExitFvOut := by decide +kernel
  have hi : s6Step238ExitFvRow.payload.drop 134=s6Step238ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step238ExitFv_retired] at result
  exact result

private def s6Step238ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step238ExitG_Incoming : rowsOwned s6Step238ExitGBefore [s6Step238ExitGRow,s6Step238ExitFRow,s6Step238ExitFvRow,s6Step238ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step238ExitGRow,s6Step238ExitFRow,s6Step238ExitFvRow,s6Step238ExitGvRow] 0 s6Step238ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step238ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step238ExitG_Outgoing : rowsOwned s6Step238ExitGvAfter [s6Step238ExitGOut,s6Step238ExitFOut,s6Step238ExitFvOut,s6Step238ExitGvOut] :=
  hmrRows_owned_drop s6Step238ExitGvAfter [s6Step238ExitGOut,s6Step238ExitFOut,s6Step238ExitFvOut,s6Step238ExitGvOut] 0 s6Step238ExitBank_outgoingOwned

private theorem s6Step238ExitG_distinct : (s6Step238ExitGRow.sign::s6Step238ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step238ExitG_owned : (s6Step238ExitGRow.sign::s6Step238ExitGRow.payload).toFinset⊆s6Step238ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step238ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step238ExitG_retired : s6Step238ExitGBefore.retireSet s6Step238ExitGExtra.toFinset=s6Step238ExitGAfter := by
  unfold Arena.retireSet s6Step238ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step238ExitGBefore,s6Step238ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step238ExitG_checked : planRowResizeLog s6Step238ExitGBefore s6Step238ExitGRow 151 []=
    some (s6Step238ExitGAfter,s6Step238ExitGOut,shrinkRow 777 s6Step238ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step238ExitGBefore s6Step238ExitGRow 151 s6Step238ExitG_distinct s6Step238ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step238ExitGRow.payload.take 151) s6Step238ExitGRow.sign=s6Step238ExitGOut := by decide +kernel
  have hi : s6Step238ExitGRow.payload.drop 151=s6Step238ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step238ExitG_retired] at result
  exact result

private def s6Step238ExitGvBefore : Arena := s6Step238ExitFvAfter

private theorem s6Step238ExitGv_Incoming : rowsOwned s6Step238ExitGvBefore [s6Step238ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step238ExitGRow,s6Step238ExitFRow,s6Step238ExitFvRow,s6Step238ExitGvRow] 3 s6Step238ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step238ExitGvBefore (fun q => (0≤q ∧ q<406) ∨ (408≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step238ExitGv_Outgoing : rowsOwned s6Step238ExitGvAfter [s6Step238ExitGvOut] :=
  hmrRows_owned_drop s6Step238ExitGvAfter [s6Step238ExitGOut,s6Step238ExitFOut,s6Step238ExitFvOut,s6Step238ExitGvOut] 3 s6Step238ExitBank_outgoingOwned

private theorem s6Step238ExitGv_distinct : (s6Step238ExitGvRow.sign::s6Step238ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step238ExitGv_owned : (s6Step238ExitGvRow.sign::s6Step238ExitGvRow.payload).toFinset⊆s6Step238ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step238ExitGvBefore (fun q => (0≤q ∧ q<406) ∨ (408≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step238ExitGv_retired : s6Step238ExitGvBefore.retireSet s6Step238ExitGvExtra.toFinset=s6Step238ExitGvAfter := by
  unfold Arena.retireSet s6Step238ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step238ExitGvBefore,s6Step238ExitFvAfter,s6Step238ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step238ExitGv_checked : planRowResizeLog s6Step238ExitGvBefore s6Step238ExitGvRow 135 []=
    some (s6Step238ExitGvAfter,s6Step238ExitGvOut,shrinkRow 775 s6Step238ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step238ExitGvBefore s6Step238ExitGvRow 135 s6Step238ExitGv_distinct s6Step238ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step238ExitGvRow.payload.take 135) s6Step238ExitGvRow.sign=s6Step238ExitGvOut := by decide +kernel
  have hi : s6Step238ExitGvRow.payload.drop 135=s6Step238ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step238ExitGv_retired] at result
  exact result

private theorem s6Step238ExitBank_rows : planWindowRowsLog s6Step238ExitGBefore [(s6Step238ExitGRow,151),(s6Step238ExitFRow,150),(s6Step238ExitFvRow,134),(s6Step238ExitGvRow,135)] [[],[],[],[]]=
    some (s6Step238ExitGvAfter,[s6Step238ExitGOut,s6Step238ExitFOut,s6Step238ExitFvOut,s6Step238ExitGvOut],(shrinkRow 777 s6Step238ExitGExtra ++ (shrinkRow 795 s6Step238ExitFExtra ++ (shrinkRow 776 s6Step238ExitFvExtra ++ (shrinkRow 775 s6Step238ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step238ExitGvAfter [] []=some (s6Step238ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step238ExitGvBefore s6Step238ExitGvAfter s6Step238ExitGvAfter
    s6Step238ExitGvRow s6Step238ExitGvOut 135 [] [] [] []
    (shrinkRow 775 s6Step238ExitGvExtra) ([]) s6Step238ExitGv_Incoming s6Step238ExitGv_checked h4 s6Step238ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step238ExitFvBefore s6Step238ExitFvAfter s6Step238ExitGvAfter
    s6Step238ExitFvRow s6Step238ExitFvOut 134 [] [(s6Step238ExitGvRow,135)] [[]] [s6Step238ExitGvOut]
    (shrinkRow 776 s6Step238ExitFvExtra) ((shrinkRow 775 s6Step238ExitGvExtra ++ [])) s6Step238ExitFv_Incoming s6Step238ExitFv_checked h3 s6Step238ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step238ExitFBefore s6Step238ExitFAfter s6Step238ExitGvAfter
    s6Step238ExitFRow s6Step238ExitFOut 150 [] [(s6Step238ExitFvRow,134),(s6Step238ExitGvRow,135)] [[],[]] [s6Step238ExitFvOut,s6Step238ExitGvOut]
    (shrinkRow 795 s6Step238ExitFExtra) ((shrinkRow 776 s6Step238ExitFvExtra ++ (shrinkRow 775 s6Step238ExitGvExtra ++ []))) s6Step238ExitF_Incoming s6Step238ExitF_checked h2 s6Step238ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step238ExitGBefore s6Step238ExitGAfter s6Step238ExitGvAfter
    s6Step238ExitGRow s6Step238ExitGOut 151 [] [(s6Step238ExitFRow,150),(s6Step238ExitFvRow,134),(s6Step238ExitGvRow,135)] [[],[],[]] [s6Step238ExitFOut,s6Step238ExitFvOut,s6Step238ExitGvOut]
    (shrinkRow 777 s6Step238ExitGExtra) ((shrinkRow 795 s6Step238ExitFExtra ++ (shrinkRow 776 s6Step238ExitFvExtra ++ (shrinkRow 775 s6Step238ExitGvExtra ++ [])))) s6Step238ExitG_Incoming s6Step238ExitG_checked h1 s6Step238ExitG_Outgoing
  exact h0

private theorem s6Step238ExitBank_checked : compileHmrBankResizeLog .exit s6Step238ExitGBefore ⟨s6Step238ExitFRow,s6Step238ExitGRow,s6Step238ExitFvRow,s6Step238ExitGvRow⟩ ⟨150,151,134,135⟩ [[],[],[],[]]=
    some (s6Step238ExitGvAfter,⟨s6Step238ExitFOut,s6Step238ExitGOut,s6Step238ExitFvOut,s6Step238ExitGvOut⟩,(shrinkRow 777 s6Step238ExitGExtra ++ (shrinkRow 795 s6Step238ExitFExtra ++ (shrinkRow 776 s6Step238ExitFvExtra ++ (shrinkRow 775 s6Step238ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step238ExitBank_rows]
  rfl

private theorem s6Step238Add0_apart : Disjoint s6Step238Add0Arena.live s6Step238Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step238Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step238Add0_card : s6Step238Add0Arena.live.card=897 := by
  decide +kernel

private theorem s6Step238Add0_borrowed : s6Step238Add0Arena.checkBorrow (hmrHybridCount s6Step238Add0Arena s6Step238Add0B.length) s6Step238Add0Work=some s6Step238Add0During := by
  have len : s6Step238Add0Work.length=hmrHybridCount s6Step238Add0Arena s6Step238Add0B.length := by
    rw [hmrHybridCount,s6Step238Add0_card]
    decide +kernel
  have nd : s6Step238Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step238Add0Arena s6Step238Add0During s6Step238Add0Work.toFinset s6Step238Add0_bounded s6Step238Add0_apart rfl

private theorem s6Step238Add0_distinct : (810::857::809::(s6Step238Add0A++s6Step238Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step238Add0_owned : (810::857::809::(s6Step238Add0A++s6Step238Add0B)).toFinset⊆s6Step238Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step238Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step238Add0_checked : compileHmrHybridCinLog s6Step238Add0Arena 857 810 809 s6Step238Add0A s6Step238Add0B s6Step238Add0Work=some s6Step238Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step238Add0Arena s6Step238Add0During 857 810 809 s6Step238Add0A s6Step238Add0B s6Step238Add0Work
    (by decide +kernel) (by decide +kernel) s6Step238Add0_distinct
    (fun q hq => s6Step238Add0_owned (List.mem_toFinset.mpr hq)) s6Step238Add0_borrowed

private theorem s6Step238Add1_apart : Disjoint s6Step238Add1Arena.live s6Step238Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step238Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step238Add1_card : s6Step238Add1Arena.live.card=897 := by
  decide +kernel

private theorem s6Step238Add1_borrowed : s6Step238Add1Arena.checkBorrow (hmrHybridCount s6Step238Add1Arena s6Step238Add1B.length) s6Step238Add1Work=some s6Step238Add1During := by
  have len : s6Step238Add1Work.length=hmrHybridCount s6Step238Add1Arena s6Step238Add1B.length := by
    rw [hmrHybridCount,s6Step238Add1_card]
    decide +kernel
  have nd : s6Step238Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step238Add1Arena s6Step238Add1During s6Step238Add1Work.toFinset s6Step238Add1_bounded s6Step238Add1_apart rfl

private theorem s6Step238Add1_distinct : (810::857::809::(s6Step238Add1A++s6Step238Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step238Add1_owned : (810::857::809::(s6Step238Add1A++s6Step238Add1B)).toFinset⊆s6Step238Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step238Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step238Add1_checked : compileHmrHybridCinLog s6Step238Add1Arena 857 810 809 s6Step238Add1A s6Step238Add1B s6Step238Add1Work=some s6Step238Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step238Add1Arena s6Step238Add1During 857 810 809 s6Step238Add1A s6Step238Add1B s6Step238Add1Work
    (by decide +kernel) (by decide +kernel) s6Step238Add1_distinct
    (fun q hq => s6Step238Add1_owned (List.mem_toFinset.mpr hq)) s6Step238Add1_borrowed

private theorem s6Step238F4_apart : Disjoint (s6Step238Add0A++s6Step238Add0B).toFinset (s6Step238Add1A++s6Step238Add1B).toFinset := by
  have nd : ((s6Step238Add0A++s6Step238Add0B)++(s6Step238Add1A++s6Step238Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step238F4_carry : s6Step238F4FlagArena.checkBorrow 1 [809]=some s6Step238Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step238F4FlagArena,s6Step238HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step238F4FlagArena,s6Step238HeadFvAfter,s6Step238Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step238F4_distinct : (888::857::810::809::((s6Step238Add0A++s6Step238Add1A)++(s6Step238Add0B++s6Step238Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step238F4_flag : s6Step238HeadFvAfter.checkBorrow 1 [810]=some s6Step238F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step238HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step238F4_owned : (888::857::((s6Step238Add0A++s6Step238Add1A)++(s6Step238Add0B++s6Step238Add1B))).toFinset⊆s6Step238HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step238HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step238F4_checked : compileHmrHybridF4Log s6Step238HeadFvAfter 888 857 s6Step238Add0A s6Step238Add0B s6Step238Add1A s6Step238Add1B [810] [809] s6Step238Add0Work s6Step238Add1Work=some s6Step238F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step238HeadFvAfter s6Step238F4FlagArena s6Step238Add0Arena s6Step238Add0During s6Step238Add1During 888 857
    s6Step238Add0A s6Step238Add0B s6Step238Add1A s6Step238Add1B [810] [809] s6Step238Add0Work s6Step238Add1Work
    (fun q hq => s6Step238F4_owned (List.mem_toFinset.mpr hq)) s6Step238F4_flag s6Step238F4_carry
    s6Step238F4_distinct s6Step238F4_apart s6Step238Add0_checked s6Step238Add1_checked

private theorem s6Step238Front_branch : s6Step238FrontSigmaArena.checkBorrow 1 [857]=some s6Step238HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step238FrontSigmaArena,s6Step238EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step238FrontSigmaArena,s6Step238EntryGvAfter,s6Step238HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step238Front_entry : HmrFrontEntryValid s6Step238EntryFBefore s6Step238FrontBank 152 135 ⟨150,151,134,135⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step238FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step238EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step238EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step238FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step238Front_sigma : s6Step238EntryGvAfter.checkBorrow 1 [888]=some s6Step238FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step238EntryGvAfter,arenaWires]
  · rfl

private def s6Step238HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step238HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step238HeadFBefore : Arena := s6Step238HeadGAfter

private def s6Step238HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407],795⟩

private def s6Step238HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 864],776⟩

private def s6Step238HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 822, 868],777⟩

private def s6Step238HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908],775⟩

private theorem s6Step238HeadBank_incomingDistinct : ([s6Step238HeadGRow,s6Step238HeadFRow,s6Step238HeadGvRow,s6Step238HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step238HeadF_Incoming : rowsOwned s6Step238HeadFBefore [s6Step238HeadFRow,s6Step238HeadGvRow,s6Step238HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step238HeadGRow,s6Step238HeadFRow,s6Step238HeadGvRow,s6Step238HeadFvRow] 1 s6Step238HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step238HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step238HeadBank_outgoingOwned : rowsOwned s6Step238HeadFvAfter [s6Step238HeadGOut,s6Step238HeadFOut,s6Step238HeadGvOut,s6Step238HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step238HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step238HeadF_Outgoing : rowsOwned s6Step238HeadFvAfter [s6Step238HeadFOut,s6Step238HeadGvOut,s6Step238HeadFvOut] :=
  hmrRows_owned_drop s6Step238HeadFvAfter [s6Step238HeadGOut,s6Step238HeadFOut,s6Step238HeadGvOut,s6Step238HeadFvOut] 1 s6Step238HeadBank_outgoingOwned

private theorem s6Step238HeadF_distinct : (s6Step238HeadFRow.sign::s6Step238HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step238HeadF_owned : (s6Step238HeadFRow.sign::s6Step238HeadFRow.payload).toFinset⊆s6Step238HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step238HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step238HeadF_reserved : s6Step238HeadFBefore.reserve s6Step238HeadFFresh.toFinset=some s6Step238HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step238HeadFFresh,arenaWires]
  · norm_num [s6Step238HeadFBefore,s6Step238HeadGAfter,s6Step238HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step238HeadFAfter,s6Step238HeadFBefore,s6Step238HeadGAfter,s6Step238HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step238HeadF_checked : planRowResizeLog s6Step238HeadFBefore s6Step238HeadFRow 153 s6Step238HeadFFresh=
    some (s6Step238HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 818],795⟩,growRow 795 s6Step238HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step238HeadFBefore s6Step238HeadFAfter s6Step238HeadFRow 153 s6Step238HeadFFresh
    s6Step238HeadF_distinct s6Step238HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step238HeadF_reserved
  have rowEq : WindowRow.mk (s6Step238HeadFRow.payload++s6Step238HeadFFresh) s6Step238HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 818],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step238HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step238HeadFvBefore : Arena := s6Step238HeadGvAfter

private theorem s6Step238HeadFv_Incoming : rowsOwned s6Step238HeadFvBefore [s6Step238HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step238HeadGRow,s6Step238HeadFRow,s6Step238HeadGvRow,s6Step238HeadFvRow] 3 s6Step238HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step238HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step238HeadFv_Outgoing : rowsOwned s6Step238HeadFvAfter [s6Step238HeadFvOut] :=
  hmrRows_owned_drop s6Step238HeadFvAfter [s6Step238HeadGOut,s6Step238HeadFOut,s6Step238HeadGvOut,s6Step238HeadFvOut] 3 s6Step238HeadBank_outgoingOwned

private theorem s6Step238HeadFv_distinct : (s6Step238HeadFvRow.sign::s6Step238HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step238HeadFv_owned : (s6Step238HeadFvRow.sign::s6Step238HeadFvRow.payload).toFinset⊆s6Step238HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step238HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step238HeadFv_reserved : s6Step238HeadFvBefore.reserve s6Step238HeadFvFresh.toFinset=some s6Step238HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step238HeadFvFresh,arenaWires]
  · norm_num [s6Step238HeadFvBefore,s6Step238HeadGvAfter,s6Step238HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step238HeadFvAfter,s6Step238HeadFvBefore,s6Step238HeadGvAfter,s6Step238HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step238HeadFv_checked : planRowResizeLog s6Step238HeadFvBefore s6Step238HeadFvRow 136 s6Step238HeadFvFresh=
    some (s6Step238HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 864, 786],776⟩,growRow 776 s6Step238HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step238HeadFvBefore s6Step238HeadFvAfter s6Step238HeadFvRow 136 s6Step238HeadFvFresh
    s6Step238HeadFv_distinct s6Step238HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step238HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step238HeadFvRow.payload++s6Step238HeadFvFresh) s6Step238HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 864, 786],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step238HeadG_Incoming : rowsOwned s6Step238HeadGBefore [s6Step238HeadGRow,s6Step238HeadFRow,s6Step238HeadGvRow,s6Step238HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step238HeadGRow,s6Step238HeadFRow,s6Step238HeadGvRow,s6Step238HeadFvRow] 0 s6Step238HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step238HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step238HeadG_Outgoing : rowsOwned s6Step238HeadFvAfter [s6Step238HeadGOut,s6Step238HeadFOut,s6Step238HeadGvOut,s6Step238HeadFvOut] :=
  hmrRows_owned_drop s6Step238HeadFvAfter [s6Step238HeadGOut,s6Step238HeadFOut,s6Step238HeadGvOut,s6Step238HeadFvOut] 0 s6Step238HeadBank_outgoingOwned

private theorem s6Step238HeadG_distinct : (s6Step238HeadGRow.sign::s6Step238HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step238HeadG_owned : (s6Step238HeadGRow.sign::s6Step238HeadGRow.payload).toFinset⊆s6Step238HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step238HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step238HeadG_reserved : s6Step238HeadGBefore.reserve s6Step238HeadGFresh.toFinset=some s6Step238HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step238HeadGFresh,arenaWires]
  · norm_num [s6Step238HeadGBefore,s6Step238HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step238HeadGAfter,s6Step238HeadGBefore,s6Step238HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step238HeadG_checked : planRowResizeLog s6Step238HeadGBefore s6Step238HeadGRow 153 s6Step238HeadGFresh=
    some (s6Step238HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 822, 868, 805],777⟩,growRow 777 s6Step238HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step238HeadGBefore s6Step238HeadGAfter s6Step238HeadGRow 153 s6Step238HeadGFresh
    s6Step238HeadG_distinct s6Step238HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step238HeadG_reserved
  have rowEq : WindowRow.mk (s6Step238HeadGRow.payload++s6Step238HeadGFresh) s6Step238HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 822, 868, 805],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step238HeadGvBefore : Arena := s6Step238HeadFAfter

private theorem s6Step238HeadGv_Incoming : rowsOwned s6Step238HeadGvBefore [s6Step238HeadGvRow,s6Step238HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step238HeadGRow,s6Step238HeadFRow,s6Step238HeadGvRow,s6Step238HeadFvRow] 2 s6Step238HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step238HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step238HeadGv_Outgoing : rowsOwned s6Step238HeadFvAfter [s6Step238HeadGvOut,s6Step238HeadFvOut] :=
  hmrRows_owned_drop s6Step238HeadFvAfter [s6Step238HeadGOut,s6Step238HeadFOut,s6Step238HeadGvOut,s6Step238HeadFvOut] 2 s6Step238HeadBank_outgoingOwned

private theorem s6Step238HeadGv_distinct : (s6Step238HeadGvRow.sign::s6Step238HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step238HeadGv_owned : (s6Step238HeadGvRow.sign::s6Step238HeadGvRow.payload).toFinset⊆s6Step238HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step238HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step238HeadGv_reserved : s6Step238HeadGvBefore.reserve s6Step238HeadGvFresh.toFinset=some s6Step238HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step238HeadGvFresh,arenaWires]
  · norm_num [s6Step238HeadGvBefore,s6Step238HeadFAfter,s6Step238HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step238HeadGvAfter,s6Step238HeadGvBefore,s6Step238HeadFAfter,s6Step238HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step238HeadGv_checked : planRowResizeLog s6Step238HeadGvBefore s6Step238HeadGvRow 136 s6Step238HeadGvFresh=
    some (s6Step238HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 869],775⟩,growRow 775 s6Step238HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step238HeadGvBefore s6Step238HeadGvAfter s6Step238HeadGvRow 136 s6Step238HeadGvFresh
    s6Step238HeadGv_distinct s6Step238HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step238HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step238HeadGvRow.payload++s6Step238HeadGvFresh) s6Step238HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 869],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step238HeadBank_rows : planWindowRowsLog s6Step238HeadGBefore [(s6Step238HeadGRow,153),(s6Step238HeadFRow,153),(s6Step238HeadGvRow,136),(s6Step238HeadFvRow,136)] [s6Step238HeadGFresh,s6Step238HeadFFresh,s6Step238HeadGvFresh,s6Step238HeadFvFresh]=
    some (s6Step238HeadFvAfter,[s6Step238HeadGOut,s6Step238HeadFOut,s6Step238HeadGvOut,s6Step238HeadFvOut],(growRow 777 s6Step238HeadGFresh ++ (growRow 795 s6Step238HeadFFresh ++ (growRow 775 s6Step238HeadGvFresh ++ (growRow 776 s6Step238HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step238HeadFvAfter [] []=some (s6Step238HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step238HeadFvBefore s6Step238HeadFvAfter s6Step238HeadFvAfter
    s6Step238HeadFvRow s6Step238HeadFvOut 136 s6Step238HeadFvFresh [] [] []
    (growRow 776 s6Step238HeadFvFresh) ([]) s6Step238HeadFv_Incoming s6Step238HeadFv_checked h4 s6Step238HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step238HeadGvBefore s6Step238HeadGvAfter s6Step238HeadFvAfter
    s6Step238HeadGvRow s6Step238HeadGvOut 136 s6Step238HeadGvFresh [(s6Step238HeadFvRow,136)] [s6Step238HeadFvFresh] [s6Step238HeadFvOut]
    (growRow 775 s6Step238HeadGvFresh) ((growRow 776 s6Step238HeadFvFresh ++ [])) s6Step238HeadGv_Incoming s6Step238HeadGv_checked h3 s6Step238HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step238HeadFBefore s6Step238HeadFAfter s6Step238HeadFvAfter
    s6Step238HeadFRow s6Step238HeadFOut 153 s6Step238HeadFFresh [(s6Step238HeadGvRow,136),(s6Step238HeadFvRow,136)] [s6Step238HeadGvFresh,s6Step238HeadFvFresh] [s6Step238HeadGvOut,s6Step238HeadFvOut]
    (growRow 795 s6Step238HeadFFresh) ((growRow 775 s6Step238HeadGvFresh ++ (growRow 776 s6Step238HeadFvFresh ++ []))) s6Step238HeadF_Incoming s6Step238HeadF_checked h2 s6Step238HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step238HeadGBefore s6Step238HeadGAfter s6Step238HeadFvAfter
    s6Step238HeadGRow s6Step238HeadGOut 153 s6Step238HeadGFresh [(s6Step238HeadFRow,153),(s6Step238HeadGvRow,136),(s6Step238HeadFvRow,136)] [s6Step238HeadFFresh,s6Step238HeadGvFresh,s6Step238HeadFvFresh] [s6Step238HeadFOut,s6Step238HeadGvOut,s6Step238HeadFvOut]
    (growRow 777 s6Step238HeadGFresh) ((growRow 795 s6Step238HeadFFresh ++ (growRow 775 s6Step238HeadGvFresh ++ (growRow 776 s6Step238HeadFvFresh ++ [])))) s6Step238HeadG_Incoming s6Step238HeadG_checked h1 s6Step238HeadG_Outgoing
  exact h0

private theorem s6Step238HeadBank_checked : compileHmrBankResizeLog .headroom s6Step238HeadGBefore ⟨s6Step238HeadFRow,s6Step238HeadGRow,s6Step238HeadFvRow,s6Step238HeadGvRow⟩ ⟨153,153,136,136⟩ [s6Step238HeadGFresh,s6Step238HeadFFresh,s6Step238HeadGvFresh,s6Step238HeadFvFresh]=
    some (s6Step238HeadFvAfter,⟨s6Step238HeadFOut,s6Step238HeadGOut,s6Step238HeadFvOut,s6Step238HeadGvOut⟩,(growRow 777 s6Step238HeadGFresh ++ (growRow 795 s6Step238HeadFFresh ++ (growRow 775 s6Step238HeadGvFresh ++ (growRow 776 s6Step238HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step238HeadBank_rows]
  rfl

private theorem s6Step238Front_checked : compileHmrSourceFrontLog s6Step238EntryFBefore s6Step238FrontBank 152 135 ⟨150,151,134,135⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step238FrontLog=some s6Step238FrontPlan := by
  have pairEq : s6Step238FrontPair=⟨s6Step238HeadFRow,s6Step238HeadGRow,s6Step238HeadFvRow,s6Step238HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step238FrontHead=⟨s6Step238ExitFRow,s6Step238ExitGRow,s6Step238ExitFvRow,s6Step238ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step238Add0A=s6Step238FrontHead.f.wires := by decide +kernel
  have gEq : s6Step238Add0B=s6Step238FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step238Add1A=s6Step238FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step238Add1B=s6Step238FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step238EntryFBefore s6Step238FrontBank 152 135 ⟨150,151,134,135⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step238FrontLog s6Step238FrontPlan
  · exact s6Step238Front_entry
  · exact s6Step238EntryBank_checked
  · exact s6Step238Front_sigma
  · rfl
  · exact s6Step238Front_branch
  · rfl
  · simpa only [s6Step238FrontPlan,pairEq] using s6Step238HeadBank_checked
  · simpa only [s6Step238FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step238F4_checked
  · exact s6Step238Counter_checked
  · rfl
  · simpa only [s6Step238FrontPlan,headEq] using s6Step238ExitBank_checked

private theorem s6Step238Complete_explicit_checked : compileHmrEarlyStepLog s6Step238EntryFBefore s6Step238FrontBank 152 135 ⟨150,151,134,135⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step238CompleteLog=some s6Step238CompletePlan := by
  let Q := s6Step238EarlyControlPlan
  have hq := s6Step238EarlyControl_plan_checked
  have fv1 : s6Step238CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step238CompleteOut.fv.payload[2]?.getD s6Step238CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step238CompleteOut.fv.payload[3]?.getD s6Step238CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step238CompleteOut.fv.payload[4]?.getD s6Step238CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step238EntryFBefore s6Step238EarlyControlArena s6Step238FrontBank 152 135 ⟨150,151,134,135⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step238CompleteLog s6Step238FrontPlan Q
    s6Step238Front_checked s6Step238Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step238Complete_owned s6Step238Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step238EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 888 s6Step238CompleteOut.fv.second (s6Step238CompleteOut.fv.payload[2]?.getD s6Step238CompleteOut.fv.sign) (s6Step238CompleteOut.fv.payload[3]?.getD s6Step238CompleteOut.fv.sign) (s6Step238CompleteOut.fv.payload[4]?.getD s6Step238CompleteOut.fv.sign) 857 49 s6Step238EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep238Arena : Arena := s6Step238EntryFBefore
def s6PrivateStep238Bank : WindowBank := s6Step238FrontBank
def s6PrivateStep238Spec : HmrSourceWalkStepLog := ⟨152,135,⟨150,151,134,135⟩,49,.early s6Step238CompleteLog⟩
def s6PrivateStep238Plan : HmrSourceStepPlan := .early s6Step238CompletePlan
theorem s6PrivateStep238_source : s6PrivateStep238Spec=s6ObservedLogs224[14] := rfl
theorem s6PrivateStep238_checked : compileHmrSourceStepLog s6PrivateStep238Arena s6PrivateStep238Bank
    s6PrivateStep238Spec.fgWidth s6PrivateStep238Spec.vWidth s6PrivateStep238Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900]
    6 498 238 s6PrivateStep238Spec.need none s6PrivateStep238Spec.log=some s6PrivateStep238Plan := by
  change compileHmrSourceStepLog s6Step238EntryFBefore s6Step238FrontBank 152 135 ⟨150,151,134,135⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 6 498 238 49 none (.early s6Step238CompleteLog)=some (.early s6Step238CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 238<498)]
  rw [s6Step238Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
