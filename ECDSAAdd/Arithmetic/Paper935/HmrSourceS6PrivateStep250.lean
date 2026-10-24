import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep248
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

private def s6Step250CompleteMoves : List (Wire × Wire) := [(862,401)]

private def s6Step250EarlyControlLog : HmrEarlyControlLog := ⟨[862, 839, 805, 786, 868],[822],[864],[810, 809, 817, 812, 915, 932],[]⟩

private def s6Step250FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [830, 786], [], [821]],[[868], [805], [839], [818]],[[], [], [], []]⟩,[860],[863],[822],[864],[810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[822, 864, 810, 809]⟩

private def s6Step250CompleteLog : HmrEarlyStepLog := ⟨s6Step250FrontLog,s6Step250CompleteMoves,s6Step250EarlyControlLog⟩

private def s6Step250ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400],795⟩

private def s6Step250ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818],776⟩

private def s6Step250ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830],777⟩

private def s6Step250ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821],775⟩

private def s6Step250FrontOut : WindowBank := ⟨s6Step250ExitFOut,s6Step250ExitGOut,s6Step250ExitFvOut,s6Step250ExitGvOut⟩

private def s6Step250CompleteOut : WindowBank := s6Step250FrontOut.repacked s6Step250CompleteMoves

private def s6Step250EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step250EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step250EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step250EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step250EarlyControlPositiveArena,[822],s6Step250EarlyControlEqualityArena,[864],⟨⟨860,false⟩,[⟨⟨822,false⟩,864⟩]⟩⟩

private def s6Step250EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step250EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step250EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step250EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step250EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step250EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step250EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,862⟩,⟨⟨772,false⟩,839⟩,⟨⟨771,false⟩,805⟩,⟨⟨770,false⟩,786⟩,⟨⟨769,false⟩,868⟩]⟩

private def s6Step250EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step250EarlyControlZeroArena,s6Step250EarlyControlZeroPlan,s6Step250EarlyControlClassPlan,s6Step250EarlyControlFlagArena,s6Step250EarlyControlFittedArena,s6Step250EarlyControlHistoryArena,s6Step250EarlyControlSigmaArena,s6Step250EarlyControlOutputArena,s6Step250EarlyControlLog⟩

private def s6Step250CounterWork : List Wire := [822, 864, 810, 809]

private theorem s6Step250Counter_bounded : s6Step250CounterWork.toFinset⊆arenaWires := by norm_num [s6Step250CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step250HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step250CounterDuring : Arena := ⟨s6Step250HeadFvAfter.live∪s6Step250CounterWork.toFinset,Finset.union_subset s6Step250HeadFvAfter.bounded s6Step250Counter_bounded⟩

private def s6Step250EntryFFresh : List Wire := []

private def s6Step250EntryFvFresh : List Wire := []

private def s6Step250EntryGFresh : List Wire := [830, 786]

private def s6Step250EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step250EntryGvFresh : List Wire := [821]

private def s6Step250ExitFExtra : List Wire := [401, 805]

private def s6Step250ExitGExtra : List Wire := [786, 868]

private def s6Step250ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<401) ∨ (402≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step250ExitGvExtra : List Wire := [839]

private def s6Step250Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step250Add0Work : List Wire := [810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step250Add0_bounded : s6Step250Add0Work.toFinset⊆arenaWires := by
  have h : s6Step250Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step250Add0During : Arena := ⟨s6Step250Add0Arena.live∪s6Step250Add0Work.toFinset,Finset.union_subset s6Step250Add0Arena.bounded s6Step250Add0_bounded⟩

private def s6Step250Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step250Add1Work : List Wire := [810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step250Add1_bounded : s6Step250Add1Work.toFinset⊆arenaWires := by
  have h : s6Step250Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step250Add1During : Arena := ⟨s6Step250Add1Arena.live∪s6Step250Add1Work.toFinset,Finset.union_subset s6Step250Add1Arena.bounded s6Step250Add1_bounded⟩

private def s6Step250F4FlagArena : Arena := ⟨s6Step250HeadFvAfter.live∪{822},Finset.union_subset s6Step250HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step250F4Plan : HmrHybridF4Plan := ⟨s6Step250F4FlagArena,[822],s6Step250Add0Arena,[864],s6Step250Add0During,s6Step250Add0Work,s6Step250Add1During,s6Step250Add1Work⟩

private def s6Step250HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 805],795⟩

private def s6Step250HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818],776⟩

private def s6Step250HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 786, 868],777⟩

private def s6Step250HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 839],775⟩

private def s6Step250FrontHead : WindowBank := ⟨s6Step250HeadFOut,s6Step250HeadGOut,s6Step250HeadFvOut,s6Step250HeadGvOut⟩

private def s6Step250EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401],795⟩

private def s6Step250EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841],776⟩

private def s6Step250EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 786],777⟩

private def s6Step250EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821],775⟩

private def s6Step250FrontPair : WindowBank := ⟨s6Step250EntryFOut,s6Step250EntryGOut,s6Step250EntryFvOut,s6Step250EntryGvOut⟩

private def s6Step250FrontSigmaArena : Arena := ⟨s6Step250EntryGvAfter.live∪{860},Finset.union_subset s6Step250EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step250HeadFFresh : List Wire := [805]

private def s6Step250HeadFvFresh : List Wire := [818]

private def s6Step250HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step250HeadGFresh : List Wire := [868]

private def s6Step250HeadGvFresh : List Wire := [839]

private def s6Step250FrontPlan : HmrSourceFront := ⟨s6Step250EntryGvAfter,s6Step250FrontPair,(growRow 795 s6Step250EntryFFresh ++ (growRow 777 s6Step250EntryGFresh ++ (growRow 776 s6Step250EntryFvFresh ++ (growRow 775 s6Step250EntryGvFresh ++ [])))),s6Step250FrontSigmaArena,[860],s6Step250HeadGBefore,[863],
  s6Step250HeadFvAfter,s6Step250FrontHead,(growRow 777 s6Step250HeadGFresh ++ (growRow 795 s6Step250HeadFFresh ++ (growRow 775 s6Step250HeadGvFresh ++ (growRow 776 s6Step250HeadFvFresh ++ [])))),s6Step250F4Plan,s6Step250CounterDuring,s6Step250CounterWork,s6Step250ExitGvAfter,s6Step250FrontOut,(shrinkRow 777 s6Step250ExitGExtra ++ (shrinkRow 795 s6Step250ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step250ExitGvExtra ++ []))))⟩

private def s6Step250CompletePlan : HmrEarlyStepPlan := ⟨s6Step250FrontPlan,s6Step250EarlyControlArena,s6Step250EarlyControlPlan,s6Step250CompleteMoves⟩

private theorem s6Step250Complete_apart : List.Disjoint (s6Step250CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [860, 863, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] := by
  have nd : ((s6Step250CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[860, 863, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step250Complete_owned : (s6Step250CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step250EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step250EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step250CompleteMoveArena : Arena := ⟨s6Step250ExitGvAfter.live∪{401},Finset.union_subset s6Step250ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step250Complete_repack : s6Step250ExitGvAfter.checkRepack s6Step250CompleteMoves=some s6Step250EarlyControlArena := by
  have owned : 862∈s6Step250ExitGvAfter.live := by norm_num [s6Step250ExitGvAfter,arenaWires]
  have reserve : s6Step250ExitGvAfter.reserve {401}=some s6Step250CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step250ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step250CompleteMoveArena.retireSet {862}=s6Step250EarlyControlArena := by
    unfold Arena.retireSet s6Step250EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step250CompleteMoveArena,s6Step250ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step250CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step250CompleteMoveArena.retireSet {862}).checkRepack []=some s6Step250EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step250EarlyControl_branchOwned : ([863] : List Wire).toFinset⊆s6Step250EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step250EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step250EarlyControl_branch : compileHmrBranchRetirement s6Step250EarlyControlSigmaArena 863=some s6Step250EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step250EarlyControl_branchOwned
  · ext q
    simp [s6Step250EarlyControlOutputArena,s6Step250EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step250EarlyControl_classEqualityBorrow : s6Step250EarlyControlPositiveArena.checkBorrow (([860, 822] : List Wire).length-1) s6Step250EarlyControlLog.classWork=some s6Step250EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step250EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step250EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step250EarlyControlEqualityArena,s6Step250EarlyControlPositiveArena,s6Step250EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step250EarlyControl_classEqualityOwned : ([860, 822] : List Wire).toFinset⊆s6Step250EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step250EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step250EarlyControl_classEquality : compileHmrEqualityLog s6Step250EarlyControlPositiveArena [860, 822] 0 s6Step250EarlyControlLog.classWork=some (s6Step250EarlyControlEqualityArena,s6Step250EarlyControlLog.classWork,s6Step250EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step250EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step250EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step250EarlyControl_classOwned : ([769, 868, 860] : List Wire).toFinset⊆s6Step250EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step250EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step250EarlyControl_positiveBorrow : s6Step250EarlyControlZeroArena.checkBorrow (1) s6Step250EarlyControlLog.positiveWork=some s6Step250EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step250EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step250EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step250EarlyControlPositiveArena,s6Step250EarlyControlZeroArena,s6Step250EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step250EarlyControl_class : compileHmrSourceClassLog s6Step250EarlyControlZeroArena false 769 s6Step250EarlyControlZeroPlan.top 0 860 s6Step250EarlyControlLog.positiveWork s6Step250EarlyControlLog.classWork=some s6Step250EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step250EarlyControlClassPlan s6Step250EarlyControlZeroArena false 769 s6Step250EarlyControlZeroPlan.top 0 860
  constructor
  · decide +kernel
  · exact s6Step250EarlyControl_classOwned
  · exact s6Step250EarlyControl_positiveBorrow
  · exact s6Step250EarlyControl_classEquality

private theorem s6Step250EarlyControl_entryRecordOwned : ([863, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step250EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step250EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step250EarlyControl_entrySigmaOwned : ([860, 254] : List Wire).toFinset⊆s6Step250EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step250EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step250EarlyControl_fitBorrow : s6Step250EarlyControlFlagArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).length)) s6Step250EarlyControlLog.recordFresh=some s6Step250EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step250EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step250EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step250EarlyControlFittedArena,s6Step250EarlyControlFlagArena,s6Step250EarlyControlLog,arenaWires]

private theorem s6Step250EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step250EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step250EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step250EarlyControl_fit : compileHmrRecordGrowLog s6Step250EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step250EarlyControlLog.recordFresh=some s6Step250EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step250EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step250EarlyControl_fitBorrow

private theorem s6Step250EarlyControl_flagsBorrow : s6Step250EarlyControlEqualityArena.checkBorrow (6) s6Step250EarlyControlLog.flagWork=some s6Step250EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step250EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step250EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step250EarlyControlFlagArena,s6Step250EarlyControlEqualityArena,s6Step250EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step250EarlyControl_flagsOwned : ([864, 253, 252, 251] : List Wire).toFinset⊆s6Step250EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step250EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step250EarlyControl_flags : compileHmrFlagsLog s6Step250EarlyControlClassPlan.equalityArena s6Step250EarlyControlClassPlan.equality.top 253 252 251 s6Step250EarlyControlLog.flagWork=some s6Step250EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step250EarlyControl_flagsOwned⟩
  · exact s6Step250EarlyControl_flagsBorrow

private theorem s6Step250EarlyControl_historyBorrow : s6Step250EarlyControlArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).length)) s6Step250EarlyControlLog.recordFresh=some s6Step250EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step250EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step250EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step250EarlyControlHistoryArena,s6Step250EarlyControlArena,s6Step250EarlyControlLog,arenaWires]

private theorem s6Step250EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step250EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step250EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step250EarlyControl_history : compileHmrRecordGrowLog s6Step250EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step250EarlyControlLog.recordFresh=some s6Step250EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step250EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step250EarlyControl_historyBorrow

private theorem s6Step250EarlyControl_sigmaOwned : ([254, 860] : List Wire).toFinset⊆s6Step250EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step250EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step250EarlyControl_sigmaReleaseOwned : ([860] : List Wire).toFinset⊆s6Step250EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step250EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step250EarlyControl_sigmaRelease : s6Step250EarlyControlHistoryArena.release {860} (fun _ => false)=some s6Step250EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step250EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step250EarlyControlSigmaArena,s6Step250EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step250EarlyControl_sigma : compileHmrSigmaDropLog s6Step250EarlyControlHistoryArena false 0 0 254 860 []=some s6Step250EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step250EarlyControl_sigmaOwned⟩
  · exact s6Step250EarlyControl_sigmaRelease

private theorem s6Step250EarlyControl_zeroBorrow : s6Step250EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step250EarlyControlLog.zeroWork=some s6Step250EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step250EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step250EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step250EarlyControlZeroArena,s6Step250EarlyControlArena,s6Step250EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step250EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step250EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step250EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step250EarlyControl_zero : compileHmrEqualityLog s6Step250EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step250EarlyControlLog.zeroWork=some (s6Step250EarlyControlZeroArena,s6Step250EarlyControlLog.zeroWork,s6Step250EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step250EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step250EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step250EarlyControl_logged : s6Step250EarlyControlPlan.Logged s6Step250EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 860 254 253 252 251 863 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step250EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step250EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step250EarlyControl_zero
  · exact s6Step250EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step250EarlyControl_flags
  · exact s6Step250EarlyControl_fit
  · exact s6Step250EarlyControl_history
  · exact s6Step250EarlyControl_sigma
  · exact s6Step250EarlyControl_branch

private theorem s6Step250EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step250EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 860 254 253 252 251 863 51 s6Step250EarlyControlLog=some s6Step250EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step250EarlyControlPlan s6Step250EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 860 254 253 252 251 863 51 s6Step250EarlyControl_logged

private def s6Step250EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step250EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401],795⟩

private def s6Step250EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841],776⟩

private def s6Step250EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143],777⟩

private def s6Step250EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890],775⟩

private def s6Step250FrontBank : WindowBank := ⟨s6Step250EntryFRow,s6Step250EntryGRow,s6Step250EntryFvRow,s6Step250EntryGvRow⟩

private def s6Step250Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 805, 795]

private def s6Step250Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 786, 868, 777]

private def s6Step250Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 776]

private def s6Step250Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 839, 775]

private theorem s6Step250Counter_apart : Disjoint s6Step250HeadFvAfter.live s6Step250CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step250HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step250Counter_borrowed : s6Step250HeadFvAfter.checkBorrow 4 s6Step250CounterWork=some s6Step250CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step250HeadFvAfter s6Step250CounterDuring s6Step250CounterWork.toFinset s6Step250Counter_bounded s6Step250Counter_apart rfl

private theorem s6Step250Counter_owned : (860::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step250HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step250HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step250Counter_checked : compileHmrCounterStepLog s6Step250HeadFvAfter true 860 [774, 773, 772, 771, 770, 769] s6Step250CounterWork=some s6Step250CounterDuring := by
  have owned : ∀q∈860::[774, 773, 772, 771, 770, 769],q∈s6Step250HeadFvAfter.live := fun q hq => s6Step250Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step250Counter_borrowed

private def s6Step250EntryFAfter : Arena := s6Step250EntryFBefore

private theorem s6Step250EntryBank_incomingDistinct : ([s6Step250EntryFRow,s6Step250EntryGRow,s6Step250EntryFvRow,s6Step250EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step250EntryF_Incoming : rowsOwned s6Step250EntryFBefore [s6Step250EntryFRow,s6Step250EntryGRow,s6Step250EntryFvRow,s6Step250EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step250EntryFRow,s6Step250EntryGRow,s6Step250EntryFvRow,s6Step250EntryGvRow] 0 s6Step250EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step250EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step250EntryBank_outgoingOwned : rowsOwned s6Step250EntryGvAfter [s6Step250EntryFOut,s6Step250EntryGOut,s6Step250EntryFvOut,s6Step250EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step250EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step250EntryF_Outgoing : rowsOwned s6Step250EntryGvAfter [s6Step250EntryFOut,s6Step250EntryGOut,s6Step250EntryFvOut,s6Step250EntryGvOut] :=
  hmrRows_owned_drop s6Step250EntryGvAfter [s6Step250EntryFOut,s6Step250EntryGOut,s6Step250EntryFvOut,s6Step250EntryGvOut] 0 s6Step250EntryBank_outgoingOwned

private theorem s6Step250EntryF_distinct : (s6Step250EntryFRow.sign::s6Step250EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step250EntryF_owned : (s6Step250EntryFRow.sign::s6Step250EntryFRow.payload).toFinset⊆s6Step250EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step250EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step250EntryF_reserved : s6Step250EntryFBefore.reserve s6Step250EntryFFresh.toFinset=some s6Step250EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step250EntryFFresh,arenaWires]
  · norm_num [s6Step250EntryFBefore,s6Step250EntryFFresh,arenaWires]
  · simp only [s6Step250EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step250EntryF_checked : planRowResizeLog s6Step250EntryFBefore s6Step250EntryFRow 146 s6Step250EntryFFresh=
    some (s6Step250EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401],795⟩,growRow 795 s6Step250EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step250EntryFBefore s6Step250EntryFAfter s6Step250EntryFRow 146 s6Step250EntryFFresh
    s6Step250EntryF_distinct s6Step250EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step250EntryF_reserved
  have rowEq : WindowRow.mk (s6Step250EntryFRow.payload++s6Step250EntryFFresh) s6Step250EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step250EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step250EntryFvAfter : Arena := s6Step250EntryGAfter

private def s6Step250EntryFvBefore : Arena := s6Step250EntryGAfter

private theorem s6Step250EntryFv_Incoming : rowsOwned s6Step250EntryFvBefore [s6Step250EntryFvRow,s6Step250EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step250EntryFRow,s6Step250EntryGRow,s6Step250EntryFvRow,s6Step250EntryGvRow] 2 s6Step250EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step250EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step250EntryFv_Outgoing : rowsOwned s6Step250EntryGvAfter [s6Step250EntryFvOut,s6Step250EntryGvOut] :=
  hmrRows_owned_drop s6Step250EntryGvAfter [s6Step250EntryFOut,s6Step250EntryGOut,s6Step250EntryFvOut,s6Step250EntryGvOut] 2 s6Step250EntryBank_outgoingOwned

private theorem s6Step250EntryFv_distinct : (s6Step250EntryFvRow.sign::s6Step250EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step250EntryFv_owned : (s6Step250EntryFvRow.sign::s6Step250EntryFvRow.payload).toFinset⊆s6Step250EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step250EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step250EntryFv_reserved : s6Step250EntryFvBefore.reserve s6Step250EntryFvFresh.toFinset=some s6Step250EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step250EntryFvFresh,arenaWires]
  · norm_num [s6Step250EntryFvBefore,s6Step250EntryGAfter,s6Step250EntryFvFresh,arenaWires]
  · simp only [s6Step250EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step250EntryFv_checked : planRowResizeLog s6Step250EntryFvBefore s6Step250EntryFvRow 140 s6Step250EntryFvFresh=
    some (s6Step250EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841],776⟩,growRow 776 s6Step250EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step250EntryFvBefore s6Step250EntryFvAfter s6Step250EntryFvRow 140 s6Step250EntryFvFresh
    s6Step250EntryFv_distinct s6Step250EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step250EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step250EntryFvRow.payload++s6Step250EntryFvFresh) s6Step250EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step250EntryGBefore : Arena := s6Step250EntryFBefore

private theorem s6Step250EntryG_Incoming : rowsOwned s6Step250EntryGBefore [s6Step250EntryGRow,s6Step250EntryFvRow,s6Step250EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step250EntryFRow,s6Step250EntryGRow,s6Step250EntryFvRow,s6Step250EntryGvRow] 1 s6Step250EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step250EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step250EntryG_Outgoing : rowsOwned s6Step250EntryGvAfter [s6Step250EntryGOut,s6Step250EntryFvOut,s6Step250EntryGvOut] :=
  hmrRows_owned_drop s6Step250EntryGvAfter [s6Step250EntryFOut,s6Step250EntryGOut,s6Step250EntryFvOut,s6Step250EntryGvOut] 1 s6Step250EntryBank_outgoingOwned

private theorem s6Step250EntryG_distinct : (s6Step250EntryGRow.sign::s6Step250EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step250EntryG_owned : (s6Step250EntryGRow.sign::s6Step250EntryGRow.payload).toFinset⊆s6Step250EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step250EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step250EntryG_reserved : s6Step250EntryGBefore.reserve s6Step250EntryGFresh.toFinset=some s6Step250EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step250EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step250EntryGBefore,s6Step250EntryFBefore,s6Step250EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step250EntryGAfter,s6Step250EntryGBefore,s6Step250EntryFBefore,s6Step250EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step250EntryG_checked : planRowResizeLog s6Step250EntryGBefore s6Step250EntryGRow 146 s6Step250EntryGFresh=
    some (s6Step250EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 786],777⟩,growRow 777 s6Step250EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step250EntryGBefore s6Step250EntryGAfter s6Step250EntryGRow 146 s6Step250EntryGFresh
    s6Step250EntryG_distinct s6Step250EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step250EntryG_reserved
  have rowEq : WindowRow.mk (s6Step250EntryGRow.payload++s6Step250EntryGFresh) s6Step250EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 786],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step250EntryGvBefore : Arena := s6Step250EntryGAfter

private theorem s6Step250EntryGv_Incoming : rowsOwned s6Step250EntryGvBefore [s6Step250EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step250EntryFRow,s6Step250EntryGRow,s6Step250EntryFvRow,s6Step250EntryGvRow] 3 s6Step250EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step250EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step250EntryGv_Outgoing : rowsOwned s6Step250EntryGvAfter [s6Step250EntryGvOut] :=
  hmrRows_owned_drop s6Step250EntryGvAfter [s6Step250EntryFOut,s6Step250EntryGOut,s6Step250EntryFvOut,s6Step250EntryGvOut] 3 s6Step250EntryBank_outgoingOwned

private theorem s6Step250EntryGv_distinct : (s6Step250EntryGvRow.sign::s6Step250EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step250EntryGv_owned : (s6Step250EntryGvRow.sign::s6Step250EntryGvRow.payload).toFinset⊆s6Step250EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step250EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step250EntryGv_reserved : s6Step250EntryGvBefore.reserve s6Step250EntryGvFresh.toFinset=some s6Step250EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step250EntryGvFresh,arenaWires]
  · norm_num [s6Step250EntryGvBefore,s6Step250EntryGAfter,s6Step250EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step250EntryGvAfter,s6Step250EntryGvBefore,s6Step250EntryGAfter,s6Step250EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step250EntryGv_checked : planRowResizeLog s6Step250EntryGvBefore s6Step250EntryGvRow 140 s6Step250EntryGvFresh=
    some (s6Step250EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821],775⟩,growRow 775 s6Step250EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step250EntryGvBefore s6Step250EntryGvAfter s6Step250EntryGvRow 140 s6Step250EntryGvFresh
    s6Step250EntryGv_distinct s6Step250EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step250EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step250EntryGvRow.payload++s6Step250EntryGvFresh) s6Step250EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step250EntryBank_rows : planWindowRowsLog s6Step250EntryFBefore [(s6Step250EntryFRow,146),(s6Step250EntryGRow,146),(s6Step250EntryFvRow,140),(s6Step250EntryGvRow,140)] [s6Step250EntryFFresh,s6Step250EntryGFresh,s6Step250EntryFvFresh,s6Step250EntryGvFresh]=
    some (s6Step250EntryGvAfter,[s6Step250EntryFOut,s6Step250EntryGOut,s6Step250EntryFvOut,s6Step250EntryGvOut],(growRow 795 s6Step250EntryFFresh ++ (growRow 777 s6Step250EntryGFresh ++ (growRow 776 s6Step250EntryFvFresh ++ (growRow 775 s6Step250EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step250EntryGvAfter [] []=some (s6Step250EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step250EntryGvBefore s6Step250EntryGvAfter s6Step250EntryGvAfter
    s6Step250EntryGvRow s6Step250EntryGvOut 140 s6Step250EntryGvFresh [] [] []
    (growRow 775 s6Step250EntryGvFresh) ([]) s6Step250EntryGv_Incoming s6Step250EntryGv_checked h4 s6Step250EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step250EntryFvBefore s6Step250EntryFvAfter s6Step250EntryGvAfter
    s6Step250EntryFvRow s6Step250EntryFvOut 140 s6Step250EntryFvFresh [(s6Step250EntryGvRow,140)] [s6Step250EntryGvFresh] [s6Step250EntryGvOut]
    (growRow 776 s6Step250EntryFvFresh) ((growRow 775 s6Step250EntryGvFresh ++ [])) s6Step250EntryFv_Incoming s6Step250EntryFv_checked h3 s6Step250EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step250EntryGBefore s6Step250EntryGAfter s6Step250EntryGvAfter
    s6Step250EntryGRow s6Step250EntryGOut 146 s6Step250EntryGFresh [(s6Step250EntryFvRow,140),(s6Step250EntryGvRow,140)] [s6Step250EntryFvFresh,s6Step250EntryGvFresh] [s6Step250EntryFvOut,s6Step250EntryGvOut]
    (growRow 777 s6Step250EntryGFresh) ((growRow 776 s6Step250EntryFvFresh ++ (growRow 775 s6Step250EntryGvFresh ++ []))) s6Step250EntryG_Incoming s6Step250EntryG_checked h2 s6Step250EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step250EntryFBefore s6Step250EntryFAfter s6Step250EntryGvAfter
    s6Step250EntryFRow s6Step250EntryFOut 146 s6Step250EntryFFresh [(s6Step250EntryGRow,146),(s6Step250EntryFvRow,140),(s6Step250EntryGvRow,140)] [s6Step250EntryGFresh,s6Step250EntryFvFresh,s6Step250EntryGvFresh] [s6Step250EntryGOut,s6Step250EntryFvOut,s6Step250EntryGvOut]
    (growRow 795 s6Step250EntryFFresh) ((growRow 777 s6Step250EntryGFresh ++ (growRow 776 s6Step250EntryFvFresh ++ (growRow 775 s6Step250EntryGvFresh ++ [])))) s6Step250EntryF_Incoming s6Step250EntryF_checked h1 s6Step250EntryF_Outgoing
  exact h0

private theorem s6Step250EntryBank_checked : compileHmrBankResizeLog .entry s6Step250EntryFBefore ⟨s6Step250EntryFRow,s6Step250EntryGRow,s6Step250EntryFvRow,s6Step250EntryGvRow⟩ ⟨146,146,140,140⟩ [s6Step250EntryFFresh,s6Step250EntryGFresh,s6Step250EntryFvFresh,s6Step250EntryGvFresh]=
    some (s6Step250EntryGvAfter,⟨s6Step250EntryFOut,s6Step250EntryGOut,s6Step250EntryFvOut,s6Step250EntryGvOut⟩,(growRow 795 s6Step250EntryFFresh ++ (growRow 777 s6Step250EntryGFresh ++ (growRow 776 s6Step250EntryFvFresh ++ (growRow 775 s6Step250EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step250EntryBank_rows]
  rfl

private def s6Step250ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<401) ∨ (402≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step250ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step250ExitFBefore : Arena := s6Step250ExitGAfter

private def s6Step250ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 805],795⟩

private def s6Step250ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818],776⟩

private def s6Step250ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 786, 868],777⟩

private def s6Step250ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 839],775⟩

private theorem s6Step250ExitBank_incomingDistinct : ([s6Step250ExitGRow,s6Step250ExitFRow,s6Step250ExitFvRow,s6Step250ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step250ExitF_Incoming : rowsOwned s6Step250ExitFBefore [s6Step250ExitFRow,s6Step250ExitFvRow,s6Step250ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step250ExitGRow,s6Step250ExitFRow,s6Step250ExitFvRow,s6Step250ExitGvRow] 1 s6Step250ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step250ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step250ExitBank_outgoingOwned : rowsOwned s6Step250ExitGvAfter [s6Step250ExitGOut,s6Step250ExitFOut,s6Step250ExitFvOut,s6Step250ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step250ExitGvAfter (fun q => (0≤q ∧ q<401) ∨ (402≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step250ExitF_Outgoing : rowsOwned s6Step250ExitGvAfter [s6Step250ExitFOut,s6Step250ExitFvOut,s6Step250ExitGvOut] :=
  hmrRows_owned_drop s6Step250ExitGvAfter [s6Step250ExitGOut,s6Step250ExitFOut,s6Step250ExitFvOut,s6Step250ExitGvOut] 1 s6Step250ExitBank_outgoingOwned

private theorem s6Step250ExitF_distinct : (s6Step250ExitFRow.sign::s6Step250ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step250ExitF_owned : (s6Step250ExitFRow.sign::s6Step250ExitFRow.payload).toFinset⊆s6Step250ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step250ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step250ExitF_retired : s6Step250ExitFBefore.retireSet s6Step250ExitFExtra.toFinset=s6Step250ExitFAfter := by
  unfold Arena.retireSet s6Step250ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step250ExitFBefore,s6Step250ExitGAfter,s6Step250ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step250ExitF_checked : planRowResizeLog s6Step250ExitFBefore s6Step250ExitFRow 145 []=
    some (s6Step250ExitFAfter,s6Step250ExitFOut,shrinkRow 795 s6Step250ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step250ExitFBefore s6Step250ExitFRow 145 s6Step250ExitF_distinct s6Step250ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step250ExitFRow.payload.take 145) s6Step250ExitFRow.sign=s6Step250ExitFOut := by decide +kernel
  have hi : s6Step250ExitFRow.payload.drop 145=s6Step250ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step250ExitF_retired] at result
  exact result

private def s6Step250ExitFvAfter : Arena := s6Step250ExitFAfter

private def s6Step250ExitFvBefore : Arena := s6Step250ExitFAfter

private theorem s6Step250ExitFv_Incoming : rowsOwned s6Step250ExitFvBefore [s6Step250ExitFvRow,s6Step250ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step250ExitGRow,s6Step250ExitFRow,s6Step250ExitFvRow,s6Step250ExitGvRow] 2 s6Step250ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step250ExitFvBefore (fun q => (0≤q ∧ q<401) ∨ (402≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step250ExitFv_Outgoing : rowsOwned s6Step250ExitGvAfter [s6Step250ExitFvOut,s6Step250ExitGvOut] :=
  hmrRows_owned_drop s6Step250ExitGvAfter [s6Step250ExitGOut,s6Step250ExitFOut,s6Step250ExitFvOut,s6Step250ExitGvOut] 2 s6Step250ExitBank_outgoingOwned

private theorem s6Step250ExitFv_distinct : (s6Step250ExitFvRow.sign::s6Step250ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step250ExitFv_owned : (s6Step250ExitFvRow.sign::s6Step250ExitFvRow.payload).toFinset⊆s6Step250ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step250ExitFvBefore (fun q => (0≤q ∧ q<401) ∨ (402≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step250ExitFv_reserved : s6Step250ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step250ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step250ExitFv_checked : planRowResizeLog s6Step250ExitFvBefore s6Step250ExitFvRow 141 []=
    some (s6Step250ExitFvAfter,s6Step250ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step250ExitFvBefore s6Step250ExitFvAfter s6Step250ExitFvRow 141 []
    s6Step250ExitFv_distinct s6Step250ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step250ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step250ExitFvRow.payload++[]) s6Step250ExitFvRow.sign=s6Step250ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step250ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step250ExitG_Incoming : rowsOwned s6Step250ExitGBefore [s6Step250ExitGRow,s6Step250ExitFRow,s6Step250ExitFvRow,s6Step250ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step250ExitGRow,s6Step250ExitFRow,s6Step250ExitFvRow,s6Step250ExitGvRow] 0 s6Step250ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step250ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step250ExitG_Outgoing : rowsOwned s6Step250ExitGvAfter [s6Step250ExitGOut,s6Step250ExitFOut,s6Step250ExitFvOut,s6Step250ExitGvOut] :=
  hmrRows_owned_drop s6Step250ExitGvAfter [s6Step250ExitGOut,s6Step250ExitFOut,s6Step250ExitFvOut,s6Step250ExitGvOut] 0 s6Step250ExitBank_outgoingOwned

private theorem s6Step250ExitG_distinct : (s6Step250ExitGRow.sign::s6Step250ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step250ExitG_owned : (s6Step250ExitGRow.sign::s6Step250ExitGRow.payload).toFinset⊆s6Step250ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step250ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step250ExitG_retired : s6Step250ExitGBefore.retireSet s6Step250ExitGExtra.toFinset=s6Step250ExitGAfter := by
  unfold Arena.retireSet s6Step250ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step250ExitGBefore,s6Step250ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step250ExitG_checked : planRowResizeLog s6Step250ExitGBefore s6Step250ExitGRow 145 []=
    some (s6Step250ExitGAfter,s6Step250ExitGOut,shrinkRow 777 s6Step250ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step250ExitGBefore s6Step250ExitGRow 145 s6Step250ExitG_distinct s6Step250ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step250ExitGRow.payload.take 145) s6Step250ExitGRow.sign=s6Step250ExitGOut := by decide +kernel
  have hi : s6Step250ExitGRow.payload.drop 145=s6Step250ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step250ExitG_retired] at result
  exact result

private def s6Step250ExitGvBefore : Arena := s6Step250ExitFAfter

private theorem s6Step250ExitGv_Incoming : rowsOwned s6Step250ExitGvBefore [s6Step250ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step250ExitGRow,s6Step250ExitFRow,s6Step250ExitFvRow,s6Step250ExitGvRow] 3 s6Step250ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step250ExitGvBefore (fun q => (0≤q ∧ q<401) ∨ (402≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step250ExitGv_Outgoing : rowsOwned s6Step250ExitGvAfter [s6Step250ExitGvOut] :=
  hmrRows_owned_drop s6Step250ExitGvAfter [s6Step250ExitGOut,s6Step250ExitFOut,s6Step250ExitFvOut,s6Step250ExitGvOut] 3 s6Step250ExitBank_outgoingOwned

private theorem s6Step250ExitGv_distinct : (s6Step250ExitGvRow.sign::s6Step250ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step250ExitGv_owned : (s6Step250ExitGvRow.sign::s6Step250ExitGvRow.payload).toFinset⊆s6Step250ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step250ExitGvBefore (fun q => (0≤q ∧ q<401) ∨ (402≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step250ExitGv_retired : s6Step250ExitGvBefore.retireSet s6Step250ExitGvExtra.toFinset=s6Step250ExitGvAfter := by
  unfold Arena.retireSet s6Step250ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step250ExitGvBefore,s6Step250ExitFAfter,s6Step250ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step250ExitGv_checked : planRowResizeLog s6Step250ExitGvBefore s6Step250ExitGvRow 140 []=
    some (s6Step250ExitGvAfter,s6Step250ExitGvOut,shrinkRow 775 s6Step250ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step250ExitGvBefore s6Step250ExitGvRow 140 s6Step250ExitGv_distinct s6Step250ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step250ExitGvRow.payload.take 140) s6Step250ExitGvRow.sign=s6Step250ExitGvOut := by decide +kernel
  have hi : s6Step250ExitGvRow.payload.drop 140=s6Step250ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step250ExitGv_retired] at result
  exact result

private theorem s6Step250ExitBank_rows : planWindowRowsLog s6Step250ExitGBefore [(s6Step250ExitGRow,145),(s6Step250ExitFRow,145),(s6Step250ExitFvRow,141),(s6Step250ExitGvRow,140)] [[],[],[],[]]=
    some (s6Step250ExitGvAfter,[s6Step250ExitGOut,s6Step250ExitFOut,s6Step250ExitFvOut,s6Step250ExitGvOut],(shrinkRow 777 s6Step250ExitGExtra ++ (shrinkRow 795 s6Step250ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step250ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step250ExitGvAfter [] []=some (s6Step250ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step250ExitGvBefore s6Step250ExitGvAfter s6Step250ExitGvAfter
    s6Step250ExitGvRow s6Step250ExitGvOut 140 [] [] [] []
    (shrinkRow 775 s6Step250ExitGvExtra) ([]) s6Step250ExitGv_Incoming s6Step250ExitGv_checked h4 s6Step250ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step250ExitFvBefore s6Step250ExitFvAfter s6Step250ExitGvAfter
    s6Step250ExitFvRow s6Step250ExitFvOut 141 [] [(s6Step250ExitGvRow,140)] [[]] [s6Step250ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step250ExitGvExtra ++ [])) s6Step250ExitFv_Incoming s6Step250ExitFv_checked h3 s6Step250ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step250ExitFBefore s6Step250ExitFAfter s6Step250ExitGvAfter
    s6Step250ExitFRow s6Step250ExitFOut 145 [] [(s6Step250ExitFvRow,141),(s6Step250ExitGvRow,140)] [[],[]] [s6Step250ExitFvOut,s6Step250ExitGvOut]
    (shrinkRow 795 s6Step250ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step250ExitGvExtra ++ []))) s6Step250ExitF_Incoming s6Step250ExitF_checked h2 s6Step250ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step250ExitGBefore s6Step250ExitGAfter s6Step250ExitGvAfter
    s6Step250ExitGRow s6Step250ExitGOut 145 [] [(s6Step250ExitFRow,145),(s6Step250ExitFvRow,141),(s6Step250ExitGvRow,140)] [[],[],[]] [s6Step250ExitFOut,s6Step250ExitFvOut,s6Step250ExitGvOut]
    (shrinkRow 777 s6Step250ExitGExtra) ((shrinkRow 795 s6Step250ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step250ExitGvExtra ++ [])))) s6Step250ExitG_Incoming s6Step250ExitG_checked h1 s6Step250ExitG_Outgoing
  exact h0

private theorem s6Step250ExitBank_checked : compileHmrBankResizeLog .exit s6Step250ExitGBefore ⟨s6Step250ExitFRow,s6Step250ExitGRow,s6Step250ExitFvRow,s6Step250ExitGvRow⟩ ⟨145,145,141,140⟩ [[],[],[],[]]=
    some (s6Step250ExitGvAfter,⟨s6Step250ExitFOut,s6Step250ExitGOut,s6Step250ExitFvOut,s6Step250ExitGvOut⟩,(shrinkRow 777 s6Step250ExitGExtra ++ (shrinkRow 795 s6Step250ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step250ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step250ExitBank_rows]
  rfl

private theorem s6Step250Add0_apart : Disjoint s6Step250Add0Arena.live s6Step250Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step250Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step250Add0_card : s6Step250Add0Arena.live.card=897 := by
  decide +kernel

private theorem s6Step250Add0_borrowed : s6Step250Add0Arena.checkBorrow (hmrHybridCount s6Step250Add0Arena s6Step250Add0B.length) s6Step250Add0Work=some s6Step250Add0During := by
  have len : s6Step250Add0Work.length=hmrHybridCount s6Step250Add0Arena s6Step250Add0B.length := by
    rw [hmrHybridCount,s6Step250Add0_card]
    decide +kernel
  have nd : s6Step250Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step250Add0Arena s6Step250Add0During s6Step250Add0Work.toFinset s6Step250Add0_bounded s6Step250Add0_apart rfl

private theorem s6Step250Add0_distinct : (822::863::864::(s6Step250Add0A++s6Step250Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step250Add0_owned : (822::863::864::(s6Step250Add0A++s6Step250Add0B)).toFinset⊆s6Step250Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step250Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step250Add0_checked : compileHmrHybridCinLog s6Step250Add0Arena 863 822 864 s6Step250Add0A s6Step250Add0B s6Step250Add0Work=some s6Step250Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step250Add0Arena s6Step250Add0During 863 822 864 s6Step250Add0A s6Step250Add0B s6Step250Add0Work
    (by decide +kernel) (by decide +kernel) s6Step250Add0_distinct
    (fun q hq => s6Step250Add0_owned (List.mem_toFinset.mpr hq)) s6Step250Add0_borrowed

private theorem s6Step250Add1_apart : Disjoint s6Step250Add1Arena.live s6Step250Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step250Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step250Add1_card : s6Step250Add1Arena.live.card=897 := by
  decide +kernel

private theorem s6Step250Add1_borrowed : s6Step250Add1Arena.checkBorrow (hmrHybridCount s6Step250Add1Arena s6Step250Add1B.length) s6Step250Add1Work=some s6Step250Add1During := by
  have len : s6Step250Add1Work.length=hmrHybridCount s6Step250Add1Arena s6Step250Add1B.length := by
    rw [hmrHybridCount,s6Step250Add1_card]
    decide +kernel
  have nd : s6Step250Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step250Add1Arena s6Step250Add1During s6Step250Add1Work.toFinset s6Step250Add1_bounded s6Step250Add1_apart rfl

private theorem s6Step250Add1_distinct : (822::863::864::(s6Step250Add1A++s6Step250Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step250Add1_owned : (822::863::864::(s6Step250Add1A++s6Step250Add1B)).toFinset⊆s6Step250Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step250Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step250Add1_checked : compileHmrHybridCinLog s6Step250Add1Arena 863 822 864 s6Step250Add1A s6Step250Add1B s6Step250Add1Work=some s6Step250Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step250Add1Arena s6Step250Add1During 863 822 864 s6Step250Add1A s6Step250Add1B s6Step250Add1Work
    (by decide +kernel) (by decide +kernel) s6Step250Add1_distinct
    (fun q hq => s6Step250Add1_owned (List.mem_toFinset.mpr hq)) s6Step250Add1_borrowed

private theorem s6Step250F4_apart : Disjoint (s6Step250Add0A++s6Step250Add0B).toFinset (s6Step250Add1A++s6Step250Add1B).toFinset := by
  have nd : ((s6Step250Add0A++s6Step250Add0B)++(s6Step250Add1A++s6Step250Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step250F4_carry : s6Step250F4FlagArena.checkBorrow 1 [864]=some s6Step250Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step250F4FlagArena,s6Step250HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step250F4FlagArena,s6Step250HeadFvAfter,s6Step250Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step250F4_distinct : (860::863::822::864::((s6Step250Add0A++s6Step250Add1A)++(s6Step250Add0B++s6Step250Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step250F4_flag : s6Step250HeadFvAfter.checkBorrow 1 [822]=some s6Step250F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step250HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step250F4_owned : (860::863::((s6Step250Add0A++s6Step250Add1A)++(s6Step250Add0B++s6Step250Add1B))).toFinset⊆s6Step250HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step250HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step250F4_checked : compileHmrHybridF4Log s6Step250HeadFvAfter 860 863 s6Step250Add0A s6Step250Add0B s6Step250Add1A s6Step250Add1B [822] [864] s6Step250Add0Work s6Step250Add1Work=some s6Step250F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step250HeadFvAfter s6Step250F4FlagArena s6Step250Add0Arena s6Step250Add0During s6Step250Add1During 860 863
    s6Step250Add0A s6Step250Add0B s6Step250Add1A s6Step250Add1B [822] [864] s6Step250Add0Work s6Step250Add1Work
    (fun q hq => s6Step250F4_owned (List.mem_toFinset.mpr hq)) s6Step250F4_flag s6Step250F4_carry
    s6Step250F4_distinct s6Step250F4_apart s6Step250Add0_checked s6Step250Add1_checked

private theorem s6Step250Front_branch : s6Step250FrontSigmaArena.checkBorrow 1 [863]=some s6Step250HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step250FrontSigmaArena,s6Step250EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step250FrontSigmaArena,s6Step250EntryGvAfter,s6Step250HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step250Front_entry : HmrFrontEntryValid s6Step250EntryFBefore s6Step250FrontBank 146 140 ⟨145,145,141,140⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step250FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step250EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step250EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step250FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step250Front_sigma : s6Step250EntryGvAfter.checkBorrow 1 [860]=some s6Step250FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step250EntryGvAfter,arenaWires]
  · rfl

private def s6Step250HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step250HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step250HeadFBefore : Arena := s6Step250HeadGAfter

private def s6Step250HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401],795⟩

private def s6Step250HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841],776⟩

private def s6Step250HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 786],777⟩

private def s6Step250HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821],775⟩

private theorem s6Step250HeadBank_incomingDistinct : ([s6Step250HeadGRow,s6Step250HeadFRow,s6Step250HeadGvRow,s6Step250HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step250HeadF_Incoming : rowsOwned s6Step250HeadFBefore [s6Step250HeadFRow,s6Step250HeadGvRow,s6Step250HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step250HeadGRow,s6Step250HeadFRow,s6Step250HeadGvRow,s6Step250HeadFvRow] 1 s6Step250HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step250HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step250HeadBank_outgoingOwned : rowsOwned s6Step250HeadFvAfter [s6Step250HeadGOut,s6Step250HeadFOut,s6Step250HeadGvOut,s6Step250HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step250HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step250HeadF_Outgoing : rowsOwned s6Step250HeadFvAfter [s6Step250HeadFOut,s6Step250HeadGvOut,s6Step250HeadFvOut] :=
  hmrRows_owned_drop s6Step250HeadFvAfter [s6Step250HeadGOut,s6Step250HeadFOut,s6Step250HeadGvOut,s6Step250HeadFvOut] 1 s6Step250HeadBank_outgoingOwned

private theorem s6Step250HeadF_distinct : (s6Step250HeadFRow.sign::s6Step250HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step250HeadF_owned : (s6Step250HeadFRow.sign::s6Step250HeadFRow.payload).toFinset⊆s6Step250HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step250HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step250HeadF_reserved : s6Step250HeadFBefore.reserve s6Step250HeadFFresh.toFinset=some s6Step250HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step250HeadFFresh,arenaWires]
  · norm_num [s6Step250HeadFBefore,s6Step250HeadGAfter,s6Step250HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step250HeadFAfter,s6Step250HeadFBefore,s6Step250HeadGAfter,s6Step250HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step250HeadF_checked : planRowResizeLog s6Step250HeadFBefore s6Step250HeadFRow 147 s6Step250HeadFFresh=
    some (s6Step250HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 805],795⟩,growRow 795 s6Step250HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step250HeadFBefore s6Step250HeadFAfter s6Step250HeadFRow 147 s6Step250HeadFFresh
    s6Step250HeadF_distinct s6Step250HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step250HeadF_reserved
  have rowEq : WindowRow.mk (s6Step250HeadFRow.payload++s6Step250HeadFFresh) s6Step250HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 805],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step250HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step250HeadFvBefore : Arena := s6Step250HeadGvAfter

private theorem s6Step250HeadFv_Incoming : rowsOwned s6Step250HeadFvBefore [s6Step250HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step250HeadGRow,s6Step250HeadFRow,s6Step250HeadGvRow,s6Step250HeadFvRow] 3 s6Step250HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step250HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step250HeadFv_Outgoing : rowsOwned s6Step250HeadFvAfter [s6Step250HeadFvOut] :=
  hmrRows_owned_drop s6Step250HeadFvAfter [s6Step250HeadGOut,s6Step250HeadFOut,s6Step250HeadGvOut,s6Step250HeadFvOut] 3 s6Step250HeadBank_outgoingOwned

private theorem s6Step250HeadFv_distinct : (s6Step250HeadFvRow.sign::s6Step250HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step250HeadFv_owned : (s6Step250HeadFvRow.sign::s6Step250HeadFvRow.payload).toFinset⊆s6Step250HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step250HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step250HeadFv_reserved : s6Step250HeadFvBefore.reserve s6Step250HeadFvFresh.toFinset=some s6Step250HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step250HeadFvFresh,arenaWires]
  · norm_num [s6Step250HeadFvBefore,s6Step250HeadGvAfter,s6Step250HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step250HeadFvAfter,s6Step250HeadFvBefore,s6Step250HeadGvAfter,s6Step250HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step250HeadFv_checked : planRowResizeLog s6Step250HeadFvBefore s6Step250HeadFvRow 141 s6Step250HeadFvFresh=
    some (s6Step250HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818],776⟩,growRow 776 s6Step250HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step250HeadFvBefore s6Step250HeadFvAfter s6Step250HeadFvRow 141 s6Step250HeadFvFresh
    s6Step250HeadFv_distinct s6Step250HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step250HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step250HeadFvRow.payload++s6Step250HeadFvFresh) s6Step250HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step250HeadG_Incoming : rowsOwned s6Step250HeadGBefore [s6Step250HeadGRow,s6Step250HeadFRow,s6Step250HeadGvRow,s6Step250HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step250HeadGRow,s6Step250HeadFRow,s6Step250HeadGvRow,s6Step250HeadFvRow] 0 s6Step250HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step250HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step250HeadG_Outgoing : rowsOwned s6Step250HeadFvAfter [s6Step250HeadGOut,s6Step250HeadFOut,s6Step250HeadGvOut,s6Step250HeadFvOut] :=
  hmrRows_owned_drop s6Step250HeadFvAfter [s6Step250HeadGOut,s6Step250HeadFOut,s6Step250HeadGvOut,s6Step250HeadFvOut] 0 s6Step250HeadBank_outgoingOwned

private theorem s6Step250HeadG_distinct : (s6Step250HeadGRow.sign::s6Step250HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step250HeadG_owned : (s6Step250HeadGRow.sign::s6Step250HeadGRow.payload).toFinset⊆s6Step250HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step250HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step250HeadG_reserved : s6Step250HeadGBefore.reserve s6Step250HeadGFresh.toFinset=some s6Step250HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step250HeadGFresh,arenaWires]
  · norm_num [s6Step250HeadGBefore,s6Step250HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step250HeadGAfter,s6Step250HeadGBefore,s6Step250HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step250HeadG_checked : planRowResizeLog s6Step250HeadGBefore s6Step250HeadGRow 147 s6Step250HeadGFresh=
    some (s6Step250HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 786, 868],777⟩,growRow 777 s6Step250HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step250HeadGBefore s6Step250HeadGAfter s6Step250HeadGRow 147 s6Step250HeadGFresh
    s6Step250HeadG_distinct s6Step250HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step250HeadG_reserved
  have rowEq : WindowRow.mk (s6Step250HeadGRow.payload++s6Step250HeadGFresh) s6Step250HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 786, 868],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step250HeadGvBefore : Arena := s6Step250HeadFAfter

private theorem s6Step250HeadGv_Incoming : rowsOwned s6Step250HeadGvBefore [s6Step250HeadGvRow,s6Step250HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step250HeadGRow,s6Step250HeadFRow,s6Step250HeadGvRow,s6Step250HeadFvRow] 2 s6Step250HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step250HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step250HeadGv_Outgoing : rowsOwned s6Step250HeadFvAfter [s6Step250HeadGvOut,s6Step250HeadFvOut] :=
  hmrRows_owned_drop s6Step250HeadFvAfter [s6Step250HeadGOut,s6Step250HeadFOut,s6Step250HeadGvOut,s6Step250HeadFvOut] 2 s6Step250HeadBank_outgoingOwned

private theorem s6Step250HeadGv_distinct : (s6Step250HeadGvRow.sign::s6Step250HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step250HeadGv_owned : (s6Step250HeadGvRow.sign::s6Step250HeadGvRow.payload).toFinset⊆s6Step250HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step250HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step250HeadGv_reserved : s6Step250HeadGvBefore.reserve s6Step250HeadGvFresh.toFinset=some s6Step250HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step250HeadGvFresh,arenaWires]
  · norm_num [s6Step250HeadGvBefore,s6Step250HeadFAfter,s6Step250HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step250HeadGvAfter,s6Step250HeadGvBefore,s6Step250HeadFAfter,s6Step250HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step250HeadGv_checked : planRowResizeLog s6Step250HeadGvBefore s6Step250HeadGvRow 141 s6Step250HeadGvFresh=
    some (s6Step250HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 839],775⟩,growRow 775 s6Step250HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step250HeadGvBefore s6Step250HeadGvAfter s6Step250HeadGvRow 141 s6Step250HeadGvFresh
    s6Step250HeadGv_distinct s6Step250HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step250HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step250HeadGvRow.payload++s6Step250HeadGvFresh) s6Step250HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 839],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step250HeadBank_rows : planWindowRowsLog s6Step250HeadGBefore [(s6Step250HeadGRow,147),(s6Step250HeadFRow,147),(s6Step250HeadGvRow,141),(s6Step250HeadFvRow,141)] [s6Step250HeadGFresh,s6Step250HeadFFresh,s6Step250HeadGvFresh,s6Step250HeadFvFresh]=
    some (s6Step250HeadFvAfter,[s6Step250HeadGOut,s6Step250HeadFOut,s6Step250HeadGvOut,s6Step250HeadFvOut],(growRow 777 s6Step250HeadGFresh ++ (growRow 795 s6Step250HeadFFresh ++ (growRow 775 s6Step250HeadGvFresh ++ (growRow 776 s6Step250HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step250HeadFvAfter [] []=some (s6Step250HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step250HeadFvBefore s6Step250HeadFvAfter s6Step250HeadFvAfter
    s6Step250HeadFvRow s6Step250HeadFvOut 141 s6Step250HeadFvFresh [] [] []
    (growRow 776 s6Step250HeadFvFresh) ([]) s6Step250HeadFv_Incoming s6Step250HeadFv_checked h4 s6Step250HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step250HeadGvBefore s6Step250HeadGvAfter s6Step250HeadFvAfter
    s6Step250HeadGvRow s6Step250HeadGvOut 141 s6Step250HeadGvFresh [(s6Step250HeadFvRow,141)] [s6Step250HeadFvFresh] [s6Step250HeadFvOut]
    (growRow 775 s6Step250HeadGvFresh) ((growRow 776 s6Step250HeadFvFresh ++ [])) s6Step250HeadGv_Incoming s6Step250HeadGv_checked h3 s6Step250HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step250HeadFBefore s6Step250HeadFAfter s6Step250HeadFvAfter
    s6Step250HeadFRow s6Step250HeadFOut 147 s6Step250HeadFFresh [(s6Step250HeadGvRow,141),(s6Step250HeadFvRow,141)] [s6Step250HeadGvFresh,s6Step250HeadFvFresh] [s6Step250HeadGvOut,s6Step250HeadFvOut]
    (growRow 795 s6Step250HeadFFresh) ((growRow 775 s6Step250HeadGvFresh ++ (growRow 776 s6Step250HeadFvFresh ++ []))) s6Step250HeadF_Incoming s6Step250HeadF_checked h2 s6Step250HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step250HeadGBefore s6Step250HeadGAfter s6Step250HeadFvAfter
    s6Step250HeadGRow s6Step250HeadGOut 147 s6Step250HeadGFresh [(s6Step250HeadFRow,147),(s6Step250HeadGvRow,141),(s6Step250HeadFvRow,141)] [s6Step250HeadFFresh,s6Step250HeadGvFresh,s6Step250HeadFvFresh] [s6Step250HeadFOut,s6Step250HeadGvOut,s6Step250HeadFvOut]
    (growRow 777 s6Step250HeadGFresh) ((growRow 795 s6Step250HeadFFresh ++ (growRow 775 s6Step250HeadGvFresh ++ (growRow 776 s6Step250HeadFvFresh ++ [])))) s6Step250HeadG_Incoming s6Step250HeadG_checked h1 s6Step250HeadG_Outgoing
  exact h0

private theorem s6Step250HeadBank_checked : compileHmrBankResizeLog .headroom s6Step250HeadGBefore ⟨s6Step250HeadFRow,s6Step250HeadGRow,s6Step250HeadFvRow,s6Step250HeadGvRow⟩ ⟨147,147,141,141⟩ [s6Step250HeadGFresh,s6Step250HeadFFresh,s6Step250HeadGvFresh,s6Step250HeadFvFresh]=
    some (s6Step250HeadFvAfter,⟨s6Step250HeadFOut,s6Step250HeadGOut,s6Step250HeadFvOut,s6Step250HeadGvOut⟩,(growRow 777 s6Step250HeadGFresh ++ (growRow 795 s6Step250HeadFFresh ++ (growRow 775 s6Step250HeadGvFresh ++ (growRow 776 s6Step250HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step250HeadBank_rows]
  rfl

private theorem s6Step250Front_checked : compileHmrSourceFrontLog s6Step250EntryFBefore s6Step250FrontBank 146 140 ⟨145,145,141,140⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step250FrontLog=some s6Step250FrontPlan := by
  have pairEq : s6Step250FrontPair=⟨s6Step250HeadFRow,s6Step250HeadGRow,s6Step250HeadFvRow,s6Step250HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step250FrontHead=⟨s6Step250ExitFRow,s6Step250ExitGRow,s6Step250ExitFvRow,s6Step250ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step250Add0A=s6Step250FrontHead.f.wires := by decide +kernel
  have gEq : s6Step250Add0B=s6Step250FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step250Add1A=s6Step250FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step250Add1B=s6Step250FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step250EntryFBefore s6Step250FrontBank 146 140 ⟨145,145,141,140⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step250FrontLog s6Step250FrontPlan
  · exact s6Step250Front_entry
  · exact s6Step250EntryBank_checked
  · exact s6Step250Front_sigma
  · rfl
  · exact s6Step250Front_branch
  · rfl
  · simpa only [s6Step250FrontPlan,pairEq] using s6Step250HeadBank_checked
  · simpa only [s6Step250FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step250F4_checked
  · exact s6Step250Counter_checked
  · rfl
  · simpa only [s6Step250FrontPlan,headEq] using s6Step250ExitBank_checked

private theorem s6Step250Complete_explicit_checked : compileHmrEarlyStepLog s6Step250EntryFBefore s6Step250FrontBank 146 140 ⟨145,145,141,140⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step250CompleteLog=some s6Step250CompletePlan := by
  let Q := s6Step250EarlyControlPlan
  have hq := s6Step250EarlyControl_plan_checked
  have fv1 : s6Step250CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step250CompleteOut.fv.payload[2]?.getD s6Step250CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step250CompleteOut.fv.payload[3]?.getD s6Step250CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step250CompleteOut.fv.payload[4]?.getD s6Step250CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step250EntryFBefore s6Step250EarlyControlArena s6Step250FrontBank 146 140 ⟨145,145,141,140⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step250CompleteLog s6Step250FrontPlan Q
    s6Step250Front_checked s6Step250Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step250Complete_owned s6Step250Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step250EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 860 s6Step250CompleteOut.fv.second (s6Step250CompleteOut.fv.payload[2]?.getD s6Step250CompleteOut.fv.sign) (s6Step250CompleteOut.fv.payload[3]?.getD s6Step250CompleteOut.fv.sign) (s6Step250CompleteOut.fv.payload[4]?.getD s6Step250CompleteOut.fv.sign) 863 51 s6Step250EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep250Arena : Arena := s6Step250EntryFBefore
def s6PrivateStep250Bank : WindowBank := s6Step250FrontBank
def s6PrivateStep250Spec : HmrSourceWalkStepLog := ⟨146,140,⟨145,145,141,140⟩,51,.early s6Step250CompleteLog⟩
def s6PrivateStep250Plan : HmrSourceStepPlan := .early s6Step250CompletePlan
theorem s6PrivateStep250_source : s6PrivateStep250Spec=s6ObservedLogs240[10] := rfl
theorem s6PrivateStep250_checked : compileHmrSourceStepLog s6PrivateStep250Arena s6PrivateStep250Bank
    s6PrivateStep250Spec.fgWidth s6PrivateStep250Spec.vWidth s6PrivateStep250Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905]
    6 498 250 s6PrivateStep250Spec.need none s6PrivateStep250Spec.log=some s6PrivateStep250Plan := by
  change compileHmrSourceStepLog s6Step250EntryFBefore s6Step250FrontBank 146 140 ⟨145,145,141,140⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 6 498 250 51 none (.early s6Step250CompleteLog)=some (.early s6Step250CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 250<498)]
  rw [s6Step250Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
