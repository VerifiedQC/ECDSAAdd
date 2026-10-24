import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep249
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

private def s6Step251CompleteMoves : List (Wire × Wire) := [(850,400)]

private def s6Step251EarlyControlLog : HmrEarlyControlLog := ⟨[850, 786, 868, 805, 839],[822],[864],[810, 809, 817, 812, 915, 932],[]⟩

private def s6Step251FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [863]],[[839], [805], [786], [868]],[[], [], [], []]⟩,[860],[862],[822],[864],[810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[822, 864, 810, 809]⟩

private def s6Step251CompleteLog : HmrEarlyStepLog := ⟨s6Step251FrontLog,s6Step251CompleteMoves,s6Step251EarlyControlLog⟩

private def s6Step251ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399],795⟩

private def s6Step251ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818],776⟩

private def s6Step251ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830],777⟩

private def s6Step251ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863],775⟩

private def s6Step251FrontOut : WindowBank := ⟨s6Step251ExitFOut,s6Step251ExitGOut,s6Step251ExitFvOut,s6Step251ExitGvOut⟩

private def s6Step251CompleteOut : WindowBank := s6Step251FrontOut.repacked s6Step251CompleteMoves

private def s6Step251EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step251EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step251EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step251EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step251EarlyControlPositiveArena,[822],s6Step251EarlyControlEqualityArena,[864],⟨⟨860,false⟩,[⟨⟨822,false⟩,864⟩]⟩⟩

private def s6Step251EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step251EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step251EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step251EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step251EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step251EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step251EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,850⟩,⟨⟨772,false⟩,786⟩,⟨⟨771,false⟩,868⟩,⟨⟨770,false⟩,805⟩,⟨⟨769,false⟩,839⟩]⟩

private def s6Step251EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step251EarlyControlZeroArena,s6Step251EarlyControlZeroPlan,s6Step251EarlyControlClassPlan,s6Step251EarlyControlFlagArena,s6Step251EarlyControlFittedArena,s6Step251EarlyControlHistoryArena,s6Step251EarlyControlSigmaArena,s6Step251EarlyControlOutputArena,s6Step251EarlyControlLog⟩

private def s6Step251CounterWork : List Wire := [822, 864, 810, 809]

private theorem s6Step251Counter_bounded : s6Step251CounterWork.toFinset⊆arenaWires := by norm_num [s6Step251CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step251HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step251CounterDuring : Arena := ⟨s6Step251HeadFvAfter.live∪s6Step251CounterWork.toFinset,Finset.union_subset s6Step251HeadFvAfter.bounded s6Step251Counter_bounded⟩

private def s6Step251EntryFFresh : List Wire := []

private def s6Step251EntryFvFresh : List Wire := []

private def s6Step251EntryGFresh : List Wire := []

private def s6Step251EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step251EntryGvFresh : List Wire := [863]

private def s6Step251ExitFExtra : List Wire := [400, 805]

private def s6Step251ExitFvExtra : List Wire := [868]

private def s6Step251ExitGExtra : List Wire := [839]

private def s6Step251ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<400) ∨ (401≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step251ExitGvExtra : List Wire := [786]

private def s6Step251Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step251Add0Work : List Wire := [810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step251Add0_bounded : s6Step251Add0Work.toFinset⊆arenaWires := by
  have h : s6Step251Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step251Add0During : Arena := ⟨s6Step251Add0Arena.live∪s6Step251Add0Work.toFinset,Finset.union_subset s6Step251Add0Arena.bounded s6Step251Add0_bounded⟩

private def s6Step251Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step251Add1Work : List Wire := [810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step251Add1_bounded : s6Step251Add1Work.toFinset⊆arenaWires := by
  have h : s6Step251Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step251Add1During : Arena := ⟨s6Step251Add1Arena.live∪s6Step251Add1Work.toFinset,Finset.union_subset s6Step251Add1Arena.bounded s6Step251Add1_bounded⟩

private def s6Step251F4FlagArena : Arena := ⟨s6Step251HeadFvAfter.live∪{822},Finset.union_subset s6Step251HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step251F4Plan : HmrHybridF4Plan := ⟨s6Step251F4FlagArena,[822],s6Step251Add0Arena,[864],s6Step251Add0During,s6Step251Add0Work,s6Step251Add1During,s6Step251Add1Work⟩

private def s6Step251HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 805],795⟩

private def s6Step251HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 868],776⟩

private def s6Step251HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 839],777⟩

private def s6Step251HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 786],775⟩

private def s6Step251FrontHead : WindowBank := ⟨s6Step251HeadFOut,s6Step251HeadGOut,s6Step251HeadFvOut,s6Step251HeadGvOut⟩

private def s6Step251EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400],795⟩

private def s6Step251EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818],776⟩

private def s6Step251EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830],777⟩

private def s6Step251EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863],775⟩

private def s6Step251FrontPair : WindowBank := ⟨s6Step251EntryFOut,s6Step251EntryGOut,s6Step251EntryFvOut,s6Step251EntryGvOut⟩

private def s6Step251FrontSigmaArena : Arena := ⟨s6Step251EntryGvAfter.live∪{860},Finset.union_subset s6Step251EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step251HeadFFresh : List Wire := [805]

private def s6Step251HeadFvFresh : List Wire := [868]

private def s6Step251HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step251HeadGFresh : List Wire := [839]

private def s6Step251HeadGvFresh : List Wire := [786]

private def s6Step251FrontPlan : HmrSourceFront := ⟨s6Step251EntryGvAfter,s6Step251FrontPair,(growRow 795 s6Step251EntryFFresh ++ (growRow 777 s6Step251EntryGFresh ++ (growRow 776 s6Step251EntryFvFresh ++ (growRow 775 s6Step251EntryGvFresh ++ [])))),s6Step251FrontSigmaArena,[860],s6Step251HeadGBefore,[862],
  s6Step251HeadFvAfter,s6Step251FrontHead,(growRow 777 s6Step251HeadGFresh ++ (growRow 795 s6Step251HeadFFresh ++ (growRow 775 s6Step251HeadGvFresh ++ (growRow 776 s6Step251HeadFvFresh ++ [])))),s6Step251F4Plan,s6Step251CounterDuring,s6Step251CounterWork,s6Step251ExitGvAfter,s6Step251FrontOut,(shrinkRow 777 s6Step251ExitGExtra ++ (shrinkRow 795 s6Step251ExitFExtra ++ (shrinkRow 776 s6Step251ExitFvExtra ++ (shrinkRow 775 s6Step251ExitGvExtra ++ []))))⟩

private def s6Step251CompletePlan : HmrEarlyStepPlan := ⟨s6Step251FrontPlan,s6Step251EarlyControlArena,s6Step251EarlyControlPlan,s6Step251CompleteMoves⟩

private theorem s6Step251Complete_apart : List.Disjoint (s6Step251CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [860, 862, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] := by
  have nd : ((s6Step251CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[860, 862, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step251Complete_owned : (s6Step251CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step251EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step251EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step251CompleteMoveArena : Arena := ⟨s6Step251ExitGvAfter.live∪{400},Finset.union_subset s6Step251ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step251Complete_repack : s6Step251ExitGvAfter.checkRepack s6Step251CompleteMoves=some s6Step251EarlyControlArena := by
  have owned : 850∈s6Step251ExitGvAfter.live := by norm_num [s6Step251ExitGvAfter,arenaWires]
  have reserve : s6Step251ExitGvAfter.reserve {400}=some s6Step251CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step251ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step251CompleteMoveArena.retireSet {850}=s6Step251EarlyControlArena := by
    unfold Arena.retireSet s6Step251EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step251CompleteMoveArena,s6Step251ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step251CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step251CompleteMoveArena.retireSet {850}).checkRepack []=some s6Step251EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step251EarlyControl_branchOwned : ([862] : List Wire).toFinset⊆s6Step251EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step251EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step251EarlyControl_branch : compileHmrBranchRetirement s6Step251EarlyControlSigmaArena 862=some s6Step251EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step251EarlyControl_branchOwned
  · ext q
    simp [s6Step251EarlyControlOutputArena,s6Step251EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step251EarlyControl_classEqualityBorrow : s6Step251EarlyControlPositiveArena.checkBorrow (([860, 822] : List Wire).length-1) s6Step251EarlyControlLog.classWork=some s6Step251EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step251EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step251EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step251EarlyControlEqualityArena,s6Step251EarlyControlPositiveArena,s6Step251EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step251EarlyControl_classEqualityOwned : ([860, 822] : List Wire).toFinset⊆s6Step251EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step251EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step251EarlyControl_classEquality : compileHmrEqualityLog s6Step251EarlyControlPositiveArena [860, 822] 0 s6Step251EarlyControlLog.classWork=some (s6Step251EarlyControlEqualityArena,s6Step251EarlyControlLog.classWork,s6Step251EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step251EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step251EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step251EarlyControl_classOwned : ([769, 839, 860] : List Wire).toFinset⊆s6Step251EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step251EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step251EarlyControl_positiveBorrow : s6Step251EarlyControlZeroArena.checkBorrow (1) s6Step251EarlyControlLog.positiveWork=some s6Step251EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step251EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step251EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step251EarlyControlPositiveArena,s6Step251EarlyControlZeroArena,s6Step251EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step251EarlyControl_class : compileHmrSourceClassLog s6Step251EarlyControlZeroArena false 769 s6Step251EarlyControlZeroPlan.top 0 860 s6Step251EarlyControlLog.positiveWork s6Step251EarlyControlLog.classWork=some s6Step251EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step251EarlyControlClassPlan s6Step251EarlyControlZeroArena false 769 s6Step251EarlyControlZeroPlan.top 0 860
  constructor
  · decide +kernel
  · exact s6Step251EarlyControl_classOwned
  · exact s6Step251EarlyControl_positiveBorrow
  · exact s6Step251EarlyControl_classEquality

private theorem s6Step251EarlyControl_entryRecordOwned : ([862, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step251EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step251EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step251EarlyControl_entrySigmaOwned : ([860, 254] : List Wire).toFinset⊆s6Step251EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step251EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step251EarlyControl_fitBorrow : s6Step251EarlyControlFlagArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).length)) s6Step251EarlyControlLog.recordFresh=some s6Step251EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step251EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step251EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step251EarlyControlFittedArena,s6Step251EarlyControlFlagArena,s6Step251EarlyControlLog,arenaWires]

private theorem s6Step251EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step251EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step251EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step251EarlyControl_fit : compileHmrRecordGrowLog s6Step251EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step251EarlyControlLog.recordFresh=some s6Step251EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step251EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step251EarlyControl_fitBorrow

private theorem s6Step251EarlyControl_flagsBorrow : s6Step251EarlyControlEqualityArena.checkBorrow (6) s6Step251EarlyControlLog.flagWork=some s6Step251EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step251EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step251EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step251EarlyControlFlagArena,s6Step251EarlyControlEqualityArena,s6Step251EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step251EarlyControl_flagsOwned : ([864, 253, 252, 251] : List Wire).toFinset⊆s6Step251EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step251EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step251EarlyControl_flags : compileHmrFlagsLog s6Step251EarlyControlClassPlan.equalityArena s6Step251EarlyControlClassPlan.equality.top 253 252 251 s6Step251EarlyControlLog.flagWork=some s6Step251EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step251EarlyControl_flagsOwned⟩
  · exact s6Step251EarlyControl_flagsBorrow

private theorem s6Step251EarlyControl_historyBorrow : s6Step251EarlyControlArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).length)) s6Step251EarlyControlLog.recordFresh=some s6Step251EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step251EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step251EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step251EarlyControlHistoryArena,s6Step251EarlyControlArena,s6Step251EarlyControlLog,arenaWires]

private theorem s6Step251EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step251EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step251EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step251EarlyControl_history : compileHmrRecordGrowLog s6Step251EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step251EarlyControlLog.recordFresh=some s6Step251EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step251EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step251EarlyControl_historyBorrow

private theorem s6Step251EarlyControl_sigmaOwned : ([254, 860] : List Wire).toFinset⊆s6Step251EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step251EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step251EarlyControl_sigmaReleaseOwned : ([860] : List Wire).toFinset⊆s6Step251EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step251EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step251EarlyControl_sigmaRelease : s6Step251EarlyControlHistoryArena.release {860} (fun _ => false)=some s6Step251EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step251EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step251EarlyControlSigmaArena,s6Step251EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step251EarlyControl_sigma : compileHmrSigmaDropLog s6Step251EarlyControlHistoryArena false 0 0 254 860 []=some s6Step251EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step251EarlyControl_sigmaOwned⟩
  · exact s6Step251EarlyControl_sigmaRelease

private theorem s6Step251EarlyControl_zeroBorrow : s6Step251EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step251EarlyControlLog.zeroWork=some s6Step251EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step251EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step251EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step251EarlyControlZeroArena,s6Step251EarlyControlArena,s6Step251EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step251EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step251EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step251EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step251EarlyControl_zero : compileHmrEqualityLog s6Step251EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step251EarlyControlLog.zeroWork=some (s6Step251EarlyControlZeroArena,s6Step251EarlyControlLog.zeroWork,s6Step251EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step251EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step251EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step251EarlyControl_logged : s6Step251EarlyControlPlan.Logged s6Step251EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 860 254 253 252 251 862 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step251EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step251EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step251EarlyControl_zero
  · exact s6Step251EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step251EarlyControl_flags
  · exact s6Step251EarlyControl_fit
  · exact s6Step251EarlyControl_history
  · exact s6Step251EarlyControl_sigma
  · exact s6Step251EarlyControl_branch

private theorem s6Step251EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step251EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 860 254 253 252 251 862 51 s6Step251EarlyControlLog=some s6Step251EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step251EarlyControlPlan s6Step251EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 860 254 253 252 251 862 51 s6Step251EarlyControl_logged

private def s6Step251EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step251EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400],795⟩

private def s6Step251EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818],776⟩

private def s6Step251EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830],777⟩

private def s6Step251EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821],775⟩

private def s6Step251FrontBank : WindowBank := ⟨s6Step251EntryFRow,s6Step251EntryGRow,s6Step251EntryFvRow,s6Step251EntryGvRow⟩

private def s6Step251Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 805, 795]

private def s6Step251Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 839, 777]

private def s6Step251Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 868, 776]

private def s6Step251Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 786, 775]

private theorem s6Step251Counter_apart : Disjoint s6Step251HeadFvAfter.live s6Step251CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step251HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step251Counter_borrowed : s6Step251HeadFvAfter.checkBorrow 4 s6Step251CounterWork=some s6Step251CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step251HeadFvAfter s6Step251CounterDuring s6Step251CounterWork.toFinset s6Step251Counter_bounded s6Step251Counter_apart rfl

private theorem s6Step251Counter_owned : (860::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step251HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step251HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step251Counter_checked : compileHmrCounterStepLog s6Step251HeadFvAfter true 860 [774, 773, 772, 771, 770, 769] s6Step251CounterWork=some s6Step251CounterDuring := by
  have owned : ∀q∈860::[774, 773, 772, 771, 770, 769],q∈s6Step251HeadFvAfter.live := fun q hq => s6Step251Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step251Counter_borrowed

private def s6Step251EntryFAfter : Arena := s6Step251EntryFBefore

private theorem s6Step251EntryBank_incomingDistinct : ([s6Step251EntryFRow,s6Step251EntryGRow,s6Step251EntryFvRow,s6Step251EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step251EntryF_Incoming : rowsOwned s6Step251EntryFBefore [s6Step251EntryFRow,s6Step251EntryGRow,s6Step251EntryFvRow,s6Step251EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step251EntryFRow,s6Step251EntryGRow,s6Step251EntryFvRow,s6Step251EntryGvRow] 0 s6Step251EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step251EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step251EntryBank_outgoingOwned : rowsOwned s6Step251EntryGvAfter [s6Step251EntryFOut,s6Step251EntryGOut,s6Step251EntryFvOut,s6Step251EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step251EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step251EntryF_Outgoing : rowsOwned s6Step251EntryGvAfter [s6Step251EntryFOut,s6Step251EntryGOut,s6Step251EntryFvOut,s6Step251EntryGvOut] :=
  hmrRows_owned_drop s6Step251EntryGvAfter [s6Step251EntryFOut,s6Step251EntryGOut,s6Step251EntryFvOut,s6Step251EntryGvOut] 0 s6Step251EntryBank_outgoingOwned

private theorem s6Step251EntryF_distinct : (s6Step251EntryFRow.sign::s6Step251EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step251EntryF_owned : (s6Step251EntryFRow.sign::s6Step251EntryFRow.payload).toFinset⊆s6Step251EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step251EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step251EntryF_reserved : s6Step251EntryFBefore.reserve s6Step251EntryFFresh.toFinset=some s6Step251EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step251EntryFFresh,arenaWires]
  · norm_num [s6Step251EntryFBefore,s6Step251EntryFFresh,arenaWires]
  · simp only [s6Step251EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step251EntryF_checked : planRowResizeLog s6Step251EntryFBefore s6Step251EntryFRow 145 s6Step251EntryFFresh=
    some (s6Step251EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400],795⟩,growRow 795 s6Step251EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step251EntryFBefore s6Step251EntryFAfter s6Step251EntryFRow 145 s6Step251EntryFFresh
    s6Step251EntryF_distinct s6Step251EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step251EntryF_reserved
  have rowEq : WindowRow.mk (s6Step251EntryFRow.payload++s6Step251EntryFFresh) s6Step251EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step251EntryFvAfter : Arena := s6Step251EntryFBefore

private def s6Step251EntryFvBefore : Arena := s6Step251EntryFBefore

private theorem s6Step251EntryFv_Incoming : rowsOwned s6Step251EntryFvBefore [s6Step251EntryFvRow,s6Step251EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step251EntryFRow,s6Step251EntryGRow,s6Step251EntryFvRow,s6Step251EntryGvRow] 2 s6Step251EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step251EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step251EntryFv_Outgoing : rowsOwned s6Step251EntryGvAfter [s6Step251EntryFvOut,s6Step251EntryGvOut] :=
  hmrRows_owned_drop s6Step251EntryGvAfter [s6Step251EntryFOut,s6Step251EntryGOut,s6Step251EntryFvOut,s6Step251EntryGvOut] 2 s6Step251EntryBank_outgoingOwned

private theorem s6Step251EntryFv_distinct : (s6Step251EntryFvRow.sign::s6Step251EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step251EntryFv_owned : (s6Step251EntryFvRow.sign::s6Step251EntryFvRow.payload).toFinset⊆s6Step251EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step251EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step251EntryFv_reserved : s6Step251EntryFvBefore.reserve s6Step251EntryFvFresh.toFinset=some s6Step251EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step251EntryFvFresh,arenaWires]
  · norm_num [s6Step251EntryFvBefore,s6Step251EntryFBefore,s6Step251EntryFvFresh,arenaWires]
  · simp only [s6Step251EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step251EntryFv_checked : planRowResizeLog s6Step251EntryFvBefore s6Step251EntryFvRow 141 s6Step251EntryFvFresh=
    some (s6Step251EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818],776⟩,growRow 776 s6Step251EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step251EntryFvBefore s6Step251EntryFvAfter s6Step251EntryFvRow 141 s6Step251EntryFvFresh
    s6Step251EntryFv_distinct s6Step251EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step251EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step251EntryFvRow.payload++s6Step251EntryFvFresh) s6Step251EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step251EntryGAfter : Arena := s6Step251EntryFBefore

private def s6Step251EntryGBefore : Arena := s6Step251EntryFBefore

private theorem s6Step251EntryG_Incoming : rowsOwned s6Step251EntryGBefore [s6Step251EntryGRow,s6Step251EntryFvRow,s6Step251EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step251EntryFRow,s6Step251EntryGRow,s6Step251EntryFvRow,s6Step251EntryGvRow] 1 s6Step251EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step251EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step251EntryG_Outgoing : rowsOwned s6Step251EntryGvAfter [s6Step251EntryGOut,s6Step251EntryFvOut,s6Step251EntryGvOut] :=
  hmrRows_owned_drop s6Step251EntryGvAfter [s6Step251EntryFOut,s6Step251EntryGOut,s6Step251EntryFvOut,s6Step251EntryGvOut] 1 s6Step251EntryBank_outgoingOwned

private theorem s6Step251EntryG_distinct : (s6Step251EntryGRow.sign::s6Step251EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step251EntryG_owned : (s6Step251EntryGRow.sign::s6Step251EntryGRow.payload).toFinset⊆s6Step251EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step251EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step251EntryG_reserved : s6Step251EntryGBefore.reserve s6Step251EntryGFresh.toFinset=some s6Step251EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step251EntryGFresh,arenaWires]
  · norm_num [s6Step251EntryGBefore,s6Step251EntryFBefore,s6Step251EntryGFresh,arenaWires]
  · simp only [s6Step251EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step251EntryG_checked : planRowResizeLog s6Step251EntryGBefore s6Step251EntryGRow 145 s6Step251EntryGFresh=
    some (s6Step251EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830],777⟩,growRow 777 s6Step251EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step251EntryGBefore s6Step251EntryGAfter s6Step251EntryGRow 145 s6Step251EntryGFresh
    s6Step251EntryG_distinct s6Step251EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step251EntryG_reserved
  have rowEq : WindowRow.mk (s6Step251EntryGRow.payload++s6Step251EntryGFresh) s6Step251EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step251EntryGvBefore : Arena := s6Step251EntryFBefore

private theorem s6Step251EntryGv_Incoming : rowsOwned s6Step251EntryGvBefore [s6Step251EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step251EntryFRow,s6Step251EntryGRow,s6Step251EntryFvRow,s6Step251EntryGvRow] 3 s6Step251EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step251EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step251EntryGv_Outgoing : rowsOwned s6Step251EntryGvAfter [s6Step251EntryGvOut] :=
  hmrRows_owned_drop s6Step251EntryGvAfter [s6Step251EntryFOut,s6Step251EntryGOut,s6Step251EntryFvOut,s6Step251EntryGvOut] 3 s6Step251EntryBank_outgoingOwned

private theorem s6Step251EntryGv_distinct : (s6Step251EntryGvRow.sign::s6Step251EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step251EntryGv_owned : (s6Step251EntryGvRow.sign::s6Step251EntryGvRow.payload).toFinset⊆s6Step251EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step251EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step251EntryGv_reserved : s6Step251EntryGvBefore.reserve s6Step251EntryGvFresh.toFinset=some s6Step251EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step251EntryGvFresh,arenaWires]
  · norm_num [s6Step251EntryGvBefore,s6Step251EntryFBefore,s6Step251EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step251EntryGvAfter,s6Step251EntryGvBefore,s6Step251EntryFBefore,s6Step251EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step251EntryGv_checked : planRowResizeLog s6Step251EntryGvBefore s6Step251EntryGvRow 141 s6Step251EntryGvFresh=
    some (s6Step251EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863],775⟩,growRow 775 s6Step251EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step251EntryGvBefore s6Step251EntryGvAfter s6Step251EntryGvRow 141 s6Step251EntryGvFresh
    s6Step251EntryGv_distinct s6Step251EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step251EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step251EntryGvRow.payload++s6Step251EntryGvFresh) s6Step251EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step251EntryBank_rows : planWindowRowsLog s6Step251EntryFBefore [(s6Step251EntryFRow,145),(s6Step251EntryGRow,145),(s6Step251EntryFvRow,141),(s6Step251EntryGvRow,141)] [s6Step251EntryFFresh,s6Step251EntryGFresh,s6Step251EntryFvFresh,s6Step251EntryGvFresh]=
    some (s6Step251EntryGvAfter,[s6Step251EntryFOut,s6Step251EntryGOut,s6Step251EntryFvOut,s6Step251EntryGvOut],(growRow 795 s6Step251EntryFFresh ++ (growRow 777 s6Step251EntryGFresh ++ (growRow 776 s6Step251EntryFvFresh ++ (growRow 775 s6Step251EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step251EntryGvAfter [] []=some (s6Step251EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step251EntryGvBefore s6Step251EntryGvAfter s6Step251EntryGvAfter
    s6Step251EntryGvRow s6Step251EntryGvOut 141 s6Step251EntryGvFresh [] [] []
    (growRow 775 s6Step251EntryGvFresh) ([]) s6Step251EntryGv_Incoming s6Step251EntryGv_checked h4 s6Step251EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step251EntryFvBefore s6Step251EntryFvAfter s6Step251EntryGvAfter
    s6Step251EntryFvRow s6Step251EntryFvOut 141 s6Step251EntryFvFresh [(s6Step251EntryGvRow,141)] [s6Step251EntryGvFresh] [s6Step251EntryGvOut]
    (growRow 776 s6Step251EntryFvFresh) ((growRow 775 s6Step251EntryGvFresh ++ [])) s6Step251EntryFv_Incoming s6Step251EntryFv_checked h3 s6Step251EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step251EntryGBefore s6Step251EntryGAfter s6Step251EntryGvAfter
    s6Step251EntryGRow s6Step251EntryGOut 145 s6Step251EntryGFresh [(s6Step251EntryFvRow,141),(s6Step251EntryGvRow,141)] [s6Step251EntryFvFresh,s6Step251EntryGvFresh] [s6Step251EntryFvOut,s6Step251EntryGvOut]
    (growRow 777 s6Step251EntryGFresh) ((growRow 776 s6Step251EntryFvFresh ++ (growRow 775 s6Step251EntryGvFresh ++ []))) s6Step251EntryG_Incoming s6Step251EntryG_checked h2 s6Step251EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step251EntryFBefore s6Step251EntryFAfter s6Step251EntryGvAfter
    s6Step251EntryFRow s6Step251EntryFOut 145 s6Step251EntryFFresh [(s6Step251EntryGRow,145),(s6Step251EntryFvRow,141),(s6Step251EntryGvRow,141)] [s6Step251EntryGFresh,s6Step251EntryFvFresh,s6Step251EntryGvFresh] [s6Step251EntryGOut,s6Step251EntryFvOut,s6Step251EntryGvOut]
    (growRow 795 s6Step251EntryFFresh) ((growRow 777 s6Step251EntryGFresh ++ (growRow 776 s6Step251EntryFvFresh ++ (growRow 775 s6Step251EntryGvFresh ++ [])))) s6Step251EntryF_Incoming s6Step251EntryF_checked h1 s6Step251EntryF_Outgoing
  exact h0

private theorem s6Step251EntryBank_checked : compileHmrBankResizeLog .entry s6Step251EntryFBefore ⟨s6Step251EntryFRow,s6Step251EntryGRow,s6Step251EntryFvRow,s6Step251EntryGvRow⟩ ⟨145,145,141,141⟩ [s6Step251EntryFFresh,s6Step251EntryGFresh,s6Step251EntryFvFresh,s6Step251EntryGvFresh]=
    some (s6Step251EntryGvAfter,⟨s6Step251EntryFOut,s6Step251EntryGOut,s6Step251EntryFvOut,s6Step251EntryGvOut⟩,(growRow 795 s6Step251EntryFFresh ++ (growRow 777 s6Step251EntryGFresh ++ (growRow 776 s6Step251EntryFvFresh ++ (growRow 775 s6Step251EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step251EntryBank_rows]
  rfl

private def s6Step251ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<400) ∨ (401≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step251ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step251ExitFBefore : Arena := s6Step251ExitGAfter

private def s6Step251ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 805],795⟩

private def s6Step251ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 868],776⟩

private def s6Step251ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 839],777⟩

private def s6Step251ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 786],775⟩

private theorem s6Step251ExitBank_incomingDistinct : ([s6Step251ExitGRow,s6Step251ExitFRow,s6Step251ExitFvRow,s6Step251ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step251ExitF_Incoming : rowsOwned s6Step251ExitFBefore [s6Step251ExitFRow,s6Step251ExitFvRow,s6Step251ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step251ExitGRow,s6Step251ExitFRow,s6Step251ExitFvRow,s6Step251ExitGvRow] 1 s6Step251ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step251ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step251ExitBank_outgoingOwned : rowsOwned s6Step251ExitGvAfter [s6Step251ExitGOut,s6Step251ExitFOut,s6Step251ExitFvOut,s6Step251ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step251ExitGvAfter (fun q => (0≤q ∧ q<400) ∨ (401≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step251ExitF_Outgoing : rowsOwned s6Step251ExitGvAfter [s6Step251ExitFOut,s6Step251ExitFvOut,s6Step251ExitGvOut] :=
  hmrRows_owned_drop s6Step251ExitGvAfter [s6Step251ExitGOut,s6Step251ExitFOut,s6Step251ExitFvOut,s6Step251ExitGvOut] 1 s6Step251ExitBank_outgoingOwned

private theorem s6Step251ExitF_distinct : (s6Step251ExitFRow.sign::s6Step251ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step251ExitF_owned : (s6Step251ExitFRow.sign::s6Step251ExitFRow.payload).toFinset⊆s6Step251ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step251ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step251ExitF_retired : s6Step251ExitFBefore.retireSet s6Step251ExitFExtra.toFinset=s6Step251ExitFAfter := by
  unfold Arena.retireSet s6Step251ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step251ExitFBefore,s6Step251ExitGAfter,s6Step251ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step251ExitF_checked : planRowResizeLog s6Step251ExitFBefore s6Step251ExitFRow 144 []=
    some (s6Step251ExitFAfter,s6Step251ExitFOut,shrinkRow 795 s6Step251ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step251ExitFBefore s6Step251ExitFRow 144 s6Step251ExitF_distinct s6Step251ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step251ExitFRow.payload.take 144) s6Step251ExitFRow.sign=s6Step251ExitFOut := by decide +kernel
  have hi : s6Step251ExitFRow.payload.drop 144=s6Step251ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step251ExitF_retired] at result
  exact result

private def s6Step251ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<400) ∨ (401≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step251ExitFvBefore : Arena := s6Step251ExitFAfter

private theorem s6Step251ExitFv_Incoming : rowsOwned s6Step251ExitFvBefore [s6Step251ExitFvRow,s6Step251ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step251ExitGRow,s6Step251ExitFRow,s6Step251ExitFvRow,s6Step251ExitGvRow] 2 s6Step251ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step251ExitFvBefore (fun q => (0≤q ∧ q<400) ∨ (401≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step251ExitFv_Outgoing : rowsOwned s6Step251ExitGvAfter [s6Step251ExitFvOut,s6Step251ExitGvOut] :=
  hmrRows_owned_drop s6Step251ExitGvAfter [s6Step251ExitGOut,s6Step251ExitFOut,s6Step251ExitFvOut,s6Step251ExitGvOut] 2 s6Step251ExitBank_outgoingOwned

private theorem s6Step251ExitFv_distinct : (s6Step251ExitFvRow.sign::s6Step251ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step251ExitFv_owned : (s6Step251ExitFvRow.sign::s6Step251ExitFvRow.payload).toFinset⊆s6Step251ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step251ExitFvBefore (fun q => (0≤q ∧ q<400) ∨ (401≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step251ExitFv_retired : s6Step251ExitFvBefore.retireSet s6Step251ExitFvExtra.toFinset=s6Step251ExitFvAfter := by
  unfold Arena.retireSet s6Step251ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step251ExitFvBefore,s6Step251ExitFAfter,s6Step251ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step251ExitFv_checked : planRowResizeLog s6Step251ExitFvBefore s6Step251ExitFvRow 141 []=
    some (s6Step251ExitFvAfter,s6Step251ExitFvOut,shrinkRow 776 s6Step251ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step251ExitFvBefore s6Step251ExitFvRow 141 s6Step251ExitFv_distinct s6Step251ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step251ExitFvRow.payload.take 141) s6Step251ExitFvRow.sign=s6Step251ExitFvOut := by decide +kernel
  have hi : s6Step251ExitFvRow.payload.drop 141=s6Step251ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step251ExitFv_retired] at result
  exact result

private def s6Step251ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step251ExitG_Incoming : rowsOwned s6Step251ExitGBefore [s6Step251ExitGRow,s6Step251ExitFRow,s6Step251ExitFvRow,s6Step251ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step251ExitGRow,s6Step251ExitFRow,s6Step251ExitFvRow,s6Step251ExitGvRow] 0 s6Step251ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step251ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step251ExitG_Outgoing : rowsOwned s6Step251ExitGvAfter [s6Step251ExitGOut,s6Step251ExitFOut,s6Step251ExitFvOut,s6Step251ExitGvOut] :=
  hmrRows_owned_drop s6Step251ExitGvAfter [s6Step251ExitGOut,s6Step251ExitFOut,s6Step251ExitFvOut,s6Step251ExitGvOut] 0 s6Step251ExitBank_outgoingOwned

private theorem s6Step251ExitG_distinct : (s6Step251ExitGRow.sign::s6Step251ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step251ExitG_owned : (s6Step251ExitGRow.sign::s6Step251ExitGRow.payload).toFinset⊆s6Step251ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step251ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step251ExitG_retired : s6Step251ExitGBefore.retireSet s6Step251ExitGExtra.toFinset=s6Step251ExitGAfter := by
  unfold Arena.retireSet s6Step251ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step251ExitGBefore,s6Step251ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step251ExitG_checked : planRowResizeLog s6Step251ExitGBefore s6Step251ExitGRow 145 []=
    some (s6Step251ExitGAfter,s6Step251ExitGOut,shrinkRow 777 s6Step251ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step251ExitGBefore s6Step251ExitGRow 145 s6Step251ExitG_distinct s6Step251ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step251ExitGRow.payload.take 145) s6Step251ExitGRow.sign=s6Step251ExitGOut := by decide +kernel
  have hi : s6Step251ExitGRow.payload.drop 145=s6Step251ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step251ExitG_retired] at result
  exact result

private def s6Step251ExitGvBefore : Arena := s6Step251ExitFvAfter

private theorem s6Step251ExitGv_Incoming : rowsOwned s6Step251ExitGvBefore [s6Step251ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step251ExitGRow,s6Step251ExitFRow,s6Step251ExitFvRow,s6Step251ExitGvRow] 3 s6Step251ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step251ExitGvBefore (fun q => (0≤q ∧ q<400) ∨ (401≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step251ExitGv_Outgoing : rowsOwned s6Step251ExitGvAfter [s6Step251ExitGvOut] :=
  hmrRows_owned_drop s6Step251ExitGvAfter [s6Step251ExitGOut,s6Step251ExitFOut,s6Step251ExitFvOut,s6Step251ExitGvOut] 3 s6Step251ExitBank_outgoingOwned

private theorem s6Step251ExitGv_distinct : (s6Step251ExitGvRow.sign::s6Step251ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step251ExitGv_owned : (s6Step251ExitGvRow.sign::s6Step251ExitGvRow.payload).toFinset⊆s6Step251ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step251ExitGvBefore (fun q => (0≤q ∧ q<400) ∨ (401≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step251ExitGv_retired : s6Step251ExitGvBefore.retireSet s6Step251ExitGvExtra.toFinset=s6Step251ExitGvAfter := by
  unfold Arena.retireSet s6Step251ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step251ExitGvBefore,s6Step251ExitFvAfter,s6Step251ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step251ExitGv_checked : planRowResizeLog s6Step251ExitGvBefore s6Step251ExitGvRow 141 []=
    some (s6Step251ExitGvAfter,s6Step251ExitGvOut,shrinkRow 775 s6Step251ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step251ExitGvBefore s6Step251ExitGvRow 141 s6Step251ExitGv_distinct s6Step251ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step251ExitGvRow.payload.take 141) s6Step251ExitGvRow.sign=s6Step251ExitGvOut := by decide +kernel
  have hi : s6Step251ExitGvRow.payload.drop 141=s6Step251ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step251ExitGv_retired] at result
  exact result

private theorem s6Step251ExitBank_rows : planWindowRowsLog s6Step251ExitGBefore [(s6Step251ExitGRow,145),(s6Step251ExitFRow,144),(s6Step251ExitFvRow,141),(s6Step251ExitGvRow,141)] [[],[],[],[]]=
    some (s6Step251ExitGvAfter,[s6Step251ExitGOut,s6Step251ExitFOut,s6Step251ExitFvOut,s6Step251ExitGvOut],(shrinkRow 777 s6Step251ExitGExtra ++ (shrinkRow 795 s6Step251ExitFExtra ++ (shrinkRow 776 s6Step251ExitFvExtra ++ (shrinkRow 775 s6Step251ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step251ExitGvAfter [] []=some (s6Step251ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step251ExitGvBefore s6Step251ExitGvAfter s6Step251ExitGvAfter
    s6Step251ExitGvRow s6Step251ExitGvOut 141 [] [] [] []
    (shrinkRow 775 s6Step251ExitGvExtra) ([]) s6Step251ExitGv_Incoming s6Step251ExitGv_checked h4 s6Step251ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step251ExitFvBefore s6Step251ExitFvAfter s6Step251ExitGvAfter
    s6Step251ExitFvRow s6Step251ExitFvOut 141 [] [(s6Step251ExitGvRow,141)] [[]] [s6Step251ExitGvOut]
    (shrinkRow 776 s6Step251ExitFvExtra) ((shrinkRow 775 s6Step251ExitGvExtra ++ [])) s6Step251ExitFv_Incoming s6Step251ExitFv_checked h3 s6Step251ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step251ExitFBefore s6Step251ExitFAfter s6Step251ExitGvAfter
    s6Step251ExitFRow s6Step251ExitFOut 144 [] [(s6Step251ExitFvRow,141),(s6Step251ExitGvRow,141)] [[],[]] [s6Step251ExitFvOut,s6Step251ExitGvOut]
    (shrinkRow 795 s6Step251ExitFExtra) ((shrinkRow 776 s6Step251ExitFvExtra ++ (shrinkRow 775 s6Step251ExitGvExtra ++ []))) s6Step251ExitF_Incoming s6Step251ExitF_checked h2 s6Step251ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step251ExitGBefore s6Step251ExitGAfter s6Step251ExitGvAfter
    s6Step251ExitGRow s6Step251ExitGOut 145 [] [(s6Step251ExitFRow,144),(s6Step251ExitFvRow,141),(s6Step251ExitGvRow,141)] [[],[],[]] [s6Step251ExitFOut,s6Step251ExitFvOut,s6Step251ExitGvOut]
    (shrinkRow 777 s6Step251ExitGExtra) ((shrinkRow 795 s6Step251ExitFExtra ++ (shrinkRow 776 s6Step251ExitFvExtra ++ (shrinkRow 775 s6Step251ExitGvExtra ++ [])))) s6Step251ExitG_Incoming s6Step251ExitG_checked h1 s6Step251ExitG_Outgoing
  exact h0

private theorem s6Step251ExitBank_checked : compileHmrBankResizeLog .exit s6Step251ExitGBefore ⟨s6Step251ExitFRow,s6Step251ExitGRow,s6Step251ExitFvRow,s6Step251ExitGvRow⟩ ⟨144,145,141,141⟩ [[],[],[],[]]=
    some (s6Step251ExitGvAfter,⟨s6Step251ExitFOut,s6Step251ExitGOut,s6Step251ExitFvOut,s6Step251ExitGvOut⟩,(shrinkRow 777 s6Step251ExitGExtra ++ (shrinkRow 795 s6Step251ExitFExtra ++ (shrinkRow 776 s6Step251ExitFvExtra ++ (shrinkRow 775 s6Step251ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step251ExitBank_rows]
  rfl

private theorem s6Step251Add0_apart : Disjoint s6Step251Add0Arena.live s6Step251Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step251Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step251Add0_card : s6Step251Add0Arena.live.card=897 := by
  decide +kernel

private theorem s6Step251Add0_borrowed : s6Step251Add0Arena.checkBorrow (hmrHybridCount s6Step251Add0Arena s6Step251Add0B.length) s6Step251Add0Work=some s6Step251Add0During := by
  have len : s6Step251Add0Work.length=hmrHybridCount s6Step251Add0Arena s6Step251Add0B.length := by
    rw [hmrHybridCount,s6Step251Add0_card]
    decide +kernel
  have nd : s6Step251Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step251Add0Arena s6Step251Add0During s6Step251Add0Work.toFinset s6Step251Add0_bounded s6Step251Add0_apart rfl

private theorem s6Step251Add0_distinct : (822::862::864::(s6Step251Add0A++s6Step251Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step251Add0_owned : (822::862::864::(s6Step251Add0A++s6Step251Add0B)).toFinset⊆s6Step251Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step251Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step251Add0_checked : compileHmrHybridCinLog s6Step251Add0Arena 862 822 864 s6Step251Add0A s6Step251Add0B s6Step251Add0Work=some s6Step251Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step251Add0Arena s6Step251Add0During 862 822 864 s6Step251Add0A s6Step251Add0B s6Step251Add0Work
    (by decide +kernel) (by decide +kernel) s6Step251Add0_distinct
    (fun q hq => s6Step251Add0_owned (List.mem_toFinset.mpr hq)) s6Step251Add0_borrowed

private theorem s6Step251Add1_apart : Disjoint s6Step251Add1Arena.live s6Step251Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step251Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step251Add1_card : s6Step251Add1Arena.live.card=897 := by
  decide +kernel

private theorem s6Step251Add1_borrowed : s6Step251Add1Arena.checkBorrow (hmrHybridCount s6Step251Add1Arena s6Step251Add1B.length) s6Step251Add1Work=some s6Step251Add1During := by
  have len : s6Step251Add1Work.length=hmrHybridCount s6Step251Add1Arena s6Step251Add1B.length := by
    rw [hmrHybridCount,s6Step251Add1_card]
    decide +kernel
  have nd : s6Step251Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step251Add1Arena s6Step251Add1During s6Step251Add1Work.toFinset s6Step251Add1_bounded s6Step251Add1_apart rfl

private theorem s6Step251Add1_distinct : (822::862::864::(s6Step251Add1A++s6Step251Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step251Add1_owned : (822::862::864::(s6Step251Add1A++s6Step251Add1B)).toFinset⊆s6Step251Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step251Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step251Add1_checked : compileHmrHybridCinLog s6Step251Add1Arena 862 822 864 s6Step251Add1A s6Step251Add1B s6Step251Add1Work=some s6Step251Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step251Add1Arena s6Step251Add1During 862 822 864 s6Step251Add1A s6Step251Add1B s6Step251Add1Work
    (by decide +kernel) (by decide +kernel) s6Step251Add1_distinct
    (fun q hq => s6Step251Add1_owned (List.mem_toFinset.mpr hq)) s6Step251Add1_borrowed

private theorem s6Step251F4_apart : Disjoint (s6Step251Add0A++s6Step251Add0B).toFinset (s6Step251Add1A++s6Step251Add1B).toFinset := by
  have nd : ((s6Step251Add0A++s6Step251Add0B)++(s6Step251Add1A++s6Step251Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step251F4_carry : s6Step251F4FlagArena.checkBorrow 1 [864]=some s6Step251Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step251F4FlagArena,s6Step251HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step251F4FlagArena,s6Step251HeadFvAfter,s6Step251Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step251F4_distinct : (860::862::822::864::((s6Step251Add0A++s6Step251Add1A)++(s6Step251Add0B++s6Step251Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step251F4_flag : s6Step251HeadFvAfter.checkBorrow 1 [822]=some s6Step251F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step251HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step251F4_owned : (860::862::((s6Step251Add0A++s6Step251Add1A)++(s6Step251Add0B++s6Step251Add1B))).toFinset⊆s6Step251HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step251HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step251F4_checked : compileHmrHybridF4Log s6Step251HeadFvAfter 860 862 s6Step251Add0A s6Step251Add0B s6Step251Add1A s6Step251Add1B [822] [864] s6Step251Add0Work s6Step251Add1Work=some s6Step251F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step251HeadFvAfter s6Step251F4FlagArena s6Step251Add0Arena s6Step251Add0During s6Step251Add1During 860 862
    s6Step251Add0A s6Step251Add0B s6Step251Add1A s6Step251Add1B [822] [864] s6Step251Add0Work s6Step251Add1Work
    (fun q hq => s6Step251F4_owned (List.mem_toFinset.mpr hq)) s6Step251F4_flag s6Step251F4_carry
    s6Step251F4_distinct s6Step251F4_apart s6Step251Add0_checked s6Step251Add1_checked

private theorem s6Step251Front_branch : s6Step251FrontSigmaArena.checkBorrow 1 [862]=some s6Step251HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step251FrontSigmaArena,s6Step251EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step251FrontSigmaArena,s6Step251EntryGvAfter,s6Step251HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step251Front_entry : HmrFrontEntryValid s6Step251EntryFBefore s6Step251FrontBank 145 141 ⟨144,145,141,141⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step251FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step251EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step251EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step251FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step251Front_sigma : s6Step251EntryGvAfter.checkBorrow 1 [860]=some s6Step251FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step251EntryGvAfter,arenaWires]
  · rfl

private def s6Step251HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step251HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step251HeadFBefore : Arena := s6Step251HeadGAfter

private def s6Step251HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400],795⟩

private def s6Step251HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818],776⟩

private def s6Step251HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830],777⟩

private def s6Step251HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863],775⟩

private theorem s6Step251HeadBank_incomingDistinct : ([s6Step251HeadGRow,s6Step251HeadFRow,s6Step251HeadGvRow,s6Step251HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step251HeadF_Incoming : rowsOwned s6Step251HeadFBefore [s6Step251HeadFRow,s6Step251HeadGvRow,s6Step251HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step251HeadGRow,s6Step251HeadFRow,s6Step251HeadGvRow,s6Step251HeadFvRow] 1 s6Step251HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step251HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step251HeadBank_outgoingOwned : rowsOwned s6Step251HeadFvAfter [s6Step251HeadGOut,s6Step251HeadFOut,s6Step251HeadGvOut,s6Step251HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step251HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step251HeadF_Outgoing : rowsOwned s6Step251HeadFvAfter [s6Step251HeadFOut,s6Step251HeadGvOut,s6Step251HeadFvOut] :=
  hmrRows_owned_drop s6Step251HeadFvAfter [s6Step251HeadGOut,s6Step251HeadFOut,s6Step251HeadGvOut,s6Step251HeadFvOut] 1 s6Step251HeadBank_outgoingOwned

private theorem s6Step251HeadF_distinct : (s6Step251HeadFRow.sign::s6Step251HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step251HeadF_owned : (s6Step251HeadFRow.sign::s6Step251HeadFRow.payload).toFinset⊆s6Step251HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step251HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step251HeadF_reserved : s6Step251HeadFBefore.reserve s6Step251HeadFFresh.toFinset=some s6Step251HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step251HeadFFresh,arenaWires]
  · norm_num [s6Step251HeadFBefore,s6Step251HeadGAfter,s6Step251HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step251HeadFAfter,s6Step251HeadFBefore,s6Step251HeadGAfter,s6Step251HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step251HeadF_checked : planRowResizeLog s6Step251HeadFBefore s6Step251HeadFRow 146 s6Step251HeadFFresh=
    some (s6Step251HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 805],795⟩,growRow 795 s6Step251HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step251HeadFBefore s6Step251HeadFAfter s6Step251HeadFRow 146 s6Step251HeadFFresh
    s6Step251HeadF_distinct s6Step251HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step251HeadF_reserved
  have rowEq : WindowRow.mk (s6Step251HeadFRow.payload++s6Step251HeadFFresh) s6Step251HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 805],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step251HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step251HeadFvBefore : Arena := s6Step251HeadGvAfter

private theorem s6Step251HeadFv_Incoming : rowsOwned s6Step251HeadFvBefore [s6Step251HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step251HeadGRow,s6Step251HeadFRow,s6Step251HeadGvRow,s6Step251HeadFvRow] 3 s6Step251HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step251HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step251HeadFv_Outgoing : rowsOwned s6Step251HeadFvAfter [s6Step251HeadFvOut] :=
  hmrRows_owned_drop s6Step251HeadFvAfter [s6Step251HeadGOut,s6Step251HeadFOut,s6Step251HeadGvOut,s6Step251HeadFvOut] 3 s6Step251HeadBank_outgoingOwned

private theorem s6Step251HeadFv_distinct : (s6Step251HeadFvRow.sign::s6Step251HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step251HeadFv_owned : (s6Step251HeadFvRow.sign::s6Step251HeadFvRow.payload).toFinset⊆s6Step251HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step251HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step251HeadFv_reserved : s6Step251HeadFvBefore.reserve s6Step251HeadFvFresh.toFinset=some s6Step251HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step251HeadFvFresh,arenaWires]
  · norm_num [s6Step251HeadFvBefore,s6Step251HeadGvAfter,s6Step251HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step251HeadFvAfter,s6Step251HeadFvBefore,s6Step251HeadGvAfter,s6Step251HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step251HeadFv_checked : planRowResizeLog s6Step251HeadFvBefore s6Step251HeadFvRow 142 s6Step251HeadFvFresh=
    some (s6Step251HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 868],776⟩,growRow 776 s6Step251HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step251HeadFvBefore s6Step251HeadFvAfter s6Step251HeadFvRow 142 s6Step251HeadFvFresh
    s6Step251HeadFv_distinct s6Step251HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step251HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step251HeadFvRow.payload++s6Step251HeadFvFresh) s6Step251HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 868],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step251HeadG_Incoming : rowsOwned s6Step251HeadGBefore [s6Step251HeadGRow,s6Step251HeadFRow,s6Step251HeadGvRow,s6Step251HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step251HeadGRow,s6Step251HeadFRow,s6Step251HeadGvRow,s6Step251HeadFvRow] 0 s6Step251HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step251HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step251HeadG_Outgoing : rowsOwned s6Step251HeadFvAfter [s6Step251HeadGOut,s6Step251HeadFOut,s6Step251HeadGvOut,s6Step251HeadFvOut] :=
  hmrRows_owned_drop s6Step251HeadFvAfter [s6Step251HeadGOut,s6Step251HeadFOut,s6Step251HeadGvOut,s6Step251HeadFvOut] 0 s6Step251HeadBank_outgoingOwned

private theorem s6Step251HeadG_distinct : (s6Step251HeadGRow.sign::s6Step251HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step251HeadG_owned : (s6Step251HeadGRow.sign::s6Step251HeadGRow.payload).toFinset⊆s6Step251HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step251HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step251HeadG_reserved : s6Step251HeadGBefore.reserve s6Step251HeadGFresh.toFinset=some s6Step251HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step251HeadGFresh,arenaWires]
  · norm_num [s6Step251HeadGBefore,s6Step251HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step251HeadGAfter,s6Step251HeadGBefore,s6Step251HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step251HeadG_checked : planRowResizeLog s6Step251HeadGBefore s6Step251HeadGRow 146 s6Step251HeadGFresh=
    some (s6Step251HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 839],777⟩,growRow 777 s6Step251HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step251HeadGBefore s6Step251HeadGAfter s6Step251HeadGRow 146 s6Step251HeadGFresh
    s6Step251HeadG_distinct s6Step251HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step251HeadG_reserved
  have rowEq : WindowRow.mk (s6Step251HeadGRow.payload++s6Step251HeadGFresh) s6Step251HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 839],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step251HeadGvBefore : Arena := s6Step251HeadFAfter

private theorem s6Step251HeadGv_Incoming : rowsOwned s6Step251HeadGvBefore [s6Step251HeadGvRow,s6Step251HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step251HeadGRow,s6Step251HeadFRow,s6Step251HeadGvRow,s6Step251HeadFvRow] 2 s6Step251HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step251HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step251HeadGv_Outgoing : rowsOwned s6Step251HeadFvAfter [s6Step251HeadGvOut,s6Step251HeadFvOut] :=
  hmrRows_owned_drop s6Step251HeadFvAfter [s6Step251HeadGOut,s6Step251HeadFOut,s6Step251HeadGvOut,s6Step251HeadFvOut] 2 s6Step251HeadBank_outgoingOwned

private theorem s6Step251HeadGv_distinct : (s6Step251HeadGvRow.sign::s6Step251HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step251HeadGv_owned : (s6Step251HeadGvRow.sign::s6Step251HeadGvRow.payload).toFinset⊆s6Step251HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step251HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step251HeadGv_reserved : s6Step251HeadGvBefore.reserve s6Step251HeadGvFresh.toFinset=some s6Step251HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step251HeadGvFresh,arenaWires]
  · norm_num [s6Step251HeadGvBefore,s6Step251HeadFAfter,s6Step251HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step251HeadGvAfter,s6Step251HeadGvBefore,s6Step251HeadFAfter,s6Step251HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step251HeadGv_checked : planRowResizeLog s6Step251HeadGvBefore s6Step251HeadGvRow 142 s6Step251HeadGvFresh=
    some (s6Step251HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 786],775⟩,growRow 775 s6Step251HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step251HeadGvBefore s6Step251HeadGvAfter s6Step251HeadGvRow 142 s6Step251HeadGvFresh
    s6Step251HeadGv_distinct s6Step251HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step251HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step251HeadGvRow.payload++s6Step251HeadGvFresh) s6Step251HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 786],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step251HeadBank_rows : planWindowRowsLog s6Step251HeadGBefore [(s6Step251HeadGRow,146),(s6Step251HeadFRow,146),(s6Step251HeadGvRow,142),(s6Step251HeadFvRow,142)] [s6Step251HeadGFresh,s6Step251HeadFFresh,s6Step251HeadGvFresh,s6Step251HeadFvFresh]=
    some (s6Step251HeadFvAfter,[s6Step251HeadGOut,s6Step251HeadFOut,s6Step251HeadGvOut,s6Step251HeadFvOut],(growRow 777 s6Step251HeadGFresh ++ (growRow 795 s6Step251HeadFFresh ++ (growRow 775 s6Step251HeadGvFresh ++ (growRow 776 s6Step251HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step251HeadFvAfter [] []=some (s6Step251HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step251HeadFvBefore s6Step251HeadFvAfter s6Step251HeadFvAfter
    s6Step251HeadFvRow s6Step251HeadFvOut 142 s6Step251HeadFvFresh [] [] []
    (growRow 776 s6Step251HeadFvFresh) ([]) s6Step251HeadFv_Incoming s6Step251HeadFv_checked h4 s6Step251HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step251HeadGvBefore s6Step251HeadGvAfter s6Step251HeadFvAfter
    s6Step251HeadGvRow s6Step251HeadGvOut 142 s6Step251HeadGvFresh [(s6Step251HeadFvRow,142)] [s6Step251HeadFvFresh] [s6Step251HeadFvOut]
    (growRow 775 s6Step251HeadGvFresh) ((growRow 776 s6Step251HeadFvFresh ++ [])) s6Step251HeadGv_Incoming s6Step251HeadGv_checked h3 s6Step251HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step251HeadFBefore s6Step251HeadFAfter s6Step251HeadFvAfter
    s6Step251HeadFRow s6Step251HeadFOut 146 s6Step251HeadFFresh [(s6Step251HeadGvRow,142),(s6Step251HeadFvRow,142)] [s6Step251HeadGvFresh,s6Step251HeadFvFresh] [s6Step251HeadGvOut,s6Step251HeadFvOut]
    (growRow 795 s6Step251HeadFFresh) ((growRow 775 s6Step251HeadGvFresh ++ (growRow 776 s6Step251HeadFvFresh ++ []))) s6Step251HeadF_Incoming s6Step251HeadF_checked h2 s6Step251HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step251HeadGBefore s6Step251HeadGAfter s6Step251HeadFvAfter
    s6Step251HeadGRow s6Step251HeadGOut 146 s6Step251HeadGFresh [(s6Step251HeadFRow,146),(s6Step251HeadGvRow,142),(s6Step251HeadFvRow,142)] [s6Step251HeadFFresh,s6Step251HeadGvFresh,s6Step251HeadFvFresh] [s6Step251HeadFOut,s6Step251HeadGvOut,s6Step251HeadFvOut]
    (growRow 777 s6Step251HeadGFresh) ((growRow 795 s6Step251HeadFFresh ++ (growRow 775 s6Step251HeadGvFresh ++ (growRow 776 s6Step251HeadFvFresh ++ [])))) s6Step251HeadG_Incoming s6Step251HeadG_checked h1 s6Step251HeadG_Outgoing
  exact h0

private theorem s6Step251HeadBank_checked : compileHmrBankResizeLog .headroom s6Step251HeadGBefore ⟨s6Step251HeadFRow,s6Step251HeadGRow,s6Step251HeadFvRow,s6Step251HeadGvRow⟩ ⟨146,146,142,142⟩ [s6Step251HeadGFresh,s6Step251HeadFFresh,s6Step251HeadGvFresh,s6Step251HeadFvFresh]=
    some (s6Step251HeadFvAfter,⟨s6Step251HeadFOut,s6Step251HeadGOut,s6Step251HeadFvOut,s6Step251HeadGvOut⟩,(growRow 777 s6Step251HeadGFresh ++ (growRow 795 s6Step251HeadFFresh ++ (growRow 775 s6Step251HeadGvFresh ++ (growRow 776 s6Step251HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step251HeadBank_rows]
  rfl

private theorem s6Step251Front_checked : compileHmrSourceFrontLog s6Step251EntryFBefore s6Step251FrontBank 145 141 ⟨144,145,141,141⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step251FrontLog=some s6Step251FrontPlan := by
  have pairEq : s6Step251FrontPair=⟨s6Step251HeadFRow,s6Step251HeadGRow,s6Step251HeadFvRow,s6Step251HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step251FrontHead=⟨s6Step251ExitFRow,s6Step251ExitGRow,s6Step251ExitFvRow,s6Step251ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step251Add0A=s6Step251FrontHead.f.wires := by decide +kernel
  have gEq : s6Step251Add0B=s6Step251FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step251Add1A=s6Step251FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step251Add1B=s6Step251FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step251EntryFBefore s6Step251FrontBank 145 141 ⟨144,145,141,141⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step251FrontLog s6Step251FrontPlan
  · exact s6Step251Front_entry
  · exact s6Step251EntryBank_checked
  · exact s6Step251Front_sigma
  · rfl
  · exact s6Step251Front_branch
  · rfl
  · simpa only [s6Step251FrontPlan,pairEq] using s6Step251HeadBank_checked
  · simpa only [s6Step251FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step251F4_checked
  · exact s6Step251Counter_checked
  · rfl
  · simpa only [s6Step251FrontPlan,headEq] using s6Step251ExitBank_checked

private theorem s6Step251Complete_explicit_checked : compileHmrEarlyStepLog s6Step251EntryFBefore s6Step251FrontBank 145 141 ⟨144,145,141,141⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step251CompleteLog=some s6Step251CompletePlan := by
  let Q := s6Step251EarlyControlPlan
  have hq := s6Step251EarlyControl_plan_checked
  have fv1 : s6Step251CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step251CompleteOut.fv.payload[2]?.getD s6Step251CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step251CompleteOut.fv.payload[3]?.getD s6Step251CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step251CompleteOut.fv.payload[4]?.getD s6Step251CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step251EntryFBefore s6Step251EarlyControlArena s6Step251FrontBank 145 141 ⟨144,145,141,141⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step251CompleteLog s6Step251FrontPlan Q
    s6Step251Front_checked s6Step251Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step251Complete_owned s6Step251Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step251EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 860 s6Step251CompleteOut.fv.second (s6Step251CompleteOut.fv.payload[2]?.getD s6Step251CompleteOut.fv.sign) (s6Step251CompleteOut.fv.payload[3]?.getD s6Step251CompleteOut.fv.sign) (s6Step251CompleteOut.fv.payload[4]?.getD s6Step251CompleteOut.fv.sign) 862 51 s6Step251EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep251Arena : Arena := s6Step251EntryFBefore
def s6PrivateStep251Bank : WindowBank := s6Step251FrontBank
def s6PrivateStep251Spec : HmrSourceWalkStepLog := ⟨145,141,⟨144,145,141,141⟩,51,.early s6Step251CompleteLog⟩
def s6PrivateStep251Plan : HmrSourceStepPlan := .early s6Step251CompletePlan
theorem s6PrivateStep251_source : s6PrivateStep251Spec=s6ObservedLogs240[11] := rfl
theorem s6PrivateStep251_checked : compileHmrSourceStepLog s6PrivateStep251Arena s6PrivateStep251Bank
    s6PrivateStep251Spec.fgWidth s6PrivateStep251Spec.vWidth s6PrivateStep251Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905]
    6 498 251 s6PrivateStep251Spec.need none s6PrivateStep251Spec.log=some s6PrivateStep251Plan := by
  change compileHmrSourceStepLog s6Step251EntryFBefore s6Step251FrontBank 145 141 ⟨144,145,141,141⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 6 498 251 51 none (.early s6Step251CompleteLog)=some (.early s6Step251CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 251<498)]
  rw [s6Step251Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
