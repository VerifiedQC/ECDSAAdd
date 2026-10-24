import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep243
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

private def s6Step245CompleteMoves : List (Wire × Wire) := [(814,147),(839,403)]

private def s6Step245EarlyControlLog : HmrEarlyControlLog := ⟨[839, 814, 822, 830, 818],[786],[841],[868, 805, 810, 809, 817, 812],[]⟩

private def s6Step245FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[818], [830], [822], [898]],[[], [], [], []]⟩,[796],[864],[786],[841],[868, 805, 810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[868, 805, 810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[786, 841, 868, 805]⟩

private def s6Step245CompleteLog : HmrEarlyStepLog := ⟨s6Step245FrontLog,s6Step245CompleteMoves,s6Step245EarlyControlLog⟩

private def s6Step245ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402],795⟩

private def s6Step245ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898],776⟩

private def s6Step245ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146],777⟩

private def s6Step245ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888],775⟩

private def s6Step245FrontOut : WindowBank := ⟨s6Step245ExitFOut,s6Step245ExitGOut,s6Step245ExitFvOut,s6Step245ExitGvOut⟩

private def s6Step245CompleteOut : WindowBank := s6Step245FrontOut.repacked s6Step245CompleteMoves

private def s6Step245EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step245EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step245EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step245EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step245EarlyControlPositiveArena,[786],s6Step245EarlyControlEqualityArena,[841],⟨⟨796,false⟩,[⟨⟨786,false⟩,841⟩]⟩⟩

private def s6Step245EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step245EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step245EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step245EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step245EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step245EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step245EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,839⟩,⟨⟨772,false⟩,814⟩,⟨⟨771,false⟩,822⟩,⟨⟨770,false⟩,830⟩,⟨⟨769,false⟩,818⟩]⟩

private def s6Step245EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step245EarlyControlZeroArena,s6Step245EarlyControlZeroPlan,s6Step245EarlyControlClassPlan,s6Step245EarlyControlFlagArena,s6Step245EarlyControlFittedArena,s6Step245EarlyControlHistoryArena,s6Step245EarlyControlSigmaArena,s6Step245EarlyControlOutputArena,s6Step245EarlyControlLog⟩

private def s6Step245CounterWork : List Wire := [786, 841, 868, 805]

private theorem s6Step245Counter_bounded : s6Step245CounterWork.toFinset⊆arenaWires := by norm_num [s6Step245CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step245HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step245CounterDuring : Arena := ⟨s6Step245HeadFvAfter.live∪s6Step245CounterWork.toFinset,Finset.union_subset s6Step245HeadFvAfter.bounded s6Step245Counter_bounded⟩

private def s6Step245EntryFFresh : List Wire := []

private def s6Step245EntryFvFresh : List Wire := []

private def s6Step245EntryGFresh : List Wire := []

private def s6Step245EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step245EntryGvAfter : Arena := s6Step245EntryFBefore

private def s6Step245EntryGvFresh : List Wire := []

private def s6Step245ExitFExtra : List Wire := [403, 830]

private def s6Step245ExitGExtra : List Wire := [147, 818]

private def s6Step245ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<147) ∨ (148≤q ∧ q<403) ∨ (404≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step245ExitGvExtra : List Wire := [822]

private def s6Step245Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step245Add0Work : List Wire := [868, 805, 810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step245Add0_bounded : s6Step245Add0Work.toFinset⊆arenaWires := by
  have h : s6Step245Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step245Add0During : Arena := ⟨s6Step245Add0Arena.live∪s6Step245Add0Work.toFinset,Finset.union_subset s6Step245Add0Arena.bounded s6Step245Add0_bounded⟩

private def s6Step245Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step245Add1Work : List Wire := [868, 805, 810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step245Add1_bounded : s6Step245Add1Work.toFinset⊆arenaWires := by
  have h : s6Step245Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step245Add1During : Arena := ⟨s6Step245Add1Arena.live∪s6Step245Add1Work.toFinset,Finset.union_subset s6Step245Add1Arena.bounded s6Step245Add1_bounded⟩

private def s6Step245F4FlagArena : Arena := ⟨s6Step245HeadFvAfter.live∪{786},Finset.union_subset s6Step245HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step245F4Plan : HmrHybridF4Plan := ⟨s6Step245F4FlagArena,[786],s6Step245Add0Arena,[841],s6Step245Add0During,s6Step245Add0Work,s6Step245Add1During,s6Step245Add1Work⟩

private def s6Step245HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 830],795⟩

private def s6Step245HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898],776⟩

private def s6Step245HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 818],777⟩

private def s6Step245HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 822],775⟩

private def s6Step245FrontHead : WindowBank := ⟨s6Step245HeadFOut,s6Step245HeadGOut,s6Step245HeadFvOut,s6Step245HeadGvOut⟩

private def s6Step245EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403],795⟩

private def s6Step245EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869],776⟩

private def s6Step245EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147],777⟩

private def s6Step245EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888],775⟩

private def s6Step245FrontPair : WindowBank := ⟨s6Step245EntryFOut,s6Step245EntryGOut,s6Step245EntryFvOut,s6Step245EntryGvOut⟩

private def s6Step245FrontSigmaArena : Arena := ⟨s6Step245EntryGvAfter.live∪{796},Finset.union_subset s6Step245EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step245HeadFFresh : List Wire := [830]

private def s6Step245HeadFvFresh : List Wire := [898]

private def s6Step245HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step245HeadGFresh : List Wire := [818]

private def s6Step245HeadGvFresh : List Wire := [822]

private def s6Step245FrontPlan : HmrSourceFront := ⟨s6Step245EntryGvAfter,s6Step245FrontPair,(growRow 795 s6Step245EntryFFresh ++ (growRow 777 s6Step245EntryGFresh ++ (growRow 776 s6Step245EntryFvFresh ++ (growRow 775 s6Step245EntryGvFresh ++ [])))),s6Step245FrontSigmaArena,[796],s6Step245HeadGBefore,[864],
  s6Step245HeadFvAfter,s6Step245FrontHead,(growRow 777 s6Step245HeadGFresh ++ (growRow 795 s6Step245HeadFFresh ++ (growRow 775 s6Step245HeadGvFresh ++ (growRow 776 s6Step245HeadFvFresh ++ [])))),s6Step245F4Plan,s6Step245CounterDuring,s6Step245CounterWork,s6Step245ExitGvAfter,s6Step245FrontOut,(shrinkRow 777 s6Step245ExitGExtra ++ (shrinkRow 795 s6Step245ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step245ExitGvExtra ++ []))))⟩

private def s6Step245CompletePlan : HmrEarlyStepPlan := ⟨s6Step245FrontPlan,s6Step245EarlyControlArena,s6Step245EarlyControlPlan,s6Step245CompleteMoves⟩

private theorem s6Step245Complete_apart : List.Disjoint (s6Step245CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [796, 864, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] := by
  have nd : ((s6Step245CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[796, 864, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step245Complete_owned : (s6Step245CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step245EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step245EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step245CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,403),(404,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,805),(806,808),(813,814),(821,822),(823,830),(831,832),(833,841),(843,849),(850,868),(869,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step245CompleteRelocationMove0Borrowed : Arena := ⟨s6Step245ExitGvAfter.live∪{147},Finset.union_subset s6Step245ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step245CompleteRelocationMove1Borrowed : Arena := ⟨s6Step245CompleteRelocationMove0After.live∪{403},Finset.union_subset s6Step245CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step245CompleteRelocation_move0_owned : 814∈s6Step245ExitGvAfter.live := by norm_num [s6Step245ExitGvAfter,arenaWires]

private theorem s6Step245CompleteRelocation_move0_reserve : s6Step245ExitGvAfter.reserve {147}=some s6Step245CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step245ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step245CompleteRelocation_move0_retire : s6Step245CompleteRelocationMove0Borrowed.retireSet {814}=s6Step245CompleteRelocationMove0After := by
  unfold Arena.retireSet s6Step245CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step245CompleteRelocationMove0Borrowed,s6Step245ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step245CompleteRelocation_move1_owned : 839∈s6Step245CompleteRelocationMove0After.live := by norm_num [s6Step245CompleteRelocationMove0After,arenaWires]

private theorem s6Step245CompleteRelocation_move1_reserve : s6Step245CompleteRelocationMove0After.reserve {403}=some s6Step245CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step245CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step245CompleteRelocation_move1_retire : s6Step245CompleteRelocationMove1Borrowed.retireSet {839}=s6Step245EarlyControlArena := by
  unfold Arena.retireSet s6Step245EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step245CompleteRelocationMove1Borrowed,s6Step245CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step245CompleteRelocation_checked : s6Step245ExitGvAfter.checkRepack [(814,147),(839,403)]=some s6Step245EarlyControlArena := by
  have tail2 : s6Step245EarlyControlArena.checkRepack []=some s6Step245EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step245CompleteRelocationMove0After s6Step245CompleteRelocationMove1Borrowed s6Step245EarlyControlArena s6Step245EarlyControlArena 839 403 []
    s6Step245CompleteRelocation_move1_owned s6Step245CompleteRelocation_move1_reserve s6Step245CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step245ExitGvAfter s6Step245CompleteRelocationMove0Borrowed s6Step245CompleteRelocationMove0After s6Step245EarlyControlArena 814 147 [(839,403)]
    s6Step245CompleteRelocation_move0_owned s6Step245CompleteRelocation_move0_reserve s6Step245CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step245Complete_repack : s6Step245ExitGvAfter.checkRepack s6Step245CompleteMoves=some s6Step245EarlyControlArena := by
  simpa only [s6Step245CompleteMoves] using s6Step245CompleteRelocation_checked

private theorem s6Step245EarlyControl_branchOwned : ([864] : List Wire).toFinset⊆s6Step245EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step245EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step245EarlyControl_branch : compileHmrBranchRetirement s6Step245EarlyControlSigmaArena 864=some s6Step245EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step245EarlyControl_branchOwned
  · ext q
    simp [s6Step245EarlyControlOutputArena,s6Step245EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step245EarlyControl_classEqualityBorrow : s6Step245EarlyControlPositiveArena.checkBorrow (([796, 786] : List Wire).length-1) s6Step245EarlyControlLog.classWork=some s6Step245EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step245EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step245EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step245EarlyControlEqualityArena,s6Step245EarlyControlPositiveArena,s6Step245EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step245EarlyControl_classEqualityOwned : ([796, 786] : List Wire).toFinset⊆s6Step245EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step245EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step245EarlyControl_classEquality : compileHmrEqualityLog s6Step245EarlyControlPositiveArena [796, 786] 0 s6Step245EarlyControlLog.classWork=some (s6Step245EarlyControlEqualityArena,s6Step245EarlyControlLog.classWork,s6Step245EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step245EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step245EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step245EarlyControl_classOwned : ([769, 818, 796] : List Wire).toFinset⊆s6Step245EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step245EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step245EarlyControl_positiveBorrow : s6Step245EarlyControlZeroArena.checkBorrow (1) s6Step245EarlyControlLog.positiveWork=some s6Step245EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step245EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step245EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step245EarlyControlPositiveArena,s6Step245EarlyControlZeroArena,s6Step245EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step245EarlyControl_class : compileHmrSourceClassLog s6Step245EarlyControlZeroArena false 769 s6Step245EarlyControlZeroPlan.top 0 796 s6Step245EarlyControlLog.positiveWork s6Step245EarlyControlLog.classWork=some s6Step245EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step245EarlyControlClassPlan s6Step245EarlyControlZeroArena false 769 s6Step245EarlyControlZeroPlan.top 0 796
  constructor
  · decide +kernel
  · exact s6Step245EarlyControl_classOwned
  · exact s6Step245EarlyControl_positiveBorrow
  · exact s6Step245EarlyControl_classEquality

private theorem s6Step245EarlyControl_entryRecordOwned : ([864, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step245EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step245EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step245EarlyControl_entrySigmaOwned : ([796, 254] : List Wire).toFinset⊆s6Step245EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step245EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step245EarlyControl_fitBorrow : s6Step245EarlyControlFlagArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).length)) s6Step245EarlyControlLog.recordFresh=some s6Step245EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step245EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step245EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step245EarlyControlFittedArena,s6Step245EarlyControlFlagArena,s6Step245EarlyControlLog,arenaWires]

private theorem s6Step245EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step245EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step245EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step245EarlyControl_fit : compileHmrRecordGrowLog s6Step245EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step245EarlyControlLog.recordFresh=some s6Step245EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step245EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step245EarlyControl_fitBorrow

private theorem s6Step245EarlyControl_flagsBorrow : s6Step245EarlyControlEqualityArena.checkBorrow (6) s6Step245EarlyControlLog.flagWork=some s6Step245EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step245EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step245EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step245EarlyControlFlagArena,s6Step245EarlyControlEqualityArena,s6Step245EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step245EarlyControl_flagsOwned : ([841, 253, 252, 251] : List Wire).toFinset⊆s6Step245EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step245EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step245EarlyControl_flags : compileHmrFlagsLog s6Step245EarlyControlClassPlan.equalityArena s6Step245EarlyControlClassPlan.equality.top 253 252 251 s6Step245EarlyControlLog.flagWork=some s6Step245EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step245EarlyControl_flagsOwned⟩
  · exact s6Step245EarlyControl_flagsBorrow

private theorem s6Step245EarlyControl_historyBorrow : s6Step245EarlyControlArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).length)) s6Step245EarlyControlLog.recordFresh=some s6Step245EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step245EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step245EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step245EarlyControlHistoryArena,s6Step245EarlyControlArena,s6Step245EarlyControlLog,arenaWires]

private theorem s6Step245EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step245EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step245EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step245EarlyControl_history : compileHmrRecordGrowLog s6Step245EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step245EarlyControlLog.recordFresh=some s6Step245EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step245EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step245EarlyControl_historyBorrow

private theorem s6Step245EarlyControl_sigmaOwned : ([254, 796] : List Wire).toFinset⊆s6Step245EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step245EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step245EarlyControl_sigmaReleaseOwned : ([796] : List Wire).toFinset⊆s6Step245EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step245EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step245EarlyControl_sigmaRelease : s6Step245EarlyControlHistoryArena.release {796} (fun _ => false)=some s6Step245EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step245EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step245EarlyControlSigmaArena,s6Step245EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step245EarlyControl_sigma : compileHmrSigmaDropLog s6Step245EarlyControlHistoryArena false 0 0 254 796 []=some s6Step245EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step245EarlyControl_sigmaOwned⟩
  · exact s6Step245EarlyControl_sigmaRelease

private theorem s6Step245EarlyControl_zeroBorrow : s6Step245EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step245EarlyControlLog.zeroWork=some s6Step245EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step245EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step245EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step245EarlyControlZeroArena,s6Step245EarlyControlArena,s6Step245EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step245EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step245EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step245EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step245EarlyControl_zero : compileHmrEqualityLog s6Step245EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step245EarlyControlLog.zeroWork=some (s6Step245EarlyControlZeroArena,s6Step245EarlyControlLog.zeroWork,s6Step245EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step245EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step245EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step245EarlyControl_logged : s6Step245EarlyControlPlan.Logged s6Step245EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 796 254 253 252 251 864 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step245EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step245EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step245EarlyControl_zero
  · exact s6Step245EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step245EarlyControl_flags
  · exact s6Step245EarlyControl_fit
  · exact s6Step245EarlyControl_history
  · exact s6Step245EarlyControl_sigma
  · exact s6Step245EarlyControl_branch

private theorem s6Step245EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step245EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 796 254 253 252 251 864 51 s6Step245EarlyControlLog=some s6Step245EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step245EarlyControlPlan s6Step245EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 796 254 253 252 251 864 51 s6Step245EarlyControl_logged

private def s6Step245EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403],795⟩

private def s6Step245EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869],776⟩

private def s6Step245EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147],777⟩

private def s6Step245EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888],775⟩

private def s6Step245FrontBank : WindowBank := ⟨s6Step245EntryFRow,s6Step245EntryGRow,s6Step245EntryFvRow,s6Step245EntryGvRow⟩

private def s6Step245Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 830, 795]

private def s6Step245Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 818, 777]

private def s6Step245Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 776]

private def s6Step245Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 822, 775]

private theorem s6Step245Counter_apart : Disjoint s6Step245HeadFvAfter.live s6Step245CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step245HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step245Counter_borrowed : s6Step245HeadFvAfter.checkBorrow 4 s6Step245CounterWork=some s6Step245CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step245HeadFvAfter s6Step245CounterDuring s6Step245CounterWork.toFinset s6Step245Counter_bounded s6Step245Counter_apart rfl

private theorem s6Step245Counter_owned : (796::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step245HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step245HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step245Counter_checked : compileHmrCounterStepLog s6Step245HeadFvAfter true 796 [774, 773, 772, 771, 770, 769] s6Step245CounterWork=some s6Step245CounterDuring := by
  have owned : ∀q∈796::[774, 773, 772, 771, 770, 769],q∈s6Step245HeadFvAfter.live := fun q hq => s6Step245Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step245Counter_borrowed

private def s6Step245EntryFAfter : Arena := s6Step245EntryFBefore

private theorem s6Step245EntryBank_incomingDistinct : ([s6Step245EntryFRow,s6Step245EntryGRow,s6Step245EntryFvRow,s6Step245EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step245EntryF_Incoming : rowsOwned s6Step245EntryFBefore [s6Step245EntryFRow,s6Step245EntryGRow,s6Step245EntryFvRow,s6Step245EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step245EntryFRow,s6Step245EntryGRow,s6Step245EntryFvRow,s6Step245EntryGvRow] 0 s6Step245EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step245EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step245EntryBank_outgoingOwned : rowsOwned s6Step245EntryGvAfter [s6Step245EntryFOut,s6Step245EntryGOut,s6Step245EntryFvOut,s6Step245EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step245EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step245EntryF_Outgoing : rowsOwned s6Step245EntryGvAfter [s6Step245EntryFOut,s6Step245EntryGOut,s6Step245EntryFvOut,s6Step245EntryGvOut] :=
  hmrRows_owned_drop s6Step245EntryGvAfter [s6Step245EntryFOut,s6Step245EntryGOut,s6Step245EntryFvOut,s6Step245EntryGvOut] 0 s6Step245EntryBank_outgoingOwned

private theorem s6Step245EntryF_distinct : (s6Step245EntryFRow.sign::s6Step245EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step245EntryF_owned : (s6Step245EntryFRow.sign::s6Step245EntryFRow.payload).toFinset⊆s6Step245EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step245EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step245EntryF_reserved : s6Step245EntryFBefore.reserve s6Step245EntryFFresh.toFinset=some s6Step245EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step245EntryFFresh,arenaWires]
  · norm_num [s6Step245EntryFBefore,s6Step245EntryFFresh,arenaWires]
  · simp only [s6Step245EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step245EntryF_checked : planRowResizeLog s6Step245EntryFBefore s6Step245EntryFRow 148 s6Step245EntryFFresh=
    some (s6Step245EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403],795⟩,growRow 795 s6Step245EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step245EntryFBefore s6Step245EntryFAfter s6Step245EntryFRow 148 s6Step245EntryFFresh
    s6Step245EntryF_distinct s6Step245EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step245EntryF_reserved
  have rowEq : WindowRow.mk (s6Step245EntryFRow.payload++s6Step245EntryFFresh) s6Step245EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step245EntryFvAfter : Arena := s6Step245EntryFBefore

private def s6Step245EntryFvBefore : Arena := s6Step245EntryFBefore

private theorem s6Step245EntryFv_Incoming : rowsOwned s6Step245EntryFvBefore [s6Step245EntryFvRow,s6Step245EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step245EntryFRow,s6Step245EntryGRow,s6Step245EntryFvRow,s6Step245EntryGvRow] 2 s6Step245EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step245EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step245EntryFv_Outgoing : rowsOwned s6Step245EntryGvAfter [s6Step245EntryFvOut,s6Step245EntryGvOut] :=
  hmrRows_owned_drop s6Step245EntryGvAfter [s6Step245EntryFOut,s6Step245EntryGOut,s6Step245EntryFvOut,s6Step245EntryGvOut] 2 s6Step245EntryBank_outgoingOwned

private theorem s6Step245EntryFv_distinct : (s6Step245EntryFvRow.sign::s6Step245EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step245EntryFv_owned : (s6Step245EntryFvRow.sign::s6Step245EntryFvRow.payload).toFinset⊆s6Step245EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step245EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step245EntryFv_reserved : s6Step245EntryFvBefore.reserve s6Step245EntryFvFresh.toFinset=some s6Step245EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step245EntryFvFresh,arenaWires]
  · norm_num [s6Step245EntryFvBefore,s6Step245EntryFBefore,s6Step245EntryFvFresh,arenaWires]
  · simp only [s6Step245EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step245EntryFv_checked : planRowResizeLog s6Step245EntryFvBefore s6Step245EntryFvRow 137 s6Step245EntryFvFresh=
    some (s6Step245EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869],776⟩,growRow 776 s6Step245EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step245EntryFvBefore s6Step245EntryFvAfter s6Step245EntryFvRow 137 s6Step245EntryFvFresh
    s6Step245EntryFv_distinct s6Step245EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step245EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step245EntryFvRow.payload++s6Step245EntryFvFresh) s6Step245EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step245EntryGAfter : Arena := s6Step245EntryFBefore

private def s6Step245EntryGBefore : Arena := s6Step245EntryFBefore

private theorem s6Step245EntryG_Incoming : rowsOwned s6Step245EntryGBefore [s6Step245EntryGRow,s6Step245EntryFvRow,s6Step245EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step245EntryFRow,s6Step245EntryGRow,s6Step245EntryFvRow,s6Step245EntryGvRow] 1 s6Step245EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step245EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step245EntryG_Outgoing : rowsOwned s6Step245EntryGvAfter [s6Step245EntryGOut,s6Step245EntryFvOut,s6Step245EntryGvOut] :=
  hmrRows_owned_drop s6Step245EntryGvAfter [s6Step245EntryFOut,s6Step245EntryGOut,s6Step245EntryFvOut,s6Step245EntryGvOut] 1 s6Step245EntryBank_outgoingOwned

private theorem s6Step245EntryG_distinct : (s6Step245EntryGRow.sign::s6Step245EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step245EntryG_owned : (s6Step245EntryGRow.sign::s6Step245EntryGRow.payload).toFinset⊆s6Step245EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step245EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step245EntryG_reserved : s6Step245EntryGBefore.reserve s6Step245EntryGFresh.toFinset=some s6Step245EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step245EntryGFresh,arenaWires]
  · norm_num [s6Step245EntryGBefore,s6Step245EntryFBefore,s6Step245EntryGFresh,arenaWires]
  · simp only [s6Step245EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step245EntryG_checked : planRowResizeLog s6Step245EntryGBefore s6Step245EntryGRow 148 s6Step245EntryGFresh=
    some (s6Step245EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147],777⟩,growRow 777 s6Step245EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step245EntryGBefore s6Step245EntryGAfter s6Step245EntryGRow 148 s6Step245EntryGFresh
    s6Step245EntryG_distinct s6Step245EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step245EntryG_reserved
  have rowEq : WindowRow.mk (s6Step245EntryGRow.payload++s6Step245EntryGFresh) s6Step245EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step245EntryGvBefore : Arena := s6Step245EntryFBefore

private theorem s6Step245EntryGv_Incoming : rowsOwned s6Step245EntryGvBefore [s6Step245EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step245EntryFRow,s6Step245EntryGRow,s6Step245EntryFvRow,s6Step245EntryGvRow] 3 s6Step245EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step245EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step245EntryGv_Outgoing : rowsOwned s6Step245EntryGvAfter [s6Step245EntryGvOut] :=
  hmrRows_owned_drop s6Step245EntryGvAfter [s6Step245EntryFOut,s6Step245EntryGOut,s6Step245EntryFvOut,s6Step245EntryGvOut] 3 s6Step245EntryBank_outgoingOwned

private theorem s6Step245EntryGv_distinct : (s6Step245EntryGvRow.sign::s6Step245EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step245EntryGv_owned : (s6Step245EntryGvRow.sign::s6Step245EntryGvRow.payload).toFinset⊆s6Step245EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step245EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step245EntryGv_reserved : s6Step245EntryGvBefore.reserve s6Step245EntryGvFresh.toFinset=some s6Step245EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step245EntryGvFresh,arenaWires]
  · norm_num [s6Step245EntryGvBefore,s6Step245EntryFBefore,s6Step245EntryGvFresh,arenaWires]
  · simp only [s6Step245EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step245EntryGv_checked : planRowResizeLog s6Step245EntryGvBefore s6Step245EntryGvRow 137 s6Step245EntryGvFresh=
    some (s6Step245EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888],775⟩,growRow 775 s6Step245EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step245EntryGvBefore s6Step245EntryGvAfter s6Step245EntryGvRow 137 s6Step245EntryGvFresh
    s6Step245EntryGv_distinct s6Step245EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step245EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step245EntryGvRow.payload++s6Step245EntryGvFresh) s6Step245EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step245EntryBank_rows : planWindowRowsLog s6Step245EntryFBefore [(s6Step245EntryFRow,148),(s6Step245EntryGRow,148),(s6Step245EntryFvRow,137),(s6Step245EntryGvRow,137)] [s6Step245EntryFFresh,s6Step245EntryGFresh,s6Step245EntryFvFresh,s6Step245EntryGvFresh]=
    some (s6Step245EntryGvAfter,[s6Step245EntryFOut,s6Step245EntryGOut,s6Step245EntryFvOut,s6Step245EntryGvOut],(growRow 795 s6Step245EntryFFresh ++ (growRow 777 s6Step245EntryGFresh ++ (growRow 776 s6Step245EntryFvFresh ++ (growRow 775 s6Step245EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step245EntryGvAfter [] []=some (s6Step245EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step245EntryGvBefore s6Step245EntryGvAfter s6Step245EntryGvAfter
    s6Step245EntryGvRow s6Step245EntryGvOut 137 s6Step245EntryGvFresh [] [] []
    (growRow 775 s6Step245EntryGvFresh) ([]) s6Step245EntryGv_Incoming s6Step245EntryGv_checked h4 s6Step245EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step245EntryFvBefore s6Step245EntryFvAfter s6Step245EntryGvAfter
    s6Step245EntryFvRow s6Step245EntryFvOut 137 s6Step245EntryFvFresh [(s6Step245EntryGvRow,137)] [s6Step245EntryGvFresh] [s6Step245EntryGvOut]
    (growRow 776 s6Step245EntryFvFresh) ((growRow 775 s6Step245EntryGvFresh ++ [])) s6Step245EntryFv_Incoming s6Step245EntryFv_checked h3 s6Step245EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step245EntryGBefore s6Step245EntryGAfter s6Step245EntryGvAfter
    s6Step245EntryGRow s6Step245EntryGOut 148 s6Step245EntryGFresh [(s6Step245EntryFvRow,137),(s6Step245EntryGvRow,137)] [s6Step245EntryFvFresh,s6Step245EntryGvFresh] [s6Step245EntryFvOut,s6Step245EntryGvOut]
    (growRow 777 s6Step245EntryGFresh) ((growRow 776 s6Step245EntryFvFresh ++ (growRow 775 s6Step245EntryGvFresh ++ []))) s6Step245EntryG_Incoming s6Step245EntryG_checked h2 s6Step245EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step245EntryFBefore s6Step245EntryFAfter s6Step245EntryGvAfter
    s6Step245EntryFRow s6Step245EntryFOut 148 s6Step245EntryFFresh [(s6Step245EntryGRow,148),(s6Step245EntryFvRow,137),(s6Step245EntryGvRow,137)] [s6Step245EntryGFresh,s6Step245EntryFvFresh,s6Step245EntryGvFresh] [s6Step245EntryGOut,s6Step245EntryFvOut,s6Step245EntryGvOut]
    (growRow 795 s6Step245EntryFFresh) ((growRow 777 s6Step245EntryGFresh ++ (growRow 776 s6Step245EntryFvFresh ++ (growRow 775 s6Step245EntryGvFresh ++ [])))) s6Step245EntryF_Incoming s6Step245EntryF_checked h1 s6Step245EntryF_Outgoing
  exact h0

private theorem s6Step245EntryBank_checked : compileHmrBankResizeLog .entry s6Step245EntryFBefore ⟨s6Step245EntryFRow,s6Step245EntryGRow,s6Step245EntryFvRow,s6Step245EntryGvRow⟩ ⟨148,148,137,137⟩ [s6Step245EntryFFresh,s6Step245EntryGFresh,s6Step245EntryFvFresh,s6Step245EntryGvFresh]=
    some (s6Step245EntryGvAfter,⟨s6Step245EntryFOut,s6Step245EntryGOut,s6Step245EntryFvOut,s6Step245EntryGvOut⟩,(growRow 795 s6Step245EntryFFresh ++ (growRow 777 s6Step245EntryGFresh ++ (growRow 776 s6Step245EntryFvFresh ++ (growRow 775 s6Step245EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step245EntryBank_rows]
  rfl

private def s6Step245ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<147) ∨ (148≤q ∧ q<403) ∨ (404≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step245ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<147) ∨ (148≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step245ExitFBefore : Arena := s6Step245ExitGAfter

private def s6Step245ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 830],795⟩

private def s6Step245ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898],776⟩

private def s6Step245ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 818],777⟩

private def s6Step245ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 822],775⟩

private theorem s6Step245ExitBank_incomingDistinct : ([s6Step245ExitGRow,s6Step245ExitFRow,s6Step245ExitFvRow,s6Step245ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step245ExitF_Incoming : rowsOwned s6Step245ExitFBefore [s6Step245ExitFRow,s6Step245ExitFvRow,s6Step245ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step245ExitGRow,s6Step245ExitFRow,s6Step245ExitFvRow,s6Step245ExitGvRow] 1 s6Step245ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step245ExitFBefore (fun q => (0≤q ∧ q<147) ∨ (148≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step245ExitBank_outgoingOwned : rowsOwned s6Step245ExitGvAfter [s6Step245ExitGOut,s6Step245ExitFOut,s6Step245ExitFvOut,s6Step245ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step245ExitGvAfter (fun q => (0≤q ∧ q<147) ∨ (148≤q ∧ q<403) ∨ (404≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step245ExitF_Outgoing : rowsOwned s6Step245ExitGvAfter [s6Step245ExitFOut,s6Step245ExitFvOut,s6Step245ExitGvOut] :=
  hmrRows_owned_drop s6Step245ExitGvAfter [s6Step245ExitGOut,s6Step245ExitFOut,s6Step245ExitFvOut,s6Step245ExitGvOut] 1 s6Step245ExitBank_outgoingOwned

private theorem s6Step245ExitF_distinct : (s6Step245ExitFRow.sign::s6Step245ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step245ExitF_owned : (s6Step245ExitFRow.sign::s6Step245ExitFRow.payload).toFinset⊆s6Step245ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step245ExitFBefore (fun q => (0≤q ∧ q<147) ∨ (148≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step245ExitF_retired : s6Step245ExitFBefore.retireSet s6Step245ExitFExtra.toFinset=s6Step245ExitFAfter := by
  unfold Arena.retireSet s6Step245ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step245ExitFBefore,s6Step245ExitGAfter,s6Step245ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step245ExitF_checked : planRowResizeLog s6Step245ExitFBefore s6Step245ExitFRow 147 []=
    some (s6Step245ExitFAfter,s6Step245ExitFOut,shrinkRow 795 s6Step245ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step245ExitFBefore s6Step245ExitFRow 147 s6Step245ExitF_distinct s6Step245ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step245ExitFRow.payload.take 147) s6Step245ExitFRow.sign=s6Step245ExitFOut := by decide +kernel
  have hi : s6Step245ExitFRow.payload.drop 147=s6Step245ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step245ExitF_retired] at result
  exact result

private def s6Step245ExitFvAfter : Arena := s6Step245ExitFAfter

private def s6Step245ExitFvBefore : Arena := s6Step245ExitFAfter

private theorem s6Step245ExitFv_Incoming : rowsOwned s6Step245ExitFvBefore [s6Step245ExitFvRow,s6Step245ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step245ExitGRow,s6Step245ExitFRow,s6Step245ExitFvRow,s6Step245ExitGvRow] 2 s6Step245ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step245ExitFvBefore (fun q => (0≤q ∧ q<147) ∨ (148≤q ∧ q<403) ∨ (404≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step245ExitFv_Outgoing : rowsOwned s6Step245ExitGvAfter [s6Step245ExitFvOut,s6Step245ExitGvOut] :=
  hmrRows_owned_drop s6Step245ExitGvAfter [s6Step245ExitGOut,s6Step245ExitFOut,s6Step245ExitFvOut,s6Step245ExitGvOut] 2 s6Step245ExitBank_outgoingOwned

private theorem s6Step245ExitFv_distinct : (s6Step245ExitFvRow.sign::s6Step245ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step245ExitFv_owned : (s6Step245ExitFvRow.sign::s6Step245ExitFvRow.payload).toFinset⊆s6Step245ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step245ExitFvBefore (fun q => (0≤q ∧ q<147) ∨ (148≤q ∧ q<403) ∨ (404≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step245ExitFv_reserved : s6Step245ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step245ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step245ExitFv_checked : planRowResizeLog s6Step245ExitFvBefore s6Step245ExitFvRow 138 []=
    some (s6Step245ExitFvAfter,s6Step245ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step245ExitFvBefore s6Step245ExitFvAfter s6Step245ExitFvRow 138 []
    s6Step245ExitFv_distinct s6Step245ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step245ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step245ExitFvRow.payload++[]) s6Step245ExitFvRow.sign=s6Step245ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step245ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step245ExitG_Incoming : rowsOwned s6Step245ExitGBefore [s6Step245ExitGRow,s6Step245ExitFRow,s6Step245ExitFvRow,s6Step245ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step245ExitGRow,s6Step245ExitFRow,s6Step245ExitFvRow,s6Step245ExitGvRow] 0 s6Step245ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step245ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step245ExitG_Outgoing : rowsOwned s6Step245ExitGvAfter [s6Step245ExitGOut,s6Step245ExitFOut,s6Step245ExitFvOut,s6Step245ExitGvOut] :=
  hmrRows_owned_drop s6Step245ExitGvAfter [s6Step245ExitGOut,s6Step245ExitFOut,s6Step245ExitFvOut,s6Step245ExitGvOut] 0 s6Step245ExitBank_outgoingOwned

private theorem s6Step245ExitG_distinct : (s6Step245ExitGRow.sign::s6Step245ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step245ExitG_owned : (s6Step245ExitGRow.sign::s6Step245ExitGRow.payload).toFinset⊆s6Step245ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step245ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step245ExitG_retired : s6Step245ExitGBefore.retireSet s6Step245ExitGExtra.toFinset=s6Step245ExitGAfter := by
  unfold Arena.retireSet s6Step245ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step245ExitGBefore,s6Step245ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step245ExitG_checked : planRowResizeLog s6Step245ExitGBefore s6Step245ExitGRow 147 []=
    some (s6Step245ExitGAfter,s6Step245ExitGOut,shrinkRow 777 s6Step245ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step245ExitGBefore s6Step245ExitGRow 147 s6Step245ExitG_distinct s6Step245ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step245ExitGRow.payload.take 147) s6Step245ExitGRow.sign=s6Step245ExitGOut := by decide +kernel
  have hi : s6Step245ExitGRow.payload.drop 147=s6Step245ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step245ExitG_retired] at result
  exact result

private def s6Step245ExitGvBefore : Arena := s6Step245ExitFAfter

private theorem s6Step245ExitGv_Incoming : rowsOwned s6Step245ExitGvBefore [s6Step245ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step245ExitGRow,s6Step245ExitFRow,s6Step245ExitFvRow,s6Step245ExitGvRow] 3 s6Step245ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step245ExitGvBefore (fun q => (0≤q ∧ q<147) ∨ (148≤q ∧ q<403) ∨ (404≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step245ExitGv_Outgoing : rowsOwned s6Step245ExitGvAfter [s6Step245ExitGvOut] :=
  hmrRows_owned_drop s6Step245ExitGvAfter [s6Step245ExitGOut,s6Step245ExitFOut,s6Step245ExitFvOut,s6Step245ExitGvOut] 3 s6Step245ExitBank_outgoingOwned

private theorem s6Step245ExitGv_distinct : (s6Step245ExitGvRow.sign::s6Step245ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step245ExitGv_owned : (s6Step245ExitGvRow.sign::s6Step245ExitGvRow.payload).toFinset⊆s6Step245ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step245ExitGvBefore (fun q => (0≤q ∧ q<147) ∨ (148≤q ∧ q<403) ∨ (404≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step245ExitGv_retired : s6Step245ExitGvBefore.retireSet s6Step245ExitGvExtra.toFinset=s6Step245ExitGvAfter := by
  unfold Arena.retireSet s6Step245ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step245ExitGvBefore,s6Step245ExitFAfter,s6Step245ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step245ExitGv_checked : planRowResizeLog s6Step245ExitGvBefore s6Step245ExitGvRow 137 []=
    some (s6Step245ExitGvAfter,s6Step245ExitGvOut,shrinkRow 775 s6Step245ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step245ExitGvBefore s6Step245ExitGvRow 137 s6Step245ExitGv_distinct s6Step245ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step245ExitGvRow.payload.take 137) s6Step245ExitGvRow.sign=s6Step245ExitGvOut := by decide +kernel
  have hi : s6Step245ExitGvRow.payload.drop 137=s6Step245ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step245ExitGv_retired] at result
  exact result

private theorem s6Step245ExitBank_rows : planWindowRowsLog s6Step245ExitGBefore [(s6Step245ExitGRow,147),(s6Step245ExitFRow,147),(s6Step245ExitFvRow,138),(s6Step245ExitGvRow,137)] [[],[],[],[]]=
    some (s6Step245ExitGvAfter,[s6Step245ExitGOut,s6Step245ExitFOut,s6Step245ExitFvOut,s6Step245ExitGvOut],(shrinkRow 777 s6Step245ExitGExtra ++ (shrinkRow 795 s6Step245ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step245ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step245ExitGvAfter [] []=some (s6Step245ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step245ExitGvBefore s6Step245ExitGvAfter s6Step245ExitGvAfter
    s6Step245ExitGvRow s6Step245ExitGvOut 137 [] [] [] []
    (shrinkRow 775 s6Step245ExitGvExtra) ([]) s6Step245ExitGv_Incoming s6Step245ExitGv_checked h4 s6Step245ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step245ExitFvBefore s6Step245ExitFvAfter s6Step245ExitGvAfter
    s6Step245ExitFvRow s6Step245ExitFvOut 138 [] [(s6Step245ExitGvRow,137)] [[]] [s6Step245ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step245ExitGvExtra ++ [])) s6Step245ExitFv_Incoming s6Step245ExitFv_checked h3 s6Step245ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step245ExitFBefore s6Step245ExitFAfter s6Step245ExitGvAfter
    s6Step245ExitFRow s6Step245ExitFOut 147 [] [(s6Step245ExitFvRow,138),(s6Step245ExitGvRow,137)] [[],[]] [s6Step245ExitFvOut,s6Step245ExitGvOut]
    (shrinkRow 795 s6Step245ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step245ExitGvExtra ++ []))) s6Step245ExitF_Incoming s6Step245ExitF_checked h2 s6Step245ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step245ExitGBefore s6Step245ExitGAfter s6Step245ExitGvAfter
    s6Step245ExitGRow s6Step245ExitGOut 147 [] [(s6Step245ExitFRow,147),(s6Step245ExitFvRow,138),(s6Step245ExitGvRow,137)] [[],[],[]] [s6Step245ExitFOut,s6Step245ExitFvOut,s6Step245ExitGvOut]
    (shrinkRow 777 s6Step245ExitGExtra) ((shrinkRow 795 s6Step245ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step245ExitGvExtra ++ [])))) s6Step245ExitG_Incoming s6Step245ExitG_checked h1 s6Step245ExitG_Outgoing
  exact h0

private theorem s6Step245ExitBank_checked : compileHmrBankResizeLog .exit s6Step245ExitGBefore ⟨s6Step245ExitFRow,s6Step245ExitGRow,s6Step245ExitFvRow,s6Step245ExitGvRow⟩ ⟨147,147,138,137⟩ [[],[],[],[]]=
    some (s6Step245ExitGvAfter,⟨s6Step245ExitFOut,s6Step245ExitGOut,s6Step245ExitFvOut,s6Step245ExitGvOut⟩,(shrinkRow 777 s6Step245ExitGExtra ++ (shrinkRow 795 s6Step245ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step245ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step245ExitBank_rows]
  rfl

private theorem s6Step245Add0_apart : Disjoint s6Step245Add0Arena.live s6Step245Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step245Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step245Add0_card : s6Step245Add0Arena.live.card=895 := by
  decide +kernel

private theorem s6Step245Add0_borrowed : s6Step245Add0Arena.checkBorrow (hmrHybridCount s6Step245Add0Arena s6Step245Add0B.length) s6Step245Add0Work=some s6Step245Add0During := by
  have len : s6Step245Add0Work.length=hmrHybridCount s6Step245Add0Arena s6Step245Add0B.length := by
    rw [hmrHybridCount,s6Step245Add0_card]
    decide +kernel
  have nd : s6Step245Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step245Add0Arena s6Step245Add0During s6Step245Add0Work.toFinset s6Step245Add0_bounded s6Step245Add0_apart rfl

private theorem s6Step245Add0_distinct : (786::864::841::(s6Step245Add0A++s6Step245Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step245Add0_owned : (786::864::841::(s6Step245Add0A++s6Step245Add0B)).toFinset⊆s6Step245Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step245Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step245Add0_checked : compileHmrHybridCinLog s6Step245Add0Arena 864 786 841 s6Step245Add0A s6Step245Add0B s6Step245Add0Work=some s6Step245Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step245Add0Arena s6Step245Add0During 864 786 841 s6Step245Add0A s6Step245Add0B s6Step245Add0Work
    (by decide +kernel) (by decide +kernel) s6Step245Add0_distinct
    (fun q hq => s6Step245Add0_owned (List.mem_toFinset.mpr hq)) s6Step245Add0_borrowed

private theorem s6Step245Add1_apart : Disjoint s6Step245Add1Arena.live s6Step245Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step245Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step245Add1_card : s6Step245Add1Arena.live.card=895 := by
  decide +kernel

private theorem s6Step245Add1_borrowed : s6Step245Add1Arena.checkBorrow (hmrHybridCount s6Step245Add1Arena s6Step245Add1B.length) s6Step245Add1Work=some s6Step245Add1During := by
  have len : s6Step245Add1Work.length=hmrHybridCount s6Step245Add1Arena s6Step245Add1B.length := by
    rw [hmrHybridCount,s6Step245Add1_card]
    decide +kernel
  have nd : s6Step245Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step245Add1Arena s6Step245Add1During s6Step245Add1Work.toFinset s6Step245Add1_bounded s6Step245Add1_apart rfl

private theorem s6Step245Add1_distinct : (786::864::841::(s6Step245Add1A++s6Step245Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step245Add1_owned : (786::864::841::(s6Step245Add1A++s6Step245Add1B)).toFinset⊆s6Step245Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step245Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step245Add1_checked : compileHmrHybridCinLog s6Step245Add1Arena 864 786 841 s6Step245Add1A s6Step245Add1B s6Step245Add1Work=some s6Step245Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step245Add1Arena s6Step245Add1During 864 786 841 s6Step245Add1A s6Step245Add1B s6Step245Add1Work
    (by decide +kernel) (by decide +kernel) s6Step245Add1_distinct
    (fun q hq => s6Step245Add1_owned (List.mem_toFinset.mpr hq)) s6Step245Add1_borrowed

private theorem s6Step245F4_apart : Disjoint (s6Step245Add0A++s6Step245Add0B).toFinset (s6Step245Add1A++s6Step245Add1B).toFinset := by
  have nd : ((s6Step245Add0A++s6Step245Add0B)++(s6Step245Add1A++s6Step245Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step245F4_carry : s6Step245F4FlagArena.checkBorrow 1 [841]=some s6Step245Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step245F4FlagArena,s6Step245HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step245F4FlagArena,s6Step245HeadFvAfter,s6Step245Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step245F4_distinct : (796::864::786::841::((s6Step245Add0A++s6Step245Add1A)++(s6Step245Add0B++s6Step245Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step245F4_flag : s6Step245HeadFvAfter.checkBorrow 1 [786]=some s6Step245F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step245HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step245F4_owned : (796::864::((s6Step245Add0A++s6Step245Add1A)++(s6Step245Add0B++s6Step245Add1B))).toFinset⊆s6Step245HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step245HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step245F4_checked : compileHmrHybridF4Log s6Step245HeadFvAfter 796 864 s6Step245Add0A s6Step245Add0B s6Step245Add1A s6Step245Add1B [786] [841] s6Step245Add0Work s6Step245Add1Work=some s6Step245F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step245HeadFvAfter s6Step245F4FlagArena s6Step245Add0Arena s6Step245Add0During s6Step245Add1During 796 864
    s6Step245Add0A s6Step245Add0B s6Step245Add1A s6Step245Add1B [786] [841] s6Step245Add0Work s6Step245Add1Work
    (fun q hq => s6Step245F4_owned (List.mem_toFinset.mpr hq)) s6Step245F4_flag s6Step245F4_carry
    s6Step245F4_distinct s6Step245F4_apart s6Step245Add0_checked s6Step245Add1_checked

private theorem s6Step245Front_branch : s6Step245FrontSigmaArena.checkBorrow 1 [864]=some s6Step245HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step245FrontSigmaArena,s6Step245EntryGvAfter,s6Step245EntryFBefore,arenaWires]
  · ext q
    simp only [s6Step245FrontSigmaArena,s6Step245EntryGvAfter,s6Step245EntryFBefore,s6Step245HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step245Front_entry : HmrFrontEntryValid s6Step245EntryFBefore s6Step245FrontBank 148 137 ⟨147,147,138,137⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step245FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step245EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step245EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step245FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step245Front_sigma : s6Step245EntryGvAfter.checkBorrow 1 [796]=some s6Step245FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step245EntryGvAfter,s6Step245EntryFBefore,arenaWires]
  · rfl

private def s6Step245HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step245HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step245HeadFBefore : Arena := s6Step245HeadGAfter

private def s6Step245HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403],795⟩

private def s6Step245HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869],776⟩

private def s6Step245HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147],777⟩

private def s6Step245HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888],775⟩

private theorem s6Step245HeadBank_incomingDistinct : ([s6Step245HeadGRow,s6Step245HeadFRow,s6Step245HeadGvRow,s6Step245HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step245HeadF_Incoming : rowsOwned s6Step245HeadFBefore [s6Step245HeadFRow,s6Step245HeadGvRow,s6Step245HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step245HeadGRow,s6Step245HeadFRow,s6Step245HeadGvRow,s6Step245HeadFvRow] 1 s6Step245HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step245HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step245HeadBank_outgoingOwned : rowsOwned s6Step245HeadFvAfter [s6Step245HeadGOut,s6Step245HeadFOut,s6Step245HeadGvOut,s6Step245HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step245HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step245HeadF_Outgoing : rowsOwned s6Step245HeadFvAfter [s6Step245HeadFOut,s6Step245HeadGvOut,s6Step245HeadFvOut] :=
  hmrRows_owned_drop s6Step245HeadFvAfter [s6Step245HeadGOut,s6Step245HeadFOut,s6Step245HeadGvOut,s6Step245HeadFvOut] 1 s6Step245HeadBank_outgoingOwned

private theorem s6Step245HeadF_distinct : (s6Step245HeadFRow.sign::s6Step245HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step245HeadF_owned : (s6Step245HeadFRow.sign::s6Step245HeadFRow.payload).toFinset⊆s6Step245HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step245HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step245HeadF_reserved : s6Step245HeadFBefore.reserve s6Step245HeadFFresh.toFinset=some s6Step245HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step245HeadFFresh,arenaWires]
  · norm_num [s6Step245HeadFBefore,s6Step245HeadGAfter,s6Step245HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step245HeadFAfter,s6Step245HeadFBefore,s6Step245HeadGAfter,s6Step245HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step245HeadF_checked : planRowResizeLog s6Step245HeadFBefore s6Step245HeadFRow 149 s6Step245HeadFFresh=
    some (s6Step245HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 830],795⟩,growRow 795 s6Step245HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step245HeadFBefore s6Step245HeadFAfter s6Step245HeadFRow 149 s6Step245HeadFFresh
    s6Step245HeadF_distinct s6Step245HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step245HeadF_reserved
  have rowEq : WindowRow.mk (s6Step245HeadFRow.payload++s6Step245HeadFFresh) s6Step245HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 830],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step245HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step245HeadFvBefore : Arena := s6Step245HeadGvAfter

private theorem s6Step245HeadFv_Incoming : rowsOwned s6Step245HeadFvBefore [s6Step245HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step245HeadGRow,s6Step245HeadFRow,s6Step245HeadGvRow,s6Step245HeadFvRow] 3 s6Step245HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step245HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step245HeadFv_Outgoing : rowsOwned s6Step245HeadFvAfter [s6Step245HeadFvOut] :=
  hmrRows_owned_drop s6Step245HeadFvAfter [s6Step245HeadGOut,s6Step245HeadFOut,s6Step245HeadGvOut,s6Step245HeadFvOut] 3 s6Step245HeadBank_outgoingOwned

private theorem s6Step245HeadFv_distinct : (s6Step245HeadFvRow.sign::s6Step245HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step245HeadFv_owned : (s6Step245HeadFvRow.sign::s6Step245HeadFvRow.payload).toFinset⊆s6Step245HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step245HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step245HeadFv_reserved : s6Step245HeadFvBefore.reserve s6Step245HeadFvFresh.toFinset=some s6Step245HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step245HeadFvFresh,arenaWires]
  · norm_num [s6Step245HeadFvBefore,s6Step245HeadGvAfter,s6Step245HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step245HeadFvAfter,s6Step245HeadFvBefore,s6Step245HeadGvAfter,s6Step245HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step245HeadFv_checked : planRowResizeLog s6Step245HeadFvBefore s6Step245HeadFvRow 138 s6Step245HeadFvFresh=
    some (s6Step245HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898],776⟩,growRow 776 s6Step245HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step245HeadFvBefore s6Step245HeadFvAfter s6Step245HeadFvRow 138 s6Step245HeadFvFresh
    s6Step245HeadFv_distinct s6Step245HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step245HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step245HeadFvRow.payload++s6Step245HeadFvFresh) s6Step245HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step245HeadG_Incoming : rowsOwned s6Step245HeadGBefore [s6Step245HeadGRow,s6Step245HeadFRow,s6Step245HeadGvRow,s6Step245HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step245HeadGRow,s6Step245HeadFRow,s6Step245HeadGvRow,s6Step245HeadFvRow] 0 s6Step245HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step245HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step245HeadG_Outgoing : rowsOwned s6Step245HeadFvAfter [s6Step245HeadGOut,s6Step245HeadFOut,s6Step245HeadGvOut,s6Step245HeadFvOut] :=
  hmrRows_owned_drop s6Step245HeadFvAfter [s6Step245HeadGOut,s6Step245HeadFOut,s6Step245HeadGvOut,s6Step245HeadFvOut] 0 s6Step245HeadBank_outgoingOwned

private theorem s6Step245HeadG_distinct : (s6Step245HeadGRow.sign::s6Step245HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step245HeadG_owned : (s6Step245HeadGRow.sign::s6Step245HeadGRow.payload).toFinset⊆s6Step245HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step245HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step245HeadG_reserved : s6Step245HeadGBefore.reserve s6Step245HeadGFresh.toFinset=some s6Step245HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step245HeadGFresh,arenaWires]
  · norm_num [s6Step245HeadGBefore,s6Step245HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step245HeadGAfter,s6Step245HeadGBefore,s6Step245HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step245HeadG_checked : planRowResizeLog s6Step245HeadGBefore s6Step245HeadGRow 149 s6Step245HeadGFresh=
    some (s6Step245HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 818],777⟩,growRow 777 s6Step245HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step245HeadGBefore s6Step245HeadGAfter s6Step245HeadGRow 149 s6Step245HeadGFresh
    s6Step245HeadG_distinct s6Step245HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step245HeadG_reserved
  have rowEq : WindowRow.mk (s6Step245HeadGRow.payload++s6Step245HeadGFresh) s6Step245HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 818],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step245HeadGvBefore : Arena := s6Step245HeadFAfter

private theorem s6Step245HeadGv_Incoming : rowsOwned s6Step245HeadGvBefore [s6Step245HeadGvRow,s6Step245HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step245HeadGRow,s6Step245HeadFRow,s6Step245HeadGvRow,s6Step245HeadFvRow] 2 s6Step245HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step245HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step245HeadGv_Outgoing : rowsOwned s6Step245HeadFvAfter [s6Step245HeadGvOut,s6Step245HeadFvOut] :=
  hmrRows_owned_drop s6Step245HeadFvAfter [s6Step245HeadGOut,s6Step245HeadFOut,s6Step245HeadGvOut,s6Step245HeadFvOut] 2 s6Step245HeadBank_outgoingOwned

private theorem s6Step245HeadGv_distinct : (s6Step245HeadGvRow.sign::s6Step245HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step245HeadGv_owned : (s6Step245HeadGvRow.sign::s6Step245HeadGvRow.payload).toFinset⊆s6Step245HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step245HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step245HeadGv_reserved : s6Step245HeadGvBefore.reserve s6Step245HeadGvFresh.toFinset=some s6Step245HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step245HeadGvFresh,arenaWires]
  · norm_num [s6Step245HeadGvBefore,s6Step245HeadFAfter,s6Step245HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step245HeadGvAfter,s6Step245HeadGvBefore,s6Step245HeadFAfter,s6Step245HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step245HeadGv_checked : planRowResizeLog s6Step245HeadGvBefore s6Step245HeadGvRow 138 s6Step245HeadGvFresh=
    some (s6Step245HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 822],775⟩,growRow 775 s6Step245HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step245HeadGvBefore s6Step245HeadGvAfter s6Step245HeadGvRow 138 s6Step245HeadGvFresh
    s6Step245HeadGv_distinct s6Step245HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step245HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step245HeadGvRow.payload++s6Step245HeadGvFresh) s6Step245HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 822],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step245HeadBank_rows : planWindowRowsLog s6Step245HeadGBefore [(s6Step245HeadGRow,149),(s6Step245HeadFRow,149),(s6Step245HeadGvRow,138),(s6Step245HeadFvRow,138)] [s6Step245HeadGFresh,s6Step245HeadFFresh,s6Step245HeadGvFresh,s6Step245HeadFvFresh]=
    some (s6Step245HeadFvAfter,[s6Step245HeadGOut,s6Step245HeadFOut,s6Step245HeadGvOut,s6Step245HeadFvOut],(growRow 777 s6Step245HeadGFresh ++ (growRow 795 s6Step245HeadFFresh ++ (growRow 775 s6Step245HeadGvFresh ++ (growRow 776 s6Step245HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step245HeadFvAfter [] []=some (s6Step245HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step245HeadFvBefore s6Step245HeadFvAfter s6Step245HeadFvAfter
    s6Step245HeadFvRow s6Step245HeadFvOut 138 s6Step245HeadFvFresh [] [] []
    (growRow 776 s6Step245HeadFvFresh) ([]) s6Step245HeadFv_Incoming s6Step245HeadFv_checked h4 s6Step245HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step245HeadGvBefore s6Step245HeadGvAfter s6Step245HeadFvAfter
    s6Step245HeadGvRow s6Step245HeadGvOut 138 s6Step245HeadGvFresh [(s6Step245HeadFvRow,138)] [s6Step245HeadFvFresh] [s6Step245HeadFvOut]
    (growRow 775 s6Step245HeadGvFresh) ((growRow 776 s6Step245HeadFvFresh ++ [])) s6Step245HeadGv_Incoming s6Step245HeadGv_checked h3 s6Step245HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step245HeadFBefore s6Step245HeadFAfter s6Step245HeadFvAfter
    s6Step245HeadFRow s6Step245HeadFOut 149 s6Step245HeadFFresh [(s6Step245HeadGvRow,138),(s6Step245HeadFvRow,138)] [s6Step245HeadGvFresh,s6Step245HeadFvFresh] [s6Step245HeadGvOut,s6Step245HeadFvOut]
    (growRow 795 s6Step245HeadFFresh) ((growRow 775 s6Step245HeadGvFresh ++ (growRow 776 s6Step245HeadFvFresh ++ []))) s6Step245HeadF_Incoming s6Step245HeadF_checked h2 s6Step245HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step245HeadGBefore s6Step245HeadGAfter s6Step245HeadFvAfter
    s6Step245HeadGRow s6Step245HeadGOut 149 s6Step245HeadGFresh [(s6Step245HeadFRow,149),(s6Step245HeadGvRow,138),(s6Step245HeadFvRow,138)] [s6Step245HeadFFresh,s6Step245HeadGvFresh,s6Step245HeadFvFresh] [s6Step245HeadFOut,s6Step245HeadGvOut,s6Step245HeadFvOut]
    (growRow 777 s6Step245HeadGFresh) ((growRow 795 s6Step245HeadFFresh ++ (growRow 775 s6Step245HeadGvFresh ++ (growRow 776 s6Step245HeadFvFresh ++ [])))) s6Step245HeadG_Incoming s6Step245HeadG_checked h1 s6Step245HeadG_Outgoing
  exact h0

private theorem s6Step245HeadBank_checked : compileHmrBankResizeLog .headroom s6Step245HeadGBefore ⟨s6Step245HeadFRow,s6Step245HeadGRow,s6Step245HeadFvRow,s6Step245HeadGvRow⟩ ⟨149,149,138,138⟩ [s6Step245HeadGFresh,s6Step245HeadFFresh,s6Step245HeadGvFresh,s6Step245HeadFvFresh]=
    some (s6Step245HeadFvAfter,⟨s6Step245HeadFOut,s6Step245HeadGOut,s6Step245HeadFvOut,s6Step245HeadGvOut⟩,(growRow 777 s6Step245HeadGFresh ++ (growRow 795 s6Step245HeadFFresh ++ (growRow 775 s6Step245HeadGvFresh ++ (growRow 776 s6Step245HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step245HeadBank_rows]
  rfl

private theorem s6Step245Front_checked : compileHmrSourceFrontLog s6Step245EntryFBefore s6Step245FrontBank 148 137 ⟨147,147,138,137⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step245FrontLog=some s6Step245FrontPlan := by
  have pairEq : s6Step245FrontPair=⟨s6Step245HeadFRow,s6Step245HeadGRow,s6Step245HeadFvRow,s6Step245HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step245FrontHead=⟨s6Step245ExitFRow,s6Step245ExitGRow,s6Step245ExitFvRow,s6Step245ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step245Add0A=s6Step245FrontHead.f.wires := by decide +kernel
  have gEq : s6Step245Add0B=s6Step245FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step245Add1A=s6Step245FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step245Add1B=s6Step245FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step245EntryFBefore s6Step245FrontBank 148 137 ⟨147,147,138,137⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step245FrontLog s6Step245FrontPlan
  · exact s6Step245Front_entry
  · exact s6Step245EntryBank_checked
  · exact s6Step245Front_sigma
  · rfl
  · exact s6Step245Front_branch
  · rfl
  · simpa only [s6Step245FrontPlan,pairEq] using s6Step245HeadBank_checked
  · simpa only [s6Step245FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step245F4_checked
  · exact s6Step245Counter_checked
  · rfl
  · simpa only [s6Step245FrontPlan,headEq] using s6Step245ExitBank_checked

private theorem s6Step245Complete_explicit_checked : compileHmrEarlyStepLog s6Step245EntryFBefore s6Step245FrontBank 148 137 ⟨147,147,138,137⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step245CompleteLog=some s6Step245CompletePlan := by
  let Q := s6Step245EarlyControlPlan
  have hq := s6Step245EarlyControl_plan_checked
  have fv1 : s6Step245CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step245CompleteOut.fv.payload[2]?.getD s6Step245CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step245CompleteOut.fv.payload[3]?.getD s6Step245CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step245CompleteOut.fv.payload[4]?.getD s6Step245CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step245EntryFBefore s6Step245EarlyControlArena s6Step245FrontBank 148 137 ⟨147,147,138,137⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step245CompleteLog s6Step245FrontPlan Q
    s6Step245Front_checked s6Step245Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step245Complete_owned s6Step245Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step245EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 796 s6Step245CompleteOut.fv.second (s6Step245CompleteOut.fv.payload[2]?.getD s6Step245CompleteOut.fv.sign) (s6Step245CompleteOut.fv.payload[3]?.getD s6Step245CompleteOut.fv.sign) (s6Step245CompleteOut.fv.payload[4]?.getD s6Step245CompleteOut.fv.sign) 864 51 s6Step245EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep245Arena : Arena := s6Step245EntryFBefore
def s6PrivateStep245Bank : WindowBank := s6Step245FrontBank
def s6PrivateStep245Spec : HmrSourceWalkStepLog := ⟨148,137,⟨147,147,138,137⟩,51,.early s6Step245CompleteLog⟩
def s6PrivateStep245Plan : HmrSourceStepPlan := .early s6Step245CompletePlan
theorem s6PrivateStep245_source : s6PrivateStep245Spec=s6ObservedLogs240[5] := rfl
theorem s6PrivateStep245_checked : compileHmrSourceStepLog s6PrivateStep245Arena s6PrivateStep245Bank
    s6PrivateStep245Spec.fgWidth s6PrivateStep245Spec.vWidth s6PrivateStep245Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905]
    6 498 245 s6PrivateStep245Spec.need none s6PrivateStep245Spec.log=some s6PrivateStep245Plan := by
  change compileHmrSourceStepLog s6Step245EntryFBefore s6Step245FrontBank 148 137 ⟨147,147,138,137⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 6 498 245 51 none (.early s6Step245CompleteLog)=some (.early s6Step245CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 245<498)]
  rw [s6Step245Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
